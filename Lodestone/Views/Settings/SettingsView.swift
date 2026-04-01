import SwiftUI

struct SettingsView: View {
    @AppStorage("selectedTheme") private var selectedTheme: String = "system"
    @State private var subscriptionService = SubscriptionService()

    var body: some View {
        NavigationStack {
            List {
                Section("Subscription") {
                    if subscriptionService.isSubscribed {
                        Label("Premium Active", systemImage: "crown.fill")
                            .foregroundStyle(AppColors.premiumGold)
                    } else {
                        Button {
                            Task { await subscriptionService.loadProducts() }
                        } label: {
                            Label("Upgrade to Premium", systemImage: "crown")
                        }
                    }
                    Button("Restore Purchases") {
                        Task { await subscriptionService.restorePurchases() }
                    }
                }

                Section("Appearance") {
                    Picker("Theme", selection: $selectedTheme) {
                        Text("System").tag("system")
                        Text("Light").tag("light")
                        Text("Dark").tag("dark")
                    }
                }

                Section("Data") {
                    NavigationLink {
                        Text("Database info will go here")
                            .navigationTitle("Database")
                    } label: {
                        Label("Database", systemImage: "cylinder")
                    }
                }

                Section("About") {
                    HStack {
                        Text("Version")
                        Spacer()
                        Text(Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "1.0")
                            .foregroundStyle(.secondary)
                    }
                    Link(destination: URL(string: "https://heiloprojects.com")!) {
                        Label("Website", systemImage: "globe")
                    }
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    SettingsView()
}
