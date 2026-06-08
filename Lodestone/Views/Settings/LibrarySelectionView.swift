import SwiftUI

struct LibrarySelectionView: View {
    @Environment(LibraryFilterService.self) private var libraryFilter
    @Environment(SubscriptionService.self) private var subscriptionService
    @Environment(\.colorScheme) private var colorScheme

    private var booksBySeriesGroups: [(series: BookSeries, books: [BookSource])] {
        var dict: [BookSeries: [BookSource]] = [:]
        for book in libraryFilter.allBooks { dict[book.series, default: []].append(book) }
        return BookSeries.ordered.compactMap { series in
            guard let books = dict[series], !books.isEmpty else { return nil }
            return (series, books)
        }
    }

    var body: some View {
        List {
            presetSection
            ForEach(booksBySeriesGroups, id: \.series) { group in
                seriesSection(group)
            }
        }
        .listStyle(.insetGrouped)
        .navigationTitle("My Library")
        .navigationBarTitleDisplayMode(.inline)
    }

    // MARK: - Presets

    private var presetSection: some View {
        Section {
            HStack(spacing: AppSpacing.sm) {
                PresetButton(
                    label: "All Books",
                    isActive: !libraryFilter.isFiltered
                ) {
                    libraryFilter.selectAll()
                }
                PresetButton(
                    label: "Core Only",
                    isActive: libraryFilter.isFiltered && libraryFilter.activeNames == Set(libraryFilter.allBooks.filter { $0.series == .core }.map(\.name))
                ) {
                    libraryFilter.selectCore()
                }
            }
            .listRowInsets(EdgeInsets(top: AppSpacing.sm, leading: AppSpacing.base, bottom: AppSpacing.sm, trailing: AppSpacing.base))
            .listRowBackground(Color.clear)
        } header: {
            Text("Quick Select")
                .font(AppFonts.caption.weight(.semibold))
                .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                .textCase(.uppercase)
                .tracking(0.8)
        } footer: {
            if libraryFilter.isFiltered {
                Text("\(libraryFilter.activeNames.count) of \(libraryFilter.allBooks.count) books active — only content from selected books appears in Browse and Search.")
                    .font(AppFonts.caption)
                    .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
            } else {
                Text("All books are active. Content from every source appears in Browse and Search.")
                    .font(AppFonts.caption)
                    .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
            }
        }
    }

    // MARK: - Series Section

    private func seriesSection(_ group: (series: BookSeries, books: [BookSource])) -> some View {
        Section {
            ForEach(group.books) { book in
                bookRow(book)
            }
        } header: {
            HStack(spacing: AppSpacing.xs) {
                Image(systemName: group.series.iconName)
                    .font(.caption)
                    .accessibilityHidden(true)
                Text(group.series.rawValue)
                    .font(AppFonts.caption.weight(.semibold))
                    .tracking(0.8)
            }
            .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
            .textCase(.uppercase)
        }
    }

    private func bookRow(_ book: BookSource) -> some View {
        let isLocked = book.isPremium && !subscriptionService.isUnlocked
        let isActive = libraryFilter.isActive(book)

        return Button {
            guard !isLocked else { return }
            libraryFilter.toggle(book)
        } label: {
            HStack(spacing: AppSpacing.md) {
                Image(systemName: isActive ? "checkmark.circle.fill" : "circle")
                    .foregroundStyle(isActive ? AppColors.adaptivePrimary(colorScheme) : AppColors.adaptiveTextSecondary(colorScheme))
                    .font(.body)
                    .accessibilityHidden(true)

                VStack(alignment: .leading, spacing: 2) {
                    Text(book.name)
                        .font(AppFonts.body)
                        .foregroundStyle(isLocked ? AppColors.adaptiveTextSecondary(colorScheme) : AppColors.adaptiveTextPrimary(colorScheme))
                    Text("\(book.entryCount) entries")
                        .font(AppFonts.caption)
                        .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                }

                Spacer()

                if isLocked {
                    PremiumBadge(compact: true)
                }
            }
        }
        .buttonStyle(.plain)
        .disabled(isLocked)
    }
}

// MARK: - Preset Button

private struct PresetButton: View {
    let label: String
    let isActive: Bool
    let action: () -> Void

    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        Button(action: action) {
            Text(label)
                .font(AppFonts.subheadline.weight(.semibold))
                .frame(maxWidth: .infinity, minHeight: 38)
                .foregroundStyle(isActive ? .white : AppColors.adaptiveTextPrimary(colorScheme))
                .background(
                    isActive
                        ? AppColors.adaptivePrimary(colorScheme)
                        : AppColors.adaptiveSurface(colorScheme),
                    in: RoundedRectangle(cornerRadius: AppRadius.medium)
                )
                .overlay(
                    RoundedRectangle(cornerRadius: AppRadius.medium)
                        .strokeBorder(
                            isActive ? Color.clear : AppColors.adaptiveBorder(colorScheme),
                            lineWidth: 0.5
                        )
                )
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    NavigationStack {
        LibrarySelectionView()
    }
}
