# Level 1 Diagnostic — Lodestone PF1 — 2026-06-08
**Focus:** Cross-link architecture + full sweep
**Agents:** Worf (integration gate), Scotty (code+arch+security), Torres (stability+spec), Vernier-A (iPhone SE light), Vernier-B (iPhone 17 Pro dark/XXL)
**Build:** SUCCEEDED — clean

---

## Summary

**30 issues across all agents. 15 pre-known from L3, 15 net-new from L1.**

| Severity | Count | New (L1 only) | Pre-known (L3) |
|----------|-------|---------------|----------------|
| P1 | 14 | 7 | 7 |
| P2 | 12 | 6 | 6 |
| P3 | 4 | 2 | 2 |

---

## P1 — Fix Before Ship

### TASK-232 — CRB-001: Feat prerequisite cross-refs broken (~1,591 links silently dropped)
`CrossReferenceBuilder.swift:59` — Prerequisite strings use short names ("Power Attack") but stored feat titles include type suffixes ("Power Attack (Combat)"). Lookup always fails for suffixed feats.
**Fix:** Build featMap with suffix stripped: `feat.title.replacingOccurrences(of: #"\s*\([^)]+\)$"#, with: "", options: .regularExpression).lowercased()`

### TASK-233 — CRB-002: parseClassLevels drops race-restricted spell levels (230 spells affected)
`CrossReferenceBuilder.swift:193` — "wizard 2 (gillman)" → `level = "(gillman)"`, `Int()` nil → segment dropped.
**Fix:** Strip trailing parenthetical from name segment before Int check.

### TASK-234 — CRB-003: buildItemToSpells — no word-boundary check, 40+ false positive links
`CrossReferenceBuilder.swift:176` — `descLower.contains(spellTitle)` matches substrings ("fly" → "flying").
**Fix:** Replace with `\bspellTitle\b` word-boundary regex.

### TASK-235 — ARCH-001: ClassDetailView missing CrossLinkSection
`ClassDetailView.swift` — `buildSpellToClass()` and `buildClassToSkills()` seed full cross-refs for class entries but ClassDetailView never renders them.
**Fix:** Add `CrossLinkSection(sourceId: classEntry.id, heading: "Class Spells")` and `CrossLinkSection(... heading: "Class Skills")`.

### TASK-236 — ARCH-002: RuleDetailView missing CrossLinkSection + no reverse skill→class links
`RuleDetailView.swift`, `CrossReferenceBuilder.swift` — No reverse insert in `buildClassToSkills()`, no CrossLinkSection in RuleDetailView.
**Fix:** Add reverse insert; add CrossLinkSection to RuleDetailView.

### TASK-237 — CLS-001: CrossLinkSection .task guard prevents refresh on sourceId change
`CrossLinkSection.swift:22` — `guard links.isEmpty` prevents re-fetch on sourceId change.
**Fix:** Change to `.task(id: sourceId)`, reset `links = []` at top of task body.

### TASK-238 — F-03: Skill cross-links show rule icon/color — wrong ContentType from JOIN
`CrossLinkSection.swift:60`, `DatabaseService.swift` — Skills stored as `content_type='rule'`; JOIN returns `.rule` for skill targets.
**Fix:** Store `target_type` explicitly in `cross_references` at insert time.

### TASK-248 — S-03: Background task expiration handler calls endBackgroundTask(.invalid)
`LodestoneApp.swift:70` — Expiration handler calls `.invalid` instead of `bgTask`. iOS may force-kill instead of gracefully suspending on slow seeds.
**Fix:** Capture `bgTask` identifier; call `endBackgroundTask(bgTask)` inside expiration handler.

### TASK-249 — SP-04: Item→Creature cross-links absent — FRD-001 + FRD-003 required
`CrossReferenceBuilder.swift` — No `buildItemToCreatures()`. FRD-003 FR-003-6 shows "CREATURES KNOWN TO USE" section in item detail layout; it's unimplemented.
**Fix:** Add `buildItemToCreatures()` searching creature desc/equipment for item name mentions.

### TASK-250 — SP-05: Feat reverse links absent — FRD-003 "Required by" section is dead data
`CrossReferenceBuilder.swift:buildFeatToPrereqs()` — Only builds feat→prereq, not prereq→dependent feats. FRD-003 "Required by" section always empty.
**Fix:** Add reverse insert in `buildFeatToPrereqs()`.

### TASK-251 — CLS-003: NavigationLink silently swallowed if context lacks BrowseDestination handler
`CrossLinkSection.swift:44` — `NavigationLink(value: BrowseDestination.detail(...))` requires ancestor handler. SearchView partial, FavoritesView partial — future contexts will silently no-op.
**Fix:** Ensure all tabs register complete `BrowseDestination` handlers.

