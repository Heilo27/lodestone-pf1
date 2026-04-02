import Foundation
import SQLite3

struct ItemEntry: ContentEntry {
    let id: UUID
    let title: String
    let contentType: ContentType = .item
    let summary: String
    let isPremium: Bool

    let price: String
    let weight: String
    let slot: String
    let aura: String
    let casterLevel: Int
    let itemType: String
    let description: String
    let source: String

    enum CodingKeys: String, CodingKey {
        case id, title, summary, isPremium, price, weight, slot, aura, casterLevel, itemType, description, source
    }

    // MARK: - Database init
    init(from row: SQLiteRow) {
        id = UUID(uuidString: row["id"] ?? "") ?? UUID()
        title = row["title"] ?? ""
        summary = row["summary"] ?? ""
        isPremium = (row["is_premium"] ?? "0") == "1"
        price = row["price"] ?? ""
        weight = row["weight"] ?? ""
        slot = row["slot"] ?? ""
        aura = row["aura"] ?? ""
        casterLevel = Int(row["caster_level"] ?? "0") ?? 0
        itemType = row["item_type"] ?? ""
        description = row["description"] ?? ""
        source = row["source"] ?? "Core Rulebook"
    }

    // MARK: - Memberwise init
    init(id: UUID, title: String, summary: String, isPremium: Bool,
         price: String, weight: String, slot: String, aura: String,
         casterLevel: Int, itemType: String, description: String, source: String) {
        self.id = id
        self.title = title
        self.summary = summary
        self.isPremium = isPremium
        self.price = price
        self.weight = weight
        self.slot = slot
        self.aura = aura
        self.casterLevel = casterLevel
        self.itemType = itemType
        self.description = description
        self.source = source
    }

    static let placeholder = ItemEntry(
        id: UUID(),
        title: "Longsword +1",
        summary: "A finely crafted longsword with a magical enhancement.",
        isPremium: false,
        price: "2,315 gp",
        weight: "4 lbs.",
        slot: "None (held)",
        aura: "Faint evocation",
        casterLevel: 3,
        itemType: "Weapon",
        description: "This longsword has a +1 enhancement bonus on attack and damage rolls.",
        source: "Core Rulebook"
    )
}
