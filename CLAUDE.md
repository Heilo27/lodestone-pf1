# Lodestone PF1 — Project Configuration

**Project:** Lodestone Reference Suite — PF1 / PF2 / SF1
**Platform:** iOS / iPadOS
**Status:** Phase 4 (PRD v2 + FRDs Draft — awaiting approval)

---

## Project Identity

**Name:** Lodestone (PF1, PF2, SF1 — three separate App Store apps, shared codebase)
**Tagline:** The complete tabletop RPG reference in your pocket
**Target Users:** Players, Game Masters, Pathfinder enthusiasts
**Distribution:** App Store (iOS 15.0+)

---

## Key Decisions

- **Native iOS/SwiftUI** — Apple-first, minimal dependencies
- **Local-first data** — All content bundled; no server dependency
- **Freemium model** — Core Rulebook free, expansions $2.99/month
- **Single subscription** — One purchase unlocks all three apps (PF1, PF2, SF1)
- **OGL sourced** — Content from Archives of Nethys (fan-maintained, openly licensed)

---

## Documentation

- **PRD:** `docs/PRD.md` — Product overview, business model, success metrics
- **FRDs:** `docs/frd/FRD-*.md` — Functional specs for each major feature area
  - FRD-001: Core Data Model & Database
  - FRD-002: Navigation & Content Browsing
  - FRD-003: Search & Detail Views
  - FRD-004: Favorites & Subscriptions
  - FRD-005: Accessibility & Performance

- **Research:** `docs/research/` — Competitive analysis, data sources

---

## Next Steps

1. **PRD Approval** — Ryan reviews and approves PRD
2. **FRD Approval** — Ryan reviews and approves all FRDs
3. **Ticket Decomposition** — Spock (planner) breaks FRDs into Ticketmaster tickets
4. **Design Phase** — Lumen creates IA, design system, mockups
5. **Architecture Phase** — Geordi designs app architecture
6. **Implementation** — Per-FRD development (Scotty), testing (Worf), QA (manual)

---

## Constraints

- **Budget:** No external services, libraries, or paid tools
- **Timeline:** 8 weeks to App Store launch
- **Content:** OGL-licensed only; no proprietary Paizo content
- **Privacy:** No user tracking, analytics, or data collection
- **Storage:** App + content <500MB installed size

---

## Ticketmaster

**Project ID:** `lodestone` (pending registration)

**Epics (planned):**
- Core Data & Infrastructure
- Navigation & UI
- Search & Detail Views
- Favorites & Subscriptions
- Testing & QA
- Launch & Monitoring

---

## Team Assignments

- **Architect (Geordi):** System design, data model review
- **Designer (Lumen):** IA, design system, mockups
- **Implementer (Scotty):** Swift/SwiftUI development
- **QA (Worf):** Automated tests, manual QA
- **Accessibility (Vernier):** WCAG compliance, VoiceOver testing
- **Ops (O'Brien):** TestFlight, App Store submission
- **App Store (Quark):** Metadata, screenshots, ASO

---

## Standing Authorization

- **Scotty** can commit directly to feature/* branches
- **Worf** owns test branch, can merge when CI passes
- **All agents** update their LEARNINGS.md files after each phase
- **Friday** merges to main only after Phase 9F (final regression) passes

---

## Success Criteria

1. App live on App Store
2. Core Rulebook fully indexed and searchable
3. 1+ expansion content gated behind subscription
4. All user stories in each FRD passing
5. WCAG 2.1 AA accessibility audit passed
6. Cold launch <2s, scroll 60 FPS, search <200ms
7. 4+ stars on App Store (first 30 days)

---

## Communication

- **Daily:** Friday heartbeat checks
- **Milestones:** Phase approvals via Telegram
- **Code review:** Pull requests reviewed per FRD before merge
- **Blocking issues:** Surface immediately to Ryan

---

## Resources

- **Data source:** Archives of Nethys (www.aonprd.com) + d20PFSRD
- **Design reference:** Apple HIG, current RPG apps (D&D Beyond, PrismScroll)
- **Project reference:** ~/Documents/docs/playbooks/NEW-PROJECT-KICKOFF.md

---

**Owner:** Ryan Heilo
**Created:** 2026-03-31
**Last updated:** 2026-03-31
