# FRD-001 — Core Data Model & Database Schema

**Functional Requirement Document**
**Project:** Lodestone Suite (PF1 / PF2 / SF1)
**Status:** Draft — Awaiting approval
**Version:** 2.0
**Updated:** 2026-04-01

---

## Purpose

Define the data model, database schema, and relationships that underpin all content in the Lodestone suite. This FRD applies to all three apps (PF1, PF2, SF1) — each app has its own SQLite database but uses the **same schema**. The shared `LodestoneCore` Swift package provides all data access code; app targets inject their specific database file at launch.

**Database per app:**
- `LodestoneApp-PF1` → `pf1-content.sqlite`
- `LodestoneApp-PF2` → `pf2-content.sqlite`
- `LodestoneApp-SF1` → `sf1-content.sqlite`

All three files share identical table structure. Content and cross-reference data differ.

---

## User Stories

1. **As a player**, I want to search for a spell by name and see which classes can cast it
   - Acceptance: Spell entry shows `casters: [Cleric, Wizard, ...]`

2. **As a DM**, I want to look up a monster and see what spells it casts
   - Acceptance: Creature entry shows `spellsKnown: [...]`, each is a tappable link to the spell entry

3. **As a user**, I want to see all feats that require "Weapon Focus"
   - Acceptance: Feat entry for "Weapon Focus" links to `dependentFeats: [Greater Weapon Focus, ...]`

4. **As a user**, I want to find all items in a category (e.g., "Light Armor")
   - Acceptance: Browse/search by armor type returns all matching items sorted by name/cost

---

## Functional Requirements

### FR-001-1: Content Entities
Define the primary entity types in the database:

**Classes:**
- `id` (UUID)
- `name` (String, unique)
- `book` (String: "Core", "APG", etc.)
- `hd` (Int: 6, 8, 10, 12)
- `description` (Markdown)
- `bab` (String: "High", "Medium", "Low")
- `savingThrows` (Array: "Fort", "Ref", "Will")
- `skillsPerLevel` (Int)
- `classFeatures` (Array of ClassFeature refs)
- `spellcasting` (Boolean)
- `spellList` (Array of Spell IDs if spellcaster)

**Races:**
- `id` (UUID)
- `name` (String, unique)
- `book` (String)
- `description` (Markdown)
- `abilityAdjustments` (Dict: { Str: +2, Dex: -2, ... })
- `speed` (Int: 30, 60, etc.)
- `languages` (Array)
- `racialTraits` (Array of Trait IDs)
- `favoredClass` (Array: class names that get +1 HP/level when favored)

**Spells:**
- `id` (UUID)
- `name` (String, unique)
- `book` (String)
- `level` (Dict: { Cleric: 1, Wizard: 1, Sorcerer: 1 })
- `school` (String: "Abjuration", "Conjuration", etc.)
- `descriptor` (Array: "Fire", "Cold", "Teleportation", etc.)
- `castingTime` (String: "1 standard action", "1 minute", etc.)
- `range` (String: "Touch", "30 ft.", "Personal", etc.)
- `effect` (String: target description)
- `duration` (String)
- `savingThrow` (String or null)
- `spellResistance` (Boolean)
- `components` (Array: "V", "S", "M", "F", "DF")
- `materialComponent` (String or null)
- `description` (Markdown)
- `relatedSpells` (Array of Spell IDs: similar/prerequisite spells)
- `usedInClasses` (Array of Class IDs)

**Feats:**
- `id` (UUID)
- `name` (String, unique)
- `book` (String)
- `type` (String: "Combat", "Metamagic", "Item Creation", "General")
- `description` (Markdown)
- `prerequisitesText` (String: "Weapon Focus with chosen weapon")
- `prerequisites` (Array of Feat IDs: explicit prerequisites)
- `benefit` (Markdown)
- `special` (Markdown or null)
- `relatedFeats` (Array of Feat IDs: feats that require this, feats this requires)

