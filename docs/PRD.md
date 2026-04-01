# Lodestone — Product Requirements Document

**Version:** 2.0
**Project:** Lodestone Reference Suite (PF1 / PF2 / SF1)
**Platform:** iOS / iPadOS
**Status:** Phase 4 — PRD v2 (Awaiting Approval)
**Updated:** 2026-04-01

---

## Overview

**Lodestone** is a suite of three native iOS/iPadOS reference apps sharing a single UI/UX framework but hosting distinct game system databases:

| App | Game System | Content Source |
|-----|-------------|---------------|
| **Lodestone: PF1** | Pathfinder 1st Edition | Archives of Nethys / d20PFSRD (OGL 1.0a) |
| **Lodestone: PF2** | Pathfinder 2nd Edition | Archives of Nethys (OGL 1.0a) |
| **Lodestone: SF1** | Starfinder 1st Edition | Archives of Nethys (OGL 1.0a) |

Each app is a separate App Store listing with its own identifier, branding accent color, and content database. The UI framework, design system, and navigation patterns are shared across all three.

---

## Problem Statement

Pathfinder and Starfinder players and Game Masters need fast, deep access to game rules mid-session. The last major iOS reference app (PFRPG) is abandoned and built on a dated iPad-only UI. Web alternatives (Archives of Nethys) require internet and aren't optimized for quick table lookups. No existing app provides:

- **Deep cross-referencing** — clicking a feat that requires a spell should take you to the spell directly
- **Columnar hierarchy navigation** — browse books → chapters → entries fluidly without losing context
- **Modern iOS design** — proper dark mode, Dynamic Type, VoiceOver, iPad split view
- **All books in one place** — Core free, expansions via subscription

**Target pain point:** Looking up a feat's prerequisite chain or a monster's spell list mid-combat should take 3 seconds, not 30.

---

## Target Users

1. **Players (primary)** — Spell lookup, feat/archetype research, equipment reference during character creation or between sessions
2. **Game Masters (primary)** — Monster stats, NPC rules, encounter building, treasure tables at the table
3. **Theory-crafters (secondary)** — Deep character optimization, rule cross-referencing

---

## Platform & Distribution

- **iOS 17.0+**, **iPadOS 17.0+**
- App Store — three separate listings (PF1, PF2, SF1)
- iPhone (all sizes) + iPad (all sizes)
- Orientation: Portrait + landscape both fully supported
- All content bundled locally — zero server dependency after install

---

## Shared Architecture

All three apps are built from a single Xcode workspace with:

- **LodestoneCore** — shared Swift package: data model, search engine, UI components, design system
- **LodestoneApp-PF1** / **LodestoneApp-PF2** / **LodestoneApp-SF1** — thin app targets, each with their own:
  - App icon and accent color
  - SQLite content database (bundled as resource)
  - App Store metadata

The UI/UX is **identical** across all three apps. A user who knows PF1 immediately knows PF2.

---

## Core Features (MVP — All Three Apps)

### Free Tier
- **Core Rulebook** — full content for the base game (PF1 Core, PF2 Core, SF1 Core)
- **Columnar hierarchical navigation** — books → chapters → entries drill-down
- **Global full-text search** — FTS5, sub-200ms results
- **Cross-reference hyperlinks** — every entry links to related entries (spell ↔ class, feat ↔ ability, monster ↔ spells)
- **Favorites** — bookmark any entry, organized into folders
- **Dark mode** — system-aware, beautiful in both modes
- **iPad split view** — nav column + content pane simultaneously visible

### Paid Subscription ($2/month)
- All expansion books unlocked (see Appendix B for per-app book lists)
- Single subscription covers all three Lodestone apps
- 7-day free trial
- Cancellable anytime

---

## Navigation Model (Core Design Decision)

The navigation pattern is **columnar hierarchical drill-down** — derived from the PFRPG reference and refined for modern iOS.

### iPad (Primary Experience)
```
┌──────────────────────────────────────────────────────────────┐
│  [Search]                                    [Favorites] [⚙]  │
├───────────────┬───────────────┬─────────────────────────────┤
│  BOOKS        │  CHAPTERS     │  CONTENT                     │
│               │               │                              │
│ ▶ Core Rules  │ ▶ Getting     │  # Fireball                  │
│ ▶ Adv. Player │   Started     │  School: Evocation           │
│ ▶ Ultimate    │ ▶ Races       │  Level: Sor/Wiz 3            │
│   Combat      │ ▶ Classes     │  Components: V, S, M         │
│ ▶ Ultimate    │ ▶ Skills      │  ...                         │
│   Magic       │ ▶ Feats       │  [Cross-refs]                │
│ ▶ Bestiary    │ ▶ Spells  ←── │  Wizard: see spell list      │
│   1-6         │ ▶ Equipment   │  Prerequisite for: [links]   │
│ ▶ ...         │ ▶ Combat      │                              │
│               │ ▶ Magic Items │                              │
└───────────────┴───────────────┴─────────────────────────────┘
```

