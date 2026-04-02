import SwiftUI

struct PaywallSheet: View {
    @Binding var isPresented: Bool
    let subscriptionService: SubscriptionService
    /// When set, the paywall copy is tailored to the specific locked entry.
    var entry: (any ContentEntry)? = nil
    @Environment(\.colorScheme) private var colorScheme

    private var headline: String {
        guard let entry else { return "Unlock Premium" }
        return "Unlock \(entry.title)"
    }

    private var subtitle: String {
        guard let entry else {
            return "Expand your Pathfinder 1E library with all 15 expansion books."
        }
        let typeLabel = entry.contentType.singularName.lowercased()
        let source = entry.source
        return "This \(typeLabel) is from \(source). Subscribe to unlock it along with hundreds more from all 15 expansion books."
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
                FeatureBullet(icon: "books.vertical.fill", text: "15 expansion books — APG, Ultimate Magic, Bestiary 2–5, and more")
                FeatureBullet(icon: "magnifyingglass", text: "Full search across all content")
                FeatureBullet(icon: "lock.open.fill", text: "Instant access — no download required")
            }
            .padding(.top, AppSpacing.xl)
            .padding(.horizontal, AppSpacing.xxl)

            Spacer()

            VStack(spacing: AppSpacing.md) {
                if subscriptionService.products.isEmpty {
                    ProgressView()
                        .frame(height: 50)
                } else {
                    ForEach(subscriptionService.products, id: \.id) { product in
                        Button {
                            Task { await subscriptionService.purchase(product) }
                        } label: {
                            HStack {
                                Text(product.displayName)
                                Spacer()
                                Text(product.displayPrice)
                                    .fontWeight(.semibold)
                            }
                            .padding(.horizontal, AppSpacing.xs)
                        }
                        .buttonStyle(GoldGradientButtonStyle())
                        .padding(.horizontal, AppSpacing.xl)
                    }
                }

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

                if let monthly = subscriptionService.products.first(where: { $0.id.contains("monthly") }) {
                    Text("\(monthly.displayPrice)/month. Cancel anytime in App Store settings.")
                        .font(AppFonts.caption2)
                        .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme).opacity(0.7))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, AppSpacing.xxl)
                }
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
            }
        }
        .onChange(of: subscriptionService.isSubscribed) { _, isSubscribed in
            if isSubscribed { isPresented = false }
        }
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
            Text(text)
                .font(AppFonts.subheadline)
                .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
        }
    }
}
