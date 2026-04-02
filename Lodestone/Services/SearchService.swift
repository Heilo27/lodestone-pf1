import Foundation
import SwiftUI

@Observable
final class SearchService {
    var query: String = ""
    var results: [any ContentEntry] = []
    /// Grouped results: (type, entries capped at initialResultsPerType, hasMore)
    var groupedResults: [(ContentType, [any ContentEntry], Bool)] = []
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
            // Debounce: 200ms
            try? await Task.sleep(nanoseconds: 200_000_000)
            guard !Task.isCancelled else { return }
            await executeSearch(query: currentQuery)
        }
    }

    /// Cancels pending debounced task and executes search immediately (for .onSubmit).
    func searchImmediately() {
        let currentQuery = query.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !currentQuery.isEmpty else {
            results = []
            isSearching = false
            return
        }
        searchTask?.cancel()
        isSearching = true
        searchTask = Task {
            await executeSearch(query: currentQuery)
        }
    }

    // Per-type result limit for initial display
    static let initialResultsPerType = 20

    private func executeSearch(query: String) async {
        let cacheKey = cacheKey(query: query, filters: activeFilters)
        if let cached = cache.object(forKey: cacheKey as NSString) {
            results = cached.entries
            groupedResults = cached.grouped
            isSearching = false
            return
        }

        do {
            try await database.open()
            // Fetch up to 100 overall, then group and cap per-type
            let found = try await database.search(query: query, filters: activeFilters, limit: 100)
            guard !Task.isCancelled else { return }
            let grouped = groupByType(found)
            results = found
            groupedResults = grouped
            cache.setObject(ResultWrapper(entries: found, grouped: grouped), forKey: cacheKey as NSString)
            addToRecent(query)
        } catch {
            guard !Task.isCancelled else { return }
            results = []
            groupedResults = []
        }
        isSearching = false
    }

    private func groupByType(_ entries: [any ContentEntry]) -> [(ContentType, [any ContentEntry], Bool)] {
        var dict: [ContentType: [any ContentEntry]] = [:]
        for entry in entries {
            dict[entry.contentType, default: []].append(entry)
        }
        return ContentType.allCases.compactMap { type in
            guard let group = dict[type], !group.isEmpty else { return nil }
            let capped = Array(group.prefix(Self.initialResultsPerType))
            let hasMore = group.count > Self.initialResultsPerType
            return (type, capped, hasMore)
        }
    }

    func clearSearch() {
        query = ""
        results = []
        groupedResults = []
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
    let grouped: [(ContentType, [any ContentEntry], Bool)]
    init(entries: [any ContentEntry], grouped: [(ContentType, [any ContentEntry], Bool)] = []) {
        self.entries = entries
        self.grouped = grouped
    }
}
