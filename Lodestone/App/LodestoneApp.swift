import SwiftUI

@main
struct LodestoneApp: App {
    @State private var isLoading = true
    @State private var loadError: String?

    var body: some Scene {
        WindowGroup {
            if isLoading {
                DatabaseLoadingView(error: loadError)
                    .task {
                        await initializeDatabase()
                    }
            } else {
                ContentView()
            }
        }
    }

    private func initializeDatabase() async {
        do {
            let db = DatabaseService.shared
            try await db.open()

            let populated = try await db.isDatabasePopulated
            if !populated {
                let seeder = SeedDataBuilder(db: db)
                try await seeder.seed()
            }
        } catch {
            loadError = error.localizedDescription
        }
        isLoading = false
    }
}

// MARK: - Loading View

struct DatabaseLoadingView: View {
    let error: String?

    var body: some View {
        VStack(spacing: 24) {
            Image(systemName: "book.closed.fill")
                .font(.system(size: 64))
                .foregroundStyle(AppColors.primary)

            Text("Lodestone")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("Pathfinder 1E Reference")
                .font(.subheadline)
                .foregroundStyle(.secondary)

            if let error {
                VStack(spacing: 8) {
                    Image(systemName: "exclamationmark.triangle")
                        .foregroundStyle(.red)
                    Text("Failed to load database")
                        .font(.headline)
                    Text(error)
                        .font(.caption)
                        .foregroundStyle(.secondary)
                        .multilineTextAlignment(.center)
                }
                .padding()
            } else {
                VStack(spacing: 12) {
                    ProgressView()
                        .scaleEffect(1.2)
                    Text("Loading content...")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
            }
        }
        .padding(40)
    }
}
