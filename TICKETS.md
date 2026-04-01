# Lodestone PF1 — Detailed Ticket List

**Total Tickets:** 18 (organized by phase and priority)  
**Estimated Effort:** ~480 hours (6 sprints @ 40h/week)

---

## Phase 1: Data & Infrastructure

### TASK-001: Data Extraction from Archives of Nethys
**Priority:** Critical  
**Effort:** 40h  
**Description:**
- Write scraper/parser for aonprd.com to extract:
  - 11 core classes with all features, spell lists, descriptions
  - 7 core races with traits and variants
  - 500+ core spells (name, level, school, description, prerequisites)
  - 300+ core feats (name, type, prerequisites, benefits)
  - 500+ core traits
  - 200+ common items (weapons, armor, gear)
  - 100 common monsters (CR 0-10)
- Convert to JSON format (see FRD-SEARCH-AND-BROWSE.md)
- Validate data completeness and accuracy
- Test against Archives of Nethys pages (spot checks)

**Acceptance Criteria:**
1. All 11 classes extracted with 100% feature completeness
2. All cross-references identified and stored as IDs
3. Data validates against schema
4. 0 missing required fields in core entities

**Owner:** TBD

---

### TASK-002: SQLite Full-Text Search Database
**Priority:** Critical  
**Effort:** 30h  
**Description:**
- Design SQLite schema for content storage (see FRD section 3)
- Create FTS5 index for full-text search
- Build data import pipeline (JSON → SQLite)
- Optimize indexes for performance (<100ms queries)
- Test search accuracy and relevance

**Acceptance Criteria:**
1. Database schema complete and normalized
2. FTS5 index created on all searchable fields
3. Import pipeline handles 5000+ entries
4. Search query benchmarks pass (<100ms for any query)
5. Disk size <200MB for full dataset

**Owner:** TBD

---

### TASK-003: Core Data Model & Entities
**Priority:** Critical  
**Effort:** 20h  
**Description:**
- Define Swift data models (struct/class) matching JSON schema
- Implement Core Data entities for:
  - Content entries (spells, classes, monsters, etc.)
  - Favorites (bookmarks)
  - Subscription status
  - Search cache
- Add Codable conformance for JSON decoding
- Write unit tests for data validation

**Acceptance Criteria:**
1. All data models defined and tested
2. Core Data stack initialized without crashes
3. JSON → Swift model conversion works
4. Models have proper relationships (class → spells, etc.)

**Owner:** TBD

---

## Phase 2: Search & Browse Engine

### TASK-004: SQLite Search Service
**Priority:** Critical  
**Effort:** 25h  
**Description:**
- Implement searchService() function that:
  - Accepts query string + optional filters (type, level, source)
  - Returns results <100ms
  - Groups results by type (Spells, Classes, etc.)
  - Handles empty queries (recent searches + suggestions)
  - Caches results to avoid repeated queries
- Write unit tests for edge cases (empty query, typos, Unicode)

**Acceptance Criteria:**
1. Search returns results within 100ms
2. Fuzzy matching works ("firebll" → "fireball")
3. Filters reduce results correctly
4. Empty query shows recent searches
5. Cache improves second query by >50%

**Owner:** TBD

---

### TASK-005: Browse Hierarchy UI
**Priority:** Critical  
**Effort:** 35h  
**Description:**
- Build SwiftUI views for browse hierarchy:
  - Root browse view (Classes, Races, Spells, etc.)
  - Collapsible sections (Classes → expand → list of classes)
  - Class list view (scrollable, with icons)
  - Race list view
  - Spell browser (by school)
  - Monster browser (by CR)
  - Feats browser
  - Items browser
- Implement navigation (tap to detail view)
- Add breadcrumb trail
- Handle large lists (1000+ items) with lazy loading

**Acceptance Criteria:**
1. All browse sections accessible
2. Navigation to detail view works
3. Breadcrumb shows current location
4. Lazy loading (if list >100 items)
5. Scrolling smooth at 60fps
6. Orientation change preserves scroll position

