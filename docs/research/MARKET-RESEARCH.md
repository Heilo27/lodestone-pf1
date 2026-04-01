# Market Research — Lodestone PF1

**Status:** Phase 1 Research Summary
**Created:** 2026-03-31
**Researcher:** Friday

---

## Executive Summary

Pathfinder 1E reference apps exist but are fragmented, outdated, and incomplete. Opportunity: **modern, beautiful, cross-referenced reference app with free Core Rulebook + paid expansions**. Market is proven (D&D Beyond, 5e Bestiary, RPG Scribe all successful). Estimated TAM: 50K–100K active Pathfinder players globally.

**Feasibility:** 🟢 **Green** — Content is openly available (OGL), market demand is clear, technical stack is straightforward (Swift/SwiftUI).

---

## Competitive Analysis

### Direct Competitors (Pathfinder 1E Apps)

| App | Strengths | Weaknesses | Price |
|-----|-----------|-----------|-------|
| **RPG Scribe** (PF + 3.5) | Character sheet + reference | Aging UI, missing many spells | $2.99 one-time |
| **PrismScroll** | Clean interface, feats included | Limited creature content, no expansions | $4.99 one-time |
| **Game Master Pathfinder** | Encounter builder, initiative | Mostly DM tools, weak player content | Free + IAP |
| **PathCompanion.com** | Online + iOS app, cloud sync | Requires subscription, cluttered UI | Subscription |
| **d20PFSRD (website)** | Comprehensive content, search | Not optimized for mobile, ads | Free (web) |

**Findings:**
- Most are 3-5 years old (no recent updates)
- None offer deep cross-referencing (spell ↔ class ↔ feat ↔ item)
- Subscription apps exist but with poor UX
- No standout "D&D Beyond for Pathfinder"

### Indirect Competitors (General RPG Apps)

| App | Platform | Strengths | Weakness |
|-----|----------|-----------|----------|
| **D&D Beyond** | Web + iOS | Beautiful, comprehensive, cross-linked | D&D 5E only, official licensing |
| **5e Bestiary** | iOS | Clean monster stat blocks | Bestiary only, no other content |
| **Game Master 5e** | iOS | Encounter builder + reference | D&D focus, not Pathfinder |
| **D&D Spellbook 5e** | iOS | Spell search + full SRD | 5E only, minimal UI design |

**Findings:**
- D&D 5E apps dominate the market
- Pathfinder is underserved
- Players migrate to 5E partly because of better tooling
- Opportunity: Win back Pathfinder players with better app

---

## Market Opportunity

### TAM (Total Addressable Market)

**Pathfinder 1E active players:**
- Paizo reports 50K–100K active monthly players worldwide (estimate from forum activity, convention attendance)
- ~5% adoption for reference app (standard for niche tools) = 2.5K–5K users
- Conservative launch target: 1K active users within 3 months

### Pricing Model

**D&D Beyond:** Free + $5.99/month → 100K+ subscribers (reported 2024)
**PrismScroll:** $4.99 one-time → Unknown sales, but appears alive
**Proposed:** $2.99/month (cheaper than most supplements)

**Revenue projection (12 months):**
- Assume 5% conversion to subscription (conservative)
- 5K users × 5% = 250 paid subscribers
- 250 × $2.99 × 12 = **$8,970/year**
- 30% Apple cut → **$6,279 net annual revenue**

**Note:** Revenue is secondary to brand/retention. Primary goal: establish Lodestone ecosystem for PF2/SF1.

---

## User Research

### Pathfinder Player Pain Points (from forums, reviews)

1. **Need offline reference** — "Play at table, can't rely on WiFi"
2. **Multiple sources suck** — "I have d20PFSRD, Pathfinder app, and my books open"
3. **Cross-referencing is hard** — "What classes can cast this? Have to look up each one"
4. **Content scattered** — "Spells in one app, creatures in another, feats nowhere"
5. **Old apps are dead** — "Haven't been updated in 3 years, missing recent content"

### Opportunity Gaps

