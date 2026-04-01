import SwiftUI

struct RaceDetailView: View {
    let race: RaceEntry
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        VStack(alignment: .leading, spacing: AppSpacing.sm) {
            DetailRow(label: "Size", value: race.size)
            DetailRow(label: "Speed", value: race.speed)
            DetailRow(label: "Ability Mods", value: race.abilityModifiers)
            DetailRow(label: "Source", value: race.source)

            OrnamentalDivider(label: "Racial Traits")
                .padding(.vertical, AppSpacing.sm)

            ForEach(race.racialTraits, id: \.self) { trait in
                HStack(alignment: .top, spacing: AppSpacing.sm) {
                    Text("•")
                        .foregroundStyle(AppColors.adaptivePrimary(colorScheme))
                        .fontWeight(.bold)
                    Text(trait)
                        .font(AppFonts.subheadline)
                        .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                }
            }

            if !race.languages.isEmpty {
                OrnamentalDivider(label: "Languages")
                    .padding(.vertical, AppSpacing.sm)
                Text(race.languages.joined(separator: ", "))
                    .font(AppFonts.body)
                    .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
            }

            OrnamentalDivider(label: "Description")
                .padding(.vertical, AppSpacing.sm)

            Text(race.description)
                .font(AppFonts.body)
                .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                .lineSpacing(4)
        }
    }
}

#Preview {
    ScrollView {
        RaceDetailView(race: .placeholder)
            .padding()
    }
}
