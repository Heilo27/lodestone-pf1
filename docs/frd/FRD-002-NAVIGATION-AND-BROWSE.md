# FRD-002 — Navigation & Content Browsing

**Functional Requirement Document**
**Project:** Lodestone Suite (PF1 / PF2 / SF1)
**Status:** Draft — Awaiting approval
**Version:** 2.0
**Updated:** 2026-04-01

---

## Purpose

Define the behavioral requirements for navigation and content browsing across all three Lodestone apps. The specific visual navigation pattern (columnar, sidebar+stack, tab-based, etc.) is **deferred to the Design Phase** — Lumen will produce mockups and we'll choose based on usability. This FRD defines what navigation must accomplish; not how it looks.

---

## Design Principles

1. **Context preservation** — Users always know where they are in the content hierarchy.
2. **Two-path navigation** — Browsing for exploration and global search for direct lookup are both first-class.
3. **iPad-first, iPhone-complete** — Designed for use at the gaming table on a tablet. iPhone is a full-featured adaptive variant, not an afterthought.
4. **Tappable everything** — Any referenced rule, spell, feat, or item in a detail view is a live hyperlink.
5. **Modern native app** — No fake book UI, no page-flip animations, no paper textures. Feels like a great iOS app, not a digital book.

---

## User Stories

1. **As a player at the table**, I want to find a spell by browsing class → level without typing
2. **As a GM**, I want to browse all monsters in the Bestiary sorted by CR
3. **As a player**, I want to follow a feat's prerequisite chain without losing my place in the feat list
4. **As any user**, I want to get back to where I was with one or two taps
5. **As an iPad user**, I want to see navigation context and entry content simultaneously
6. **As an iPhone user**, I want the same content with a one-column-at-a-time flow

---

## Functional Requirements

### FR-002-1: Content Hierarchy

The content model has **four levels**. Navigation must expose all four:

```
Level 1: App / Game System (PF1 / PF2 / SF1)
Level 2: Book (Core Rulebook, Advanced Player's Guide, Bestiary...)
Level 3: Section / Chapter (Classes, Spells, Feats, Combat...)
Level 4: Entry (individual spell, feat, monster, rule section)
```

Users must be able to drill from Level 2 → 3 → 4 without losing orientation.

---

### FR-002-2: Primary Navigation Tabs

The app has **five root-level destinations** accessible from any depth:

| Tab | Content |
|-----|---------|
| **Browse** | Full book → chapter → entry hierarchy |
| **Search** | Global full-text search with filters |
| **Favorites** | Bookmarked entries |
| **GM Tools** | Quick-reference: conditions, tables, dice |
| **Settings** | Subscription, display preferences |

Switching tabs preserves each tab's navigation state (deep-linking within a tab is preserved).

---

### FR-002-3: Browse Tab Requirements

The Browse tab is the primary content exploration surface. It must:

- Show all books available for the active app (PF1/PF2/SF1)
- Indicate which books are free vs. subscription-required
- Allow drill-down from book → section → entry list → entry detail
- Show entry count per section (e.g., "Feats — 432 entries")
- Support alphabetical index (scrubber or A-Z jump) in long entry lists
- Provide a breadcrumb or back-navigation trail so users know their depth

**On iPad:** Navigation context (books, sections) should remain visible alongside the content pane — the specific approach (sidebar, column, etc.) is left to Lumen's design phase.

**On iPhone:** Single-column push/pop navigation. Same hierarchy, one level at a time.

---

### FR-002-4: Cross-Type Browsing (Quick Access)

In addition to book-centric browsing, users should be able to browse content **across all books by type**:

- All Classes (across Core + APG + ACG + etc.)
- All Spells (by class, by school, by level)
- All Feats (by type: Combat, Metamagic, General)
- All Monsters (by type, by CR)
- All Items (by category)

This is the "quick access" path — useful when you know the type but not which book.

---

### FR-002-5: Home / Landing Screen

When the app opens (or Browse tab is selected with nothing selected), a home screen shows:

- **Quick Access** — shortcuts to the most common content types (Classes, Spells, Feats, Items, Monsters, Rules)
- **Your Books** — all available books; free ones open directly, locked ones show subscription prompt
- **Recently Viewed** — last 10-20 entries, persisted locally across sessions

---

### FR-002-6: Entry Detail Navigation

