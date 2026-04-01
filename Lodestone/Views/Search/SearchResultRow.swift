import SwiftUI

struct SearchResultRow: View {
    let entry: any ContentEntry

    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: entry.contentType.iconName)
                .font(.body)
                .foregroundStyle(AppColors.contentTypeColor(entry.contentType))
                .frame(width: 28, height: 28)

            VStack(alignment: .leading, spacing: 2) {
                HStack {
                    Text(entry.title)
                        .font(.headline)
                    if entry.isPremium {
                        Image(systemName: "crown.fill")
                            .font(.caption2)
                            .foregroundStyle(AppColors.premiumGold)
                    }
                }
                Text(entry.summary)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    .lineLimit(2)
            }

            Spacer()

            Text(entry.contentType.singularName)
                .font(.caption)
                .padding(.horizontal, 8)
                .padding(.vertical, 4)
                .background(AppColors.contentTypeColor(entry.contentType).opacity(0.15))
                .clipShape(Capsule())
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
