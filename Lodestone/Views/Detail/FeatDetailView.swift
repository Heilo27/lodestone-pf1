import SwiftUI

struct FeatDetailView: View {
    let feat: FeatEntry
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        VStack(alignment: .leading, spacing: AppSpacing.sm) {
            if !feat.featType.isEmpty {
                SourceBadge(text: feat.featType, color: AppColors.contentTypeColor(.feat))
                    .padding(.bottom, AppSpacing.xs)
            }

            DetailRow(label: "Prerequisites", value: feat.prerequisites)
            DetailRow(label: "Source", value: feat.source)

            OrnamentalDivider(label: "Benefit")
                .padding(.vertical, AppSpacing.sm)

            Text(feat.benefit)
                .font(AppFonts.body)
                .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                .lineSpacing(4)

            if !feat.normal.isEmpty {
                OrnamentalDivider(label: "Normal")
                    .padding(.vertical, AppSpacing.sm)
                Text(feat.normal)
                    .font(AppFonts.body)
                    .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                    .lineSpacing(4)
            }

            if !feat.special.isEmpty {
                OrnamentalDivider(label: "Special")
                    .padding(.vertical, AppSpacing.sm)
                Text(feat.special)
                    .font(AppFonts.body)
                    .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                    .lineSpacing(4)
            }
        }
    }
}

#Preview {
    ScrollView {
        FeatDetailView(feat: .placeholder)
            .padding()
    }
}
