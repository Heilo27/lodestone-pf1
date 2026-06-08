import Foundation
import SwiftUI

/// Tracks which books the user wants active. Default (empty set) = all books.
@Observable
final class LibraryFilterService {
    @ObservationIgnored @AppStorage("activeSourceNames") private var stored: String = ""

    private(set) var activeNames: Set<String> = []
    private(set) var allBooks: [BookSource] = []

    /// True when the user has narrowed to a subset of books.
    var isFiltered: Bool { !activeNames.isEmpty }

    /// Human-readable summary for Settings row.
    var statusLabel: String {
        if !isFiltered { return "All books" }
        return "\(activeNames.count) of \(allBooks.count) books"
    }

    /// Call once after the DB is loaded so allBooks is populated and stored selection is restored.
    func load(allBooks: [BookSource]) {
        self.allBooks = allBooks
        let names = stored.split(separator: ",").map { String($0) }
        activeNames = names.isEmpty ? [] : Set(names)
    }

    func isActive(_ book: BookSource) -> Bool {
        !isFiltered || activeNames.contains(book.name)
    }

    func toggle(_ book: BookSource) {
        if activeNames.contains(book.name) {
            activeNames.remove(book.name)
        } else {
            activeNames.insert(book.name)
        }
        persist()
    }

    func selectAll() {
        activeNames = []
        stored = ""
    }

    /// Activate only books in the Core series.
    func selectCore() {
        let coreNames = allBooks.filter { $0.series == .core }.map(\.name)
        activeNames = Set(coreNames)
        persist()
    }

    private func persist() {
        stored = activeNames.joined(separator: ",")
    }
}
