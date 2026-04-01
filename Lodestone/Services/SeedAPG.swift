import Foundation

// NOTE: APG Base Classes (Alchemist, Cavalier, Inquisitor, Oracle, Summoner, Witch)
// are seeded in SeedClasses.swift. This file seeds APG feats.

// MARK: - FeatEntry factory (APG)
private extension FeatEntry {
    static func make(
        _ title: String,
        featType: String,
        prerequisites: String,
        benefit: String,
        normal: String = "",
        special: String = "",
        summary: String,
        source: String = "Core Rulebook",
        isPremium: Bool = false
    ) -> FeatEntry {
        FeatEntry(
            id: UUID(),
            title: title,
            summary: summary,
            isPremium: isPremium,
            prerequisites: prerequisites,
            benefit: benefit,
            normal: normal,
            special: special,
            featType: featType,
            source: source
        )
    }
}

extension SeedDataBuilder {
    func seedAPG() async throws {
        try await seedAPGFeats()
    }

    private func seedAPGFeats() async throws {
        let feats: [FeatEntry] = [

            // MARK: - Advanced Player's Guide Feats

            .make("Acrobatic Steps",
                  featType: "General",
                  prerequisites: "Nimble Moves",
                  benefit: "Whenever you move, you may move through up to 10 feet of difficult terrain each round as if it were normal terrain.",
                  summary: "Move through up to 10 feet of difficult terrain per round as normal terrain.",
                  source: "Advanced Player's Guide",
                  isPremium: true),

            .make("Allied Spellcaster",
                  featType: "General",
                  prerequisites: "Caster level 1st",
                  benefit: "Whenever you are adjacent to an ally who also has this feat, you receive a +2 bonus on level checks made to overcome spell resistance. If your ally is preparing or casting the same spell as you on the same turn, the bonus increases to +4.",
                  summary: "+2 (or +4) bonus on caster level checks to overcome spell resistance when adjacent to an ally with this feat.",
                  source: "Advanced Player's Guide",
                  isPremium: true),

            .make("Arcane Blast",
                  featType: "General",
                  prerequisites: "Ability to cast arcane spells, caster level 10th",
                  benefit: "As a standard action, you can expend one of your arcane spell slots to make a ranged touch attack against any single target within 30 feet. If you hit, the target takes 2d6 points of damage plus 1d6 points of damage for each spell level of the spell slot you expended.",
                  summary: "Expend an arcane spell slot to make a ranged touch attack dealing 2d6 + 1d6/spell level damage.",
                  source: "Advanced Player's Guide",
                  isPremium: true),

            .make("Arcane Shield",
                  featType: "General",
                  prerequisites: "Ability to cast arcane spells, caster level 10th",
                  benefit: "As an immediate action, you can expend one of your arcane spell slots to grant yourself a deflection bonus to your Armor Class equal to the level of the spell slot you expended. This bonus lasts for 1 round.",
                  summary: "Expend an arcane spell slot as an immediate action to gain a deflection bonus to AC equal to the spell's level for 1 round.",
                  source: "Advanced Player's Guide",
                  isPremium: true),

            .make("Arcane Talent",
                  featType: "General",
                  prerequisites: "Cha 10",
                  benefit: "Choose one 0-level spell from the sorcerer/wizard spell list. You can cast that spell three times per day as a spell-like ability. The caster level for this ability is equal to your character level, and the save DC is Charisma-based.",
                  summary: "Cast one chosen 0-level arcane spell 3 times per day as a spell-like ability.",
                  source: "Advanced Player's Guide",
                  isPremium: true),

            .make("Aspect of the Beast",
                  featType: "General",
                  prerequisites: "Wild shape class feature",
                  benefit: "Your wild nature manifests in one of the following ways. You choose the manifestation when you take this feat, and once selected it cannot be changed: Night Senses (low-light vision or 60 ft darkvision), Claws of the Beast (two claw attacks dealing 1d4), Predator's Leap (always count as having a running start for jump checks), Wild Ferocity (continue fighting at negative hp like a barbarian).",
                  summary: "Gain one permanent bestial feature: night senses, natural claws, enhanced jumping, or ferocity.",
                  source: "Advanced Player's Guide",
                  isPremium: true),

            .make("Bashing Finish",
                  featType: "Combat",
                  prerequisites: "Improved Shield Bash, Shield Master, Two-Weapon Fighting, BAB +11",
                  benefit: "Whenever you confirm a critical hit with a one-handed or two-handed weapon, you can make a shield bash attack against the same opponent as a free action.",
                  summary: "Make a free shield bash after confirming a critical hit.",
                  source: "Advanced Player's Guide",
                  isPremium: true),

            .make("Bloody Assault",
                  featType: "Combat",
                  prerequisites: "Str 13, Power Attack, BAB +6",
                  benefit: "You can choose to make a bloody assault as a full-attack action. When doing so, you take a –5 penalty on all melee attack rolls and combat maneuver checks until your next turn, but each weapon that hits deals 1d4 points of bleed damage in addition to its normal damage.",
                  summary: "–5 to attack for a full-attack; each hit causes 1d4 bleed damage.",
                  source: "Advanced Player's Guide",
                  isPremium: true),

            .make("Bolstered Resilience",
                  featType: "General",
                  prerequisites: "Improved Toughness",
                  benefit: "Once per day as an immediate action, you can double your damage reduction for 1 minute.",
                  summary: "Once per day, double your DR for 1 minute as an immediate action.",
                  source: "Advanced Player's Guide",
                  isPremium: true),

            .make("Camouflage",
                  featType: "General",
                  prerequisites: "Survival 6 ranks",
                  benefit: "You can use the Stealth skill to hide in any of your favored terrains, even if the terrain doesn't grant cover or concealment.",
                  summary: "Hide in your favored terrain without requiring cover or concealment.",
                  source: "Advanced Player's Guide",
                  isPremium: true),

            .make("Channel Force",
                  featType: "General",
                  prerequisites: "Str 13, channel energy class feature",
                  benefit: "When you channel energy, you can choose to affect only one target within 30 feet. If you do, you may also bull rush or pull that target 5 feet as a free action.",
                  summary: "Channel energy to bull rush or pull one target 5 feet.",
                  source: "Advanced Player's Guide",
                  isPremium: true),

            .make("Combat Patrol",
                  featType: "Combat",
                  prerequisites: "Combat Reflexes, Mobility, Spring Attack, BAB +5",
                  benefit: "As a move action, you can increase your threatened area by 5 feet until the beginning of your next turn. This increase applies to all attacks of opportunity you make until the start of your next turn.",
                  summary: "As a move action, expand your threatened area by 5 feet for attacks of opportunity until your next turn.",
                  source: "Advanced Player's Guide",
                  isPremium: true),

            .make("Coordinated Defense",
                  featType: "Combat",
                  prerequisites: "Combat Expertise or Dodge",
                  benefit: "Whenever you are adjacent to an ally who also has this feat, you receive a +2 dodge bonus to your CMD. This bonus increases to +4 when you are being affected by a bull rush, grapple, overrun, or trip attempt.",
                  summary: "+2 CMD when adjacent to an ally with this feat; +4 against specific maneuvers.",
                  source: "Advanced Player's Guide",
                  isPremium: true),

            .make("Coordinated Maneuvers",
                  featType: "Combat",
                  prerequisites: "Combat Expertise",
                  benefit: "Whenever you are adjacent to an ally who also has this feat, you receive a +2 bonus to your CMB on all combat maneuver checks. This bonus doubles to +4 if your ally is currently flanking your opponent.",
                  summary: "+2 CMB on combat maneuver checks when adjacent to an ally with this feat.",
                  source: "Advanced Player's Guide",
                  isPremium: true),

            .make("Dastardly Finish",
                  featType: "Combat",
                  prerequisites: "Sneak attack +5d6",
                  benefit: "You can attempt to finish off a cowering or stunned opponent. Against such a foe, you can make a coup de grace attempt as a standard action.",
                  summary: "Coup de grace cowering or stunned creatures as a standard action.",
                  source: "Advanced Player's Guide",
                  isPremium: true),

            .make("Death or Glory",
                  featType: "Combat",
                  prerequisites: "Str 13, Power Attack, BAB +6",
                  benefit: "Against Large or larger opponents, you can make a single melee attack at a –4 penalty to your AC but with a +4 bonus on your attack roll and damage. You can also make this attack as an immediate action after a creature of Large or larger size hits you with a melee attack, but you also suffer the –4 AC penalty until the start of your next turn.",
                  summary: "–4 to AC, +4 to attack and damage vs Large or larger creatures; usable as immediate action after being hit.",
                  source: "Advanced Player's Guide",
                  isPremium: true),

            .make("Defensive Combat Training",
                  featType: "Combat",
                  prerequisites: "None",
                  benefit: "You excel at defending yourself from all manner of combat maneuvers. You treat your total Hit Dice as your base attack bonus when calculating your Combat Maneuver Defense.",
                  summary: "Use total HD instead of BAB when calculating CMD.",
                  source: "Advanced Player's Guide",
                  isPremium: true),

            .make("Disengaging Feint",
                  featType: "Combat",
                  prerequisites: "Bluff 3 ranks, Combat Expertise, Improved Feint",
                  benefit: "When you successfully feint, you can move up to your speed without provoking attacks of opportunity from the target of your feint.",
                  summary: "A successful feint lets you move your full speed without provoking AoOs from the feinted target.",
                  source: "Advanced Player's Guide",
                  isPremium: true),

            .make("Disengaging Shot",
                  featType: "Combat",
                  prerequisites: "Dodge, Mobility, Point-Blank Shot",
                  benefit: "After making a ranged attack, you may take a 5-foot step even if you have already moved this turn. This movement does not provoke attacks of opportunity.",
                  summary: "Take a free 5-foot step after a ranged attack, even if you already moved.",
                  source: "Advanced Player's Guide",
                  isPremium: true),

            .make("Disrupting Shot",
                  featType: "Combat",
                  prerequisites: "Dex 13, Point-Blank Shot, BAB +6",
                  benefit: "As an immediate action, when an adjacent ally is targeted by a ranged spell, you may make a single ranged attack at your highest bonus. If you hit, the caster must make a concentration check (DC = 10 + damage dealt + spell level) or lose the spell.",
                  summary: "As an immediate action, make a ranged attack to force a caster targeting your ally to make a concentration check.",
                  source: "Advanced Player's Guide",
                  isPremium: true),
        ]

        for feat in feats {
            try await db.insertFeat(feat)
        }
    }
}
