import SwiftUI

struct CategoryListView: View {
    let contentType: ContentType

    @State private var entries: [any ContentEntry] = []
    @State private var isLoading = true
    @State private var searchText = ""
    @Environment(\.colorScheme) private var colorScheme

    private var filteredEntries: [any ContentEntry] {
        guard !searchText.isEmpty else { return entries }
        let q = searchText.lowercased()
        return entries.filter { $0.title.lowercased().contains(q) }
    }

    var body: some View {
        Group {
            if isLoading {
                ProgressView("Loading \(contentType.displayName)...")
                    .tint(AppColors.adaptivePrimary(colorScheme))
            } else if filteredEntries.isEmpty {
                ContentUnavailableView(
                    "No \(contentType.displayName)",
                    systemImage: contentType.iconName,
                    description: Text(searchText.isEmpty
                        ? "Content will appear here once the database is loaded."
                        : "No results for \"\(searchText)\".")
                )
            } else {
                List(filteredEntries, id: \.id) { entry in
                    NavigationLink(value: BrowseDestination.detail(AnyContentEntry(erasing: entry))) {
                        CategoryEntryRow(entry: entry)
                    }
                }
            }
        }
        .navigationTitle(contentType.displayName)
        .searchable(text: $searchText, prompt: "Search \(contentType.displayName)")
        .task {
            await loadEntries()
        }
    }

    private func loadEntries() async {
        do {
            try await DatabaseService.shared.open()
            entries = try await DatabaseService.shared.browse(type: contentType)
        } catch {
            entries = []
        }
        isLoading = false
    }
}

// MARK: - Category Entry Row

private struct CategoryEntryRow: View {
    let entry: any ContentEntry
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        HStack(spacing: AppSpacing.md) {
            ContentTypeIconBadge(type: entry.contentType, size: 32)

            VStack(alignment: .leading, spacing: 2) {
                Text(entry.title)
                    .font(AppFonts.headline)
                    .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))

                if !entry.summary.isEmpty {
                    Text(entry.summary)
                        .font(AppFonts.caption)
                        .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                        .lineLimit(1)
                }
            }

            Spacer()

            if entry.isPremium {
                PremiumBadge(compact: true)
            } else if entry.source != "Core Rulebook" {
                SourceBadge(text: entry.source)
            }
        }
        .padding(.vertical, 2)
    }
}

#Preview {
    NavigationStack {
        CategoryListView(contentType: .spell)
    }
}
