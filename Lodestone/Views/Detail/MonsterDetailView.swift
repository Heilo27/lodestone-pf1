import SwiftUI

struct MonsterDetailView: View {
    let monster: MonsterEntry
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        VStack(alignment: .leading, spacing: AppSpacing.sm) {
            DetailRow(label: "Level", value: "\(monster.level)")
            DetailRow(label: "Type", value: monster.creatureType)
            DetailRow(label: "Size", value: monster.size)
            if !monster.traits.isEmpty {
                DetailRow(label: "Traits", value: monster.traits)
            }
            DetailRow(label: "HP", value: monster.hitPoints)
            DetailRow(label: "AC", value: "\(monster.armorClass)")
            DetailRow(label: "Fort / Ref / Will", value: "+\(monster.fortSave) / +\(monster.refSave) / +\(monster.willSave)")
            DetailRow(label: "Speed", value: monster.speed)
            DetailRow(label: "Source", value: monster.source)

            if !monster.attacks.isEmpty {
                OrnamentalDivider(label: "Attacks")
                    .padding(.vertical, AppSpacing.sm)
                Text(monster.attacks)
                    .font(AppFonts.body)
                    .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                    .lineSpacing(4)
            }

            if !monster.specialAbilities.isEmpty {
                OrnamentalDivider(label: "Special Abilities")
                    .padding(.vertical, AppSpacing.sm)
                Text(monster.specialAbilities)
                    .font(AppFonts.body)
                    .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                    .lineSpacing(4)
            }

            OrnamentalDivider(label: "Description")
                .padding(.vertical, AppSpacing.sm)
            Text(monster.description)
                .font(AppFonts.body)
                .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                .lineSpacing(4)
        }
    }
}

#Preview {
    ScrollView {
        MonsterDetailView(monster: .placeholder)
            .padding()
    }
}
