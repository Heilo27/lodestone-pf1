import Foundation
import SwiftUI

@Observable
final class FavoritesViewModel {
    var entries: [any ContentEntry] = []
    var isLoading: Bool = false

    private let database = DatabaseService.shared

    init() {}

    func loadFavorites(favorites: Set<FavoriteEntry>) async {
        isLoading = true
        do {
            entries = try await database.getAllFavorites(favorites: favorites)
        } catch {
            entries = []
        }
        isLoading = false
    }

    func removeFavorite(_ id: UUID) {
        entries.removeAll { $0.id == id }
    }
}
