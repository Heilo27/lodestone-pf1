# Lodestone PF1 — Product Requirements Document

**Version:** 1.0  
**Status:** Approved for FRD phase  
**Platform:** iOS 15+ / iPadOS 15+  
**Target Release:** Q2 2026

---

## 1. Overview

**Lodestone PF1** is a comprehensive, beautifully designed reference library for Pathfinder 1E (PFRPG). It makes the entire ruleset instantly searchable, cross-linked, and offline-accessible on mobile devices.

**Target User:** Pathfinder 1E players, GMs, character builders at the table.

---

## 2. Core Thesis

Pathfinder 1E ruleset is massive and scattered across dozens of books. Players waste table time searching. Lodestone solves this:
- **Instant search** across 5000+ rules, spells, monsters, items
- **Deep cross-linking** (spell → class → feat → monster)
- **Offline-first** (works at the table without WiFi)
- **Free core rulebook + $2/mo for expansions** (freemium model)

Once the UI/UX is built for PF1, we replicate it for PF2 and Starfinder with minimal effort (material swap).

---

## 3. Feature Set

### 3.1 Free Tier (Core Rulebook)

**Core Character Creation:**
- 11 Core Classes (Barbarian, Bard, Cleric, Druid, Fighter, Monk, Paladin, Ranger, Rogue, Sorcerer, Wizard)
- 7 Core Races (Human, Dwarf, Elf, Gnome, Half-Elf, Half-Orc, Halfling)
- Core Traits (500+)
- Core Feats (300+)
- Core Spells (500+)

**Game Rules & Systems:**
- Core Rules (all base mechanics)
- Equipment (non-magical)
- Money, encumbrance, basic gear
- Combat rules

**Quick Reference:**
- GM Screen (simplified)
- Ability checks, saving throws, conditions
- Keyword search across all above

### 3.2 Premium Tier ($2/month subscription)

**Character Options:**
- All prestige classes
- Alternate class variants (Unchained, Occult Adventures, etc.)
- Advanced races and race variants
- All traits (5000+)
- All feats (2000+)
- Mythic rules & powers
- Magic items
- Artifacts
- Technology

**Game Systems:**
- Spells (all) — 2000+
- Monsters/Creatures — 4000+
- Deities & divine rules
- Hazards & traps
- Advanced rules (Sanity, Intrigue, etc.)
- Haunts and environmental effects

**Organizational Tools:**
- Full GM Screen with all mechanics
- Party tracker (level, HP, status)
- Spell cards (printable)
- Monster stat blocks (searchable, customizable)

---

## 4. Monetization

| Tier | Price | Content | Renewal |
|------|-------|---------|---------|
| **Free** | $0 | Core rulebook + classes + races | Perpetual |
| **Premium** | $2/mo | Full ruleset + all supplements | Auto-renew (cancelable) |

**Purchase Flow:**
1. App free download (core content auto-included)
2. "Unlock Premium" button in app
3. Apple In-App Purchase for \$2/mo subscription
4. Graceful degradation if subscription lapses (free content still accessible)

---

## 5. Technical Architecture

### 5.1 Data Model

**Source:** Archives of Nethys (aonprd.com)
- Structured as JSON/API-friendly hierarchy
- Each entity (class, spell, monster) is a document with metadata
- All cross-references are stored as IDs (later resolved to links)

**Storage:**
- Core rulebook: ~50 MB (bundled with app)
- Premium content: ~150 MB (downloaded on subscription, cached locally)
- Searchable index: SQLite FTS (SQLite Full-Text Search) for instant lookup

**Sync:**
- One-time download of content bundles
- Optional periodic updates (new errata from Archives of Nethys)
- All data offline after first sync

### 5.2 Search & Indexing

- Full-text search (SQLite FTS5) across all searchable fields
- Faceted filtering (by type: spell/class/monster/item, by level, by source)
- Recent searches
- Favorites/bookmarks

### 5.3 Cross-Linking

- Every reference in text is a hyperlink
- Examples:
  - Spell lists from classes (Wizard → Illusion spells)
  - Monster abilities link to spells/feats that duplicate them
  - Traits link to classes/archetypes that benefit from them
  - Items link to creation prerequisites
- Navigation breadcrumb (where you are in the hierarchy)

### 5.4 Platform Requirements

- iOS 15+ (iPhone SE → 14 Pro Max)
- iPadOS 15+ (iPad mini → iPad Pro)
- Universal app (optimized UI for both form factors)
- Portrait + landscape orientation support

---

## 6. User Flows

### 6.1 First Launch (Onboarding)

1. App opens → "Welcome to Lodestone PF1"
2. Show free content summary (classes, races, spells)
3. Offer "Explore Free Content" or "Learn More About Premium"
4. If "Explore" → dive into class browser
5. Premium upsell in sidebar (non-intrusive banner)

### 6.2 Search

1. User taps search icon
2. Enters query (e.g., "fireball", "cleric feats", "CR 5 monsters")
3. Results grouped by type (Classes | Spells | Monsters | Feats | Items)
4. Tap result → detail view with full text + cross-links

### 6.3 Character Building

1. Tap "Character Builder" (or similar)
2. Select class → see class details, features, spell list
3. Select race → see racial bonuses, traits
4. Browse available feats for their level
5. Spell selection (if caster) with descriptions
6. Save character (local, iCloud sync optional)

### 6.4 GM Reference

1. Tap "GM Screen"
2. Tabs: Combat | Conditions | Skills | Spells | Monsters
3. Quick-lookup: search monsters, pull stat blocks
4. Mark favorites for quick access at table

---

## 7. Design Philosophy

**Apple-First:**
- Native SwiftUI (iOS 15+ native controls)
- Uses system colors (light/dark mode automatic)
- Respects accessibility settings (Dynamic Type, VoiceOver)
- Minimal, clean typography (SF Pro Display + SF Mono)

**Performance:**
- Local-first (no network calls for content)
- Sub-100ms search results
- Smooth scrolling (60fps minimum)
- Low memory footprint (~100 MB active)

**Information Hierarchy:**
- Scannable structure (bold keywords, bullet lists)
- Progressive disclosure (summary first, expand for details)
- Visual distinction between system types (spells ≠ feats ≠ monsters)

---

## 8. Success Metrics

**Launch Goals (PF1):**
- 10K downloads in first 30 days
- 50% free-to-premium conversion within first week of use
- 90% offline functionality (no network dependency)
- Sub-500ms search on any query

**Long-Term (PF2 + Starfinder):**
- Three-app suite by Q4 2026
- Cross-app sharing (character data, reading lists)
- Community-curated content (user guides, homebrew integration)

---

## 9. Out of Scope (V1)

- Character sheet export (PDF, beyond-the-table)
- Real-time multiplayer/party features
- Homebrew content creation (user-generated)
- Campaign management / quest tracking
- Art asset licensing (text-only in V1)
- Print-to-PDF functionality (V2+)

---

## 10. Dependencies & Risks

| Item | Status | Mitigation |
|------|--------|-----------|
| Archives of Nethys licensing | TBD | Verify fair-use / direct licensing |
| iOS app review (In-App Purchase) | Expected | Standard Apple guidelines |
| Data extraction automation | Medium | Manual scraping + parsing if needed |
| Scope (5000+ entries) | High | Prioritize core rulebook only for V1 |

---

## Approval Checklist

- [ ] Ryan: Feature set & monetization approved
- [ ] Ryan: Data source & licensing approach approved
- [ ] Ryan: Target platforms (iOS 15+) approved

**Ready for:** FRD phase (once approved above)

