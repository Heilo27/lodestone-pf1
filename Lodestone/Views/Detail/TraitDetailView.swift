import SwiftUI

struct TraitDetailView: View {
    let trait: TraitEntry
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        VStack(alignment: .leading, spacing: AppSpacing.sm) {
            if !trait.traitType.isEmpty {
                SourceBadge(text: trait.traitType, color: AppColors.contentTypeColor(.trait))
                    .padding(.bottom, AppSpacing.xs)
            }

            if !trait.prerequisites.isEmpty {
                DetailRow(label: "Prerequisites", value: trait.prerequisites)
            }
            DetailRow(label: "Source", value: trait.source)

            OrnamentalDivider(label: "Benefit")
                .padding(.vertical, AppSpacing.sm)

            Text(trait.benefit)
                .font(AppFonts.body)
                .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                .lineSpacing(4)

            if !trait.description.isEmpty && trait.description != trait.benefit {
                OrnamentalDivider(label: "Description")
                    .padding(.vertical, AppSpacing.sm)
                Text(trait.description)
                    .font(AppFonts.body)
                    .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                    .lineSpacing(4)
            }
        }
    }
}

#Preview {
    ScrollView {
        TraitDetailView(trait: .placeholder)
            .padding()
    }
}
