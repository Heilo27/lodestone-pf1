import SwiftUI

struct DetailView: View {
    let entry: any ContentEntry
    @Environment(FavoritesService.self) private var favoritesService
    @Environment(RecentlyViewedService.self) private var recentlyViewedService
    @Environment(SubscriptionService.self) private var subscriptionService
    @State private var showPaywall = false
    @State private var resolvedEntry: (any ContentEntry)?
    @Environment(\.colorScheme) private var colorScheme

    /// The fully-typed entry to display — fetched from DB if entry was type-erased.
    private var displayEntry: any ContentEntry { resolvedEntry ?? entry }

    private var isLocked: Bool {
        displayEntry.isPremium && !subscriptionService.isUnlocked
    }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                // Header area
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
                    // Type-specific detail (includes description — no summary duplication)
                    typeSpecificView(for: displayEntry)
                        .padding(.horizontal, AppSpacing.base)
                }
            }
            .padding(.bottom, AppSpacing.xxl)
        }
        .background(AppColors.adaptiveBackground(colorScheme))
        .navigationTitle(displayEntry.title)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    favoritesService.toggle(displayEntry)
                } label: {
                    Image(systemName: favoritesService.isFavorite(displayEntry.id) ? "heart.fill" : "heart")
                        .foregroundStyle(favoritesService.isFavorite(displayEntry.id) ? .red : AppColors.adaptiveTextSecondary(colorScheme))
                }
                .accessibilityLabel(favoritesService.isFavorite(displayEntry.id) ? "Remove from favorites" : "Add to favorites")
                .accessibilityValue(favoritesService.isFavorite(displayEntry.id) ? "Added to favorites" : "Not in favorites")
            }
        }
        .sheet(isPresented: $showPaywall) {
            PaywallSheet(isPresented: $showPaywall, subscriptionService: subscriptionService, entry: isLocked ? displayEntry : nil)
                .presentationDetents([.large])
                .presentationDragIndicator(.hidden)
        }
        .onChange(of: subscriptionService.isSubscribed) { _, isSubscribed in
            if isSubscribed { showPaywall = false }
        }
        .task {
            // If we received a type-erased AnyContentEntry, re-fetch the full typed entry from DB
            if entry is AnyContentEntry {
                resolvedEntry = try? await DatabaseService.shared.getEntry(id: entry.id, type: entry.contentType)
            }
            if subscriptionService.subscriptionStatus == .unknown {
                await subscriptionService.checkSubscriptionStatus()
            }
        }
        .onAppear {
            recentlyViewedService.record(entry)
        }
    }

    // MARK: - Header

    private var headerView: some View {
        VStack(alignment: .leading, spacing: AppSpacing.sm) {
            // Badges row
            HStack(spacing: AppSpacing.xs) {
                ContentTypeIconBadge(type: displayEntry.contentType, size: 28)
                ContentTypeBadge(type: displayEntry.contentType)
                SourceBadge(text: displayEntry.source)
                if isLocked {
                    PremiumBadge(compact: true)
                }
                Spacer()
            }
            .accessibilityElement(children: .combine)

            // Full-width title
            Text(displayEntry.title)
                .font(AppFonts.displayMedium)
                .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                .fixedSize(horizontal: false, vertical: true)
        }
    }

    // MARK: - Locked Overlay

    private var lockedContentOverlay: some View {
        VStack(spacing: AppSpacing.lg) {
            if !displayEntry.summary.isEmpty {
                Text(displayEntry.summary)
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
                            .accessibilityHidden(true)

                        Text("Premium Content")
                            .font(AppFonts.displaySmall)
                            .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))

                        Text("From \(displayEntry.source)")
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
        if let spell = entry as? SpellEntry {
            SpellDetailView(spell: spell)
        } else if let classEntry = entry as? ClassEntry {
            ClassDetailView(classEntry: classEntry)
        } else if let monster = entry as? MonsterEntry {
            MonsterDetailView(monster: monster)
        } else if let feat = entry as? FeatEntry {
            FeatDetailView(feat: feat)
        } else if let item = entry as? ItemEntry {
            ItemDetailView(item: item)
        } else if let race = entry as? RaceEntry {
            RaceDetailView(race: race)
        } else if let trait = entry as? TraitEntry {
            TraitDetailView(trait: trait)
        } else if let rule = entry as? RuleEntry {
            RuleDetailView(rule: rule)
        } else {
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
