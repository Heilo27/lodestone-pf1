# FRD-002 — Navigation & Content Browsing

**Functional Requirement Document**
**Project:** Lodestone PF1
**Status:** Draft — Awaiting approval
**Version:** 1.0

---

## Purpose

Define how users navigate and browse content. Navigation is the **primary entry point** for most players — searching for a specific spell is efficient, but browsing "all 3rd-level Wizard spells" should be equally fast and discoverable.

---

## User Stories

1. **As a player, I want to browse all spells by class**
   - Acceptance: Tap "Spells" → see list of classes → tap "Cleric" → see all cleric spells sorted by level

2. **As a DM, I want to find creatures by type (humanoid, undead, etc.)**
   - Acceptance: Tap "Creatures" → browse by type → see all humanoids sorted by CR

3. **As a user, I want to see all classes at a glance with short descriptions**
   - Acceptance: Tap "Classes" → see all classes with AC/HD/BAB icons/badges, tap to drill in

4. **As a user, I want a breadcrumb showing where I am**
   - Acceptance: Navigated 3 levels deep (Classes → Cleric → Class Features) — breadcrumb shows "Classes > Cleric > Features"

5. **As a user, I want to see recommended/popular entries on the home screen**
   - Acceptance: Home screen shows featured spells, recent searches, or trending entries

---

## Functional Requirements

### FR-002-1: Tab-Based Navigation (Root Level)

App has **5 main tabs** at the bottom:

| Tab | Icon | Content | Notes |
|-----|------|---------|-------|
| **Home** | 🏠 | Featured entries, recent searches, quick stats | First time launch experience |
| **Classes** | ⚔️ | Browse all classes by core/archetypes, drill into features/spells | Hierarchical |
| **Spells** | ✨ | Browse by class/level/school/descriptor, search | Hierarchical + faceted |
| **Reference** | 📖 | Creatures, items, feats, traits, rules by category | Multi-level browsing |
| **Favorites** | ❤️ | User's saved entries, searchable, with notes (Phase 2) | Personalization |

Each tab is a `UITabBarController` with independent navigation stacks.

---

### FR-002-2: Home Screen

**Purpose:** Onboard new users, show what's available, highlight powerful lookups.

**Layout:**
```
┌─────────────────────────────────┐
│  Lodestone    [Search icon]      │  ← Header with search affordance
├─────────────────────────────────┤
│ ⏱  Recent Searches              │
│ • Fireball (2 days ago)          │  ← Tappable history
│ • Giant Spider (1 week ago)      │
│                                  │
│ 💡 Quick Browse                  │
│ ┌──────────────┬──────────────┐  │
│ │ All Classes  │ All Races    │  │  ← Quick shortcut buttons
│ └──────────────┴──────────────┘  │
│ ┌──────────────┬──────────────┐  │
│ │ All Spells   │ All Creatures│  │
│ └──────────────┴──────────────┘  │
│                                  │
│ 📚 Featured This Week            │
│ • Spell: True Strike             │  ← Rotating featured entries
│ • Feat: Power Attack             │
│ • Item: Cloak of Resistance      │
│                                  │
│ ℹ️  Need help?                   │
│ "Tap any spell to see all classes│
│  that can cast it"               │  ← Inline onboarding
└─────────────────────────────────┘
```

---

### FR-002-3: Hierarchical Browsing (Classes Tab)

Navigation structure:

```
Classes (root)
├── Core Classes
│   ├── Barbarian
│   │   ├── Class Overview
│   │   ├── Class Features (by level)
│   │   └── Spell List (if spellcaster)
│   ├── Bard
│   ├── Cleric
│   └── ... (all core classes)
├── Hybrid Classes
│   └── ... (5-6 hybrid classes)
└── Prestige Classes
    └── ... (30+ prestige classes)
```

**Each class detail screen shows:**
- Hit die, BAB, saving throws, skills per level (badges)
- Key abilities (Sneak Attack, Turn Undead, etc.)
- Class features table (level | feature | description)
- Spell list (if spellcaster) — sortable by level

---

### FR-002-4: Faceted Browsing (Spells Tab)

Spells are the most-searched content. Provide **multiple entry points**:

