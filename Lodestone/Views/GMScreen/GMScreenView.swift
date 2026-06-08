import SwiftUI

struct GMScreenView: View {
    @State private var viewModel = GMScreenViewModel()
    @State private var searchText = ""
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.isEmbeddedInSplitView) private var isEmbedded

    private var displayedReferences: [GMScreenViewModel.QuickReference] {
        let filtered = viewModel.filteredReferences
        if searchText.isEmpty { return filtered }
        let lower = searchText.lowercased()
        return filtered.filter {
            $0.title.lowercased().contains(lower) ||
            $0.content.lowercased().contains(lower)
        }
    }

    var body: some View {
        let inner = List {
                // Category filter chips
                Section {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: AppSpacing.sm) {
                            GMCategoryChip(title: "All", isSelected: viewModel.selectedCategory == nil) {
                                viewModel.selectedCategory = nil
                            }
                            ForEach(viewModel.categories, id: \.self) { category in
                                GMCategoryChip(
                                    title: category,
                                    isSelected: viewModel.selectedCategory == category
                                ) {
                                    viewModel.selectedCategory = category
                                }
                            }
                        }
                        .padding(.horizontal, AppSpacing.xs)
                    }
                    .listRowInsets(EdgeInsets())
                    .listRowBackground(Color.clear)
                }

                if displayedReferences.isEmpty {
                    ContentUnavailableView.search(text: searchText)
                } else {
                    ForEach(displayedReferences) { reference in
                        Section(reference.title) {
                            Text(reference.content.trimmingCharacters(in: .whitespacesAndNewlines))
                                .font(.system(.caption, design: .monospaced))
                                .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                                .textSelection(.enabled)
                                .lineSpacing(3)
                        }
                    }
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("GM Tools")
            .searchable(text: $searchText, prompt: "Search tables…")
            .navigationDestination(for: BrowseDestination.self) { destination in
                switch destination {
                case .detail(let wrapped):                          DetailView(entry: wrapped)
                case .contentTypeList(let type):                    CategoryListView(contentType: type)
                case .bookContents(let book):                       BookContentsView(source: book)
                case .recentEntry(let recent):                      RecentEntryLoader(recent: recent)
                case .itemCategory(let name, let items):            ItemCategoryDetailView(categoryName: name, items: items)
                case .itemSpecialCategory(let category, let items): ItemSpecialCategoryView(category: category, items: items)
                }
            }

        if isEmbedded {
            inner
        } else {
            NavigationStack { inner }
        }
    }
}

private struct GMCategoryChip: View {
    let title: String
    let isSelected: Bool
    let action: () -> Void

    @Environment(\.colorScheme) private var colorScheme

    private var activeColor: Color {
        colorScheme == .dark ? AppColors.secondaryDark : AppColors.secondary
    }

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(AppFonts.chip())
                .padding(.horizontal, AppSpacing.md)
                .padding(.vertical, AppSpacing.sm)
                .background(
                    isSelected
                        ? activeColor
                        : AppColors.adaptiveSurfaceElevated(colorScheme),
                    in: Capsule()
                )
                .foregroundStyle(
                    isSelected
                        ? Color.white
                        : AppColors.adaptiveTextPrimary(colorScheme)
                )
        }
        .buttonStyle(.plain)
        .frame(minHeight: 44)
        .contentShape(Rectangle())
        .accessibilityLabel(title)
        .accessibilityAddTraits(isSelected ? [.isButton, .isSelected] : .isButton)
    }
}

#Preview {
    GMScreenView()
}
