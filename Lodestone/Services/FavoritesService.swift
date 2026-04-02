import Foundation
import SwiftUI

struct FavoriteEntry: Codable, Hashable {
    let id: UUID
    let contentType: ContentType
}

@Observable
final class FavoritesService {
    private(set) var favorites: Set<FavoriteEntry> = []
    private let storageKey = "lodestone_favorites_v2"

    init() {
        load()
    }

    var favoriteIDs: Set<UUID> { Set(favorites.map(\.id)) }

    func isFavorite(_ id: UUID) -> Bool {
        favorites.contains { $0.id == id }
    }

    func toggle(_ entry: any ContentEntry) {
        if let existing = favorites.first(where: { $0.id == entry.id }) {
            favorites.remove(existing)
        } else {
            favorites.insert(FavoriteEntry(id: entry.id, contentType: entry.contentType))
        }
        save()
    }

    func remove(_ id: UUID) {
        favorites = favorites.filter { $0.id != id }
        save()
    }

    func removeAll() {
        favorites.removeAll()
        save()
    }

    // MARK: - Persistence

    private func save() {
        guard let data = try? JSONEncoder().encode(Array(favorites)) else { return }
        UserDefaults.standard.set(data, forKey: storageKey)
    }

    private func load() {
        guard let data = UserDefaults.standard.data(forKey: storageKey),
              let decoded = try? JSONDecoder().decode([FavoriteEntry].self, from: data) else { return }
        favorites = Set(decoded)
    }
}
