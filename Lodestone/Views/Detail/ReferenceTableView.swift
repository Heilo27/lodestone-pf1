import SwiftUI

// MARK: - Reference Table Section

/// Renders a list of reference tables below rule/skill body text.
struct ReferenceTableSection: View {
    let tables: [ReferenceTable]
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        VStack(alignment: .leading, spacing: AppSpacing.lg) {
            OrnamentalDivider(label: "Reference Tables")
                .padding(.vertical, AppSpacing.sm)

            ForEach(Array(tables.enumerated()), id: \.offset) { _, table in
                ReferenceTableCard(table: table)
            }
        }
    }
}

// MARK: - Individual Table Card

private struct ReferenceTableCard: View {
    let table: ReferenceTable
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        VStack(alignment: .leading, spacing: AppSpacing.xs) {
            if !table.title.isEmpty {
                Text(table.title)
                    .font(AppFonts.caption.weight(.semibold))
                    .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                    .padding(.bottom, 2)
            }

            VStack(spacing: 0) {
                // Header row
                TableRow(
                    cells: table.headers,
                    columnCount: table.headers.count,
                    isHeader: true
                )

                // Data rows
                ForEach(Array(table.rows.enumerated()), id: \.offset) { index, row in
                    TableRow(
                        cells: row,
                        columnCount: table.headers.count,
                        isHeader: false,
                        isAlternate: index % 2 == 1
                    )
                }
            }
            .clipShape(RoundedRectangle(cornerRadius: AppRadius.small))
            .overlay(
                RoundedRectangle(cornerRadius: AppRadius.small)
                    .strokeBorder(AppColors.adaptiveBorder(colorScheme), lineWidth: 0.5)
            )
        }
    }
}

// MARK: - Table Row

private struct TableRow: View {
    let cells: [String]
    let columnCount: Int
    let isHeader: Bool
    var isAlternate: Bool = false

    @Environment(\.colorScheme) private var colorScheme

    private var background: Color {
        if isHeader {
            return AppColors.adaptiveSurfaceElevated(colorScheme)
        }
        return isAlternate
            ? AppColors.adaptiveSurface(colorScheme).opacity(0.5)
            : AppColors.adaptiveSurface(colorScheme)
    }

    var body: some View {
        HStack(alignment: .top, spacing: 0) {
            ForEach(Array(cells.enumerated()), id: \.offset) { index, cell in
                Text(cell)
                    .font(isHeader ? AppFonts.caption.weight(.semibold) : AppFonts.caption)
                    .foregroundStyle(
                        isHeader
                            ? AppColors.adaptiveTextPrimary(colorScheme)
                            : AppColors.adaptiveTextSecondary(colorScheme)
                    )
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, AppSpacing.sm)
                    .padding(.vertical, AppSpacing.xs + 2)
                    .textSelection(.enabled)

                if index < cells.count - 1 {
                    Rectangle()
                        .fill(AppColors.adaptiveBorder(colorScheme))
                        .frame(width: 0.5)
                }
            }
        }
        .background(background)
    }
}

// MARK: - Preview

#Preview {
    ScrollView {
        VStack(alignment: .leading, spacing: AppSpacing.xl) {
            ReferenceTableSection(tables: referenceTables(for: "acrobatics") ?? [])
        }
        .padding()
    }
}
