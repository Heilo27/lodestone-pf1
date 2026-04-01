import Foundation
import SwiftUI

@Observable
final class FavoritesViewModel {
    var entries: [any ContentEntry] = []
    var isLoading: Bool = false

    private let favoritesService: FavoritesService
    private let database = DatabaseService.shared

    init(favoritesService: FavoritesService) {
        self.favoritesService = favoritesService
    }

    var favoriteIDs: Set<UUID> {
        favoritesService.favoriteIDs
    }

    func loadFavorites() async {
        isLoading = true
        do {
            try await database.open()
            let ids = favoritesService.favoriteIDs
            if ids.isEmpty {
                entries = []
            } else {
                entries = try await database.getAllFavorites(ids: ids)
            }
        } catch {
            entries = []
        }
        isLoading = false
    }

    func removeFavorite(_ id: UUID) {
        favoritesService.remove(id)
        entries.removeAll { $0.id == id }
    }

    func removeAll() {
        favoritesService.removeAll()
        entries.removeAll()
    }
}
