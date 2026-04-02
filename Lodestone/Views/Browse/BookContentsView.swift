import SwiftUI

/// Shows all entries from a specific book, grouped by content type.
struct BookContentsView: View {
    let source: BookSource

    @State private var groupedEntries: [(ContentType, [any ContentEntry])] = []
    @State private var isLoading = true
    @State private var searchText = ""
    @State private var loadError: Error? = nil

    private var filteredGroups: [(ContentType, [any ContentEntry])] {
        guard !searchText.isEmpty else { return groupedEntries }
        let q = searchText.lowercased()
        return groupedEntries.compactMap { (type, entries) in
            let filtered = entries.filter { $0.title.lowercased().contains(q) }
            return filtered.isEmpty ? nil : (type, filtered)
        }
    }

    var body: some View {
        Group {
            if isLoading {
                ProgressView("Loading \(source.name)...")
            } else if loadError != nil {
                ContentUnavailableView(
                    "Unable to Load",
                    systemImage: "exclamationmark.triangle",
                    description: Text("Could not load book content.")
                )
            } else if groupedEntries.isEmpty {
                ContentUnavailableView(
                    "No Content",
                    systemImage: "books.vertical",
                    description: Text("No entries found in \(source.name).")
                )
            } else {
                List {
                    ForEach(filteredGroups, id: \.0) { (type, entries) in
                        Section(type.displayName) {
                            ForEach(entries, id: \.id) { entry in
                                NavigationLink(entry.title) {
                                    DetailView(entry: entry)
                                }
                            }
                        }
                    }
                }
                .searchable(text: $searchText, prompt: "Search \(source.name)")
            }
        }
        .navigationTitle(source.name)
        .navigationBarTitleDisplayMode(.large)
        .task {
            await loadEntries()
        }
    }

    private func loadEntries() async {
        do {
            try await DatabaseService.shared.open()
            let all = try await DatabaseService.shared.browse(source: source.name)
            // Group by content type, preserve alphabetical order within each group
            var grouped: [ContentType: [any ContentEntry]] = [:]
            for entry in all {
                grouped[entry.contentType, default: []].append(entry)
            }
            // Sort groups by display order
            groupedEntries = ContentType.allCases.compactMap { type in
                guard let entries = grouped[type], !entries.isEmpty else { return nil }
                return (type, entries)
            }
        } catch {
            loadError = error
            groupedEntries = []
        }
        isLoading = false
    }
}

#Preview {
    NavigationStack {
        BookContentsView(source: BookSource(name: "Player Core Handbook", entryCount: 130, isPremium: false))
    }
}
