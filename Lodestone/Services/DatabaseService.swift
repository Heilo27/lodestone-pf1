import Foundation
import SQLite3

// SQLITE_TRANSIENT is not directly available in Swift — define it locally
private let SQLITE_TRANSIENT = unsafeBitCast(-1, to: sqlite3_destructor_type.self)

// MARK: - DatabaseService

actor DatabaseService {
    static let shared = DatabaseService()

    private var db: OpaquePointer?
    private var isOpen = false

    private init() {}

    // MARK: - Lifecycle

    func open() throws {
        guard !isOpen else { return }

        let dbPath = try Self.writableDatabasePath()

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

    func search(query: String, filters: Set<ContentType> = [], sourcesFilter: Set<String> = [], limit: Int = 100, offset: Int = 0) throws -> [any ContentEntry] {
        guard isOpen else { throw DatabaseError.notOpen }

        let trimmed = query.trimmingCharacters(in: .whitespacesAndNewlines)
        if trimmed.isEmpty {
            return try browseAll(filters: filters, sourcesFilter: sourcesFilter, limit: limit, offset: offset)
        }

        // Try FTS5 first
        var results = try ftsSearch(query: trimmed, filters: filters, sourcesFilter: sourcesFilter, limit: limit)

        // Fallback to LIKE if FTS returns nothing
        if results.isEmpty {
            results = try likeSearch(query: trimmed, filters: filters, sourcesFilter: sourcesFilter, limit: limit)
        }

        return results
    }

    func browse(type: ContentType, sourcesFilter: Set<String> = [], limit: Int = 5000, offset: Int = 0) throws -> [any ContentEntry] {
        guard isOpen else { throw DatabaseError.notOpen }
        return try fetchEntries(type: type, sourcesFilter: sourcesFilter, limit: limit, offset: offset)
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
            results.append(BookSource(name: name, entryCount: count, isPremium: isPremium, series: BookSeries.series(for: name)))
        }
        return results
    }

    /// Returns all entries from a specific book source, sorted by type then name.
    func browse(source: String, limit: Int = 5000) throws -> [any ContentEntry] {
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

    func countForType(_ type: ContentType, sourcesFilter: Set<String> = [], unlockedOnly: Bool = false) throws -> Int {
        guard isOpen else { throw DatabaseError.notOpen }
        guard let db else { throw DatabaseError.notOpen }

        // Skills are stored as rules with category = 'Skills'
        if type == .skill {
            var conditions = ["c.content_type = 'rule'", "d.category = 'Skills'"]
            if unlockedOnly { conditions.append("c.is_premium = 0") }
            if !sourcesFilter.isEmpty {
                let placeholders = sourcesFilter.map { "'\($0.replacingOccurrences(of: "'", with: "''"))'" }.joined(separator: ",")
                conditions.append("c.source IN (\(placeholders))")
            }
            let sql = "SELECT COUNT(*) FROM content c JOIN rule_details d ON d.content_id = c.id WHERE \(conditions.joined(separator: " AND "))"
            var stmt: OpaquePointer?
            defer { sqlite3_finalize(stmt) }
            guard sqlite3_prepare_v2(db, sql, -1, &stmt, nil) == SQLITE_OK else { return 0 }
            sqlite3_step(stmt)
            return Int(sqlite3_column_int(stmt, 0))
        }

        var conditions = ["content_type = ?"]
        if unlockedOnly { conditions.append("is_premium = 0") }
        if !sourcesFilter.isEmpty {
            let placeholders = sourcesFilter.map { _ in "?" }.joined(separator: ",")
            conditions.append("source IN (\(placeholders))")
        }

        let sql = "SELECT COUNT(*) FROM content WHERE \(conditions.joined(separator: " AND "))"
        var stmt: OpaquePointer?
        defer { sqlite3_finalize(stmt) }
        guard sqlite3_prepare_v2(db, sql, -1, &stmt, nil) == SQLITE_OK else {
            throw DatabaseError.queryFailed(dbError())
        }
        var bindIdx: Int32 = 1
        sqlite3_bind_text(stmt, bindIdx, type.rawValue, -1, SQLITE_TRANSIENT); bindIdx += 1
        for name in sourcesFilter {
            sqlite3_bind_text(stmt, bindIdx, name, -1, SQLITE_TRANSIENT); bindIdx += 1
        }
        sqlite3_step(stmt)
        return Int(sqlite3_column_int(stmt, 0))
    }

    func browseSkills(sourcesFilter: Set<String> = []) throws -> [RuleEntry] {
        guard isOpen else { throw DatabaseError.notOpen }
        guard let db else { throw DatabaseError.notOpen }
        var conditions = ["c.content_type = 'rule'", "d.category = 'Skills'"]
        if !sourcesFilter.isEmpty {
            let names = sourcesFilter.map { "'\($0.replacingOccurrences(of: "'", with: "''"))'" }.joined(separator: ",")
            conditions.append("c.source IN (\(names))")
        }
        let sql = """
        SELECT c.id, c.title, c.content_type, c.summary, c.is_premium, c.source, d.category, d.body
        FROM content c
        JOIN rule_details d ON d.content_id = c.id
        WHERE \(conditions.joined(separator: " AND "))
        ORDER BY c.title
        """
        var stmt: OpaquePointer?
        defer { sqlite3_finalize(stmt) }
        guard sqlite3_prepare_v2(db, sql, -1, &stmt, nil) == SQLITE_OK else {
            throw DatabaseError.queryFailed(dbError())
        }
        var results: [RuleEntry] = []
        while sqlite3_step(stmt) == SQLITE_ROW {
            guard let row = stmt?.currentRow() else { continue }
            results.append(RuleEntry(from: row))
        }
        return results
    }

    func getAllFavorites(ids: Set<UUID>) throws -> [any ContentEntry] {
        guard isOpen else { throw DatabaseError.notOpen }
        guard !ids.isEmpty else { return [] }

        // Fetch all favorites rows in one query, group by content_type,
        // then fetch each group with a single IN-clause query per type.
        let idList = ids.map { "'\($0.uuidString)'" }.joined(separator: ",")
        let favRows = try queryEntries(
            sql: "SELECT id, title, content_type, summary, is_premium, source FROM content WHERE id IN (\(idList))",
            params: []
        )
        return favRows
    }

    // MARK: - Cross References

    func fetchCrossReferences(for id: UUID) throws -> [(targetId: UUID, linkText: String)] {
        guard isOpen else { throw DatabaseError.notOpen }
        guard let db else { throw DatabaseError.notOpen }
        let sql = "SELECT target_id, link_text FROM cross_references WHERE source_id = ?"
        var stmt: OpaquePointer?
        defer { sqlite3_finalize(stmt) }
        guard sqlite3_prepare_v2(db, sql, -1, &stmt, nil) == SQLITE_OK else {
            throw DatabaseError.queryFailed(dbError())
        }
        sqlite3_bind_text(stmt, 1, id.uuidString, -1, SQLITE_TRANSIENT)
        var results: [(targetId: UUID, linkText: String)] = []
        while sqlite3_step(stmt) == SQLITE_ROW {
            let targetStr = String(cString: sqlite3_column_text(stmt, 0))
            let linkText = sqlite3_column_text(stmt, 1).map { String(cString: $0) } ?? ""
            if let targetId = UUID(uuidString: targetStr) {
                results.append((targetId: targetId, linkText: linkText))
            }
        }
        return results
    }

    func insertCrossReference(sourceId: UUID, targetId: UUID, linkText: String) throws {
        guard isOpen else { throw DatabaseError.notOpen }
        try execInsert("""
        INSERT OR REPLACE INTO cross_references (id, source_id, target_id, link_text)
        VALUES (?, ?, ?, ?)
        """, params: [UUID().uuidString, sourceId.uuidString, targetId.uuidString, linkText])
    }

    func getContentType(for id: UUID) throws -> ContentType? {
        guard isOpen else { throw DatabaseError.notOpen }
        guard let db else { throw DatabaseError.notOpen }
        let sql = "SELECT content_type FROM content WHERE id = ?"
        var stmt: OpaquePointer?
        defer { sqlite3_finalize(stmt) }
        guard sqlite3_prepare_v2(db, sql, -1, &stmt, nil) == SQLITE_OK else {
            throw DatabaseError.queryFailed(dbError())
        }
        sqlite3_bind_text(stmt, 1, id.uuidString, -1, SQLITE_TRANSIENT)
        guard sqlite3_step(stmt) == SQLITE_ROW else { return nil }
        let typeStr = String(cString: sqlite3_column_text(stmt, 0))
        return ContentType(rawValue: typeStr)
    }

    func fetchCrossReferencesWithType(for id: UUID) throws -> [(targetId: UUID, targetType: ContentType, linkText: String)] {
        guard isOpen else { throw DatabaseError.notOpen }
        guard let db else { throw DatabaseError.notOpen }
        let sql = """
            SELECT cr.target_id, c.content_type, cr.link_text
            FROM cross_references cr
            JOIN content c ON c.id = cr.target_id
            WHERE cr.source_id = ?
            ORDER BY cr.link_text ASC
        """
        var stmt: OpaquePointer?
        defer { sqlite3_finalize(stmt) }
        guard sqlite3_prepare_v2(db, sql, -1, &stmt, nil) == SQLITE_OK else {
            throw DatabaseError.queryFailed(dbError())
        }
        sqlite3_bind_text(stmt, 1, id.uuidString, -1, SQLITE_TRANSIENT)
        var results: [(targetId: UUID, targetType: ContentType, linkText: String)] = []
        while sqlite3_step(stmt) == SQLITE_ROW {
            let targetStr = String(cString: sqlite3_column_text(stmt, 0))
            let typeStr = String(cString: sqlite3_column_text(stmt, 1))
            let linkText = sqlite3_column_text(stmt, 2).map { String(cString: $0) } ?? ""
            if let targetId = UUID(uuidString: targetStr),
               let targetType = ContentType(rawValue: typeStr) {
                results.append((targetId: targetId, targetType: targetType, linkText: linkText))
            }
        }
        return results
    }

    // MARK: - Favorites (SQLite-backed)

    func insertFavorite(id: UUID, contentType: ContentType) throws {
        guard isOpen else { throw DatabaseError.notOpen }
        // Delete any existing row for this content entry (idempotent upsert by content_id)
        try execInsert("DELETE FROM favorites WHERE content_id = ?", params: [id.uuidString])
        let now = ISO8601DateFormatter().string(from: Date())
        try execInsert("""
        INSERT INTO favorites (id, content_id, content_type, added_at)
        VALUES (?, ?, ?, ?)
        """, params: [UUID().uuidString, id.uuidString, contentType.rawValue, now])
    }

    func deleteFavorite(id: UUID) throws {
        guard isOpen else { throw DatabaseError.notOpen }
        try execInsert(
            "DELETE FROM favorites WHERE content_id = ?",
            params: [id.uuidString]
        )
    }

    func deleteAllFavorites() throws {
        guard isOpen else { throw DatabaseError.notOpen }
        try execInsert("DELETE FROM favorites", params: [])
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
            "SELECT COUNT(*) FROM favorites WHERE content_id = ?",
            param: id.uuidString
        )
        return count > 0
    }

    // MARK: - Schema

    private func configurePragmas() throws {
        try exec("PRAGMA journal_mode = WAL")
        try exec("PRAGMA foreign_keys = ON")
        try exec("PRAGMA cache_size = -8000") // 8MB cache
    }

    private func createSchema() throws {
        // Column migrations — add columns that were introduced after initial schema creation.
        // SQLite doesn't support IF NOT EXISTS on ALTER TABLE, so we ignore the error if the column exists.
        try? exec("ALTER TABLE content ADD COLUMN page INTEGER NOT NULL DEFAULT 0")
        try? exec("ALTER TABLE spell_details ADD COLUMN area TEXT NOT NULL DEFAULT ''")
        try? exec("ALTER TABLE spell_details ADD COLUMN targets TEXT NOT NULL DEFAULT ''")
        try? exec("ALTER TABLE monster_details ADD COLUMN fort_save INTEGER NOT NULL DEFAULT 0")
        try? exec("ALTER TABLE monster_details ADD COLUMN ref_save INTEGER NOT NULL DEFAULT 0")
        try? exec("ALTER TABLE monster_details ADD COLUMN will_save INTEGER NOT NULL DEFAULT 0")
        try? exec("ALTER TABLE monster_details ADD COLUMN initiative INTEGER NOT NULL DEFAULT 0")
        try? exec("ALTER TABLE monster_details ADD COLUMN stat_str INTEGER NOT NULL DEFAULT 10")
        try? exec("ALTER TABLE monster_details ADD COLUMN stat_dex INTEGER NOT NULL DEFAULT 10")
        try? exec("ALTER TABLE monster_details ADD COLUMN stat_con INTEGER NOT NULL DEFAULT 10")
        try? exec("ALTER TABLE monster_details ADD COLUMN stat_int INTEGER NOT NULL DEFAULT 10")
        try? exec("ALTER TABLE monster_details ADD COLUMN stat_wis INTEGER NOT NULL DEFAULT 10")
        try? exec("ALTER TABLE monster_details ADD COLUMN stat_cha INTEGER NOT NULL DEFAULT 10")
        try? exec("ALTER TABLE monster_details ADD COLUMN senses TEXT NOT NULL DEFAULT ''")
        try? exec("ALTER TABLE monster_details ADD COLUMN immunities TEXT NOT NULL DEFAULT ''")
        try? exec("ALTER TABLE monster_details ADD COLUMN resistances TEXT NOT NULL DEFAULT ''")
        try? exec("ALTER TABLE monster_details ADD COLUMN skills TEXT NOT NULL DEFAULT ''")

        // Main content table
        try exec("""
        CREATE TABLE IF NOT EXISTS content (
            id TEXT PRIMARY KEY,
            title TEXT NOT NULL,
            content_type TEXT NOT NULL,
            summary TEXT NOT NULL DEFAULT '',
            is_premium INTEGER NOT NULL DEFAULT 0,
            source TEXT NOT NULL DEFAULT 'Core Rulebook',
            page INTEGER NOT NULL DEFAULT 0
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
            area TEXT NOT NULL DEFAULT '',
            targets TEXT NOT NULL DEFAULT '',
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
            fort_save INTEGER NOT NULL DEFAULT 0,
            ref_save INTEGER NOT NULL DEFAULT 0,
            will_save INTEGER NOT NULL DEFAULT 0,
            initiative INTEGER NOT NULL DEFAULT 0,
            stat_str INTEGER NOT NULL DEFAULT 10,
            stat_dex INTEGER NOT NULL DEFAULT 10,
            stat_con INTEGER NOT NULL DEFAULT 10,
            stat_int INTEGER NOT NULL DEFAULT 10,
            stat_wis INTEGER NOT NULL DEFAULT 10,
            stat_cha INTEGER NOT NULL DEFAULT 10,
            senses TEXT NOT NULL DEFAULT '',
            immunities TEXT NOT NULL DEFAULT '',
            resistances TEXT NOT NULL DEFAULT '',
            skills TEXT NOT NULL DEFAULT '',
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

        try exec("""
        CREATE TABLE IF NOT EXISTS favorites (
            id TEXT PRIMARY KEY,
            content_id TEXT NOT NULL,
            content_type TEXT NOT NULL,
            added_at TEXT NOT NULL
        )
        """)

        try exec("""
        CREATE TABLE IF NOT EXISTS cross_references (
            id TEXT NOT NULL,
            source_id TEXT NOT NULL,
            target_id TEXT NOT NULL,
            link_text TEXT,
            PRIMARY KEY (source_id, target_id, link_text)
        )
        """)

        try exec("""
        CREATE TABLE IF NOT EXISTS books (
            name TEXT PRIMARY KEY,
            display_name TEXT NOT NULL,
            series TEXT,
            is_premium INTEGER NOT NULL DEFAULT 1,
            entry_count INTEGER NOT NULL DEFAULT 0
        )
        """)
    }

    // MARK: - Insert (used by SeedDataBuilder)

    func insertSpell(_ spell: SpellEntry) throws {
        let sql = """
        INSERT OR REPLACE INTO content (id, title, content_type, summary, is_premium, source, page)
        VALUES (?, ?, 'spell', ?, ?, ?, ?)
        """
        try execInsert(sql, params: [
            spell.id.uuidString, spell.title, spell.summary,
            spell.isPremium ? "1" : "0", spell.source, "\(spell.page)"
        ])

        let sql2 = """
        INSERT OR REPLACE INTO spell_details
        (content_id, school, levels, casting_time, components, range, area, targets, duration, saving_throw, spell_resistance, description)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        """
        try execInsert(sql2, params: [
            spell.id.uuidString, spell.school, spell.levels, spell.castingTime,
            spell.components, spell.range, spell.area, spell.targets,
            spell.duration, spell.savingThrow,
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
        INSERT OR REPLACE INTO content (id, title, content_type, summary, is_premium, source, page)
        VALUES (?, ?, 'feat', ?, ?, ?, ?)
        """, params: [feat.id.uuidString, feat.title, feat.summary,
                      feat.isPremium ? "1" : "0", feat.source, "\(feat.page)"])

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
        INSERT OR REPLACE INTO content (id, title, content_type, summary, is_premium, source, page)
        VALUES (?, ?, 'monster', ?, ?, ?, ?)
        """, params: [monster.id.uuidString, monster.title, monster.summary,
                      monster.isPremium ? "1" : "0", monster.source, "\(monster.page)"])

        try execInsert("""
        INSERT OR REPLACE INTO monster_details
        (content_id, challenge_rating, monster_type, size, alignment, hit_points, armor_class,
         fort_save, ref_save, will_save, initiative,
         stat_str, stat_dex, stat_con, stat_int, stat_wis, stat_cha,
         senses, immunities, resistances, skills, speed, attacks, special_abilities, environment, description)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        """, params: [monster.id.uuidString, monster.challengeRating, monster.type,
                      monster.size, monster.alignment, monster.hitPoints,
                      "\(monster.armorClass)",
                      "\(monster.fortSave)", "\(monster.refSave)", "\(monster.willSave)",
                      "\(monster.initiative)",
                      "\(monster.str)", "\(monster.dex)", "\(monster.con)",
                      "\(monster.int_)", "\(monster.wis)", "\(monster.cha)",
                      monster.senses, monster.immunities, monster.resistances, monster.skills,
                      monster.speed, monster.attacks,
                      monster.specialAbilities, monster.environment, monster.description])

        try insertFTS(id: monster.id.uuidString, title: monster.title, type: "monster",
                     summary: monster.summary,
                     body: "\(monster.type) \(monster.size) CR\(monster.challengeRating) \(monster.description)")
    }

    func insertItem(_ item: ItemEntry) throws {
        try execInsert("""
        INSERT OR REPLACE INTO content (id, title, content_type, summary, is_premium, source, page)
        VALUES (?, ?, 'item', ?, ?, ?, ?)
        """, params: [item.id.uuidString, item.title, item.summary,
                      item.isPremium ? "1" : "0", item.source, "\(item.page)"])

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

    private func ftsSearch(query: String, filters: Set<ContentType>, sourcesFilter: Set<String>, limit: Int) throws -> [any ContentEntry] {
        // Sanitize query for FTS5
        let safeQuery = query
            .replacingOccurrences(of: "\"", with: "")
            .replacingOccurrences(of: "*", with: "")
            .split(separator: " ")
            .map { "\($0)*" }
            .joined(separator: " ")

        var extraClauses = ""
        if !filters.isEmpty {
            let types = filters.map { "'\($0.rawValue)'" }.joined(separator: ",")
            extraClauses += " AND c.content_type IN (\(types))"
        }
        if !sourcesFilter.isEmpty {
            let names = sourcesFilter.map { "'\($0.replacingOccurrences(of: "'", with: "''"))'" }.joined(separator: ",")
            extraClauses += " AND c.source IN (\(names))"
        }

        let sql = """
        SELECT c.id, c.title, c.content_type, c.summary, c.is_premium, c.source,
               bm25(content_fts) AS rank
        FROM content_fts
        JOIN content c ON c.id = content_fts.id
        WHERE content_fts MATCH ?
        \(extraClauses)
        ORDER BY rank
        LIMIT \(limit)
        """

        return try queryEntries(sql: sql, params: [safeQuery])
    }

    private func likeSearch(query: String, filters: Set<ContentType>, sourcesFilter: Set<String>, limit: Int) throws -> [any ContentEntry] {
        var extraClauses = ""
        if !filters.isEmpty {
            let types = filters.map { "'\($0.rawValue)'" }.joined(separator: ",")
            extraClauses += " AND content_type IN (\(types))"
        }
        if !sourcesFilter.isEmpty {
            let names = sourcesFilter.map { "'\($0.replacingOccurrences(of: "'", with: "''"))'" }.joined(separator: ",")
            extraClauses += " AND source IN (\(names))"
        }

        let sql = """
        SELECT id, title, content_type, summary, is_premium, source
        FROM content
        WHERE (title LIKE ? OR summary LIKE ?)
        \(extraClauses)
        ORDER BY title
        LIMIT \(limit)
        """
        let pattern = "%\(query)%"
        return try queryEntries(sql: sql, params: [pattern, pattern])
    }

    private func browseAll(filters: Set<ContentType>, sourcesFilter: Set<String>, limit: Int, offset: Int) throws -> [any ContentEntry] {
        var conditions: [String] = []
        if !filters.isEmpty {
            let types = filters.map { "'\($0.rawValue)'" }.joined(separator: ",")
            conditions.append("content_type IN (\(types))")
        }
        if !sourcesFilter.isEmpty {
            let names = sourcesFilter.map { "'\($0.replacingOccurrences(of: "'", with: "''"))'" }.joined(separator: ",")
            conditions.append("source IN (\(names))")
        }
        let whereClause = conditions.isEmpty ? "" : "WHERE \(conditions.joined(separator: " AND "))"

        let sql = """
        SELECT id, title, content_type, summary, is_premium, source
        FROM content
        \(whereClause)
        ORDER BY title
        LIMIT \(limit) OFFSET \(offset)
        """
        return try queryEntries(sql: sql, params: [])
    }

    private func fetchEntries(type: ContentType, sourcesFilter: Set<String>, limit: Int, offset: Int) throws -> [any ContentEntry] {
        var conditions = ["content_type = ?"]
        if !sourcesFilter.isEmpty {
            let names = sourcesFilter.map { "'\($0.replacingOccurrences(of: "'", with: "''"))'" }.joined(separator: ",")
            conditions.append("source IN (\(names))")
        }

        let sql = """
        SELECT id, title, content_type, summary, is_premium, source
        FROM content
        WHERE \(conditions.joined(separator: " AND "))
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
        SELECT c.id, c.title, c.content_type, c.summary, c.is_premium, c.source, c.page,
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
            return ("spell_details", "d.school, d.levels, d.casting_time, d.components, d.range, d.area, d.targets, d.duration, d.saving_throw, d.spell_resistance, d.description")
        case .class_:
            return ("class_details", "d.hit_die, d.skill_ranks, d.base_attack_bonus, d.fort_save, d.ref_save, d.will_save, d.class_skills, d.description")
        case .feat:
            return ("feat_details", "d.prerequisites, d.benefit, d.normal, d.special, d.feat_type")
        case .monster:
            return ("monster_details", "d.challenge_rating, d.monster_type, d.size, d.alignment, d.hit_points, d.armor_class, d.fort_save, d.ref_save, d.will_save, d.initiative, d.stat_str, d.stat_dex, d.stat_con, d.stat_int, d.stat_wis, d.stat_cha, d.senses, d.immunities, d.resistances, d.skills, d.speed, d.attacks, d.special_abilities, d.environment, d.description")
        case .item:
            return ("item_details", "d.price, d.weight, d.slot, d.aura, d.caster_level, d.item_type, d.description")
        case .race:
            return ("race_details", "d.size, d.speed, d.ability_modifiers, d.racial_traits, d.languages, d.description")
        case .trait:
            return ("trait_details", "d.trait_type, d.prerequisites, d.benefit, d.description")
        case .skill:
            return ("rule_details", "d.category, d.body")
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
        case .skill:   return RuleEntry(from: row)
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

    /// Drops and recreates all content and detail tables, leaving the favorites table intact.
    /// Use this instead of deleting the database file when you need a clean content reset.
    func resetContentTables() throws {
        guard isOpen else { throw DatabaseError.notOpen }
        // Drop content and all detail tables (order matters due to FK constraints)
        try exec("DROP TABLE IF EXISTS content_fts")
        try exec("DROP TABLE IF EXISTS spell_details")
        try exec("DROP TABLE IF EXISTS class_details")
        try exec("DROP TABLE IF EXISTS feat_details")
        try exec("DROP TABLE IF EXISTS monster_details")
        try exec("DROP TABLE IF EXISTS item_details")
        try exec("DROP TABLE IF EXISTS race_details")
        try exec("DROP TABLE IF EXISTS trait_details")
        try exec("DROP TABLE IF EXISTS rule_details")
        try exec("DROP TABLE IF EXISTS cross_references")
        try exec("DROP TABLE IF EXISTS books")
        try exec("DROP TABLE IF EXISTS content")
        // Recreate the schema (favorites table is preserved since it was not dropped)
        try createSchema()
    }

    /// Clears the FTS index entirely. Call at the start of a re-seed to prevent duplicate entries.
    func clearFTSIndex() throws {
        guard isOpen else { throw DatabaseError.notOpen }
        try exec("DROP TABLE IF EXISTS content_fts")
        try exec("""
        CREATE VIRTUAL TABLE content_fts USING fts5(
            id UNINDEXED,
            title,
            content_type UNINDEXED,
            summary,
            fts_body,
            content='',
            tokenize='porter unicode61'
        )
        """)
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

    static func writableDatabasePath() throws -> String {
        guard let appSupport = FileManager.default.urls(for: .applicationSupportDirectory, in: .userDomainMask).first else {
            throw DatabaseError.pathUnavailable
        }
        try? FileManager.default.createDirectory(at: appSupport, withIntermediateDirectories: true)
        return appSupport.appendingPathComponent("pf1-content.sqlite").path
    }
}

// MARK: - DatabaseError

enum DatabaseError: LocalizedError {
    case openFailed(String)
    case notOpen
    case queryFailed(String)
    case pathUnavailable

    var errorDescription: String? {
        switch self {
        case .openFailed(let msg): return "Failed to open database: \(msg)"
        case .notOpen: return "Database is not open"
        case .queryFailed(let msg): return "Query failed: \(msg)"
        case .pathUnavailable: return "Application support directory is unavailable"
        }
    }
}
