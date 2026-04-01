# FRD: UI/UX Architecture & Navigation

**Feature:** Apple-native SwiftUI interface with tab-based navigation and detail views  
**Priority:** P0 (core UX)  
**Owner:** TBD  
**Acceptance Criteria:** See section 5

---

## 1. Overview

Native SwiftUI interface following Apple Human Interface Guidelines:
- Tab-based navigation (Browse, Search, Favorites, Settings)
- Hierarchical detail views (Master/detail on iPad, push/pop on iPhone)
- Responsive layout (iPad landscape optimized)
- Dark mode support (automatic)
- Accessibility-first (VoiceOver, Dynamic Type)

---

## 2. Information Architecture

### Root Navigation

**Tab Bar (5 main sections):**
1. **Browse** — Hierarchical exploration (Classes → Spells → Monsters, etc.)
2. **Search** — Keyword search + filters
3. **Favorites** — Bookmarked entries
4. **GM Screen** — Quick-reference tools for running games
5. **Settings** — App settings, subscription management, about

### Browse Hierarchy

```
Browse (root)
├── Classes
│   ├── [Class name] (detail view)
│   │   ├── Features (expandable section)
│   │   ├── Spell List (if applicable)
│   │   └── Related (feats, prestige classes)
│   └── [Show all classes]
├── Races
├── Spells (by school)
├── Monsters (by CR)
├── Feats
├── Items
└── Rules
```

### iPad Layout (Split View)

- Left column: Hierarchical list (Browse, Search results, Favorites)
- Right column: Detail view (selected item, scrollable)
- Both columns visible simultaneously
- Swiping left/right navigates between list and detail

### iPhone Layout (Stack)

- Single column navigation stack
- Tap item → push to detail
- Back button or swipe to pop
- Detail fills screen

---

## 3. Screen Designs

### 3.1 Browse Tab — Class Browser

**Screen:**
```
┌─────────────────────┐
│ Browse              │
├─────────────────────┤
│ Classes             │ (header)
│ ─────────────────── │
│ □ Barbarian         │ (tappable, icon + name)
│ □ Bard              │
│ □ Cleric            │
│ □ Druid             │
│ □ Fighter           │
│ □ Monk              │
│ □ Paladin           │
│ □ Ranger            │
│ □ Rogue             │
│ □ Sorcerer          │
│ □ Wizard            │
│                     │
│ Races               │ (next section, collapsible)
│ ─────────────────── │
│ □ Dwarf             │
│ ... (collapsed)     │
└─────────────────────┘
```

**Interactions:**
- Tap class name → navigate to class detail
- Swipe left → segue to detail view (iOS 16+)
- Long-press → "Add to Favorites" quick action

### 3.2 Class Detail View

**Screen:**
```
┌─────────────────────┐
│ < Wizard            │ ⭐ (favorite button)
├─────────────────────┤
│ Wizard              │
│ "Wizards are...     │ (summary, italic)
│                     │
│ Hit Die: d6         │ (key stats)
│ Base Attack: Low    │
│ Saves: Will Good    │
│                     │
│ Class Features      │ (expandable)
│ ───────────────────┤
│ ▶ 1st — Bonus Feats,│
│        Spellcasting │
│ ▼ 2nd — Bonus Feat  │ (expanded)
│   • Bonus Feat      │
│   • description...  │
│ ▶ 3rd — Bonus Feat  │
│ ... (levels 4-20)   │
│                     │
│ Spells Per Day      │
│ ───────────────────┤
│ [Table: levels x    │
│  spell levels]      │
│                     │
│ Wizard Spell List   │
│ ───────────────────┤
│ Cantrips (0-level) │
│ • Acid Splash       │ (tappable)
│ • Arcane Mark       │
│ ... (scrollable)    │
│                     │
│ 1st-Level Spells    │
│ • Alarm             │
│ ... (scrollable)    │
└─────────────────────┘
```