From any entry detail view:

- All cross-reference links (prerequisite feats, caster classes, related spells) are **tappable**
- Tapping a link opens the linked entry
- Back button or swipe-back returns to the previous entry
- A user can follow a chain (Feat A → Feat B → Feat C) and retrace steps

---

### FR-002-7: Premium Content Gating in Navigation

Subscription-required content must be visible in the navigation tree with a clear locked indicator (lock icon, dimmed state, or badge). Tapping locked content opens a non-modal subscription prompt — the user can dismiss it and continue browsing free content. The navigation tree is never hidden; only the entry content is gated.

---

### FR-002-8: Search Integration

A search bar is accessible from **any depth** of the navigation hierarchy. Activating it does not reset the navigation stack — it overlays a search experience, and dismissing it returns to the previous state. Search is covered in detail in FRD-003.

---

## Navigation Pattern — Decision: Option D (Home + Search-First)

**Selected pattern:** Home screen with category tiles + global search as the primary interaction. Hierarchical browse is available but secondary.

**Rationale:** Most users at the table know what they're looking for (e.g., "Fireball", "Power Attack", "Troll"). Search-first gets them there in 1-2 taps. Browse hierarchy serves discovery and new users. This avoids the complexity of 3-column layout on iPhone while still being fast on iPad.

### Layout Specification

**Home Screen (Browse tab root):**
```
┌─────────────────────────────────┐
│  Lodestone: PF1    [Search bar]  │  ← always visible
├─────────────────────────────────┤
│  QUICK ACCESS                   │
│  ┌───────┐ ┌───────┐ ┌───────┐  │
│  │Classes│ │Spells │ │ Feats │  │
│  └───────┘ └───────┘ └───────┘  │
│  ┌───────┐ ┌───────┐ ┌───────┐  │
│  │ Items │ │Monster│ │ Rules │  │
│  └───────┘ └───────┘ └───────┘  │
├─────────────────────────────────┤
│  YOUR BOOKS                     │
│  Core Rulebook          free >  │
│  Advanced Player's Guide free > │
│  Ultimate Combat          🔒 >  │
│  ...                            │
├─────────────────────────────────┤
│  RECENTLY VIEWED                │
│  Fireball · Spell               │
│  Power Attack · Feat            │
│  Troll · Monster                │
└─────────────────────────────────┘
```

**From a category tile (e.g., Spells):**
- Shows all spells across all unlocked books
- Grouped by class (PF1) or tradition (PF2/SF1) with section headers
- Search bar filters within the list
- Tap an entry → full detail view

**From a book (e.g., Core Rulebook):**
- Shows chapter list for that book
- Tap chapter → entry list for that chapter
- Same entry list → detail view pattern

**iPad adaptation:**
- On iPad, the home/browse column stays visible as a sidebar (NavigationSplitView)
- Content pane shows the entry list or detail on the right
- No third column needed

**iPhone:**
- Standard NavigationStack push. Home → list → detail.
- Search bar always accessible from toolbar.

---

## Acceptance Criteria

1. Users can navigate from app launch to any entry in ≤4 taps
2. Browsing context (which book/section you're in) is visible from the entry detail view
3. Cross-reference links navigate to the linked entry; back navigation returns to origin
4. Premium content is identifiable in the browse hierarchy without entering it
5. Recently Viewed entries persist across app sessions
6. Quick Access shortcuts load all-books content lists for each content type
7. Navigation state is preserved when switching tabs and returning
8. Search bar is accessible from any navigation depth without stack reset
9. iPad shows navigation context and content simultaneously (implementation TBD)
10. iPhone NavigationStack supports full hierarchy with correct back behavior

---

## Out of Scope

- Custom book ordering by users
- Collapse/hide entire books from the browse tree
- "History" tab (Recently Viewed on home screen is sufficient)
- Animated page/book transitions

---

## Dependencies

- **FRD-001** — Book/chapter/entry hierarchy must be data-driven from the database
- **FRD-003** — Search bar integration at every navigation depth
- **FRD-004** — Lock badges on subscription-required content
- **Design Phase (Lumen)** — Visual navigation pattern decision

---

## Sign-Off

**Status:** Draft — awaiting design decision on navigation pattern, then final approval
**Created:** 2026-03-31
**Updated:** 2026-04-01
**Author:** Friday
