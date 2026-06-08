import SwiftUI

struct SkillListView: View {
    @State private var entries: [RuleEntry] = []
    @State private var isLoading = true
    @State private var searchText = ""
    @Environment(\.colorScheme) private var colorScheme
    @Environment(SubscriptionService.self) private var subscriptionService

    private var filtered: [RuleEntry] {
        var base = entries
        if !searchText.isEmpty {
            let q = searchText.lowercased()
            base = base.filter { $0.title.lowercased().contains(q) || $0.summary.lowercased().contains(q) }
        }
        if !subscriptionService.isUnlocked {
            base = base.sorted { !$0.isPremium && $1.isPremium }
        }
        return base
    }

    var body: some View {
        Group {
            if isLoading {
                ProgressView("Loading Skills...")
                    .tint(AppColors.adaptivePrimary(colorScheme))
            } else if filtered.isEmpty {
                ContentUnavailableView(
                    "No Skills",
                    systemImage: ContentType.skill.iconName,
                    description: Text(searchText.isEmpty
                        ? "Content will appear here once the database is loaded."
                        : "No results for \"\(searchText)\".")
                )
            } else {
                List {
                    ForEach(filtered, id: \.id) { skill in
                        NavigationLink(value: BrowseDestination.detail(AnyContentEntry(erasing: skill))) {
                            SkillRow(entry: skill, isUnlocked: subscriptionService.isUnlocked)
                        }
                    }
                }
            }
        }
        .navigationTitle("Skills")
        .searchable(text: $searchText, prompt: "Search Skills")
        .task { await loadEntries() }
    }

    private func loadEntries() async {
        do {
            try await DatabaseService.shared.open()
            entries = try await DatabaseService.shared.browseSkills()
        } catch {
            entries = []
        }
        isLoading = false
    }
}

// MARK: - Skill Row

private struct SkillRow: View {
    let entry: RuleEntry
    let isUnlocked: Bool
    @Environment(\.colorScheme) private var colorScheme

    private var isLocked: Bool { entry.isPremium && !isUnlocked }
    private let skillColor = AppColors.contentTypeColor(.skill)

    var body: some View {
        HStack(spacing: AppSpacing.md) {
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
                        .lineLimit(2)
                }
            }

            Spacer()

            if isLocked {
                Image(systemName: "lock.fill")
                    .font(.caption)
                    .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
            }
        }
        .padding(.vertical, AppSpacing.sm)
    }
}

#Preview {
    NavigationStack {
        SkillListView()
            .environment(SubscriptionService())
    }
}
