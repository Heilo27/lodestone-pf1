import SwiftUI

struct ItemDetailView: View {
    let item: ItemEntry

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text(item.itemType)
                    .font(.caption)
                    .fontWeight(.medium)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 4)
                    .background(AppColors.contentTypeColor(.item).opacity(0.15))
                    .clipShape(Capsule())
            }

            ItemInfoRow(label: "Price", value: item.price)
            ItemInfoRow(label: "Weight", value: item.weight)
            ItemInfoRow(label: "Slot", value: item.slot)
            ItemInfoRow(label: "Aura", value: item.aura)
            ItemInfoRow(label: "Caster Level", value: "\(item.casterLevel)")
            ItemInfoRow(label: "Source", value: item.source)

            Divider()

            Text("Description")
                .font(.headline)
            Text(item.description)
                .font(.body)
        }
    }
}

private struct ItemInfoRow: View {
    let label: String
    let value: String

    var body: some View {
        HStack(alignment: .top) {
            Text(label)
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)
                .frame(width: 100, alignment: .leading)
            Text(value)
                .font(.subheadline)
        }
    }
}

#Preview {
    ItemDetailView(item: .placeholder)
}
