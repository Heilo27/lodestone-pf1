import SwiftUI

struct FilterView: View {
    let activeFilters: Set<ContentType>
    let onToggle: (ContentType) -> Void

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8) {
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
            .padding(.horizontal)
            .padding(.vertical, 8)
        }
        .background(AppColors.groupedBackground)
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
            HStack(spacing: 4) {
                Image(systemName: icon)
                    .font(.caption)
                Text(title)
                    .font(.caption)
                    .fontWeight(.medium)
            }
            .padding(.horizontal, 10)
            .padding(.vertical, 6)
            .background(isSelected ? color.opacity(0.2) : Color(.tertiarySystemFill))
            .foregroundStyle(isSelected ? color : .secondary)
            .clipShape(Capsule())
            .overlay(
                Capsule()
                    .strokeBorder(isSelected ? color : .clear, lineWidth: 1)
            )
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    FilterView(activeFilters: [.spell, .monster]) { _ in }
}
