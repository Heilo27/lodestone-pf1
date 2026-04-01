import SwiftUI

struct SpellDetailView: View {
    let spell: SpellEntry

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            DetailRow(label: "School", value: spell.school)
            DetailRow(label: "Level", value: spell.levels)
            DetailRow(label: "Casting Time", value: spell.castingTime)
            DetailRow(label: "Components", value: spell.components)
            DetailRow(label: "Range", value: spell.range)
            DetailRow(label: "Duration", value: spell.duration)
            DetailRow(label: "Saving Throw", value: spell.savingThrow)
            DetailRow(label: "Spell Resistance", value: spell.spellResistance ? "Yes" : "No")
            DetailRow(label: "Source", value: spell.source)

            Divider()

            Text("Description")
                .font(.headline)
            Text(spell.description)
                .font(.body)
        }
    }
}

private struct DetailRow: View {
    let label: String
    let value: String

    var body: some View {
        HStack(alignment: .top) {
            Text(label)
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)
                .frame(width: 120, alignment: .leading)
            Text(value)
                .font(.subheadline)
        }
    }
}

#Preview {
    SpellDetailView(spell: .placeholder)
}
