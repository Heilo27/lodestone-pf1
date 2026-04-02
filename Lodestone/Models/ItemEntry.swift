import Foundation
import SQLite3

struct ItemEntry: ContentEntry {
    let id: UUID
    let title: String
    let contentType: ContentType = .item
    let summary: String
    let isPremium: Bool

    // PF2 uses item level (0–20) instead of caster level; Bulk instead of weight; no slot/aura
    let itemLevel: Int
    let price: String               // e.g. "3 gp", "15 sp"
    let bulk: String                // e.g. "1", "L", "—"
    let usage: String               // e.g. "held in 1 hand", "worn"
    let traits: String              // comma-separated
    let itemType: String            // Weapon, Armor, Potion, Wand, etc.
    let activate: String            // activation action/cost if applicable
    let description: String
    let source: String

    enum CodingKeys: String, CodingKey {
        case id, title, summary, isPremium, itemLevel, price, bulk, usage
        case traits, itemType, activate, description, source
    }

    // MARK: - Database init
    init(from row: SQLiteRow) {
        id = UUID(uuidString: row["id"] ?? "") ?? UUID()
        title = row["title"] ?? ""
        summary = row["summary"] ?? ""
        isPremium = (row["is_premium"] ?? "0") == "1"
        itemLevel = Int(row["item_level"] ?? "0") ?? 0
        price = row["price"] ?? ""
        bulk = row["bulk"] ?? ""
        usage = row["usage"] ?? ""
        traits = row["traits"] ?? ""
        itemType = row["item_type"] ?? ""
        activate = row["activate"] ?? ""
        description = row["description"] ?? ""
        source = row["source"] ?? "Player Core"
    }

    // MARK: - Memberwise init
    init(id: UUID, title: String, summary: String, isPremium: Bool,
         itemLevel: Int, price: String, bulk: String, usage: String,
         traits: String, itemType: String, activate: String,
         description: String, source: String) {
        self.id = id
        self.title = title
        self.summary = summary
        self.isPremium = isPremium
        self.itemLevel = itemLevel
        self.price = price
        self.bulk = bulk
        self.usage = usage
        self.traits = traits
        self.itemType = itemType
        self.activate = activate
        self.description = description
        self.source = source
    }

    static func make(
        _ title: String,
        level: Int,
        price: String,
        bulk: String,
        usage: String = "",
        traits: String = "",
        type: String,
        activate: String = "",
        summary: String,
        desc: String,
        source: String = "Player Core",
        isPremium: Bool = false
    ) -> ItemEntry {
        ItemEntry(
            id: seededUUID("\(title)\(source)"),
            title: title,
            summary: summary,
            isPremium: isPremium,
            itemLevel: level,
            price: price,
            bulk: bulk,
            usage: usage,
            traits: traits,
            itemType: type,
            activate: activate,
            description: desc,
            source: source
        )
    }

    static let placeholder = ItemEntry(
        id: UUID(),
        title: "+1 Striking Longsword",
        summary: "A longsword etched with a fundamental rune.",
        isPremium: false,
        itemLevel: 4,
        price: "100 gp",
        bulk: "1",
        usage: "held in 1 hand",
        traits: "Evocation, Magical",
        itemType: "Weapon",
        activate: "",
        description: "This longsword has a +1 weapon potency rune and a striking rune etched into it, granting a +1 item bonus to attack rolls and increasing the weapon damage dice to 2d8.",
        source: "Player Core"
    )
}
