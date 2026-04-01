# FRD-003 — Search & Detail Entry Views

**Functional Requirement Document**
**Project:** Lodestone PF1
**Status:** Draft — Awaiting approval
**Version:** 1.0

---

## Purpose

Define search behavior (query handling, ranking, presentation) and detail view rendering (spell cards, stat blocks, entry formatting).

---

## User Stories

1. **As a player, I want to search "fireball" and get instant results**
   - Acceptance: Type "fire" → see "Fireball" in top 3 results <200ms

2. **As a user, I want to search a partial spell name like "chain" and find "Chain Lightning"**
   - Acceptance: Search "chain" returns "Chain Lightning", "Shocking Grasp" (contains chain effect)

3. **As a DM, I want to search "giant spider" and see its AC, HP, and special abilities**
   - Acceptance: Tap creature → see formatted stat block with all stats

4. **As a player, I want to see every class that can cast a spell**
   - Acceptance: Fireball detail shows "Classes: Sorcerer (4), Wizard (4)"

5. **As a user, I want to know what feats this feat requires**
   - Acceptance: Feat detail shows "Requires: Weapon Focus (chosen weapon)" with link

---

## Functional Requirements

### FR-003-1: Search Algorithm

**Scope:** Full-text search across all content (spells, classes, creatures, feats, items, rules)

