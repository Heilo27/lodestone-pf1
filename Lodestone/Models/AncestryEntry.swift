import Foundation
import SQLite3

// PF2 uses "Ancestry" instead of "Race"
struct AncestryEntry: ContentEntry {
    let id: UUID
    let title: String
    let contentType: ContentType = .ancestry
    let summary: String
    let isPremium: Bool

    let hp: Int                     // hit points at 1st level
    let size: String                // Small, Medium, Large
    let speed: Int                  // base Speed in feet
    let abilityBoosts: String       // e.g. "Constitution, Wisdom, Free"
    let abilityFlaws: String        // e.g. "Charisma"
    let vision: String              // Darkvision, Low-Light Vision, Normal
    let languages: [String]
    let traits: String              // ancestry traits line
    let ancestralFeatures: [String] // innate abilities
    let description: String
    let source: String

    enum CodingKeys: String, CodingKey {
        case id, title, summary, isPremium, hp, size, speed, abilityBoosts, abilityFlaws
        case vision, languages, traits, ancestralFeatures, description, source
    }

    // MARK: - Database init
    init(from row: SQLiteRow) {
        id = UUID(uuidString: row["id"] ?? "") ?? UUID()
        title = row["title"] ?? ""
        summary = row["summary"] ?? ""
        isPremium = (row["is_premium"] ?? "0") == "1"
        hp = Int(row["hp"] ?? "8") ?? 8
        size = row["size"] ?? ""
        speed = Int(row["speed"] ?? "25") ?? 25
        abilityBoosts = row["ability_boosts"] ?? ""
        abilityFlaws = row["ability_flaws"] ?? ""
        vision = row["vision"] ?? ""
        let langsJSON = row["languages"] ?? "[]"
        languages = (try? JSONDecoder().decode([String].self, from: Data(langsJSON.utf8))) ?? []
        traits = row["traits"] ?? ""
        let featuresJSON = row["ancestral_features"] ?? "[]"
        ancestralFeatures = (try? JSONDecoder().decode([String].self, from: Data(featuresJSON.utf8))) ?? []
        description = row["description"] ?? ""
        source = row["source"] ?? "Player Core"
    }

    // MARK: - Memberwise init
    init(id: UUID, title: String, summary: String, isPremium: Bool,
         hp: Int, size: String, speed: Int, abilityBoosts: String, abilityFlaws: String,
         vision: String, languages: [String], traits: String,
         ancestralFeatures: [String], description: String, source: String) {
        self.id = id
        self.title = title
        self.summary = summary
        self.isPremium = isPremium
        self.hp = hp
        self.size = size
        self.speed = speed
        self.abilityBoosts = abilityBoosts
        self.abilityFlaws = abilityFlaws
        self.vision = vision
        self.languages = languages
        self.traits = traits
        self.ancestralFeatures = ancestralFeatures
        self.description = description
        self.source = source
    }

    static func make(
        _ title: String,
        hp: Int,
        size: String = "Medium",
        speed: Int = 25,
        abilityBoosts: String,
        abilityFlaws: String = "",
        vision: String = "Normal",
        languages: [String],
        traits: String = "",
        features: [String] = [],
        summary: String,
        desc: String,
        source: String = "Player Core",
        isPremium: Bool = false
    ) -> AncestryEntry {
        AncestryEntry(
            id: seededUUID("\(title)\(source)"),
            title: title,
            summary: summary,
            isPremium: isPremium,
            hp: hp,
            size: size,
            speed: speed,
            abilityBoosts: abilityBoosts,
            abilityFlaws: abilityFlaws,
            vision: vision,
            languages: languages,
            traits: traits,
            ancestralFeatures: features,
            description: desc,
            source: source
        )
    }

    static let placeholder = AncestryEntry(
        id: UUID(),
        title: "Dwarf",
        summary: "Dwarves are a short, stocky people who are often stubborn, fierce, and devoted.",
        isPremium: false,
        hp: 10,
        size: "Medium",
        speed: 20,
        abilityBoosts: "Constitution, Wisdom, Free",
        abilityFlaws: "Charisma",
        vision: "Darkvision",
        languages: ["Common", "Dwarven"],
        traits: "Dwarf, Humanoid",
        ancestralFeatures: ["Darkvision", "Clan Dagger"],
        description: "Dwarves have a well-earned reputation as a stoic and stern people, known for their distinctive ancient culture.",
        source: "Player Core"
    )
}
