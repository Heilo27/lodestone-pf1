import SwiftUI

struct SettingsView: View {
    @AppStorage("selectedTheme") private var selectedTheme: String = "system"
    @Environment(SubscriptionService.self) private var subscriptionService
    @Environment(LibraryFilterService.self) private var libraryFilter
    @State private var showPaywall = false
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.isEmbeddedInSplitView) private var isEmbedded

    var body: some View {
        let inner = List {
            subscriptionSection
            librarySection
            appearanceSection
            dataSection
            aboutSection
            if SubscriptionService.isTestFlightOrDebug {
                debugSection
            }
        }
        .listStyle(.insetGrouped)
        .navigationTitle("Settings")
        .sheet(isPresented: $showPaywall) {
            PaywallSheet(isPresented: $showPaywall, subscriptionService: subscriptionService)
                .presentationDetents([.large])
                .presentationDragIndicator(.hidden)
        }
        .task {
            await subscriptionService.checkSubscriptionStatus()
        }

        if isEmbedded {
            inner
        } else {
            NavigationStack { inner }
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
                            .accessibilityHidden(true)
                        Text("Premium Active")
                            .font(AppFonts.headline)
                            .foregroundStyle(AppColors.premiumGold)
                        Spacer()
                        Text("Active")
                            .font(AppFonts.chip(size: 11))
                            .foregroundStyle(.white)
                            .padding(.horizontal, AppSpacing.sm)
                            .padding(.vertical, 3)
                            .background(Color.green.opacity(0.8), in: Capsule())
                            .accessibilityLabel("Status: Active")
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
                switch subscriptionService.subscriptionStatus {
                case .expired:
                    HStack {
                        Image(systemName: "crown.fill")
                            .foregroundStyle(.orange)
                            .accessibilityHidden(true)
                        Text("Subscription Expired")
                            .font(AppFonts.headline)
                            .foregroundStyle(.orange)
                        Spacer()
                        Text("Expired")
                            .font(AppFonts.chip(size: 11))
                            .foregroundStyle(.white)
                            .padding(.horizontal, AppSpacing.sm)
                            .padding(.vertical, 3)
                            .background(Color.orange.opacity(0.8), in: Capsule())
                            .accessibilityLabel("Status: Expired")
                    }
                    Text("Your premium subscription has expired. Resubscribe to regain access.")
                        .font(AppFonts.caption)
                        .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                    Button("Resubscribe") { showPaywall = true }
                        .font(AppFonts.body)
                        .foregroundStyle(AppColors.adaptivePrimary(colorScheme))
                        .frame(minHeight: 44)
                        .contentShape(Rectangle())

                case .cancelled:
                    HStack {
                        Image(systemName: "crown.fill")
                            .foregroundStyle(.secondary)
                            .accessibilityHidden(true)
                        Text("Subscription Cancelled")
                            .font(AppFonts.headline)
                            .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                        Spacer()
                        Text("Cancelled")
                            .font(AppFonts.chip(size: 11))
                            .foregroundStyle(.white)
                            .padding(.horizontal, AppSpacing.sm)
                            .padding(.vertical, 3)
                            .background(Color.gray.opacity(0.6), in: Capsule())
                            .accessibilityLabel("Status: Cancelled")
                    }
                    Text("Your subscription was cancelled. Subscribe again to unlock all expansion books.")
                        .font(AppFonts.caption)
                        .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                    Button("Subscribe") { showPaywall = true }
                        .font(AppFonts.body)
                        .foregroundStyle(AppColors.adaptivePrimary(colorScheme))
                        .frame(minHeight: 44)
                        .contentShape(Rectangle())

                case .active, .neverSubscribed, .unknown:
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
                    Text("Unlocks all expansion books for Lodestone PF1.")
                        .font(AppFonts.caption)
                        .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                }
            }

            Button("Restore Purchases") {
                Task { await subscriptionService.restorePurchases() }
            }
            .font(AppFonts.body)
            .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
            .frame(minHeight: 44)
            .contentShape(Rectangle())

            if let error = subscriptionService.purchaseError {
                Text(error)
                    .font(AppFonts.caption)
                    .foregroundStyle(.red)
            }
        } header: {
            Text("Subscription")
                .font(AppFonts.caption.weight(.semibold))
                .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                .textCase(.uppercase)
                .tracking(0.8)
        }
    }

    // MARK: - Library

    private var librarySection: some View {
        Section {
            NavigationLink {
                LibrarySelectionView()
            } label: {
                HStack {
                    Label("My Library", systemImage: "books.vertical")
                        .font(AppFonts.body)
                    Spacer()
                    Text(libraryFilter.statusLabel)
                        .font(AppFonts.body)
                        .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                }
            }
        } header: {
            Text("Library")
                .font(AppFonts.caption.weight(.semibold))
                .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                .textCase(.uppercase)
                .tracking(0.8)
        } footer: {
            Text("Choose which books appear in Browse and Search.")
                .font(AppFonts.caption)
                .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
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
                Label("Compatibility License", systemImage: "doc.plaintext")
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

            Text("Bypasses StoreKit. TestFlight and debug builds only.")
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
}

// MARK: - Database Info

private struct DatabaseInfoView: View {
    @State private var counts: [ContentType: Int] = [:]
    @State private var isLoading = true
    @State private var loadError: String?
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

            if let error = loadError {
                Section {
                    Text(error)
                        .font(AppFonts.caption)
                        .foregroundStyle(.red)
                }
            }
        }
        .navigationTitle("Database")
        .navigationBarTitleDisplayMode(.inline)
        .task {
            do {
                for type in ContentType.allCases {
                    counts[type] = try await DatabaseService.shared.countForType(type)
                }
            } catch {
                loadError = error.localizedDescription
            }
            isLoading = false
        }
    }
}

// MARK: - Legal Views

private struct PrivacyPolicyView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: AppSpacing.lg) {
                Text("This app does not collect, store, or transmit any personal data. No analytics, tracking, or third-party SDKs are used. All content is stored locally on your device.")
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
            Text("Content is provided under the Open Game License v1.0a. This app is not affiliated with or endorsed by Paizo Inc. Pathfinder is a registered trademark of Paizo Inc.")
                .padding()
        }
        .navigationTitle("Terms of Service")
        .navigationBarTitleDisplayMode(.inline)
    }
}

private struct OGLAttributionView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: AppSpacing.lg) {
                Text("""
This product is compliant with the Open Game License (OGL) and is suitable for use with the Pathfinder Roleplaying Game or the 3.5 edition of the world's oldest fantasy roleplaying game.

Product Identity: The following items are hereby identified as Product Identity, as defined in the Open Game License version 1.0a, Section 1(e), and are not Open Content: All trademarks, registered trademarks, proper names (characters, deities, etc.), dialogue, plots, storylines, locations, characters, artwork, and trade dress.

Open Content: Except for material designated as Product Identity (see above), the game mechanics of this game product are Open Game Content, as defined in the Open Gaming License version 1.0a Section 1(d).

OPEN GAME LICENSE Version 1.0a
The following text is the property of Wizards of the Coast, Inc. and is Copyright 2000 Wizards of the Coast, Inc. ("Wizards"). All Rights Reserved.

Content sourced from the Archives of Nethys (aonprd.com), the official Pathfinder rules reference.
""")
                    .padding(.horizontal)
            }
            .padding(.vertical)
        }
        .navigationTitle("Compatibility License")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    SettingsView()
}
