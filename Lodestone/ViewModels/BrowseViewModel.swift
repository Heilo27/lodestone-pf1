import Foundation
import SwiftUI

@Observable
final class BrowseViewModel {
    var categories: [ContentType] = ContentType.allCases
    var categoryCounts: [ContentType: Int] = [:]
    var selectedCategory: ContentType?
    var entries: [any ContentEntry] = []
    var isLoading: Bool = false
    var errorMessage: String?

    private let database = DatabaseService.shared

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

    func loadEntries(for type: ContentType) async {
        isLoading = true
        errorMessage = nil
        do {
            try await database.open()
            entries = try await database.browse(type: type)
        } catch {
            errorMessage = error.localizedDescription
            entries = []
        }
        isLoading = false
    }
}
