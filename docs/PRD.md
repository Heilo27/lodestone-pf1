# Lodestone PF1 — Product Requirements Document

**Version:** 1.0
**Project:** Lodestone Pathfinder 1E Reference
**Platform:** iOS / iPadOS
**Status:** Phase 4 (PRD Draft)

---

## Problem Statement

Pathfinder 1E players and Game Masters need quick access to comprehensive game rules, character options, spells, items, and monsters while gaming. Current reference apps are either outdated, fragmented across multiple sources, or lack deep cross-referencing. Players must alt-tab between web browsers or juggle multiple books. Game Masters face the same friction.

**Target pain point:** Looking up a spell while mid-session should take 3 seconds, not 30 seconds across multiple apps or websites.

---

## Solution Overview

**Lodestone** is a beautiful, modern iOS/iPadOS reference app that puts the entire Pathfinder 1E game system in your pocket. The core manual (Pathfinder RPG Core Rulebook) is included free. Expansions and accessory manuals (Advanced Player's Guide, Ultimate Combat, etc.) unlock via optional $2/month subscription.

Every element is **hyperlinked and cross-referenced**: a spell shows which classes can cast it, feats link to abilities that require them, items link to creatures that use them. Navigation is intuitive — organize by book, browse by category, or search.

---

## Target Users

1. **Players** — Character creation, spell lookup, feat/trait validation, equipment reference (free + paid)
2. **Game Masters** — NPC reference, monster stats, treasure tables, encounter building (free + paid)
3. **Casual Pathfinder fans** — Rules lookups, character optimization research (free)

---

## Platform & Distribution

- **iOS 15.0+** (primary), **iPadOS 15.0+** (optimized for tablets)
- **Distribution:** App Store
- **Target devices:** iPhone (all sizes), iPad (all sizes including iPad Pro)
- **Orientation:** Portrait primary; landscape supported on iPad

---

## Core Features (MVP)

### Phase 1 — Core Reference (Free)
- **Core Rulebook content** — Classes, races, feats, traits, spells, items, rules
- **Navigation structure** — Hierarchical menus by book/chapter
- **Search** — Full-text search across all content
- **Hyperlinks** — Cross-references between related entries (spell ↔ class, feat ↔ ability)
- **Favorites** — Mark entries for quick access
- **Dark mode** — System-aware dark/light switching
- **iPad optimization** — Multi-column layout, split view on larger screens

### Phase 2 — Expansions (Paid Subscription)
- **Advanced Player's Guide** — Additional classes, archetypes, spells, feats
- **Ultimate Combat** — Combat maneuvers, fighter abilities, siege weapons
- **Ultimate Magic** — Spellcraft rules, new spells, magic items
- **Bestiary + Bestiaries 2-6** — Monsters and NPCs
- **Other official supplements** — As they're licensed

### Phase 3 — Polish (Post-Launch)
- **Offline mode** — Full app works without internet after first launch
- **Homebrew support** — Users can add custom spells, items, creatures (local only)
- **Character sheet integration** — Link to character creation apps (if licensing permits)
- **Print-to-PDF** — Export stat blocks, spell lists for offline reference

---

## Out of Scope (MVP)

- **Character creation tools** — Deferred to dedicated character sheet apps
- **Campaign management** — Not a DM utility suite
- **Multiplayer/online play** — Single-user reference only
- **Interactive spell simulator** — Lookup only
- **Audio/VTT integration** — Not a VTT

---

## Success Metrics

- **Launch:** Live on App Store within 8 weeks
- **Content completeness:** 100% of Core Rulebook + first 2 expansions indexed and hyperlinked
- **Search performance:** Results return in <200ms
- **User retention:** 40% 30-day retention (standard for niche reference apps)
- **Subscription conversion:** 5-8% of free users to paid subscription within first 3 months

---

## Constraints

1. **Content licensing** — All content sourced from Archives of Nethys (fan-maintained, openly available under OGL 1.0a)
2. **Storage:** Compressed content database <500MB (fits iOS install)
3. **Performance:** Search results <200ms, navigation transitions <100ms
4. **Accessibility:** WCAG 2.1 AA minimum — VoiceOver support, Dynamic Type
5. **Privacy:** No user tracking, no analytics beyond crash reports

---

## Dependencies

- **Archives of Nethys** — Canonical source for Pathfinder 1E content (web scraping and data extraction)
- **Swift + SwiftUI** — Native iOS development
- **SQLite** — Local data storage
- **No third-party SDKs** — Minimal dependencies per Ryan's Buy Once Own Forever philosophy

---

## Timeline (High Level)

- **Week 1-2:** Market research, IA design, design system
- **Week 3-4:** Data extraction + database schema
- **Week 5-7:** Core feature implementation + testing
- **Week 8:** TestFlight + App Store submission
- **Week 9:** Launch + monitoring

---

## Business Model

- **Free tier:** Core Rulebook (permanent)
- **Paid subscription:** $2.99/month (Apple pricing tier)
  - All expansions and accessories
  - Auto-renewal, cancellable anytime
  - Free 7-day trial

**Pricing rationale:** $2.99/month = ~$36/year, competitive with single supplement book ($25-35), much cheaper than buying all 6 bestiaries ($150+).

---

## Appendix A — Core Rulebook Sections (Free)

1. Introduction
2. Character Creation (races, classes, attributes)
3. Skills
4. Feats
5. Equipment
6. Special Abilities
7. Spells (A-Z by class)
8. Magic Items
9. Combat
10. Conditions
11. Environmental Rules
12. The Game Master
13. Monsters (monsters and NPCs)

---

## Appendix B — Expansion Content (Paid Subscription)

1. Advanced Player's Guide
2. Ultimate Combat
3. Ultimate Magic
4. Core Bestiary + Bestiaries 2-6
5. Inner Sea World Guide
6. GameMastery Guide
7. Ultimate Equipment
8. Mythic Adventures
9. Other supplements (as licensed)

---

## Sign-Off

**Product Owner:** Ryan Heilo
**Created:** 2026-03-31
**Status:** Awaiting PRD approval
