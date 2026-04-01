import Foundation
import SQLite3

struct FeatEntry: ContentEntry {
    let id: UUID
    let title: String
    let contentType: ContentType = .feat
    let summary: String
    let isPremium: Bool

    let prerequisites: String
    let benefit: String
    let normal: String
    let special: String
    let featType: String
    let source: String

    enum CodingKeys: String, CodingKey {
        case id, title, summary, isPremium, prerequisites, benefit, normal, special, featType, source
    }

    // MARK: - Database init
    init(from row: SQLiteRow) {
        id = UUID(uuidString: row["id"] ?? "") ?? UUID()
        title = row["title"] ?? ""
        summary = row["summary"] ?? ""
        isPremium = (row["is_premium"] ?? "0") == "1"
        prerequisites = row["prerequisites"] ?? ""
        benefit = row["benefit"] ?? ""
        normal = row["normal"] ?? ""
        special = row["special"] ?? ""
        featType = row["feat_type"] ?? ""
        source = row["source"] ?? "Core Rulebook"
    }

    // MARK: - Memberwise init
    init(id: UUID, title: String, summary: String, isPremium: Bool,
         prerequisites: String, benefit: String, normal: String,
         special: String, featType: String, source: String) {
        self.id = id
        self.title = title
        self.summary = summary
        self.isPremium = isPremium
        self.prerequisites = prerequisites
        self.benefit = benefit
        self.normal = normal
        self.special = special
        self.featType = featType
        self.source = source
    }

    static let placeholder = FeatEntry(
        id: UUID(),
        title: "Power Attack",
        summary: "You can make exceptionally deadly melee attacks by sacrificing accuracy.",
        isPremium: false,
        prerequisites: "Str 13, base attack bonus +1",
        benefit: "You can choose to take a -1 penalty on all melee attack rolls and combat maneuver checks to gain a +2 bonus on all melee damage rolls. This bonus to damage is increased by half (+50%) if you are making an attack with a two-handed weapon, a one handed weapon using two hands, or a primary natural weapon that adds 1.5x your Strength modifier on damage rolls. This bonus to damage is halved (-50%) if you are making an attack with an off-hand weapon or secondary natural weapon.",
        normal: "You gain no bonus on damage rolls for making such a sacrifice.",
        special: "If you have the Cleave feat, the penalty also applies to Cleave attack rolls.",
        featType: "Combat",
        source: "Core Rulebook"
    )
}
