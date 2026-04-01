# Lodestone Setup & Next Steps

## What's Done

✅ **PRD** (Product Requirements Document)
- 3-app product suite (PF1, PF2, SF1)
- Freemium monetization (\$2/mo subscription)
- Feature set, success metrics, dependencies

✅ **Research** (Archives of Nethys Analysis)
- Content organization: Classes, Races, Spells, Monsters, Feats, Items, Rules
- Cross-linking strategy
- Data structure (JSON-ready)

✅ **FRDs** (Functional Requirements Documents)
1. **Search & Browse System** — FTS5 database, instant search, cross-linking
2. **Monetization** — StoreKit2, content gating, subscription flow
3. **UI/UX Architecture** — Tab navigation, responsive design (iPhone + iPad), accessibility

✅ **Tickets** (18 detailed tasks)
- Phase 1: Data extraction, database, Core Data models (90h)
- Phase 2: Search & browse UI, detail views (145h)
- Phase 3: Monetization, subscription, gating (65h)
- Phase 4: Responsive layout, dark mode, accessibility (95h)
- Phase 5: Tests, performance, App Store prep (85h)
- **Total: 480 hours (~8 weeks, 6 sprints)**

## Ready For

**Ryan approval of:**
1. Feature set & UX flow (browse, search, favorites, GM Screen)
2. Monetization model ($2/mo, free core + paid expansions)
3. Target platforms (iOS 15+, iPadOS 15+)
4. Launch timeline (Q2 2026)

**Then:**
1. Archives of Nethys licensing confirmation (TASK-001 blocker)
2. Begin Phase 1: Data extraction (Scotty)

## Files in This Folder

```
Lodestone/
├── README.md              # Project overview
├── PRD.md                 # Product Requirements Document
├── RESEARCH.md            # Archives of Nethys structure analysis
├── FRD-SEARCH-AND-BROWSE.md # Search engine & indexing spec
├── FRD-MONETIZATION.md    # In-app purchase & content gating spec
├── FRD-UI-ARCHITECTURE.md # Navigation, responsive design, accessibility
├── TICKETS.md             # 18 detailed tasks (phases 1-5)
├── SETUP.md               # This file
└── .ticketmaster.yaml     # Ticketmaster configuration (awaiting project creation)
```

## To Proceed

1. **Ryan:** Review PRD + FRDs (1-2h reading)
2. **Ryan:** Approve feature set, monetization, platforms
3. **Operations:** Register "Lodestone" project in Ticketmaster
4. **Operations:** Load .ticketmaster.yaml to populate tasks
5. **Scotty:** Start TASK-001 (Data extraction)

## Notes

- **Licensing:** Archives of Nethys content is fan-curated, not officially licensed. TASK-001 must verify fair-use or direct licensing before proceeding.
- **Material Reuse:** Once UI/UX is built for PF1, PF2 and SF1 are material swaps (same codebase, different data).
- **Performance Target:** Sub-100ms search across 5000+ entries. Offline-first (no network dependency).
- **Timeline:** 8 weeks to App Store submission (aggressive but achievable).

## Questions Before Approval?

- Monetization: Is \$2/mo right? (Can adjust to \$0.99, \$4.99, etc.)
- Scope: Core rulebook only for V1? (Can add expansions in V2)
- GM Tools: Is XP calculator useful? (Can move to V2 if scope risk)
- Timeline: Can we compress to 6 weeks? (Possible with 2 parallel tracks)

**Ready when you are, boss.**

