import SwiftUI

/// Async-loaded tappable list of cross-reference links for a given entry.
/// Shows a section header and one row per link, each navigating to the target's DetailView.
struct CrossLinkSection: View {
    let sourceId: UUID
    let heading: String
    var filterType: ContentType? = nil

    @State private var links: [(targetId: UUID, targetType: ContentType, linkText: String)] = []
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        Group {
            if !links.isEmpty {
                OrnamentalDivider(label: heading)
                    .padding(.vertical, AppSpacing.sm)
                ForEach(links, id: \.targetId) { link in
                    CrossLinkRow(targetId: link.targetId, targetType: link.targetType, linkText: link.linkText)
                }
            }
        }
        .task(id: sourceId) {
            links = []
            if let fetched = try? await DatabaseService.shared.fetchCrossReferencesWithType(for: sourceId, filterType: filterType) {
                links = fetched
            }
        }
    }
}

// MARK: - Individual Link Row

private struct CrossLinkRow: View {
    let targetId: UUID
    let targetType: ContentType
    let linkText: String

    @State private var entry: (any ContentEntry)?
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        Group {
            if let entry {
                NavigationLink(value: BrowseDestination.detail(AnyContentEntry(erasing: entry))) {
                    rowContent
                }
                .buttonStyle(.plain)
            } else {
                rowContent
                    .task {
                        entry = try? await DatabaseService.shared.getEntry(id: targetId, type: targetType)
                    }
            }
        }
    }

    private var rowContent: some View {
        HStack {
            Image(systemName: targetType.iconName)
                .font(.caption)
                .foregroundStyle(AppColors.contentTypeColor(targetType))
                .frame(width: 20)
            Text(linkText)
                .font(AppFonts.body)
                .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                .lineLimit(2)
            Spacer()
            Image(systemName: "chevron.right")
                .font(.caption2)
                .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
        }
        .padding(.vertical, AppSpacing.xs)
        .contentShape(Rectangle())
    }
}
