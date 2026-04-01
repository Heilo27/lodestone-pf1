import SwiftUI

struct TraitDetailView: View {
    let trait: TraitEntry

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            if !trait.traitType.isEmpty {
                HStack {
                    Text(trait.traitType)
                        .font(.caption)
                        .fontWeight(.medium)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 4)
                        .background(AppColors.contentTypeColor(.trait).opacity(0.15))
                        .clipShape(Capsule())
                }
            }

            if !trait.prerequisites.isEmpty {
                TraitInfoRow(label: "Prerequisites", value: trait.prerequisites)
            }
            TraitInfoRow(label: "Source", value: trait.source)

            Divider()

            Text("Benefit")
                .font(.headline)
            Text(trait.benefit)
                .font(.body)

            if !trait.description.isEmpty && trait.description != trait.benefit {
                Divider()
                Text("Description")
                    .font(.headline)
                Text(trait.description)
                    .font(.body)
                    .foregroundStyle(.secondary)
            }
        }
    }
}

private struct TraitInfoRow: View {
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

#Preview {
    TraitDetailView(trait: .placeholder)
}
