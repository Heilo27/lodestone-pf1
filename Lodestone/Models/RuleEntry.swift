import Foundation
import SQLite3

struct RuleEntry: ContentEntry {
    let id: UUID
    let title: String
    let contentType: ContentType = .rule
    let summary: String
    let isPremium: Bool

    let category: String        // Combat, Skills, Magic, etc.
    let body: String            // Full rule text
    let source: String

    enum CodingKeys: String, CodingKey {
        case id, title, summary, isPremium, category, body, source
    }

    // MARK: - Database init
    init(from row: SQLiteRow) {
        id = UUID(uuidString: row["id"] ?? "") ?? UUID()
        title = row["title"] ?? ""
        summary = row["summary"] ?? ""
        isPremium = (row["is_premium"] ?? "0") == "1"
        category = row["category"] ?? ""
        body = row["body"] ?? ""
        source = row["source"] ?? "Player Core"
    }

    // MARK: - Memberwise init
    init(id: UUID, title: String, summary: String, isPremium: Bool,
         category: String, body: String, source: String) {
        self.id = id
        self.title = title
        self.summary = summary
        self.isPremium = isPremium
        self.category = category
        self.body = body
        self.source = source
    }

    static let placeholder = RuleEntry(
        id: UUID(),
        title: "Combat: Actions in Combat",
        summary: "Overview of action types available in a round of combat.",
        isPremium: false,
        category: "Combat",
        body: """
        In each round of combat, each creature takes a turn in initiative order. On your turn, you may take the following types of actions:

        STANDARD ACTION: An attack, casting most spells, or using most special abilities.
        MOVE ACTION: Moving up to your speed, drawing a weapon, or picking up an item.
        FULL-ROUND ACTION: Making a full attack, running, or charging.
        SWIFT ACTION: Extremely fast actions such as casting a swift spell.
        FREE ACTION: Negligible actions such as dropping an item or speaking a few words.
        IMMEDIATE ACTION: Actions that can be taken even when it's not your turn.
        """,
        source: "Player Core"
    )
}
