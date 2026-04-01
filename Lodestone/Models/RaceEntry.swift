import Foundation
import SQLite3

struct RaceEntry: ContentEntry {
    let id: UUID
    let title: String
    let contentType: ContentType = .race
    let summary: String
    let isPremium: Bool

    let size: String
    let speed: String
    let abilityModifiers: String
    let racialTraits: [String]
    let languages: [String]
    let description: String
    let source: String

    enum CodingKeys: String, CodingKey {
        case id, title, summary, isPremium, size, speed, abilityModifiers, racialTraits, languages, description, source
    }

    // MARK: - Database init
    init(from row: SQLiteRow) {
        id = UUID(uuidString: row["id"] ?? "") ?? UUID()
        title = row["title"] ?? ""
        summary = row["summary"] ?? ""
        isPremium = (row["is_premium"] ?? "0") == "1"
        size = row["size"] ?? ""
        speed = row["speed"] ?? ""
        abilityModifiers = row["ability_modifiers"] ?? ""
        let traitsJSON = row["racial_traits"] ?? "[]"
        racialTraits = (try? JSONDecoder().decode([String].self, from: Data(traitsJSON.utf8))) ?? []
        let langsJSON = row["languages"] ?? "[]"
        languages = (try? JSONDecoder().decode([String].self, from: Data(langsJSON.utf8))) ?? []
        description = row["description"] ?? ""
        source = row["source"] ?? "Core Rulebook"
    }

    // MARK: - Memberwise init
    init(id: UUID, title: String, summary: String, isPremium: Bool,
         size: String, speed: String, abilityModifiers: String,
         racialTraits: [String], languages: [String], description: String, source: String) {
        self.id = id
        self.title = title
        self.summary = summary
        self.isPremium = isPremium
        self.size = size
        self.speed = speed
        self.abilityModifiers = abilityModifiers
        self.racialTraits = racialTraits
        self.languages = languages
        self.description = description
        self.source = source
    }

    static let placeholder = RaceEntry(
        id: UUID(),
        title: "Elf",
        summary: "Tall, long-lived humanoids known for grace and magic.",
        isPremium: false,
        size: "Medium",
        speed: "30 ft.",
        abilityModifiers: "+2 Dexterity, +2 Intelligence, -2 Constitution",
        racialTraits: ["Elven Immunities", "Elven Magic", "Keen Senses", "Low-Light Vision", "Weapon Familiarity"],
        languages: ["Common", "Elven"],
        description: "The long-lived elves are children of the natural world, similar in many superficial ways to fey creatures.",
        source: "Core Rulebook"
    )
}