```
Spells (root)
├── By Class
│   ├── Cleric
│   │   ├── Level 0 (Cantrips)
│   │   ├── Level 1
│   │   └── ... (Levels 2-9)
│   ├── Wizard
│   └── ... (all spellcasters)
├── By School
│   ├── Abjuration
│   ├── Conjuration
│   ├── ... (all 8 schools)
├── By Descriptor
│   ├── Fire
│   ├── Cold
│   ├── Teleportation
│   └── ... (20+ descriptors)
├── All Spells (A-Z)
│   └── ... (1000+ entries, paginated, searchable)
```

**Each level/school/descriptor shows:**
- List of spells, sortable by (name | level | school | class)
- Tap to drill into spell detail

---

### FR-002-5: Multi-Category Browsing (Reference Tab)

Catch-all for non-spell content:

```
Reference (root)
├── Creatures
│   ├── By Type (Humanoid, Undead, Dragon, ...)
│   ├── By CR (1/8, 1/6, 1/4, ... 30)
│   ├── By Size (Fine, Tiny, Small, Medium, Large, ...)
│   └── All (A-Z)
├── Equipment
│   ├── Armor (Light, Medium, Heavy, Shields)
│   ├── Weapons (Simple, Martial, Exotic)
│   ├── Magic Items (Armor, Weapons, Rings, Rods, ...)
│   └── Goods & Services (Alchemical, Gear, Mounts, ...)
├── Feats
│   ├── Combat Feats
│   ├── Metamagic Feats
│   ├── Item Creation
│   ├── General Feats
│   └── All (A-Z)
├── Traits
│   ├── Campaign Traits
│   ├── Religion Traits
│   ├── Race Traits
│   └── All (A-Z)
├── Rules & Tables
│   ├── Combat
│   ├── Spellcasting
│   ├── Skills & Abilities
│   ├── Environmental
│   └── Special Rules
```

---

### FR-002-6: Breadcrumb Navigation

Every non-root screen shows a **breadcrumb trail** at the top:

```
Classes > Cleric > Class Features
```

