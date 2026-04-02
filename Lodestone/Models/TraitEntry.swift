import Foundation
import SQLite3

struct TraitEntry: ContentEntry {
    let id: UUID
    let title: String
    let contentType: ContentType = .trait
    let summary: String
    let isPremium: Bool

    // PF2 traits are categorical tags, not character options
    let traitType: String   // Ancestry, Class, Creature, Equipment, General, Magical, etc.
    let description: String
    let source: String

    enum CodingKeys: String, CodingKey {
        case id, title, summary, isPremium, traitType, description, source
    }

    // MARK: - Database init
    init(from row: SQLiteRow) {
        id = UUID(uuidString: row["id"] ?? "") ?? UUID()
        title = row["title"] ?? ""
        summary = row["summary"] ?? ""
        isPremium = (row["is_premium"] ?? "0") == "1"
        traitType = row["trait_type"] ?? ""
        description = row["description"] ?? ""
        source = row["source"] ?? "Player Core Handbook"
    }

    // MARK: - Memberwise init
    init(id: UUID, title: String, summary: String, isPremium: Bool,
         traitType: String, description: String, source: String) {
        self.id = id
        self.title = title
        self.summary = summary
        self.isPremium = isPremium
        self.traitType = traitType
        self.description = description
        self.source = source
    }

    static func make(
        _ title: String,
        traitType: String,
        summary: String,
        desc: String,
        source: String = "Player Core Handbook",
        isPremium: Bool = false
    ) -> TraitEntry {
        TraitEntry(
            id: seededUUID("\(title)\(source)"),
            title: title,
            summary: summary,
            isPremium: isPremium,
            traitType: traitType,
            description: desc,
            source: source
        )
    }

    static let placeholder = TraitEntry(
        id: UUID(),
        title: "Fire",
        summary: "Effects with the fire trait deal fire damage or manipulate fire.",
        isPremium: false,
        traitType: "Energy",
        description: "Effects with the fire trait deal fire damage or either manipulate or summon fire. Those that manipulate fire have no effect in an area without fire. Creatures with this trait consist primarily of fire or have a magical connection to that element.",
        source: "Player Core Handbook"
    )
}
