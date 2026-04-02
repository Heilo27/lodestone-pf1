import Foundation

private extension ClassEntry {
    static func make(
        _ title: String,
        hitDie: String,
        skillRanks: Int,
        bab: String,
        fort: String,
        ref: String,
        will: String,
        classSkills: [String],
        summary: String,
        desc: String,
        source: String = "Pathfinder Unchained",
        isPremium: Bool = true
    ) -> ClassEntry {
        ClassEntry(
            id: seededUUID(title + source),
            title: title,
            summary: summary,
            isPremium: isPremium,
            hitDie: hitDie,
            skillRanks: skillRanks,
            baseAttackBonus: bab,
            fortSave: fort,
            refSave: ref,
            willSave: will,
            classSkills: classSkills,
            description: desc,
            source: source
        )
    }
}

private extension RuleEntry {
    static func make(
        _ title: String,
        category: String,
        body: String,
        summary: String,
        source: String = "Pathfinder Unchained",
        isPremium: Bool = true
    ) -> RuleEntry {
        RuleEntry(
            id: seededUUID(title + source),
            title: title,
            summary: summary,
            isPremium: isPremium,
            category: category,
            body: body,
            source: source
        )
    }
}

extension SeedDataBuilder {
    func seedUnchained() async throws {
        try await seedUnchainedClasses()
        try await seedUnchainedRules()
    }

