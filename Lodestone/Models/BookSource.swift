import Foundation

/// Represents a book/source available in the database.
struct BookSource: Identifiable, Hashable {
    var id: String { name }
    let name: String
    let entryCount: Int
    let isPremium: Bool
    let series: BookSeries
}

enum BookSeries: String, CaseIterable {
    case core             = "Core Rules"
    case advancedOptions  = "Advanced Options"
    case bestiaries       = "Bestiaries"
    case setting          = "Setting & Lore"
    case companion        = "Companions & Supplements"

    /// Display order
    static let ordered: [BookSeries] = [
        .core, .advancedOptions, .bestiaries, .setting, .companion
    ]

    var iconName: String {
        switch self {
        case .core:            return "book.closed.fill"
        case .advancedOptions: return "star.fill"
        case .bestiaries:      return "pawprint.fill"
        case .setting:         return "globe"
        case .companion:       return "person.2.fill"
        }
    }

    static func series(for name: String) -> BookSeries {
        switch name {
        case "Core Rulebook":
            return .core
        case "Advanced Player's Guide", "Advanced Class Guide", "Advanced Race Guide",
             "Ultimate Magic", "Ultimate Combat", "Ultimate Equipment",
             "Ultimate Intrigue", "Ultimate Wilderness", "Ultimate Campaign",
             "Occult Adventures", "Mythic Adventures", "Pathfinder Unchained",
             "Villain Codex", "Adventurer's Guide":
            return .advancedOptions
        case "Bestiary", "Bestiary 2", "Bestiary 3", "Bestiary 4", "Bestiary 5", "Bestiary 6",
             "Monster Codex", "Mythical Monsters Revisited", "Classic Monsters Revisited":
            return .bestiaries
        case "Inner Sea World Guide", "Inner Sea Gods", "Inner Sea Magic",
             "Inner Sea Races", "Inner Sea Intrigue", "Inner Sea Combat",
             "Planes of Power", "Darklands Revisited":
            return .setting
        default:
            return .companion
        }
    }
}

/// Canonical display order for all known PF1 OGL books.
enum BookSeriesOrder {
    static let allBooks: [String] = [
        // Core
        "Core Rulebook",
        // Advanced Options
        "Advanced Player's Guide",
        "Advanced Class Guide",
        "Advanced Race Guide",
        "Ultimate Magic",
        "Ultimate Combat",
        "Ultimate Equipment",
        "Ultimate Intrigue",
        "Ultimate Wilderness",
        "Ultimate Campaign",
        "Occult Adventures",
        "Mythic Adventures",
        "Pathfinder Unchained",
        "Villain Codex",
        "Adventurer's Guide",
        // Bestiaries
        "Bestiary",
        "Bestiary 2",
        "Bestiary 3",
        "Bestiary 4",
        "Bestiary 5",
        "Bestiary 6",
        "Monster Codex",
        // Setting & Lore
        "Inner Sea World Guide",
        "Inner Sea Gods",
        "Inner Sea Magic",
        "Inner Sea Races",
        "Inner Sea Intrigue",
        "Inner Sea Combat",
        "Planes of Power",
    ]
}
