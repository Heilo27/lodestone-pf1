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
    let recentlyViewedService = RecentlyViewedService()

    func loadHomeData() async {
        async let counts: () = loadCounts()
        async let booksLoad: () = loadBooks()
        _ = await (counts, booksLoad)
        recentlyViewed = recentlyViewedService.entries
    }

    func loadCounts() async {
        do {
            try await database.open()
            for type in ContentType.allCases {
                let count = try await database.countForType(type)
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
