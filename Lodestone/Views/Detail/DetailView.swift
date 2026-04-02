import SwiftUI

struct DetailView: View {
    let entry: any ContentEntry
    @Environment(FavoritesService.self) private var favoritesService
    @Environment(RecentlyViewedService.self) private var recentlyViewedService
    @Environment(SubscriptionService.self) private var subscriptionService
    @State private var showPaywall = false
    @Environment(\.colorScheme) private var colorScheme

    private var isLocked: Bool {
        entry.isPremium && !subscriptionService.isUnlocked
    }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                headerView
                    .padding(.horizontal, AppSpacing.base)
                    .padding(.top, AppSpacing.base)
                    .padding(.bottom, AppSpacing.md)

                OrnamentalDivider()
                    .padding(.horizontal, AppSpacing.base)
                    .padding(.bottom, AppSpacing.base)

                if isLocked {
                    lockedContentOverlay
                        .padding(.horizontal, AppSpacing.base)
                } else {
                    if !entry.summary.isEmpty {
                        Text(entry.summary)
                            .font(AppFonts.body)
                            .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                            .padding(.horizontal, AppSpacing.base)
                            .padding(.bottom, AppSpacing.base)
                    }

                    typeSpecificView(for: entry)
                        .padding(.horizontal, AppSpacing.base)
                }
            }
            .padding(.bottom, AppSpacing.xxl)
        }
        .background(AppColors.adaptiveBackground(colorScheme))
        .navigationTitle(entry.title)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    favoritesService.toggle(entry)
                } label: {
                    Image(systemName: favoritesService.isFavorite(entry.id) ? "heart.fill" : "heart")
                        .foregroundStyle(favoritesService.isFavorite(entry.id) ? .red : AppColors.adaptiveTextSecondary(colorScheme))
                }
                .accessibilityLabel(favoritesService.isFavorite(entry.id) ? "Remove from favorites" : "Add to favorites")
            }
        }
        .sheet(isPresented: $showPaywall) {
            PaywallSheet(isPresented: $showPaywall, subscriptionService: subscriptionService, entry: isLocked ? entry : nil)
                .presentationDetents([.medium, .large])
                .presentationDragIndicator(.hidden)
        }
        .onAppear {
            recentlyViewedService.record(entry)
        }
    }

    // MARK: - Header

    private var headerView: some View {
        VStack(alignment: .leading, spacing: AppSpacing.sm) {
            HStack(spacing: AppSpacing.xs) {
                ContentTypeIconBadge(type: entry.contentType, size: 28)
                ContentTypeBadge(type: entry.contentType)
                SourceBadge(text: entry.source)
                if isLocked {
                    PremiumBadge(compact: true)
                }
                Spacer()
            }
            .accessibilityElement(children: .combine)

            Text(entry.title)
                .font(AppFonts.displayMedium)
                .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                .fixedSize(horizontal: false, vertical: true)
        }
    }

    // MARK: - Locked Overlay

    private var lockedContentOverlay: some View {
        VStack(spacing: AppSpacing.lg) {
            if !entry.summary.isEmpty {
                Text(entry.summary)
                    .font(AppFonts.body)
                    .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
            }

            RoundedRectangle(cornerRadius: AppRadius.large)
                .fill(AppColors.adaptiveSurfaceElevated(colorScheme))
                .overlay {
                    VStack(spacing: AppSpacing.md) {
                        Image(systemName: "lock.fill")
                            .font(.title)
                            .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))

                        Text("Premium Content")
                            .font(AppFonts.displaySmall)
                            .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))

                        Text("From \(entry.source)")
                            .font(AppFonts.caption)
                            .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))

                        Button {
                            showPaywall = true
                        } label: {
                            Label("Unlock with Premium", systemImage: "crown.fill")
                        }
                        .buttonStyle(PrimaryButtonStyle())
                        .padding(.horizontal, AppSpacing.xl)
                        .padding(.top, AppSpacing.xs)
                    }
                }
                .frame(minHeight: 220)
        }
    }

    // MARK: - Type Dispatch

    @ViewBuilder
    private func typeSpecificView(for entry: any ContentEntry) -> some View {
        switch entry {
        case let spell as SpellEntry:
            SpellDetailView(spell: spell)
        case let cls as ClassEntry:
            ClassDetailView(cls: cls)
        case let monster as MonsterEntry:
            MonsterDetailView(monster: monster)
        case let feat as FeatEntry:
            FeatDetailView(feat: feat)
        case let item as ItemEntry:
            ItemDetailView(item: item)
        case let ancestry as AncestryEntry:
            AncestryDetailView(ancestry: ancestry)
        case let trait as TraitEntry:
            TraitDetailView(trait: trait)
        case let rule as RuleEntry:
            RuleDetailView(rule: rule)
        case let background as BackgroundEntry:
            BackgroundDetailView(background: background)
        case let condition as ConditionEntry:
            ConditionDetailView(condition: condition)
        default:
            Text(entry.summary)
                .font(AppFonts.body)
        }
    }
}

#Preview {
    NavigationStack {
        DetailView(entry: SpellEntry.placeholder)
    }
}
