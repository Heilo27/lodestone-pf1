import SwiftUI

struct ConditionDetailView: View {
    let condition: ConditionEntry
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        VStack(alignment: .leading, spacing: AppSpacing.sm) {
            if condition.isValued {
                DetailRow(label: "Valued", value: "Yes — has a numeric severity")
            }
            DetailRow(label: "Source", value: condition.source)

            OrnamentalDivider(label: "Effect")
                .padding(.vertical, AppSpacing.sm)

            Text(condition.description)
                .font(AppFonts.body)
                .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                .lineSpacing(4)
        }
    }
}

#Preview {
    ScrollView {
        ConditionDetailView(condition: .placeholder)
            .padding()
    }
}
