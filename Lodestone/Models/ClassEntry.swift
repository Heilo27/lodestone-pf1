import Foundation
import SQLite3

struct ClassEntry: ContentEntry {
    let id: UUID
    let title: String
    let contentType: ContentType = .class_
    let summary: String
    let isPremium: Bool

    let hitDie: String
    let skillRanks: Int
    let baseAttackBonus: String
    let fortSave: String
    let refSave: String
    let willSave: String
    let classSkills: [String]
    let description: String
    let source: String

    // MARK: - Database init
    init(from row: SQLiteRow) {
        id = UUID(uuidString: row["id"] ?? "") ?? UUID()
        title = row["title"] ?? ""
        summary = row["summary"] ?? ""
        isPremium = (row["is_premium"] ?? "0") == "1"
        hitDie = row["hit_die"] ?? ""
        skillRanks = Int(row["skill_ranks"] ?? "2") ?? 2
        baseAttackBonus = row["base_attack_bonus"] ?? ""
        fortSave = row["fort_save"] ?? ""
        refSave = row["ref_save"] ?? ""
        willSave = row["will_save"] ?? ""
        let skillsJSON = row["class_skills"] ?? "[]"
        classSkills = (try? JSONDecoder().decode([String].self, from: Data(skillsJSON.utf8))) ?? []
        description = row["description"] ?? ""
        source = row["source"] ?? "Core Rulebook"
    }

    // MARK: - Memberwise init
    init(id: UUID, title: String, summary: String, isPremium: Bool,
         hitDie: String, skillRanks: Int, baseAttackBonus: String,
         fortSave: String, refSave: String, willSave: String,
         classSkills: [String], description: String, source: String) {
        self.id = id
        self.title = title
        self.summary = summary
        self.isPremium = isPremium
        self.hitDie = hitDie
        self.skillRanks = skillRanks
        self.baseAttackBonus = baseAttackBonus
        self.fortSave = fortSave
        self.refSave = refSave
        self.willSave = willSave
        self.classSkills = classSkills
        self.description = description
        self.source = source
    }

    static let placeholder = ClassEntry(
        id: UUID(),
        title: "Fighter",
        summary: "Some take up arms for glory, wealth, or revenge.",
        isPremium: false,
        hitDie: "d10",
        skillRanks: 2,
        baseAttackBonus: "Full",
        fortSave: "Good",
        refSave: "Poor",
        willSave: "Poor",
        classSkills: ["Climb", "Craft", "Handle Animal", "Intimidate", "Knowledge (dungeoneering)", "Knowledge (engineering)", "Profession", "Ride", "Survival", "Swim"],
        description: "Some take up arms for glory, wealth, or revenge. Others do battle to prove themselves, to protect others, or because they know nothing else.",
        source: "Core Rulebook"
    )
}
