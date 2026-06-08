# Level 3 Diagnostic — Lodestone PF1 — 2026-06-08
**Focus:** Cross-link architecture (CrossReferenceBuilder, CrossLinkSection, DatabaseService cross-ref methods, SeedDataBuilder integration, detail view wiring)
**Agents:** Worf (integration), Scotty (code review)
**Build:** SUCCEEDED — clean

---

## Summary

**15 issues found across integration and code review.**

| Severity | Count | Ticket IDs |
|----------|-------|------------|
| P1 | 7 | TASK-232, 233, 234, 235, 236, 237, 238 |
| P2 | 6 | TASK-239, 240, 241, 242, 243, 244 |
| P3 | 2 | TASK-245, 246 |

---

## P1 — Fix Before Ship

### TASK-232 — CRB-001: Feat prerequisite cross-refs broken (~1,591 links silently dropped)
`CrossReferenceBuilder.swift:59` — Prerequisite strings use short names ("Power Attack") but stored feat titles include type suffixes ("Power Attack (Combat)"). Lookup always fails for suffixed feats. ~1,591 of ~3,745 prerequisite cross-refs produce no link.
**Fix:** Build featMap with suffix stripped via regex `\s*\([^)]+\)$`.

### TASK-233 — CRB-002: parseClassLevels drops race-restricted spell levels (230 spells affected)
`CrossReferenceBuilder.swift:193` — Segments like "wizard 2 (gillman)" produce level="(gillman)", Int() returns nil, segment dropped. 230 spells lose at least one class↔spell cross-ref.
**Fix:** Strip trailing parenthetical from the name segment before the Int check.

### TASK-234 — CRB-003: buildItemToSpells — no word-boundary check produces false links on 40+ items
`CrossReferenceBuilder.swift:176` — `descLower.contains(spellTitle)` matches substrings. "fly" hits "flying" (41 items), "aid" hits 72, "web" hits 5. Users see spurious "Related Spells" entries.
**Fix:** Replace contains() with `\bspellTitle\b` word-boundary regex.

### TASK-235 — ARCH-001: ClassDetailView missing CrossLinkSection — class↔spell and class→skill links never shown
`ClassDetailView.swift` — buildSpellToClass() and buildClassToSkills() seed full cross-refs for class entries. ClassDetailView has no CrossLinkSection. Only view with seeded cross-refs that's not wired.
**Fix:** Add `CrossLinkSection(sourceId: classEntry.id, heading: "Class Spells")` and optionally one for skills.

### TASK-236 — ARCH-002: RuleDetailView missing CrossLinkSection — skill→class navigation absent
`RuleDetailView.swift`, `CrossReferenceBuilder.swift` — Two-part: (1) buildClassToSkills() only writes class→skill, not reverse. (2) RuleDetailView has no CrossLinkSection. Users viewing a skill can't see which classes use it.
**Fix:** Add reverse insert in buildClassToSkills(); add CrossLinkSection to RuleDetailView.

### TASK-237 — CLS-001: CrossLinkSection .task guard prevents refresh on sourceId change
`CrossLinkSection.swift:22` — `guard links.isEmpty` prevents re-fetch when sourceId changes. Safe with push navigation, breaks on iPad split-view or sheet presentation.
**Fix:** Change to `.task(id: sourceId)`, reset `links = []` at top of task body.

### TASK-238 — F-03: Skill cross-links show rule icon/color — wrong ContentType from JOIN
`CrossLinkSection.swift:60`, `DatabaseService.swift` — Skills stored as content_type='rule'. fetchCrossReferencesWithType returns .rule for skill cross-refs. CrossLinkRow renders grey book icon instead of skill presentation. Navigation correct; icon wrong.
**Fix:** Store target_type explicitly in cross_references at insert time (CrossReferenceBuilder knows the semantic type).

---

## P2 — Address Before 1.1 Final

### TASK-239 — ARCH-003/006: buildAll() inside seed transaction — cross-ref failure wipes entire DB
`SeedDataBuilder.swift:237` — Single transaction wraps content seed + cross-ref build. Any buildAll() throw rolls back ALL content. First-launch failure → empty app.
**Fix:** Commit content first; run cross-ref build in separate non-fatal transaction.

### TASK-240 — CRB-004: parsePrereqNames — trailing periods compound feat lookup failures
`CrossReferenceBuilder.swift:204` — "Improved Unarmed Strike." fails lookup. Fix with `.trimmingCharacters(in: .whitespaces.union(.punctuationCharacters))` in the token processing chain. Fix alongside CRB-001.

### TASK-241 — DETAIL-001: RaceDetailView "Racial Traits" heading appears twice
`RaceDetailView.swift:14,44` — OrnamentalDivider and CrossLinkSection both labeled "Racial Traits". Two identical headers in sequence when cross-refs exist.
**Fix:** Rename CrossLinkSection heading to "Trait Details".

### TASK-242 — F-05: No explicit index on cross_references(source_id)
`DatabaseService.swift` — Composite PK provides implicit index; explicit index recommended at 30–50K projected rows. Add `CREATE INDEX IF NOT EXISTS idx_crossref_source ON cross_references(source_id)`.

### TASK-243 — CRB-005: isSpellList guard too narrow — single-SLA monsters produce no cross-refs
`CrossReferenceBuilder.swift:223` — Parentheticals without /day, at will, or comma are skipped. Single-ability monsters like "(dimension door)" get no link.
**Fix:** Relax guard or remove it and let spellMap lookup act as the filter.

### TASK-244 — DB-002: link_text nullable in composite PRIMARY KEY
`DatabaseService.swift:527` — SQLite NULL != NULL breaks INSERT OR REPLACE dedup if null ever passed. Currently latent (all callers pass String). Fix: `link_text TEXT NOT NULL DEFAULT ''`.

---

## P3 — Cleanup

### TASK-245 — Dead code: fetchCrossReferences(for:) superseded by typed variant
`DatabaseService.swift:207` — No call sites. Delete.

### TASK-246 — CLS-002: CrossLinkRow .task in else branch semantically fragile
`CrossLinkSection.swift:48` — Move `.task(id: targetId)` to Group level for stable view identity.

---

## Confirmed Non-Issues

- **ARCH-007** — CrossReferenceBuilder struct + actor pattern is safe; no deadlock or reentrancy risk (confirmed by Scotty).
- **DETAIL-002** — MonsterDetailView "Spell-Like Abilities" heading correctly suppressed when cross-refs are empty (if !links.isEmpty guard works).
- **SEED-001** — seededUUID array subscripts flagged by swift-doctor are not runtime-reachable (SHA-256 always produces 32 bytes; prefix(16) always 16). Static analysis false-positive.
- **DB-003** — FileManager.default in static writableDatabasePath(): technically non-isolated but called once at startup from actor context. Low real-world risk; noted in swift-doctor findings.

---

## Stub Sweep
Clean. No fatalError, TODO, FIXME, placeholder, stub, or hardcoded markers in CrossReferenceBuilder, CrossLinkSection, or cross-ref DatabaseService methods.

## Detail View Coverage
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

*No fixes applied. Run /level1 Lodestone-PF1 to kick off the full autonomous fix loop.*