**Interactions:**
- Tap spell name → detail view
- Tap ability name → show inline definition or link to feature
- Favorite button: save to Favorites tab
- "Related Content" link: prestige classes, feats for this class

### 3.3 Search Results

**Screen:**
```
┌─────────────────────┐
│ 🔍 Search          │
├─────────────────────┤
│ [Search field] [X]  │
│                     │
│ Filter: [Type ▼]    │ (Spell | Class | Monster | etc.)
│         [Level ▼]   │ (All | 1st | 2nd | ... 9th)
│                     │
│ Results for "fire"  │
│ ─────────────────── │
│                     │
│ Spells (3)          │ (section header)
│ □ Burning Hands     │ (1st-level evocation)
│ □ Fireball          │ (3rd-level evocation)
│ □ Fire Shield       │ (4th-level evocation)
│                     │
│ Feats (2)           │ (section header)
│ □ Burn! (Combat)    │
│ □ Fire Resistance   │
│                     │
│ Monsters (5)        │ (section header)
│ □ Fire Elemental    │ (CR 5, elementai type)
│ □ Flame Skull       │ (CR 4, undead)
│ ... (more)          │
│                     │
│ Items (1)           │ (section header)
│ □ Fire Wand         │ (wondrous item)
└─────────────────────┘
```

**Interactions:**
- Type in search field → results update instantly
- Select filter → results update
- Tap result → navigate to detail
- Swipe left for "Add to Favorites" quick action

### 3.4 GM Screen Tab

**Screen:**
```
┌─────────────────────┐
│ GM Screen           │
├─────────────────────┤
│ ▪ Combat     ▪ Conditions  │ (tabs)
│ ▪ Skills     ▪ Spells      │
│                     │
│ Combat              │ (selected tab)
│ ─────────────────── │
│ Initiative: d20 + DEX modif│
│ Attack: d20 + mod   │
│ Damage: varies      │
│                     │
│ Ability Checks      │
│ • STR, DEX, CON, INT│
│   WIS, CHA          │
│                     │
│ Condition Quick Ref │
│ • Blinded           │ (tappable)
│ • Charmed           │
│ • Dazed             │
│ • Deafened          │
│ ... (scrollable)    │
│                     │
│ Encounter Tools     │
│ 🔍 Monster Search   │ (button)
│ 📊 XP Calculator    │ (button)
└─────────────────────┘
```

**Interactions:**
- Swipe between tabs
- Tap condition → show expanded definition + effects
- "Monster Search" → search + filter monsters by CR
- "XP Calculator" → party level + monster CR → XP reward

### 3.5 Settings Tab

**Screen:**
```
┌─────────────────────┐
│ Settings            │
├─────────────────────┤
│ Subscription        │ (section)
│ ─────────────────── │
│ Premium Unlocked ✓  │
│ Renews Mar 31, 2026 │
│ Manage Subscription │ (button → App Store)
│                     │
│ Restore Purchases   │ (button)
│                     │
│ Display             │ (section)
│ ─────────────────── │
│ Dark Mode: System   │ (picker)
│ Text Size: Default  │ (picker)
│                     │
│ Offline Content     │ (section)
│ ─────────────────── │
│ Core Rulebook: 52 MB│ (cached)
│ Premium Content:    │ (not downloaded)
│ [Download] button   │ (optional, if premium)
│                     │
│ About               │ (section)
│ ─────────────────── │
│ Lodestone PF1 v1.0  │
│ Made by Heilo       │
│ Archives of Nethys  │ (credit link)
│ Privacy Policy      │ (link)
│ Terms of Service    │ (link)
└─────────────────────┘
```

**Interactions:**
- Tap "Manage Subscription" → opens App Store app
- Tap "Restore Purchases" → StoreKit validation
- Dark mode picker → updates UI immediately
- Text size picker → updates all text (respects system setting)

---

## 4. Visual Design Language

