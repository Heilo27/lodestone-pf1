import Foundation

/// Represents a book/source available in the database.
struct BookSource: Identifiable, Hashable {
    var id: String { name }
    let name: String
    let entryCount: Int
    let isPremium: Bool
}
