import Foundation
import SQLite3

struct SpellEntry: ContentEntry {
    let id: UUID
    let title: String
    let contentType: ContentType = .spell
    let summary: String
    let isPremium: Bool

    let rank: Int               // 1–10 (cantrips are rank 1, cast as highest rank)
    let traditions: String      // e.g. "arcane, divine, occult"
    let actions: String         // e.g. "2 actions", "reaction", "1 to 3 actions"
    let traits: String          // e.g. "Attack, Fire, Evocation"
    let range: String
    let area: String
    let targets: String
    let duration: String
    let savingThrow: String
    let description: String
    let heightened: String      // heightened effect text
    let source: String

    enum CodingKeys: String, CodingKey {
        case id, title, summary, isPremium, rank, traditions, actions, traits
        case range, area, targets, duration, savingThrow, description, heightened, source
    }

    // MARK: - Database init
    init(from row: SQLiteRow) {
        id = UUID(uuidString: row["id"] ?? "") ?? UUID()
        title = row["title"] ?? ""
        summary = row["summary"] ?? ""
        isPremium = (row["is_premium"] ?? "0") == "1"
        rank = Int(row["rank"] ?? "1") ?? 1
        traditions = row["traditions"] ?? ""
        actions = row["actions"] ?? ""
        traits = row["traits"] ?? ""
        range = row["range"] ?? ""
        area = row["area"] ?? ""
        targets = row["targets"] ?? ""
        duration = row["duration"] ?? ""
        savingThrow = row["saving_throw"] ?? ""
        description = row["description"] ?? ""
        heightened = row["heightened"] ?? ""
        source = row["source"] ?? "Player Core"
    }

    // MARK: - Memberwise init
    init(id: UUID, title: String, summary: String, isPremium: Bool,
         rank: Int, traditions: String, actions: String, traits: String,
         range: String, area: String, targets: String, duration: String,
         savingThrow: String, description: String, heightened: String, source: String) {
        self.id = id
        self.title = title
        self.summary = summary
        self.isPremium = isPremium
        self.rank = rank
        self.traditions = traditions
        self.actions = actions
        self.traits = traits
        self.range = range
        self.area = area
        self.targets = targets
        self.duration = duration
        self.savingThrow = savingThrow
        self.description = description
        self.heightened = heightened
        self.source = source
    }

    static func make(
        _ title: String,
        rank: Int,
        traditions: String,
        actions: String,
        traits: String = "",
        range: String = "",
        area: String = "",
        targets: String = "",
        duration: String = "",
        savingThrow: String = "",
        summary: String,
        desc: String,
        heightened: String = "",
        source: String = "Player Core",
        isPremium: Bool = false
    ) -> SpellEntry {
        SpellEntry(
            id: seededUUID("\(title)\(source)"),
            title: title,
            summary: summary,
            isPremium: isPremium,
            rank: rank,
            traditions: traditions,
            actions: actions,
            traits: traits,
            range: range,
            area: area,
            targets: targets,
            duration: duration,
            savingThrow: savingThrow,
            description: desc,
            heightened: heightened,
            source: source
        )
    }

    static let placeholder = SpellEntry(
        id: UUID(),
        title: "Fireball",
        summary: "An explosion of fire that burns everything in the area.",
        isPremium: false,
        rank: 3,
        traditions: "arcane, primal",
        actions: "2 actions",
        traits: "Attack, Fire, Evocation",
        range: "500 feet",
        area: "20-foot burst",
        targets: "",
        duration: "Instantaneous",
        savingThrow: "basic Reflex",
        description: "A burst of fire explodes, dealing 6d6 fire damage to each creature in the area.",
        heightened: "(+1) The damage increases by 2d6.",
        source: "Player Core"
    )
}