### TASK-257 — CRB-006: buildTraitToPrereqs() has same CRB-001 + CRB-004 bugs
`CrossReferenceBuilder.swift` — Same feat-suffix mismatch and trailing-period issues apply to trait prerequisite parsing. Must be fixed alongside TASK-232/240.

### TASK-239 — ARCH-003/006: buildAll() inside seed transaction — cross-ref failure wipes entire DB
`SeedDataBuilder.swift:237` — Single transaction wraps content seed + cross-ref build. Any `buildAll()` throw rolls back ALL content.
**Fix:** Commit content first; run cross-ref in separate non-fatal transaction.

### TASK-240 — CRB-004: parsePrereqNames — trailing periods compound feat lookup failures
`CrossReferenceBuilder.swift:204` — "Improved Unarmed Strike." fails lookup. Fix alongside CRB-001.

---

## P2 — Address Before 1.1 Final

### TASK-241 — DETAIL-001: RaceDetailView "Racial Traits" heading appears twice
`RaceDetailView.swift:14,44` — Both OrnamentalDivider and CrossLinkSection labeled "Racial Traits".
**Fix:** Rename CrossLinkSection heading to "Trait Details".

### TASK-242 — F-05: No explicit index on cross_references(source_id)
`DatabaseService.swift` — Composite PK provides implicit index; explicit index recommended at 30–50K projected rows.
**Fix:** `CREATE INDEX IF NOT EXISTS idx_crossref_source ON cross_references(source_id)`.

### TASK-243 — CRB-005: isSpellList guard too narrow — single-SLA monsters produce no cross-refs
`CrossReferenceBuilder.swift:223` — Parentheticals without /day, at will, or comma are skipped.
**Fix:** Relax guard or let spellMap lookup act as filter.

### TASK-244 — DB-002: link_text nullable in composite PRIMARY KEY
`DatabaseService.swift:527` — SQLite NULL != NULL breaks INSERT OR REPLACE dedup if null ever passed.
**Fix:** `link_text TEXT NOT NULL DEFAULT ''`.

### TASK-252 — DB-001: cross_references.id is dangling — new UUID generated on every INSERT OR REPLACE
`DatabaseService.swift:228` — `id` column not used as PK or in any query; new UUID on every replace wastes storage.
**Fix:** Remove `id` column or make it the actual PRIMARY KEY.

### TASK-253 — CLS-004: All cross-refs lumped under single heading regardless of type
`CrossLinkSection.swift` — Mixed type results (classes + items) under one "See Also" heading.
**Fix:** Group by targetType within section, or use multiple scoped CrossLinkSection instances.

### TASK-254 — SP-03: Schema diverges from FRD-001; docs/DATABASE-SCHEMA.md missing
`docs/frd/FRD-001-CORE-DATA-MODEL.md` — Table names, column names, structure all differ from spec. FRD-001 AC-6 requires `docs/DATABASE-SCHEMA.md` which doesn't exist.
**Fix:** Update FRD-001 to match actual schema; create DATABASE-SCHEMA.md.

### TASK-256 — DETAIL-003: ItemDetailView references weapon stat fields not in schema
`ItemDetailView.swift:21-29` — References `item.damage`, `item.critical`, `item.damageType`, `item.rangeIncrement` which don't exist in `item_details` DDL. Weapon section is permanently hidden dead code.
**Fix:** Either add weapon stat fields to schema + seed data, or remove the dead UI block.

### TASK-258 — DB-003: fetchCrossReferencesWithType missing DISTINCT
`DatabaseService.swift` — No DISTINCT on cross-ref fetch; duplicate rows possible if DB-002 (NULL link_text) is triggered.
**Fix:** Add SELECT DISTINCT.

### TASK-259 — VB-03: QuickAccessTile labels wrap mid-word at default text size
`BrowseView.swift` — Grid column min 96pt too narrow; "Classes" → "Class-/nes", "Monsters" → "Mon-/nsters". Confirmed in simulator screenshot.
**Fix:** Increase minimum column width to 110–120pt or add minimumScaleFactor.

### TASK-260 — VB-07: AppConstants.bundleID is wrong
`Constants.swift:5` — `"com.heiloproject.lodestone.pf1"` vs actual `"com.heiloprojects.lodestone-pf1"`.
**Fix:** Correct the constant.

### TASK-261 — VB-05: contentTypeColor("rule") fails WCAG AA contrast in dark mode
`Constants.swift:109` — `#4A4A4A` on `#2A2620` background ≈ 2.1:1 contrast ratio (minimum 3:1).
**Fix:** Lighten rule/skill color in dark mode via colorScheme-aware variant.

---

## P3 — Cleanup

### TASK-245 — Dead code: fetchCrossReferences(for:) superseded by typed variant
`DatabaseService.swift:207` — No call sites. Delete.

### TASK-246 — CLS-002: CrossLinkRow .task in else branch semantically fragile
`CrossLinkSection.swift:48` — Move `.task(id: targetId)` to Group level.

