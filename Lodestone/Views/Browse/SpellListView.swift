import SwiftUI

struct SpellListView: View {
    enum SortOrder: String, CaseIterable {
        case alphabetical = "A–Z"
        case byRank       = "By Rank"
        case byTradition  = "By Tradition"
    }

    static let traditions = ["Arcane", "Divine", "Occult", "Primal"]

    @State private var entries: [SpellEntry] = []
    @State private var isLoading = true
    @State private var searchText = ""
    @State private var sortOrder: SortOrder = .alphabetical
    @State private var selectedTradition: String = "Arcane"
    @Environment(\.colorScheme) private var colorScheme
    @Environment(SubscriptionService.self) private var subscriptionService

    // MARK: - Filtered

    private var filteredEntries: [SpellEntry] {
        let base: [SpellEntry]
        if searchText.isEmpty {
            base = entries
        } else {
            let q = searchText.lowercased()
            base = entries.filter { $0.title.lowercased().contains(q) }
        }
        if subscriptionService.isUnlocked { return base }
        return base.sorted { !$0.isPremium && $1.isPremium }
    }

    private var alphabeticallySorted: [SpellEntry] {
        filteredEntries.sorted { $0.title.localizedCompare($1.title) == .orderedAscending }
    }

    private var rankGroups: [(rank: Int, spells: [SpellEntry])] {
        var dict: [Int: [SpellEntry]] = [:]
        for spell in filteredEntries {
            dict[spell.rank, default: []].append(spell)
        }
        return dict.keys.sorted().map { rank in
            (rank, dict[rank]!.sorted { $0.title.localizedCompare($1.title) == .orderedAscending })
        }
    }

    private var traditionGroups: [(rank: Int, spells: [SpellEntry])] {
        let tradLower = selectedTradition.lowercased()
        let filtered = filteredEntries.filter { $0.traditions.lowercased().contains(tradLower) }
        var dict: [Int: [SpellEntry]] = [:]
        for spell in filtered {
            dict[spell.rank, default: []].append(spell)
        }
        return dict.keys.sorted().map { rank in
            (rank, dict[rank]!.sorted { $0.title.localizedCompare($1.title) == .orderedAscending })
        }
    }

    // MARK: - Body

    var body: some View {
        Group {
            if isLoading {
                ProgressView("Loading Spells...")
                    .tint(AppColors.adaptivePrimary(colorScheme))
            } else {
                VStack(spacing: 0) {
                    Picker("Sort", selection: $sortOrder) {
                        ForEach(SortOrder.allCases, id: \.self) { Text($0.rawValue).tag($0) }
                    }
                    .pickerStyle(.segmented)
                    .padding(.horizontal, AppSpacing.base)
                    .padding(.vertical, AppSpacing.sm)
                    .background(AppColors.adaptiveBackground(colorScheme).opacity(0.95))

                    if sortOrder == .byTradition {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: AppSpacing.sm) {
                                ForEach(Self.traditions, id: \.self) { tradition in
                                    TraditionChip(label: tradition, isSelected: tradition == selectedTradition) {
                                        selectedTradition = tradition
                                    }
                                }
                            }
                            .padding(.horizontal, AppSpacing.base)
                            .padding(.vertical, AppSpacing.sm)
                        }
                        .background(AppColors.adaptiveBackground(colorScheme).opacity(0.95))
                    }

                    Divider()

                    spellList
                }
            }
        }
        .navigationTitle("Spells")
        .searchable(text: $searchText, prompt: "Search Spells")
        .task { await loadEntries() }
    }

    @ViewBuilder
    private var spellList: some View {
        let isEmpty: Bool = {
            switch sortOrder {
            case .alphabetical:  return alphabeticallySorted.isEmpty
            case .byRank:        return rankGroups.isEmpty
            case .byTradition:   return traditionGroups.isEmpty
            }
        }()

        if isEmpty {
            ContentUnavailableView(
                "No Spells",
                systemImage: ContentType.spell.iconName,
                description: Text(searchText.isEmpty
                    ? "Content will appear here once the database is loaded."
                    : "No results for \"\(searchText)\".")
            )
        } else {
            List {
                switch sortOrder {
                case .alphabetical:
                    ForEach(alphabeticallySorted, id: \.id) { spell in
                        SpellRow(entry: spell, isUnlocked: subscriptionService.isUnlocked)
                    }
                case .byRank:
                    ForEach(rankGroups, id: \.rank) { group in
                        Section(header: GroupHeader(group.rank == 0 ? "Cantrips" : "Rank \(group.rank)")) {
                            ForEach(group.spells, id: \.id) { spell in
                                SpellRow(entry: spell, isUnlocked: subscriptionService.isUnlocked)
                            }
                        }
                    }
                case .byTradition:
                    ForEach(traditionGroups, id: \.rank) { group in
                        Section(header: GroupHeader(group.rank == 0 ? "Cantrips" : "Rank \(group.rank)")) {
                            ForEach(group.spells, id: \.id) { spell in
                                SpellRow(entry: spell, isUnlocked: subscriptionService.isUnlocked)
                            }
                        }
                    }
                }
            }
        }
    }

    private func loadEntries() async {
        do {
            try await DatabaseService.shared.open()
            let raw = try await DatabaseService.shared.browse(type: .spell)
            entries = raw.compactMap { $0 as? SpellEntry }
        } catch {
            entries = []
        }
        isLoading = false
    }
}