**Owner:** TBD

---

### TASK-006: Detail View & Content Display
**Priority:** Critical  
**Effort:** 30h  
**Description:**
- Build detail view for each content type:
  - Class detail (features table, spell list, hit die, abilities)
  - Spell detail (level, school, casting time, components, description)
  - Monster detail (stat block, abilities, CR, type)
  - Feat detail (prerequisites, benefits)
  - Item detail (rarity, price, weight, description)
- Implement cross-linking (tap reference → jump to target)
- Expandable sections (for long content)
- Share button (copy entry to clipboard)
- Favorite button (add to favorites)

**Acceptance Criteria:**
1. Detail view loads data instantly (cached)
2. Cross-links are tappable and functional
3. Share copies formatted text to clipboard
4. Favorite button saves to Core Data
5. Text is readable (font size, contrast)
6. Expands to show full content on tap

**Owner:** TBD

---

### TASK-007: Search UI & Filters
**Priority:** Critical  
**Effort:** 25h  
**Description:**
- Build search tab UI:
  - Search field with clear button
  - Filter dropdowns (Type, Level, Source)
  - Results list (grouped by type)
  - Recent searches
  - Empty state ("No results")
- Implement real-time search (as user types)
- Optimize for performance (<100ms response)
- Add search history persistence (UserDefaults)

**Acceptance Criteria:**
1. Search field appears with keyboard focus
2. Results update in real-time (<100ms)
3. Filters work correctly
4. Results grouped by type and labeled
5. Tapping result navigates to detail
6. Recent searches shown when field is empty

**Owner:** TBD

---

## Phase 3: Monetization & Gating

### TASK-008: StoreKit2 Integration
**Priority:** Critical  
**Effort:** 30h  
**Description:**
- Integrate Apple StoreKit2 framework:
  - Configure in-app purchase product ID
  - Handle purchase requests
  - Validate receipts
  - Check subscription status on app launch
  - Store subscription status in Core Data
  - Handle purchase errors gracefully
- Write unit tests for purchase flow (sandbox)
- Document StoreKit sandbox testing

**Acceptance Criteria:**
1. Purchase button triggers Apple's IAP sheet
2. Receipt validation succeeds in sandbox
3. Subscription status persists across launches
4. Expired subscription detected on launch
5. Error messages show if purchase fails
6. Restore Purchases button works

**Owner:** TBD

---

### TASK-009: Content Gating & Premium Indicator
**Priority:** Critical  
**Effort:** 20h  
**Description:**
- Tag all content entries (isPremium: Bool)
- Implement gating logic:
  - Hide premium content in search for free users
  - Show premium indicator in results + detail views
  - Show upsell modal when free user taps premium content
- Create PremiumUpsellView (clean, non-aggressive)
- Handle subscription state changes (subscribe, expire, restore)

**Acceptance Criteria:**
1. Premium content hidden in search results (free users)
2. Tapping premium item shows upsell modal
3. Modal doesn't re-appear after "Maybe Later"
4. Subscribing unlocks premium immediately
5. Expiring subscription re-gates content
6. Upsell modal is clear but not nagging

**Owner:** TBD

---

### TASK-010: Subscription Settings Screen
**Priority:** High  
**Effort:** 15h  
**Description:**
- Build settings screen with:
  - Active subscription status + renewal date
  - Manage Subscription button (→ App Store)
  - Restore Purchases button
  - About app, version number
  - Privacy Policy + Terms of Service links
- Implement "Manage Subscription" (deep link to App Store)
- Handle subscription state display (active, expired, pending)

**Acceptance Criteria:**
1. Settings screen loads without crashes
2. "Manage Subscription" opens App Store app
3. "Restore Purchases" validates + re-unlocks content
4. Subscription status updates after purchase
5. Links (Privacy, ToS) open in Safari

