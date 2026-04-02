import SwiftUI

struct FeatDetailView: View {
    let feat: FeatEntry
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        VStack(alignment: .leading, spacing: AppSpacing.sm) {
            DetailRow(label: "Level", value: "\(feat.level)")
            DetailRow(label: "Type", value: feat.featType)
            if !feat.traits.isEmpty {
                DetailRow(label: "Traits", value: feat.traits)
            }
            if !feat.prerequisites.isEmpty {
                DetailRow(label: "Prerequisites", value: feat.prerequisites)
            }
            if !feat.requirements.isEmpty {
                DetailRow(label: "Requirements", value: feat.requirements)
            }
            if !feat.trigger.isEmpty {
                DetailRow(label: "Trigger", value: feat.trigger)
            }
            DetailRow(label: "Source", value: feat.source)

            OrnamentalDivider(label: "Effect")
                .padding(.vertical, AppSpacing.sm)

            Text(feat.benefit)
                .font(AppFonts.body)
                .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                .lineSpacing(4)
        }
    }
}

#Preview {
    ScrollView {
        FeatDetailView(feat: .placeholder)
            .padding()
    }
}