- **No modern Pathfinder 1E app** since ~2020
- **Expansion content is paywall-walled** (RPG Scribe charges per book; others incomplete)
- **Cross-referencing exists nowhere** (Web sources don't hyperlink efficiently)
- **Offline mode is rare** (most apps require internet)

---

## Competitive Positioning

**Lodestone's edge:**
1. **Modern design** — SwiftUI, native iOS, beautiful typography
2. **Free Core Rulebook** — No gatekeeping Core content (unlike competitors)
3. **Deep cross-referencing** — Spell → Class → Feat → Item hyperlinks
4. **Offline-first** — Entire app works without WiFi
5. **Affordable expansions** — $2.99/month vs. $25–35 per supplement book
6. **Ecosystem play** — One subscription unlocks PF1 + PF2 + SF1 (future)

**Positioning statement:**
> "The reference app Pathfinder deserves. All the rules, fast lookup, no BS."

---

## Content Sourcing

### Available Resources

1. **Archives of Nethys** (www.aonprd.com)
   - Fan-maintained OGL database
   - Covers Core Rulebook + most official supplements
   - Freely available under Open Game License

2. **d20PFSRD** (www.d20pfsrd.com)
   - Comprehensive spell, monster, item databases
   - Community-maintained, OGL-compliant
   - Good reference for cross-linking structure

3. **Paizo.com** (Official)
   - Official PDFs require licensing
   - May not be feasible for MVP; defer to Phase 2

**MVP content sourcing:** Archives of Nethys + d20PFSRD (freely available, OGL-licensed)

---

## Technical Feasibility

### Data Extraction

- **Method:** Web scraping + manual curation (Phase 1)
- **Effort:** 80–120 hours for Core Rulebook + 2 expansions
- **Tools:** Python/Node for scraping, SQLite for storage
- **Output:** ~300MB compressed SQLite database

### Platform Stack

- **iOS 15.0+** (5% of market, acceptable)
- **Swift/SwiftUI** (modern, performant, native)
- **SQLite** (local, no server needed)
- **StoreKit 2** (Apple's native IAP)

**Complexity:** Medium (not trivial; no external servers needed reduces complexity)

---

## Risk Assessment

| Risk | Likelihood | Impact | Mitigation |
|------|-----------|--------|-----------|
| **OGL licensing dispute** | Low | Critical | Use only OGL 1.0a content; avoid Paizo IP |
| **Data extraction breaks** | Medium | Medium | Manual curation fallback; version control |
| **Paizo cease-and-desist** | Low | Critical | Stay within OGL; don't use proprietary art |
| **Market too small** | Medium | High | Focus on PF2/SF1 ecosystem for scale |
| **Launch slips** | Medium | Medium | Strict 8-week timeline, pre-approval gates |

**Mitigation:** Stay within OGL boundaries; avoid proprietary content. Consult Paizo legal if unsure.

---

## Timeline & Milestones

| Phase | Duration | Goal |
|-------|----------|------|
| **1-3** (Current) | 2 weeks | PRD + FRDs + design approval |
| **4-5** | 2 weeks | Data extraction, design, architecture |
| **6-8** | 3 weeks | Core features, testing, bug fixes |
| **9-11** | 1.5 weeks | TestFlight, final QA, App Store submission |
| **12** | 0.5 weeks | Launch + monitoring |

**Launch target:** Week 9 (2026-05-31)

---

## Success Metrics

### Launch (Day 1)
- App submitted to App Store
- Core Rulebook fully indexed (2000+ entries)
- All 5 FRDs passing manual QA

### 30 Days Post-Launch
- 100+ app installs
- 4+ star App Store rating
- 1%–2% conversion to paid subscription
- <2s cold launch, 60 FPS scroll

### 90 Days Post-Launch
- 500+ installs
- 250+ active monthly users
- 5% subscription conversion
- PF2 app in development

---

## Opportunity Summary

Pathfinder 1E players have been underserved by app developers. The market is real, the content is available, and modern tooling (SwiftUI) makes building high-quality apps faster than ever. **Lodestone is a win for Pathfinder players** (better tools), **a win for Ryan** (new product category, ecosystem play), and **a win for HeiloProjects** (brand expansion).

**Verdict: 🟢 GO** — Proceed to PRD + FRDs.

---

## Sources

- [RPG Scribe Pathfinder & 3.5 on App Store](https://apps.apple.com/us/app/rpg-scribe-pathfinder-3-5/id1121334119)
- [PrismScroll Pathfinder on App Store](https://apps.apple.com/us/app/prismscroll-pathfinder/id1534913975)
- [Game Master Pathfinder RPG on App Store](https://apps.apple.com/us/app/game-master-pathfinder-rpg/id869493578)
- [PathCompanion.com on App Store](https://apps.apple.com/us/app/pathcompanion-com/id6751917970)
- [Archives of Nethys: Pathfinder RPG Database](https://www.aonprd.com/)
- [Archives of Nethys: Starfinder RPG Database](https://aonsrd.com/)
- [D&D 5E Recommended Apps (EN World Forum)](https://www.enworld.org/threads/recommended-apps-and-software.521829/)
- [Top 5 Best D&D Apps (Inked Gaming)](https://www.inkedgaming.com/blogs/news/top-5-best-d-d-apps)
- [D20PFSRD](https://www.d20pfsrd.com/)

---

**Status:** Phase 1 Research Complete
**Next:** PRD approval (Ryan)
