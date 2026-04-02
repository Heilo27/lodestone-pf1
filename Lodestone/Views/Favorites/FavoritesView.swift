import SwiftUI

struct FavoritesView: View {
    @Environment(FavoritesService.self) private var favoritesService
    @Environment(\.colorScheme) private var colorScheme
    @State private var viewModel = FavoritesViewModel()

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
                } else {
                    List(viewModel.entries, id: \.id) { entry in
                        NavigationLink {
                            DetailView(entry: entry)
                        } label: {
                            HStack(spacing: AppSpacing.md) {
                                ContentTypeIconBadge(type: entry.contentType, size: 32)
                                VStack(alignment: .leading, spacing: 2) {
                                    Text(entry.title)
                                        .font(AppFonts.headline)
                                        .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                                    Text(entry.contentType.singularName)
                                        .font(AppFonts.caption)
                                        .foregroundStyle(.secondary)
                                }
                            }
                        }
                        .swipeActions(edge: .trailing) {
                            Button(role: .destructive) {
                                favoritesService.remove(entry.id)
                                viewModel.removeFavorite(entry.id)
                            } label: {
                                Label("Remove", systemImage: "heart.slash")
                            }
                        }
                    }
                }
            }
            .navigationTitle("Favorites")
            .task(id: favoritesService.favorites) {
                await viewModel.loadFavorites(favorites: favoritesService.favorites)
            }
        }
    }
}

#Preview {
    FavoritesView()
}
