import SwiftUI

struct SearchResultRow: View {
    let entry: any ContentEntry
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        HStack(spacing: AppSpacing.md) {
            ContentTypeIconBadge(type: entry.contentType, size: 32)

            VStack(alignment: .leading, spacing: 2) {
                HStack(spacing: AppSpacing.xs) {
                    Text(entry.title)
                        .font(AppFonts.headline)
                        .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                    if entry.isPremium {
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
    }
}

#Preview {
    List {
        SearchResultRow(entry: SpellEntry.placeholder)
        SearchResultRow(entry: MonsterEntry.placeholder)
        SearchResultRow(entry: FeatEntry.placeholder)
    }
}
