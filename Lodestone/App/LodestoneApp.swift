import SwiftUI

@main
struct LodestoneApp: App {
    @State private var isLoading = true
    @State private var loadError: String?
    @State private var subscriptionService = SubscriptionService()
    @State private var favoritesService = FavoritesService()
    @State private var recentlyViewedService = RecentlyViewedService()
    @Environment(\.scenePhase) private var scenePhase

    private let subscriptionCheckKey = "lastSubscriptionCheckDate"
    private let subscriptionCheckInterval: TimeInterval = 24 * 60 * 60

    var body: some Scene {
        WindowGroup {
            if isLoading {
                DatabaseLoadingView(
                    error: loadError,
                    onRetry: {
                        loadError = nil
                        isLoading = true
                        Task { await initializeDatabase() }
                    },
                    onResetAndRetry: {
                        loadError = nil
                        isLoading = true
                        Task { await resetAndInitialize() }
                    }
                )
                .task {
                    await initializeDatabase()
                }
            } else {
                ContentView()
                    .environment(subscriptionService)
                    .environment(favoritesService)
                    .environment(recentlyViewedService)
                    .onChange(of: scenePhase) { _, phase in
                        if phase == .active {
                            Task { await checkSubscriptionIfNeeded() }
                        }
                    }
            }
        }
    }

    private func checkSubscriptionIfNeeded() async {
        let lastCheck = UserDefaults.standard.object(forKey: subscriptionCheckKey) as? Date ?? .distantPast
        guard Date().timeIntervalSince(lastCheck) > subscriptionCheckInterval else { return }
        await subscriptionService.checkSubscriptionStatus()
        UserDefaults.standard.set(Date(), forKey: subscriptionCheckKey)
    }

    private func initializeDatabase() async {
        do {
            let db = DatabaseService.shared
            try await db.open()

            let populated = try await db.isDatabasePopulated
            let installedVersion = UserDefaults.standard.integer(forKey: "seedVersion")
            let needsReseed = !populated || installedVersion < SeedDataBuilder.currentSeedVersion

            if needsReseed {
                let seeder = SeedDataBuilder(db: db)
                try await seeder.seed()
                UserDefaults.standard.set(SeedDataBuilder.currentSeedVersion, forKey: "seedVersion")
            }

            await subscriptionService.checkSubscriptionStatus()
            await favoritesService.loadFromDatabase()
            isLoading = false
        } catch {
            loadError = error.localizedDescription
        }
    }

    private func resetAndInitialize() async {
        // Delete the SQLite file so the next open() starts fresh
        let dbPath = DatabaseService.writableDatabasePath()
        try? FileManager.default.removeItem(atPath: dbPath)
        UserDefaults.standard.removeObject(forKey: "seedVersion")
        await initializeDatabase()
    }
}

// MARK: - Loading View

struct DatabaseLoadingView: View {
    let error: String?
    var onRetry: (() -> Void)? = nil
    var onResetAndRetry: (() -> Void)? = nil

    var body: some View {
        ZStack {
            // Dark crimson gradient background
            LinearGradient(
                colors: [Color(hex: "1E0808"), Color(hex: "170606")],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()

            VStack(spacing: 0) {
                Spacer()

                // Top ornamental divider
                OrnamentalDivider(color: AppColors.primary)
                    .padding(.horizontal, AppSpacing.xxxl)
                    .padding(.bottom, AppSpacing.xl)

                // Book icon with crimson gradient
                ZStack {
                    LinearGradient(
                        colors: [Color(hex: "C0392B"), Color(hex: "7A1010")],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                    .mask(
                        Image(systemName: "book.closed.fill")
                            .font(.system(size: 72))
                    )
                }
                .frame(width: 80, height: 80)
                .padding(.bottom, AppSpacing.xl)

                // Wordmark
                Text("Lodestone PF2")
                    .font(AppFonts.displayLarge)
                    .foregroundStyle(Color(hex: "F0EDE6"))
                    .padding(.bottom, AppSpacing.sm)

                Text("Pathfinder 2E Reference")
                    .font(AppFonts.callout)
                    .foregroundStyle(Color(hex: "9A9590"))
                    .padding(.bottom, AppSpacing.xl)

                // Bottom ornamental divider
                OrnamentalDivider(color: AppColors.primary)
                    .padding(.horizontal, AppSpacing.xxxl)

                Spacer()

                // Status area
                if let error {
                    VStack(spacing: AppSpacing.md) {
                        Image(systemName: "exclamationmark.triangle")
                            .foregroundStyle(.red)
                        Text("Failed to load database")
                            .font(AppFonts.headline)
                            .foregroundStyle(Color(hex: "F0EDE6"))
                        Text(error)
                            .font(AppFonts.caption)
                            .foregroundStyle(Color(hex: "9A9590"))
                            .multilineTextAlignment(.center)

                        HStack(spacing: AppSpacing.md) {
                            if let onRetry {
                                Button("Retry") { onRetry() }
                                    .font(AppFonts.subheadline.weight(.semibold))
                                    .foregroundStyle(.white)
                                    .padding(.horizontal, AppSpacing.lg)
                                    .padding(.vertical, AppSpacing.sm)
                                    .background(AppColors.primary, in: Capsule())
                            }

                            if let onResetAndRetry {
                                Button("Reset & Retry") { onResetAndRetry() }
                                    .font(AppFonts.subheadline.weight(.semibold))
                                    .foregroundStyle(.white)
                                    .padding(.horizontal, AppSpacing.lg)
                                    .padding(.vertical, AppSpacing.sm)
                                    .background(Color.red.opacity(0.8), in: Capsule())
                            }
                        }
                        .padding(.top, AppSpacing.xs)
                    }
                    .padding(.horizontal, AppSpacing.xl)
                } else {
                    VStack(spacing: AppSpacing.sm) {
                        ProgressView()
                            .tint(AppColors.premiumGold)
                            .scaleEffect(1.1)
                        Text("Loading content...")
                            .font(AppFonts.caption)
                            .foregroundStyle(Color(hex: "9A9590"))
                    }
                }

                Spacer()
                    .frame(height: AppSpacing.xxxl)
            }
            .padding(.horizontal, AppSpacing.xxl)
        }
        .preferredColorScheme(.dark)
    }
}
