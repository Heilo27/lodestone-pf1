import SwiftUI

struct FavoritesView: View {
    @Environment(FavoritesService.self) private var favoritesService
    @State private var viewModel: FavoritesViewModel?
    @State private var searchText = ""
    @State private var selectedType: ContentType? = nil
    @Environment(\.isEmbeddedInSplitView) private var isEmbedded

    private func filteredEntries(from entries: [any ContentEntry]) -> [any ContentEntry] {
        entries.filter { entry in
            let matchesType = selectedType == nil || entry.contentType == selectedType
            let matchesSearch = searchText.isEmpty || entry.title.localizedCaseInsensitiveContains(searchText)
            return matchesType && matchesSearch
        }
    }

    private func groupedEntries(from entries: [any ContentEntry]) -> [(ContentType, [any ContentEntry])] {
        let filtered = filteredEntries(from: entries)
        var groups: [(ContentType, [any ContentEntry])] = []
        for type in ContentType.allCases {
            let typeEntries = filtered.filter { $0.contentType == type }
            if !typeEntries.isEmpty {
                groups.append((type, typeEntries))
            }
        }
        return groups
    }

    var body: some View {
        let inner = Group {
                if let vm = viewModel {
                    if vm.isLoading {
                        ProgressView("Loading favorites...")
                    } else if vm.entries.isEmpty {
                        ContentUnavailableView(
                            "No Favorites",
                            systemImage: "heart.slash",
                            description: Text("Tap the heart icon on any entry to add it to your favorites.")
                        )
                    } else {
                        let groups = groupedEntries(from: vm.entries)
                        if groups.isEmpty {
                            ContentUnavailableView.search(text: searchText)
                        } else {
                            List {
                                ForEach(groups, id: \.0) { type, entries in
                                    Section(type.displayName) {
                                        ForEach(entries, id: \.id) { entry in
                                            NavigationLink(value: BrowseDestination.detail(AnyContentEntry(erasing: entry))) {
                                                HStack(spacing: AppSpacing.md) {
                                                    ContentTypeIconBadge(type: entry.contentType, size: 32)
                                                    Text(entry.title)
                                                        .font(AppFonts.headline)
                                                }
                                            }
                                            .swipeActions(edge: .trailing) {
                                                Button(role: .destructive) {
                                                    vm.removeFavorite(entry.id)
                                                } label: {
                                                    Label("Remove", systemImage: "heart.slash")
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            .searchable(text: $searchText, prompt: "Search favorites")
                        }
                    }
                } else {
                    ProgressView()
                }
            }
            .navigationTitle("Favorites")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Menu {
                        Button {
                            selectedType = nil
                        } label: {
                            Label("All Types", systemImage: selectedType == nil ? "checkmark" : "")
                        }
                        Divider()
                        ForEach(ContentType.allCases) { type in
                            Button {
                                selectedType = type
                            } label: {
                                Label(type.displayName, systemImage: selectedType == type ? "checkmark" : "")
                            }
                        }
                    } label: {
                        Label("Filter", systemImage: selectedType == nil ? "line.3.horizontal.decrease.circle" : "line.3.horizontal.decrease.circle.fill")
                    }
                }
            }
            .navigationDestination(for: BrowseDestination.self) { destination in
                if case .detail(let wrapped) = destination {
                    DetailView(entry: wrapped)
                }
            }
            .onAppear {
                if viewModel == nil {
                    viewModel = FavoritesViewModel(favoritesService: favoritesService)
                }
            }
            .task {
                await viewModel?.loadFavorites()
            }
            .onChange(of: favoritesService.favorites.count) {
                Task { await viewModel?.loadFavorites() }
            }

        if isEmbedded {
            inner
        } else {
            NavigationStack { inner }
        }
    }
}

#Preview {
    FavoritesView()
}
