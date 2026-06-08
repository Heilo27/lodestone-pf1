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
    let fortSave: Int
    let refSave: Int
    let willSave: Int
    let initiative: Int
    let str: Int
    let dex: Int
    let con: Int
    let int_: Int
    let wis: Int
    let cha: Int
    let senses: String
    let speed: String
    let attacks: String
    let specialAbilities: String
    let immunities: String
    let resistances: String
    let skills: String
    let environment: String
    let description: String
    let source: String
    let page: Int

    enum CodingKeys: String, CodingKey {
        case id, title, summary, isPremium, challengeRating, type, size, alignment
        case hitPoints, armorClass, fortSave, refSave, willSave, initiative
        case str, dex, con, int_, wis, cha, senses
        case speed, attacks, specialAbilities, immunities, resistances, skills
        case environment, description, source, page
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
        fortSave = Int(row["fort_save"] ?? "0") ?? 0
        refSave = Int(row["ref_save"] ?? "0") ?? 0
        willSave = Int(row["will_save"] ?? "0") ?? 0
        initiative = Int(row["initiative"] ?? "0") ?? 0
        str = Int(row["stat_str"] ?? "0") ?? 0
        dex = Int(row["stat_dex"] ?? "0") ?? 0
        con = Int(row["stat_con"] ?? "0") ?? 0
        int_ = Int(row["stat_int"] ?? "0") ?? 0
        wis = Int(row["stat_wis"] ?? "0") ?? 0
        cha = Int(row["stat_cha"] ?? "0") ?? 0
        senses = row["senses"] ?? ""
        speed = row["speed"] ?? ""
        attacks = row["attacks"] ?? ""
        specialAbilities = row["special_abilities"] ?? ""
        immunities = row["immunities"] ?? ""
        resistances = row["resistances"] ?? ""
        skills = row["skills"] ?? ""
        environment = row["environment"] ?? ""
        description = row["description"] ?? ""
        source = row["source"] ?? "Bestiary"
        page = Int(row["page"] ?? "0") ?? 0
    }

    // MARK: - Memberwise init
    init(id: UUID, title: String, summary: String, isPremium: Bool,
         challengeRating: String, type: String, size: String, alignment: String,
         hitPoints: String, armorClass: Int,
         fortSave: Int, refSave: Int, willSave: Int, initiative: Int,
         str: Int, dex: Int, con: Int, int_: Int, wis: Int, cha: Int,
         senses: String, speed: String, attacks: String,
         specialAbilities: String, immunities: String = "", resistances: String = "",
         skills: String = "", environment: String, description: String, source: String, page: Int = 0) {
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
        self.fortSave = fortSave
        self.refSave = refSave
        self.willSave = willSave
        self.initiative = initiative
        self.str = str
        self.dex = dex
        self.con = con
        self.int_ = int_
        self.wis = wis
        self.cha = cha
        self.senses = senses
        self.speed = speed
        self.attacks = attacks
        self.specialAbilities = specialAbilities
        self.immunities = immunities
        self.resistances = resistances
        self.skills = skills
        self.environment = environment
        self.description = description
        self.source = source
        self.page = page
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
        fort: Int = 0,
        ref: Int = 0,
        will: Int = 0,
        init_: Int = 0,
        str: Int = 10,
        dex: Int = 10,
        con: Int = 10,
        int_: Int = 10,
        wis: Int = 10,
        cha: Int = 10,
        senses: String = "",
        speed: String,
        attacks: String,
        specialAbilities: String,
        immunities: String = "",
        resistances: String = "",
        skills: String = "",
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
            fortSave: fort,
            refSave: ref,
            willSave: will,
            initiative: init_,
            str: str,
            dex: dex,
            con: con,
            int_: int_,
            wis: wis,
            cha: cha,
            senses: senses,
            speed: speed,
            attacks: attacks,
            specialAbilities: specialAbilities,
            immunities: immunities,
            resistances: resistances,
            skills: skills,
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
        fortSave: 2,
        refSave: 3,
        willSave: 0,
        initiative: 3,
        str: 8,
        dex: 17,
        con: 11,
        int_: 10,
        wis: 8,
        cha: 8,
        senses: "Darkvision 60 ft.",
        speed: "30 ft.",
        attacks: "Bite +2 (1d4), or short sword +2 (1d4)",
        specialAbilities: "None",
        environment: "Temperate forest and plains",
        description: "Goblins are a race of childishly cruel humanoids who are too cowardly to pose a real threat by themselves.",
        source: "Bestiary"
    )
}
