import Foundation
import SQLite3

struct SpellEntry: ContentEntry {
    let id: UUID
    let title: String
    let contentType: ContentType = .spell
    let summary: String
    let isPremium: Bool

    let school: String
    let levels: String          // e.g. "sorcerer/wizard 3, cleric 4"
    let castingTime: String
    let components: String
    let range: String
    let duration: String
    let savingThrow: String
    let spellResistance: Bool
    let description: String
    let source: String

    enum CodingKeys: String, CodingKey {
        case id, title, summary, isPremium, school, levels, castingTime, components
        case range, duration, savingThrow, spellResistance, description, source
    }

    // MARK: - Database init
    init(from row: SQLiteRow) {
        id = UUID(uuidString: row["id"] ?? "") ?? UUID()
        title = row["title"] ?? ""
        summary = row["summary"] ?? ""
        isPremium = (row["is_premium"] ?? "0") == "1"
        school = row["school"] ?? ""
        levels = row["levels"] ?? ""
        castingTime = row["casting_time"] ?? ""
        components = row["components"] ?? ""
        range = row["range"] ?? ""
        duration = row["duration"] ?? ""
        savingThrow = row["saving_throw"] ?? ""
        spellResistance = (row["spell_resistance"] ?? "0") == "1"
        description = row["description"] ?? ""
        source = row["source"] ?? "Core Rulebook"
    }

    // MARK: - Memberwise init
    init(id: UUID, title: String, summary: String, isPremium: Bool,
         school: String, levels: String, castingTime: String, components: String,
         range: String, duration: String, savingThrow: String, spellResistance: Bool,
         description: String, source: String) {
        self.id = id
        self.title = title
        self.summary = summary
        self.isPremium = isPremium
        self.school = school
        self.levels = levels
        self.castingTime = castingTime
        self.components = components
        self.range = range
        self.duration = duration
        self.savingThrow = savingThrow
        self.spellResistance = spellResistance
        self.description = description
        self.source = source
    }

    static let placeholder = SpellEntry(
        id: UUID(),
        title: "Fireball",
        summary: "A burst of flame detonates with a low roar.",
        isPremium: false,
        school: "Evocation",
        levels: "sorcerer/wizard 3",
        castingTime: "1 standard action",
        components: "V, S, M (a ball of bat guano and sulfur)",
        range: "Long (400 ft. + 40 ft./level)",
        duration: "Instantaneous",
        savingThrow: "Reflex half",
        spellResistance: true,
        description: "A fireball spell generates a searing explosion of flame that detonates with a low roar and deals 1d6 points of fire damage per caster level (maximum 10d6) to every creature within the area.",
        source: "Core Rulebook"
    )
}
