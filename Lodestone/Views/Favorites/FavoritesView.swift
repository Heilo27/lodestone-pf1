import SwiftUI

struct FavoritesView: View {
    @Environment(FavoritesService.self) private var favoritesService
    @State private var viewModel: FavoritesViewModel?
    @Environment(\.isEmbeddedInSplitView) private var isEmbedded

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
                        List(vm.entries, id: \.id) { entry in
                            NavigationLink(value: BrowseDestination.detail(AnyContentEntry(erasing: entry))) {
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
                                    vm.removeFavorite(entry.id)
                                } label: {
                                    Label("Remove", systemImage: "heart.slash")
                                }
                            }
                        }
                    }
                } else {
                    ProgressView()
                }
            }
            .navigationTitle("Favorites")
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
