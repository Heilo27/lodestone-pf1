import Foundation
import SwiftUI

@Observable
final class SearchViewModel {
    let searchService = SearchService()

    var query: String {
        get { searchService.query }
        set { searchService.query = newValue }
    }

    var results: [any ContentEntry] { searchService.results }
    var isSearching: Bool { searchService.isSearching }
    var activeFilters: Set<ContentType> { searchService.activeFilters }
    var recentSearches: [String] { searchService.recentSearches }

    func search() {
        searchService.search()
    }

    func clearSearch() {
        searchService.clearSearch()
    }

    func toggleFilter(_ type: ContentType) {
        searchService.toggleFilter(type)
    }
}
