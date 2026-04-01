import SwiftUI

struct PaywallSheet: View {
    @Binding var isPresented: Bool
    let subscriptionService: SubscriptionService
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        VStack(spacing: 0) {
            // Drag handle
            Capsule()
                .fill(AppColors.adaptiveBorder(colorScheme))
                .frame(width: 36, height: 5)
                .padding(.top, AppSpacing.md)
                .padding(.bottom, AppSpacing.xl)

            // Crown icon
            Image(systemName: "crown.fill")
                .font(.system(size: 48))
                .foregroundStyle(AppColors.premiumGold)
                .padding(.bottom, AppSpacing.base)

            // Headline
            Text("Unlock Premium")
                .font(AppFonts.displayMedium)
                .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))

            Text("Expand your Pathfinder 1E library with premium expansion books.")
                .font(AppFonts.callout)
                .multilineTextAlignment(.center)
                .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                .padding(.horizontal, AppSpacing.xxl)
                .padding(.top, AppSpacing.sm)

            // Feature bullets
            VStack(alignment: .leading, spacing: AppSpacing.md) {
                FeatureBullet(icon: "books.vertical.fill", text: "All expansion books for PF1")
                FeatureBullet(icon: "magnifyingglass", text: "Full search across all content")
                FeatureBullet(icon: "arrow.triangle.2.circlepath", text: "Always up to date")
            }
            .padding(.top, AppSpacing.xl)
            .padding(.horizontal, AppSpacing.xxl)

            Spacer()

            VStack(spacing: AppSpacing.md) {
                if subscriptionService.products.isEmpty {
                    Button {
                        Task { await subscriptionService.loadProducts() }
                    } label: {
                        Text("Subscribe for $1.99/mo")
                    }
                    .buttonStyle(GoldGradientButtonStyle())
                    .padding(.horizontal, AppSpacing.xl)
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

                Text("$1.99/month. Cancel anytime in App Store settings.")
                    .font(AppFonts.caption2)
                    .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme).opacity(0.7))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, AppSpacing.xxl)
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
