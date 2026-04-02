import Foundation
import StoreKit

@Observable
final class SubscriptionService {
    #if DEBUG
    /// Bypasses StoreKit entirely. Toggle in Settings → Debug.
    /// Stored as a regular property so @Observable tracks changes and views re-render.
    var debugUnlockAll: Bool = UserDefaults.standard.bool(forKey: "debug_unlockAll") {
        didSet { UserDefaults.standard.set(debugUnlockAll, forKey: "debug_unlockAll") }
    }
    #endif

    private(set) var isSubscribed: Bool = false

    private var updatesTask: Task<Void, Never>?

    init() {
        updatesTask = Task {
            for await result in Transaction.updates {
                if case .verified(let transaction) = result {
                    await transaction.finish()
                }
                await checkSubscriptionStatus()
            }
        }
    }

    deinit {
        updatesTask?.cancel()
    }

    var isUnlocked: Bool {
        #if DEBUG
        if debugUnlockAll { return true }
        #endif
        return isSubscribed
    }
    private(set) var products: [Product] = []
    private(set) var purchaseError: String?
    private(set) var expirationDate: Date?
    private(set) var activeProductID: String?

    // Subscription for Lodestone PF2
    private let productIDs = [
        "com.heiloproject.lodestone.allaccess.monthly",
        "com.heiloproject.lodestone.allaccess.annual",
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
                case .verified(let transaction):
                    isSubscribed = true
                    activeProductID = transaction.productID
                    expirationDate = transaction.expirationDate
                    await transaction.finish()
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
        var found = false
        for await result in Transaction.currentEntitlements {
            if case .verified(let transaction) = result {
                if productIDs.contains(transaction.productID) {
                    isSubscribed = true
                    activeProductID = transaction.productID
                    expirationDate = transaction.expirationDate
                    found = true
                    return
                }
            }
        }
        if !found {
            isSubscribed = false
            activeProductID = nil
            expirationDate = nil
        }
    }
}
