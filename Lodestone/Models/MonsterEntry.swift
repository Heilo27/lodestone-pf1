import Foundation
import SQLite3

struct MonsterEntry: ContentEntry {
    let id: UUID
    let title: String
    let contentType: ContentType = .monster
    let summary: String
    let isPremium: Bool

    // PF2 uses level (-1 to 25+) instead of CR
    let level: Int
    let creatureType: String        // Humanoid, Beast, Undead, etc.
    let size: String
    let traits: String              // comma-separated (creature type tags + rarity)
    let hitPoints: String
    let armorClass: Int
    let fortSave: Int
    let refSave: Int
    let willSave: Int
    let speed: String
    let attacks: String
    let specialAbilities: String
    let description: String
    let source: String

    enum CodingKeys: String, CodingKey {
        case id, title, summary, isPremium, level, creatureType, size, traits
        case hitPoints, armorClass, fortSave, refSave, willSave
        case speed, attacks, specialAbilities, description, source
    }

    // MARK: - Database init
    init(from row: SQLiteRow) {
        id = UUID(uuidString: row["id"] ?? "") ?? UUID()
        title = row["title"] ?? ""
        summary = row["summary"] ?? ""
        isPremium = (row["is_premium"] ?? "0") == "1"
        level = Int(row["level"] ?? "1") ?? 1
        creatureType = row["creature_type"] ?? ""
        size = row["size"] ?? ""
        traits = row["traits"] ?? ""
        hitPoints = row["hit_points"] ?? ""
        armorClass = Int(row["armor_class"] ?? "10") ?? 10
        fortSave = Int(row["fort_save"] ?? "0") ?? 0
        refSave = Int(row["ref_save"] ?? "0") ?? 0
        willSave = Int(row["will_save"] ?? "0") ?? 0
        speed = row["speed"] ?? ""
        attacks = row["attacks"] ?? ""
        specialAbilities = row["special_abilities"] ?? ""
        description = row["description"] ?? ""
        source = row["source"] ?? "Monster Core"
    }

    // MARK: - Memberwise init
    init(id: UUID, title: String, summary: String, isPremium: Bool,
         level: Int, creatureType: String, size: String, traits: String,
         hitPoints: String, armorClass: Int, fortSave: Int, refSave: Int, willSave: Int,
         speed: String, attacks: String, specialAbilities: String,
         description: String, source: String) {
        self.id = id
        self.title = title
        self.summary = summary
        self.isPremium = isPremium
        self.level = level
        self.creatureType = creatureType
        self.size = size
        self.traits = traits
        self.hitPoints = hitPoints
        self.armorClass = armorClass
        self.fortSave = fortSave
        self.refSave = refSave
        self.willSave = willSave
        self.speed = speed
        self.attacks = attacks
        self.specialAbilities = specialAbilities
        self.description = description
        self.source = source
    }

    static func make(
        _ title: String,
        level: Int,
        creatureType: String,
        size: String = "Medium",
        traits: String = "",
        hp: String,
        ac: Int,
        fort: Int,
        ref: Int,
        will: Int,
        speed: String = "25 feet",
        attacks: String = "",
        specialAbilities: String = "",
        summary: String,
        desc: String,
        source: String = "Monster Core",
        isPremium: Bool = false
    ) -> MonsterEntry {
        MonsterEntry(
            id: seededUUID("\(title)\(source)"),
            title: title,
            summary: summary,
            isPremium: isPremium,
            level: level,
            creatureType: creatureType,
            size: size,
            traits: traits,
            hitPoints: hp,
            armorClass: ac,
            fortSave: fort,
            refSave: ref,
            willSave: will,
            speed: speed,
            attacks: attacks,
            specialAbilities: specialAbilities,
            description: desc,
            source: source
        )
    }

    static let placeholder = MonsterEntry(
        id: UUID(),
        title: "Goblin Warrior",
        summary: "A small humanoid creature infamous for its love of fire and mayhem.",
        isPremium: false,
        level: -1,
        creatureType: "Humanoid",
        size: "Small",
        traits: "Goblin, Humanoid",
        hitPoints: "6",
        armorClass: 16,
        fortSave: 5,
        refSave: 5,
        willSave: 3,
        speed: "25 feet",
        attacks: "Jaws +7 (1d6 piercing), Dogslicer +7 (1d6 slashing, Agile, Backstabber)",
        specialAbilities: "Darkvision",
        description: "Goblins who have some experience raiding and fighting are quick to taunt and distract their foes.",
        source: "Monster Core"
    )
}
