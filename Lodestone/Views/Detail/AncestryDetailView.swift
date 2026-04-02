import SwiftUI

struct AncestryDetailView: View {
    let ancestry: AncestryEntry
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        VStack(alignment: .leading, spacing: AppSpacing.sm) {
            DetailRow(label: "HP", value: "\(ancestry.hp)")
            DetailRow(label: "Size", value: ancestry.size)
            DetailRow(label: "Speed", value: "\(ancestry.speed) feet")
            DetailRow(label: "Ability Boosts", value: ancestry.abilityBoosts)
            if !ancestry.abilityFlaws.isEmpty {
                DetailRow(label: "Ability Flaws", value: ancestry.abilityFlaws)
            }
            DetailRow(label: "Vision", value: ancestry.vision)
            DetailRow(label: "Languages", value: ancestry.languages.joined(separator: ", "))
            if !ancestry.traits.isEmpty {
                DetailRow(label: "Traits", value: ancestry.traits)
            }
            DetailRow(label: "Source", value: ancestry.source)

            if !ancestry.ancestralFeatures.isEmpty {
                OrnamentalDivider(label: "Ancestral Features")
                    .padding(.vertical, AppSpacing.sm)
                ForEach(ancestry.ancestralFeatures, id: \.self) { feature in
                    Text("• \(feature)")
                        .font(AppFonts.body)
                        .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                }
            }

            OrnamentalDivider(label: "Description")
                .padding(.vertical, AppSpacing.sm)
            Text(ancestry.description)
                .font(AppFonts.body)
                .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                .lineSpacing(4)
        }
    }
}

#Preview {
    ScrollView {
        AncestryDetailView(ancestry: .placeholder)
            .padding()
    }
}
