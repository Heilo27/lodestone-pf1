import SwiftUI

struct SearchView: View {
    @State private var viewModel = SearchViewModel()

    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                FilterView(
                    activeFilters: viewModel.activeFilters,
                    onToggle: { viewModel.toggleFilter($0) }
                )

                if viewModel.isSearching {
                    Spacer()
                    ProgressView("Searching...")
                    Spacer()
                } else if !viewModel.query.isEmpty && viewModel.results.isEmpty {
                    Spacer()
                    ContentUnavailableView.search(text: viewModel.query)
                    Spacer()
                } else if viewModel.query.isEmpty && !viewModel.recentSearches.isEmpty {
                    List {
                        Section("Recent Searches") {
                            ForEach(viewModel.recentSearches, id: \.self) { recent in
                                Button {
                                    viewModel.query = recent
                                    viewModel.search()
                                } label: {
                                    Label(recent, systemImage: "clock")
                                        .foregroundStyle(.primary)
                                }
                            }
                        }
                    }
                } else if viewModel.query.isEmpty {
                    Spacer()
                    ContentUnavailableView(
                        "Search Pathfinder Content",
                        systemImage: "magnifyingglass",
                        description: Text("Search spells, classes, monsters, feats, items, and more.")
                    )
                    Spacer()
                } else {
                    List {
                        ForEach(viewModel.groupedResults, id: \.0) { (type, entries, hasMore) in
                            Section(type.displayName) {
                                ForEach(entries, id: \.id) { entry in
                                    NavigationLink {
                                        DetailView(entry: entry)
                                    } label: {
                                        SearchResultRow(entry: entry)
                                    }
                                }
                                if hasMore {
                                    NavigationLink("Show all results for \(type.displayName)") {
                                        CategoryListView(contentType: type)
                                    }
                                    .font(.subheadline)
                                    .foregroundStyle(.secondary)
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Search")
            .searchable(text: $viewModel.query, prompt: "Spells, monsters, feats...")
            .onSubmit(of: .search) {
                viewModel.searchImmediately()
            }
            .onChange(of: viewModel.query) {
                viewModel.search()
            }
        }
    }
}

#Preview {
    SearchView()
}
