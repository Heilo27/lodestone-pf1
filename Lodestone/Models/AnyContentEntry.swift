import Foundation

/// Type-erased `ContentEntry` wrapper that is `Hashable` and usable
/// as a `NavigationLink(value:)` destination.
struct AnyContentEntry: ContentEntry {
    let id: UUID
    let title: String
    let contentType: ContentType
    let summary: String
    let isPremium: Bool
    let source: String

    init<E: ContentEntry>(_ entry: E) {
        id = entry.id
        title = entry.title
        contentType = entry.contentType
        summary = entry.summary
        isPremium = entry.isPremium
        source = entry.source
    }

    init(erasing entry: any ContentEntry) {
        id = entry.id
        title = entry.title
        contentType = entry.contentType
        summary = entry.summary
        isPremium = entry.isPremium
        source = entry.source
    }
}
