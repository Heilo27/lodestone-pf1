import SwiftUI

struct FeatDetailView: View {
    let feat: FeatEntry

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            if !feat.featType.isEmpty {
                HStack {
                    Text(feat.featType)
                        .font(.caption)
                        .fontWeight(.medium)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 4)
                        .background(AppColors.contentTypeColor(.feat).opacity(0.15))
                        .clipShape(Capsule())
                }
            }

            FeatInfoRow(label: "Prerequisites", value: feat.prerequisites)
            FeatInfoRow(label: "Source", value: feat.source)

            Divider()

            Text("Benefit")
                .font(.headline)
            Text(feat.benefit)
                .font(.body)

            if !feat.normal.isEmpty {
                Text("Normal")
                    .font(.headline)
                Text(feat.normal)
                    .font(.body)
                    .foregroundStyle(.secondary)
            }

            if !feat.special.isEmpty {
                Text("Special")
                    .font(.headline)
                Text(feat.special)
                    .font(.body)
                    .foregroundStyle(.secondary)
            }
        }
    }
}

private struct FeatInfoRow: View {
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
    FeatDetailView(feat: .placeholder)
}
