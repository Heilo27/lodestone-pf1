import Foundation
import StoreKit

enum SubscriptionStatus: Equatable {
    case unknown
    case neverSubscribed
    case active
    case expired
    case cancelled
}

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
    private(set) var subscriptionStatus: SubscriptionStatus = .unknown

    private var updatesTask: Task<Void, Never>?

    init() {
        updatesTask = Task { [weak self] in
            guard let self else { return }
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

    // PF1-only products (single-app subscription)
    private let pf1ProductIDs = [
        "com.heiloprojects.lodestonepf1.allaccess.monthly",
        "com.heiloprojects.lodestonepf1.allaccess.annual",
    ]

    // Shared All Access bundle (unlocks PF1 + PF2 + SF1)
    private let bundleProductIDs = [
        "com.heiloproject.lodestone.allaccess.monthly",
        "com.heiloproject.lodestone.allaccess.annual",
    ]

    private var productIDs: [String] { pf1ProductIDs + bundleProductIDs }

    func isPF1Product(_ product: Product) -> Bool {
        pf1ProductIDs.contains(product.id)
    }

    func isBundleProduct(_ product: Product) -> Bool {
        bundleProductIDs.contains(product.id)
    }

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
                    subscriptionStatus = .active
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
        var foundExpired = false
        for await result in Transaction.currentEntitlements {
            if case .verified(let transaction) = result {
                if productIDs.contains(transaction.productID) {
                    // Check revocation
                    if transaction.revocationDate != nil {
                        foundExpired = true
                        continue
                    }
                    // Check expiration
                    if let expiry = transaction.expirationDate, expiry < Date() {
                        foundExpired = true
                        continue
                    }
                    isSubscribed = true
                    subscriptionStatus = .active
                    activeProductID = transaction.productID
                    expirationDate = transaction.expirationDate
                    found = true
                    break
                }
            }
        }
        if !found {
            isSubscribed = false
            activeProductID = nil
            expirationDate = nil
            if foundExpired {
                subscriptionStatus = .expired
            } else if subscriptionStatus == .active {
                // Was active, now not found — treat as cancelled
                subscriptionStatus = .cancelled
            } else if subscriptionStatus == .unknown {
                subscriptionStatus = .neverSubscribed
            }
        }
    }
}
