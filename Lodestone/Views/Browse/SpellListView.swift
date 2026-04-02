import SwiftUI

struct SpellListView: View {
    enum SortOrder: String, CaseIterable {
        case alphabetical = "A–Z"
        case byLevel = "By Level"
        case byClass = "By Class"
    }

    static let spellClasses = [
        "Bard", "Cleric", "Druid", "Paladin", "Ranger",
        "Sorcerer/Wizard", "Witch", "Alchemist", "Inquisitor",
        "Magus", "Summoner", "Oracle"
    ]

    @State private var entries: [SpellEntry] = []
    @State private var isLoading = true
    @State private var searchText = ""
    @State private var sortOrder: SortOrder = .alphabetical
    @State private var selectedClass: String = "Sorcerer/Wizard"
    @Environment(\.colorScheme) private var colorScheme
    @Environment(SubscriptionService.self) private var subscriptionService

    // MARK: - Level Helpers

    /// Minimum spell level across all classes in the levels string.
    private func minSpellLevel(_ levels: String) -> Int {
        let pattern = /\b(\d+)\b/
        let numbers = levels.matches(of: pattern).compactMap { Int($0.output.1) }
        return numbers.min() ?? 0
    }

    /// Level for a specific class in the levels string (case-insensitive).
    private func levelForClass(_ levels: String, className: String) -> Int? {
        let lower = levels.lowercased()
        let classLower = className.lowercased()
        // Try to find "classname N"
        guard let range = lower.range(of: classLower) else { return nil }
        let afterClass = String(lower[range.upperBound...])
        // Skip whitespace and optional "/"" variants, then grab the number
        let trimmed = afterClass.trimmingCharacters(in: .whitespaces)
        if trimmed.hasPrefix("/") || trimmed.hasPrefix(",") { return nil }
        // Find first integer after class name
        let numberPattern = /^\s*(\d+)/
        if let match = trimmed.firstMatch(of: numberPattern) {
            return Int(match.output.1)
        }
        return nil
    }

    // MARK: - Filtered & Sorted Data

    private var filteredEntries: [SpellEntry] {
        let base: [SpellEntry]
        if searchText.isEmpty {
            base = entries
        } else {
            let q = searchText.lowercased()
            base = entries.filter { $0.title.lowercased().contains(q) }
        }
        if subscriptionService.isUnlocked { return base }
        return base.sorted { ($0.isPremium ? 1 : 0) < ($1.isPremium ? 1 : 0) }
    }

    private var alphabeticalGroups: [(letter: String, spells: [SpellEntry])] {
        let sorted = filteredEntries.sorted { $0.title.localizedCompare($1.title) == .orderedAscending }
        var dict: [String: [SpellEntry]] = [:]
        for spell in sorted {
            let letter = String(spell.title.prefix(1)).uppercased()
            dict[letter, default: []].append(spell)
        }
        return dict.keys.sorted().map { letter in
            (letter, dict[letter]!)
        }
    }

    private var levelGroups: [(level: Int, spells: [SpellEntry])] {
        var dict: [Int: [SpellEntry]] = [:]
        for spell in filteredEntries {
            let level = minSpellLevel(spell.levels)
            dict[level, default: []].append(spell)
        }
        return dict.keys.sorted().map { level in
            (level, dict[level]!.sorted { $0.title.localizedCompare($1.title) == .orderedAscending })
        }
    }

