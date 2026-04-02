# Lodestone — Friday Context

## What This Is
Pathfinder 1E tabletop RPG reference app. Complete rules lookup, spell/feat/item browser, and GM tools. One of three related apps (PF1, PF2, SF1) sharing a codebase.

## Stack
Swift · SwiftUI · iOS 15+ · SwiftData · iCloud · SPM

## Critical Rules
- OGL-licensed content only — no proprietary Paizo content
- Local-first — all content bundled, no server dependency
- CloudKit: all @Relationship properties must be optional
- Three separate App Store apps share this codebase — keep abstractions clean
- Freemium: Core Rulebook free, expansions $2.99/mo; single subscription unlocks all three apps
- App + content must stay under 500MB installed

## Related Projects
- `Lodestone-PF2` — PF2E variant | `LoadstonePF1` — TypeScript data library | `PFRPG-Reference` — legacy app

## Ticketmaster ID
`lodestone`
