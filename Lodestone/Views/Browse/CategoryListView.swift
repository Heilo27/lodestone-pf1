import SwiftUI

struct CategoryListView: View {
    let contentType: ContentType

    @State private var entries: [any ContentEntry] = []
    @State private var isLoading = true
    @State private var searchText = ""
    @Environment(\.colorScheme) private var colorScheme
    @Environment(SubscriptionService.self) private var subscriptionService

    private var filteredEntries: [any ContentEntry] {
        let base: [any ContentEntry]
        if searchText.isEmpty {
            base = entries
        } else {
            let q = searchText.lowercased()
            base = entries.filter { $0.title.lowercased().contains(q) }
        }
        // When not unlocked, show free entries first, then premium (locked) entries below
        if subscriptionService.isUnlocked { return base }
        return base.sorted { ($0.isPremium ? 1 : 0) < ($1.isPremium ? 1 : 0) }
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
                    NavigationLink {
                        DetailView(entry: entry)
                    } label: {
                        CategoryEntryRow(entry: entry, isUnlocked: subscriptionService.isUnlocked)
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
    let isUnlocked: Bool
    @Environment(\.colorScheme) private var colorScheme

    private var isLocked: Bool { entry.isPremium && !isUnlocked }

    var body: some View {
        HStack(spacing: AppSpacing.md) {
            ContentTypeIconBadge(type: entry.contentType, size: 32)
                .opacity(isLocked ? 0.4 : 1)

            VStack(alignment: .leading, spacing: 2) {
                Text(entry.title)
                    .font(AppFonts.headline)
                    .foregroundStyle(isLocked
                        ? AppColors.adaptiveTextSecondary(colorScheme)
                        : AppColors.adaptiveTextPrimary(colorScheme))

                if !entry.summary.isEmpty {
                    Text(entry.summary)
                        .font(AppFonts.caption)
                        .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                        .lineLimit(1)
                }
            }

            Spacer()

            if isLocked {
                Image(systemName: "lock.fill")
                    .font(.caption)
                    .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
            } else if entry.isPremium {
                // Unlocked premium — show source badge instead of lock
                SourceBadge(text: entry.source)
            } else if entry.source != "Core Rulebook" {
                SourceBadge(text: entry.source)
            }
        }
        .padding(.vertical, AppSpacing.sm)
    }
}

#Preview {
    NavigationStack {
        CategoryListView(contentType: .spell)
    }
}
