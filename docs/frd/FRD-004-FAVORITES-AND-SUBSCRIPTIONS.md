# FRD-004 — Favorites & Subscription Management

**Functional Requirement Document**
**Project:** Lodestone Suite (PF1 / PF2 / SF1)
**Status:** Draft — Awaiting approval
**Version:** 2.0
**Updated:** 2026-04-01

---

## Purpose

Define how users bookmark entries (favorites) and manage paid content access through in-app subscription (IAP).

---

## User Stories

1. **As a player, I want to bookmark spells I use frequently**
   - Acceptance: Tap heart icon on Fireball → mark as favorite → see it in Favorites tab

2. **As a DM, I want to access my favorite creatures without searching**
   - Acceptance: Tap favorite creatures in separate tab, see a list

3. **As a free user, I want to upgrade to see all expansion content**
   - Acceptance: Tap locked expansion → "Subscribe for $2.99/month" → prompt for Apple Sign-in → granted access

4. **As a subscriber, I want to know my subscription status**
   - Acceptance: Settings screen shows "Active subscription: expires [date]"

5. **As a user, I want to cancel my subscription anytime**
   - Acceptance: Settings → Subscription → "Cancel Subscription" button

---

## Functional Requirements

### FR-004-1: Favorites System (Local Storage)

**Favorites are stored locally** (no cloud sync):

- User can favorite any entry (spell, creature, feat, item, rule)
- Favorite button (heart icon) appears on every detail view
- Tap heart → toggle favorite on/off
- Favorites survive app updates and crashes
- User can delete individual favorites
- User can clear all favorites (with confirmation)

**Data storage:**
- Favorites stored in SQLite (FRD-001) with user ID placeholder
- Table: `favorites (id, userId, entryId, createdAt)`
- Indexed by `entryId` for fast lookup

**UI indicator:**
- Filled heart (❤️) = favorited
- Empty heart (🤍) = not favorited
- Tappable everywhere (detail views, list cells)

---

### FR-004-2: Favorites Tab

**Purpose:** Quick access to user's bookmarked entries

**Layout:**
```
┌──────────────────────────────┐
│ Favorites                    │
├──────────────────────────────┤
│ [Search bar]                │  ← Search within favorites
├──────────────────────────────┤
│ 📌 SPELLS (12)              │  ← Collapsible sections
│ ├─ Fireball                 │
│ ├─ Magic Missile            │
│ └─ ... more spells          │
│                             │
│ 🐉 CREATURES (8)            │
│ ├─ Giant Spider             │
│ ├─ Ogre                     │
│ └─ ... more creatures       │
│                             │
│ ⚔️ FEATS (5)                │
│ ├─ Power Attack             │
│ └─ ... more feats           │
│                             │
│ [No favorites yet message]  │  ← Empty state
│ "Tap the heart icon to save │
│  your favorite spells"      │
└──────────────────────────────┘
```

**Features:**
- Favorites grouped by type (spells, creatures, feats, items, rules)
- Each group is collapsible
- Search within favorites
- Tap favorite → navigate to detail view
- Swipe-to-delete individual favorite (with confirmation)
- Long-press to see options (delete, add note [Phase 2], etc.)

---

### FR-004-3: In-App Purchase (IAP) — Subscription

**Product group:** `com.heiloproject.lodestone.allaccess`

The subscription is a **single product** shared across all three apps via an App Store subscription group. Subscribing in PF1 automatically unlocks premium content in PF2 and SF1 (and vice versa). One subscription, three apps.

**Product IDs (all in same subscription group):**
- `com.heiloproject.lodestone.allaccess.monthly` — $2/month
- `com.heiloproject.lodestone.allaccess.annual` — $18/year (~25% savings)

**Pricing:** $2/month (Apple standard tier 2)
- Covers all expansion content in all three Lodestone apps
- Auto-renewal enabled
- 7-day free trial (new subscribers only)
- Cancellable anytime

**Subscription benefits:**
- Unlock all expansion manuals for PF1 + PF2 + SF1
- Annual option saves ~25%