**Owner:** TBD

---

## Phase 4: User Interface & UX

### TASK-011: Tab-Based Navigation Architecture
**Priority:** Critical  
**Effort:** 20h  
**Description:**
- Design app-level navigation using NavigationStack (iOS 16+) or NavigationView (fallback)
- Implement 5-tab TabView:
  - Browse
  - Search
  - Favorites
  - GM Screen
  - Settings
- Persist tab selection across app sessions
- Handle deep links (open app to specific content)
- Test navigation state after app backgrounding

**Acceptance Criteria:**
1. All 5 tabs accessible and labeled
2. Tab bar stays visible when navigating
3. Switching tabs preserves scroll position
4. Deep links work (e.g., app://spell/fireball)
5. Navigation state restored after backgrounding

**Owner:** TBD

---

### TASK-012: Favorites Manager
**Priority:** High  
**Effort:** 20h  
**Description:**
- Build Favorites tab UI:
  - List of bookmarked entries
  - Search within favorites
  - Sort options (alphabetical, date added, type)
  - Swipe to delete
- Implement Core Data persistence:
  - Save favorite entries
  - Track add/remove timestamps
  - Sync across app launches
- Add heart button to detail views (tap to add/remove favorite)

**Acceptance Criteria:**
1. Favorites tab shows all bookmarked items
2. Heart button toggles favorite status
3. Favorites persist across app launches
4. Delete (swipe) removes from favorites
5. Search within favorites works
6. Sort options function correctly

**Owner:** TBD

---

### TASK-013: GM Screen Reference Tools
**Priority:** High  
**Effort:** 25h  
**Description:**
- Build GM Screen tab with quick-reference tools:
  - Combat tab: Initiative, attack rolls, ability checks
  - Conditions tab: Searchable condition effects
  - Spells tab: Quick access to spell list
  - Monsters tab: Monster search + stat block quick-pull
  - Tools: XP calculator (party level + monster CR → XP reward)
- Implement favorites within GM Screen (mark conditions/monsters as favorites)
- Add print-friendly formatting (for future PDF export)

**Acceptance Criteria:**
1. All tabs (Combat, Conditions, Spells, Monsters) present
2. Combat tab shows basic rules (d20 mechanics)
3. Conditions searchable and expandable
4. Monster search integrated
5. XP calculator functional
6. Content readable in portrait + landscape

**Owner:** TBD

---

### TASK-014: Responsive Layout (iPhone + iPad)
**Priority:** Critical  
**Effort:** 30h  
**Description:**
- Optimize UI for iPhone:
  - Portrait: single-column layout, readable text
  - Landscape: sidebars if needed, horizontal scrolling for tables
  - Handle notches (safe area insets)
- Optimize for iPad:
  - Split view (list on left, detail on right)
  - Landscape: full-width utilization
  - Resizable columns (if UISplitView)
  - Landscape detail view fills right side
- Test on device sizes:
  - iPhone SE (small)
  - iPhone 14 / 14 Pro (standard)
  - iPhone 14 Pro Max (large)
  - iPad mini, iPad, iPad Pro (various)

**Acceptance Criteria:**
1. iPhone portrait: content readable (no horizontal scroll)
2. iPhone landscape: optimized layout
3. iPad: split view functional + resizable
4. Tables don't overflow (horizontal scroll if needed)
5. Safe area insets respected
6. Text size scales appropriately per device

**Owner:** TBD

---

### TASK-015: Dark Mode & Accessibility
**Priority:** High  
**Effort:** 20h  
**Description:**
- Implement dark mode support:
  - Use @Environment(\.colorScheme) for system detection
  - Define color palette (light + dark variants)
  - Test all screens in both modes
  - Ensure WCAG AA contrast (4.5:1 for text)
- Implement accessibility:
  - VoiceOver labels for all interactive elements
  - Dynamic Type support (text scaling)
  - Sufficient tap targets (44x44pt minimum)
  - Meaningful image descriptions
- Test with Accessibility Inspector (Xcode)

**Acceptance Criteria:**
1. All screens render correctly in dark mode
2. Text contrast ≥4.5:1 (WCAG AA) in both modes
3. VoiceOver can navigate all screens
4. Dynamic Type works (max text size readable)
5. All buttons ≥44x44pt
6. No hard-coded colors (uses Asset catalog)

**Owner:** TBD

---

## Phase 5: Quality Assurance

### TASK-016: Automated Tests (Unit + UI)
**Priority:** High  
**Effort:** 25h  
**Description:**
- Write unit tests:
  - Search accuracy (fuzzy matching, typos)
  - Data model validation
  - Content gating logic
  - Subscription state transitions
  - Favorites persistence
- Write UI tests (XCUITest):
  - Tab navigation
  - Search flow
  - Detail view load
  - Favorite button toggle
  - Subscription modal appearance
- Set up CI/CD (GitHub Actions or local xcodebuild)

**Acceptance Criteria:**
1. >80% code coverage (models + managers)
2. All search tests pass (accuracy, performance)
3. UI tests pass on iPhone SE + iPhone 14 Pro + iPad Pro
4. CI/CD runs tests on every commit
5. No flaky tests (retries pass consistently)

**Owner:** TBD

---

### TASK-017: Performance & Optimization
**Priority:** High  
**Effort:** 20h  
**Description:**
- Benchmark search (<100ms target)
- Profile memory usage (app startup, browsing, searching)
- Optimize database queries (index review, N+1 fixes)
- Lazy-load images (if any added)
- Cache commonly searched queries
- Test scrolling performance (60fps target, 90fps preferred)

**Acceptance Criteria:**
1. Any search query returns in <100ms
2. App startup <2 seconds
3. Memory usage <200MB during normal use
4. Scrolling smooth (60fps minimum, no jank)
5. No memory leaks (Instruments, sustained use test)

**Owner:** TBD

---

### TASK-018: App Store Submission Prep
**Priority:** High  
**Effort:** 15h  
**Description:**
- Create App Store metadata:
  - App name: "Lodestone PF1"
  - Subtitle: "Pathfinder 1E Reference"
  - Description (300 words)
  - Keywords (30 chars)
  - App preview screenshots (5-9 screens)
  - App icon (1024x1024 or auto)
  - Privacy policy (linked)
  - Screenshots for all devices (iPhone, iPad)
- Configure in App Store Connect:
  - In-app purchase (product ID verified)
  - Privacy details (data not collected, etc.)
  - Category (Reference)
  - Rating (age, content warnings)
- Test on real devices (iPhone + iPad)
- Submit to Apple for review

**Acceptance Criteria:**
1. App Store Connect fully configured
2. Screenshots pass guideline review
3. Privacy policy live and linked
4. In-app purchase product verified
5. Internal TestFlight build passes
6. No crashes on real devices
7. App approved (no rejections)

**Owner:** TBD

---

## Implementation Roadmap

**Phase 1 (Weeks 1-2):** Data extraction, database, Core Data models  
**Phase 2 (Weeks 3-5):** Search & browse UI, detail views, navigation  
**Phase 3 (Weeks 5-6):** StoreKit2, content gating, subscription settings  
**Phase 4 (Weeks 6-7):** Responsive layout, dark mode, accessibility  
**Phase 5 (Weeks 8):** Tests, performance tuning, App Store prep  

**Target Launch:** 8 weeks from start (mid-May 2026)

---

## Notes

- Dependent on Archives of Nethys licensing confirmation (TASK-001)
- Scotty (programmer) assigned to implementation tickets
- Lumen (designer) consulted on UI/UX (TASK-011, TASK-014, TASK-015)
- Worf (QA specialist) owns testing tickets (TASK-016, TASK-017)
- O'Brien (ops) handles App Store submission (TASK-018)

