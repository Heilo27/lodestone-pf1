import SwiftUI

struct SettingsView: View {
    @AppStorage("selectedTheme") private var selectedTheme: String = "system"
    @Environment(SubscriptionService.self) private var subscriptionService
    @State private var showPaywall = false
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        NavigationStack {
            List {
                subscriptionSection
                appearanceSection
                dataSection
                aboutSection
                #if DEBUG
                debugSection
                #endif
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Settings")
            .sheet(isPresented: $showPaywall) {
                PaywallSheet(isPresented: $showPaywall, subscriptionService: subscriptionService)
                    .presentationDetents([.medium, .large])
                    .presentationDragIndicator(.hidden)
            }
            .task {
                await subscriptionService.checkSubscriptionStatus()
            }
        }
    }

    // MARK: - Subscription Section

    @ViewBuilder
    private var subscriptionSection: some View {
        Section {
            if subscriptionService.isSubscribed {
                // Premium active card
                VStack(alignment: .leading, spacing: AppSpacing.sm) {
                    HStack {
                        Image(systemName: "crown.fill")
                            .foregroundStyle(AppColors.premiumGold)
                        Text("Premium Active")
                            .font(AppFonts.headline)
                            .foregroundStyle(AppColors.premiumGold)
                        Spacer()
                        Text("Active")
                            .font(AppFonts.chip())
                            .foregroundStyle(.white)
                            .padding(.horizontal, AppSpacing.sm)
                            .padding(.vertical, 3)
                            .background(Color(.systemGreen).opacity(0.8), in: Capsule())
                    }

                    if let expiry = subscriptionService.expirationDate {
                        Text("Renews \(expiry.formatted(.dateTime.month(.abbreviated).day().year()))")
                            .font(AppFonts.caption)
                            .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                    }
                }
                .padding(.vertical, AppSpacing.xs)

                if let url = URL(string: "https://apps.apple.com/account/subscriptions") {
                    Link(destination: url) {
                        Label("Manage Subscription", systemImage: "arrow.up.right.square")
                            .font(AppFonts.body)
                    }
                }
            } else {
                Button {
                    showPaywall = true
                } label: {
                    HStack {
                        Label("Upgrade to Premium", systemImage: "crown")
                            .font(AppFonts.body)
                            .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                        Spacer()
                        if let monthly = subscriptionService.products.first(where: { $0.id.contains("monthly") }) {
                            Text("\(monthly.displayPrice)/mo")
                                .font(AppFonts.subheadline.weight(.semibold))
                                .foregroundStyle(AppColors.adaptivePrimary(colorScheme))
                        }
                    }
                }

                Text("Unlocks all expansion books for Lodestone PF1, PF2, and SF1.")
                    .font(AppFonts.caption)
                    .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
            }

            Button("Restore Purchases") {
                Task { await subscriptionService.restorePurchases() }
            }
            .font(AppFonts.body)
            .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))

            if let error = subscriptionService.purchaseError {
                Text(error)
                    .font(AppFonts.caption)
                    .foregroundStyle(Color(.systemRed))
            }
        } header: {
            Text("Subscription")
                .font(AppFonts.caption.weight(.semibold))
                .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                .textCase(.uppercase)
                .tracking(0.8)
        }
    }

    // MARK: - Appearance

    private var appearanceSection: some View {
        Section {
            Picker("Theme", selection: $selectedTheme) {
                Text("System").tag("system")
                Text("Light").tag("light")
                Text("Dark").tag("dark")
            }
            .font(AppFonts.body)
        } header: {
            Text("Appearance")
                .font(AppFonts.caption.weight(.semibold))
                .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                .textCase(.uppercase)
                .tracking(0.8)
        }
    }

    // MARK: - Data

    private var dataSection: some View {
        Section {
            NavigationLink {
                DatabaseInfoView()
            } label: {
                Label("Database", systemImage: "cylinder")
                    .font(AppFonts.body)
            }
        } header: {
            Text("Data")
                .font(AppFonts.caption.weight(.semibold))
                .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                .textCase(.uppercase)
                .tracking(0.8)
        }
    }

    // MARK: - About

    private var aboutSection: some View {
        Section {
            HStack {
                Text("Version")
                    .font(AppFonts.body)
                Spacer()
                Text(Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "1.0")
                    .font(AppFonts.body)
                    .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
            }

            Link(destination: URL(string: "https://heiloprojects.com")!) {
                Label("Website", systemImage: "globe")
                    .font(AppFonts.body)
            }

            NavigationLink {
                PrivacyPolicyView()
            } label: {
                Label("Privacy Policy", systemImage: "hand.raised")
                    .font(AppFonts.body)
            }

            NavigationLink {
                TermsOfServiceView()
            } label: {
                Label("Terms of Service", systemImage: "doc.text")
                    .font(AppFonts.body)
            }

            NavigationLink {
                OGLAttributionView()
            } label: {
                Label("Open Game License", systemImage: "doc.plaintext")
                    .font(AppFonts.body)
            }
        } header: {
            Text("About")
                .font(AppFonts.caption.weight(.semibold))
                .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                .textCase(.uppercase)
                .tracking(0.8)
        }
    }

    // MARK: - Debug

    #if DEBUG
    private var debugSection: some View {
        Section {
            Toggle(isOn: Binding(
                get: { subscriptionService.debugUnlockAll },
                set: { subscriptionService.debugUnlockAll = $0 }
            )) {
                Label("Unlock All Content", systemImage: "bolt.fill")
                    .font(AppFonts.body)
            }
            .tint(AppColors.premiumGold)

            Text("Bypasses StoreKit. Debug builds only — never ships to users.")
                .font(AppFonts.caption)
                .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
        } header: {
            Text("Debug")
                .font(AppFonts.caption.weight(.semibold))
                .foregroundStyle(.orange)
                .textCase(.uppercase)
                .tracking(0.8)
        }
    }
    #endif
}

