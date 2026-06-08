import Foundation
import CryptoKit

/// Generates a deterministic UUID from a seed string using SHA-256.
func seededUUID(_ seed: String) -> UUID {
    let hash = SHA256.hash(data: Data(seed.utf8))
    var bytes = Array(hash.prefix(16))
    bytes[6] = (bytes[6] & 0x0F) | 0x40
    bytes[8] = (bytes[8] & 0x3F) | 0x80
    return UUID(uuid: (
        bytes[0], bytes[1], bytes[2], bytes[3],
        bytes[4], bytes[5], bytes[6], bytes[7],
        bytes[8], bytes[9], bytes[10], bytes[11],
        bytes[12], bytes[13], bytes[14], bytes[15]
    ))
}

// MARK: - JSON type alias

private typealias J = [String: Any]

private extension Dictionary where Key == String, Value == Any {
    func str(_ key: String, default d: String = "") -> String { self[key] as? String ?? d }
    func int(_ key: String, default d: Int = 0) -> Int { self[key] as? Int ?? d }
    func bool(_ key: String, default d: Bool = false) -> Bool { self[key] as? Bool ?? d }
    func strArray(_ key: String) -> [String] { self[key] as? [String] ?? [] }
}

// MARK: - Bundle resource loader

private func loadJSON(_ resource: String) throws -> [[String: Any]] {
    guard let url = Bundle.main.url(forResource: resource, withExtension: "json", subdirectory: "SeedData") else {
        throw SeedError.missingResource(resource)
    }
    let data = try Data(contentsOf: url)
    guard let array = try JSONSerialization.jsonObject(with: data) as? [[String: Any]] else {
        throw SeedError.malformedJSON(resource)
    }
    return array
}

enum SeedError: Error {
    case missingResource(String)
    case malformedJSON(String)
}

// MARK: - Entry builders

private func makeSpell(_ d: J) -> SpellEntry {
    let title  = d.str("title")
    let source = d.str("source", default: "Core Rulebook")
    return SpellEntry(
        id: seededUUID("spell\(title)\(source)"),
        title: title,
        summary: d.str("summary"),
        isPremium: d.bool("isPremium"),
        school: d.str("school"),
        levels: d.str("levels"),
        castingTime: d.str("castingTime"),
        components: d.str("components"),
        range: d.str("range"),
        area: d.str("area"),
        targets: d.str("targets"),
        duration: d.str("duration"),
        savingThrow: d.str("savingThrow"),
        spellResistance: d.bool("sr"),
        description: d.str("desc"),
        source: source
    )
}

private func makeFeat(_ d: J) -> FeatEntry {
    let title  = d.str("title")
    let source = d.str("source", default: "Core Rulebook")
    return FeatEntry(
        id: seededUUID("feat\(title)\(source)"),
        title: title,
        summary: d.str("summary"),
        isPremium: d.bool("isPremium"),
        prerequisites: d.str("prerequisites"),
        benefit: d.str("benefit"),
        normal: d.str("normal"),
        special: d.str("special"),
        featType: d.str("featType"),
        source: source
    )
}

private func makeMonster(_ d: J) -> MonsterEntry {
    let title  = d.str("title")
    let source = d.str("source", default: "Bestiary")
    return MonsterEntry(
        id: seededUUID("monster\(title)\(source)"),
        title: title,
        summary: d.str("summary"),
        isPremium: d.bool("isPremium"),
        challengeRating: d.str("cr"),
        type: d.str("type"),
        size: d.str("size", default: "Medium"),
        alignment: d.str("alignment", default: "N"),
        hitPoints: d.str("hp"),
        armorClass: d.int("ac", default: 10),
        fortSave: d.int("fort"),
        refSave: d.int("ref"),
        willSave: d.int("will"),
        initiative: d.int("init_"),
        str: d.int("str", default: 10),
        dex: d.int("dex", default: 10),
        con: d.int("con", default: 10),
        int_: d.int("int_", default: 10),
        wis: d.int("wis", default: 10),
        cha: d.int("cha", default: 10),
        senses: d.str("senses"),
        speed: d.str("speed"),
        attacks: d.str("attacks"),
        specialAbilities: d.str("specialAbilities"),
        environment: d.str("environment"),
        description: d.str("desc"),
        source: source
    )
}

private func makeItem(_ d: J) -> ItemEntry {
    let title  = d.str("title")
    let source = d.str("source", default: "Core Rulebook")
    return ItemEntry(
        id: seededUUID("item\(title)\(source)"),
        title: title,
        summary: d.str("summary"),
        isPremium: d.bool("isPremium"),
        price: d.str("price"),
        weight: d.str("weight"),
        slot: d.str("slot"),
        aura: d.str("aura"),
        casterLevel: d.int("casterLevel"),
        itemType: d.str("itemType"),
        description: d.str("desc"),
        source: source
    )
}

