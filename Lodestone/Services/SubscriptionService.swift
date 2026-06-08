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
@MainActor
final class SubscriptionService {
    /// True when running in a TestFlight or Debug build.
    static var isTestFlightOrDebug: Bool {
        #if DEBUG
        return true
        #else
        // TestFlight receipt lives at a "sandboxReceipt" path; production uses "receipt"
        guard let receiptURL = Bundle.main.appStoreReceiptURL else { return false }
        return receiptURL.lastPathComponent == "sandboxReceipt"
        #endif
    }

    /// Bypasses StoreKit entirely. Only functional in Debug and TestFlight builds.
    var debugUnlockAll: Bool {
        get {
            #if DEBUG
            return UserDefaults.standard.bool(forKey: "debug_unlockAll")
            #else
            return Self.isTestFlightOrDebug && UserDefaults.standard.bool(forKey: "debug_unlockAll")
            #endif
        }
        set {
            #if DEBUG
            UserDefaults.standard.set(newValue, forKey: "debug_unlockAll")
            #else
            if Self.isTestFlightOrDebug {
                UserDefaults.standard.set(newValue, forKey: "debug_unlockAll")
            }
            #endif
        }
    }

    private(set) var isSubscribed: Bool = false
    private(set) var subscriptionStatus: SubscriptionStatus = .unknown

    @ObservationIgnored nonisolated(unsafe) private var updatesTask: Task<Void, Never>?

    init() {
        updatesTask = Task { [weak self] in
            guard let self else { return }
            for await result in Transaction.updates {
                switch result {
                case .verified(let transaction):
                    await transaction.finish()
                case .unverified:
                    // Do not finish unverified transactions — leave in queue for retry.
                    break
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
        #else
        if Self.isTestFlightOrDebug && debugUnlockAll { return true }
        #endif
        return isSubscribed
    }
    private(set) var products: [Product] = []
    private(set) var purchaseError: String?
    private(set) var expirationDate: Date?
    private(set) var activeProductID: String?

    private let pf1ProductIDs = [
        "com.heiloprojects.lodestonepf1.allaccess.monthly",
        "com.heiloprojects.lodestonepf1.allaccess.annual",
    ]

    private var productIDs: [String] { pf1ProductIDs }

    func isPF1Product(_ product: Product) -> Bool {
        pf1ProductIDs.contains(product.id)
    }

    func loadProducts() async {
        do {
            let fetched = try await Product.products(for: productIDs)
            if fetched.isEmpty {
                let msg = "StoreKit returned 0 products for IDs: \(productIDs.joined(separator: ", "))"
                print("[SubscriptionService] \(msg)")
                purchaseError = "Subscription options are temporarily unavailable. Please try again later."
            } else {
                print("[SubscriptionService] Loaded \(fetched.count) product(s): \(fetched.map(\.id))")
            }
            products = fetched
        } catch {
            print("[SubscriptionService] Product.products error: \(error)")
            purchaseError = error.localizedDescription
        }
    }

    func purchase(_ product: Product) async {
        purchaseError = nil
        do {
            let result = try await product.purchase()
            switch result {
            case .success(let verification):
                switch verification {
                case .verified(let transaction):
                    await transaction.finish()
                    await checkSubscriptionStatus()
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
            } else if subscriptionStatus == .unknown || subscriptionStatus == .cancelled || subscriptionStatus == .expired {
                // Check whether any transaction ever existed; if so mark expired, else neverSubscribed
                var hadTransaction = false
                for productID in productIDs {
                    if await Transaction.latest(for: productID) != nil {
                        hadTransaction = true
                        break
                    }
                }
                subscriptionStatus = hadTransaction ? .expired : .neverSubscribed
            }
        }
    }
}
