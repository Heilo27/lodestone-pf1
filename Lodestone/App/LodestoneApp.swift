import SwiftUI

@main
struct LodestoneApp: App {
    @State private var isLoading = true
    @State private var loadError: String?
    @State private var subscriptionService = SubscriptionService()
    @State private var favoritesService = FavoritesService()
    @State private var recentlyViewedService = RecentlyViewedService()

    var body: some Scene {
        WindowGroup {
            if isLoading {
                DatabaseLoadingView(error: loadError)
                    .task {
                        await initializeDatabase()
                    }
            } else {
                ContentView()
                    .environment(subscriptionService)
                    .environment(favoritesService)
                    .environment(recentlyViewedService)
            }
        }
    }

    private func initializeDatabase() async {
        let start = Date()
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
        } catch {
            loadError = error.localizedDescription
        }

        // Ensure splash shows for at least 2.4s
        let elapsed = Date().timeIntervalSince(start)
        let remaining = 2.4 - elapsed
        if remaining > 0 {
            try? await Task.sleep(for: .seconds(remaining))
        }

        isLoading = false
    }
}

// MARK: - Loading View

struct DatabaseLoadingView: View {
    let error: String?

    var body: some View {
        ZStack {
            // Dark parchment gradient background
            LinearGradient(
                colors: [Color(hex: "2A1F0A"), Color(hex: "1C1A17")],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()

            VStack(spacing: 0) {
                Spacer()

                // Top ornamental divider
                OrnamentalDivider(color: AppColors.premiumGold)
                    .padding(.horizontal, AppSpacing.xxxl)
                    .padding(.bottom, AppSpacing.xl)

                // Book icon with gold gradient
                ZStack {
                    LinearGradient(
                        colors: [Color(hex: "D4AF37"), Color(hex: "8B6508")],
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
                OrnamentalDivider(color: AppColors.premiumGold)
                    .padding(.horizontal, AppSpacing.xxxl)

                Spacer()

                // Status area
                if let error {
                    VStack(spacing: AppSpacing.sm) {
                        Image(systemName: "exclamationmark.triangle")
                            .foregroundStyle(.red)
                        Text("Failed to load database")
                            .font(AppFonts.headline)
                            .foregroundStyle(Color(hex: "F0EDE6"))
                        Text(error)
                            .font(AppFonts.caption)
                            .foregroundStyle(Color(hex: "9A9590"))
                            .multilineTextAlignment(.center)
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