### TASK-255 — T-01: navigationTitle "GM Screen" vs tab label "GM Tools"
`GMScreenView.swift:58`, `ContentView.swift:95` — Inconsistent naming.
**Fix:** Standardize to "GM Tools". Update navigationTitle in GMScreenView.

### TASK-262 — VB-04: CrossLinkRow link text has no lineLimit(nil)
`CrossLinkSection.swift:63` — Will truncate long names at XXL Dynamic Type.
**Fix:** Add `.lineLimit(nil)` or `.lineLimit(2)`.

---

## Confirmed Non-Issues

- **ARCH-007** — CrossReferenceBuilder struct + actor pattern is safe; no deadlock risk (Scotty).
- **DETAIL-002** — MonsterDetailView "Spell-Like Abilities" heading correctly suppressed when empty.
- **SEED-001** — seededUUID array subscripts are not runtime-reachable (SHA-256 always 32 bytes). Static analysis false-positive.
- **DB-003** — writableDatabasePath() static/non-isolated: safe in practice (FileManager thread-safe for URL ops; called once at startup).
- **S-06** — CrossLinkRow concurrent fetch: actor serializes all calls, safe.
- **SP-02** — cross_references performance: composite PK left-prefix covers source_id lookups efficiently.

---

## Detail View Coverage (final)

| View | CrossLinkSection | Cross-refs Seeded |
|------|-----------------|-------------------|
| SpellDetailView | ✅ | ✅ |
| FeatDetailView | ✅ | ✅ |
| MonsterDetailView | ✅ | ✅ |
| RaceDetailView | ✅ | ✅ |
| TraitDetailView | ✅ | ✅ |
| ItemDetailView | ✅ | ✅ |
| **ClassDetailView** | ❌ MISSING | ✅ (TASK-235) |
| **RuleDetailView** | ❌ MISSING | ❌ no reverse (TASK-236) |

---

## Ticket Index

| Ticket | Severity | Summary |
|--------|----------|---------|
| TASK-232 | P1 | CRB-001: feat suffix mismatch — 1,591 dropped cross-refs |
| TASK-233 | P1 | CRB-002: parseClassLevels drops race-restricted levels |
| TASK-234 | P1 | CRB-003: buildItemToSpells word-boundary false positives |
| TASK-235 | P1 | ARCH-001: ClassDetailView missing CrossLinkSection |
| TASK-236 | P1 | ARCH-002: RuleDetailView missing CrossLinkSection + reverse links |
| TASK-237 | P1 | CLS-001: .task guard prevents sourceId refresh |
| TASK-238 | P1 | F-03: skill cross-links show wrong icon/color |
| TASK-239 | P1 | ARCH-003/006: buildAll in transaction — failure = empty DB |
| TASK-240 | P1 | CRB-004: trailing periods in prereq parsing |
| TASK-248 | P1 | S-03: bgTask expiration handler calls .invalid |
| TASK-249 | P1 | SP-04: item→creature cross-links absent (FRD required) |
| TASK-250 | P1 | SP-05: feat reverse links absent ("Required by" dead) |
| TASK-251 | P1 | CLS-003: NavigationLink silently swallowed in partial-handler contexts |
| TASK-257 | P1 | CRB-006: buildTraitToPrereqs same suffix+period bugs |
| TASK-241 | P2 | DETAIL-001: duplicate "Racial Traits" heading |
| TASK-242 | P2 | F-05: no explicit index on cross_references(source_id) |
| TASK-243 | P2 | CRB-005: isSpellList guard too narrow |
| TASK-244 | P2 | DB-002: nullable link_text in composite PK |
| TASK-252 | P2 | DB-001: dangling id column in cross_references |
| TASK-253 | P2 | CLS-004: all cross-refs under one heading, no type grouping |
| TASK-254 | P2 | SP-03: schema diverges from FRD-001; DATABASE-SCHEMA.md missing |
| TASK-256 | P2 | DETAIL-003: ItemDetailView weapon stat fields don't exist on model |
| TASK-258 | P2 | DB-003: fetchCrossReferencesWithType missing DISTINCT |
| TASK-259 | P2 | VB-03: QuickAccessTile mid-word wrap at default text size |
| TASK-260 | P2 | VB-07: AppConstants.bundleID wrong |
| TASK-261 | P2 | VB-05: rule color #4A4A4A fails WCAG AA in dark mode |
| TASK-245 | P3 | Dead code: fetchCrossReferences(for:) |
| TASK-246 | P3 | CLS-002: .task in else branch fragile |
| TASK-255 | P3 | T-01: "GM Screen" vs "GM Tools" naming inconsistency |
| TASK-262 | P3 | VB-04: CrossLinkRow no lineLimit — truncates at XXL |

---

*Vernier-A (iPhone SE light mode) pending — findings will be incorporated if agent completes before fix pass.*

*Phase 5A fix pass: Scotty + Torres + Vernier dispatched after this report.*
