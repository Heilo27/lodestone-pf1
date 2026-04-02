import SwiftUI

struct TraitListView: View {
    @State private var traits: [TraitEntry] = []
    @State private var isLoading = true
    @State private var searchText = ""
    @State private var selectedType: String = "All"
    @Environment(\.colorScheme) private var colorScheme
    @Environment(SubscriptionService.self) private var subscriptionService

    private static let typeOrder = [
        "Combat", "Magic", "Faith", "Social", "Regional", "Race", "Equipment", "Religion"
    ]

    private var allTypes: [String] {
        let found = Set(traits.map(\.traitType)).filter { !$0.isEmpty }
        let ordered = Self.typeOrder.filter { found.contains($0) }
        let remaining = found.subtracting(Self.typeOrder).sorted()
        return ["All"] + ordered + remaining
    }

    private var filtered: [TraitEntry] {
        var base = traits
        if selectedType != "All" {
            base = base.filter { $0.traitType == selectedType }
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

    private var groupedByType: [(type: String, traits: [TraitEntry])] {
        if selectedType != "All" {
            return [(type: selectedType, traits: filtered)]
        }
        // Group in display order
        let types = allTypes.dropFirst() // drop "All"
        return types.compactMap { type in
            let entries = filtered.filter { $0.traitType == type }
            return entries.isEmpty ? nil : (type: type, traits: entries)
        }
    }

    var body: some View {
        Group {
            if isLoading {
                ProgressView("Loading Traits...")
                    .tint(AppColors.adaptivePrimary(colorScheme))
            } else if filtered.isEmpty {
                ContentUnavailableView(
                    "No Traits",
                    systemImage: "sparkles",
                    description: Text(searchText.isEmpty ? "No traits found." : "No results for \"\(searchText)\".")
                )
            } else {
                List {
                    ForEach(groupedByType, id: \.type) { group in
                        Section(header: GroupHeader(group.type)) {
                            ForEach(group.traits, id: \.id) { trait in
                                NavigationLink { DetailView(entry: trait) } label: {
                                    TraitRow(trait: trait, isUnlocked: subscriptionService.isUnlocked)
                                }
                            }
                        }
                    }
                }
            }
        }
        .navigationTitle("Traits")
        .searchable(text: $searchText, prompt: "Search Traits")
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
                    Label(selectedType == "All" ? "Filter" : selectedType,
                          systemImage: selectedType == "All" ? "line.3.horizontal.decrease.circle" : "line.3.horizontal.decrease.circle.fill")
                        .font(AppFonts.body)
                }
            }
        }
        .task { await loadTraits() }
    }

    private func loadTraits() async {
        do {
            let entries = try await DatabaseService.shared.browse(type: .trait)
            traits = entries.compactMap { $0 as? TraitEntry }
        } catch {
            traits = []
        }
        isLoading = false
    }
}

// MARK: - Trait Row

private struct TraitRow: View {
    let trait: TraitEntry
    let isUnlocked: Bool
    @Environment(\.colorScheme) private var colorScheme

    private var isLocked: Bool { trait.isPremium && !isUnlocked }

    var body: some View {
        HStack(spacing: AppSpacing.md) {
            VStack(alignment: .leading, spacing: 2) {
                Text(trait.title)
                    .font(AppFonts.headline)
                    .foregroundStyle(isLocked
                        ? AppColors.adaptiveTextSecondary(colorScheme)
                        : AppColors.adaptiveTextPrimary(colorScheme))

                if !trait.benefit.isEmpty {
                    Text(firstSentence(trait.benefit))
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
            } else if trait.source != "Core Rulebook" && trait.source != "Advanced Player's Guide" {
                SourceBadge(text: trait.source)
            }
        }
        .padding(.vertical, AppSpacing.sm)
        .opacity(isLocked ? 0.6 : 1)
    }

    private func firstSentence(_ text: String) -> String {
        if let idx = text.firstIndex(of: ".") {
            return String(text[...idx])
        }
        return text
    }
}

#Preview {
    NavigationStack {
        TraitListView()
            .environment(SubscriptionService())
    }
}
