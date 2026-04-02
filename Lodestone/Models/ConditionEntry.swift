import Foundation
import SQLite3

struct ConditionEntry: ContentEntry {
    let id: UUID
    let title: String
    let contentType: ContentType = .condition
    let summary: String
    let isPremium: Bool

    let isValued: Bool          // true if condition has a numeric value (Drained 1, Frightened 2, etc.)
    let description: String
    let source: String

    enum CodingKeys: String, CodingKey {
        case id, title, summary, isPremium, isValued, description, source
    }

    init(from row: SQLiteRow) {
        id = UUID(uuidString: row["id"] ?? "") ?? UUID()
        title = row["title"] ?? ""
        summary = row["summary"] ?? ""
        isPremium = (row["is_premium"] ?? "0") == "1"
        isValued = (row["is_valued"] ?? "0") == "1"
        description = row["description"] ?? ""
        source = row["source"] ?? "Player Core"
    }

    init(id: UUID, title: String, summary: String, isPremium: Bool,
         isValued: Bool, description: String, source: String) {
        self.id = id
        self.title = title
        self.summary = summary
        self.isPremium = isPremium
        self.isValued = isValued
        self.description = description
        self.source = source
    }

    static func make(
        _ title: String,
        isValued: Bool = false,
        summary: String,
        desc: String,
        source: String = "Player Core",
        isPremium: Bool = false
    ) -> ConditionEntry {
        ConditionEntry(
            id: seededUUID("\(title)\(source)"),
            title: title,
            summary: summary,
            isPremium: isPremium,
            isValued: isValued,
            description: desc,
            source: source
        )
    }

    static let placeholder = ConditionEntry(
        id: UUID(),
        title: "Frightened",
        summary: "You're gripped by fear and have trouble acting.",
        isPremium: false,
        isValued: true,
        description: "You're gripped by fear and struggle to act effectively. The frightened condition always includes a value. You take a status penalty equal to this value to all your checks and DCs. Unless specified otherwise, at the end of each of your turns, the value of your frightened condition decreases by 1.",
        source: "Player Core"
    )
}
