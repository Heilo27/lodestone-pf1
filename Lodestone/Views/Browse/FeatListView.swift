import SwiftUI

struct FeatListView: View {
    enum SortOrder: String, CaseIterable {
        case byType    = "By Type"
        case prereqs   = "Prerequisites"
    }

    // Display order for known feat types
    static let orderedFeatTypes = [
        "Combat", "General", "Metamagic", "Teamwork", "Item Creation",
        "Critical", "Grit", "Style", "Performance", "Racial", "Monster", "Mythic"
    ]

    @State private var entries: [FeatEntry] = []
    @State private var isLoading = true
    @State private var searchText = ""
    @State private var sortOrder: SortOrder = .byType
    @State private var selectedType: String = "All"
    @Environment(\.colorScheme) private var colorScheme
    @Environment(SubscriptionService.self) private var subscriptionService

    // MARK: - Computed

    private var allTypes: [String] {
        let found = Set(entries.map { $0.featType.isEmpty ? "Other" : $0.featType })
        let ordered = Self.orderedFeatTypes.filter { found.contains($0) }
        let remaining = found.subtracting(Self.orderedFeatTypes).subtracting(["Other"]).sorted()
        let hasOther = found.contains("Other") || entries.contains { $0.featType.isEmpty }
        return ["All"] + ordered + remaining + (hasOther ? ["Other"] : [])
    }

    private var baseEntries: [FeatEntry] {
        var base = entries
        if selectedType != "All" {
            base = base.filter {
                let t = $0.featType.isEmpty ? "Other" : $0.featType
                return t == selectedType
            }
        }
        if !searchText.isEmpty {
            let q = searchText.lowercased()
            base = base.filter { $0.title.lowercased().contains(q) }
        }
        if !subscriptionService.isUnlocked {
            base = base.sorted { ($0.isPremium ? 1 : 0) < ($1.isPremium ? 1 : 0) }
        }
        return base
    }

    // Grouped by type in display order
    private var typeGroups: [(type: String, feats: [FeatEntry])] {
        var dict: [String: [FeatEntry]] = [:]
        for feat in baseEntries {
            let type = feat.featType.isEmpty ? "Other" : feat.featType
            dict[type, default: []].append(feat)
        }

        if selectedType != "All" {
            let sorted = (dict[selectedType] ?? []).sorted { $0.title.localizedCompare($1.title) == .orderedAscending }
            return sorted.isEmpty ? [] : [(type: selectedType, feats: sorted)]
        }

        var result: [(String, [FeatEntry])] = []
        for type in Self.orderedFeatTypes {
            if let feats = dict[type] {
                result.append((type, feats.sorted { $0.title.localizedCompare($1.title) == .orderedAscending }))
            }
        }
        var other: [FeatEntry] = []
        for (type, feats) in dict where !Self.orderedFeatTypes.contains(type) && type != "Other" {
            other.append(contentsOf: feats)
        }
        if let existingOther = dict["Other"] { other.append(contentsOf: existingOther) }
        if !other.isEmpty {
            result.append(("Other", other.sorted { $0.title.localizedCompare($1.title) == .orderedAscending }))
        }
        return result
    }

    // Grouped by whether feat has prerequisites
    private var prereqGroups: [(label: String, feats: [FeatEntry])] {
        let sorted = baseEntries.sorted { $0.title.localizedCompare($1.title) == .orderedAscending }
        let withPrereqs  = sorted.filter { !$0.prerequisites.isEmpty }
        let noPrereqs    = sorted.filter {  $0.prerequisites.isEmpty }
        var result: [(String, [FeatEntry])] = []
        if !noPrereqs.isEmpty   { result.append(("No Prerequisites", noPrereqs)) }
        if !withPrereqs.isEmpty { result.append(("Has Prerequisites", withPrereqs)) }
        return result
    }

    // MARK: - Body

    var body: some View {
        Group {
            if isLoading {
                ProgressView("Loading Feats...")
                    .tint(AppColors.adaptivePrimary(colorScheme))
            } else if typeGroups.isEmpty && prereqGroups.isEmpty {
                ContentUnavailableView(
                    "No Feats",
                    systemImage: ContentType.feat.iconName,
                    description: Text(searchText.isEmpty
                        ? "Content will appear here once the database is loaded."
                        : "No results for \"\(searchText)\".")
                )
            } else {
                VStack(spacing: 0) {
                    // Sort picker
                    Picker("Sort", selection: $sortOrder) {
                        ForEach(SortOrder.allCases, id: \.self) { Text($0.rawValue).tag($0) }
                    }
                    .pickerStyle(.segmented)
                    .padding(.horizontal, AppSpacing.base)
                    .padding(.vertical, AppSpacing.sm)
                    .background(AppColors.adaptiveBackground(colorScheme).opacity(0.95))

                    Divider()

                    List {
                        switch sortOrder {
                        case .byType:
                            ForEach(typeGroups, id: \.type) { group in
                                Section(header: GroupHeader(group.type)) {
                                    ForEach(group.feats, id: \.id) { feat in
                                        FeatRow(entry: feat, isUnlocked: subscriptionService.isUnlocked)
                                    }
                                }
                            }
                        case .prereqs:
                            ForEach(prereqGroups, id: \.label) { group in
                                Section(header: GroupHeader(group.label)) {
                                    ForEach(group.feats, id: \.id) { feat in
                                        FeatRow(entry: feat, isUnlocked: subscriptionService.isUnlocked)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        .navigationTitle("Feats")
        .searchable(text: $searchText, prompt: "Search Feats")
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

    // MARK: - Load

    private func loadEntries() async {
        do {
            try await DatabaseService.shared.open()
            let raw = try await DatabaseService.shared.browse(type: .feat)
            entries = raw.compactMap { $0 as? FeatEntry }
        } catch {
            entries = []
        }
        isLoading = false
    }
}

// MARK: - Feat Row

private struct FeatRow: View {
    let entry: FeatEntry
    let isUnlocked: Bool
    @Environment(\.colorScheme) private var colorScheme

    private var isLocked: Bool { entry.isPremium && !isUnlocked }

    private var benefitSummary: String {
        let text = entry.benefit
        if let range = text.range(of: ".", options: .literal) {
            return String(text[text.startIndex...range.lowerBound]) + "."
        }
        return String(text.prefix(120))
    }

    var body: some View {
        NavigationLink(value: BrowseDestination.detail(AnyContentEntry(erasing: entry))) {
            HStack(spacing: AppSpacing.md) {
                VStack(alignment: .leading, spacing: 2) {
                    Text(entry.title)
                        .font(AppFonts.headline)
                        .foregroundStyle(isLocked
                            ? AppColors.adaptiveTextSecondary(colorScheme)
                            : AppColors.adaptiveTextPrimary(colorScheme))

                    if !benefitSummary.isEmpty && !isLocked {
                        Text(benefitSummary)
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
                } else if entry.source != "Core Rulebook" {
                    SourceBadge(text: entry.source)
                }
            }
            .padding(.vertical, AppSpacing.sm)
        }
    }
}

#Preview {
    NavigationStack {
        FeatListView()
            .environment(SubscriptionService())
    }
}
