import SwiftUI

struct MonsterListView: View {
    enum SortOrder: String, CaseIterable {
        case alphabetical = "A–Z"
        case byLevel      = "By Level"
        case byType       = "By Type"
    }

    @State private var entries: [MonsterEntry] = []
    @State private var isLoading = true
    @State private var searchText = ""
    @State private var sortOrder: SortOrder = .alphabetical
    @State private var selectedType: String = "All"
    @Environment(\.colorScheme) private var colorScheme
    @Environment(SubscriptionService.self) private var subscriptionService

    // MARK: - Filters

    private var allTypes: [String] {
        let found = Set(entries.map { $0.creatureType.isEmpty ? "Other" : $0.creatureType }).sorted()
        return ["All"] + found
    }

    private var filteredEntries: [MonsterEntry] {
        var base = entries
        if selectedType != "All" {
            base = base.filter {
                let t = $0.creatureType.isEmpty ? "Other" : $0.creatureType
                return t == selectedType
            }
        }
        if !searchText.isEmpty {
            let q = searchText.lowercased()
            base = base.filter { $0.title.lowercased().contains(q) }
        }
        if !subscriptionService.isUnlocked {
            base = base.sorted { !$0.isPremium && $1.isPremium }
        }
        return base
    }

    private var alphabeticalGroups: [(letter: String, monsters: [MonsterEntry])] {
        let sorted = filteredEntries.sorted { $0.title.localizedCompare($1.title) == .orderedAscending }
        var dict: [String: [MonsterEntry]] = [:]
        for monster in sorted {
            let letter = String(monster.title.prefix(1)).uppercased()
            dict[letter, default: []].append(monster)
        }
        return dict.keys.sorted().map { ($0, dict[$0]!) }
    }

    private var levelGroups: [(level: Int, monsters: [MonsterEntry])] {
        var dict: [Int: [MonsterEntry]] = [:]
        for monster in filteredEntries {
            dict[monster.level, default: []].append(monster)
        }
        return dict.keys.sorted().map { level in
            (level, dict[level]!.sorted { $0.title.localizedCompare($1.title) == .orderedAscending })
        }
    }

    private var typeGroups: [(type: String, monsters: [MonsterEntry])] {
        var dict: [String: [MonsterEntry]] = [:]
        for monster in filteredEntries {
            let t = monster.creatureType.isEmpty ? "Other" : monster.creatureType
            dict[t, default: []].append(monster)
        }
        return dict.keys.sorted().map { type in
            (type, dict[type]!.sorted { $0.title.localizedCompare($1.title) == .orderedAscending })
        }
    }

    // MARK: - Body

    var body: some View {
        Group {
            if isLoading {
                ProgressView("Loading Monsters...")
                    .tint(AppColors.adaptivePrimary(colorScheme))
            } else if filteredEntries.isEmpty {
                ContentUnavailableView(
                    "No Monsters",
                    systemImage: ContentType.monster.iconName,
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
                                ForEach(group.monsters, id: \.id) { monster in
                                    MonsterRow(entry: monster, isUnlocked: subscriptionService.isUnlocked)
                                }
                            }
                        }
                    case .byLevel:
                        ForEach(levelGroups, id: \.level) { group in
                            Section(header: GroupHeader("Level \(group.level)")) {
                                ForEach(group.monsters, id: \.id) { monster in
                                    MonsterRow(entry: monster, isUnlocked: subscriptionService.isUnlocked)
                                }
                            }
                        }
                    case .byType:
                        ForEach(typeGroups, id: \.type) { group in
                            Section(header: GroupHeader(group.type)) {
                                ForEach(group.monsters, id: \.id) { monster in
                                    MonsterRow(entry: monster, isUnlocked: subscriptionService.isUnlocked)
                                }
                            }
                        }
                    }
                }
            }
        }
        .navigationTitle("Monsters")
        .searchable(text: $searchText, prompt: "Search Monsters")
        .safeAreaInset(edge: .top, spacing: 0) {
            VStack(spacing: 0) {
                Picker("Sort", selection: $sortOrder) {
                    ForEach(SortOrder.allCases, id: \.self) { Text($0.rawValue).tag($0) }
                }
                .pickerStyle(.segmented)
                .padding(.horizontal, AppSpacing.base)
                .padding(.vertical, AppSpacing.sm)
                .background(AppColors.adaptiveBackground(colorScheme).opacity(0.95))
                Divider()
            }
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Menu {
                    ForEach(allTypes, id: \.self) { type in
                        Button {
                            selectedType = type
                        } label: {
                            if selectedType == type {
                                Label(type, systemImage: "checkmark")
                            } else {
                                Text(type)
                            }
                        }
                    }
                } label: {
                    Label(
                        selectedType == "All" ? "Filter" : selectedType,
                        systemImage: selectedType == "All"
                            ? "line.3.horizontal.decrease.circle"
                            : "line.3.horizontal.decrease.circle.fill"
                    )
                    .font(AppFonts.body)
                }
            }
        }
        .task { await loadEntries() }
    }

    private func loadEntries() async {
        do {
            try await DatabaseService.shared.open()
            let raw = try await DatabaseService.shared.browse(type: .monster)
            entries = raw.compactMap { $0 as? MonsterEntry }
        } catch {
            entries = []
        }
        isLoading = false
    }
}

// MARK: - Monster Row

private struct MonsterRow: View {
    let entry: MonsterEntry
    let isUnlocked: Bool
    @Environment(\.colorScheme) private var colorScheme

    private var isLocked: Bool { entry.isPremium && !isUnlocked }
    private let monsterColor = AppColors.contentTypeColor(.monster)

    var body: some View {
        NavigationLink { DetailView(entry: entry) } label: {
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
                            .lineLimit(1)
                    }
                }

                Spacer()

                if isLocked {
                    Image(systemName: "lock.fill")
                        .font(.caption)
                        .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                } else {
                    Text("Lvl \(entry.level)")
                        .font(AppFonts.chip(size: 11))
                        .foregroundStyle(monsterColor)
                        .padding(.horizontal, AppSpacing.sm)
                        .padding(.vertical, 3)
                        .background(monsterColor.opacity(0.12), in: Capsule())
                        .overlay(Capsule().strokeBorder(monsterColor.opacity(0.3), lineWidth: 0.5))
                }
            }
            .padding(.vertical, 2)
        }
    }
}

#Preview {
    NavigationStack {
        MonsterListView()
            .environment(SubscriptionService())
    }
}
