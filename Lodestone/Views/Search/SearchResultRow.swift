import SwiftUI

struct SearchResultRow: View {
    let entry: any ContentEntry
    @Environment(\.colorScheme) private var colorScheme
    @Environment(SubscriptionService.self) private var subscriptionService

    var body: some View {
        HStack(spacing: AppSpacing.md) {
            ContentTypeIconBadge(type: entry.contentType, size: 32)

            VStack(alignment: .leading, spacing: 2) {
                HStack(spacing: AppSpacing.xs) {
                    Text(entry.title)
                        .font(AppFonts.headline)
                        .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                    if entry.isPremium && !subscriptionService.isUnlocked {
                        PremiumBadge(compact: true)
                    }
                }
                Text(entry.summary)
                    .font(AppFonts.caption)
                    .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                    .lineLimit(2)
            }

            Spacer()

            ContentTypeBadge(type: entry.contentType)
        }
        .padding(.vertical, 2)
        .accessibilityElement(children: .combine)
        .accessibilityLabel("\(entry.title), \(entry.contentType.singularName), \(entry.summary)")
    }
}

#Preview {
    List {
        SearchResultRow(entry: SpellEntry.placeholder)
        SearchResultRow(entry: MonsterEntry.placeholder)
        SearchResultRow(entry: FeatEntry.placeholder)
    }
}