// MARK: - Spell Row

private struct SpellRow: View {
    let entry: SpellEntry
    let isUnlocked: Bool
    @Environment(\.colorScheme) private var colorScheme

    private var isLocked: Bool { entry.isPremium && !isUnlocked }
    private let accentColor = AppColors.accent

    var body: some View {
        NavigationLink { DetailView(entry: entry) } label: {
            HStack(spacing: AppSpacing.md) {
                VStack(alignment: .leading, spacing: 2) {
                    Text(entry.title)
                        .font(AppFonts.headline)
                        .foregroundStyle(isLocked
                            ? AppColors.adaptiveTextSecondary(colorScheme)
                            : AppColors.adaptiveTextPrimary(colorScheme))

                    if !entry.traditions.isEmpty {
                        Text(entry.traditions)
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
                        .accessibilityLabel("Premium content — requires subscription")
                } else if !entry.actions.isEmpty {
                    Text(entry.actions)
                        .font(AppFonts.chip(size: 11))
                        .foregroundStyle(accentColor)
                        .padding(.horizontal, AppSpacing.sm)
                        .padding(.vertical, 2)
                        .background(accentColor.opacity(0.12), in: Capsule())
                        .overlay(Capsule().strokeBorder(accentColor.opacity(0.3), lineWidth: 0.5))
                }
            }
            .padding(.vertical, 2)
        }
    }
}

// MARK: - Tradition Chip

private struct TraditionChip: View {
    let label: String
    let isSelected: Bool
    let action: () -> Void
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        Button(action: action) {
            Text(label)
                .font(AppFonts.chip(size: 12))
                .foregroundStyle(isSelected
                    ? AppColors.adaptivePrimary(colorScheme)
                    : AppColors.adaptiveTextSecondary(colorScheme))
                .padding(.horizontal, AppSpacing.md)
                .padding(.vertical, AppSpacing.xs)
                .background(
                    isSelected
                        ? AppColors.adaptivePrimary(colorScheme).opacity(0.15)
                        : AppColors.adaptiveSurface(colorScheme),
                    in: Capsule()
                )
                .overlay(
                    Capsule().strokeBorder(
                        isSelected
                            ? AppColors.adaptivePrimary(colorScheme).opacity(0.5)
                            : AppColors.adaptiveBorder(colorScheme),
                        lineWidth: 0.5
                    )
                )
        }
        .buttonStyle(.plain)
        .frame(minHeight: 44)
        .contentShape(Rectangle())
    }
}

#Preview {
    NavigationStack {
        SpellListView()
            .environment(SubscriptionService())
    }
}
