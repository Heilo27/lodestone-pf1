import Foundation
import SQLite3

struct ClassEntry: ContentEntry {
    let id: UUID
    let title: String
    let contentType: ContentType = .class_
    let summary: String
    let isPremium: Bool

    // PF2 class fields differ substantially from PF1
    let keyAbility: String          // e.g. "Strength or Dexterity"
    let hp: Int                     // HP per level
    let perception: String          // Trained, Expert, etc.
    let fortSave: String
    let refSave: String
    let willSave: String
    let skills: String              // trained skills + number of free skills
    let classFeatures: String       // level-by-level feature list (summary)
    let description: String
    let source: String

    enum CodingKeys: String, CodingKey {
        case id, title, summary, isPremium, keyAbility, hp, perception
        case fortSave, refSave, willSave, skills, classFeatures, description, source
    }

    // MARK: - Database init
    init(from row: SQLiteRow) {
        id = UUID(uuidString: row["id"] ?? "") ?? UUID()
        title = row["title"] ?? ""
        summary = row["summary"] ?? ""
        isPremium = (row["is_premium"] ?? "0") == "1"
        keyAbility = row["key_ability"] ?? ""
        hp = Int(row["hp"] ?? "8") ?? 8
        perception = row["perception"] ?? ""
        fortSave = row["fort_save"] ?? ""
        refSave = row["ref_save"] ?? ""
        willSave = row["will_save"] ?? ""
        skills = row["skills"] ?? ""
        classFeatures = row["class_features"] ?? ""
        description = row["description"] ?? ""
        source = row["source"] ?? "Player Core"
    }

    // MARK: - Memberwise init
    init(id: UUID, title: String, summary: String, isPremium: Bool,
         keyAbility: String, hp: Int, perception: String,
         fortSave: String, refSave: String, willSave: String,
         skills: String, classFeatures: String, description: String, source: String) {
        self.id = id
        self.title = title
        self.summary = summary
        self.isPremium = isPremium
        self.keyAbility = keyAbility
        self.hp = hp
        self.perception = perception
        self.fortSave = fortSave
        self.refSave = refSave
        self.willSave = willSave
        self.skills = skills
        self.classFeatures = classFeatures
        self.description = description
        self.source = source
    }

    static func make(
        _ title: String,
        keyAbility: String,
        hp: Int,
        perception: String = "Trained",
        fort: String,
        ref: String,
        will: String,
        skills: String,
        features: String = "",
        summary: String,
        desc: String,
        source: String = "Player Core",
        isPremium: Bool = false
    ) -> ClassEntry {
        ClassEntry(
            id: seededUUID("\(title)\(source)"),
            title: title,
            summary: summary,
            isPremium: isPremium,
            keyAbility: keyAbility,
            hp: hp,
            perception: perception,
            fortSave: fort,
            refSave: ref,
            willSave: will,
            skills: skills,
            classFeatures: features,
            description: desc,
            source: source
        )
    }

    static let placeholder = ClassEntry(
        id: UUID(),
        title: "Fighter",
        summary: "Fighters are unparalleled in their training with weapons and armor.",
        isPremium: false,
        keyAbility: "Strength or Dexterity",
        hp: 10,
        perception: "Expert",
        fortSave: "Expert",
        refSave: "Expert",
        willSave: "Trained",
        skills: "Acrobatics or Athletics, plus 3 + Intelligence modifier additional skills",
        classFeatures: "Attack of Opportunity (1), Shield Block (1), Bravery (3), Fighter Weapon Mastery (5), Battlefield Surveyor (7), Weapon Specialization (7), Combat Flexibility (9), Juggernaut (11)",
        description: "Fighting for honor, fame, or simple hard coin, fighters are unparalleled in their training with weapons and armor.",
        source: "Player Core"
    )
}
