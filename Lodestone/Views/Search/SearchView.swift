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
                    List(viewModel.results, id: \.id) { entry in
                        NavigationLink {
                            DetailView(entry: entry)
                        } label: {
                            SearchResultRow(entry: entry)
                        }
                    }
                }
            }
            .navigationTitle("Search")
            .searchable(text: $viewModel.query, prompt: "Spells, monsters, feats...")
            .onSubmit(of: .search) {
                viewModel.search()
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