    private func seedUnchainedClasses() async throws {
        let classes: [ClassEntry] = [

            // MARK: - Pathfinder Unchained Classes

            .make("Barbarian (Unchained)",
                  hitDie: "d12",
                  skillRanks: 4,
                  bab: "Full",
                  fort: "Good",
                  ref: "Poor",
                  will: "Poor",
                  classSkills: [
                      "Acrobatics", "Climb", "Craft", "Handle Animal",
                      "Intimidate", "Knowledge (nature)", "Perception",
                      "Ride", "Survival", "Swim"
                  ],
                  summary: "A revised barbarian whose rage grants flat Strength and Constitution bonuses instead of a static bonus, with earlier damage reduction and an expanded set of unchained rage powers.",
                  desc: """
                  The Unchained Barbarian represents a fundamental rethinking of how rage works in Pathfinder. Rather than granting a static morale bonus that scales awkwardly with feats and spells, the unchained version provides a morale bonus directly to Strength and Constitution scores while raging. This change has cascading effects: it improves hit points, Fortitude saves, CMB, CMD, and skill checks dependent on those ability scores — making the unchained barbarian more cohesive and powerful than its predecessor.

                  Damage reduction comes online earlier in the unchained barbarian's career, beginning at 2nd level rather than 7th. The DR also scales more aggressively, reaching DR 5/— by 11th level. This earlier defensive capability makes the unchained barbarian significantly more durable in the early-to-mid game.

                  The unchained rage powers are a completely distinct list from the original barbarian's, with many powers redesigned from the ground up. Instinctive frenzy is a new feature that allows the barbarian to enter rage as an immediate action once per day when struck in combat, eliminating the frustrating scenario of being unable to rage before an unexpected attack lands. The unchained barbarian cannot cast spells or use Charisma-, Dexterity-, or Intelligence-based skills while raging, but gains the Raging Brutality power for free, which lets her spend rage rounds to add Constitution bonus to damage on a single attack.

                  Compared to the Core barbarian, the unchained version is generally stronger in combat — more damage, better DR, and an improved rage economy — but lacks some of the unusual utility powers available in the original rage power list.
                  """,
                  source: "Pathfinder Unchained",
                  isPremium: true),

            .make("Monk (Unchained)",
                  hitDie: "d10",
                  skillRanks: 4,
                  bab: "Full",
                  fort: "Good",
                  ref: "Good",
                  will: "Good",
                  classSkills: [
                      "Acrobatics", "Climb", "Craft", "Escape Artist",
                      "Intimidate", "Knowledge (history)", "Knowledge (religion)",
                      "Knowledge (the planes)", "Perception", "Perform",
                      "Profession", "Ride", "Sense Motive", "Stealth", "Swim"
                  ],
                  summary: "A revised monk with a full BAB progression, a ki powers system replacing most class features, and style strikes for special maneuvers usable with flurry of blows.",
                  desc: """
                  The Unchained Monk addresses the two most persistent criticisms of the original class: the inferior base attack bonus progression and the awkward flurry of blows mechanic. The unchained version uses full BAB progression (not the bizarre monk-level-as-BAB system of flurry), making attack roll calculations straightforward. Hit points increase to d10, bringing the monk in line with other martial classes.

                  Flurry of blows is redesigned to function as a full-attack action that simply allows an additional attack at the highest base attack bonus — no more off-by-one confusion with the old system. This makes the unchained monk dramatically easier to play and significantly more effective at high levels.

                  The ki powers system replaces most of the original monk's fixed class features. Rather than gaining a set list of powers, the unchained monk selects ki powers from a menu as they advance, allowing far more customization. Some powers require a minimum monk level; others unlock at any time. The full ki power list covers movement enhancement, defensive abilities, offensive techniques, and a range of supernatural utilities.

                  Style strikes are a new feature granting the unchained monk special combat maneuvers usable in combination with a flurry of blows attack. Each style strike is a specific combat technique: the leg sweep trips a target, the elbow smash staggers an enemy, and the flying kick moves the monk before striking. The number of style strikes available per flurry increases with level.

                  Stunning Fist is granted as a bonus feat at 1st level, and purity of body (immunity to disease) and diamond mind (immunity to poison) are retained from the original. The unchained monk is widely regarded as the definitive version of the class, and is recommended as the default for any campaign using Pathfinder Unchained.
                  """,
                  source: "Pathfinder Unchained",
                  isPremium: true),

            .make("Rogue (Unchained)",
                  hitDie: "d8",
                  skillRanks: 8,
                  bab: "Medium",
                  fort: "Poor",
                  ref: "Good",
                  will: "Poor",
                  classSkills: [
                      "Acrobatics", "Appraise", "Bluff", "Climb", "Craft",
                      "Diplomacy", "Disable Device", "Disguise", "Escape Artist",
                      "Intimidate", "Knowledge (dungeoneering)", "Knowledge (local)",
                      "Linguistics", "Perception", "Perform", "Profession",
                      "Sense Motive", "Sleight of Hand", "Stealth",
                      "Swim", "Use Magic Device"
                  ],
                  summary: "A revised rogue with free Weapon Finesse and Dex-to-damage via finesse training, the debilitating injury condition system, and skill mastery through rogue's edge.",
                  desc: """
                  The Unchained Rogue receives three major improvements over its Core counterpart: finesse training, debilitating injury, and rogue's edge. Together these changes significantly increase the class's combat effectiveness and skill utility.

                  Finesse training is gained automatically at 1st level and grants the Weapon Finesse feat for free, eliminating one of the rogue's traditional feat taxes. At 3rd level, finesse training improves: the rogue can select one finesse weapon and add her Dexterity modifier to damage rolls with that weapon instead of Strength. This eliminates the need to invest in Agile enchantments or the Slashing Grace / Fencing Grace feats and allows the rogue to focus her feat budget on other options.

                  Debilitating injury is activated whenever the rogue deals sneak attack damage. On a successful sneak attack, the rogue can impose one of three conditions on the target (in addition to the sneak attack damage): bewildered (–2 to AC, –4 against the rogue), disoriented (–2 to attack rolls, –4 against the rogue), or hampered (movement speed halved, cannot take 5-foot steps). The condition lasts until the end of the rogue's next turn. This transforms sneak attack from a purely offensive ability into a tactical tool that makes subsequent attacks more reliable.

                  Rogue's edge, gained at 5th level and at every five levels thereafter, represents mastery of a specific skill. At 5 ranks in a skill, the rogue gains access to skill unlock powers for that skill — increasingly powerful uses of the skill that function as scaling abilities. For example, 5 ranks in Stealth allows the rogue to hide as a move action; 10 ranks allows hiding as a swift action; 15 and 20 ranks provide additional increasingly powerful benefits.

                  Danger sense (a bonus to Reflex saves and Perception to avoid being surprised) and improved uncanny dodge round out the unchained rogue's defensive toolkit. The core sneak attack progression is unchanged: 1d6 at 1st level, scaling by 1d6 every two levels thereafter.
                  """,
                  source: "Pathfinder Unchained",
                  isPremium: true),

            .make("Summoner (Unchained)",
                  hitDie: "d8",
                  skillRanks: 2,
                  bab: "Medium",
                  fort: "Poor",
                  ref: "Poor",
                  will: "Good",
                  classSkills: [
                      "Craft", "Fly", "Handle Animal", "Knowledge (arcana)",
                      "Knowledge (planes)", "Linguistics", "Profession",
                      "Ride", "Spellcraft", "Use Magic Device"
                  ],
                  summary: "A revised summoner whose eidolon must choose a subtype (agathion, angel, azata, demon, devil, inevitable, protean, or psychopomp), with restricted evolution pools and a spell list that avoids overlap with other casters.",
                  desc: """
                  The Unchained Summoner was created primarily to address the original class's two most significant problems: the eidolon was too powerful (especially in combination with summoner spells), and the spell list overlapped heavily with other classes in ways that crowded out their utility. The unchained version introduces hard structural constraints that reign in both issues.

                  The eidolon must now choose a subtype at the time of creation — one of eight outer-planar archetypes: agathion (good neutral), angel (lawful good), azata (chaotic good), demon (chaotic evil), devil (lawful evil), inevitable (lawful neutral), protean (chaotic neutral), or psychopomp (neutral). The chosen subtype determines the eidolon's base form, alignment restrictions, type, and which evolution pools are available. Subtypes have different base forms with different starting evolutions, and some evolutions are exclusive to certain subtypes. This design prevents the evolution system from being used to build generic optimized killing machines without thematic coherence.

                  Evolution points are no longer purely free-form. The evolution pool still scales with summoner level, but each subtype has lists of available and forbidden evolutions. This structures the eidolon around its planar theme rather than pure optimization.

                  The spell list is substantially revised to remove spells that duplicated the functionality of the cleric, druid, and wizard lists. The unchained summoner cannot access 9th-level spells at all (the list caps at 6th level), removing one of the original class's most controversial features. The remaining spell list focuses on conjuration, planar themes, and summon monster, which remains the class's signature spell.

                  The summoner still merges with the eidolon at high levels and still has access to the Maker's Call and Transposition abilities. The fundamental bond mechanic is preserved but the eidolon's raw power ceiling is substantially lower, making the unchained summoner more appropriate for standard play.
                  """,
                  source: "Pathfinder Unchained",
                  isPremium: true),
        ]

        for cls in classes {
            try await db.insertClass(cls)
        }
    }

