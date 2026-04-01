import Foundation
import StoreKit

@Observable
final class SubscriptionService {
    private(set) var isSubscribed: Bool = false
    private(set) var products: [Product] = []
    private(set) var purchaseError: String?

    private let productIDs = [
        "com.heiloprojects.lodestone.monthly",
        "com.heiloprojects.lodestone.yearly",
    ]

    func loadProducts() async {
        do {
            products = try await Product.products(for: productIDs)
        } catch {
            purchaseError = error.localizedDescription
        }
    }

    func purchase(_ product: Product) async {
        do {
            let result = try await product.purchase()
            switch result {
            case .success(let verification):
                switch verification {
                case .verified:
                    isSubscribed = true
                case .unverified:
                    purchaseError = "Purchase could not be verified."
                }
            case .userCancelled:
                break
            case .pending:
                break
            @unknown default:
                break
            }
        } catch {
            purchaseError = error.localizedDescription
        }
    }

    func restorePurchases() async {
        do {
            try await AppStore.sync()
            await checkSubscriptionStatus()
        } catch {
            purchaseError = error.localizedDescription
        }
    }

    func checkSubscriptionStatus() async {
        for await result in Transaction.currentEntitlements {
            if case .verified(let transaction) = result {
                if productIDs.contains(transaction.productID) {
                    isSubscribed = true
                    return
                }
            }
        }
        isSubscribed = false
    }
}
