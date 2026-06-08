# Lodestone PF1 — Level 2 Diagnostic Report
**Date:** 2026-06-07  
**Agents:** Worf (Integration/Tests), Scotty (Code/Arch/Security), Torres (Stability/Spec)  
**Swift-Doctor pre-pass:** 608 findings (37 errors, 571 warnings) — score 0

---

## Summary

| Severity | Count |
|----------|-------|
| P0 — Crash / data loss | 2 |
| P1 — Broken behavior | 11 |
| P2 — Non-blocking issues | 15 |
| P3 — Polish / low risk | 12 |
| **Total** | **40** |

Build: **PASS**. Unit tests: **7/7 PASS**. UI tests: **0/2 PASS** (DB seeding timeout).

---

## P0 — Must Fix (Crashes / Data Loss)

### P0-1 · Force-unwrap crash in `DatabaseService.writableDatabasePath()`
`FileManager.default.urls(for:in:).first!` at line 992 — if `FileManager` returns an empty array (sandboxing restriction, disk error), this crashes unconditionally.  
**Ticket:** TASK-178 / TASK-196  
**Fix:** `guard let url = FileManager.default.urls(...).first else { throw DatabaseError.pathUnavailable }`

### P0-2 · Silent empty `catch {}` in `DatabaseInfoView.task`
All DB errors are swallowed. If the DB fails to load during Settings, the loading spinner in `DatabaseInfoView` never resolves — the user sees a spinner forever with no error state or retry path.  
**Ticket:** TASK-179  
**Fix:** Surface error in UI or at minimum `Logger.error(...)` + set an error state.

---

## P1 — Must Fix (Broken Features)

### P1-1 · `SearchService` mutates `@Observable` state off main actor
`results` and `isSearching` are assigned after `await database.search(...)` returns — on the DB actor's thread, not `@MainActor`. Data race; potential UI update off main thread.  
**Ticket:** TASK-180  
**Fix:** Annotate `SearchService` with `@MainActor` or wrap all state mutations in `await MainActor.run`.

### P1-2 · No `LodestoneCore` SPM package
All DB/model/service code lives in the PF1 app target. PF2 and SF1 will require full duplication. FRD-001 explicitly requires `LodestoneCore` package.  
**Ticket:** TASK-181  
**Fix:** Extract `DatabaseService`, models, `SeedDataBuilder`, `SearchService`, `SubscriptionService` into a local SPM package.

### P1-3 · UUID fallback creates orphaned favorites
`UUID(uuidString: row["id"]) ?? UUID()` in model inits silently substitutes a random UUID for any malformed DB row. That entry's UUID is now ephemeral — favorites break permanently.  
**Ticket:** TASK-182  
**Fix:** Throw on malformed UUID instead of substituting; log and skip that row.

### P1-4 · O(n²) `crGroups` in `MonsterListView`
`firstIndex(where:)` inside a loop over 2,000+ monsters = ~4M comparisons on main thread.  
**Ticket:** TASK-183  
**Fix:** Replace with `Dictionary(grouping:)` accumulator.

### P1-5 · `alphabeticalGroups` / `typeGroups` recomputed every render pass
O(n log n) sort and group in a computed property, called on every SwiftUI render. For the full bestiary this blocks the main thread on every frame.  
**Ticket:** TASK-184  
**Fix:** Cache as a `lazy var` or move computation into view model with `@State`.

### P1-6 · `SubscriptionStatus.active` falls to `default:` case
The subscription switch in Settings is missing an explicit `.active` and `.neverSubscribed` case — both fall to `default:`. Active subscribers see the wrong UI state.  
**Ticket:** TASK-187  
**Fix:** Add explicit `case .active:` and `case .neverSubscribed:` branches.

