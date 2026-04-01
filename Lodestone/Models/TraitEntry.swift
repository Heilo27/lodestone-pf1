import Foundation
import SQLite3

struct TraitEntry: ContentEntry {
    let id: UUID
    let title: String
    let contentType: ContentType = .trait
    let summary: String
    let isPremium: Bool

    let traitType: String       // Combat, Magic, Social, Faith, Regional, Race
    let prerequisites: String
    let benefit: String
    let description: String
    let source: String

    // MARK: - Database init
    init(from row: SQLiteRow) {
        id = UUID(uuidString: row["id"] ?? "") ?? UUID()
        title = row["title"] ?? ""
        summary = row["summary"] ?? ""
        isPremium = (row["is_premium"] ?? "0") == "1"
        traitType = row["trait_type"] ?? ""
        prerequisites = row["prerequisites"] ?? ""
        benefit = row["benefit"] ?? ""
        description = row["description"] ?? ""
        source = row["source"] ?? "Core Rulebook"
    }

    // MARK: - Memberwise init
    init(id: UUID, title: String, summary: String, isPremium: Bool,
         traitType: String, prerequisites: String, benefit: String,
         description: String, source: String) {
        self.id = id
        self.title = title
        self.summary = summary
        self.isPremium = isPremium
        self.traitType = traitType
        self.prerequisites = prerequisites
        self.benefit = benefit
        self.description = description
        self.source = source
    }

    static let placeholder = TraitEntry(
        id: UUID(),
        title: "Reactionary",
        summary: "You have quick reflexes that allow you to react rapidly to danger.",
        isPremium: false,
        traitType: "Combat",
        prerequisites: "",
        benefit: "You gain a +2 trait bonus on initiative checks.",
        description: "You were bullied often as a child, but never quite developed an offensive response. Instead, you became adept at anticipating sudden attacks and reacting to danger quickly.",
        source: "Advanced Player's Guide"
    )
}
