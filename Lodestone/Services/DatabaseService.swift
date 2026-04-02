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

        var results = try ftsSearch(query: trimmed, filters: filters, limit: limit)

        if results.isEmpty {
            results = try likeSearch(query: trimmed, filters: filters, limit: limit)
        }

        return results
    }

    func browse(type: ContentType, limit: Int = 1000, offset: Int = 0) throws -> [any ContentEntry] {
        guard isOpen else { throw DatabaseError.notOpen }
        return try fetchEntries(type: type, limit: limit, offset: offset)
    }

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

        var results: [any ContentEntry] = []
        for favorite in favorites {
            if let entry = try fetchEntry(id: favorite.id, type: favorite.contentType) {
                results.append(entry)
            }
        }
        return results.sorted { $0.title < $1.title }
    }

    // MARK: - Favorites (SQLite-backed)

    func insertFavorite(id: UUID, contentType: ContentType) throws {
        guard isOpen else { throw DatabaseError.notOpen }
        let now = ISO8601DateFormatter().string(from: Date())
        try execInsert("""
        INSERT OR REPLACE INTO favorites (id, content_id, content_type, added_at)
        VALUES (?, ?, ?, ?)
        """, params: [id.uuidString, id.uuidString, contentType.rawValue, now])
    }

    func deleteFavorite(id: UUID) throws {
        guard isOpen else { throw DatabaseError.notOpen }
        try execInsert(
            "DELETE FROM favorites WHERE id = ?",
            params: [id.uuidString]
        )
    }

    func getFavorites() throws -> Set<FavoriteEntry> {
        guard isOpen else { throw DatabaseError.notOpen }
        guard let db else { throw DatabaseError.notOpen }
        let sql = "SELECT content_id, content_type FROM favorites ORDER BY added_at DESC"
        var stmt: OpaquePointer?
        defer { sqlite3_finalize(stmt) }
        guard sqlite3_prepare_v2(db, sql, -1, &stmt, nil) == SQLITE_OK else {
            throw DatabaseError.queryFailed(dbError())
        }
        var results = Set<FavoriteEntry>()
        while sqlite3_step(stmt) == SQLITE_ROW {
            let idStr = String(cString: sqlite3_column_text(stmt, 0))
            let typeStr = String(cString: sqlite3_column_text(stmt, 1))
            if let id = UUID(uuidString: idStr),
               let type = ContentType(rawValue: typeStr) {
                results.insert(FavoriteEntry(id: id, contentType: type))
            }
        }
        return results
    }

    func isFavorited(id: UUID) throws -> Bool {
        guard isOpen else { throw DatabaseError.notOpen }
        let count = try queryIntBound(
            "SELECT COUNT(*) FROM favorites WHERE id = ?",
            param: id.uuidString
        )
        return count > 0
    }

    // MARK: - Schema

    private func configurePragmas() throws {
        try exec("PRAGMA journal_mode = WAL")
        try exec("PRAGMA foreign_keys = ON")
        try exec("PRAGMA cache_size = -8000")
    }

    private func createSchema() throws {
        try exec("""
        CREATE TABLE IF NOT EXISTS content (
            id TEXT PRIMARY KEY,
            title TEXT NOT NULL,
            content_type TEXT NOT NULL,
            summary TEXT NOT NULL DEFAULT '',
            is_premium INTEGER NOT NULL DEFAULT 0,
            source TEXT NOT NULL DEFAULT 'Player Core Handbook'
        )
        """)

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

        // PF2 Spells: rank + traditions + actions (no school/levels/components/SR)
        try exec("""
        CREATE TABLE IF NOT EXISTS spell_details (
            content_id TEXT PRIMARY KEY REFERENCES content(id) ON DELETE CASCADE,
            rank INTEGER NOT NULL DEFAULT 1,
            traditions TEXT NOT NULL DEFAULT '',
            actions TEXT NOT NULL DEFAULT '',
            traits TEXT NOT NULL DEFAULT '',
            range TEXT NOT NULL DEFAULT '',
            area TEXT NOT NULL DEFAULT '',
            targets TEXT NOT NULL DEFAULT '',
            duration TEXT NOT NULL DEFAULT '',
            saving_throw TEXT NOT NULL DEFAULT '',
            heightened TEXT NOT NULL DEFAULT '',
            description TEXT NOT NULL DEFAULT ''
        )
        """)

        // PF2 Classes: keyAbility + hp/level + proficiencies (no hitDie/BAB/skillRanks)
        try exec("""
        CREATE TABLE IF NOT EXISTS class_details (
            content_id TEXT PRIMARY KEY REFERENCES content(id) ON DELETE CASCADE,
            key_ability TEXT NOT NULL DEFAULT '',
            hp INTEGER NOT NULL DEFAULT 8,
            perception TEXT NOT NULL DEFAULT 'Trained',
            fort_save TEXT NOT NULL DEFAULT '',
            ref_save TEXT NOT NULL DEFAULT '',
            will_save TEXT NOT NULL DEFAULT '',
            skills TEXT NOT NULL DEFAULT '',
            class_features TEXT NOT NULL DEFAULT '',
            description TEXT NOT NULL DEFAULT ''
        )
        """)

        // PF2 Feats: level + featType + traits (no benefit/normal/special split)
        try exec("""
        CREATE TABLE IF NOT EXISTS feat_details (
            content_id TEXT PRIMARY KEY REFERENCES content(id) ON DELETE CASCADE,
            level INTEGER NOT NULL DEFAULT 1,
            feat_type TEXT NOT NULL DEFAULT '',
            traits TEXT NOT NULL DEFAULT '',
            prerequisites TEXT NOT NULL DEFAULT '',
            requirements TEXT NOT NULL DEFAULT '',
            trigger TEXT NOT NULL DEFAULT '',
            benefit TEXT NOT NULL DEFAULT ''
        )
        """)

        // PF2 Monsters: level + saves (no CR/alignment/environment)
        try exec("""
        CREATE TABLE IF NOT EXISTS monster_details (
            content_id TEXT PRIMARY KEY REFERENCES content(id) ON DELETE CASCADE,
            level INTEGER NOT NULL DEFAULT 1,
            creature_type TEXT NOT NULL DEFAULT '',
            size TEXT NOT NULL DEFAULT '',
            traits TEXT NOT NULL DEFAULT '',
            hit_points TEXT NOT NULL DEFAULT '',
            armor_class INTEGER NOT NULL DEFAULT 10,
            fort_save INTEGER NOT NULL DEFAULT 0,
            ref_save INTEGER NOT NULL DEFAULT 0,
            will_save INTEGER NOT NULL DEFAULT 0,
            speed TEXT NOT NULL DEFAULT '',
            attacks TEXT NOT NULL DEFAULT '',
            special_abilities TEXT NOT NULL DEFAULT '',
            description TEXT NOT NULL DEFAULT ''
        )
        """)

        // PF2 Items: item_level + bulk + usage (no slot/aura/caster_level)
        try exec("""
        CREATE TABLE IF NOT EXISTS item_details (
            content_id TEXT PRIMARY KEY REFERENCES content(id) ON DELETE CASCADE,
            item_level INTEGER NOT NULL DEFAULT 0,
            price TEXT NOT NULL DEFAULT '',
            bulk TEXT NOT NULL DEFAULT '',
            usage TEXT NOT NULL DEFAULT '',
            traits TEXT NOT NULL DEFAULT '',
            item_type TEXT NOT NULL DEFAULT '',
            activate TEXT NOT NULL DEFAULT '',
            description TEXT NOT NULL DEFAULT ''
        )
        """)

        // PF2 Ancestries: hp + speed + boosts/flaws (replaces PF1 race_details)
        try exec("""
        CREATE TABLE IF NOT EXISTS ancestry_details (
            content_id TEXT PRIMARY KEY REFERENCES content(id) ON DELETE CASCADE,
            hp INTEGER NOT NULL DEFAULT 8,
            size TEXT NOT NULL DEFAULT '',
            speed INTEGER NOT NULL DEFAULT 25,
            ability_boosts TEXT NOT NULL DEFAULT '',
            ability_flaws TEXT NOT NULL DEFAULT '',
            vision TEXT NOT NULL DEFAULT '',
            languages TEXT NOT NULL DEFAULT '[]',
            traits TEXT NOT NULL DEFAULT '',
            ancestral_features TEXT NOT NULL DEFAULT '[]',
            description TEXT NOT NULL DEFAULT ''
        )
        """)

        // PF2 Traits: just category + description (no prerequisites/benefit)
        try exec("""
        CREATE TABLE IF NOT EXISTS trait_details (
            content_id TEXT PRIMARY KEY REFERENCES content(id) ON DELETE CASCADE,
            trait_type TEXT NOT NULL DEFAULT '',
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

        // PF2-exclusive: Backgrounds
        try exec("""
        CREATE TABLE IF NOT EXISTS background_details (
            content_id TEXT PRIMARY KEY REFERENCES content(id) ON DELETE CASCADE,
            ability_boosts TEXT NOT NULL DEFAULT '',
            trained_skills TEXT NOT NULL DEFAULT '',
            skill_feat TEXT NOT NULL DEFAULT '',
            description TEXT NOT NULL DEFAULT ''
        )
        """)

        // PF2-exclusive: Conditions
        try exec("""
        CREATE TABLE IF NOT EXISTS condition_details (
            content_id TEXT PRIMARY KEY REFERENCES content(id) ON DELETE CASCADE,
            is_valued INTEGER NOT NULL DEFAULT 0,
            description TEXT NOT NULL DEFAULT ''
        )
        """)

        try exec("CREATE INDEX IF NOT EXISTS idx_content_type ON content(content_type)")
        try exec("CREATE INDEX IF NOT EXISTS idx_content_title ON content(title)")

        try exec("""
        CREATE TABLE IF NOT EXISTS favorites (
            id TEXT PRIMARY KEY,
            content_id TEXT NOT NULL,
            content_type TEXT NOT NULL,
            added_at TEXT NOT NULL
        )
        """)
    }

    // MARK: - Insert (used by SeedDataBuilder)

    func insertSpell(_ spell: SpellEntry) throws {
        try execInsert("""
        INSERT OR REPLACE INTO content (id, title, content_type, summary, is_premium, source)
        VALUES (?, ?, 'spell', ?, ?, ?)
        """, params: [spell.id.uuidString, spell.title, spell.summary,
                      spell.isPremium ? "1" : "0", spell.source])

        try execInsert("""
        INSERT OR REPLACE INTO spell_details
        (content_id, rank, traditions, actions, traits, range, area, targets, duration, saving_throw, heightened, description)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        """, params: [spell.id.uuidString, "\(spell.rank)", spell.traditions, spell.actions,
                      spell.traits, spell.range, spell.area, spell.targets,
                      spell.duration, spell.savingThrow, spell.heightened, spell.description])

        try insertFTS(id: spell.id.uuidString, title: spell.title, type: "spell",
                     summary: spell.summary,
                     body: "\(spell.traditions) \(spell.traits) \(spell.description)")
    }

    func insertClass(_ cls: ClassEntry) throws {
        try execInsert("""
        INSERT OR REPLACE INTO content (id, title, content_type, summary, is_premium, source)
        VALUES (?, ?, 'class', ?, ?, ?)
        """, params: [cls.id.uuidString, cls.title, cls.summary,
                      cls.isPremium ? "1" : "0", cls.source])

        try execInsert("""
        INSERT OR REPLACE INTO class_details
        (content_id, key_ability, hp, perception, fort_save, ref_save, will_save, skills, class_features, description)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        """, params: [cls.id.uuidString, cls.keyAbility, "\(cls.hp)", cls.perception,
                      cls.fortSave, cls.refSave, cls.willSave, cls.skills,
                      cls.classFeatures, cls.description])

        try insertFTS(id: cls.id.uuidString, title: cls.title, type: "class",
                     summary: cls.summary, body: "\(cls.keyAbility) \(cls.description)")
    }

    func insertFeat(_ feat: FeatEntry) throws {
        try execInsert("""
        INSERT OR REPLACE INTO content (id, title, content_type, summary, is_premium, source)
        VALUES (?, ?, 'feat', ?, ?, ?)
        """, params: [feat.id.uuidString, feat.title, feat.summary,
                      feat.isPremium ? "1" : "0", feat.source])

        try execInsert("""
        INSERT OR REPLACE INTO feat_details
        (content_id, level, feat_type, traits, prerequisites, requirements, trigger, benefit)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?)
        """, params: [feat.id.uuidString, "\(feat.level)", feat.featType, feat.traits,
                      feat.prerequisites, feat.requirements, feat.trigger, feat.benefit])

        try insertFTS(id: feat.id.uuidString, title: feat.title, type: "feat",
                     summary: feat.summary,
                     body: "\(feat.featType) \(feat.traits) \(feat.prerequisites) \(feat.benefit)")
    }

    func insertMonster(_ monster: MonsterEntry) throws {
        try execInsert("""
        INSERT OR REPLACE INTO content (id, title, content_type, summary, is_premium, source)
        VALUES (?, ?, 'monster', ?, ?, ?)
        """, params: [monster.id.uuidString, monster.title, monster.summary,
                      monster.isPremium ? "1" : "0", monster.source])

        try execInsert("""
        INSERT OR REPLACE INTO monster_details
        (content_id, level, creature_type, size, traits, hit_points, armor_class, fort_save, ref_save, will_save, speed, attacks, special_abilities, description)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        """, params: [monster.id.uuidString, "\(monster.level)", monster.creatureType,
                      monster.size, monster.traits, monster.hitPoints,
                      "\(monster.armorClass)", "\(monster.fortSave)", "\(monster.refSave)",
                      "\(monster.willSave)", monster.speed, monster.attacks,
                      monster.specialAbilities, monster.description])

        try insertFTS(id: monster.id.uuidString, title: monster.title, type: "monster",
                     summary: monster.summary,
                     body: "\(monster.creatureType) \(monster.traits) Level \(monster.level) \(monster.description)")
    }

    func insertItem(_ item: ItemEntry) throws {
        try execInsert("""
        INSERT OR REPLACE INTO content (id, title, content_type, summary, is_premium, source)
        VALUES (?, ?, 'item', ?, ?, ?)
        """, params: [item.id.uuidString, item.title, item.summary,
                      item.isPremium ? "1" : "0", item.source])

        try execInsert("""
        INSERT OR REPLACE INTO item_details
        (content_id, item_level, price, bulk, usage, traits, item_type, activate, description)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
        """, params: [item.id.uuidString, "\(item.itemLevel)", item.price, item.bulk,
                      item.usage, item.traits, item.itemType, item.activate, item.description])

        try insertFTS(id: item.id.uuidString, title: item.title, type: "item",
                     summary: item.summary,
                     body: "\(item.itemType) \(item.traits) \(item.description)")
    }

    func insertAncestry(_ ancestry: AncestryEntry) throws {
        try execInsert("""
        INSERT OR REPLACE INTO content (id, title, content_type, summary, is_premium, source)
        VALUES (?, ?, 'ancestry', ?, ?, ?)
        """, params: [ancestry.id.uuidString, ancestry.title, ancestry.summary,
                      ancestry.isPremium ? "1" : "0", ancestry.source])

        let langsJSON = (try? String(data: JSONEncoder().encode(ancestry.languages), encoding: .utf8)) ?? "[]"
        let featuresJSON = (try? String(data: JSONEncoder().encode(ancestry.ancestralFeatures), encoding: .utf8)) ?? "[]"
        try execInsert("""
        INSERT OR REPLACE INTO ancestry_details
        (content_id, hp, size, speed, ability_boosts, ability_flaws, vision, languages, traits, ancestral_features, description)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        """, params: [ancestry.id.uuidString, "\(ancestry.hp)", ancestry.size, "\(ancestry.speed)",
                      ancestry.abilityBoosts, ancestry.abilityFlaws, ancestry.vision,
                      langsJSON, ancestry.traits, featuresJSON, ancestry.description])

        try insertFTS(id: ancestry.id.uuidString, title: ancestry.title, type: "ancestry",
                     summary: ancestry.summary,
                     body: "\(ancestry.abilityBoosts) \(ancestry.traits) \(ancestry.description)")
    }

    func insertTrait(_ trait: TraitEntry) throws {
        try execInsert("""
        INSERT OR REPLACE INTO content (id, title, content_type, summary, is_premium, source)
        VALUES (?, ?, 'trait', ?, ?, ?)
        """, params: [trait.id.uuidString, trait.title, trait.summary,
                      trait.isPremium ? "1" : "0", trait.source])

        try execInsert("""
        INSERT OR REPLACE INTO trait_details (content_id, trait_type, description)
        VALUES (?, ?, ?)
        """, params: [trait.id.uuidString, trait.traitType, trait.description])

        try insertFTS(id: trait.id.uuidString, title: trait.title, type: "trait",
                     summary: trait.summary,
                     body: "\(trait.traitType) \(trait.description)")
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

    func insertBackground(_ bg: BackgroundEntry) throws {
        try execInsert("""
        INSERT OR REPLACE INTO content (id, title, content_type, summary, is_premium, source)
        VALUES (?, ?, 'background', ?, ?, ?)
        """, params: [bg.id.uuidString, bg.title, bg.summary,
                      bg.isPremium ? "1" : "0", bg.source])

        try execInsert("""
        INSERT OR REPLACE INTO background_details (content_id, ability_boosts, trained_skills, skill_feat, description)
        VALUES (?, ?, ?, ?, ?)
        """, params: [bg.id.uuidString, bg.abilityBoosts, bg.trainedSkills,
                      bg.skillFeat, bg.description])

        try insertFTS(id: bg.id.uuidString, title: bg.title, type: "background",
                     summary: bg.summary,
                     body: "\(bg.abilityBoosts) \(bg.trainedSkills) \(bg.skillFeat) \(bg.description)")
    }

    func insertCondition(_ condition: ConditionEntry) throws {
        try execInsert("""
        INSERT OR REPLACE INTO content (id, title, content_type, summary, is_premium, source)
        VALUES (?, ?, 'condition', ?, ?, ?)
        """, params: [condition.id.uuidString, condition.title, condition.summary,
                      condition.isPremium ? "1" : "0", condition.source])

        try execInsert("""
        INSERT OR REPLACE INTO condition_details (content_id, is_valued, description)
        VALUES (?, ?, ?)
        """, params: [condition.id.uuidString, condition.isValued ? "1" : "0",
                      condition.description])

        try insertFTS(id: condition.id.uuidString, title: condition.title, type: "condition",
                     summary: condition.summary, body: condition.description)
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
        let safeQuery = query
            .replacingOccurrences(of: "\"", with: "")
            .replacingOccurrences(of: "*", with: "")
            .split(separator: " ")
            .map { "\($0)*" }
            .joined(separator: " ")

        var typeClause = ""
        if !filters.isEmpty {
            let types = filters.map { "'\($0.rawValue)'" }.joined(separator: ",")
            typeClause = "AND c.content_type IN (\(types))"
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

        return try queryEntries(sql: sql, params: [safeQuery])
    }

    private func likeSearch(query: String, filters: Set<ContentType>, limit: Int) throws -> [any ContentEntry] {
        var typeClause = ""
        if !filters.isEmpty {
            let types = filters.map { "'\($0.rawValue)'" }.joined(separator: ",")
            typeClause = "AND content_type IN (\(types))"
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
        return try queryEntries(sql: sql, params: [pattern, pattern])
    }

    private func browseAll(filters: Set<ContentType>, limit: Int, offset: Int) throws -> [any ContentEntry] {
        var typeClause = ""
        if !filters.isEmpty {
            let types = filters.map { "'\($0.rawValue)'" }.joined(separator: ",")
            typeClause = "WHERE content_type IN (\(types))"
        }

        let sql = """
        SELECT id, title, content_type, summary, is_premium, source
        FROM content
        \(typeClause)
        ORDER BY title
        LIMIT \(limit) OFFSET \(offset)
        """
        return try queryEntries(sql: sql, params: [])
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
            return ("spell_details",
                    "d.rank, d.traditions, d.actions, d.traits, d.range, d.area, d.targets, d.duration, d.saving_throw, d.heightened, d.description")
        case .class_:
            return ("class_details",
                    "d.key_ability, d.hp, d.perception, d.fort_save, d.ref_save, d.will_save, d.skills, d.class_features, d.description")
        case .feat:
            return ("feat_details",
                    "d.level, d.feat_type, d.traits, d.prerequisites, d.requirements, d.trigger, d.benefit")
        case .monster:
            return ("monster_details",
                    "d.level, d.creature_type, d.size, d.traits, d.hit_points, d.armor_class, d.fort_save, d.ref_save, d.will_save, d.speed, d.attacks, d.special_abilities, d.description")
        case .item:
            return ("item_details",
                    "d.item_level, d.price, d.bulk, d.usage, d.traits, d.item_type, d.activate, d.description")
        case .ancestry:
            return ("ancestry_details",
                    "d.hp, d.size, d.speed, d.ability_boosts, d.ability_flaws, d.vision, d.languages, d.traits, d.ancestral_features, d.description")
        case .trait:
            return ("trait_details", "d.trait_type, d.description")
        case .rule:
            return ("rule_details", "d.category, d.body")
        case .background:
            return ("background_details", "d.ability_boosts, d.trained_skills, d.skill_feat, d.description")
        case .condition:
            return ("condition_details", "d.is_valued, d.description")
        }
    }

    private func makeEntry(type: ContentType, row: SQLiteRow) -> (any ContentEntry)? {
        switch type {
        case .spell:      return SpellEntry(from: row)
        case .class_:     return ClassEntry(from: row)
        case .feat:       return FeatEntry(from: row)
        case .monster:    return MonsterEntry(from: row)
        case .item:       return ItemEntry(from: row)
        case .ancestry:   return AncestryEntry(from: row)
        case .trait:      return TraitEntry(from: row)
        case .rule:       return RuleEntry(from: row)
        case .background: return BackgroundEntry(from: row)
        case .condition:  return ConditionEntry(from: row)
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

    func clearAllContent() throws {
        guard isOpen else { throw DatabaseError.notOpen }
        try exec("DELETE FROM spell_details")
        try exec("DELETE FROM class_details")
        try exec("DELETE FROM feat_details")
        try exec("DELETE FROM monster_details")
        try exec("DELETE FROM item_details")
        try exec("DELETE FROM ancestry_details")
        try exec("DELETE FROM trait_details")
        try exec("DELETE FROM rule_details")
        try exec("DELETE FROM background_details")
        try exec("DELETE FROM condition_details")
        try exec("DELETE FROM content")
    }

    func clearFTSIndex() throws {
        guard isOpen else { throw DatabaseError.notOpen }
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

    static func writableDatabasePath() -> String {
        guard let docs = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else {
            // Fallback to temp directory if documents directory is unavailable
            return NSTemporaryDirectory() + "lodestone_pf2.db"
        }
        return docs.appendingPathComponent("lodestone_pf2.db").path
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
