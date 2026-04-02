import SwiftUI

struct ItemDetailView: View {
    let item: ItemEntry
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        VStack(alignment: .leading, spacing: AppSpacing.sm) {
            if !item.itemType.isEmpty {
                SourceBadge(text: item.itemType, color: AppColors.contentTypeColor(.item))
                    .padding(.bottom, AppSpacing.xs)
            }

            DetailRow(label: "Price", value: item.price)
            DetailRow(label: "Weight", value: item.weight)
            DetailRow(label: "Slot", value: item.slot)
            DetailRow(label: "Aura", value: item.aura)
            DetailRow(label: "Caster Level", value: "\(item.casterLevel)")
            DetailRow(label: "Source", value: item.source)

            OrnamentalDivider(label: "Description")
                .padding(.vertical, AppSpacing.sm)

            Text(item.description)
                .font(AppFonts.body)
                .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                .lineSpacing(4)
        }
    }
}

#Preview {
    ScrollView {
        ItemDetailView(item: .placeholder)
            .padding()
    }
}
