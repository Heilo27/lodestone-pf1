# FRD-005 — Accessibility & Performance

**Functional Requirement Document**
**Project:** Lodestone PF1
**Status:** Draft — Awaiting approval
**Version:** 1.0

---

## Purpose

Define accessibility standards (WCAG 2.1 AA) and performance targets (fast launch, smooth scroll, quick search).

---

## User Stories

1. **As a visually impaired player, I want to use VoiceOver to read spell entries**
   - Acceptance: Enable VoiceOver, navigate detail view, all content read aloud with proper structure

2. **As a user with large text preferences, I want spells readable at 200% text size**
   - Acceptance: iOS Settings → Accessibility → Larger Text (200%), app adapts, no clipping

3. **As a user, I want Lodestone to launch in under 2 seconds**
   - Acceptance: Cold start from icon tap to home screen visible: <2s

4. **As a user, I want smooth 60fps scrolling through a list of 1000 spells**
   - Acceptance: No jank, consistent framerate during scroll

5. **As a user, I want search results in under 200ms**
   - Acceptance: Type query, results appear in <200ms

---

## Functional Requirements

### FR-005-1: WCAG 2.1 AA Compliance

**Scope:** All text, buttons, inputs, and interactive elements

**Color contrast:**
- All text ≥ 4.5:1 contrast ratio (normal text)
- Large text (≥18pt bold or ≥24pt) ≥ 3:1 ratio
- Focus indicators ≥ 3:1 ratio against background and adjacent colors

