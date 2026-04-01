import SwiftUI

struct MonsterDetailView: View {
    let monster: MonsterEntry
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        VStack(alignment: .leading, spacing: AppSpacing.sm) {
            // Stat block grid
            HStack(spacing: AppSpacing.sm) {
                StatBlock(label: "CR", value: monster.challengeRating)
                StatBlock(label: "AC", value: "\(monster.armorClass)")
                StatBlock(label: "HP", value: monster.hitPoints)
            }
            .padding(.bottom, AppSpacing.sm)

            DetailRow(label: "Type", value: monster.type)
            DetailRow(label: "Size", value: monster.size)
            DetailRow(label: "Alignment", value: monster.alignment)
            DetailRow(label: "Speed", value: monster.speed)
            DetailRow(label: "Environment", value: monster.environment)
            DetailRow(label: "Source", value: monster.source)

            OrnamentalDivider(label: "Description")
                .padding(.vertical, AppSpacing.sm)

            Text(monster.description)
                .font(AppFonts.body)
                .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                .lineSpacing(4)
        }
    }
}

private struct StatBlock: View {
    let label: String
    let value: String

    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        VStack(spacing: AppSpacing.xs) {
            Text(label)
                .font(AppFonts.caption.weight(.semibold))
                .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                .textCase(.uppercase)
                .tracking(0.8)
            Text(value)
                .font(AppFonts.displaySmall)
                .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, AppSpacing.md)
        .background(AppColors.adaptiveSurfaceElevated(colorScheme), in: RoundedRectangle(cornerRadius: AppRadius.medium))
    }
}

#Preview {
    ScrollView {
        MonsterDetailView(monster: .placeholder)
            .padding()
    }
}
