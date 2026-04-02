import Foundation
import SwiftUI

@Observable
final class BrowseViewModel {
    // Quick access
    var categories: [ContentType] = ContentType.allCases
    var categoryCounts: [ContentType: Int] = [:]

    // Books
    var books: [BookSource] = []
    var isLoadingBooks = false

    // Recently viewed
    var recentlyViewed: [RecentEntry] = []

    private let database = DatabaseService.shared

    func loadHomeData(isUnlocked: Bool, recentlyViewedService: RecentlyViewedService) async {
        async let counts: () = loadCounts(isUnlocked: isUnlocked)
        async let booksLoad: () = loadBooks()
        _ = await (counts, booksLoad)
        recentlyViewed = recentlyViewedService.entries
    }

    func loadCounts(isUnlocked: Bool) async {
        do {
            try await database.open()
            for type in ContentType.allCases {
                let count = try await database.countForType(type, unlockedOnly: !isUnlocked)
                categoryCounts[type] = count
            }
        } catch {
            // Counts are optional UI enhancement; suppress error
        }
    }

    func loadBooks() async {
        isLoadingBooks = true
        do {
            try await database.open()
            books = try await database.browseSources()
        } catch {
            books = []
        }
        isLoadingBooks = false
    }
}