### P1-7 · Backgrounding mid-seed = permanent stuck spinner
`initializeDatabase()` runs in a `Task` not backed by `UIBackgroundTask`. iOS suspends mid-seed; on resume, no new `initializeDatabase()` is kicked off (`.task` doesn't re-run on resume). User is stuck at the loading screen forever.  
**Ticket:** TASK-189  
**Fix:** Wrap seed task in `UIBackgroundTask`; on `scenePhase` transition from `.background` → `.active`, check if DB is populated and re-trigger if not.

### P1-8 · Migration file deletion silently ignored
`try? FileManager.default.removeItem(atPath: dbPath)` swallows failure. If deletion fails, the old schema is opened and the reseed runs against incompatible columns — silent corruption.  
**Ticket:** TASK-191  
**Fix:** Use `try FileManager...` and surface the error; abort migration rather than proceeding on a stale file.

### P1-9 · No tappable cross-references in any detail view (FRD-003)
`cross_references` table exists and `fetchCrossReferences()` is implemented, but the table is never populated and no detail view renders cross-reference links. Core FRD-003 acceptance criterion is unmet.  
**Ticket:** TASK-193  
**Fix:** Populate cross-references during seed (at minimum Spell↔Class and Feat↔prerequisite chains); render as `NavigationLink` in `SpellDetailView` and `FeatDetailView`.

### P1-10 · `cross_references` table never populated
`SeedDataBuilder` has no code path that calls `insertCrossReference()`. The table always has zero rows.  
**Ticket:** TASK-223  
**Fix:** Add cross-reference insertion to the seed pass for spells (class levels → class entries) and feats (prerequisites → feat entries).

### P1-11 · Shared subscription product ID mismatch
FRD specifies `com.heiloproject.lodestone.allaccess.*`. Implementation uses `com.heiloprojects.lodestonepf1.allaccess.*` (PF1-specific). The "one subscription unlocks all three apps" business rule is broken.  
**Ticket:** TASK-227  
**Fix:** Align product IDs with the shared subscription group configured in App Store Connect; verify against the submitted IAP.

---

## P2 — Non-Blocking Issues (Fix Before 1.0 Final)

| # | Area | Issue | Ticket |
|---|------|-------|--------|
| 1 | Tests | 2/2 UI tests fail — tab bar not visible before DB seed completes | TASK-224 |
| 2 | Search | Results not grouped by type — FRD-003 AC not met | TASK-180 |
| 3 | Search | `likeSearch()` does not escape `%` / `_` wildcards — unexpected results on queries like "50% chance" | TASK-183 |
| 4 | Favorites | Full `loadFavorites()` DB round-trip on every heart toggle — O(n) on main thread | TASK-202 |
| 5 | Favorites | Sections not collapsible — FRD-004 AC not met | TASK-202 |
| 6 | IAP | Unverified transactions silently dropped — no "Payment pending" UI | TASK-211 |
| 7 | IAP | Trial disclosure missing from `SubscriptionButton` label — App Review risk | TASK-211 |
| 8 | Lifecycle | Concurrent `initializeDatabase()` calls (Retry while seeding) — double seed, wipes then re-seeds | TASK-189 |
| 9 | Stability | Subscription lapse mid-session: no "your subscription has lapsed" explanation — paywall appears without context | TASK-211 |
| 10 | Stability | `crSortValue()` returns 99 for unknown CR strings (mythic, "—") — all clump incorrectly | TASK-183 |
| 11 | Memory | `NSCache` in `SearchService` has no `countLimit` — unbounded growth | TASK-184 |
| 12 | Error handling | `BrowseViewModel.loadCounts()` and `FavoritesViewModel.loadFavorites()` swallow all errors silently | TASK-199 |
| 13 | Logging | Zero `Logger` / `print` calls in `DatabaseService`, `SeedDataBuilder`, `FavoritesService` — production debugging is blind | TASK-199 |
| 14 | A-Z scrubber | `SectionIndexView` exists but unused in `FeatListView` and `MonsterListView` | TASK-207 |
| 15 | Favorites | "Clear all favorites" logic exists but has no UI surface — FRD-004 AC | TASK-205 |

---

## P3 — Low Risk / Polish

| # | Area | Issue |
|---|------|-------|
| 1 | Swift-Doctor | 23× `corpus-recursive-enum` false positives — no `indirect` needed; confirmed false positives |
| 2 | Code | `URL(string: "https://...")!` force-unwraps on hardcoded static strings |
| 3 | Architecture | `LibraryFilterService` stores book names as comma-delimited `@AppStorage` — fragile if names gain commas |
| 4 | Security | `debugUnlockAll` in `UserDefaults` — bypasses paywall on jailbroken TestFlight devices |
| 5 | Code | Cross-app bundle subscription entitlements not handled in `checkSubscriptionStatus()` |
| 6 | Navigation | Browse breadcrumb not implemented — FRD-002 AC |
| 7 | A11y | `GroupHeader` section headers missing `.accessibilityAddTraits(.isHeader)` |
| 8 | A11y | Search result rows missing explicit `accessibilityLabel` — list count not announced |
| 9 | Docs | FRD-004 has stale product IDs (doc-only) |
| 10 | Docs | `docs/DATABASE-SCHEMA.md` required by FRD-001 AC-6 — absent |
| 11 | Schema | FRD schema spec (`content_entries + dataJson`) diverges from implementation — FRD needs update |
| 12 | Stability | DDL inside explicit transaction in `resetContentTables()` — partial schema unrecoverable on failed `createSchema()` |

---

## Spec Compliance Gaps

| FRD | Requirement | Status |
|-----|-------------|--------|
| FRD-001 FR-001-2 | Tappable cross-references, bidirectional | **MISSING** — see P1-9/P1-10 |
| FRD-001 AC-6 | `DATABASE-SCHEMA.md` | **MISSING** |
| FRD-002 FR-002-3 | A-Z scrubber in all long lists | **PARTIAL** — SpellListView only |
| FRD-003 FR-003-2 | Search results grouped by type | **MISSING** |
| FRD-003 FR-003-2 | Search tips inline help | **MISSING** |
| FRD-004 FR-004-3 | Shared product IDs across apps | **SPEC MISMATCH** — see P1-11 |
| FRD-004 FR-004-4 | Trial disclosure in subscription UI | **MISSING** |
| FRD-004 FR-004-5 | Show expiration date on cancelled state | **MISSING** |
| FRD-005 FR-005-4 | Cold launch <2s | **UNREACHABLE** on first install (seed time) |

---

## Fix Pass Scope (P0 + P1 — 13 items)

Dispatching **Scotty** (code fixes) to address P0-1, P0-2, P1-1, P1-3, P1-4, P1-5, P1-6, P1-8, P1-10, P1-11.  
Dispatching **Torres** (stability fixes) to address P1-7, P1-8.  
P1-2 (LodestoneCore SPM extraction) deferred — architectural refactor, not a release blocker for PF1 1.0.  
P1-9 (cross-reference UI) deferred — content seeding work, tracked in TASK-193/223.

---

*Report generated by Friday (F.R.I.D.A.Y.) — Level 2 Diagnostic, single-pass + one fix.*
