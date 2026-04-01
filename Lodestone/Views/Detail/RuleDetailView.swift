import SwiftUI

struct RuleDetailView: View {
    let rule: RuleEntry
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        VStack(alignment: .leading, spacing: AppSpacing.sm) {
            if !rule.category.isEmpty {
                DetailRow(label: "Category", value: rule.category)
            }

            OrnamentalDivider(label: "Rule Text")
                .padding(.vertical, AppSpacing.sm)

            Text(rule.body)
                .font(AppFonts.body)
                .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                .textSelection(.enabled)
                .lineSpacing(4)
        }
    }
}

#Preview {
    ScrollView {
        RuleDetailView(rule: .placeholder)
            .padding()
    }
}
