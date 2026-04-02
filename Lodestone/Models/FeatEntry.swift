import Foundation
import SQLite3

struct FeatEntry: ContentEntry {
    let id: UUID
    let title: String
    let contentType: ContentType = .feat
    let summary: String
    let isPremium: Bool

    let level: Int              // feat level (1–20)
    let featType: String        // Ancestry, Class, General, Skill, Archetype
    let traits: String          // comma-separated trait tags
    let prerequisites: String
    let requirements: String    // situational requirements (held weapon, etc.)
    let trigger: String         // for reaction feats
    let benefit: String         // the full effect text
    let source: String

    enum CodingKeys: String, CodingKey {
        case id, title, summary, isPremium, level, featType, traits
        case prerequisites, requirements, trigger, benefit, source
    }

    // MARK: - Database init
    init(from row: SQLiteRow) {
        id = UUID(uuidString: row["id"] ?? "") ?? UUID()
        title = row["title"] ?? ""
        summary = row["summary"] ?? ""
        isPremium = (row["is_premium"] ?? "0") == "1"
        level = Int(row["level"] ?? "1") ?? 1
        featType = row["feat_type"] ?? ""
        traits = row["traits"] ?? ""
        prerequisites = row["prerequisites"] ?? ""
        requirements = row["requirements"] ?? ""
        trigger = row["trigger"] ?? ""
        benefit = row["benefit"] ?? ""
        source = row["source"] ?? "Player Core Handbook"
    }

    // MARK: - Memberwise init
    init(id: UUID, title: String, summary: String, isPremium: Bool,
         level: Int, featType: String, traits: String,
         prerequisites: String, requirements: String, trigger: String,
         benefit: String, source: String) {
        self.id = id
        self.title = title
        self.summary = summary
        self.isPremium = isPremium
        self.level = level
        self.featType = featType
        self.traits = traits
        self.prerequisites = prerequisites
        self.requirements = requirements
        self.trigger = trigger
        self.benefit = benefit
        self.source = source
    }

    static func make(
        _ title: String,
        level: Int,
        featType: String,
        traits: String = "",
        prerequisites: String = "",
        requirements: String = "",
        trigger: String = "",
        summary: String,
        benefit: String,
        source: String = "Player Core Handbook",
        isPremium: Bool = false
    ) -> FeatEntry {
        FeatEntry(
            id: seededUUID("\(title)\(source)"),
            title: title,
            summary: summary,
            isPremium: isPremium,
            level: level,
            featType: featType,
            traits: traits,
            prerequisites: prerequisites,
            requirements: requirements,
            trigger: trigger,
            benefit: benefit,
            source: source
        )
    }

    static let placeholder = FeatEntry(
        id: UUID(),
        title: "Assurance",
        summary: "You can forgo rolling a skill check to instead receive a result of 10 + your proficiency bonus.",
        isPremium: false,
        level: 1,
        featType: "General",
        traits: "General, Skill",
        prerequisites: "Trained in at least one skill",
        requirements: "",
        trigger: "",
        benefit: "Even in the worst circumstances, you can perform basic tasks. Choose a skill you're trained in. You can forgo rolling a skill check for that skill to instead receive a result of 10 + your proficiency bonus (do not apply any other bonuses, penalties, or modifiers).",
        source: "Player Core Handbook"
    )
}
