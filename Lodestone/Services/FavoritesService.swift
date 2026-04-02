import Foundation
import SwiftUI

@Observable
final class FavoritesService {
    private(set) var favoriteIDs: Set<UUID> = []
    private let storageKey = "lodestone_favorites"

    init() {
        load()
    }

    func isFavorite(_ id: UUID) -> Bool {
        favoriteIDs.contains(id)
    }

    func toggle(_ id: UUID) {
        if favoriteIDs.contains(id) {
            favoriteIDs.remove(id)
        } else {
            favoriteIDs.insert(id)
        }
        save()
    }

    func add(_ id: UUID) {
        favoriteIDs.insert(id)
        save()
    }

    func remove(_ id: UUID) {
        favoriteIDs.remove(id)
        save()
    }

    func removeAll() {
        favoriteIDs.removeAll()
        save()
    }

    // MARK: - Persistence (UserDefaults for now, will migrate to SQLite)

    private func save() {
        let strings = favoriteIDs.map(\.uuidString)
        UserDefaults.standard.set(Array(strings), forKey: storageKey)
    }

    private func load() {
        guard let strings = UserDefaults.standard.stringArray(forKey: storageKey) else { return }
        favoriteIDs = Set(strings.compactMap { UUID(uuidString: $0) })
    }
}
