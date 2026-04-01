import SwiftUI

struct RaceDetailView: View {
    let race: RaceEntry

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            RaceInfoRow(label: "Size", value: race.size)
            RaceInfoRow(label: "Speed", value: race.speed)
            RaceInfoRow(label: "Ability Mods", value: race.abilityModifiers)
            RaceInfoRow(label: "Source", value: race.source)

            Divider()

            Text("Racial Traits")
                .font(.headline)
            ForEach(race.racialTraits, id: \.self) { trait in
                HStack(alignment: .top, spacing: 6) {
                    Text("•")
                        .foregroundStyle(.secondary)
                    Text(trait)
                        .font(.subheadline)
                }
            }

            Divider()

            Text("Languages")
                .font(.headline)
            Text(race.languages.joined(separator: ", "))
                .font(.subheadline)

            Divider()

            Text("Description")
                .font(.headline)
            Text(race.description)
                .font(.body)
        }
    }
}

private struct RaceInfoRow: View {
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
    RaceDetailView(race: .placeholder)
}
