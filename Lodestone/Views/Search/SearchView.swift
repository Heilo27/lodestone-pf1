import SwiftUI

private let sectionLimit = 20

struct SearchView: View {
    @State private var viewModel = SearchViewModel()
    @Environment(\.isEmbeddedInSplitView) private var isEmbedded

    // MARK: - Grouped results (max 20 per section)

    private var groupedResults: [(type: ContentType, entries: [any ContentEntry], total: Int)] {
        var dict: [ContentType: [any ContentEntry]] = [:]
        for entry in viewModel.results {
            dict[entry.contentType, default: []].append(entry)
        }
        return ContentType.allCases.compactMap { type in
            guard let entries = dict[type], !entries.isEmpty else { return nil }
            return (type: type, entries: Array(entries.prefix(sectionLimit)), total: entries.count)
        }
    }

    var body: some View {
        let inner = VStack(spacing: 0) {
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
                                .accessibilityHint("Repeats this search")
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
                        ForEach(groupedResults, id: \.type) { group in
                            Section(group.type.displayName) {
                                ForEach(group.entries, id: \.id) { entry in
                                    NavigationLink(value: BrowseDestination.detail(AnyContentEntry(erasing: entry))) {
                                        SearchResultRow(entry: entry)
                                    }
                                }
                                if group.total > sectionLimit {
                                    Button {
                                        viewModel.toggleFilter(group.type)
                                    } label: {
                                        Text("Show all \(group.total) results")
                                            .font(AppFonts.caption)
                                            .foregroundStyle(.secondary)
                                            .frame(maxWidth: .infinity, alignment: .center)
                                    }
                                    .buttonStyle(.plain)
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Search")
            .searchable(text: $viewModel.query, prompt: "Spells, monsters, feats...")
            .navigationDestination(for: BrowseDestination.self) { destination in
                if case .detail(let wrapped) = destination {
                    DetailView(entry: wrapped)
                }
            }
            .onChange(of: viewModel.query) {
                viewModel.search()
            }

        if isEmbedded {
            inner
        } else {
            NavigationStack { inner }
        }
    }
}

#Preview {
    SearchView()
}
