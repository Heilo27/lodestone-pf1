# FRD: In-App Subscription & Free/Premium Gating

**Feature:** Freemium model with $2/mo subscription for premium content  
**Priority:** P0 (revenue model)  
**Owner:** TBD  
**Acceptance Criteria:** See section 5

---

## 1. Overview

Free app with freemium monetization:
- **Free tier:** Core rulebook (classes, races, core spells, feats, items)
- **Premium tier:** Everything else (prestige classes, expansions, monsters, advanced rules)

Purchased via Apple In-App Purchase, auto-renewing \$2/mo.

---

## 2. Scope

### In Scope
- Apple In-App Purchase integration (sandbox + production)
- Subscription auto-renewal with cancellation option
- Content gating (free vs. premium)
- Subscription status tracking
- Graceful degradation if subscription expires
- Receipt validation (prevent piracy)
- Restore purchases (across devices)

### Out of Scope (V1)
- Family sharing (V2+)
- Promotional offers / free trials
- Alternative payment methods (outside App Store)
- Subscription tier variations (e.g., annual plan)

---

## 3. Technical Architecture

### 3.1 Subscription Configuration

**Product ID:** `com.heiloproject.lodestone.pf1.premium.monthly`
- Name: "Lodestone PF1 Premium"
- Price: \$2.99/month (converted to local currency)
- Auto-renewable: Yes
- Renewable: Yes
- Subscription period: 1 month
- Trial period: None (optional for launch)

### 3.2 Content Tagging

Every content entry (spell, monster, feat, etc.) is tagged:
```swift
struct ContentEntry {
    let id: String
    let name: String
    let isPremium: Bool  // true = requires subscription
    // ...
}
```

**Free content marked:** `isPremium: false`
**Premium content marked:** `isPremium: true`

### 3.3 Subscription State Management

**StoreKit2 integration:**
```swift
@ObservedRealmObject var subscriptionStatus: SubscriptionStatus
// Properties:
// - isSubscribed: Bool (true if valid subscription)
// - expiryDate: Date (when subscription renews)
// - hasSeenUpsell: Bool (avoid nagging)
```

**Stored in Core Data / Realm:**
- Persists across app launches
- Checked on app start

### 3.4 Receipt Validation

**On purchase:**
1. StoreKit2 validates receipt (automatic)
2. App compares receipt date to device time
3. If valid: unlock premium content
4. If invalid: show error, allow retry

**Periodically (app launch):**
1. Check subscription status
2. If expired: downgrade user to free tier
3. If still valid: unlock premium

---

## 4. User Flows

### 4.1 First Launch (Free User)

1. App opens
2. "Welcome to Lodestone" screen
3. Core content available
4. Sidebar banner: "Unlock Premium (\$2.99/mo)" (non-intrusive)
5. User can browse free content without interruption

### 4.2 Attempting to View Premium Content (Free User)

1. User searches for premium spell (e.g., "Meteor Swarm")
2. See result in list, tap it
3. Modal appears: "Premium Content"
   - "Unlock Lodestone Premium"
   - "Get full access for \$2.99/month"
   - Buttons: "Start Free Trial" (if applicable) | "Subscribe" | "Maybe Later"
4. Tap "Subscribe"
5. Apple's In-App Purchase sheet appears
6. User confirms purchase
7. Content unlocks instantly

### 4.3 Managing Subscription

**In-app settings:**
1. User taps "Settings" → "Subscription"
2. Shows:
   - "Active Premium Subscription"
   - "Renews on [date]"
   - "Manage Subscription" button (links to App Store)
3. Tapping "Manage" opens App Store subscription settings (user can cancel)

### 4.4 Subscription Expires

1. Renewal date passes
2. Apple's server updates subscription status
3. Next time app launches, subscription check runs
4. Premium content grayed out or shows upsell
5. Free content still accessible

---

## 5. Acceptance Criteria

**AC 1: Purchase Flow**
- User can tap "Subscribe" and complete purchase in <30 seconds
- Apple In-App Purchase sheet appears
- Receipt validation completes successfully
- Premium content unlocks instantly after purchase

**AC 2: Content Gating**
- Free users see free content in search
- Tapping premium content shows upsell modal
- Premium upsell doesn't appear more than 1x per session (avoid nagging)
- Free users can't view premium detail views

**AC 3: Subscription Persistence**
- After purchase, premium content visible on next app launch
- Subscription status persists across device restart
- Restore Purchases button in settings works (if user reinstalls)

**AC 4: Expiration Handling**
- When subscription expires, premium content becomes inaccessible
- Free content remains accessible
- Upsell banner reappears ("Renew Premium")

**AC 5: Offline Capability**
- Premium content bundled in app (not downloaded on-demand)
- Subscription check happens once per app launch (cached after)
- If offline at launch, cached subscription status used

**AC 6: Testing & Compliance**
- StoreKit2 sandbox testing works (test user accounts)
- Receipt validation passes in both sandbox + production
- Complies with App Store Review Guidelines (in-app purchase policies)

---

## 6. Implementation Details

### 6.1 StoreKit2 Code (Pseudocode)

```swift
import StoreKit

class SubscriptionManager: ObservableObject {
    @Published var isSubscribed = false
    
    func fetchSubscriptionStatus() async {
        let products = try await Product.products(for: ["com.heiloproject.lodestone.pf1.premium.monthly"])
        let purchases = try await AppTransaction.shared.currentEntitlements
        
        isSubscribed = purchases.contains { $0.productID == products.first?.id }
    }
    
    func purchaseSubscription() async {
        let products = try await Product.products(for: ["com.heiloproject.lodestone.pf1.premium.monthly"])
        let result = try await products.first?.purchase()
        // Handle result
    }
}
```

### 6.2 Content Gating (SwiftUI)

```swift
@ViewBuilder
var contentDetail: some View {
    if !entry.isPremium || subscriptionManager.isSubscribed {
        // Show full content
        ContentDetailView(entry: entry)
    } else {
        // Show upsell
        PremiumUpsellView()
    }
}
```

### 6.3 Data Storage

**Core Data Entity:**
```
SubscriptionStatus
- isSubscribed: Bool
- expiryDate: Date?
- purchaseDate: Date?
- hasSeenUpsell: Bool
```

---

## 7. Deliverables

- [ ] StoreKit2 integration (purchase, receipt validation)
- [ ] Content tagging (isPremium flag on all entries)
- [ ] Subscription UI (settings, upsell modal)
- [ ] Content gating logic (ViewBuilder conditionals)
- [ ] Offline state management (cached subscription status)
- [ ] Error handling (failed purchases, network issues)
- [ ] Tests: purchase flow, gating logic, receipt validation
- [ ] Testflight configuration (sandbox testing)

---

## 8. Dependencies

- App must be signed + registered with Apple (App Store Connect)
- In-App Purchase product must be created in ASC
- Subscription status must update based on backend subscription service (StoreKit2 handles this)

