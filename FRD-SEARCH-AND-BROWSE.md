# FRD: Search & Browse System

**Feature:** Instant search + browsable hierarchy across all content  
**Priority:** P0 (core to product)  
**Owner:** TBD  
**Acceptance Criteria:** See section 5

---

## 1. Overview

Users need to find any rule, spell, monster, etc. instantly. Two paths:
1. **Search** — Type keyword, get results in <100ms
2. **Browse** — Navigate class → features → abilities → cross-links

---

## 2. Scope

### In Scope
- Full-text search (spell name, description, rules)
- Faceted filters (type, level, source)
- Recent searches
- Favorites/bookmarks (saved for later)
- Cross-link navigation (tapping references jumps to target)
- Breadcrumb trail (where am I?)

### Out of Scope (V1)
- Advanced filters (e.g., "spells that heal")
- Search suggestions / autocomplete
- Saved search queries
- Search history sync across devices

---

## 3. Data Structure

### Search Index

**Fields indexed:**
- Name (exact + fuzzy)
- Full text (description, rules)
- Type (spell, class, monster, feat, item)
- Level (1-9 for spells, CR for monsters)
- Source (book abbreviation, e.g., "CRB", "APG")
- Keywords (extracted from text, e.g., "fire", "healing")

**Backend:** SQLite FTS5
- ~200 MB database (all content indexed)
- Stored in app bundle (core) + downloaded (premium)

### Content Hierarchy

```
Root
├── Classes
│   ├── Barbarian
│   │   ├── Features (level-based)
│   │   ├── Abilities
│   │   └── Spell List (if applicable)
│   └── ...
├── Races
│   ├── Human
│   │   ├── Racial Traits
│   │   └── Racial Variants
│   └── ...
├── Spells
│   ├── Abjuration
│   │   ├── Level 1
│   │   └── Level 2+
│   └── ...
├── Monsters
│   ├── By CR (0–25)
│   └── By Type (humanoid, creature, etc.)
├── Feats
│   ├── Combat
│   ├── General
│   └── Teamwork
├── Items
│   ├── Weapons
│   ├── Armor
│   └── Wondrous Items
└── GM Tools
    ├── Conditions
    ├── Combat Rules
    └── Encounter Tables
```

---

## 4. User Flows

### 4.1 Search

**Input:**
- User enters query (e.g., "fireball")

**Processing:**
1. Query parsed (fuzzy matching enabled)
2. SQLite FTS search executed (~50ms)
3. Results filtered by content tier (free vs. premium)
4. Results grouped by type (Classes | Spells | Monsters | Feats | Items)

**Output:**
- Results list with:
  - Title
  - Type icon (spell, class, monster, etc.)
  - Source (e.g., "Core Rulebook")
  - Brief excerpt (matching text highlighted)
  - Tap to view full entry

### 4.2 Browse (Class Detail)

**Entry point:** User taps "Classes" → selects "Wizard"

**Display:**
1. Class summary (short description, hit die, BAB progression)
2. Class features table (level 1–20, features gained)
3. Ability modifiers (affects skill checks, spells)
4. Spell progression table (spells per day by level)
5. Spell list (sorted by level, filterable)

**Interactions:**
- Tap spell name → jump to spell detail view
- Tap ability name → jump to ability definition
- Link to related feats ("Feats for Wizards")
- Link to prestige classes this leads to

### 4.3 Cross-Linking Navigation

**Example flow:**
1. User viewing "Fireball" spell
2. See text "This is a fire spell"
3. Tap "fire" → filtered spell list (all fire spells)
4. Tap "Evocation school" → all evocation spells
5. Tap "Wizard" → return to wizard class

**Visual feedback:**
- Links styled distinctly (color, underline)
- Breadcrumb shows: Spells > Evocation > Fireball
- Back button (or swipe) returns to previous screen

---

## 5. Acceptance Criteria

**AC 1: Search Performance**
- Any query returns results within 100ms
- Sub-500ms for complex filters
- No network calls (local index only)

**AC 2: Search Accuracy**
- Exact name matches appear first
- Fuzzy matching catches typos ("firebll" → "fireball")
- Results filter correctly by tier (free users don't see premium content)

**AC 3: Browse Navigation**
- User can navigate from Class → Features → Spells without returning to home
- Breadcrumb always shows current location
- Tapping cross-links instantly loads target (no loading spinner)

**AC 4: Favorites**
- User can tap heart icon to save any entry
- Favorites persist across app launches
- Favorites tab shows saved items with search

**AC 5: Accessibility**
- Search field has clear label (VoiceOver)
- Results list is properly marked (role: list)
- Tappable links are sufficient size (min 44x44pt)
- High contrast between link text and background

**AC 6: Free/Premium Gating**
- Core rulebook visible to all free users
- Premium content behind subscription indicator
- Attempting to view premium entry shows upsell

---

## 6. Data Requirements

### For Launch

- **Classes:** 11 core + descriptions + features + spell lists
- **Spells:** 500+ core spells with descriptions, prerequisites
- **Monsters:** Top 100 common monsters (CR 0–10)
- **Feats:** 300+ core feats with descriptions
- **Traits:** 500+ core traits with descriptions
- **Items:** 200+ common items (weapons, armor, gear)

### Data Format

Each entry (JSON):
```json
{
  "id": "spell_fireball",
  "type": "spell",
  "name": "Fireball",
  "description": "...",
  "level": 3,
  "school": "Evocation",
  "classes": ["Sorcerer", "Wizard"],
  "source": "CRB",
  "relatedLinks": ["Evocation spells", "Fire spells", "Level 3 spells"],
  "isPremium": false
}
```

---

## 7. Deliverables

- [ ] SQLite schema (Core.sqlite)
- [ ] Data import pipeline (Archives of Nethys → SQLite)
- [ ] Search UI (SwiftUI SearchField + results list)
- [ ] Detail view (scrollable content with links)
- [ ] Favorites storage (UserDefaults or Core Data)
- [ ] Tests: search accuracy, performance benchmarks
- [ ] Documentation: data schema, search algorithm tuning

---

## 8. Dependencies

- Data must be extracted from Archives of Nethys before search engine can be built
- Subscription system (FRD: Monetization) must be live to gate premium content

