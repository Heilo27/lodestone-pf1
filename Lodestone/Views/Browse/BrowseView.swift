import SwiftUI

struct BrowseView: View {
    @State private var viewModel = BrowseViewModel()
    @Environment(\.colorScheme) private var colorScheme
    @Environment(SubscriptionService.self) private var subscriptionService

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: AppSpacing.xl) {
                    quickAccessSection
                    booksSection
                    if !viewModel.recentlyViewed.isEmpty {
                        recentlyViewedSection
                    }
                }
                .padding(.horizontal, AppSpacing.base)
                .padding(.vertical, AppSpacing.base)
                .padding(.bottom, AppSpacing.xxxl)
            }
            .background(AppColors.adaptiveBackground(colorScheme))
            .navigationTitle(AppConstants.appName)
            .task {
                await viewModel.loadHomeData()
            }
        }
    }

    // MARK: - Quick Access

    private var quickAccessSection: some View {
        VStack(alignment: .leading, spacing: AppSpacing.sm) {
            sectionHeader("Quick Access")

            LazyVGrid(
                columns: [GridItem(.adaptive(minimum: 96, maximum: 130))],
                spacing: AppSpacing.md
            ) {
                ForEach(ContentType.allCases) { type in
                    NavigationLink(destination: CategoryListView(contentType: type)) {
                        QuickAccessTile(type: type, count: viewModel.categoryCounts[type])
                    }
                    .buttonStyle(.plain)
                    .accessibilityLabel("\(type.displayName), \(viewModel.categoryCounts[type] ?? 0) entries")
                }
            }
        }
    }

    // MARK: - Books

    private var booksSection: some View {
        VStack(alignment: .leading, spacing: AppSpacing.sm) {
            sectionHeader("Your Books")

            if viewModel.isLoadingBooks {
                HStack { Spacer(); ProgressView(); Spacer() }
                    .padding(.vertical, AppSpacing.lg)
            } else if viewModel.books.isEmpty {
                Text("No books found")
                    .font(AppFonts.body)
                    .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                    .padding(.vertical, AppSpacing.sm)
            } else {
                VStack(spacing: 0) {
                    ForEach(Array(viewModel.books.enumerated()), id: \.element.id) { index, book in
                        NavigationLink(destination: BookContentsView(source: book)) {
                            BookRow(book: book, isUnlocked: subscriptionService.isUnlocked)
                                .padding(.horizontal, AppSpacing.base)
                                .padding(.vertical, AppSpacing.md)
                                .background(AppColors.adaptiveSurface(colorScheme))
                        }
                        .buttonStyle(.plain)

                        if index < viewModel.books.count - 1 {
                            Divider()
                                .padding(.leading, AppSpacing.base)
                                .background(AppColors.adaptiveSurface(colorScheme))
                        }
                    }
                }
                .clipShape(RoundedRectangle(cornerRadius: AppRadius.medium))
                .overlay(
                    RoundedRectangle(cornerRadius: AppRadius.medium)
                        .strokeBorder(AppColors.adaptiveBorder(colorScheme), lineWidth: 0.5)
                )
            }
        }
    }

    // MARK: - Recently Viewed

    private var recentlyViewedSection: some View {
        VStack(alignment: .leading, spacing: AppSpacing.sm) {
            sectionHeader("Recently Viewed")

            VStack(spacing: 0) {
                ForEach(Array(viewModel.recentlyViewed.enumerated()), id: \.element.id) { index, recent in
                    NavigationLink(destination: RecentEntryLoader(recent: recent)) {
                        HStack(spacing: AppSpacing.md) {
                            ContentTypeIconBadge(type: recent.contentType, size: 32)
                            VStack(alignment: .leading, spacing: 2) {
                                Text(recent.title)
                                    .font(AppFonts.headline)
                                    .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                                Text(recent.contentType.singularName)
                                    .font(AppFonts.caption)
                                    .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                            }
                            Spacer()
                            Image(systemName: "chevron.right")
                                .font(.caption)
                                .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                        }
                        .padding(.horizontal, AppSpacing.base)
                        .padding(.vertical, AppSpacing.md)
                        .background(AppColors.adaptiveSurface(colorScheme))
                    }
                    .buttonStyle(.plain)

                    if index < viewModel.recentlyViewed.count - 1 {
                        Divider()
                            .padding(.leading, AppSpacing.base)
                            .background(AppColors.adaptiveSurface(colorScheme))
                    }
                }
            }
            .clipShape(RoundedRectangle(cornerRadius: AppRadius.medium))
            .overlay(
                RoundedRectangle(cornerRadius: AppRadius.medium)
                    .strokeBorder(AppColors.adaptiveBorder(colorScheme), lineWidth: 0.5)
            )
        }
    }

    // MARK: - Helpers

    private func sectionHeader(_ title: String) -> some View {
        Text(title)
            .font(AppFonts.caption.weight(.semibold))
            .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
            .textCase(.uppercase)
            .tracking(0.8)
    }
}

// MARK: - Quick Access Tile

struct QuickAccessTile: View {
    let type: ContentType
    var count: Int?

    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        VStack(spacing: AppSpacing.sm) {
            ContentTypeIconBadge(type: type, size: 36)

            Text(type.displayName)
                .font(AppFonts.caption.weight(.medium))
                .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                .multilineTextAlignment(.center)

            if let count {
                Text("\(count)")
                    .font(AppFonts.caption2)
                    .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, AppSpacing.md)
        .background(AppColors.adaptiveSurface(colorScheme), in: RoundedRectangle(cornerRadius: AppRadius.medium))
        .overlay(
            RoundedRectangle(cornerRadius: AppRadius.medium)
                .strokeBorder(AppColors.adaptiveBorder(colorScheme), lineWidth: 0.5)
        )
    }
}

// MARK: - Book Row

struct BookRow: View {
    let book: BookSource
    var isUnlocked: Bool = false

    @Environment(\.colorScheme) private var colorScheme

    private var isLocked: Bool { book.isPremium && !isUnlocked }

    var body: some View {
        HStack(spacing: AppSpacing.md) {
            Image(systemName: "books.vertical.fill")
                .foregroundStyle(isLocked ? AppColors.premiumGold : AppColors.adaptivePrimary(colorScheme))
                .frame(width: 28)

            VStack(alignment: .leading, spacing: 2) {
                Text(book.name)
                    .font(AppFonts.headline)
                    .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                Text("\(book.entryCount) entries")
                    .font(AppFonts.caption)
                    .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
            }

            Spacer()

            if isLocked {
                PremiumBadge(compact: true)
            }

            Image(systemName: "chevron.right")
                .font(.caption)
                .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                .accessibilityHidden(true)
        }
    }
}

// MARK: - Recent Entry Loader

struct RecentEntryLoader: View {
    let recent: RecentEntry
    @State private var entry: (any ContentEntry)?
    @State private var isLoading = true

    var body: some View {
        Group {
            if let entry {
                DetailView(entry: entry)
            } else if isLoading {
                ProgressView("Loading...")
                    .navigationTitle(recent.title)
            } else {
                ContentUnavailableView("Entry not found", systemImage: "questionmark.circle")
                    .navigationTitle(recent.title)
            }
        }
        .task {
            entry = try? await DatabaseService.shared.getEntry(id: recent.id, type: recent.contentType)
            isLoading = false
        }
    }
}

#Preview {
    BrowseView()
}