**Implementation:**
- Use `StoreKit2` — `Product.SubscriptionInfo` with shared group
- Check entitlement across apps via shared App Store account (no server needed)
- Handle subscription lifecycle (started, renewed, expired, cancelled, billing retry)
- Store entitlement status locally for offline access (re-verify on next foreground)

---

### FR-004-4: Subscription Paywall

**Triggering the paywall:**

When user taps an expansion entry (e.g., creature from "Ultimate Combat"):

```
┌──────────────────────────────┐
│ 🔒 SUBSCRIPTION REQUIRED     │
├──────────────────────────────┤
│ This content is from         │
│ "Advanced Player's Guide"    │
│ and requires a subscription. │
│                             │
│ $2/month gets you:           │
│ ✓ All expansion manuals     │
│ ✓ Covers PF1 + PF2 + SF1   │
│ ✓ 4000+ additional entries  │
│ ✓ Cancel anytime            │
│                             │
│ [7-day free trial]          │  ← Button (if no trial used)
│        OR                   │
│ [Subscribe Now - $2/mo]     │  ← Button
│ [Maybe Later] [Restore]     │
└──────────────────────────────┘
```

**After tapping "Subscribe":**
1. Prompt for Apple Sign-in (if not already signed in)
2. StoreKit2 handles payment & receipt
3. If successful:
   - Store subscription status locally
   - Unlock expansion content
   - Show success message "Welcome to Lodestone Premium!"
   - Navigate to the requested entry

**If declined:**
- Return to browse screen
- No nagging (only show paywall when user taps locked content)

---

### FR-004-5: Subscription Status

**Settings screen shows:**
```
┌──────────────────────────────┐
│ Settings                     │
├──────────────────────────────┤
│ 📱 SUBSCRIPTION             │
│ ├─ Status: Active            │
│ ├─ Next Renewal: Apr 5, 2026 │
│ ├─ Cancel Subscription       │  ← Button
│ └─ Manage in App Store       │  ← Link to App Store
│                             │
│ 💰 RESTORE PURCHASE         │
│ Restore previous purchases. │
│ [Restore] button            │
│                             │
│ ℹ️  Need Help?              │
│ Contact support             │
│ View terms & privacy        │
└──────────────────────────────┘
```

**Status states:**
- **Active:** User has valid subscription. Show renewal date.
- **Canceled:** User cancelled but still has access until expiration. Show expiration date.
- **Expired:** Subscription ended. Show resubscribe button.
- **No subscription:** Free tier user. Show "Upgrade" button.

---

### FR-004-6: Subscription Verification

**On app launch:**
1. Check StoreKit for subscription status
2. If active → unlock expansion content
3. If expired → revert to free-tier content
4. If offline → use cached subscription status

**Verification happens:**
- On app launch
- Every 24 hours (background check)
- When user taps locked content
- After user taps "Subscribe" button

**No nagging:**
- Don't show paywall if subscription is active
- Don't show "upgrade" prompts in browse/search
- Only show paywall when user **explicitly** tries to access locked content

---

### FR-004-7: Restore Purchases

**Purpose:** Users who purchased subscription on another device can restore it

**Flow:**
1. User taps "Restore" button in Settings
2. StoreKit queries Apple's servers for entitlements
3. If subscription found:
   - Show "Subscription restored!"
   - Update subscription status
   - Unlock expansion content
4. If none found:
   - Show "No subscription found. Would you like to upgrade?"

---

### FR-004-8: Cancellation

**User can cancel via app:**
1. Settings → Subscription → Cancel Subscription
2. Confirmation: "You will lose access to expansion content after [expiration date]"
3. If confirmed:
   - Redirect to App Store Manage Subscriptions (iOS opens it natively)
   - Or execute via `StoreKit2` cancel endpoint

**After cancellation:**
- Subscription continues until renewal date
- Expansion content remains unlocked until expiration
- On expiration: content becomes locked again, user reverts to free tier

---

### FR-004-9: Content Gating

