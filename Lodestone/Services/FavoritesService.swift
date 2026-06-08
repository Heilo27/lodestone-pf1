import Foundation
import SwiftUI

struct FavoriteEntry: Codable, Hashable {
    let id: UUID
    let contentType: ContentType
}

@MainActor
@Observable
final class FavoritesService {
    private(set) var favorites: Set<FavoriteEntry> = []
    private let legacyStorageKey = "lodestone_favorites_v2"
    private let db = DatabaseService.shared

    init() {}

    var favoriteIDs: Set<UUID> { Set(favorites.map(\.id)) }

    func isFavorite(_ id: UUID) -> Bool {
        favorites.contains { $0.id == id }
    }

    func toggle(_ entry: any ContentEntry) {
        if let existing = favorites.first(where: { $0.id == entry.id }) {
            favorites.remove(existing)
            Task {
                do { try await db.deleteFavorite(id: existing.id) }
                catch { favorites.insert(existing) }
            }
        } else {
            let fav = FavoriteEntry(id: entry.id, contentType: entry.contentType)
            favorites.insert(fav)
            Task {
                do { try await db.insertFavorite(id: fav.id, contentType: fav.contentType) }
                catch { favorites.remove(fav) }
            }
        }
    }

    func remove(_ id: UUID) {
        guard let existing = favorites.first(where: { $0.id == id }) else { return }
        favorites.remove(existing)
        Task {
            do { try await db.deleteFavorite(id: id) }
            catch { favorites.insert(existing) }
        }
    }

    func removeAll() {
        let snapshot = favorites
        favorites.removeAll()
        Task {
            do { try await db.deleteAllFavorites() }
            catch { favorites = snapshot }
        }
    }

    // MARK: - Load from SQLite (call after DB is open)

    func loadFromDatabase() async {
        do {
            var loaded = try await db.getFavorites()
            // Migrate legacy UserDefaults favorites if any
            if let data = UserDefaults.standard.data(forKey: legacyStorageKey),
               let legacy = try? JSONDecoder().decode([FavoriteEntry].self, from: data) {
                for entry in legacy {
                    if !loaded.contains(entry) {
                        try? await db.insertFavorite(id: entry.id, contentType: entry.contentType)
                        loaded.insert(entry)
                    }
                }
                UserDefaults.standard.removeObject(forKey: legacyStorageKey)
            }
            favorites = loaded
        } catch {
            // DB not ready yet — fall back to legacy if present
            if let data = UserDefaults.standard.data(forKey: legacyStorageKey),
               let legacy = try? JSONDecoder().decode([FavoriteEntry].self, from: data) {
                favorites = Set(legacy)
            }
        }
    }
}