**Items (Equipment, Magic Items):**
- `id` (UUID)
- `name` (String, unique)
- `book` (String)
- `type` (String: "Light Armor", "Heavy Armor", "Shield", "Melee Weapon", "Ranged Weapon", "Wand", "Ring", "Potion", etc.)
- `subtype` (String: "Sword", "Bow", "Leather", etc.)
- `cost` (String: "15 gp", "500 gp + 1 sp")
- `weight` (String: "5 lbs", "—")
- `ac` (Int or null: armor bonus)
- `damage` (String or null: "1d8", "1d6/1d6")
- `criticalRange` (String or null: "17-20/x2")
- `properties` (Array: "Magic", "Cold Iron", "Silver", "Masterwork")
- `description` (Markdown)
- `usedByCreatures` (Array of Creature IDs: monsters known to use this)

**Creatures (Monsters, NPCs):**
- `id` (UUID)
- `name` (String, unique)
- `book` (String)
- `type` (String: "Humanoid", "Undead", "Construct", etc.)
- `alignment` (String: "LG", "N", "CE", etc.)
- `hp` (Int)
- `ac` (Int)
- `attacks` (Array of Attack objects)
- `abilities` (Dict: { Str: 10, Dex: 12, ... })
- `skills` (Array of Skill objects)
- `specialAbilities` (Array of SpecialAbility objects)
- `spells` (Array of Spell IDs if spellcaster)
- `immunities` (Array: "Fire", "Magic", etc.)
- `resistances` (Array of Resistance objects)
- `size` (String: "Fine", "Tiny", "Small", "Medium", "Large", "Huge", "Gargantuan")
- `description` (Markdown)

**Traits:**
- `id` (UUID)
- `name` (String, unique)
- `book` (String)
- `type` (String: "Race", "Campaign", "Religion", etc.)
- `description` (Markdown)
- `benefit` (Markdown)
- `usedByRaces` (Array of Race IDs)

**Rules/Sections:**
- `id` (UUID)
- `title` (String)
- `book` (String)
- `chapter` (String: "Combat", "Spellcasting", etc.)
- `content` (Markdown)
- `relatedRules` (Array of Rule IDs)
- `relatedSpells` (Array of Spell IDs)
- `relatedFeats` (Array of Feat IDs)

---

### FR-001-2: Relationships (Cross-References)

Every cross-reference must be **bidirectional and tappable**:

**Spell ↔ Class:**
- Spell knows which classes can cast it
- Class spell list references spells

**Feat ↔ Feat:**
- Feat lists prerequisites
- Feat lists dependent feats (feats that require this one)

**Feat ↔ Ability:**
- Feat references required abilities
- Ability references dependent feats

**Item ↔ Creature:**
- Item lists creatures that use it
- Creature lists equipment

**Class ↔ Race:**
- Race shows favored classes
- Class shows typical races

**Spell ↔ Monster:**
- Spell lists creatures that know it
- Creature lists known spells

---

### FR-001-3: Database Schema (SQLite)

**Tables:**

```sql
CREATE TABLE content_entries (
  id TEXT PRIMARY KEY,
  contentType TEXT NOT NULL, -- 'spell', 'feat', 'class', 'race', 'item', 'creature', 'rule', 'trait'
  name TEXT NOT NULL UNIQUE,
  book TEXT NOT NULL,
  description TEXT,
  content TEXT, -- full markdown/JSON for flexible storage
  dataJson TEXT NOT NULL, -- JSON serialization for all fields
  createdAt TIMESTAMP,
  updatedAt TIMESTAMP
);

CREATE INDEX idx_name ON content_entries(name);
CREATE INDEX idx_book ON content_entries(book);
CREATE INDEX idx_type ON content_entries(contentType);
CREATE FULLTEXT INDEX idx_search ON content_entries(name, description);

-- Cross-references (hyperlinks)
CREATE TABLE references (
  id TEXT PRIMARY KEY,
  sourceId TEXT NOT NULL, -- references content_entries(id)
  sourceType TEXT NOT NULL, -- 'spell', 'feat', etc.
  targetId TEXT NOT NULL, -- references content_entries(id)
  targetType TEXT NOT NULL,
  relationshipType TEXT NOT NULL, -- 'prerequisite', 'caster', 'usedBy', 'relatedTo', etc.
  FOREIGN KEY(sourceId) REFERENCES content_entries(id),
  FOREIGN KEY(targetId) REFERENCES content_entries(id)
);

CREATE INDEX idx_ref_source ON references(sourceId);
CREATE INDEX idx_ref_target ON references(targetId);
CREATE INDEX idx_ref_type ON references(relationshipType);

-- User favorites
CREATE TABLE favorites (
  id TEXT PRIMARY KEY,
  userId TEXT NOT NULL, -- placeholder for future multi-user support
  entryId TEXT NOT NULL,
  createdAt TIMESTAMP,
  FOREIGN KEY(entryId) REFERENCES content_entries(id)
);

CREATE INDEX idx_favorites_entry ON favorites(entryId);

-- Books/sources (metadata)
CREATE TABLE books (
  id TEXT PRIMARY KEY,
  title TEXT UNIQUE,
  abbreviation TEXT,
  releaseDate TEXT,
  type TEXT, -- 'Core', 'Supplement', 'Bestiary'
  requiresSubscription BOOLEAN DEFAULT FALSE,
  contentCount INT
);
```

