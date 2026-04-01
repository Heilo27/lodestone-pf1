import SwiftUI

struct RuleDetailView: View {
    let rule: RuleEntry

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            if !rule.category.isEmpty {
                HStack {
                    Text(rule.category)
                        .font(.caption)
                        .fontWeight(.medium)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 4)
                        .background(AppColors.contentTypeColor(.rule).opacity(0.15))
                        .clipShape(Capsule())
                }
            }

            RuleInfoRow(label: "Source", value: rule.source)

            Divider()

            Text(rule.body)
                .font(.system(.body, design: .monospaced))
                .textSelection(.enabled)
        }
    }
}

private struct RuleInfoRow: View {
    let label: String
    let value: String

    var body: some View {
        HStack(alignment: .top) {
            Text(label)
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)
                .frame(width: 80, alignment: .leading)
            Text(value)
                .font(.subheadline)
        }
    }
}

#Preview {
    RuleDetailView(rule: .placeholder)
}