// MARK: - Database Info

private struct DatabaseInfoView: View {
    @State private var counts: [ContentType: Int] = [:]
    @State private var isLoading = true
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        List {
            Section {
                HStack {
                    Text("Version")
                        .font(AppFonts.body)
                    Spacer()
                    Text("v\(SeedDataBuilder.currentSeedVersion)")
                        .font(AppFonts.body)
                        .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                }
                HStack {
                    Text("Storage")
                        .font(AppFonts.body)
                    Spacer()
                    Text("On-device")
                        .font(AppFonts.body)
                        .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                }
            } header: {
                Text("Database").textCase(.uppercase).tracking(0.8)
            }

            Section {
                if isLoading {
                    HStack { Spacer(); ProgressView(); Spacer() }
                } else {
                    ForEach(ContentType.allCases) { type in
                        HStack {
                            Label(type.displayName, systemImage: type.iconName)
                                .font(AppFonts.body)
                            Spacer()
                            Text("\(counts[type] ?? 0)")
                                .font(AppFonts.body)
                                .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                        }
                    }
                }
            } header: {
                Text("Content").textCase(.uppercase).tracking(0.8)
            }
        }
        .navigationTitle("Database")
        .navigationBarTitleDisplayMode(.inline)
        .task {
            do {
                for type in ContentType.allCases {
                    counts[type] = try await DatabaseService.shared.countForType(type)
                }
            } catch {}
            isLoading = false
        }
    }
}

// MARK: - Legal Views

private struct PrivacyPolicyView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: AppSpacing.lg) {
                Text("Our full privacy policy is available at:")
                    .padding(.horizontal)
                if let url = URL(string: "https://heiloprojects.com/privacy") {
                    Link("heiloprojects.com/privacy", destination: url)
                        .padding(.horizontal)
                }
            }
            .padding(.vertical)
        }
        .navigationTitle("Privacy Policy")
        .navigationBarTitleDisplayMode(.inline)
    }
}

private struct TermsOfServiceView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: AppSpacing.lg) {
                Text("Terms of Service")
                    .font(.title2.weight(.bold))

                Text("Last updated: 2026-04-02")
                    .font(.caption)
                    .foregroundStyle(.secondary)

                Group {
                    Text("Use of App")
                        .font(.headline)
                    Text("Lodestone is provided for personal, non-commercial use as a reference tool for tabletop role-playing games. You agree to use this app in compliance with all applicable laws and Apple's App Store terms.")

                    Text("Content")
                        .font(.headline)
                    Text("Lodestone content is sourced from the Pathfinder System Reference Document (SRD) and is licensed under the Open Game License v1.0a. No proprietary Paizo content is included.")

                    Text("Subscription")
                        .font(.headline)
                    Text("Premium features are available via auto-renewing subscription. Subscriptions are managed through your Apple ID. Payment is charged to your Apple ID account at confirmation of purchase. Subscriptions automatically renew unless cancelled at least 24 hours before the end of the current period. You can manage and cancel subscriptions in your App Store account settings.")

                    Text("Disclaimer")
                        .font(.headline)
                    Text("This app is provided \"as is\" without warranty of any kind. Heilo Projects is not affiliated with Paizo Inc. Pathfinder is a registered trademark of Paizo Inc.")
                }
                .font(.body)
            }
            .padding()
        }
        .navigationTitle("Terms of Service")
        .navigationBarTitleDisplayMode(.inline)
    }
}

private struct OGLAttributionView: View {
    var body: some View {
        ScrollView {
            Text("Open Game License attribution will be added before App Store submission.")
                .padding()
        }
        .navigationTitle("Open Game License")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    SettingsView()
}
