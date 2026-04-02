import SwiftUI

struct FavoritesView: View {
    @Environment(FavoritesService.self) private var favoritesService
    @State private var viewModel = FavoritesViewModel()
    @State private var searchText = ""
    @State private var entryToDelete: (any ContentEntry)?
    @State private var showDeleteConfirmation = false

    // MARK: - Grouped + filtered data

    private var filteredEntries: [any ContentEntry] {
        guard !searchText.isEmpty else { return viewModel.entries }
        let q = searchText.lowercased()
        return viewModel.entries.filter { $0.title.lowercased().contains(q) }
    }

    private var groupedEntries: [(type: ContentType, entries: [any ContentEntry])] {
        var dict: [ContentType: [any ContentEntry]] = [:]
        for entry in filteredEntries {
            dict[entry.contentType, default: []].append(entry)
        }
        return ContentType.allCases.compactMap { type in
            guard let entries = dict[type], !entries.isEmpty else { return nil }
            return (type: type, entries: entries.sorted { $0.title < $1.title })
        }
    }

    var body: some View {
        NavigationStack {
            Group {
                if viewModel.isLoading {
                    ProgressView("Loading favorites...")
                } else if viewModel.entries.isEmpty {
                    ContentUnavailableView(
                        "No Favorites",
                        systemImage: "heart.slash",
                        description: Text("Tap the heart icon on any entry to add it to your favorites.")
                    )
                } else if groupedEntries.isEmpty {
                    ContentUnavailableView.search(text: searchText)
                } else {
                    List {
                        ForEach(groupedEntries, id: \.type) { group in
                            Section(group.type.displayName) {
                                ForEach(group.entries, id: \.id) { entry in
                                    NavigationLink {
                                        DetailView(entry: entry)
                                    } label: {
                                        HStack(spacing: AppSpacing.md) {
                                            ContentTypeIconBadge(type: entry.contentType, size: 32)
                                            VStack(alignment: .leading, spacing: 2) {
                                                Text(entry.title)
                                                    .font(AppFonts.headline)
                                                Text(entry.contentType.singularName)
                                                    .font(AppFonts.caption)
                                                    .foregroundStyle(.secondary)
                                            }
                                        }
                                    }
                                    .swipeActions(edge: .trailing) {
                                        Button(role: .destructive) {
                                            entryToDelete = entry
                                            showDeleteConfirmation = true
                                        } label: {
                                            Label("Remove", systemImage: "heart.slash")
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Favorites")
            .searchable(text: $searchText, prompt: "Search favorites")
            .task {
                await viewModel.loadFavorites(favorites: favoritesService.favorites)
            }
            .onChange(of: favoritesService.favorites) { _, newFavorites in
                Task { await viewModel.loadFavorites(favorites: newFavorites) }
            }
            .confirmationDialog(
                "Remove from Favorites?",
                isPresented: $showDeleteConfirmation,
                titleVisibility: .visible
            ) {
                Button("Remove", role: .destructive) {
                    if let entry = entryToDelete {
                        favoritesService.remove(entry.id)
                        viewModel.removeFavorite(entry.id)
                        entryToDelete = nil
                    }
                }
                Button("Cancel", role: .cancel) { entryToDelete = nil }
            } message: {
                if let entry = entryToDelete {
                    Text("Remove \"\(entry.title)\" from your favorites?")
                }
            }
        }
    }
}

#Preview {
    FavoritesView()
}
