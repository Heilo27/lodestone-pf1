import SwiftUI

struct FilterView: View {
    let activeFilters: Set<ContentType>
    let onToggle: (ContentType) -> Void
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: AppSpacing.sm) {
                ForEach(ContentType.allCases) { type in
                    FilterChip(
                        title: type.singularName,
                        icon: type.iconName,
                        isSelected: activeFilters.contains(type),
                        color: AppColors.contentTypeColor(type)
                    ) {
                        onToggle(type)
                    }
                }
            }
            .padding(.horizontal, AppSpacing.base)
            .padding(.vertical, AppSpacing.sm)
        }
        .background(AppColors.adaptiveBackground(colorScheme))
    }
}

private struct FilterChip: View {
    let title: String
    let icon: String
    let isSelected: Bool
    let color: Color
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack(spacing: AppSpacing.xs) {
                Image(systemName: icon)
                    .font(AppFonts.caption)
                Text(title)
                    .font(AppFonts.chip())
            }
            .padding(.horizontal, AppSpacing.md)
            .padding(.vertical, AppSpacing.xs + 2)
            .background(isSelected ? color.opacity(0.18) : Color(.tertiarySystemFill))
            .foregroundStyle(isSelected ? color : .secondary)
            .clipShape(Capsule())
            .overlay(
                Capsule()
                    .strokeBorder(isSelected ? color.opacity(0.5) : Color.clear, lineWidth: 1)
            )
        }
        .buttonStyle(.plain)
        .frame(minHeight: 44)
        .contentShape(Rectangle())
        .accessibilityLabel(title)
        .accessibilityAddTraits(isSelected ? .isSelected : [])
    }
}

#Preview {
    FilterView(activeFilters: [.spell, .monster]) { _ in }
}
