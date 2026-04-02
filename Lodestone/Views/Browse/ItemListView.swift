import SwiftUI

// MARK: - Item Category

struct ItemCategory: Identifiable {
    let id: String           // display name
    let itemTypes: [String]  // itemType values that map here

    static let allCategories: [ItemCategory] = [
        ItemCategory(id: "Weapons",          itemTypes: ["Simple Weapon", "Martial Weapon", "Advanced Weapon"]),
        ItemCategory(id: "Armor",            itemTypes: ["Light Armor", "Medium Armor", "Heavy Armor"]),
        ItemCategory(id: "Shields",          itemTypes: ["Shield"]),
        ItemCategory(id: "Adventuring Gear", itemTypes: ["Adventuring Gear"]),
        ItemCategory(id: "Worn Items",       itemTypes: ["Worn Item"]),
        ItemCategory(id: "Rings",            itemTypes: ["Ring"]),
        ItemCategory(id: "Wands",            itemTypes: ["Wand"]),
        ItemCategory(id: "Staves",           itemTypes: ["Staff"]),
        ItemCategory(id: "Potions",          itemTypes: ["Potion"]),
        ItemCategory(id: "Scrolls",          itemTypes: ["Scroll"]),
        ItemCategory(id: "Runes",            itemTypes: ["Rune"]),
        ItemCategory(id: "Consumables",      itemTypes: ["Consumable"]),
    ]

    static let otherCategory = ItemCategory(id: "Other", itemTypes: [])

    static func category(for itemType: String) -> ItemCategory {
        allCategories.first { cat in
            cat.itemTypes.contains { $0.caseInsensitiveCompare(itemType) == .orderedSame }
        } ?? otherCategory
    }
}

// MARK: - Item List View (category level)

struct ItemListView: View {
    @State private var allEntries: [ItemEntry] = []
    @State private var isLoading = true
    @Environment(\.colorScheme) private var colorScheme
    @Environment(SubscriptionService.self) private var subscriptionService

    private var categoryCounts: [(category: ItemCategory, count: Int)] {
        var counts: [String: Int] = [:]
        for entry in allEntries {
            let cat = ItemCategory.category(for: entry.itemType)
            counts[cat.id, default: 0] += 1
        }
        var result: [(ItemCategory, Int)] = []
        for cat in ItemCategory.allCategories {
            let count = counts[cat.id] ?? 0
            if count > 0 { result.append((cat, count)) }
        }
        let otherCount = counts["Other"] ?? 0
        if otherCount > 0 { result.append((ItemCategory.otherCategory, otherCount)) }
        return result
    }

    var body: some View {
        Group {
            if isLoading {
                ProgressView("Loading Items...")
                    .tint(AppColors.adaptivePrimary(colorScheme))
            } else if categoryCounts.isEmpty {
                ContentUnavailableView(
                    "No Items",
                    systemImage: ContentType.item.iconName,
                    description: Text("Content will appear here once the database is loaded.")
                )
            } else {
                List(categoryCounts, id: \.category.id) { pair in
                    NavigationLink {
                        ItemCategoryDetailView(
                            categoryName: pair.category.id,
                            items: allEntries.filter { ItemCategory.category(for: $0.itemType).id == pair.category.id }
                        )
                    } label: {
                        HStack {
                            Text(pair.category.id)
                                .font(AppFonts.headline)
                                .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                            Spacer()
                            Text("\(pair.count)")
                                .font(AppFonts.caption)
                                .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                        }
                        .padding(.vertical, 2)
                    }
                }
            }
        }
        .navigationTitle("Items")
        .task { await loadEntries() }
    }

    private func loadEntries() async {
        do {
            try await DatabaseService.shared.open()
            let raw = try await DatabaseService.shared.browse(type: .item)
            allEntries = raw.compactMap { $0 as? ItemEntry }
        } catch {
            allEntries = []
        }
        isLoading = false
    }
}

// MARK: - Item Category Detail View

struct ItemCategoryDetailView: View {
    let categoryName: String
    let items: [ItemEntry]

    @State private var searchText = ""
    @State private var sortByLevel = false
    @Environment(\.colorScheme) private var colorScheme
    @Environment(SubscriptionService.self) private var subscriptionService

    private var filteredItems: [ItemEntry] {
        var base = items.sorted { lhs, rhs in
            if sortByLevel {
                if lhs.itemLevel != rhs.itemLevel { return lhs.itemLevel < rhs.itemLevel }
            }
            return lhs.title.localizedCompare(rhs.title) == .orderedAscending
        }
        if !searchText.isEmpty {
            let q = searchText.lowercased()
            base = base.filter { $0.title.lowercased().contains(q) }
        }
        return base
    }

    private var levelGroups: [(level: Int, items: [ItemEntry])] {
        var dict: [Int: [ItemEntry]] = [:]
        for item in filteredItems {
            dict[item.itemLevel, default: []].append(item)
        }
        return dict.keys.sorted().map { level in
            (level, dict[level]!.sorted { $0.title.localizedCompare($1.title) == .orderedAscending })
        }
    }

    var body: some View {
        Group {
            if filteredItems.isEmpty {
                ContentUnavailableView(
                    "No \(categoryName)",
                    systemImage: ContentType.item.iconName,
                    description: Text(searchText.isEmpty ? "No items in this category." : "No results for \"\(searchText)\".")
                )
            } else {
                List {
                    if sortByLevel {
                        ForEach(levelGroups, id: \.level) { group in
                            Section(header: GroupHeader(group.level == 0 ? "Level 0 (Base)" : "Level \(group.level)")) {
                                ForEach(group.items, id: \.id) { item in
                                    ItemRow(entry: item, isUnlocked: subscriptionService.isUnlocked)
                                }
                            }
                        }
                    } else {
                        ForEach(filteredItems, id: \.id) { item in
                            ItemRow(entry: item, isUnlocked: subscriptionService.isUnlocked)
                        }
                    }
                }
            }
        }
        .navigationTitle(categoryName)
        .searchable(text: $searchText, prompt: "Search \(categoryName)")
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    sortByLevel.toggle()
                } label: {
                    Label(
                        sortByLevel ? "Sort: Level" : "Sort: A–Z",
                        systemImage: sortByLevel ? "arrow.up.arrow.down.circle.fill" : "arrow.up.arrow.down.circle"
                    )
                    .font(AppFonts.body)
                }
            }
        }
    }
}

// MARK: - Item Row

struct ItemRow: View {
    let entry: ItemEntry
    let isUnlocked: Bool
    @Environment(\.colorScheme) private var colorScheme

    private var isLocked: Bool { entry.isPremium && !isUnlocked }

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
                } else if !entry.price.isEmpty {
                    Text(entry.price)
                        .font(AppFonts.caption)
                        .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                }
            }
            .padding(.vertical, 2)
        }
    }
}

#Preview {
    NavigationStack {
        ItemListView()
            .environment(SubscriptionService())
    }
}
