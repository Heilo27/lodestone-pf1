import SwiftUI

struct SpellDetailView: View {
    let spell: SpellEntry
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        VStack(alignment: .leading, spacing: AppSpacing.sm) {
            DetailRow(label: "Rank", value: "Rank \(spell.rank)")
            DetailRow(label: "Traditions", value: spell.traditions)
            DetailRow(label: "Actions", value: spell.actions)
            if !spell.traits.isEmpty {
                DetailRow(label: "Traits", value: spell.traits)
            }
            if !spell.range.isEmpty {
                DetailRow(label: "Range", value: spell.range)
            }
            if !spell.area.isEmpty {
                DetailRow(label: "Area", value: spell.area)
            }
            if !spell.targets.isEmpty {
                DetailRow(label: "Targets", value: spell.targets)
            }
            if !spell.duration.isEmpty {
                DetailRow(label: "Duration", value: spell.duration)
            }
            if !spell.savingThrow.isEmpty {
                DetailRow(label: "Saving Throw", value: spell.savingThrow)
            }
            DetailRow(label: "Source", value: spell.source)

            OrnamentalDivider(label: "Description")
                .padding(.vertical, AppSpacing.sm)

            Text(spell.description)
                .font(AppFonts.body)
                .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                .lineSpacing(4)

            if !spell.heightened.isEmpty {
                OrnamentalDivider(label: "Heightened")
                    .padding(.vertical, AppSpacing.sm)
                Text(spell.heightened)
                    .font(AppFonts.body)
                    .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                    .lineSpacing(4)
            }
        }
    }
}

#Preview {
    ScrollView {
        SpellDetailView(spell: .placeholder)
            .padding()
    }
}
