import SwiftUI

struct MonsterListView: View {
    enum SortOrder: String, CaseIterable {
        case alphabetical = "A–Z"
        case byCR = "By CR"
    }

    @State private var entries: [MonsterEntry] = []
    @State private var isLoading = true
    @State private var searchText = ""
    @State private var sortOrder: SortOrder = .alphabetical
    @Environment(\.colorScheme) private var colorScheme
    @Environment(SubscriptionService.self) private var subscriptionService

    // MARK: - CR Sort Helper

    private func crSortValue(_ cr: String) -> Double {
        switch cr {
        case "1/8": return 0.125
        case "1/6": return 0.167
        case "1/4": return 0.25
        case "1/3": return 0.333
        case "1/2": return 0.5
        default:
            return Double(cr) ?? 99
        }
    }

    // MARK: - Filtered & Sorted Data

    private var filteredEntries: [MonsterEntry] {
        let base: [MonsterEntry]
        if searchText.isEmpty {
            base = entries
        } else {
            let q = searchText.lowercased()
            base = entries.filter { $0.title.lowercased().contains(q) }
        }
        if subscriptionService.isUnlocked {
            return base
        }
        return base.sorted { ($0.isPremium ? 1 : 0) < ($1.isPremium ? 1 : 0) }
    }

    private var sortedEntries: [MonsterEntry] {
        switch sortOrder {
        case .alphabetical:
            return filteredEntries.sorted { $0.title.localizedCompare($1.title) == .orderedAscending }
        case .byCR:
            return filteredEntries.sorted {
                let aVal = crSortValue($0.challengeRating)
                let bVal = crSortValue($1.challengeRating)
                if aVal != bVal { return aVal < bVal }
                return $0.title.localizedCompare($1.title) == .orderedAscending
            }
        }
    }

    private var crGroups: [(cr: String, monsters: [MonsterEntry])] {
        var seen: [String] = []
        var result: [(String, [MonsterEntry])] = []
        for monster in sortedEntries {
            let cr = monster.challengeRating.isEmpty ? "?" : monster.challengeRating
            if !seen.contains(cr) {
                seen.append(cr)
                result.append((cr, []))
            }
            if let idx = result.firstIndex(where: { $0.0 == cr }) {
                result[idx].1.append(monster)
            }
        }
        return result.map { ($0.0, $0.1) }
    }

    private var alphabeticalGroups: [(letter: String, monsters: [MonsterEntry])] {
        var dict: [String: [MonsterEntry]] = [:]
        for monster in sortedEntries {
            let letter = String(monster.title.prefix(1)).uppercased()
            dict[letter, default: []].append(monster)
        }
        return dict.keys.sorted().map { letter in
            (letter, dict[letter]!.sorted { $0.title.localizedCompare($1.title) == .orderedAscending })
        }
    }

    // MARK: - Body

    var body: some View {
        Group {
            if isLoading {
                ProgressView("Loading Monsters...")
                    .tint(AppColors.adaptivePrimary(colorScheme))
            } else if sortedEntries.isEmpty {
                ContentUnavailableView(
                    "No Monsters",
                    systemImage: ContentType.monster.iconName,
                    description: Text(searchText.isEmpty
                        ? "Content will appear here once the database is loaded."
                        : "No results for \"\(searchText)\".")
                )
            } else {
                List {
                    if sortOrder == .byCR {
                        ForEach(crGroups, id: \.cr) { group in
                            Section(header: GroupHeader("CR \(group.cr)")) {
                                ForEach(group.monsters, id: \.id) { monster in
                                    MonsterRow(entry: monster, isUnlocked: subscriptionService.isUnlocked)
                                }
                            }
                        }
                    } else {
                        ForEach(alphabeticalGroups, id: \.letter) { group in
                            Section(header: GroupHeader(group.letter)) {
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
            SortPicker(selection: $sortOrder)
        }
        .task {
            await loadEntries()
        }
    }

    // MARK: - Load

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
        NavigationLink {
            DetailView(entry: entry)
        } label: {
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
                    // CR badge
                    if !entry.challengeRating.isEmpty {
                        Text("CR \(entry.challengeRating)")
                            .font(AppFonts.chip())
                            .foregroundStyle(monsterColor)
                            .padding(.horizontal, AppSpacing.sm)
                            .padding(.vertical, 3)
                            .background(monsterColor.opacity(0.12), in: Capsule())
                            .overlay(Capsule().strokeBorder(monsterColor.opacity(0.3), lineWidth: 0.5))
                    }
                }
            }
            .padding(.vertical, AppSpacing.sm)
        }
    }
}

// MARK: - Reusable Sort Picker

private struct SortPicker<T: RawRepresentable & Hashable & CaseIterable>: View where T.RawValue == String, T.AllCases: RandomAccessCollection {
    @Binding var selection: T
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        Picker("Sort", selection: $selection) {
            ForEach(Array(T.allCases), id: \.self) { option in
                Text(option.rawValue).tag(option)
            }
        }
        .pickerStyle(.segmented)
        .padding(.horizontal, AppSpacing.base)
        .padding(.vertical, AppSpacing.sm)
        .background(AppColors.adaptiveBackground(colorScheme).opacity(0.95))
    }
}

#Preview {
    NavigationStack {
        MonsterListView()
    }
}
