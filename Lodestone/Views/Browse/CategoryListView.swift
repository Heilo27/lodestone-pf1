import SwiftUI

struct CategoryListView: View {
    let contentType: ContentType
    @State private var viewModel = BrowseViewModel()

    var body: some View {
        Group {
            if viewModel.isLoading {
                ProgressView("Loading...")
            } else if viewModel.entries.isEmpty {
                ContentUnavailableView(
                    "No \(contentType.displayName)",
                    systemImage: contentType.iconName,
                    description: Text("Content will appear here once the database is loaded.")
                )
            } else {
                List(viewModel.entries, id: \.id) { entry in
                    NavigationLink(entry.title) {
                        DetailView(entry: entry)
                    }
                }
            }
        }
        .navigationTitle(contentType.displayName)
        .task {
            await viewModel.loadEntries(for: contentType)
        }
    }
}

#Preview {
    NavigationStack {
        CategoryListView(contentType: .spell)
    }
}
