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

        // MARK: Actions

        QuickReference(
            title: "Action Economy",
            content: """
            1-Action (◆): Strike, Step, Stride, Interact, Raise Shield, Cast (some spells)
            2-Action (◆◆): Cast (most spells), Heal, Command Animal
            3-Action (◆◆◆): Cast (some spells), Cast Heal at max effect
            Free Action (◇): Release, Speak, Drop item (on your turn only)
            Reaction (↺): Attack of Opportunity (Fighter), Shield Block, Riposte
              — 1 reaction per round; regained at start of your turn
            """,
            category: "Actions"
        ),

        QuickReference(
            title: "Exploration Activities",
            content: """
            Avoid Notice: Stealth check; start encounter hidden
            Detect Magic: Constantly cast Detect Magic; notice auras
            Investigate: Recall Knowledge about discovered creature/object
            Scout: Speed –25%; party gets +1 initiative
            Search: Actively seek hidden creatures/objects (Perception)
            Defend: Hard cover + better Reflex saves
            Follow the Expert: Aid check; +2 (or proficiency bonus) to related skill
            """,
            category: "Actions"
        ),

        // MARK: Conditions

        QuickReference(
            title: "Valued Conditions",
            content: """
            Clumsy X: –X to Dex-based checks/DCs; ends at X=0
            Drained X: –X to Con-based checks; –X×5 max HP; 1/day natural healing
            Enfeebled X: –X to Str-based checks and damage
            Frightened X: –X to checks/DCs; reduces by 1 at end of each turn
            Sickened X: –X to checks/DCs; use an action to attempt a Fort save (DC 15) to reduce
            Slowed X: Lose X actions each turn (min 1)
            Stunned X: Lose X actions; if no number, lose 1 action and lose Stunned
            Stupefied X: –X to Int/Wis/Cha checks/DCs and spell attack/DCs
            Wounded X: Dying threshold increases by X (die at Dying X+3+Con)
            """,
            category: "Conditions"
        ),

        QuickReference(
            title: "Binary Conditions",
            content: """
            Blinded: Flat-footed; –4 Perception; auto-fail sight checks; concealed targets
            Broken: Object non-functional until repaired above BT
            Concealed: Attackers must succeed DC 5 flat check to target you
            Confused: Controlled by GM; must act wildly; can attack allies
            Dazzled: All targets are concealed from you
            Doomed X: Die when Dying reaches X (normally Dying 4)
            Encumbered: Clumsy 1; –10 Speed; –1 penalty to most Str/Dex checks
            Fascinated: Flat-footed; cannot take actions that don't involve fascination target
            Fleeing: Must move away from source each turn; cannot approach
            Grabbed: Immobilized and flat-footed; held by creature or hazard
            Hidden: Others know your location but can't see you; flat check DC 11 to target
            Immobilized: Cannot move from current space
            Invisible: Undetected by sight; flat check DC 11 to target; no Dex to AC vs you
            Off-Guard (Flat-footed): –2 circumstance to AC
            Paralyzed: Cannot act; flat-footed; lose Dex/Str to AC/saves
            Petrified: Can't act; immune to non-persistent damage while stone
            Prone: –2 attack; melee vs you +2; –4 ranged attack; stand costs 1 action
            Restrained: Grabbed + can't use move actions; flat-footed
            Unconscious: Prone + can't act + blinded + flat-footed
            """,
            category: "Conditions"
        ),

        QuickReference(
            title: "Dying & Recovery",
            content: """
            Dying X: Unconscious; at 0 HP gain Dying 1 (or higher with Wounded)
            Recovery Check: DC 10 + Dying value at start of your turn
              Crit Success: lose 2 Dying; Success: lose 1 Dying; Fail: gain 1 Dying
              Crit Fail: gain 2 Dying → Dead at Dying 4
            Persistent Damage: Flat check DC 15 at end of turn to end; success ends
              — adjacent ally can use 2 actions to attempt DC 15 flat check to help
            Hero Points: Spend 1 → reroll anything once (keep new result)
              Spend all → stabilize at 1 HP (avoid dying)
            """,
            category: "Conditions"
        ),

        // MARK: Skills

        QuickReference(
            title: "Skill Actions — Physical",
            content: """
            Athletics: Climb, Disarm, Grapple, High Jump, Long Jump, Shove, Swim, Trip
              — Grapple/Shove/Trip vs defender's Fortitude DC
            Acrobatics: Balance, Tumble Through (vs Reflex DC), Maneuver in Flight
            Stealth: Hide (become hidden), Sneak (move while hidden), Conceal Object
            Thievery: Pick a Lock (vs DC), Steal (vs Perception DC), Disable Device
            """,
            category: "Skills"
        ),

        QuickReference(
            title: "Skill Actions — Social & Knowledge",
            content: """
            Diplomacy: Make an Impression (1 min, Attitude shift), Request, Gather Info
            Intimidation: Demoralize (→ Frightened 1; once/target/10 min), Coerce
            Deception: Create Diversion, Feint (vs Perception DC), Impersonate, Lie
            Recall Knowledge: (Arcana/Nature/Occultism/Religion/Society/Crafting/Lore)
              Identifies creature abilities, item properties, historical facts
            Medicine: Treat Wounds (DC 15/20/30/40; 1 hr; remove Wounded)
              Administer First Aid (2 actions; Stabilize vs DC 15, remove Frightened/Fleeing)
            """,
            category: "Skills"
        ),

        QuickReference(
            title: "Skill DCs by Difficulty",
            content: """
            Untrained: DC 10   Trained: DC 15    Expert: DC 20
            Master: DC 25      Legendary: DC 30
            By Level (approx.): L0=14  L2=16  L4=18  L6=20  L8=22  L10=23
              L12=25  L14=27  L16=28  L18=29  L20=30  L22=32 (GM Core p.53)
            Simple Tasks: DC 10    Moderate: DC 15–20    Hard: DC 25–30
            """,
            category: "Skills"
        ),

        // MARK: Magic

        QuickReference(
            title: "Spell Ranks & Cantrips",
            content: """
            Spell Ranks: 1–10 (replaces PF1 spell levels)
            Cantrips: Rank = half caster's level, rounded up (min rank 1)
              — Cantrips are heightened automatically
            Heightening: Spell effects scale with rank cast at
            Spell Attack Roll: d20 + spellcasting ability modifier + proficiency
            Spell DC: 10 + spellcasting ability modifier + proficiency
            Focus Spells: Spend 1 Focus Point; refocus 1 point with 10 min activity
            """,
            category: "Magic"
        ),

        QuickReference(
            title: "Degrees of Success (Saves & Checks)",
            content: """
            Critical Success: Beat DC by 10+ → best outcome
            Success: Meet or beat DC → normal success
            Failure: Miss DC → normal failure
            Critical Failure: Miss DC by 10+ → worst outcome
            — Natural 20: one degree better; Natural 1: one degree worse
            Fortitude: resists poison/disease/physical effects
            Reflex: resists area/trap/fast effects
            Will: resists mental/charm/fear effects
            """,
            category: "Magic"
        ),

        // MARK: Encounter

        QuickReference(
            title: "Encounter Budget (XP)",
            content: """
            Each PC = 20 XP budget
            Monster XP by level relative to party:
              Party Level –4: 10 XP   –3: 15 XP   –2: 20 XP   –1: 30 XP
              Equal: 40 XP    +1: 60 XP    +2: 80 XP    +3: 120 XP
            Encounter Difficulty:
              Trivial: <40 XP    Low: 40–59 XP    Moderate: 60–79 XP
              Severe: 80–119 XP  Extreme: 120+ XP (character death likely)
            """,
            category: "Encounter"
        ),

        QuickReference(
            title: "Proficiency Bonuses",
            content: """
            Untrained:  Level + 0 (no bonus unless stated)
            Trained:    Level + 2
            Expert:     Level + 4
            Master:     Level + 6
            Legendary:  Level + 8
            — All DCs and attacks use: d20 + modifier + proficiency bonus
            — Untrained: –2 penalty for trained-only skills (optional rule)
            """,
            category: "Encounter"
        ),

        QuickReference(
            title: "Hero Points",
            content: """
            Award: 1 per session (start); GMs may give additional for heroic deeds
            Max per session: typically 3 per character
            Spend 1: Reroll any die roll (keep new result — no stacking)
            Spend all: When reduced to 0 HP, instead stabilize at 1 HP (avoid Dying)
            — Hero Points reset each session
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
