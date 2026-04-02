import Foundation
import SQLite3

struct BackgroundEntry: ContentEntry {
    let id: UUID
    let title: String
    let contentType: ContentType = .background
    let summary: String
    let isPremium: Bool

    let abilityBoosts: String   // e.g. "Constitution, Wisdom, or Free"
    let trainedSkills: String   // e.g. "Crafting and Lore (Brewing)"
    let skillFeat: String       // granted skill feat name
    let description: String
    let source: String

    enum CodingKeys: String, CodingKey {
        case id, title, summary, isPremium, abilityBoosts, trainedSkills, skillFeat, description, source
    }

    init(from row: SQLiteRow) {
        id = UUID(uuidString: row["id"] ?? "") ?? UUID()
        title = row["title"] ?? ""
        summary = row["summary"] ?? ""
        isPremium = (row["is_premium"] ?? "0") == "1"
        abilityBoosts = row["ability_boosts"] ?? ""
        trainedSkills = row["trained_skills"] ?? ""
        skillFeat = row["skill_feat"] ?? ""
        description = row["description"] ?? ""
        source = row["source"] ?? "Player Core Handbook"
    }

    init(id: UUID, title: String, summary: String, isPremium: Bool,
         abilityBoosts: String, trainedSkills: String, skillFeat: String,
         description: String, source: String) {
        self.id = id
        self.title = title
        self.summary = summary
        self.isPremium = isPremium
        self.abilityBoosts = abilityBoosts
        self.trainedSkills = trainedSkills
        self.skillFeat = skillFeat
        self.description = description
        self.source = source
    }

    static func make(
        _ title: String,
        abilityBoosts: String,
        trainedSkills: String,
        skillFeat: String,
        summary: String,
        desc: String,
        source: String = "Player Core Handbook",
        isPremium: Bool = false
    ) -> BackgroundEntry {
        BackgroundEntry(
            id: seededUUID("\(title)\(source)"),
            title: title,
            summary: summary,
            isPremium: isPremium,
            abilityBoosts: abilityBoosts,
            trainedSkills: trainedSkills,
            skillFeat: skillFeat,
            description: desc,
            source: source
        )
    }

    static let placeholder = BackgroundEntry(
        id: UUID(),
        title: "Acolyte",
        summary: "You spent your early years in a religious institution.",
        isPremium: false,
        abilityBoosts: "Intelligence, Wisdom, or Free",
        trainedSkills: "Religion and Lore (Scribing)",
        skillFeat: "Student of the Canon",
        description: "You spent your early years in a religious institution, and are thoroughly familiar with theology and holy rites.",
        source: "Player Core Handbook"
    )
}
