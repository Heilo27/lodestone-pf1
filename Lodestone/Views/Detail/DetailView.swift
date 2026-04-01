import SwiftUI

struct DetailView: View {
    let entry: any ContentEntry
    @State private var favoritesService = FavoritesService()

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                // Header
                HStack {
                    Image(systemName: entry.contentType.iconName)
                        .font(.title)
                        .foregroundStyle(AppColors.contentTypeColor(entry.contentType))
                    VStack(alignment: .leading) {
                        Text(entry.title)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Text(entry.contentType.singularName)
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                    Spacer()
                }

                Divider()

                // Summary
                if !entry.summary.isEmpty {
                    Text(entry.summary)
                        .font(.body)
                        .foregroundStyle(.secondary)

                    Divider()
                }

                // Type-specific detail
                typeSpecificView(for: entry)
            }
            .padding()
        }
        .navigationTitle(entry.title)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    favoritesService.toggle(entry.id)
                } label: {
                    Image(systemName: favoritesService.isFavorite(entry.id) ? "heart.fill" : "heart")
                        .foregroundStyle(favoritesService.isFavorite(entry.id) ? .red : .secondary)
                }
            }
        }
    }

    @ViewBuilder
    private func typeSpecificView(for entry: any ContentEntry) -> some View {
        switch entry {
        case let spell as SpellEntry:
            SpellDetailView(spell: spell)
        case let classEntry as ClassEntry:
            ClassDetailView(classEntry: classEntry)
        case let monster as MonsterEntry:
            MonsterDetailView(monster: monster)
        case let feat as FeatEntry:
            FeatDetailView(feat: feat)
        case let item as ItemEntry:
            ItemDetailView(item: item)
        case let race as RaceEntry:
            RaceDetailView(race: race)
        case let trait as TraitEntry:
            TraitDetailView(trait: trait)
        case let rule as RuleEntry:
            RuleDetailView(rule: rule)
        default:
            Text(entry.summary)
                .font(.body)
        }
    }
}

#Preview {
    NavigationStack {
        DetailView(entry: SpellEntry.placeholder)
    }
}
