import Foundation
import SwiftUI

@Observable
final class GMScreenViewModel {
    struct QuickReference: Identifiable {
        let id = UUID()
        let title: String
        let content: String
        let category: String
    }

    var references: [QuickReference] = [

        // MARK: Combat

        QuickReference(
            title: "Combat Actions",
            content: """
            Standard: Attack, Cast spell, Total defense, Use special ability
            Move: Move up to speed, Draw/sheathe weapon, Open/close door, Stand up from prone
            Full-Round: Full attack, Charge, Run, Withdraw, Cast full-round spell
            Swift (1/round): Cast swift spell, Use swift ability
            Immediate (1/turn): Cast immediate spell
            Free: Drop item, Speak, Drop prone, Release held item
            """,
            category: "Combat"
        ),

        QuickReference(
            title: "Combat Maneuver DCs",
            content: """
            CMD = 10 + BAB + Str mod + Dex mod + special size mod
            Grapple: CMB vs CMD (both provoke unless improved)
            Trip: CMB vs CMD; failure by 10+ means you fall prone
            Disarm: CMB vs CMD; if you fail, opponent may disarm you
            Bull Rush: CMB vs CMD; success moves foe back 5 ft per 5 over
            Dirty Trick: CMB vs CMD; applies condition 1 round + 1/5 over
            Steal: CMB vs CMD; take one item from foe
            """,
            category: "Combat"
        ),

        QuickReference(
            title: "Cover & Concealment",
            content: """
            Soft Cover (creature in way): +4 AC
            Cover (half body blocked): +4 AC, +2 Reflex, Partial evasion
            Improved Cover: +8 AC, +4 Reflex, improved evasion
            Total Cover: Cannot be targeted with attacks/spells
            Concealment (20%): 20% miss chance
            Total Concealment (50%): 50% miss chance; attacker must guess square
            """,
            category: "Combat"
        ),

        QuickReference(
            title: "Flanking & Attacks of Opportunity",
            content: """
            Flanking: Two allies on opposite sides of foe → +2 attack rolls
            AoO Triggers: Move through threatened square, cast without Still Spell,
              ranged attack, retrieve item, stand up, grapple attempt
            AoO Avoidance: 5-ft step, Withdraw action, Acrobatics DC 15 (no AoO)
            """,
            category: "Combat"
        ),

        QuickReference(
            title: "Critical Hits",
            content: """
            Confirm: Attack roll must also threaten (hit AC, or natural 20)
            ×2: Dagger, Quarterstaff, most spells
            ×3: Axe, Bow, Lance, Shortbow
            ×4: Scythe
            19–20/×2: Longsword, Rapier, Short sword, Kukri
            18–20/×2: Falchion, Scimitar
            Vorpal (houserule): nat 20 + confirm → decapitate
            """,
            category: "Combat"
        ),

        QuickReference(
            title: "Damage & Death",
            content: """
            Disabled: 0 HP — can take one standard OR move, then 1 damage
            Dying: –1 to –Con HP — unconscious, lose 1 HP/round
            Dead: –Con HP or below
            Stable: DC 10 Constitution check each round to stop bleeding
            Massive Damage: Damage ≥ 50 hp in one hit → DC 15 Fort or die
            Nonlethal: 0 HP nonlethal = unconscious; recover 1/hour or with heal
            """,
            category: "Combat"
        ),

        // MARK: Conditions

        QuickReference(
            title: "Conditions A–F",
            content: """
            Blinded: –2 AC, no Dex bonus, –4 opposed Perception, 50% miss
            Confused: Roll d% each round (1–25 act normally, 26–50 do nothing,
              51–75 attack nearest, 76–100 attack self)
            Cowering: Loses Dex bonus, –2 AC, no actions
            Dazed: Can take no actions (free/swift still ok); not flat-footed
            Dazzled: –1 attack, –1 sight-based Perception
            Entangled: –2 attack, –4 Dex, concentration DC 15+SL
            Exhausted: –6 Str/Dex, cannot run or charge; rest 1 hour → fatigued
            Fatigued: –2 Str/Dex, cannot run or charge; rest 8 hours → normal
            Frightened: –2 attacks/saves/skills; must flee if able
            """,
            category: "Conditions"
        ),

        QuickReference(
            title: "Conditions G–Z",
            content: """
            Grappled: –4 Dex, –2 attack, no 2-handed weapons, no move action
            Helpless: Dex = 0, coup de grace possible
            Invisible: +2 attack, opponents lose Dex bonus, 50% concealment
            Nauseated: Move action only; no attacks, spells, or concentration
            Panicked: –2 saves/skills; drops held items, flees
            Paralyzed: Str/Dex = 0, helpless; coup de grace possible
            Pinned: Completely immobile; –4 AC, no Dex, can only escape grapple
            Shaken: –2 attacks, saves, skills, and ability checks
            Sickened: –2 attacks, damage, saves, skills, ability checks
            Staggered: One move or standard action each round (not both)
            Stunned: Loses Dex bonus, –2 AC, drops held items, no actions
            """,
            category: "Conditions"
        ),

        // MARK: Skills

        QuickReference(
            title: "Difficulty Classes",
            content: """
            Very Easy: DC 5
            Easy: DC 10
            Average: DC 15
            Tough: DC 20
            Challenging: DC 25
            Formidable: DC 30
            Heroic: DC 35
            Nearly Impossible: DC 40
            """,
            category: "Skills"
        ),

        QuickReference(
            title: "Common Skill DCs",
            content: """
            Acrobatics (balance 2-inch ledge): DC 10
            Climb (knotted rope): DC 5 / (smooth wall): DC 25
            Diplomacy (improve attitude 1 step): DC 15
            Disable Device (simple lock): DC 20 / (good lock): DC 30
            Perception (hear noise): DC 0 / (spot creature): DC 10+
            Sleight of Hand (palm coin-sized): DC 10
            Stealth (move silently): opposed by Perception
            Swim (calm water): DC 10 / (turbulent): DC 20 / (stormy): DC 30
            Use Magic Device (activate blindly): DC 25
            """,
            category: "Skills"
        ),

        QuickReference(
            title: "Concentration Checks",
            content: """
            Injured while casting (melee dmg): DC 10 + damage dealt + spell level
            Injured while casting (ranged dmg): DC 10 + damage dealt + spell level
            Vigorous motion (boat, etc.): DC 10 + spell level
            Violent motion: DC 15 + spell level
            Entangled: DC 15 + spell level
            Grappled: DC 10 + grappler CMB + spell level
            """,
            category: "Skills"
        ),

        // MARK: Magic

        QuickReference(
            title: "Spell Save DCs",
            content: """
            Save DC = 10 + spell level + caster ability modifier
            Wizard/Sorcerer: Intelligence/Charisma
            Cleric/Druid/Oracle: Wisdom/Charisma
            Bard/Summoner: Charisma
            Ranger/Paladin: Wisdom/Charisma
            Alchemist: Intelligence
            Witch: Intelligence
            """,
            category: "Magic"
        ),

        QuickReference(
            title: "Spell Resistance",
            content: """
            Overcome SR: d20 + caster level vs SR
            Touch Spells: SR still applies unless 'harmless' or 'object'
            Area Spells: If SR applies, each creature in area makes check
            Stacking: SR does not stack with itself (take highest)
            """,
            category: "Magic"
        ),

        QuickReference(
            title: "Metamagic Summary",
            content: """
            Empower: ×1.5 numeric effects (+2 slot)
            Enlarge: Double range (+1 slot)
            Extend: Double duration (+1 slot)
            Maximize: Maximum numeric results (+3 slot)
            Quicken: Cast as swift action (+4 slot)
            Silent: No verbal component (+1 slot)
            Still: No somatic component (+1 slot)
            Widen: Double area of burst/spread (+3 slot)
            """,
            category: "Magic"
        ),

        // MARK: XP & Encounter

        QuickReference(
            title: "XP Awards by CR",
            content: """
            CR 1/8: 50 XP   CR 1/4: 100 XP  CR 1/3: 135 XP  CR 1/2: 200 XP
            CR 1: 400 XP    CR 2: 600 XP    CR 3: 800 XP    CR 4: 1,200 XP
            CR 5: 1,600 XP  CR 6: 2,400 XP  CR 7: 3,200 XP  CR 8: 4,800 XP
            CR 9: 6,400 XP  CR 10: 9,600 XP CR 11: 12,800 XP CR 12: 19,200 XP
            CR 13: 25,600 XP CR 14: 38,400 XP CR 15: 51,200 XP CR 16: 76,800 XP
            CR 17: 102,400 XP CR 18: 153,600 XP CR 19: 204,800 XP CR 20: 307,200 XP
            """,
            category: "Encounter"
        ),

        QuickReference(
            title: "Level Advancement XP",
            content: """
            Slow:   2→3: 3k  3→4: 7.5k  4→5: 14k  5→6: 23k   6→7: 35k
            Medium: 2→3: 2k  3→4: 5k    4→5: 9k   5→6: 15k   6→7: 23k
            Fast:   2→3: 1.3k 3→4: 3.3k 4→5: 6k   5→6: 10k   6→7: 15k
            (Full table in CRB p.30)
            """,
            category: "Encounter"
        ),
    ]

    var selectedCategory: String? = nil

    var filteredReferences: [QuickReference] {
        guard let category = selectedCategory else { return references }
        return references.filter { $0.category == category }
    }

    var categories: [String] {
        Array(Set(references.map(\.category))).sorted()
    }
}
