import SwiftUI

struct BrowseRowView: View {
    let contentType: ContentType
    var count: Int?

    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: contentType.iconName)
                .font(.title2)
                .foregroundStyle(AppColors.contentTypeColor(contentType))
                .frame(width: 36, height: 36)

            VStack(alignment: .leading, spacing: 2) {
                Text(contentType.displayName)
                    .font(AppFonts.headline)
                if let count {
                    Text("\(count) entries")
                        .font(AppFonts.subheadline)
                        .foregroundStyle(.secondary)
                } else {
                    Text("Browse all \(contentType.displayName.lowercased())")
                        .font(AppFonts.subheadline)
                        .foregroundStyle(.secondary)
                }
            }
        }
        .padding(.vertical, 4)
    }
}

#Preview {
    List {
        BrowseRowView(contentType: .spell, count: 48)
        BrowseRowView(contentType: .monster, count: 20)
        BrowseRowView(contentType: .feat, count: 32)
    }
}
