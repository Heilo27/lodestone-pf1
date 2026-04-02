import Foundation
import SwiftUI

@Observable
final class DetailViewModel {
    let entry: any ContentEntry
    let favoritesService: FavoritesService

    var isFavorite: Bool {
        favoritesService.isFavorite(entry.id)
    }

    init(entry: any ContentEntry, favoritesService: FavoritesService) {
        self.entry = entry
        self.favoritesService = favoritesService
    }

    func toggleFavorite() {
        favoritesService.toggle(entry)
    }
}
