import Foundation

extension SeedDataBuilder {
    func seedRules() async throws {
        let rules: [RuleEntry] = [

            // MARK: - Core Rules (Player Core, free)
            .init(id: seededUUID("Ability ScoresPC"), title: "Ability Scores",
                  category: "Core Rules",
                  summary: "The six ability scores represent your character's raw potential.",
                  body: """
                  Every creature has six ability scores: Strength, Dexterity, Constitution, Intelligence, Wisdom, and Charisma. Each score starts at 10. At character creation, you apply ability boosts (each +2 to a score) and ability flaws (each -2 to a score) based on your ancestry, background, and class.

                  Ability Modifiers
                  Each ability score has a modifier, calculated as: modifier = (score - 10) / 2 (rounded down). For example, a score of 14 gives a +2 modifier, and a score of 8 gives a -1 modifier.

                  The Six Abilities
                  - Strength: Physical power; affects melee attacks and Bulk carried.
                  - Dexterity: Speed and finesse; affects ranged attacks, Reflex saves, and AC.
                  - Constitution: Resilience; affects Hit Points and Fortitude saves.
                  - Intelligence: Reasoning; affects trained skills and prepared arcane magic.
                  - Wisdom: Awareness; affects Perception and Will saves.
                  - Charisma: Personality; affects social skills and some magic.
                  """,
                  isPremium: false, source: "Player Core Handbook"),

            .init(id: seededUUID("Action TypesPC"), title: "Actions",
                  category: "Core Rules",
                  summary: "On your turn you get 3 actions and 1 reaction.",
                  body: """
                  On your turn, you get 3 actions. You can use these actions for anything available to you. Actions are categorized as follows:

                  Single Actions (◆): Cost 1 action. Most basic maneuvers.
                  Two-Action Activities (◆◆): Cost 2 actions. More powerful activities.
                  Three-Action Activities (◆◆◆): Cost 3 actions. The most powerful activities, usually once per turn.
                  Free Actions (◇): Don't cost actions; usually triggered by a specific event.
                  Reactions (↺): Cost 1 reaction; triggered by specific events. You get 1 reaction per round.

                  Basic Actions
                  - Stride: Move up to your Speed.
                  - Strike: Attack with a weapon or unarmed attack.
                  - Step: Move 5 feet without triggering reactions.
                  - Raise a Shield: Gain your shield's AC bonus.
                  - Take Cover: Gain cover if it's available.
                  """,
                  isPremium: false, source: "Player Core Handbook"),

            .init(id: seededUUID("Proficiency RanksPC"), title: "Proficiency Ranks",
                  category: "Core Rules",
                  summary: "Proficiency ranks measure your mastery of skills and abilities.",
                  body: """
                  Proficiency ranks are Untrained, Trained, Expert, Master, and Legendary. Each gives a proficiency bonus equal to a fixed value plus your level.

                  Rank         | Bonus
                  Untrained    | +0 (no level bonus)
                  Trained      | +2 + level
                  Expert       | +4 + level
                  Master       | +6 + level
                  Legendary    | +8 + level

                  You add your proficiency bonus to most rolls and DCs associated with that skill or ability. For example, if you're Expert in Athletics at level 5, your Athletics bonus is +4 (Expert) + 5 (level) + your Strength modifier.
                  """,
                  isPremium: false, source: "Player Core Handbook"),

            .init(id: seededUUID("DegreeOfSuccessPC"), title: "Degrees of Success",
                  category: "Core Rules",
                  summary: "Checks can result in critical success, success, failure, or critical failure.",
                  body: """
                  When you attempt a check, compare the result to a DC. You have four possible outcomes:

                  Critical Success: Beat the DC by 10 or more. Usually the best possible result.
                  Success: Beat the DC. The normal positive outcome.
                  Failure: Miss the DC. Usually a neutral or negative outcome.
                  Critical Failure: Miss the DC by 10 or more. Usually the worst outcome.

                  Natural 20s and 1s
                  Rolling a natural 20 on the die (before modifiers) improves your degree of success by one step. Rolling a natural 1 worsens it by one step. A critical success can't be improved, and a critical failure can't be made worse.
                  """,
                  isPremium: false, source: "Player Core Handbook"),

            .init(id: seededUUID("HitPointsPC"), title: "Hit Points and Dying",
                  category: "Core Rules",
                  summary: "Hit Points represent your character's vitality and resilience.",
                  body: """
                  Hit Points (HP) represent your character's vitality. When you run out of HP, you drop to 0 HP. When you're at 0 HP, you fall unconscious and gain the dying 1 condition.

                  Dying
                  Each time you take damage while dying, your dying value increases (dying 1 → 2 → 3 → 4). At dying 4, you're dead. At the start of each of your turns while dying, you must make a Recovery Check (Fortitude, DC = 10 + your dying value).
                  - Critical Success: Decrease dying by 2.
                  - Success: Decrease dying by 1.
                  - Failure: Increase dying by 1.
                  - Critical Failure: Increase dying by 2.

                  Wounded
                  When you recover from dying, you gain the wounded 1 condition. If you become dying again while wounded, your dying value increases by your wounded value.
                  """,
                  isPremium: false, source: "Player Core Handbook"),

            .init(id: seededUUID("HeroPointsPC"), title: "Hero Points",
                  category: "Core Rules",
                  summary: "Hero Points let you reroll checks or avoid death.",
                  body: """
                  Hero Points are a resource that lets player characters do extraordinary things. The GM assigns Hero Points; players typically begin each session with 1, and can earn more through exceptional roleplay or heroic acts.

                  Spending Hero Points
                  - Spend 1 Hero Point at any time to reroll a single check. You must use the second result.
                  - Spend 1 Hero Point when you would gain the dying condition to avoid dying entirely; instead, you're at 0 HP and unconscious.

                  You can hold a maximum of 3 Hero Points at a time.
                  """,
                  isPremium: false, source: "Player Core Handbook"),

            .init(id: seededUUID("SkillChecksPC"), title: "Skill Checks",
                  category: "Skills",
                  summary: "Skill checks test your character's knowledge and physical capabilities.",
                  body: """
                  Skill checks represent attempts to use your training and abilities. To make a skill check, roll 1d20 and add your skill modifier (ability modifier + proficiency bonus).

                  Untrained Actions: Any character can attempt untrained actions, but without proficiency there's no level bonus.
                  Trained Actions: Some skill uses require you to be at least trained in the skill.
                  Expert, Master, Legendary: Some uses require higher proficiency ranks.

                  Common Skill Uses
                  - Athletics: Climb, Force Open, Grapple, High Jump, Long Jump, Shove, Swim, Trip
                  - Stealth: Conceal an Object, Hide, Sneak
                  - Perception: Seek, Sense Motive
                  - Diplomacy: Gather Information, Make an Impression, Request
                  - Deception: Create a Diversion, Feint, Lie, Impersonate
                  """,
                  isPremium: false, source: "Player Core Handbook"),

            .init(id: seededUUID("BulkEncumbrancePC"), title: "Bulk and Encumbrance",
                  category: "Equipment",
                  summary: "Bulk measures how much you can carry.",
                  body: """
                  Items have a Bulk value that represents their weight and awkwardness. Common Bulk values:
                  - L (Light): Items like daggers, scrolls. 10 light items = 1 Bulk.
                  - 1, 2, 3+: Full items. Most weapons and armor.
                  - — (Negligible): Tiny items like coins.

                  Carrying Capacity
                  You can carry Bulk up to 5 + your Strength modifier without encumbrance. If you carry more than that (up to 10 + your Strength modifier), you become encumbered and suffer a -1 penalty to Dexterity-based checks and a -10-foot penalty to Speed. You can't carry more than 15 + your Strength modifier in Bulk.
                  """,
                  isPremium: false, source: "Player Core Handbook"),

            .init(id: seededUUID("CombatSequencePC"), title: "Combat Sequence",
                  category: "Combat",
                  summary: "How combat is structured and ordered.",
                  body: """
                  Step 1 — Roll Initiative: Everyone involved rolls Perception (or another stat) for initiative. Higher results act first.

                  Step 2 — Play Rounds: Each round represents about 6 seconds of in-world time. In initiative order, each creature takes a turn. On your turn, you get 3 actions and 1 reaction.

                  Step 3 — End Combat: When one side is defeated, flees, surrenders, or when the conflict resolves, combat ends.

                  Turn Structure
                  1. Start of Turn: Apply conditions and effects that trigger at start of turn.
                  2. Act: Use your 3 actions and 1 reaction (reactions can be used on others' turns too).
                  3. End of Turn: Apply conditions that trigger at end of turn; persistent damage; etc.
                  """,
                  isPremium: false, source: "Player Core Handbook"),

            .init(id: seededUUID("SpellcastingPC"), title: "Spellcasting",
                  category: "Magic",
                  summary: "How to cast spells in Pathfinder 2E.",
                  body: """
                  Spellcasting uses spell slots. You have spell slots at each spell rank you can cast. Each time you cast a spell, it uses up a spell slot of that rank (or higher, to heighten it).

                  Cantrips: Cantrips are special spells that don't use spell slots. You can cast them at will. They are automatically heightened to half your level (rounded up).

                  Casting a Spell
                  Most spells take 2 actions to cast. Some take 1 or 3 actions, a reaction, or are free actions. The component types are:
                  - Verbal (V): Loud incantations. Silence prevents these.
                  - Somatic (S): Precise hand movements. Restricting your hands prevents these.
                  - Material (M): Physical components consumed by the spell.
                  - Focus (F): Requires a focus (a specific item or object).

                  Heightening Spells
                  Many spells have heightened entries. When you cast a spell in a higher-rank slot than its minimum rank, you can apply heightened effects.
                  """,
                  isPremium: false, source: "Player Core Handbook"),
        ]

        for rule in rules {
            try await db.insertRule(rule)
        }
    }
}
