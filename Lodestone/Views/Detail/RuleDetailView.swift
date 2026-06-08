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

            Text(.init(rule.body))
                .font(AppFonts.body)
                .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                .textSelection(.enabled)
                .lineSpacing(4)

            if let tables = referenceTables(for: rule.title), !tables.isEmpty {
                ReferenceTableSection(tables: tables)
            }
        }
    }
}

#Preview {
    ScrollView {
        RuleDetailView(rule: .placeholder)
            .padding()
    }
}
