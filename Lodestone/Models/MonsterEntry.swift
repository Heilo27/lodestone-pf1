import Foundation
import SQLite3

struct MonsterEntry: ContentEntry {
    let id: UUID
    let title: String
    let contentType: ContentType = .monster
    let summary: String
    let isPremium: Bool

    let challengeRating: String
    let type: String
    let size: String
    let alignment: String
    let hitPoints: String
    let armorClass: Int
    let speed: String
    let attacks: String
    let specialAbilities: String
    let environment: String
    let description: String
    let source: String

    enum CodingKeys: String, CodingKey {
        case id, title, summary, isPremium, challengeRating, type, size, alignment
        case hitPoints, armorClass, speed, attacks, specialAbilities, environment, description, source
    }

    // MARK: - Database init
    init(from row: SQLiteRow) {
        id = UUID(uuidString: row["id"] ?? "") ?? UUID()
        title = row["title"] ?? ""
        summary = row["summary"] ?? ""
        isPremium = (row["is_premium"] ?? "0") == "1"
        challengeRating = row["challenge_rating"] ?? ""
        type = row["monster_type"] ?? ""
        size = row["size"] ?? ""
        alignment = row["alignment"] ?? ""
        hitPoints = row["hit_points"] ?? ""
        armorClass = Int(row["armor_class"] ?? "10") ?? 10
        speed = row["speed"] ?? ""
        attacks = row["attacks"] ?? ""
        specialAbilities = row["special_abilities"] ?? ""
        environment = row["environment"] ?? ""
        description = row["description"] ?? ""
        source = row["source"] ?? "Bestiary"
    }

    // MARK: - Memberwise init
    init(id: UUID, title: String, summary: String, isPremium: Bool,
         challengeRating: String, type: String, size: String, alignment: String,
         hitPoints: String, armorClass: Int, speed: String, attacks: String,
         specialAbilities: String, environment: String, description: String, source: String) {
        self.id = id
        self.title = title
        self.summary = summary
        self.isPremium = isPremium
        self.challengeRating = challengeRating
        self.type = type
        self.size = size
        self.alignment = alignment
        self.hitPoints = hitPoints
        self.armorClass = armorClass
        self.speed = speed
        self.attacks = attacks
        self.specialAbilities = specialAbilities
        self.environment = environment
        self.description = description
        self.source = source
    }

    // MARK: - Factory

    static func make(
        _ title: String,
        cr: String,
        type: String,
        size: String,
        alignment: String,
        hp: String,
        ac: Int,
        speed: String,
        attacks: String,
        specialAbilities: String,
        environment: String,
        summary: String,
        desc: String,
        source: String = "Bestiary",
        isPremium: Bool = false
    ) -> MonsterEntry {
        MonsterEntry(
            id: UUID(),
            title: title,
            summary: summary,
            isPremium: isPremium,
            challengeRating: cr,
            type: type,
            size: size,
            alignment: alignment,
            hitPoints: hp,
            armorClass: ac,
            speed: speed,
            attacks: attacks,
            specialAbilities: specialAbilities,
            environment: environment,
            description: desc,
            source: source
        )
    }

    static let placeholder = MonsterEntry(
        id: UUID(),
        title: "Goblin",
        summary: "A small, green-skinned humanoid with sharp teeth and a mean disposition.",
        isPremium: false,
        challengeRating: "1/3",
        type: "Humanoid (goblinoid)",
        size: "Small",
        alignment: "NE",
        hitPoints: "6 (1d8+1)",
        armorClass: 16,
        speed: "30 ft.",
        attacks: "Bite +2 (1d4), or short sword +2 (1d4)",
        specialAbilities: "Darkvision 60 ft.",
        environment: "Temperate forest and plains",
        description: "Goblins are a race of childishly cruel humanoids who are too cowardly to pose a real threat by themselves.",
        source: "Bestiary"
    )
}