### Colors

**Light Mode:**
- Background: #FFFFFF (white)
- Text: #000000 (black)
- Accent: #007AFF (Apple blue)
- Secondary: #8E8E93 (gray)
- Links: #007AFF (blue, underlined)
- Premium indicator: #FFD60A (gold)

**Dark Mode:**
- Background: #000000 (black)
- Text: #FFFFFF (white)
- Accent: #0A84FF (lighter blue)
- Secondary: #A2A2A7 (lighter gray)
- Links: #0A84FF (bright blue, underlined)
- Premium indicator: #FFD60A (gold, unchanged)

### Typography

- **Headings:** SF Pro Display, 20pt, bold
- **Subheadings:** SF Pro Display, 17pt, semibold
- **Body:** SF Pro Display, 16pt, regular
- **Code/Monospace:** SF Mono, 14pt, regular
- **Captions:** SF Pro Display, 13pt, regular

### Spacing & Layout

- Padding: 16pt (standard margins)
- Gap (between items): 8pt (compact) or 16pt (spacious)
- Corner radius: 8pt (buttons, cards)
- Min tap target: 44x44pt (accessibility)

### Icons

- System icons (SF Symbols) for all UI elements
- Custom icon pack for content types (spell wand, monster claw, etc.)
- Consistent line weight (medium, 2pt stroke)

---

## 5. Acceptance Criteria

**AC 1: Navigation**
- All 5 main tabs accessible from any screen
- Tab bar persists during browsing
- Detail views don't hide tab bar
- Back button works correctly on iPhone

**AC 2: Browse Functionality**
- Can navigate from Browse → Class → Features → Spell without returning home
- Breadcrumb shows current location
- Hierarchy is clear (visual indentation or nesting)

**AC 3: Search Responsiveness**
- Search results update in real-time (<100ms)
- Filters work correctly
- Results grouped by type
- Empty state shown if no results

**AC 4: Responsive Design**
- iPhone portrait: single column, proper text wrapping
- iPhone landscape: optimized layout (sidebars if needed)
- iPad: split view with resizable columns
- iPad landscape: full-width detail view

**AC 5: Accessibility**
- All interactive elements have clear labels (VoiceOver)
- Text size respects Dynamic Type (min 44pt for max text size)
- High contrast for link underlines
- Color not the only indicator (e.g., icons used for premium indicator too)

**AC 6: Dark Mode**
- App automatically follows system setting
- All colors readable in both modes
- No hard-coded colors (uses @Environment or Assets)
- Text contrast passes WCAG AA (4.5:1 for normal text)

---

## 6. State Management

**App-wide state:**
- `SubscriptionManager` (tracks premium status)
- `SearchManager` (query, filters, results cache)
- `FavoritesManager` (bookmarked entries, Core Data backed)
- `OfflineCache` (content bundles downloaded, timestamps)

**Per-view state:**
- `@State` for UI toggles (search field focus, expanded sections)
- `@ObservedRealmObject` or `@FetchRequest` for data lists
- `@EnvironmentObject` for app-wide managers

---

## 7. Deliverables

- [ ] SwiftUI views (Browse, Search, Favorites, Settings, GM Screen, Detail)
- [ ] Navigation stack (NavigationStack or NavigationView, iPad split view)
- [ ] Color assets (light/dark mode variants)
- [ ] Typography scale (SF Pro, SF Mono, sizes)
- [ ] Accessibility testing (VoiceOver, text scaling, contrast)
- [ ] Responsive layout tests (iPhone + iPad, all orientations)
- [ ] State management (observable objects, Core Data)
- [ ] UI unit tests (navigation, detail view loads, etc.)

---

## 8. Dependencies

- SwiftUI (iOS 15+)
- NavigationStack (iOS 16+) or NavigationView fallback
- Core Data (favorites persistence)
- Core Graphics (custom shapes/illustrations if needed)