**Ranking factors (in priority order):**
1. **Exact name match** (highest)
2. **Name prefix match** ("fire" matches "Fireball")
3. **Full-text content match** (description, abilities, flavor text)
4. **Type relevance** (if searching in a specific tab, prioritize that type)
5. **Popularity / frequency** (can't implement initially; defer to Phase 2)

**Examples:**
- Search "fireball" → Spell "Fireball" (exact match, highest)
- Search "fire" → Spells starting with "fire" (Fireball, Fire Shield, Fire Storm), then spells with "fire" in description
- Search "resist" → Resistance (item type), Cloak of Resistance (item), Resist Energy (spell)

**Performance target:** Results return in <200ms for typical queries

---

### FR-003-2: Search UI

**Search bar:**
- Text input, placeholder: "Search spells, creatures, items..."
- Live results as user types (debounce to 200ms)
- Clear button (X) to reset
- Optional: voice search (iOS 16+ Speech API)

**Results presentation:**
- Max 20 results shown at once
- Grouped by type: Spells, Creatures, Items, Feats, Rules, Classes
- Each result shows: **Name | Type Icon | Category**
  ```
  ✨ Fireball (Spell) — Evocation, 3rd-level
  🐉 Giant Spider (Creature) — Animal, CR 1
  ⚔️ Longsword (Equipment) — Melee Weapon, Martial
  ```
- Tap result → navigate to detail view
- "Show all results" button at bottom (expand to full list)

**Search tips (inline help):**
- "💡 Try: 'fire damage', 'undead creatures', 'strength bonus'"

---

### FR-003-3: Detail View — Spell

**Layout (iPhone):**
```
┌──────────────────────────────┐
│ < Spells > Fireball     ❤️  │  ← Back, breadcrumb, favorite
├──────────────────────────────┤
│ FIREBALL                     │  ← Name, large
│ Evocation | Fire             │  ← School, descriptor (badges)
├──────────────────────────────┤
│ ⚙ LEVEL      CAN CAST       │  ← Sortable table
│ ├─ 3         Sorcerer (3)   │     Level 3 for Sorcerer
│ └─ 4         Wizard (4)     │     Level 4 for Wizard
├──────────────────────────────┤
│ 📋 SPELL DETAILS            │
│ Casting Time:  1 std action │
│ Range:         Long (400+..│
│ Area:          20-ft radius │
│ Duration:      Instantaneous│
│ Saving Throw:  Ref half     │
│ Spell Resist:  Yes          │
│ Components:    V, S, M (...)│
│ Material:      A tiny ball..│
├──────────────────────────────┤
│ DESCRIPTION                 │
│ A brilliant flash of light..│
│ ...full spell text...       │
│                             │
│ Creates a 20-ft-radius sph..│
│ ...continues...             │
├──────────────────────────────┤
│ 🔗 RELATED SPELLS           │
│ • Delayed Blast Fireball    │  ← Tappable links
│ • Chain Lightning           │
│ • Scorching Ray             │
├──────────────────────────────┤
│ 📚 SOURCE: Core Rulebook    │
│    Page 260                 │
└──────────────────────────────┘
```

**Spell detail fields:**
- Name (large, bold)
- School (e.g., "Evocation")
- Descriptor(s) (e.g., "Fire")
- Level table (by class)
- Casting time, range, area, duration
- Saving throw, spell resistance
- Components (V/S/M/F/DF)
- Material component description (if any)
- Full spell text (formatted markdown)
- Related spells (hyperlinked)
- Source book + page number

---

### FR-003-4: Detail View — Creature

**Layout (iPhone):**
```
┌──────────────────────────────┐
│ < Creatures > Giant Spider ❤️│
├──────────────────────────────┤
│ GIANT SPIDER                │
│ Large Animal, unaligned     │
├──────────────────────────────┤
│ STATS                       │
│ ├─ AC: 14 (natural armor)   │
│ ├─ HP: 26 (4d10 + 8)        │
│ ├─ Speed: 30 ft., climb 30  │
│ ├─ STR 12 (+1) | DEX 16...  │
│ ├─ CON 14 (+2) | INT 1...   │
│ └─ WIS 12 (+1) | CHA 2...   │
├──────────────────────────────┤
│ SKILLS                      │
│ ├─ Perception: +4           │
│ └─ Stealth: +5              │
├──────────────────────────────┤
│ ABILITIES                   │
│ ├─ Spider Climb             │  ← Special abilities
│ │  "climb difficult surfaces│
│ │   without ability check"  │
│ └─ Web (Recharge 5-6)       │
│    "ranged Weapon Attack..."│
├──────────────────────────────┤
│ ACTIONS                     │
│ ├─ Bite: +3 to hit, 1d8+1..│
│ └─ Web: +5 ranged, range..  │
├──────────────────────────────┤
│ DESCRIPTION                 │
│ Giant spiders are often fou..│
│ ...continues...             │
├──────────────────────────────┤
│ 📚 SOURCE: Core Rulebook    │
└──────────────────────────────┘
```

**Creature detail fields:**
- Name, size, type, alignment
- AC, HP (with hit dice formula)
- Speed (all movement types)
- Ability scores (with modifiers)
- Skills with bonuses
- Immunities, resistances, vulnerabilities
- Special abilities (formatted with descriptions)
- Actions / attacks (with damage formulas)
- Legendary actions (if applicable)
- Spells known (if spellcaster)
- Tactics/behavior (from description)
- Source book

---

### FR-003-5: Detail View — Feat

**Layout:**
```
┌──────────────────────────────┐
│ < Feats > Power Attack    ❤️│
├──────────────────────────────┤
│ POWER ATTACK                │
│ Combat Feat                 │
├──────────────────────────────┤
│ PREREQUISITES              │
│ ├─ Str 13                   │
│ ├─ BAB +1 or higher        │
├──────────────────────────────┤
│ BENEFIT                     │
│ When you use Power Attack..  │
│ Penalty applies to all...   │
├──────────────────────────────┤
│ SPECIAL                     │
│ If you are wielding a two..  │
├──────────────────────────────┤
│ 🔗 RELATED FEATS           │
│ ├─ Requires this:          │
│ │  Weapon Specialization   │  ← Feats that require this
│ ├─ Required by:            │
│ │  (none)                  │
│ └─ Similar:                │
│    Combat Expertise        │  ← Related feats
├──────────────────────────────┤
│ 📚 SOURCE: Core Rulebook    │
└──────────────────────────────┘
```

**Feat detail fields:**
- Name, type (Combat, Metamagic, etc.)
- Prerequisites (text + hyperlinks if they're feats)
- Benefit (formatted text)
- Special (if applicable)
- Related feats:
  - Feats that require this one
  - Feats this one requires
  - Similar/related feats

---

### FR-003-6: Detail View — Item

**Layout:**
```
┌──────────────────────────────┐
│ < Equipment > Longsword    ❤️│
├──────────────────────────────┤
│ LONGSWORD                   │
│ Melee Weapon, Martial       │
├──────────────────────────────┤
│ PROPERTIES                  │
│ ├─ Cost: 15 gp              │
│ ├─ Damage: 1d8 (1d10 two)   │
│ ├─ Weight: 4 lbs            │
│ ├─ Crit: 19-20/x2           │
│ ├─ Type: Slashing           │
├──────────────────────────────┤
│ DESCRIPTION                 │
│ This sword is the most...    │
│ ...full description...      │
├──────────────────────────────┤
│ 🔗 CREATURES KNOWN TO USE   │
│ ├─ Human Fighter            │
│ ├─ Half-Elf Paladin         │
│ └─ Guard (NPC)              │
├──────────────────────────────┤
│ 📚 SOURCE: Core Rulebook    │
└──────────────────────────────┘
```

**Item detail fields:**
- Name, type (armor/weapon/wand/ring/potion/etc.)
- Cost, weight, properties (magical, special material, etc.)
- If weapon: damage, crit range, type (slashing/piercing/bludgeoning)
- If armor: AC bonus, type (light/medium/heavy)
- Full description
- Creatures that use/wear this item (if known)
- Source book

---

### FR-003-7: Hyperlink Handling

**Every cross-reference is tappable:**
- Spell that lists "Prerequisite: Improved Unarmed Strike" → tap feat → detail view
- Creature that lists "spells: Fireball, Magic Missile" → tap spell → detail view
- Feat that lists "Requires: Weapon Focus (chosen)" → tap feat → detail view
- Item used by creatures → tap creature → detail view

**Hyperlink styling:**
- Blue text (light mode), cyan (dark mode)
- Underline (optional for clarity)
- Tap → navigate, don't open in browser

**Broken link handling:**
- If target entry doesn't exist → show alert "Referenced entry not found"
- Log to crash reporting (Phase 2)

---

### FR-003-8: Text Formatting

All detail text uses **Markdown rendering**:
- `**bold**` → bold text
- `*italic*` → italic
- Headers (`# Title`) → larger text
- Lists (`- item`) → bulleted lists
- Code blocks (`` ` code ` ``) → monospaced (for spells like "1d8+modifier")

**Markdown library:** Use SwiftUI's built-in markdown support or lightweight library (e.g., `MarkdownUI`)

---

## UI Inventory

**Screens:**
- `SearchViewController` (or overlay) — search bar, results list
- `SpellDetailViewController` — full spell entry
- `CreatureDetailViewController` — stat block
- `FeatDetailViewController` — feat with prerequisites
- `ItemDetailViewController` — equipment/magic item
- `RuleDetailViewController` — rule/ability text

**Elements (Reusable):**
- `SearchResultsCell` — row template for search results
- `BadgeView` — school, descriptor, type badges
- `StatBlockView` — creatures' stat blocks
- `DetailHeaderView` — name, type, favorite button
- `HyperlinkLabel` — text with tappable links
- `SourceFooter` — book + page number

---

## Data Requirements

From **FRD-001**, all entries must be stored with:
- Structured data (JSON) for easy rendering
- Full-text indexed descriptions
- Cross-references (IDs of related entries)

---

## Business Rules

1. **Subscription gating at detail level** — If user sees detail view for expansions content they don't have, show "Unlock with subscription" banner at top
2. **Favorites respect content** — If user favorites expansion content but subscription lapses, entry marked "locked"

---

## Error States

| Error | Handling |
|-------|----------|
| Empty search | "No results. Try a different search term." |
| Search timeout | "Search took too long. Try narrowing your query." |
| Missing detail data | "Entry is incomplete. Please report." + "Report" button |
| Broken hyperlink | "Referenced entry not found. Please report." |

---

## Acceptance Criteria

1. **Search returns results in <200ms** — Typical queries
2. **Search results ranked correctly** — Exact matches first, partial matches second
3. **All spell details render correctly** — Level table, casting time, components, description
4. **All creature stat blocks render correctly** — Abilities, skills, actions
5. **All feats show prerequisites + dependents** — Links are tappable
6. **All items show creatures that use them** — If applicable
7. **Hyperlinks are tappable** — Tap → navigate to target entry
8. **Text formatting renders** — Bold, italic, lists, code blocks
9. **Markdown renders without errors** — No raw markdown visible in UI
10. **Subscription gating works** — Locked content shows unlock banner

---

## Out of Scope

- Spell comparisons (side-by-side)
- Advanced filtering (spell search by "targets: single creature only")
- User notes/annotations (Phase 2)
- Sharing spell cards / stat blocks

---

## Dependencies

- **FRD-001** (Core Data Model) — All data must be structured for rendering
- **FRD-002** (Navigation) — Detail views are the terminal navigation destination

---

## Notes

Detail views are where **utility happens**. A player looking up Fireball needs instant access to:
1. What level is it for my class?
2. What's the damage, range, save?
3. What's similar? (Other evocation spells, other 3rd-level spells)

All of this must be visible without scrolling on an iPhone (or one scroll on small screens).

**Key design principles:**
- **Progressive disclosure** — Spell details first, flavor text below the fold
- **Readable typography** — Large body text (16-18pt), good line spacing
- **Tappable links** — Players move between entries fluidly, not through search
- **Visual hierarchy** — Headers, badges, stats stand out; flavor text fades to background

---

## Sign-Off

**Status:** Draft — awaiting approval
**Created:** 2026-03-31
**Author:** Friday
