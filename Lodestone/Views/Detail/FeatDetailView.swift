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

            if !feat.prerequisites.isEmpty {
                DetailRow(label: "Prerequisites", value: feat.prerequisites)
            }
            DetailRow(label: "Source", value: feat.page > 0 ? "\(feat.source), p. \(feat.page)" : feat.source)

            OrnamentalDivider(label: "Benefit")
                .padding(.vertical, AppSpacing.sm)

            Text(.init(feat.benefit))
                .font(AppFonts.body)
                .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                .lineSpacing(4)

            if !feat.normal.isEmpty {
                OrnamentalDivider(label: "Normal")
                    .padding(.vertical, AppSpacing.sm)
                Text(.init(feat.normal))
                    .font(AppFonts.body)
                    .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                    .lineSpacing(4)
            }

            if !feat.special.isEmpty {
                OrnamentalDivider(label: "Special")
                    .padding(.vertical, AppSpacing.sm)
                Text(.init(feat.special))
                    .font(AppFonts.body)
                    .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                    .lineSpacing(4)
            }

            CrossLinkSection(sourceId: feat.id, heading: "See Also")
        }
    }
}

#Preview {
    ScrollView {
        FeatDetailView(feat: .placeholder)
            .padding()
    }
}
