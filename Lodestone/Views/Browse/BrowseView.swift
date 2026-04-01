import SwiftUI

struct BrowseView: View {
    @State private var viewModel = BrowseViewModel()

    var body: some View {
        NavigationStack {
            List(viewModel.categories) { category in
                NavigationLink(value: category) {
                    BrowseRowView(
                        contentType: category,
                        count: viewModel.categoryCounts[category]
                    )
                }
            }
            .navigationTitle("Browse")
            .navigationDestination(for: ContentType.self) { category in
                CategoryListView(contentType: category)
            }
            .task {
                await viewModel.loadCounts()
            }
        }
    }
}

#Preview {
    BrowseView()
}
