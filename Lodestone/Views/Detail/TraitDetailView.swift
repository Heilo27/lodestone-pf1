import SwiftUI

struct TraitDetailView: View {
    let trait: TraitEntry
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        VStack(alignment: .leading, spacing: AppSpacing.sm) {
            DetailRow(label: "Category", value: trait.traitType)
            DetailRow(label: "Source", value: trait.source)

            OrnamentalDivider(label: "Description")
                .padding(.vertical, AppSpacing.sm)

            Text(trait.description)
                .font(AppFonts.body)
                .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                .lineSpacing(4)
        }
    }
}

#Preview {
    ScrollView {
        TraitDetailView(trait: .placeholder)
            .padding()
    }
}