Tap any breadcrumb segment to go back to that level (don't pop the stack, jump).

**Example flow:**
1. Home → Classes (tap "Classes" tab)
2. Classes → Cleric (tap Cleric cell)
3. Cleric → Features (tap "Features" button)
4. Breadcrumb shows: `Classes > Cleric > Features`
5. Tap "Cleric" in breadcrumb → back to Cleric detail (not home)

---

### FR-002-7: Search Integration (Every Screen)

Every tab has a **search bar at the top** that:
- Searches **only within that tab's category** (search in "Spells" tab searches only spells)
- Shows live results as you type (max 20 results, alphabetical + relevance)
- Has a "Search All" option at the bottom (searches all content)
- Tapping a result navigates to that entry's detail view

**Search scope examples:**
- In "Spells" tab: Search returns only spells
- In "Reference" tab: Search returns creatures, feats, items, traits, rules (all reference content)
- Tap "Search All" → full-app search across all categories

---

### FR-002-8: List Rendering & Performance

**Requirement:** Lists with 100+ items must be fast (no lag on scroll).

**Implementation:**
- Use `UITableViewController` with pagination (load 50 items, "load more" at bottom)
- OR use `SwiftUI` `List` with lazy loading
- Smooth scroll target: 60 fps, no stuttering

**Large list strategy:**
- "All Spells" list (1000+) — paginated in groups of 50
- "All Creatures" list (500+) — paginated in groups of 50
- User can search to narrow results instead of scrolling

---

### FR-002-9: iPad Optimization

**Landscape mode on iPad:**
- **Master/Detail split view** — browse on left, detail on right
- **Rotating portrait ↔ landscape** — navigation stack collapses/expands appropriately
- **Larger fonts on iPad** — readable without pinch-zoom

**Example:**
- Portrait: Full-width browsing (classes list takes whole screen)
- Landscape: Split view (class list on left [40% width], class detail on right [60% width])

---

### FR-002-10: Dark Mode Support

All browsing screens support **system dark mode**:
- iOS settings → Light/Dark/Auto
- Dark background + light text
- Contrasts remain ≥4.5:1 WCAG AA
- No hardcoded colors; use `UIColor` semantic colors or `Color` environment

---

## UI Inventory

**Navigation Controller Screens:**

| Screen | Controller | Purpose | Parent |
|--------|-----------|---------|--------|
| Home | `HomeViewController` | Featured entries, quick browse | Tab root |
| Classes List | `ClassesListViewController` | Browse core/hybrid/prestige classes | Classes tab |
| Class Detail | `ClassDetailViewController` | Class overview, features, spells | Classes List |
| Spells by Class | `SpellsByClassViewController` | Show spells for a specific class | Spells tab |
| Spells by Level | `SpellsByLevelViewController` | Show spells at a specific level | Spells by Class |
| Spell Detail | `SpellDetailViewController` | Full spell entry, hyperlinks | Spells by Level |
| Creatures List | `CreaturesListViewController` | Browse creatures by category | Reference tab |
| Creature Detail | `CreatureDetailViewController` | Stat block, abilities | Creatures List |
| Equipment List | `EquipmentListViewController` | Browse items by type | Reference tab |
| Item Detail | `ItemDetailViewController` | Full item description | Equipment List |
| Feats List | `FeatsListViewController` | Browse feats by category | Reference tab |
| Feat Detail | `FeatDetailViewController` | Feat with prerequisites/benefits | Feats List |
| Favorites List | `FavoritesViewController` | User's bookmarked entries | Favorites tab |
| Search Results | `SearchResultsViewController` | Search results across all categories | Modal/overlay |

**UI Elements (Reusable):**

| Element | Purpose | Used By |
|---------|---------|---------|
| `HyperlinkText` | Tappable cross-references | All detail screens |
| `BadgeView` | AC, HD, BAB display | Class/Creature detail |
| `BreadcrumbView` | Navigation trail | All detail screens |
| `SearchBar` | Search input | All tab roots |
| `FavoriteButton` | Add/remove favorite | All detail screens |
| `ListCell` | Row template for lists | All list screens |
| `SectionHeader` | Category header in lists | List screens with sections |

---

## Data Requirements

From **FRD-001**, all content must be:
- Indexed for fast lookup (by type, by category, by name)
- Linked (spell ↔ class, feat ↔ prerequisite, etc.)
- Searchable (full-text index)

---

## Business Rules

1. **Free users see all Core Rulebook content** — No gating
2. **Paid users see all Core + expansions** — Entire reference opens
3. **Navigation respects subscription status** — Show "Unlock Expansion" button if user taps content they don't have access to

---

## Error States

| Error | Handling |
|-------|----------|
| Empty search results | "No results. Try: broader search, 'Search All', or browse by category" |
| List fails to load | Show spinner, retry button, "Check internet connection?" |
| Tap broken hyperlink | Show alert "Referenced entry not found" + offer "Report issue" |
| iPad rotation mid-navigation | Preserve navigation stack, adapt layout |

---

## Acceptance Criteria

1. **All 5 tabs functional** — Navigate between tabs, each preserves state on back
2. **Classes tab complete** — Browse all classes, drill into features, see spell list if applicable
3. **Spells tab complete** — Browse by class/level/school, results load in <200ms
4. **Reference tab complete** — Browse creatures/items/feats/traits/rules
5. **Breadcrumbs work** — Tap any segment, navigate there (don't just pop)
6. **Search works globally** — Every tab has search, "Search All" works
7. **iPad split view works** — Landscape shows master/detail on iPad Air+
8. **Dark mode works** — Toggle system dark mode, app adapts
9. **List performance** — Scroll 1000-item list at 60 fps (no jank)
10. **Favorites persist** — Favorite an entry, close app, reopen, verify still marked

---

## Out of Scope

- User notes/annotations (Phase 2)
- Sharing entries via link
- Exporting browsing history
- Collaborative browsing (multiplayer)

---

## Dependencies

- **FRD-001** (Core Data Model) — Must exist; data structure drives all navigation
- **Search functionality** (will be FRD-003)

---

## Notes

This FRD defines the **user journey**. Every entry point (home, tabs, search, favorites) exists to minimize the time between "I need to look up Fireball" and "I'm reading the Fireball entry." Navigation must be intuitive and fast.

**Key design principles:**
- **Multiple entry points** — Players can browse OR search; don't force one pattern
- **Discoverable categories** — New users should see all available content at a glance
- **Fast navigation** — Transitions <100ms (no visible lag)
- **iPad parity** — Not just "iPhone app that works on iPad"; use iPad screen real estate

---

## Sign-Off

**Status:** Draft — awaiting approval
**Created:** 2026-03-31
**Author:** Friday
