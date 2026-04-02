import SwiftUI

struct SpellDetailView: View {
    let spell: SpellEntry
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        VStack(alignment: .leading, spacing: AppSpacing.sm) {
            DetailRow(label: "School", value: spell.school)
            DetailRow(label: "Level", value: spell.levels)
            DetailRow(label: "Casting Time", value: spell.castingTime)
            DetailRow(label: "Components", value: spell.components)
            DetailRow(label: "Range", value: spell.range)
            DetailRow(label: "Duration", value: spell.duration)
            DetailRow(label: "Saving Throw", value: spell.savingThrow)
            DetailRow(label: "Spell Resistance", value: spell.spellResistance ? "Yes" : "No")
            DetailRow(label: "Source", value: spell.source)

            OrnamentalDivider(label: "Description")
                .padding(.vertical, AppSpacing.sm)

            Text(spell.description)
                .font(AppFonts.body)
                .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                .lineSpacing(4)
        }
    }
}

#Preview {
    ScrollView {
        SpellDetailView(spell: .placeholder)
            .padding()
    }
}
