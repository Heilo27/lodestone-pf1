import Foundation
import SQLite3

// SQLITE_TRANSIENT is not directly available in Swift — define it locally
private let SQLITE_TRANSIENT = unsafeBitCast(-1, to: sqlite3_destructor_type.self)

// MARK: - DatabaseService

actor DatabaseService {
    static let shared = DatabaseService()

    private var db: OpaquePointer?
    private var isOpen = false

    // MARK: - Lifecycle

    func open() throws {
        guard !isOpen else { return }

        let dbPath = Self.writableDatabasePath()

        // If no writable DB exists yet, we'll create one (SeedDataBuilder populates it separately)
        if sqlite3_open(dbPath, &db) != SQLITE_OK {
            let error = String(cString: sqlite3_errmsg(db))
            throw DatabaseError.openFailed(error)
        }

        isOpen = true
        try configurePragmas()
        try createSchema()
    }

    func close() {
        guard isOpen else { return }
        sqlite3_close(db)
        db = nil
        isOpen = false
    }

    var isDatabasePopulated: Bool {
        get throws {
            guard isOpen else { throw DatabaseError.notOpen }
            let count = try queryInt("SELECT COUNT(*) FROM content")
            return count > 0
        }
    }

    // MARK: - Public Query API

    func search(query: String, filters: Set<ContentType> = [], limit: Int = 100, offset: Int = 0) throws -> [any ContentEntry] {
        guard isOpen else { throw DatabaseError.notOpen }

        let trimmed = query.trimmingCharacters(in: .whitespacesAndNewlines)
        if trimmed.isEmpty {
            return try browseAll(filters: filters, limit: limit, offset: offset)
        }

        // Try FTS5 first
        var results = try ftsSearch(query: trimmed, filters: filters, limit: limit)

        // Fallback to LIKE if FTS returns nothing
        if results.isEmpty {
            results = try likeSearch(query: trimmed, filters: filters, limit: limit)
        }

        return results
    }

    func browse(type: ContentType, limit: Int = 1000, offset: Int = 0) throws -> [any ContentEntry] {
        guard isOpen else { throw DatabaseError.notOpen }
        return try fetchEntries(type: type, limit: limit, offset: offset)
    }

    /// Returns distinct book names and their entry counts, sorted by entry count desc.
    func browseSources() throws -> [BookSource] {
        guard isOpen else { throw DatabaseError.notOpen }
        guard let db else { throw DatabaseError.notOpen }

        let sql = """
        SELECT source, COUNT(*) as cnt,
               MAX(is_premium) as requires_sub
        FROM content
        GROUP BY source
        ORDER BY requires_sub ASC, cnt DESC
        """
        var stmt: OpaquePointer?
        defer { sqlite3_finalize(stmt) }
        guard sqlite3_prepare_v2(db, sql, -1, &stmt, nil) == SQLITE_OK else {
            throw DatabaseError.queryFailed(dbError())
        }
        var results: [BookSource] = []
        while sqlite3_step(stmt) == SQLITE_ROW {
            let name = String(cString: sqlite3_column_text(stmt, 0))
            let count = Int(sqlite3_column_int(stmt, 1))
            let isPremium = sqlite3_column_int(stmt, 2) != 0
            results.append(BookSource(name: name, entryCount: count, isPremium: isPremium))
        }
        return results
    }

    /// Returns all entries from a specific book source, sorted by type then name.
    func browse(source: String, limit: Int = 500) throws -> [any ContentEntry] {
        guard isOpen else { throw DatabaseError.notOpen }
        let sql = """
        SELECT c.id, c.title, c.content_type, c.summary, c.is_premium, c.source
        FROM content c
        WHERE c.source = ?
        ORDER BY c.content_type ASC, c.title ASC
        LIMIT \(limit)
        """
        return try queryEntries(sql: sql, params: [source])
    }

    func getEntry(id: UUID, type: ContentType) throws -> (any ContentEntry)? {
        guard isOpen else { throw DatabaseError.notOpen }
        return try fetchEntry(id: id, type: type)
    }

    func countForType(_ type: ContentType, unlockedOnly: Bool = false) throws -> Int {
        guard isOpen else { throw DatabaseError.notOpen }
        let sql = unlockedOnly
            ? "SELECT COUNT(*) FROM content WHERE content_type = ? AND is_premium = 0"
            : "SELECT COUNT(*) FROM content WHERE content_type = ?"
        return try queryIntBound(sql, param: type.rawValue)
    }

    func getAllFavorites(favorites: Set<FavoriteEntry>) throws -> [any ContentEntry] {
        guard isOpen else { throw DatabaseError.notOpen }
        guard !favorites.isEmpty else { return [] }

        // Group favorites by content type to batch per-type queries
        var byType: [ContentType: [UUID]] = [:]
        for fav in favorites {
            byType[fav.contentType, default: []].append(fav.id)
        }

        var results: [any ContentEntry] = []
        for (type, ids) in byType {
            let (detailTable, detailCols) = detailTableInfo(for: type)
            let placeholders = ids.map { _ in "?" }.joined(separator: ",")
            let sql = """
            SELECT c.id, c.title, c.content_type, c.summary, c.is_premium, c.source,
                   \(detailCols)
            FROM content c
            LEFT JOIN \(detailTable) d ON d.content_id = c.id
            WHERE c.id IN (\(placeholders))
            ORDER BY c.title
            """
            let params = ids.map { $0.uuidString }
            let batch = try queryEntries(sql: sql, params: params)
            results.append(contentsOf: batch)
        }
        return results.sorted { $0.title < $1.title }
    }

    // MARK: - Schema

    private func configurePragmas() throws {
        try exec("PRAGMA journal_mode = WAL")
        try exec("PRAGMA foreign_keys = ON")
        try exec("PRAGMA cache_size = -8000") // 8MB cache
    }

    private func createSchema() throws {
        // Main content table
        try exec("""
        CREATE TABLE IF NOT EXISTS content (
            id TEXT PRIMARY KEY,
            title TEXT NOT NULL,
            content_type TEXT NOT NULL,
            summary TEXT NOT NULL DEFAULT '',
            is_premium INTEGER NOT NULL DEFAULT 0,
            source TEXT NOT NULL DEFAULT 'Core Rulebook'
        )
        """)

        // FTS5 virtual table
        try exec("""
        CREATE VIRTUAL TABLE IF NOT EXISTS content_fts USING fts5(
            id UNINDEXED,
            title,
            content_type UNINDEXED,
            summary,
            fts_body,
            content='',
            tokenize='porter unicode61'
        )
        """)

        // Type-specific detail tables
        try exec("""
        CREATE TABLE IF NOT EXISTS spell_details (
            content_id TEXT PRIMARY KEY REFERENCES content(id) ON DELETE CASCADE,
            school TEXT NOT NULL DEFAULT '',
            levels TEXT NOT NULL DEFAULT '',
            casting_time TEXT NOT NULL DEFAULT '',
            components TEXT NOT NULL DEFAULT '',
            range TEXT NOT NULL DEFAULT '',
            duration TEXT NOT NULL DEFAULT '',
            saving_throw TEXT NOT NULL DEFAULT '',
            spell_resistance INTEGER NOT NULL DEFAULT 0,
            description TEXT NOT NULL DEFAULT ''
        )
        """)

        try exec("""
        CREATE TABLE IF NOT EXISTS class_details (
            content_id TEXT PRIMARY KEY REFERENCES content(id) ON DELETE CASCADE,
            hit_die TEXT NOT NULL DEFAULT '',
            skill_ranks INTEGER NOT NULL DEFAULT 2,
            base_attack_bonus TEXT NOT NULL DEFAULT '',
            fort_save TEXT NOT NULL DEFAULT '',
            ref_save TEXT NOT NULL DEFAULT '',
            will_save TEXT NOT NULL DEFAULT '',
            class_skills TEXT NOT NULL DEFAULT '[]',
            description TEXT NOT NULL DEFAULT ''
        )
        """)

        try exec("""
        CREATE TABLE IF NOT EXISTS feat_details (
            content_id TEXT PRIMARY KEY REFERENCES content(id) ON DELETE CASCADE,
            prerequisites TEXT NOT NULL DEFAULT '',
            benefit TEXT NOT NULL DEFAULT '',
            normal TEXT NOT NULL DEFAULT '',
            special TEXT NOT NULL DEFAULT '',
            feat_type TEXT NOT NULL DEFAULT ''
        )
        """)

        try exec("""
        CREATE TABLE IF NOT EXISTS monster_details (
            content_id TEXT PRIMARY KEY REFERENCES content(id) ON DELETE CASCADE,
            challenge_rating TEXT NOT NULL DEFAULT '',
            monster_type TEXT NOT NULL DEFAULT '',
            size TEXT NOT NULL DEFAULT '',
            alignment TEXT NOT NULL DEFAULT '',
            hit_points TEXT NOT NULL DEFAULT '',
            armor_class INTEGER NOT NULL DEFAULT 10,
            speed TEXT NOT NULL DEFAULT '',
            attacks TEXT NOT NULL DEFAULT '',
            special_abilities TEXT NOT NULL DEFAULT '',
            environment TEXT NOT NULL DEFAULT '',
            description TEXT NOT NULL DEFAULT ''
        )
        """)

        try exec("""
        CREATE TABLE IF NOT EXISTS item_details (
            content_id TEXT PRIMARY KEY REFERENCES content(id) ON DELETE CASCADE,
            price TEXT NOT NULL DEFAULT '',
            weight TEXT NOT NULL DEFAULT '',
            slot TEXT NOT NULL DEFAULT '',
            aura TEXT NOT NULL DEFAULT '',
            caster_level INTEGER NOT NULL DEFAULT 0,
            item_type TEXT NOT NULL DEFAULT '',
            description TEXT NOT NULL DEFAULT ''
        )
        """)

        try exec("""
        CREATE TABLE IF NOT EXISTS race_details (
            content_id TEXT PRIMARY KEY REFERENCES content(id) ON DELETE CASCADE,
            size TEXT NOT NULL DEFAULT '',
            speed TEXT NOT NULL DEFAULT '',
            ability_modifiers TEXT NOT NULL DEFAULT '',
            racial_traits TEXT NOT NULL DEFAULT '[]',
            languages TEXT NOT NULL DEFAULT '[]',
            description TEXT NOT NULL DEFAULT ''
        )
        """)

        try exec("""
        CREATE TABLE IF NOT EXISTS trait_details (
            content_id TEXT PRIMARY KEY REFERENCES content(id) ON DELETE CASCADE,
            trait_type TEXT NOT NULL DEFAULT '',
            prerequisites TEXT NOT NULL DEFAULT '',
            benefit TEXT NOT NULL DEFAULT '',
            description TEXT NOT NULL DEFAULT ''
        )
        """)

        try exec("""
        CREATE TABLE IF NOT EXISTS rule_details (
            content_id TEXT PRIMARY KEY REFERENCES content(id) ON DELETE CASCADE,
            category TEXT NOT NULL DEFAULT '',
            body TEXT NOT NULL DEFAULT ''
        )
        """)

        // Indexes
        try exec("CREATE INDEX IF NOT EXISTS idx_content_type ON content(content_type)")
        try exec("CREATE INDEX IF NOT EXISTS idx_content_title ON content(title)")
    }

    // MARK: - Insert (used by SeedDataBuilder)

    func insertSpell(_ spell: SpellEntry) throws {
        let sql = """
        INSERT OR REPLACE INTO content (id, title, content_type, summary, is_premium, source)
        VALUES (?, ?, 'spell', ?, ?, ?)
        """
        try execInsert(sql, params: [
            spell.id.uuidString, spell.title, spell.summary,
            spell.isPremium ? "1" : "0", spell.source
        ])

        let sql2 = """
        INSERT OR REPLACE INTO spell_details
        (content_id, school, levels, casting_time, components, range, duration, saving_throw, spell_resistance, description)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        """
        try execInsert(sql2, params: [
            spell.id.uuidString, spell.school, spell.levels, spell.castingTime,
            spell.components, spell.range, spell.duration, spell.savingThrow,
            spell.spellResistance ? "1" : "0", spell.description
        ])

        try insertFTS(id: spell.id.uuidString, title: spell.title, type: "spell",
                     summary: spell.summary, body: "\(spell.school) \(spell.levels) \(spell.description)")
    }

    func insertClass(_ cls: ClassEntry) throws {
        try execInsert("""
        INSERT OR REPLACE INTO content (id, title, content_type, summary, is_premium, source)
        VALUES (?, ?, 'class', ?, ?, ?)
        """, params: [cls.id.uuidString, cls.title, cls.summary,
                      cls.isPremium ? "1" : "0", cls.source])

        let skillsJSON = (try? String(data: JSONEncoder().encode(cls.classSkills), encoding: .utf8)) ?? "[]"
        try execInsert("""
        INSERT OR REPLACE INTO class_details
        (content_id, hit_die, skill_ranks, base_attack_bonus, fort_save, ref_save, will_save, class_skills, description)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
        """, params: [cls.id.uuidString, cls.hitDie, "\(cls.skillRanks)", cls.baseAttackBonus,
                      cls.fortSave, cls.refSave, cls.willSave, skillsJSON, cls.description])

        try insertFTS(id: cls.id.uuidString, title: cls.title, type: "class",
                     summary: cls.summary, body: cls.description)
    }

    func insertFeat(_ feat: FeatEntry) throws {
        try execInsert("""
        INSERT OR REPLACE INTO content (id, title, content_type, summary, is_premium, source)
        VALUES (?, ?, 'feat', ?, ?, ?)
        """, params: [feat.id.uuidString, feat.title, feat.summary,
                      feat.isPremium ? "1" : "0", feat.source])

        try execInsert("""
        INSERT OR REPLACE INTO feat_details (content_id, prerequisites, benefit, normal, special, feat_type)
        VALUES (?, ?, ?, ?, ?, ?)
        """, params: [feat.id.uuidString, feat.prerequisites, feat.benefit,
                      feat.normal, feat.special, feat.featType])

        try insertFTS(id: feat.id.uuidString, title: feat.title, type: "feat",
                     summary: feat.summary,
                     body: "\(feat.featType) \(feat.prerequisites) \(feat.benefit)")
    }

    func insertMonster(_ monster: MonsterEntry) throws {
        try execInsert("""
        INSERT OR REPLACE INTO content (id, title, content_type, summary, is_premium, source)
        VALUES (?, ?, 'monster', ?, ?, ?)
        """, params: [monster.id.uuidString, monster.title, monster.summary,
                      monster.isPremium ? "1" : "0", monster.source])

        try execInsert("""
        INSERT OR REPLACE INTO monster_details
        (content_id, challenge_rating, monster_type, size, alignment, hit_points, armor_class, speed, attacks, special_abilities, environment, description)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        """, params: [monster.id.uuidString, monster.challengeRating, monster.type,
                      monster.size, monster.alignment, monster.hitPoints,
                      "\(monster.armorClass)", monster.speed, monster.attacks,
                      monster.specialAbilities, monster.environment, monster.description])

        try insertFTS(id: monster.id.uuidString, title: monster.title, type: "monster",
                     summary: monster.summary,
                     body: "\(monster.type) \(monster.size) CR\(monster.challengeRating) \(monster.description)")
    }

    func insertItem(_ item: ItemEntry) throws {
        try execInsert("""
        INSERT OR REPLACE INTO content (id, title, content_type, summary, is_premium, source)
        VALUES (?, ?, 'item', ?, ?, ?)
        """, params: [item.id.uuidString, item.title, item.summary,
                      item.isPremium ? "1" : "0", item.source])

        try execInsert("""
        INSERT OR REPLACE INTO item_details (content_id, price, weight, slot, aura, caster_level, item_type, description)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?)
        """, params: [item.id.uuidString, item.price, item.weight, item.slot,
                      item.aura, "\(item.casterLevel)", item.itemType, item.description])

        try insertFTS(id: item.id.uuidString, title: item.title, type: "item",
                     summary: item.summary,
                     body: "\(item.itemType) \(item.aura) \(item.description)")
    }

    func insertRace(_ race: RaceEntry) throws {
        try execInsert("""
        INSERT OR REPLACE INTO content (id, title, content_type, summary, is_premium, source)
        VALUES (?, ?, 'race', ?, ?, ?)
        """, params: [race.id.uuidString, race.title, race.summary,
                      race.isPremium ? "1" : "0", race.source])

        let traitsJSON = (try? String(data: JSONEncoder().encode(race.racialTraits), encoding: .utf8)) ?? "[]"
        let langsJSON = (try? String(data: JSONEncoder().encode(race.languages), encoding: .utf8)) ?? "[]"
        try execInsert("""
        INSERT OR REPLACE INTO race_details (content_id, size, speed, ability_modifiers, racial_traits, languages, description)
        VALUES (?, ?, ?, ?, ?, ?, ?)
        """, params: [race.id.uuidString, race.size, race.speed, race.abilityModifiers,
                      traitsJSON, langsJSON, race.description])

        try insertFTS(id: race.id.uuidString, title: race.title, type: "race",
                     summary: race.summary,
                     body: "\(race.abilityModifiers) \(race.racialTraits.joined(separator: " ")) \(race.description)")
    }

    func insertTrait(_ trait: TraitEntry) throws {
        try execInsert("""
        INSERT OR REPLACE INTO content (id, title, content_type, summary, is_premium, source)
        VALUES (?, ?, 'trait', ?, ?, ?)
        """, params: [trait.id.uuidString, trait.title, trait.summary,
                      trait.isPremium ? "1" : "0", trait.source])

        try execInsert("""
        INSERT OR REPLACE INTO trait_details (content_id, trait_type, prerequisites, benefit, description)
        VALUES (?, ?, ?, ?, ?)
        """, params: [trait.id.uuidString, trait.traitType, trait.prerequisites,
                      trait.benefit, trait.description])

        try insertFTS(id: trait.id.uuidString, title: trait.title, type: "trait",
                     summary: trait.summary,
                     body: "\(trait.traitType) \(trait.benefit) \(trait.description)")
    }

    func insertRule(_ rule: RuleEntry) throws {
        try execInsert("""
        INSERT OR REPLACE INTO content (id, title, content_type, summary, is_premium, source)
        VALUES (?, ?, 'rule', ?, ?, ?)
        """, params: [rule.id.uuidString, rule.title, rule.summary,
                      rule.isPremium ? "1" : "0", rule.source])

        try execInsert("""
        INSERT OR REPLACE INTO rule_details (content_id, category, body)
        VALUES (?, ?, ?)
        """, params: [rule.id.uuidString, rule.category, rule.body])

        try insertFTS(id: rule.id.uuidString, title: rule.title, type: "rule",
                     summary: rule.summary, body: "\(rule.category) \(rule.body)")
    }

    // MARK: - FTS Insert

    private func insertFTS(id: String, title: String, type: String, summary: String, body: String) throws {
        try execInsert("""
        INSERT INTO content_fts (id, title, content_type, summary, fts_body)
        VALUES (?, ?, ?, ?, ?)
        """, params: [id, title, type, summary, body])
    }

    // MARK: - Query Helpers

    private func ftsSearch(query: String, filters: Set<ContentType>, limit: Int) throws -> [any ContentEntry] {
        // Sanitize query for FTS5
        let safeQuery = query
            .replacingOccurrences(of: "\"", with: "")
            .replacingOccurrences(of: "*", with: "")
            .split(separator: " ")
            .map { "\($0)*" }
            .joined(separator: " ")

        var typeClause = ""
        var extraParams: [String] = []
        if !filters.isEmpty {
            let placeholders = filters.map { _ in "?" }.joined(separator: ",")
            typeClause = "AND c.content_type IN (\(placeholders))"
            extraParams = filters.map { $0.rawValue }
        }

        let sql = """
        SELECT c.id, c.title, c.content_type, c.summary, c.is_premium, c.source,
               bm25(content_fts) AS rank
        FROM content_fts
        JOIN content c ON c.id = content_fts.id
        WHERE content_fts MATCH ?
        \(typeClause)
        ORDER BY rank
        LIMIT \(limit)
        """

        return try queryEntries(sql: sql, params: [safeQuery] + extraParams)
    }

    private func likeSearch(query: String, filters: Set<ContentType>, limit: Int) throws -> [any ContentEntry] {
        var typeClause = ""
        var extraParams: [String] = []
        if !filters.isEmpty {
            let placeholders = filters.map { _ in "?" }.joined(separator: ",")
            typeClause = "AND content_type IN (\(placeholders))"
            extraParams = filters.map { $0.rawValue }
        }

        let sql = """
        SELECT id, title, content_type, summary, is_premium, source
        FROM content
        WHERE (title LIKE ? OR summary LIKE ?)
        \(typeClause)
        ORDER BY title
        LIMIT \(limit)
        """
        let pattern = "%\(query)%"
        return try queryEntries(sql: sql, params: [pattern, pattern] + extraParams)
    }

    private func browseAll(filters: Set<ContentType>, limit: Int, offset: Int) throws -> [any ContentEntry] {
        var typeClause = ""
        var params: [String] = []
        if !filters.isEmpty {
            let placeholders = filters.map { _ in "?" }.joined(separator: ",")
            typeClause = "WHERE content_type IN (\(placeholders))"
            params = filters.map { $0.rawValue }
        }

        let sql = """
        SELECT id, title, content_type, summary, is_premium, source
        FROM content
        \(typeClause)
        ORDER BY title
        LIMIT \(limit) OFFSET \(offset)
        """
        return try queryEntries(sql: sql, params: params)
    }

    private func fetchEntries(type: ContentType, limit: Int, offset: Int) throws -> [any ContentEntry] {
        let sql = """
        SELECT id, title, content_type, summary, is_premium, source
        FROM content
        WHERE content_type = ?
        ORDER BY title
        LIMIT \(limit) OFFSET \(offset)
        """
        return try queryEntries(sql: sql, params: [type.rawValue])
    }

    private func fetchEntry(id: UUID, type: ContentType) throws -> (any ContentEntry)? {
        return try fetchDetailEntry(id: id, type: type)
    }

    // MARK: - Entry Building

    /// Query that returns minimal content rows, then enriches with detail data
    private func queryEntries(sql: String, params: [String]) throws -> [any ContentEntry] {
        guard let db else { throw DatabaseError.notOpen }
        var stmt: OpaquePointer?
        defer { sqlite3_finalize(stmt) }

        if sqlite3_prepare_v2(db, sql, -1, &stmt, nil) != SQLITE_OK {
            throw DatabaseError.queryFailed(dbError())
        }

        for (i, param) in params.enumerated() {
            sqlite3_bind_text(stmt, Int32(i + 1), param, -1, SQLITE_TRANSIENT)
        }

        var entries: [any ContentEntry] = []
        while sqlite3_step(stmt) == SQLITE_ROW {
            guard let row = stmt?.currentRow() else { continue }
            if let entry = try buildEntry(from: row) {
                entries.append(entry)
            }
        }
        return entries
    }

    private func buildEntry(from row: SQLiteRow) throws -> (any ContentEntry)? {
        guard let typeStr = row["content_type"],
              let type = ContentType(rawValue: typeStr),
              let idStr = row["id"],
              let id = UUID(uuidString: idStr) else {
            return nil
        }

        return try fetchDetailEntry(id: id, type: type, baseRow: row)
    }

    private func fetchDetailEntry(id: UUID, type: ContentType, baseRow: SQLiteRow? = nil) throws -> (any ContentEntry)? {
        guard let db else { throw DatabaseError.notOpen }

        let (detailTable, detailCols) = detailTableInfo(for: type)
        let sql = """
        SELECT c.id, c.title, c.content_type, c.summary, c.is_premium, c.source,
               \(detailCols)
        FROM content c
        LEFT JOIN \(detailTable) d ON d.content_id = c.id
        WHERE c.id = ?
        """

        var stmt: OpaquePointer?
        defer { sqlite3_finalize(stmt) }

        if sqlite3_prepare_v2(db, sql, -1, &stmt, nil) != SQLITE_OK {
            throw DatabaseError.queryFailed(dbError())
        }
        sqlite3_bind_text(stmt, 1, id.uuidString, -1, SQLITE_TRANSIENT)

        guard sqlite3_step(stmt) == SQLITE_ROW, let row = stmt?.currentRow() else {
            return nil
        }

        return makeEntry(type: type, row: row)
    }

    private func detailTableInfo(for type: ContentType) -> (table: String, cols: String) {
        switch type {
        case .spell:
            return ("spell_details", "d.school, d.levels, d.casting_time, d.components, d.range, d.duration, d.saving_throw, d.spell_resistance, d.description")
        case .class_:
            return ("class_details", "d.hit_die, d.skill_ranks, d.base_attack_bonus, d.fort_save, d.ref_save, d.will_save, d.class_skills, d.description")
        case .feat:
            return ("feat_details", "d.prerequisites, d.benefit, d.normal, d.special, d.feat_type")
        case .monster:
            return ("monster_details", "d.challenge_rating, d.monster_type, d.size, d.alignment, d.hit_points, d.armor_class, d.speed, d.attacks, d.special_abilities, d.environment, d.description")
        case .item:
            return ("item_details", "d.price, d.weight, d.slot, d.aura, d.caster_level, d.item_type, d.description")
        case .race:
            return ("race_details", "d.size, d.speed, d.ability_modifiers, d.racial_traits, d.languages, d.description")
        case .trait:
            return ("trait_details", "d.trait_type, d.prerequisites, d.benefit, d.description")
        case .rule:
            return ("rule_details", "d.category, d.body")
        }
    }

    private func makeEntry(type: ContentType, row: SQLiteRow) -> (any ContentEntry)? {
        switch type {
        case .spell:   return SpellEntry(from: row)
        case .class_:  return ClassEntry(from: row)
        case .feat:    return FeatEntry(from: row)
        case .monster: return MonsterEntry(from: row)
        case .item:    return ItemEntry(from: row)
        case .race:    return RaceEntry(from: row)
        case .trait:   return TraitEntry(from: row)
        case .rule:    return RuleEntry(from: row)
        }
    }

    // MARK: - Low-level helpers

    private func exec(_ sql: String) throws {
        guard let db else { throw DatabaseError.notOpen }
        var errMsg: UnsafeMutablePointer<CChar>?
        if sqlite3_exec(db, sql, nil, nil, &errMsg) != SQLITE_OK {
            let msg = errMsg.map { String(cString: $0) } ?? "Unknown"
            sqlite3_free(errMsg)
            throw DatabaseError.queryFailed(msg)
        }
    }

    func execInsert(_ sql: String, params: [String]) throws {
        guard let db else { throw DatabaseError.notOpen }
        var stmt: OpaquePointer?
        defer { sqlite3_finalize(stmt) }

        if sqlite3_prepare_v2(db, sql, -1, &stmt, nil) != SQLITE_OK {
            throw DatabaseError.queryFailed(dbError())
        }

        for (i, param) in params.enumerated() {
            sqlite3_bind_text(stmt, Int32(i + 1), param, -1, SQLITE_TRANSIENT)
        }

        if sqlite3_step(stmt) != SQLITE_DONE {
            throw DatabaseError.queryFailed(dbError())
        }
    }

    func beginTransaction() throws {
        try exec("BEGIN TRANSACTION")
    }

    func commitTransaction() throws {
        try exec("COMMIT")
    }

    func rollbackTransaction() {
        try? exec("ROLLBACK")
    }

    /// Deletes all rows from the content and detail tables. Call at the start of a re-seed.
    func clearAllContent() throws {
        guard isOpen else { throw DatabaseError.notOpen }
        // Disable FK checks temporarily so detail tables don't block content deletion
        try exec("DELETE FROM spell_details")
        try exec("DELETE FROM class_details")
        try exec("DELETE FROM feat_details")
        try exec("DELETE FROM monster_details")
        try exec("DELETE FROM item_details")
        try exec("DELETE FROM race_details")
        try exec("DELETE FROM trait_details")
        try exec("DELETE FROM rule_details")
        try exec("DELETE FROM content")
    }

    /// Clears the FTS index entirely. Call at the start of a re-seed to prevent duplicate entries.
    func clearFTSIndex() throws {
        guard isOpen else { throw DatabaseError.notOpen }
        // content_fts is a contentless FTS5 table — direct DELETE is not supported.
        // Use the FTS5 'delete-all' command instead.
        try exec("INSERT INTO content_fts(content_fts) VALUES('delete-all')")
    }

    private func queryInt(_ sql: String) throws -> Int {
        guard let db else { throw DatabaseError.notOpen }
        var stmt: OpaquePointer?
        defer { sqlite3_finalize(stmt) }

        if sqlite3_prepare_v2(db, sql, -1, &stmt, nil) != SQLITE_OK {
            throw DatabaseError.queryFailed(dbError())
        }

        guard sqlite3_step(stmt) == SQLITE_ROW else { return 0 }
        return Int(sqlite3_column_int(stmt, 0))
    }

    private func queryIntBound(_ sql: String, param: String) throws -> Int {
        guard let db else { throw DatabaseError.notOpen }
        var stmt: OpaquePointer?
        defer { sqlite3_finalize(stmt) }

        if sqlite3_prepare_v2(db, sql, -1, &stmt, nil) != SQLITE_OK {
            throw DatabaseError.queryFailed(dbError())
        }

        sqlite3_bind_text(stmt, 1, param, -1, SQLITE_TRANSIENT)

        guard sqlite3_step(stmt) == SQLITE_ROW else { return 0 }
        return Int(sqlite3_column_int(stmt, 0))
    }

    private func dbError() -> String {
        guard let db else { return "No database" }
        return String(cString: sqlite3_errmsg(db))
    }

    // MARK: - Path

    static func writableDatabasePath() -> String {
        let docs = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        return docs.appendingPathComponent("lodestone.db").path
    }
}

// MARK: - DatabaseError

enum DatabaseError: LocalizedError {
    case openFailed(String)
    case notOpen
    case queryFailed(String)

    var errorDescription: String? {
        switch self {
        case .openFailed(let msg): return "Failed to open database: \(msg)"
        case .notOpen: return "Database is not open"
        case .queryFailed(let msg): return "Query failed: \(msg)"
        }
    }
}
