import SwiftUI

struct BackgroundDetailView: View {
    let background: BackgroundEntry
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        VStack(alignment: .leading, spacing: AppSpacing.sm) {
            DetailRow(label: "Ability Boosts", value: background.abilityBoosts)
            DetailRow(label: "Trained Skills", value: background.trainedSkills)
            DetailRow(label: "Skill Feat", value: background.skillFeat)
            DetailRow(label: "Source", value: background.source)

            OrnamentalDivider(label: "Description")
                .padding(.vertical, AppSpacing.sm)

            Text(background.description)
                .font(AppFonts.body)
                .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                .lineSpacing(4)
        }
    }
}

#Preview {
    ScrollView {
        BackgroundDetailView(background: .placeholder)
            .padding()
    }
}