**Core Rulebook content (free):**
- All classes, races, feats, traits, spells (up to level 9)
- Core Rulebook creatures (ogre, orc, giant spider, etc.)
- Core items

**Expansion content (paid):**
- Advanced Player's Guide creatures, feats, options
- Ultimate Combat abilities, feats, weapons
- Ultimate Magic spells, items
- Bestiary creatures (CR 3+, exotic types)
- Other supplements

**Content marked in database:**
- Every `content_entries` row has `requiresSubscription` (boolean)
- `false` = free tier
- `true` = subscription required

---

### FR-004-10: Offline Behavior

**If user loses internet:**
- App continues to work (all content cached locally)
- Subscription status checked when last online
- Cached subscription status used until next check
- "You're offline. Using cached subscription status." (info message if applicable)

**If user goes offline with active subscription:**
- Expansion content remains accessible until subscription **actually** expires
- On next internet connection, verify real subscription status

---

## UI Inventory

**Screens:**
- `FavoritesViewController` — favorites list with search and grouping
- `SettingsViewController` — subscription status, restore, cancel
- `SubscriptionPaywall` (modal) — upgrade prompt

**Elements (Reusable):**
- `SubscriptionBannerView` — lockable entries show small banner
- `FavoriteButton` — heart icon, tappable everywhere
- `FavoritesCell` — template for favorites list
- `SubscriptionStatusView` — Settings display

---

## Data Requirements

From **FRD-001**, database must track:
- `content_entries.requiresSubscription` (boolean)
- `favorites` table (entryId, userId, createdAt)

**App must store (locally):**
- Subscription status (active/expired/none)
- Last subscription check timestamp
- StoreKit transaction IDs (for validation)

---

## Business Rules

1. **Free users see entire free content** — No gating/upselling for Core Rulebook
2. **Paid users see all content** — No restrictions
3. **Cancelled users keep access until expiration** — Grace period exists
4. **Cross-app subscriptions** — Lodestone PF1, PF2, SF1 share subscription (same IAP product ID across all three)
5. **No tracking / analytics for subscription** — Only crash reports

---

## Error States

| Error | Handling |
|-------|----------|
| Subscription verification fails | Use cached status, show "Offline mode" message |
| Purchase cancelled by user | Dismiss paywall, return to browse |
| Purchase fails (payment declined) | Show Apple's error message, offer retry |
| StoreKit unavailable | Disable subscription, offer "Check App Store" link |
| Restore fails | "No subscription found" message, offer to subscribe |

---

## Acceptance Criteria

1. **Favorites button works** — Toggle on/off, icon changes, persists
2. **Favorites tab shows all favorites** — Grouped by type, searchable
3. **Delete favorite works** — Swipe or long-press, with confirmation
4. **Subscription paywall shows on locked content** — Shows price, trial, benefits
5. **Purchase flow works** — Select plan, Apple Sign-in, receipt stored
6. **Subscription status shows in Settings** — Active/Expired, renewal date
7. **Subscription check on launch** — Status updates on app launch
8. **Restore works** — Restore purchases pulls from Apple servers
9. **Cancel works** — Opens App Store management
10. **Offline mode works** — App functional without internet, cached subscription respected

---

## Out of Scope (Phase 1)

- Per-entry notes/annotations
- Sharing favorites
- Exporting favorites as PDF
- Multi-device sync of favorites
- Family Sharing (Apple's family purchase feature)

---

## Dependencies

- **FRD-001** (Core Data Model) — Subscription flag in database
- **StoreKit2** (Apple framework, included in iOS 15.1+)

---

## Notes

**Subscription philosophy:**
- **No nagware.** If user doesn't want expansion, they get full Core Rulebook. That's valuable.
- **Transparent pricing.** $2.99/month is clear. No hidden costs.
- **Easy cancellation.** User can cancel anytime without friction.
- **Cross-app benefit.** One subscription unlocks all three Lodestone apps (huge value add).

This builds user trust and encourages subscription (value > $36/year vs. single supplement book cost).

---

## Sign-Off

**Status:** Draft — awaiting approval
**Created:** 2026-03-31
**Author:** Friday
