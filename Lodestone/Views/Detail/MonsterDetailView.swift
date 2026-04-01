import SwiftUI

struct MonsterDetailView: View {
    let monster: MonsterEntry

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                StatBlock(label: "CR", value: monster.challengeRating)
                StatBlock(label: "AC", value: "\(monster.armorClass)")
                StatBlock(label: "HP", value: monster.hitPoints)
            }

            Divider()

            MonsterInfoRow(label: "Type", value: monster.type)
            MonsterInfoRow(label: "Size", value: monster.size)
            MonsterInfoRow(label: "Alignment", value: monster.alignment)
            MonsterInfoRow(label: "Speed", value: monster.speed)
            MonsterInfoRow(label: "Environment", value: monster.environment)
            MonsterInfoRow(label: "Source", value: monster.source)

            Divider()

            Text("Description")
                .font(.headline)
            Text(monster.description)
                .font(.body)
        }
    }
}

private struct StatBlock: View {
    let label: String
    let value: String

    var body: some View {
        VStack(spacing: 4) {
            Text(label)
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)
            Text(value)
                .font(.title3)
                .fontWeight(.bold)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 8)
        .background(Color(.tertiarySystemFill))
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

private struct MonsterInfoRow: View {
    let label: String
    let value: String

    var body: some View {
        HStack(alignment: .top) {
            Text(label)
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)
                .frame(width: 100, alignment: .leading)
            Text(value)
                .font(.subheadline)
        }
    }
}

#Preview {
    MonsterDetailView(monster: .placeholder)
}
