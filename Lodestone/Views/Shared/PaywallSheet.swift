import SwiftUI
import StoreKit

struct PaywallSheet: View {
    @Binding var isPresented: Bool
    let subscriptionService: SubscriptionService
    /// When set, the paywall copy is tailored to the specific locked entry.
    var entry: (any ContentEntry)? = nil
    @Environment(\.colorScheme) private var colorScheme
    @State private var productsLoadAttempted = false

    private var headline: String {
        guard let entry else { return "Unlock Premium" }
        return "Unlock \(entry.title)"
    }

    private var subtitle: String {
        guard let entry else {
            return "Expand your Pathfinder 1E library with all expansion books."
        }
        let typeLabel = entry.contentType.singularName.lowercased()
        let source = entry.source
        return "This \(typeLabel) is from \(source). Subscribe to unlock it along with hundreds more from all expansion books."
    }

    var body: some View {
        VStack(spacing: 0) {
            // Drag handle
            Capsule()
                .fill(AppColors.adaptiveBorder(colorScheme))
                .frame(width: 36, height: 5)
                .padding(.top, AppSpacing.md)
                .padding(.bottom, AppSpacing.xl)
                .accessibilityHidden(true)

            // Crown icon
            Image(systemName: "crown.fill")
                .font(.system(size: 48))
                .foregroundStyle(AppColors.premiumGold)
                .padding(.bottom, AppSpacing.base)
                .accessibilityHidden(true)

            // Headline
            Text(headline)
                .font(AppFonts.displayMedium)
                .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                .multilineTextAlignment(.center)
                .padding(.horizontal, AppSpacing.xl)

            Text(subtitle)
                .font(AppFonts.callout)
                .multilineTextAlignment(.center)
                .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                .padding(.horizontal, AppSpacing.xxl)
                .padding(.top, AppSpacing.sm)

            // Feature bullets
            VStack(alignment: .leading, spacing: AppSpacing.md) {
                FeatureBullet(icon: "books.vertical.fill", text: "Expansion books — APG, Ultimate Magic, Bestiaries, and more")
                FeatureBullet(icon: "magnifyingglass", text: "Full search across all content")
                FeatureBullet(icon: "lock.open.fill", text: "Instant access — no download required")
            }
            .padding(.top, AppSpacing.xl)
            .padding(.horizontal, AppSpacing.xxl)

            Spacer()

            VStack(spacing: AppSpacing.md) {
                if subscriptionService.products.isEmpty && !productsLoadAttempted {
                    ProgressView()
                        .frame(height: 50)
                } else if !subscriptionService.products.isEmpty {
                    ForEach(subscriptionService.products, id: \.id) { product in
                        SubscriptionButton(
                            product: product,
                            colorScheme: colorScheme,
                            onPurchase: { Task { await subscriptionService.purchase(product) } }
                        )
                        .padding(.horizontal, AppSpacing.xl)
                    }
                } else {
                    ProductsUnavailableView(colorScheme: colorScheme) {
                        productsLoadAttempted = false
                        Task {
                            await subscriptionService.loadProducts()
                            productsLoadAttempted = true
                        }
                    }
                }

                // Required by Apple: auto-renewal disclosure must appear before/adjacent to purchase buttons
                Text("Subscription renews automatically unless cancelled at least 24 hours before the end of the current period. Manage or cancel anytime in App Store settings.")
                    .font(AppFonts.caption2)
                    .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme).opacity(0.7))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, AppSpacing.xxl)

                Button("Restore Purchases") {
                    Task { await subscriptionService.restorePurchases() }
                }
                .font(AppFonts.caption)
                .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                .frame(minHeight: 44)
                .contentShape(Rectangle())

                Button("Not Now") {
                    isPresented = false
                }
                .font(AppFonts.caption)
                .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                .frame(minHeight: 44)
                .contentShape(Rectangle())

                HStack(spacing: AppSpacing.base) {
                    Link("Privacy Policy", destination: URL(string: "https://heiloprojects.com/privacy")!)
                        .font(AppFonts.caption2)
                        .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                    Text("·")
                        .font(AppFonts.caption2)
                        .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme).opacity(0.5))
                    Link("Terms of Use", destination: URL(string: "https://heiloprojects.com/terms")!)
                        .font(AppFonts.caption2)
                        .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                }
                .padding(.top, AppSpacing.xs)
            }
            .padding(.horizontal, AppSpacing.xl)
            .padding(.bottom, AppSpacing.xxl)

            if let error = subscriptionService.purchaseError {
                Text(error)
                    .font(AppFonts.caption)
                    .foregroundStyle(.red)
                    .padding(.horizontal, AppSpacing.xl)
                    .padding(.bottom, AppSpacing.sm)
            }
        }
        .background(AppColors.adaptiveSurface(colorScheme))
        .task {
            if subscriptionService.products.isEmpty {
                await subscriptionService.loadProducts()
                productsLoadAttempted = true
            }
        }
        .onChange(of: subscriptionService.isSubscribed) { _, isSubscribed in
            if isSubscribed { isPresented = false }
        }
    }
}

/// A single subscription option button with Apple-compliant trial and price disclosure.
private struct SubscriptionButton: View {
    let product: StoreKit.Product
    let colorScheme: ColorScheme
    let onPurchase: () -> Void

    private var isAnnual: Bool { product.id.contains("annual") }
    private var period: String { isAnnual ? "year" : "month" }

    var body: some View {
        VStack(spacing: AppSpacing.xs) {
            Button(action: onPurchase) {
                Text("Subscribe — \(product.displayPrice)/\(period)")
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal, AppSpacing.xs)
            }
            .buttonStyle(GoldGradientButtonStyle())
            .accessibilityLabel("Subscribe for \(product.displayPrice) per \(period). \(isAnnual ? "Annual" : "Monthly") subscription. Cancel anytime.")

            Text("Lodestone PF1 All Access · \(isAnnual ? "1 year" : "1 month") · Cancel anytime")
                .font(AppFonts.caption)
                .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                .multilineTextAlignment(.center)
        }
    }
}

/// Shown when StoreKit cannot load products (e.g. network error, IAPs not yet approved).
private struct ProductsUnavailableView: View {
    let colorScheme: ColorScheme
    let onRetry: () -> Void

    var body: some View {
        VStack(spacing: AppSpacing.md) {
            Text("Subscription options are currently unavailable.")
                .font(AppFonts.subheadline)
                .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                .multilineTextAlignment(.center)
                .padding(.horizontal, AppSpacing.xl)

            Button("Try Again", action: onRetry)
                .font(AppFonts.body)
                .foregroundStyle(AppColors.adaptivePrimary(colorScheme))
                .frame(minHeight: 44)
                .contentShape(Rectangle())
        }
        .frame(height: 100)
    }
}

private struct FeatureBullet: View {
    let icon: String
    let text: String
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        HStack(spacing: AppSpacing.md) {
            Image(systemName: icon)
                .foregroundStyle(AppColors.adaptivePrimary(colorScheme))
                .frame(width: 24)
                .accessibilityHidden(true)
            Text(text)
                .font(AppFonts.subheadline)
                .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
        }
    }
}
