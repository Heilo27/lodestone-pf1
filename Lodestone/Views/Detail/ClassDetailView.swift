import SwiftUI

struct ClassDetailView: View {
    let classEntry: ClassEntry
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        VStack(alignment: .leading, spacing: AppSpacing.sm) {
            DetailRow(label: "Hit Die", value: classEntry.hitDie)
            DetailRow(label: "Skill Ranks", value: "\(classEntry.skillRanks) + Int modifier per level")
            DetailRow(label: "BAB", value: classEntry.baseAttackBonus)
            DetailRow(label: "Fort Save", value: classEntry.fortSave)
            DetailRow(label: "Ref Save", value: classEntry.refSave)
            DetailRow(label: "Will Save", value: classEntry.willSave)
            DetailRow(label: "Source", value: classEntry.source)

            OrnamentalDivider(label: "Class Skills")
                .padding(.vertical, AppSpacing.sm)

            FlowLayout(spacing: AppSpacing.xs) {
                ForEach(classEntry.classSkills, id: \.self) { skill in
                    Text(skill)
                        .font(AppFonts.chip())
                        .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                        .padding(.horizontal, AppSpacing.sm)
                        .padding(.vertical, AppSpacing.xs)
                        .background(AppColors.adaptiveSurfaceElevated(colorScheme), in: Capsule())
                }
            }

            OrnamentalDivider(label: "Description")
                .padding(.vertical, AppSpacing.sm)

            Text(classEntry.description)
                .font(AppFonts.body)
                .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                .lineSpacing(4)
        }
    }
}

private struct FlowLayout: Layout {
    var spacing: CGFloat

    func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {
        let result = layout(proposal: proposal, subviews: subviews)
        return result.size
    }

    func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) {
        let result = layout(proposal: proposal, subviews: subviews)
        for (index, position) in result.positions.enumerated() {
            subviews[index].place(at: CGPoint(x: bounds.minX + position.x, y: bounds.minY + position.y), proposal: .unspecified)
        }
    }

    private func layout(proposal: ProposedViewSize, subviews: Subviews) -> (size: CGSize, positions: [CGPoint]) {
        let maxWidth = proposal.width ?? .infinity
        var positions: [CGPoint] = []
        var currentX: CGFloat = 0
        var currentY: CGFloat = 0
        var lineHeight: CGFloat = 0

        for subview in subviews {
            let size = subview.sizeThatFits(.unspecified)
            if currentX + size.width > maxWidth && currentX > 0 {
                currentX = 0
                currentY += lineHeight + spacing
                lineHeight = 0
            }
            positions.append(CGPoint(x: currentX, y: currentY))
            lineHeight = max(lineHeight, size.height)
            currentX += size.width + spacing
        }

        return (CGSize(width: maxWidth, height: currentY + lineHeight), positions)
    }
}

#Preview {
    ScrollView {
        ClassDetailView(classEntry: .placeholder)
            .padding()
    }
}
