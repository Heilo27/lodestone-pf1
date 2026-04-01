import Foundation
import SwiftUI

/// Tracks recently viewed entries locally via UserDefaults.
/// Stores up to 20 entries, most recent first.
@Observable
final class RecentlyViewedService {
    private static let key = "recentlyViewed"
    private static let maxEntries = 20

    private(set) var entries: [RecentEntry] = []

    init() {
        load()
    }

    func record(_ entry: any ContentEntry) {
        let recent = RecentEntry(
            id: entry.id,
            title: entry.title,
            contentType: entry.contentType
        )
        // Remove existing if present (move-to-front)
        entries.removeAll { $0.id == recent.id }
        entries.insert(recent, at: 0)
        if entries.count > Self.maxEntries {
            entries = Array(entries.prefix(Self.maxEntries))
        }
        save()
    }

    func clear() {
        entries = []
        UserDefaults.standard.removeObject(forKey: Self.key)
    }

    // MARK: - Persistence

    private func load() {
        guard let data = UserDefaults.standard.data(forKey: Self.key),
              let decoded = try? JSONDecoder().decode([RecentEntry].self, from: data) else { return }
        entries = decoded
    }

    private func save() {
        guard let data = try? JSONEncoder().encode(entries) else { return }
        UserDefaults.standard.set(data, forKey: Self.key)
    }
}

// MARK: - RecentEntry

struct RecentEntry: Codable, Identifiable, Hashable {
    let id: UUID
    let title: String
    let contentType: ContentType
}