private func makeRace(_ d: J) -> RaceEntry {
    let title  = d.str("title")
    let source = d.str("source", default: "Core Rulebook")
    return RaceEntry(
        id: seededUUID("race\(title)\(source)"),
        title: title,
        summary: d.str("summary"),
        isPremium: d.bool("isPremium"),
        size: d.str("size", default: "Medium"),
        speed: d.str("speed", default: "30 ft."),
        abilityModifiers: d.str("abilityModifiers"),
        racialTraits: d.strArray("racialTraits"),
        languages: d.strArray("languages"),
        description: d.str("desc"),
        source: source
    )
}

private func makeClass(_ d: J) -> ClassEntry {
    let title  = d.str("title")
    let source = d.str("source", default: "Core Rulebook")
    return ClassEntry(
        id: seededUUID("class\(title)\(source)"),
        title: title,
        summary: d.str("summary"),
        isPremium: d.bool("isPremium"),
        hitDie: d.str("hitDie"),
        skillRanks: d.int("skillRanks", default: 2),
        baseAttackBonus: d.str("bab"),
        fortSave: d.str("fort"),
        refSave: d.str("ref"),
        willSave: d.str("will"),
        classSkills: d.strArray("classSkills"),
        description: d.str("desc"),
        source: source
    )
}

private func makeTrait(_ d: J) -> TraitEntry {
    let title  = d.str("title")
    let source = d.str("source", default: "Core Rulebook")
    return TraitEntry(
        id: seededUUID("trait\(title)\(source)"),
        title: title,
        summary: d.str("summary"),
        isPremium: d.bool("isPremium"),
        traitType: d.str("traitType"),
        prerequisites: d.str("prerequisites"),
        benefit: d.str("benefit"),
        description: d.str("desc"),
        source: source
    )
}

private func makeRule(_ d: J) -> RuleEntry {
    let title  = d.str("title")
    let source = d.str("source", default: "Core Rulebook")
    return RuleEntry(
        id: seededUUID("rule\(title)\(source)"),
        title: title,
        summary: d.str("summary"),
        isPremium: d.bool("isPremium"),
        category: d.str("category"),
        body: d.str("body"),
        source: source
    )
}

// MARK: - SeedDataBuilder

/// Orchestrates seeding of all PF1 OGL content into the database.
/// Content versioning: bump `currentSeedVersion` when content is updated.
actor SeedDataBuilder {

    // v9: Monster re-scrape with fixed stat block parser — 2,708 monsters.
    // v10: Core race descriptions updated (Dwarf/Elf/Gnome/Half-Elf/Half-Orc/Halfling/Human).
    // v11: Items — trailing semicolons stripped from price/slot/aura; variant prices fixed (206 items).
    // v12: Spells — full descriptions (no 1,500-char truncation); 2,336 spells (+185).
    //       Feats — actual page names used; 2,927 feats (+928).
    // v13: Monsters — Fort/Ref/Will saves, initiative, ability scores, Senses added.
    //      Spells — Area and Targets fields added; re-scraped; 2,618 spells.
    //      Monsters re-scraped; 2,775 monsters.
    // v14: Supplemental seed files wired into seed().
    // v15: Force full DB wipe to fix schema truncation from v13→v14.
    // v16: Seed data moved from Swift source literals to bundled JSON resources —
    //      eliminates 105K+ lines of Swift and compiler type-checker bottleneck.
    static let currentSeedVersion = 17

    let db: DatabaseService

    init(db: DatabaseService) {
        self.db = db
    }

    func seed() async throws {
        try await db.beginTransaction()
        do {
            // Clear all content tables before re-seeding to prevent duplicate entries
            try await db.resetContentTables()
            try await db.clearFTSIndex()

            // Core content (free tier)
            try await seedFile("spells_core")   { try await db.insertSpell(makeSpell($0)) }
            try await seedFile("feats_core")    { try await db.insertFeat(makeFeat($0)) }
            try await seedFile("classes_core")  { try await db.insertClass(makeClass($0)) }
            try await seedFile("races_core")    { try await db.insertRace(makeRace($0)) }
            try await seedFile("traits_core")   { try await db.insertTrait(makeTrait($0)) }
            try await seedFile("rules_core")    { try await db.insertRule(makeRule($0)) }
            try await seedFile("items_core")    { try await db.insertItem(makeItem($0)) }

            // Premium content
            try await seedFile("spells_premium") { try await db.insertSpell(makeSpell($0)) }
            try await seedFile("feats_premium")  { try await db.insertFeat(makeFeat($0)) }
            try await seedFile("monsters_core")  { try await db.insertMonster(makeMonster($0)) }

            try await db.commitTransaction()
        } catch {
            await db.rollbackTransaction()
            throw error
        }

        // Cross-refs run outside the content transaction — failure is non-fatal
        do {
            let xrefBuilder = CrossReferenceBuilder(db: db)
            try await xrefBuilder.buildAll()
        } catch {
            print("[SeedDataBuilder] Cross-reference build failed (non-fatal): \(error)")
        }
    }

    // MARK: - Private helpers

    private func seedFile(_ resource: String, insert: (J) async throws -> Void) async throws {
        let entries = try loadJSON(resource)
        for entry in entries {
            try await insert(entry)
        }
    }
}