- Columns 1-2 are persistent navigation context
- Column 3 is the content pane (scrollable, full detail)
- Breadcrumb trail always visible
- Tapping a cross-reference opens it in column 3 with back navigation

### iPhone (Adaptive)
- Same hierarchy, but single-column with `NavigationStack` push/pop
- Search available globally from any depth
- Swipe back restores context

---

## Navigation Tabs

Five persistent tabs (bottom on iPhone, sidebar on iPad):

| Tab | Label | Content |
|-----|-------|---------|
| 1 | **Browse** | Full book/chapter/entry hierarchy |
| 2 | **Search** | Global FTS with filters (type, book, level) |
| 3 | **Favorites** | Bookmarked entries, organized by folder |
| 4 | **GM Tools** | Quick-reference: conditions, encounter tables, initiative |
| 5 | **Settings** | Subscription, display, appearance |

---

## Content Gating

- **Free content:** clearly accessible, no badge
- **Premium content:** `🔒` lock badge on entry rows, tapping opens subscription paywall
- Subscription state managed by StoreKit 2, cached locally
- Paywall is non-modal sheet — user can dismiss and keep browsing free content

---

## Cross-Referencing

Every piece of content that references another entry is **tappable**:
- Feat prerequisites → feat entry
- Spell class level entries → class entry
- Monster spell list items → spell entry
- Item creator feat → feat entry
- Archetype altered abilities → base class ability entry

Cross-references are stored in the database as `[ContentType:EntryID]` tokens in the content body, resolved at render time.

---

## Success Metrics

| Metric | Target |
|--------|--------|
| App Store launch | PF1 within 8 weeks |
| Core Rulebook completeness | 100% entries indexed |
| Search performance | <200ms P95 |
| Cold launch | <2s |
| 30-day retention | 40%+ |
| Subscription conversion | 5-8% within 90 days |
| App Store rating | 4+ stars (first 30 days) |

---

## Constraints

1. **Content licensing** — All content from Archives of Nethys (OGL 1.0a). No proprietary Paizo art or trade dress.
2. **Storage** — App + bundled database ≤500MB installed
3. **No external services** — Zero network calls for core functionality; crash reporting only
4. **Privacy** — No user tracking, no analytics. Crash reporting opt-out available.
5. **Accessibility** — WCAG 2.1 AA minimum. VoiceOver, Dynamic Type, Reduce Motion.
6. **Dependencies** — No third-party SDKs. Pure Swift + SwiftUI + SQLite (system).

---

## Out of Scope (MVP)

- Character sheet / character builder
- Campaign management / session notes
- Multiplayer or VTT integration
- Homebrew content creation (Phase 3)
- Audio (text-to-speech of entries) — Phase 3

---

## Business Model

| Tier | Price | Content |
|------|-------|---------|
| Free | $0 | Core Rulebook for each game system |
| All Access | $2/month | All expansion books for all three apps |

- Single subscription covers PF1 + PF2 + SF1 (Family group: one product group)
- Annual option at $18/year (~25% savings)
- 7-day free trial
- Managed through App Store / StoreKit 2

**Pricing rationale:** $2/month = $24/year. A single Pathfinder expansion book costs $30-45 new. The entire PF1 library is 20+ books. Accessible price, recurring revenue, no per-book friction.

---

## Timeline

| Week | Milestone |
|------|-----------|
| 1 | PRD + FRD approval, design system (Lumen) |
| 2 | Architecture (Geordi), Xcode workspace restructure |
| 3 | Data extraction + PF1 database seeded |
| 4-5 | Core UI: columnar nav, search, detail views |
| 6 | Favorites, cross-references, StoreKit |
| 7 | iPad split view, iPhone optimization, accessibility |
| 8 | QA, TestFlight, App Store submission (PF1) |
| 9+ | PF2 and SF1 follow (data seeding, same UI) |

---

## Appendix A — PF1 Book List

**Free:**
- Core Rulebook

**Subscription:**
- Advanced Player's Guide
- Advanced Class Guide
- Advanced Race Guide
- Ultimate Combat
- Ultimate Magic
- Ultimate Equipment
- Ultimate Campaign
- Bestiary 1–6
- Game Mastery Guide
- Monster Codex
- Mythic Adventures
- NPC Codex
- Pathfinder Unchained
- Occult Adventures
- Technology Guide
- Inner Sea World Guide (if licensed)

---

## Appendix B — PF2 Book List

**Free:**
- Core Rulebook (Player Core + GM Core)

**Subscription:**
- Advanced Player's Guide
- Secrets of Magic
- Guns & Gears
- Book of the Dead
- Dark Archive
- Rage of Elements
- Monster Core
- Bestiary 1–3
- Treasure Vault

---

## Appendix C — SF1 Book List

**Free:**
- Core Rulebook

**Subscription:**
- Armory
- Alien Archive 1–4
- Character Operations Manual
- Near Space
- Galactic Magic
- Tech Revolution
- Interstellar Species

---

## Sign-Off

**Product Owner:** Ryan Heilo
**Version:** 2.0
**Updated:** 2026-04-01
**Status:** Awaiting PRD v2 approval
