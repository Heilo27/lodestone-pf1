import Foundation
import SwiftUI

@Observable
final class SearchService {
    var query: String = ""
    var results: [any ContentEntry] = []
    var activeFilters: Set<ContentType> = []
    var isSearching: Bool = false
    var recentSearches: [String] = []

    private let database = DatabaseService.shared
    private var searchTask: Task<Void, Never>?

    private let cache = NSCache<NSString, ResultWrapper>()

    func search() {
        let currentQuery = query.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !currentQuery.isEmpty else {
            results = []
            isSearching = false
            return
        }

        searchTask?.cancel()
        isSearching = true

        searchTask = Task {
            // Debounce: 300ms
            try? await Task.sleep(nanoseconds: 300_000_000)
            guard !Task.isCancelled else { return }

            let cacheKey = cacheKey(query: currentQuery, filters: activeFilters)
            if let cached = cache.object(forKey: cacheKey as NSString) {
                if !Task.isCancelled {
                    results = cached.entries
                    isSearching = false
                }
                return
            }

            do {
                try await database.open()
                let found = try await database.search(query: currentQuery, filters: activeFilters)
                guard !Task.isCancelled else { return }
                results = found
                cache.setObject(ResultWrapper(entries: found), forKey: cacheKey as NSString)
                addToRecent(currentQuery)
            } catch {
                guard !Task.isCancelled else { return }
                results = []
            }
            isSearching = false
        }
    }

    func clearSearch() {
        query = ""
        results = []
        isSearching = false
        searchTask?.cancel()
    }

    func toggleFilter(_ type: ContentType) {
        if activeFilters.contains(type) {
            activeFilters.remove(type)
        } else {
            activeFilters.insert(type)
        }
        if !query.isEmpty {
            search()
        }
    }

    func clearFilters() {
        activeFilters.removeAll()
        if !query.isEmpty {
            search()
        }
    }

    private func addToRecent(_ query: String) {
        recentSearches.removeAll { $0 == query }
        recentSearches.insert(query, at: 0)
        if recentSearches.count > 10 {
            recentSearches = Array(recentSearches.prefix(10))
        }
    }

    private func cacheKey(query: String, filters: Set<ContentType>) -> String {
        let filterStr = filters.map(\.rawValue).sorted().joined(separator: ",")
        return "\(query)|\(filterStr)"
    }
}

// NSCache requires AnyObject values
final class ResultWrapper: NSObject {
    let entries: [any ContentEntry]
    init(entries: [any ContentEntry]) { self.entries = entries }
}
