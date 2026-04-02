import SwiftUI

// MARK: - Item Category

struct ItemCategory: Identifiable {
    let id: String          // display name
    let itemTypes: [String] // itemType values that map here
    var isSpecial: Bool = false

    static let allCategories: [ItemCategory] = [
        ItemCategory(id: "Wondrous Items",   itemTypes: ["Wondrous Item"]),
        ItemCategory(id: "Weapons",          itemTypes: ["Weapon"], isSpecial: true),
        ItemCategory(id: "Armor & Shields",  itemTypes: ["Armor", "Shield"], isSpecial: true),
        ItemCategory(id: "Rings",            itemTypes: ["Ring"]),
        ItemCategory(id: "Rods",             itemTypes: ["Rod"]),
        ItemCategory(id: "Staves",           itemTypes: ["Staff"]),
        ItemCategory(id: "Wands",            itemTypes: ["Wand"]),
        ItemCategory(id: "Potions",          itemTypes: ["Potion"]),
        ItemCategory(id: "Scrolls",          itemTypes: ["Scroll"]),
        ItemCategory(id: "Artifacts",        itemTypes: ["Artifact"]),
    ]

    static let otherCategory = ItemCategory(id: "Other", itemTypes: [])

    static func category(for itemType: String) -> ItemCategory {
        allCategories.first { cat in
            cat.itemTypes.contains { $0.caseInsensitiveCompare(itemType) == .orderedSame }
        } ?? otherCategory
    }
}

// MARK: - Main Item List View (Category Level)

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
        if otherCount > 0 {
            result.append((ItemCategory.otherCategory, otherCount))
        }

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
                        categoryDestination(pair.category)
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
                        .padding(.vertical, AppSpacing.sm)
                    }
                }
            }
        }
        .navigationTitle("Items")
        .task {
            await loadEntries()
        }
    }

    @ViewBuilder
    private func categoryDestination(_ category: ItemCategory) -> some View {
        let items = allEntries.filter { entry in
            let cat = ItemCategory.category(for: entry.itemType)
            return cat.id == category.id
        }

        if category.isSpecial {
            ItemSpecialCategoryView(
                category: category,
                items: items
            )
        } else {
            ItemCategoryDetailView(
                categoryName: category.id,
                items: items
            )
        }
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

// MARK: - Item Category Detail View (plain list)

struct ItemCategoryDetailView: View {
    let categoryName: String
    let items: [ItemEntry]

    @State private var searchText = ""
    @Environment(\.colorScheme) private var colorScheme
    @Environment(SubscriptionService.self) private var subscriptionService

    private var filteredItems: [ItemEntry] {
        let sorted = items.sorted { $0.title.localizedCompare($1.title) == .orderedAscending }
        if searchText.isEmpty { return sorted }
        let q = searchText.lowercased()
        return sorted.filter { $0.title.lowercased().contains(q) }
    }

    var body: some View {
        Group {
            if filteredItems.isEmpty {
                ContentUnavailableView(
                    "No \(categoryName)",
                    systemImage: ContentType.item.iconName,
                    description: Text(searchText.isEmpty
                        ? "No items in this category."
                        : "No results for \"\(searchText)\".")
                )
            } else {
                List(filteredItems, id: \.id) { item in
                    ItemRow(entry: item, isUnlocked: subscriptionService.isUnlocked)
                }
            }
        }
        .navigationTitle(categoryName)
        .searchable(text: $searchText, prompt: "Search \(categoryName)")
    }
}

// MARK: - Item Special Category View (enhancement table + items)

struct ItemSpecialCategoryView: View {
    let category: ItemCategory
    let items: [ItemEntry]

    @State private var searchText = ""
    @Environment(\.colorScheme) private var colorScheme
    @Environment(SubscriptionService.self) private var subscriptionService

    private var isWeapon: Bool { category.id == "Weapons" }

    private var enhancementRows: [(bonus: String, price: String)] {
        if isWeapon {
            return [
                ("+1", "+2,000 gp"),
                ("+2", "+8,000 gp"),
                ("+3", "+18,000 gp"),
                ("+4", "+32,000 gp"),
                ("+5", "+50,000 gp"),
            ]
        } else {
            return [
                ("+1", "+1,000 gp"),
                ("+2", "+4,000 gp"),
                ("+3", "+9,000 gp"),
                ("+4", "+16,000 gp"),
                ("+5", "+25,000 gp"),
            ]
        }
    }

    private var filteredItems: [ItemEntry] {
        let sorted = items.sorted { $0.title.localizedCompare($1.title) == .orderedAscending }
        if searchText.isEmpty { return sorted }
        let q = searchText.lowercased()
        return sorted.filter { $0.title.lowercased().contains(q) }
    }

    var body: some View {
        List {
            // Enhancement bonus table section
            Section(header: GroupHeader("Enhancement Bonus Pricing")) {
                enhancementTable
            }

            // Named special items section
            if !filteredItems.isEmpty {
                Section(header: GroupHeader("Special \(category.id)")) {
                    ForEach(filteredItems, id: \.id) { item in
                        ItemRow(entry: item, isUnlocked: subscriptionService.isUnlocked)
                    }
                }
            }
        }
        .navigationTitle(category.id)
        .searchable(text: $searchText, prompt: "Search \(category.id)")
    }

    private var enhancementTable: some View {
        VStack(spacing: 0) {
            // Header row
            HStack {
                Text("Bonus")
                    .font(AppFonts.caption.weight(.semibold))
                    .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("Price Modifier")
                    .font(AppFonts.caption.weight(.semibold))
                    .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            .padding(.horizontal, AppSpacing.md)
            .padding(.vertical, AppSpacing.sm)
            .background(AppColors.adaptivePrimary(colorScheme).opacity(0.08))

            // Data rows
            ForEach(Array(enhancementRows.enumerated()), id: \.offset) { index, row in
                HStack {
                    Text(row.bonus)
                        .font(AppFonts.body)
                        .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text(row.price)
                        .font(AppFonts.body)
                        .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .padding(.horizontal, AppSpacing.md)
                .padding(.vertical, AppSpacing.sm)
                .background(
                    index % 2 == 0
                        ? AppColors.adaptiveSurface(colorScheme)
                        : AppColors.adaptiveSurfaceElevated(colorScheme)
                )
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: AppRadius.small))
        .overlay(
            RoundedRectangle(cornerRadius: AppRadius.small)
                .strokeBorder(AppColors.adaptiveBorder(colorScheme), lineWidth: 0.5)
        )
        // Negative padding to offset List row insets
        .listRowInsets(EdgeInsets(top: AppSpacing.sm, leading: 0, bottom: AppSpacing.sm, trailing: 0))
    }
}

// MARK: - Item Row

struct ItemRow: View {
    let entry: ItemEntry
    let isUnlocked: Bool
    @Environment(\.colorScheme) private var colorScheme

    private var isLocked: Bool { entry.isPremium && !isUnlocked }

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
            .padding(.vertical, AppSpacing.sm)
        }
    }
}

#Preview {
    NavigationStack {
        ItemListView()
    }
}
