import SwiftUI

struct ClassDetailView: View {
    let classEntry: ClassEntry

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            DetailInfoRow(label: "Hit Die", value: classEntry.hitDie)
            DetailInfoRow(label: "Skill Ranks", value: "\(classEntry.skillRanks) + Int modifier per level")
            DetailInfoRow(label: "BAB", value: classEntry.baseAttackBonus)
            DetailInfoRow(label: "Fort Save", value: classEntry.fortSave)
            DetailInfoRow(label: "Ref Save", value: classEntry.refSave)
            DetailInfoRow(label: "Will Save", value: classEntry.willSave)
            DetailInfoRow(label: "Source", value: classEntry.source)

            Divider()

            Text("Class Skills")
                .font(.headline)
            FlowLayout(spacing: 6) {
                ForEach(classEntry.classSkills, id: \.self) { skill in
                    Text(skill)
                        .font(.caption)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 4)
                        .background(Color(.tertiarySystemFill))
                        .clipShape(Capsule())
                }
            }

            Divider()

            Text("Description")
                .font(.headline)
            Text(classEntry.description)
                .font(.body)
        }
    }
}

private struct DetailInfoRow: View {
    let label: String
    let value: String

    var body: some View {
        HStack(alignment: .top) {
            Text(label)
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)
                .frame(width: 120, alignment: .leading)
            Text(value)
                .font(.subheadline)
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
    ClassDetailView(classEntry: .placeholder)
}