    private var classFilteredLevelGroups: [(level: Int, spells: [SpellEntry])] {
        let classLower = selectedClass.lowercased()
        // For "sorcerer/wizard", accept either "sorcerer/wizard" or both "sorcerer" and "wizard"
        let filtered = filteredEntries.filter { spell in
            spell.levels.lowercased().contains(classLower)
        }
        var dict: [Int: [SpellEntry]] = [:]
        for spell in filtered {
            let level = levelForClass(spell.levels, className: selectedClass)
                ?? minSpellLevel(spell.levels)
            dict[level, default: []].append(spell)
        }
        return dict.keys.sorted().map { level in
            (level, dict[level]!.sorted { $0.title.localizedCompare($1.title) == .orderedAscending })
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
                    // Sort picker
                    spellSortPicker

                    // Class chips (only when By Class is selected)
                    if sortOrder == .byClass {
                        classChipPicker
                    }

                    Divider()

                    spellList
                }
            }
        }
        .navigationTitle("Spells")
        .searchable(text: $searchText, prompt: "Search Spells")
        .task {
            await loadEntries()
        }
    }

    // MARK: - Subviews

    private var spellSortPicker: some View {
        Picker("Sort", selection: $sortOrder) {
            ForEach(SortOrder.allCases, id: \.self) { option in
                Text(option.rawValue).tag(option)
            }
        }
        .pickerStyle(.segmented)
        .padding(.horizontal, AppSpacing.base)
        .padding(.vertical, AppSpacing.sm)
        .background(AppColors.adaptiveBackground(colorScheme).opacity(0.95))
    }

    private var classChipPicker: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: AppSpacing.sm) {
                ForEach(SpellListView.spellClasses, id: \.self) { cls in
                    ClassChip(label: cls, isSelected: cls == selectedClass) {
                        selectedClass = cls
                    }
                }
            }
            .padding(.horizontal, AppSpacing.base)
            .padding(.vertical, AppSpacing.sm)
        }
        .background(AppColors.adaptiveBackground(colorScheme).opacity(0.95))
    }

    @ViewBuilder
    private var spellList: some View {
        let isEmpty: Bool = {
            switch sortOrder {
            case .alphabetical: return alphabeticalGroups.isEmpty
            case .byLevel: return levelGroups.isEmpty
            case .byClass: return classFilteredLevelGroups.isEmpty
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
                    ForEach(alphabeticalGroups, id: \.letter) { group in
                        Section(header: GroupHeader(group.letter)) {
                            ForEach(group.spells, id: \.id) { spell in
                                SpellRow(entry: spell, isUnlocked: subscriptionService.isUnlocked)
                            }
                        }
                    }
                case .byLevel:
                    ForEach(levelGroups, id: \.level) { group in
                        Section(header: GroupHeader("Level \(group.level)")) {
                            ForEach(group.spells, id: \.id) { spell in
                                SpellRow(entry: spell, isUnlocked: subscriptionService.isUnlocked)
                            }
                        }
                    }
                case .byClass:
                    ForEach(classFilteredLevelGroups, id: \.level) { group in
                        Section(header: GroupHeader("Level \(group.level)")) {
                            ForEach(group.spells, id: \.id) { spell in
                                SpellRow(entry: spell, isUnlocked: subscriptionService.isUnlocked)
                            }
                        }
                    }
                }
            }
        }
    }

    // MARK: - Load

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
    private let spellColor = AppColors.contentTypeColor(.spell)
    private let accentColor = AppColors.accent

    var body: some View {
        NavigationLink(value: BrowseDestination.detail(AnyContentEntry(erasing: entry))) {
            HStack(spacing: AppSpacing.md) {
                VStack(alignment: .leading, spacing: 2) {
                    Text(entry.title)
                        .font(AppFonts.headline)
                        .foregroundStyle(isLocked
                            ? AppColors.adaptiveTextSecondary(colorScheme)
                            : AppColors.adaptiveTextPrimary(colorScheme))

                    if !entry.school.isEmpty {
                        Text(entry.school)
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
                } else {
                    // School badge
                    if !entry.school.isEmpty {
                        Text(entry.school)
                            .font(AppFonts.chip())
                            .foregroundStyle(accentColor)
                            .padding(.horizontal, AppSpacing.sm)
                            .padding(.vertical, 2)
                            .background(accentColor.opacity(0.12), in: Capsule())
                            .overlay(Capsule().strokeBorder(accentColor.opacity(0.3), lineWidth: 0.5))
                    }
                }
            }
            .padding(.vertical, AppSpacing.sm)
        }
    }
}

// MARK: - Class Chip

private struct ClassChip: View {
    let label: String
    let isSelected: Bool
    let action: () -> Void
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        Button(action: action) {
            Text(label)
                .font(AppFonts.chip())
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
    }
}
