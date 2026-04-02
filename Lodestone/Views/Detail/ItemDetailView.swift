import SwiftUI

struct ItemDetailView: View {
    let item: ItemEntry
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        VStack(alignment: .leading, spacing: AppSpacing.sm) {
            DetailRow(label: "Item Level", value: "\(item.itemLevel)")
            DetailRow(label: "Price", value: item.price)
            DetailRow(label: "Bulk", value: item.bulk)
            if !item.usage.isEmpty {
                DetailRow(label: "Usage", value: item.usage)
            }
            if !item.traits.isEmpty {
                DetailRow(label: "Traits", value: item.traits)
            }
            DetailRow(label: "Type", value: item.itemType)
            if !item.activate.isEmpty {
                DetailRow(label: "Activate", value: item.activate)
            }
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
