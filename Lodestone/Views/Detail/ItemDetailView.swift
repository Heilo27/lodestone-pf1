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

            DetailRow(label: "Price", value: item.price.isEmpty ? "—" : item.price)
            DetailRow(label: "Weight", value: item.weight.isEmpty ? "—" : item.weight)
            if !item.slot.isEmpty && item.slot.lowercased() != "none" { DetailRow(label: "Slot", value: item.slot.capitalized) }
            if !item.aura.isEmpty { DetailRow(label: "Aura", value: item.aura.capitalized) }
            if item.casterLevel > 0 { DetailRow(label: "Caster Level", value: "\(item.casterLevel)th") }
            DetailRow(label: "Source", value: item.page > 0 ? "\(item.source), p. \(item.page)" : item.source)

            let hasWeaponStats = !item.damage.isEmpty || !item.critical.isEmpty || !item.damageType.isEmpty || !item.rangeIncrement.isEmpty
            if hasWeaponStats {
                OrnamentalDivider(label: "Weapon")
                    .padding(.vertical, AppSpacing.sm)
                if !item.damage.isEmpty { DetailRow(label: "Damage", value: item.damage) }
                if !item.critical.isEmpty { DetailRow(label: "Critical", value: item.critical) }
                if !item.damageType.isEmpty { DetailRow(label: "Damage Type", value: item.damageType) }
                if !item.rangeIncrement.isEmpty { DetailRow(label: "Range Increment", value: item.rangeIncrement) }
            }

            OrnamentalDivider(label: "Description")
                .padding(.vertical, AppSpacing.sm)

            Text(.init(item.description))
                .font(AppFonts.body)
                .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                .lineSpacing(4)

            CrossLinkSection(sourceId: item.id, heading: "Related Spells")
        }
    }
}

#Preview {
    ScrollView {
        ItemDetailView(item: .placeholder)
            .padding()
    }
}