**Example:**
- Light mode: Black text (#000000) on white (#FFFFFF) = 21:1 ✓
- Dark mode: White text (#FFFFFF) on dark gray (#1A1A1A) = 18:1 ✓
- Interactive buttons: Blue (#0066FF) on white = 4.8:1 ✓

**Touch targets:**
- All tappable elements ≥ 44x44pt minimum (Apple HIG standard)
- Favorite button, search results, navigation items all ≥ 44pt
- Small text links padded with whitespace

**Text scaling:**
- Support Dynamic Type (iOS accessibility feature)
- Text scales from small (body: 14pt) to extra-large (body: 28pt)
- Layout reflows gracefully (no horizontal scrolling)
- Test at: Small, Regular (default), Large, Extra Large, XXL

**Focus indicators:**
- Keyboard navigation highlight: 3pt blue outline
- Focus indicator color distinct from text

---

### FR-005-2: VoiceOver Support

**Structure and labels:**
- Every interactive element has `accessibilityLabel`
- Non-interactive elements have `accessibilityHint` (e.g., "double-tap to edit")
- Headings marked as headings (`accessibilityTraits = .header`)
- Lists announced as lists (count: "5 spells")

**Example labels:**
- Favorite button: "Add to favorites" (unfilled) or "Remove from favorites" (filled)
- Search bar: "Search spells, creatures, items"
- Spell detail: "Fireball. Evocation spell. Third-level spell for Wizard."

**VoiceOver navigation:**
- Tab through every element on screen (no unlabeled buttons)
- Headings accessible via "headings" rotor
- Links accessible via "links" rotor
- Forms navigable top-to-bottom

**Testing checklist:**
1. Enable VoiceOver (Settings → Accessibility → VoiceOver → On)
2. Navigate every screen with gestures (swipe, double-tap, etc.)
3. Read aloud every button, input, heading
4. Verify no unlabeled elements

---

### FR-005-3: Dynamic Type Support

**Automatic text scaling:**
- All custom fonts scale with iOS Dynamic Type setting
- Default body size: 17pt (standard iOS default)
- XXL body size: 28pt (accessible for vision impairment)

**Layout adaptation:**
- Single-column layout on small phones + large text
- Two-column layout on iPad + large text only if room
- No horizontal scrolling at any text size

**Implementation:**
- Use SwiftUI's `.font(.body)` and `.font(.headline)` semantic fonts
- Test on all Dynamic Type sizes (app has Accessibility Inspector tool)
- No hardcoded point sizes (use `UIFont.preferredFont(forTextStyle:)`)

---

### FR-005-4: App Launch Performance

**Target:** Cold start <2 seconds (from icon tap to home screen visible)

**Phases:**
1. **System loads app** (0–300ms, out of our control)
2. **App initialization** (SwiftUI views instantiate, 0–500ms)
3. **Data load** (SQLite opens, Core Rulebook queries, 0–500ms)
4. **Render home screen** (views layout, 0–200ms)

**Optimization strategy:**
- **Lazy load database** — Open SQLite in background, don't block UI
- **Minimal initial content** — Home screen needs only featured entries (10–20 items), load rest on demand
- **Cache metadata** — App should remember last 5 searches, 5 browsed categories, user's 10 favorite entries in memory
- **Avoid network calls** — All content is local; no network latency

**Measurement:**
- Use Xcode Instruments → Time Profiler
- Profile launch on iPhone 12 (device), not simulator
- Measure 5 cold starts, average them

---

### FR-005-5: Scroll Performance

**Target:** 60 FPS smooth scrolling in lists with 1000+ items

**Implementation:**
- **Pagination:** Display 50 items, "load more" at bottom
- **Reuse cells** — SwiftUI `List` with `LazyVStack` for efficient rendering
- **No heavy operations on scroll** — No network calls, no database queries per cell
- **Use preview providers** — Lightweight cell previews (lazy load full data on selection)

**Testing:**
- Open "All Spells" list (1000+ items)
- Scroll rapidly, verify no stuttering or frame drops
- Use Xcode Instruments → Core Animation to verify 60 FPS

---

### FR-005-6: Search Performance

**Target:** Results in <200ms for typical queries (e.g., "fireball")

**Implementation:**
- **Full-text search index** — SQLite FTS (Full-Text Search) built in FRD-001
- **Debounce input** — Wait 200ms after last keystroke before querying
- **Limit results** — Max 20 results shown; "show all" expands list
- **Async search** — Don't block UI during query

**Query examples (target <200ms):**
- "fireball" (exact name match) — <50ms
- "fire" (prefix match + content search) — <100ms
- "resist" (partial match, 50+ results) — <200ms

**If query takes >500ms:**
- Show loading spinner
- Cancel previous query
- Surface "search took too long, try narrowing your query"

---

### FR-005-7: Memory Management

**Target:** App uses <100MB base memory, <200MB with all content loaded

**Monitoring:**
- Use Xcode Memory Debugger
- Profile on iPhone with 2GB RAM (oldest supported device, iPhone 12 mini)
- Test typical user flows: launch → browse → search → detail view → favorites

**Strategies:**
- **Lazy load images** (Phase 2 when images added)
- **Unload detail views when navigated away** — Don't keep 10 open detail views in memory
- **SQLite query limits** — Max 500 rows per query, paginate results
- **String interning** — Reuse common strings (book names, types) instead of duplicating

---

### FR-005-8: Battery & Network Impact

**Target:** Minimal battery drain, zero forced network requests

**No network calls:**
- All content is bundled in app
- Zero background syncs
- Zero analytics pings
- Zero crash reporting (exception: crash logs to Apple, optional opt-in Phase 2)

**Battery optimization:**
- No location services
- No background timers
- No ambient subscriptions
- Only network activity: checking App Store subscription status (once per 24h, low-impact)

---

### FR-005-9: Dark Mode Performance

**No extra battery drain in dark mode:**
- Don't use black backgrounds excessively (OLED burn-in risk) — use dark gray (#1A1A1A)
- Don't disable True Tone (let iOS manage color temperature)
- System-provided dark mode colors cost same battery as light mode

---

### FR-005-10: Testing Checklist

**Accessibility (Vernier agent responsibility in Phase 6):**
- [ ] VoiceOver: Navigate every screen, all elements labeled
- [ ] Dynamic Type: Test at Small, Regular, Large, XXL
- [ ] Color contrast: All text ≥ 4.5:1 (normal) or ≥ 3:1 (large)
- [ ] Touch targets: All buttons ≥ 44x44pt
- [ ] Keyboard navigation: Tab through every element
- [ ] Reduced motion: Animations respect user setting

**Performance (Torres agent responsibility in Phase 9F):**
- [ ] Cold launch: <2s on iPhone 12
- [ ] Scroll: 1000-item list at 60 fps, no jank
- [ ] Search: Results in <200ms for typical queries
- [ ] Memory: <100MB base, <200MB loaded
- [ ] Battery: No unnecessary drain, no background activity

---

## UI Inventory

**No new UI screens; these are requirements for existing screens:**

All screens must:
- Support Dynamic Type scaling
- Have accessible labels for VoiceOver
- Maintain ≥ 4.5:1 contrast
- Have touch targets ≥ 44x44pt
- Support keyboard navigation (iPadOS)

---

## Data Requirements

From **FRD-001**, database must be optimized for:
- Fast full-text search (FTS indexes)
- Paginated queries (limit 50–100)
- Minimal memory footprint (compressed SQLite)

---

## Business Rules

1. **WCAG 2.1 AA is minimum** — Not aspirational; requirement for public app
2. **No analytics** — Privacy first; collect crash reports only (user opt-in)
3. **Fast launch is table stakes** — Users won't retry if app is sluggish
4. **Smooth scrolling matters** — Users notice jank; impacts app store rating

---

## Error Handling

| Error | Response |
|-------|----------|
| Database corrupt | Offer reset; re-download content in background |
| Search timeout | "Search took too long. Try narrowing query." |
| Memory warning (low RAM) | Unload background views, free caches |

---

## Acceptance Criteria

1. **WCAG 2.1 AA audit passes** — Third-party tool or manual verification
2. **VoiceOver: 100% labels** — Every interactive element labeled
3. **Dynamic Type: XXL text works** — No clipping, readable layout
4. **Cold launch <2s** — 5 test runs, average <2s
5. **Scroll 60 FPS** — 1000-item list scrolls smoothly
6. **Search <200ms** — 10 typical queries all <200ms
7. **Memory <100MB base** — Xcode debugger confirms
8. **Zero network requests** — Charles/Fiddler intercept confirms no outbound traffic

---

## Out of Scope (Phase 1)

- Voice commands (VoiceControl)
- Haptic feedback (optional polish)
- Custom accessibility rotor
- High-contrast mode (iOS 14+)
- Magnification support (using iOS's built-in zoom)

---

## Dependencies

- **FRD-001** (Data Model) — Optimized SQLite, FTS indexes
- **Xcode 14+** — Includes Accessibility Inspector, Core Animation tools
- **iOS 15.0+** — SwiftUI accessibility APIs, Dynamic Type

---

## Notes

Accessibility and performance are **non-negotiable**. A fast, accessible app feels polished. A slow, inaccessible app frustrates users and tanks App Store rating.

**Key design principles:**
- **Accessibility is free** — Built-in VoiceOver support costs nothing; ignoring it is expensive (lower rating, bad reviews)
- **Performance is earned** — Fast apps require profiling and optimization; can't be added at the end
- **Test on real hardware** — Simulator performance is misleading; profile on actual iPhone/iPad

---

## Sign-Off

**Status:** Draft — awaiting approval
**Created:** 2026-03-31
**Author:** Friday
