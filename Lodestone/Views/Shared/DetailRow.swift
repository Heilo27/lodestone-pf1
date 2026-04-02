import SwiftUI

/// Shared label–value row used across all type-specific detail views.
struct DetailRow: View {
    let label: String
    let value: String

    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        HStack(alignment: .top, spacing: AppSpacing.md) {
            Text(label)
                .font(AppFonts.caption.weight(.semibold))
                .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                .textCase(.uppercase)
                .tracking(0.5)
                .fixedSize(horizontal: true, vertical: false)
            Text(value)
                .font(AppFonts.body)
                .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
        }
        .padding(.vertical, 2)
    }
}