    private func seedUnchainedRules() async throws {
        let rules: [RuleEntry] = [

            // MARK: - Unchained Systems

            .make("Automatic Bonus Progression",
                  category: "Unchained Systems",
                  body: """
                  Automatic Bonus Progression (ABP) is a variant rule that removes the expected magic item treadmill from Pathfinder play by granting characters the numerical bonuses they would normally get from the "Big Six" magic items (belt of physical might, headband of mental prowess, ring of protection, amulet of natural armor, cloak of resistance, and weapon/armor enhancements) automatically as they level.

                  Each character gains attunement points that increase at each level. These points are spent on bonuses to attack rolls, damage rolls, ability scores, saving throws, and armor class. The bonuses are calibrated to match the expected value of magic item bonuses at each level under standard wealth-by-level guidelines.

                  The primary effect is a dramatic reduction in dependence on magic items. Treasure can focus on interesting, flavorful items rather than mandatory numerical upgrades. Magic items that duplicate ABP bonuses are devalued or removed from loot tables entirely. This variant is particularly recommended for campaigns that want to maintain bounded accuracy and focus on item discovery rather than numerical optimization.

                  ABP also includes rules for "legendary gifts" — special bonuses available only when specific items are found, allowing unique weapons and armor to carry the character's enhancement bonuses instead of requiring separate purchases.
                  """,
                  summary: "Characters gain magic item bonuses automatically by level, reducing dependence on numerical magic items.",
                  source: "Pathfinder Unchained",
                  isPremium: true),

            .make("Background Skills",
                  category: "Unchained Systems",
                  body: """
                  Background Skills grants every character 2 additional skill points per level that must be spent on a specific list of background skills. This is separate from the normal skill point pool and cannot be used on non-background skills. The background skill list includes: Artistry, Craft, Handle Animal, Knowledge (engineering), Knowledge (geography), Knowledge (history), Knowledge (nobility), Linguistics, Lore, Perform, Profession, and Sleight of Hand.

                  The intent is to encourage players to develop their characters as people with lives outside of combat, without penalizing classes that already have few skill points. A fighter with only 2 skill points per level can still be a skilled craftsman or musician without sacrificing their combat-focused skills.

                  Artistry and Lore are two new skills introduced with this variant. Artistry covers all forms of artistic creation and appreciation; Lore covers a specific narrow field of expertise (Lore: Dragons, Lore: The Worldwound, etc.) that is narrower than any Knowledge skill but allows deeper knowledge of the specific topic. Background skills may not be used as class skills for the purpose of gaining the +3 class skill bonus, ensuring they remain distinct from the main skill system.
                  """,
                  summary: "Characters gain 2 bonus skill points per level from a background skill list, encouraging non-combat character depth.",
                  source: "Pathfinder Unchained",
                  isPremium: true),

            .make("Fractional Base Bonuses",
                  category: "Unchained Systems",
                  body: """
                  Fractional Base Bonuses replaces Pathfinder's standard rounding-down system for BAB and saving throw progression with exact fractional values tracked over multiclass combinations. Under the standard rules, a character who multiclasses suffers compound rounding penalties: a Fighter 1/Wizard 1 has BAB +1 instead of the +1.5 they would have if the fractions were preserved.

                  Under this variant, each class's BAB and save progression is tracked to one decimal place. When calculating the character's total BAB or saving throw, add all the fractional contributions and round down only once at the final total. A Fighter 1/Wizard 1 would have BAB +1.5, rounded to +1 — the same as standard. But a Fighter 4/Wizard 4 would have BAB +6 instead of +5, and a Fighter 8/Wizard 8 would have BAB +13 instead of +10.

                  This variant significantly reduces the multiclassing penalty in the mid-to-high level range and makes non-linear multiclass combinations much more viable. It is particularly recommended for campaigns that encourage diverse character builds and want to remove the pressure to commit to a single class for maximum numerical efficiency.
                  """,
                  summary: "Use fractional BAB/save progression and round down only once, eliminating compound multiclassing penalties.",
                  source: "Pathfinder Unchained",
                  isPremium: true),

            .make("Hero Points",
                  category: "Unchained Systems",
                  body: """
                  Hero Points represent a character's narrative significance and reserves of luck and determination. Each character begins play with 1 hero point and gains 1 hero point each time they advance a level. The GM may award additional hero points for exceptional roleplaying, clever solutions, or memorable moments. The maximum hero points a character can hold is 3.

                  Hero points can be spent in the following ways: Act Out of Turn (spend 1 point to take an immediate action on another character's turn), Bonus (spend 1 point for a +8 luck bonus on any one roll), Extra Action (spend 2 points to gain a standard action on your turn in addition to your normal actions), or Recall (spend 1 point to reroll any die roll, keeping the better result).

                  The most dramatic option is Cheat Death: by spending 2 hero points when your character would otherwise die, you somehow survive — perhaps at 1 hit point, perhaps by a dramatic near-miss, perhaps through luck. The GM determines the narrative explanation. This option is unavailable if the character has been dead for more than one round.

                  Hero points work best in high-adventure, heroic campaigns where protagonists are expected to survive difficult odds. They function poorly in gritty survival campaigns where death should be a real and permanent consequence.
                  """,
                  summary: "Characters earn and spend hero points for rerolls, extra actions, and to avoid death at dramatic moments.",
                  source: "Pathfinder Unchained",
                  isPremium: true),

            .make("Innate Item Bonuses",
                  category: "Unchained Systems",
                  body: """
                  Innate Item Bonuses is a variant designed to be used alongside Automatic Bonus Progression. Under this system, magic items provide direct enhancements to class abilities rather than adding separate numerical bonuses that stack atop ABP. The result is a magic item economy focused on qualitative power rather than numerical escalation.

                  For example, a weapon found in a dungeon under this variant might grant the fighter the ability to use Cleave an additional time per day, or expand a barbarian's rage power options, rather than providing a simple +2 bonus to attack and damage. Armor might grant the wearer additional hit points or reduce the movement penalty, rather than adding to AC.

                  This system requires significantly more GM preparation since items must be designed specifically for the characters who will receive them, or at least with the party's class composition in mind. It rewards GMs who want to make magic items feel unique and meaningful rather than interchangeable upgrades. Pre-generated item lists for common character types are provided in the variant rule section.
                  """,
                  summary: "Magic items enhance class abilities directly rather than adding numerical bonuses, used alongside Automatic Bonus Progression.",
                  source: "Pathfinder Unchained",
                  isPremium: true),

            .make("Piecemeal Armor",
                  category: "Unchained Systems",
                  body: """
                  Piecemeal Armor allows characters to mix and match armor pieces from different sets. Each piece — helm, chest, arms, legs — contributes a portion of the overall armor bonus, maximum Dexterity bonus, and armor check penalty. The combined values are totaled to determine the character's effective armor statistics.

                  Mixing pieces from different armor categories (light/medium/heavy) is possible, but the overall armor proficiency required is determined by the heaviest piece worn. A character wearing medium chest armor and light leg armor requires medium armor proficiency. The armor check penalty and maximum Dexterity bonus are both tracked per piece and summed.

                  This variant adds significant equipment complexity in exchange for greater customization. A character might wear a heavy breastplate for maximum torso protection while keeping light armor on their legs for better mobility, accepting the mixed statistics as a worthwhile tradeoff. The system shines when combined with Automatic Bonus Progression, as it allows characters to find interesting mixed-material armor without the "wrong" armor type being a trap choice.
                  """,
                  summary: "Characters can wear armor pieces from different sets; stats combine based on individual pieces worn.",
                  source: "Pathfinder Unchained",
                  isPremium: true),

            .make("Simplified Conditions",
                  category: "Unchained Systems",
                  body: """
                  Simplified Conditions replaces Pathfinder's detailed list of conditions (over 30 in the Core Rulebook) with a streamlined five-step condition track: Healthy, Grazed, Wounded, Critical, and Dying. Each step represents a worsening physical state and imposes escalating mechanical penalties.

                  Healthy: no penalties. Grazed: –1 to attack rolls and skill checks. Wounded: –2 to attack rolls, –2 to AC, move speed reduced by 10 feet. Critical: –4 to attack rolls, –4 to AC, move speed halved, cannot run or charge. Dying: helpless, losing 1 condition step per round without stabilization.

                  Damage no longer directly reduces hit points; instead, damage thresholds based on the creature's maximum HP determine when the condition worsens. Most spells and effects that impose conditions translate into stepping the target down the condition track rather than applying specific named conditions.

                  This variant dramatically reduces rules lookups during combat and makes conditions feel like a genuine narrative arc — from fine, to hurt, to critical, to dying — rather than a grab-bag of specific mechanical effects. It is recommended for groups that find the full condition list cumbersome but still want meaningful combat consequences beyond simple hit point tracking.
                  """,
                  summary: "Replace all conditions with a five-step condition track (Healthy–Grazed–Wounded–Critical–Dying) for faster play.",
                  source: "Pathfinder Unchained",
                  isPremium: true),

            .make("Skill Unlocks",
                  category: "Unchained Systems",
                  body: """
                  Skill Unlocks provide increasingly powerful uses of skills to characters who invest heavily in them. At 5, 10, 15, and 20 skill ranks, a character who has invested that many ranks in a skill gains access to powerful new applications of that skill. Under the standard rules, every character has access to these skill unlocks automatically upon reaching the rank threshold. When combined with the Unchained Rogue's Rogue's Edge ability, only rogues gain unlocks through class ability; other classes must expend a feat (Signature Skill) to access their unlocks.

                  Sample skill unlocks: Acrobatics 5 ranks — ignore difficult terrain when using Acrobatics to move; 10 ranks — falling no longer deals damage if an Acrobatics check (DC 10 + 10 per 10 feet fallen) succeeds; 15 ranks — move through threatened areas without provoking at full speed; 20 ranks — run and charge along walls or ceilings with a DC 30 Acrobatics check. Perception 5 ranks — can detect invisible creatures within 30 feet with a DC 40 check; 10 ranks — detect magic as a constant ability; 15 ranks — sense the location of creatures within 30 feet even if invisible or hidden; 20 ranks — automatically detect lies if the DC 30 check succeeds.

                  Every core skill has a full unlock table. The system rewards investment in utility skills by making those skills dramatically more powerful at high character levels, discouraging the common practice of spreading ranks thinly across many skills.
                  """,
                  summary: "Investing 5/10/15/20 ranks in a skill unlocks increasingly powerful uses of that skill.",
                  source: "Pathfinder Unchained",
                  isPremium: true),

            .make("Stamina and Combat Tricks",
                  category: "Unchained Systems",
                  body: """
                  Stamina and Combat Tricks gives fighters (and by optional extension, any martial character who takes the Combat Stamina feat) a stamina pool equal to their Constitution modifier + fighter level. Stamina points refresh at the start of each combat encounter, not between individual rounds.

                  Stamina points are spent to power combat trick enhancements — special augments to combat feats that make them more powerful or flexible. Almost every combat feat in the game has at least one associated combat trick. For example, Power Attack's combat trick allows the fighter to spend 2 stamina points to double the damage bonus from Power Attack on a single attack. The Cleave trick allows spending 1 point to take the Cleave action without provoking an attack of opportunity.

                  The system encourages active resource management in combat without requiring feat slots. Fighters who invest in combat feats gain more options from the stamina system, making it a meaningful differentiator between fighters who specialize in the same weapons. At high levels, fighters will typically have 8–14 stamina points per combat, enough for several powerful tricks without making every attack trivially enhanced.

                  This variant pairs especially well with Automatic Bonus Progression, as it provides meaningful offensive flexibility that compensates for the removal of buff items like the Belt of Giant Strength.
                  """,
                  summary: "Fighters gain a stamina pool (Con mod + level) to spend on combat feat enhancements called combat tricks.",
                  source: "Pathfinder Unchained",
                  isPremium: true),

            .make("Variant Multiclassing",
                  category: "Unchained Systems",
                  body: """
                  Variant Multiclassing allows a character to take a secondary class that provides a structured half-progression of that class's key abilities, without requiring the character to split their class levels. Instead, the character selects a secondary class at character creation and sacrifices half their feat slots (at 3rd, 7th, 11th, 15th, and 19th level) to gain secondary class powers.

                  The secondary class abilities gained follow a fixed progression unique to each class — typically the most iconic 5 abilities of the class spread across those five levels. For example, a fighter who takes secondary rogue gains: rogue talents at 3rd and 11th level, sneak attack +1d6 at 7th level, uncanny dodge at 15th level, and a bonus rogue talent at 19th level. The fighter still advances normally in all other respects: full BAB, fighter feats, armor training, weapon training, and all level-dependent fighter abilities.

                  This variant allows thematic combinations that are mechanically awkward under normal multiclassing — a wizard with some paladin features, a rogue with cleric healing, a fighter with enough druidic nature-sense to be a woodland scout — without the level-split penalties that normally make such builds nonviable. It is recommended for groups who find the normal multiclassing system too punishing and want to reward creative character concepts.
                  """,
                  summary: "Sacrifice every-other feat slot to gain a secondary class's key abilities without splitting your class level.",
                  source: "Pathfinder Unchained",
                  isPremium: true),
        ]

        for rule in rules {
            try await db.insertRule(rule)
        }
    }
}