---

### FR-001-4: Full-Text Search Index

Every `content_entries` row is indexed on:
- `name` (highest weight)
- `description` (medium weight)
- `dataJson` (lower weight, for flavor text)

Search results return in <200ms for queries up to 1000 entries.

---

### FR-001-5: Favorites Storage

User favorites stored locally in SQLite (no cloud sync):
- Tappable heart icon on any entry
- Favorites survive app updates
- Favorites stored indefinitely (until user deletes)

---

## Data Requirements

**Data source:** Archives of Nethys (fan-maintained OGL content)
**Extraction method:** Web scraping + manual curation (Phase 1)
**Compression:** Content delivered as SQLite database (compressed to ~300MB for Core + expansions)
**Update frequency:** Manual (no auto-updates; users must update app for new content)

---

## Business Rules

1. **Core Rulebook always free** — All base class/race/spell/feat content unlocked
2. **Expansion content gated** — Bestiary, Advanced Player's Guide, Ultimate books require subscription
3. **Subscription check at runtime** — App queries local "user subscription status" (stub for IAP)
4. **No DRM** — Content isn't encrypted; it's just filtered by subscription flag

---

## Error States

| Error | Handling |
|-------|----------|
| Malformed JSON in dataJson | Log + skip entry during load |
| Missing foreign key reference | Log warning + render entry without hyperlink |
| Search query timeout (>1s) | Return results found so far + show "more results" message |
| Database corrupt | Offer "reset database" with re-download |

---

## Acceptance Criteria

1. **Database schema created** — All tables defined, indexes created, integrity constraints in place
2. **Sample data loaded** — Core Rulebook (1000+ entries) + 1 expansion (500+ entries) in database
3. **Search tested** — 10 sample queries return results in <200ms, results rank correctly by relevance
4. **Cross-references verified** — 50 sample entries spot-checked; all hyperlinks resolve correctly
5. **Favorites working** — Favorite an entry, restart app, verify entry is still marked as favorite
6. **Schema docs written** — `docs/DATABASE-SCHEMA.md` documents table structure, indexes, and ETL process

---

## UI Inventory

**This FRD doesn't own any UI directly.** Data model is the foundation; UI is owned by other FRDs (Navigation, Search, Entry Detail).

However, the data model **must support**:
- Full-text search field (input)
- Spell list grouped by class (table/list)
- Feat list with "required by" links (list with nested links)
- Creature stat block (detailed view with many fields)
- Favorites button on every entry (toggle button)

---

## Out of Scope

- User accounts / cloud sync
- Real-time collaborative lookups
- Campaign-specific custom data
- Image storage (spell illustrations, monster artwork) — text-only in MVP
- Audio (spell pronunciation) — text-only in MVP

---

## Dependencies

- **SQLite** (included in iOS)
- **Archives of Nethys data** (web source, licensed under OGL)
- No external APIs or third-party libraries

---

## Notes

This FRD is the **data foundation**. All subsequent FRDs depend on it (search, navigation, detail views, etc.). Data model decisions made here affect app performance, feature feasibility, and subscription logic.

**Key design decisions:**
- **Why SQLite instead of Core Data?** — SQLite gives us fine-grained query control, easier to debug, easier to bundle static data
- **Why JSON inside SQLite?** — Flexible schema for complex nested data (spell components, creature abilities); searchable via fulltext; can be extended without schema migration
- **Why hyperlinks instead of navigation stack?** — Players expect to jump between related entries (spell → class → feat) without a linear forward/back flow

---

## Sign-Off

**Status:** Draft — awaiting approval
**Created:** 2026-03-31
**Updated:** 2026-04-01
**Author:** Friday
