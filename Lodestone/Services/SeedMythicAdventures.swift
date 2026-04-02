import Foundation

// MARK: - ClassEntry factory (local — mirrors SeedClasses.swift pattern)
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
        source: String,
        isPremium: Bool
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

// MARK: - RuleEntry factory (local — mirrors SeedRules.swift pattern)
private extension RuleEntry {
    static func make(
        _ title: String,
        category: String,
        body: String,
        summary: String,
        source: String,
        isPremium: Bool
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

// MARK: - FeatEntry factory (local — mirrors SeedFeats.swift pattern)
private extension FeatEntry {
    static func make(
        _ title: String,
        featType: String,
        prerequisites: String,
        benefit: String,
        normal: String = "",
        special: String = "",
        summary: String,
        source: String,
        isPremium: Bool
    ) -> FeatEntry {
        FeatEntry(
            id: seededUUID(title + source),
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
    func seedMythicAdventures() async throws {

        // MARK: - Mythic Paths (as ClassEntry)

        let mythicPaths: [ClassEntry] = [

            .make("Archmage",
                  hitDie: "d6",
                  skillRanks: 2,
                  bab: "Medium",
                  fort: "Poor",
                  ref: "Poor",
                  will: "Good",
                  classSkills: [
                      "Appraise", "Craft", "Fly", "Knowledge (all)",
                      "Linguistics", "Profession", "Spellcraft", "Use Magic Device"
                  ],
                  summary: "Channel the overwhelming power of pure arcane magic.",
                  desc: """
                  The Archmage mythic path transforms an already-powerful spellcaster into a wielder of transcendent arcane force. Where mortal mages study for decades to master a handful of powerful spells, the Archmage has touched the raw fabric of magic itself and emerged changed.

                  Each Archmage tier grants access to archmage arcana — potent abilities that reshape how magic works for the character. At 1st, 3rd, 6th, and 9th tiers, the Archmage unlocks increasingly powerful arcana. The signature ability wild arcana allows spending one use of mythic power to cast any arcane spell from the Archmage's class list, even one not prepared or known, at the character's maximum spell level.

                  The Archmage also benefits from hard to kill (automatic stabilization at negative HP, death only at –2× Con score) and amazing initiative (add mythic tier to initiative; spend mythic power for an extra standard action). At higher tiers, the Archmage's spells become extraordinarily difficult to resist or counter, reshaping the battlefield with divine ease.
                  """,
                  source: "Mythic Adventures",
                  isPremium: true),

            .make("Champion",
                  hitDie: "d12",
                  skillRanks: 4,
                  bab: "Full",
                  fort: "Good",
                  ref: "Poor",
                  will: "Poor",
                  classSkills: [
                      "Acrobatics", "Climb", "Craft", "Handle Animal",
                      "Intimidate", "Profession", "Ride", "Swim"
                  ],
                  summary: "Become an unstoppable force of martial destruction.",
                  desc: """
                  The Champion mythic path elevates a martial warrior to near-godlike levels of physical prowess. Champions strike harder, move faster, and shrug off wounds that would kill lesser warriors. They are the embodiment of war made manifest.

                  Champion's strike abilities define the path: fleet charge (charge as a swift action after a move action), sudden attack (make one attack at full bonus as a swift action), and punishing blow (attacks that reduce enemy to 0 HP deal maximum damage) are among the choices available as the Champion advances. Fleet warrior allows moving at full speed while charging without the normal restrictions.

                  The Champion's hard to kill ability and mythic power surge (add 1d6 to any d20 roll by spending mythic power) make them nearly impossible to put down. At the pinnacle of this path, the legendary champion stands as a figure of martial legend, a force of nature in physical form capable of acts that defy mortal limits.
                  """,
                  source: "Mythic Adventures",
                  isPremium: true),

            .make("Guardian",
                  hitDie: "d10",
                  skillRanks: 4,
                  bab: "Full",
                  fort: "Good",
                  ref: "Poor",
                  will: "Poor",
                  classSkills: [
                      "Craft", "Handle Animal", "Heal", "Intimidate",
                      "Knowledge (dungeoneering)", "Knowledge (engineering)",
                      "Profession", "Ride", "Sense Motive"
                  ],
                  summary: "Stand as an unbreakable bulwark protecting your allies.",
                  desc: """
                  The Guardian mythic path is for those who place themselves between danger and the people they protect. Where others charge into battle seeking glory, the Guardian endures — absorbing punishment that would shatter lesser beings and turning that endurance into a weapon.

                  Absorb blow allows the Guardian to reduce damage taken by spending mythic power, and guardian's call can redirect attacks targeting allies back onto the Guardian. Mythic saves and impervious make the Guardian extraordinarily difficult to harm with both mundane and magical attacks.

                  The Guardian's hard to kill passive means they remain standing long after mortal warriors would have fallen. As they advance, they become more resistant to conditions, effects, and damage types. At the apex of this path, the Guardian is an immovable object — a wall of resolve and endurance that no force in the mortal world can topple.
                  """,
                  source: "Mythic Adventures",
                  isPremium: true),

            .make("Hierophant",
                  hitDie: "d8",
                  skillRanks: 4,
                  bab: "Medium",
                  fort: "Good",
                  ref: "Poor",
                  will: "Good",
                  classSkills: [
                      "Craft", "Diplomacy", "Handle Animal", "Heal",
                      "Knowledge (nature)", "Knowledge (religion)",
                      "Profession", "Sense Motive", "Spellcraft", "Survival"
                  ],
                  summary: "Wield divine power beyond mortal comprehension.",
                  desc: """
                  The Hierophant mythic path channels the divine in ways that transcend normal clerical or druidic power. Where ordinary divine casters petition their gods for magic, the Hierophant has become a direct conduit — a living expression of divine will made manifest.

                  Divine surge and recalled blessing allow the Hierophant to push their divine magic beyond normal limits: recasting expended spells, augmenting healing to extraordinary levels, and channeling energy with overwhelming force. Inspired spell and enduring blessing extend the duration and power of divine effects. Faith's reach allows touch spells to be cast at range.

                  The Hierophant's connection to their deity deepens with each tier, eventually allowing them to act as a near-avatar of divine will. They can restore life, smite evil, and protect the innocent with a power that echoes throughout the planes. Their miracles are not petitions — they are commands answered by the divine itself.
                  """,
                  source: "Mythic Adventures",
                  isPremium: true),

            .make("Marshal",
                  hitDie: "d8",
                  skillRanks: 4,
                  bab: "Medium",
                  fort: "Poor",
                  ref: "Poor",
                  will: "Good",
                  classSkills: [
                      "Bluff", "Craft", "Diplomacy", "Handle Animal",
                      "Intimidate", "Knowledge (engineering)", "Knowledge (geography)",
                      "Knowledge (history)", "Knowledge (local)", "Perception",
                      "Profession", "Ride", "Sense Motive"
                  ],
                  summary: "Lead with mythic authority and inspire allies to greatness.",
                  desc: """
                  The Marshal mythic path transforms a leader into a force multiplier of mythic proportions. Where ordinary commanders inspire through training and charisma, the Marshal shapes the battlefield itself — their presence turning ordinary soldiers into a legendary force.

                  Marshal's order abilities define the path: advance (grant allies movement as a free action), decisive strike (grant an ally an immediate attack of opportunity), and champion's display (allow an ally to use their champion path ability). Inspiring call can affect all allies simultaneously, and fleet movement grants extraordinary speed to those the Marshal leads.

                  As the Marshal advances, their aura of command grows to mythic scale. They can coordinate complex maneuvers with a glance, inspire allies who have fallen into despair, and turn the tide of battles that seemed already lost. The pinnacle Marshal is not the greatest warrior in the battle — they are the reason all the other warriors become great.
                  """,
                  source: "Mythic Adventures",
                  isPremium: true),

            .make("Trickster",
                  hitDie: "d8",
                  skillRanks: 6,
                  bab: "Medium",
                  fort: "Poor",
                  ref: "Good",
                  will: "Poor",
                  classSkills: [
                      "Acrobatics", "Bluff", "Climb", "Craft", "Diplomacy",
                      "Disable Device", "Disguise", "Escape Artist", "Knowledge (local)",
                      "Perception", "Profession", "Sense Motive",
                      "Sleight of Hand", "Stealth", "Use Magic Device"
                  ],
                  summary: "Bend luck and reality through mythic cunning.",
                  desc: """
                  The Trickster mythic path rewards those who win through cleverness, deception, and sheer audacity. Where other mythic paths grant power through brute force or divine favor, the Trickster rewrites the rules — bending luck, bypassing defenses, and making the impossible merely a matter of style.

                  Trickster attack abilities include deadly throw (add Dex to ranged damage), fleet feint (feint as a swift action), and surprise strike (treat targets as flat-footed for the first attack each round). Transfer magic allows the Trickster to temporarily steal magical properties from items. Vanish and mirror dodge provide extraordinary defensive mobility.

                  The Trickster's affinity with skills grows to supernatural levels — skills that others max out become trivial, and skill-based tricks become increasingly implausible. At the highest tiers, the Trickster can reshape perception of reality itself: making the impossible seem routine and the catastrophic seem inconsequential. They are luck personified, and luck always wins.
                  """,
                  source: "Mythic Adventures",
                  isPremium: true),
        ]

        for cls in mythicPaths {
            try await db.insertClass(cls)
        }

        // MARK: - Mythic Rules

        let mythicRules: [RuleEntry] = [

            .make("Mythic Power",
                  category: "Mythic Rules",
                  body: """
                  Each mythic character has a pool of mythic power equal to 3 + twice their mythic tier. This pool is spent to activate mythic abilities and powers.

                  SURGE: The most basic use of mythic power is the surge ability — spend one use of mythic power to add 1d6 to any d20 roll after seeing the result but before the outcome is determined. The surge die increases at higher mythic tiers: 1d6 at tiers 1–4, 1d8 at tiers 5–8, and 1d10 at tiers 9–10.

                  MYTHIC ABILITIES: Most mythic path abilities and mythic feats require spending one or more uses of mythic power to activate.

                  MYTHIC SPELLS: Casting the mythic version of a spell requires expending one additional use of mythic power when casting.

                  RECOVERY: A mythic character recovers all uses of mythic power after resting for 8 full hours. They may also spend two uses to recover as if fully rested in 1 hour (see Recuperation).
                  """,
                  summary: "Pool of points spent to activate mythic abilities and surge d20 rolls.",
                  source: "Mythic Adventures",
                  isPremium: true),

            .make("Mythic Tiers",
                  category: "Mythic Rules",
                  body: """
                  Mythic characters advance through 10 mythic tiers. Each tier represents a step further along the mythic path, granting increased power and unlocking new abilities.

                  ADVANCEMENT: Characters advance to the next mythic tier by completing a mythic trial — a story-defined challenge decreed by the GM. Tier advancement is separate from character level advancement.

                  TIER BENEFITS: Each tier grants the following:
                  • +1 to one ability score of the character's choice (stacks with other bonuses)
                  • One path ability from the character's mythic path
                  • Increased mythic power pool (3 + 2× tier)
                  • At 3rd tier: +1 bonus to all saving throws; at 6th tier: DR 5/epic; at 9th tier: +2 bonus to all ability scores

                  TIER RANGES:
                  • Tiers 1–3: Lesser mythic — powerful but not yet transcendent
                  • Tiers 4–6: Moderate mythic — clearly beyond mortal limits
                  • Tiers 7–9: Greater mythic — semi-divine, world-shaking power
                  • Tier 10: Mythic champion — apex of mortal mythic potential

                  DUAL-PATH: At 3rd tier, a character may take a second mythic path, choosing a path ability from that path at 3rd tier and every tier thereafter (but only one path's capstone).
                  """,
                  summary: "Characters advance through 10 mythic tiers, each granting new abilities and increased power.",
                  source: "Mythic Adventures",
                  isPremium: true),

            .make("Mythic Trials",
                  category: "Mythic Rules",
                  body: """
                  Mythic characters must complete story-based trials to advance mythic tiers. Trials are GM-defined challenges that represent the mythic destiny of the character — not simple combat encounters, but pivotal story moments.

                  NATURE OF TRIALS: A trial could be defeating a legendary foe, performing an impossible feat of heroism, recovering a divine artifact, making a world-altering sacrifice, or completing a quest of mythic significance. The key distinction from ordinary challenges is narrative weight: a trial changes the world, or the character, in a meaningful way.

                  GRANTING MYTHIC TIERS: When a character completes a trial, the GM grants a mythic tier advancement. A single trial typically advances the character by one tier, though particularly monumental challenges might warrant more.

                  DESIGNING TRIALS: Effective trials tie into the character's mythic path theme. An Archmage might need to pierce the veil of arcane mysteries and bind a magical phenomenon. A Champion might need to slay a mythic monster that has terrorized a region for centuries. A Hierophant might need to restore faith to a dying religion through a genuine miracle.

                  TRIAL COUNT: The total number of trials needed to reach tier 10 is 10. GMs should space them throughout the campaign, making each one a memorable story milestone.
                  """,
                  summary: "Story-based challenges that must be completed to advance mythic tiers.",
                  source: "Mythic Adventures",
                  isPremium: true),

            .make("Hard to Kill",
                  category: "Mythic Rules",
                  body: """
                  Mythic characters are extraordinarily difficult to kill. The hard to kill universal mythic ability fundamentally changes how death works for mythic characters.

                  AUTOMATIC STABILIZATION: Whenever a mythic character is below 0 hit points, they automatically stabilize. No Constitution check is needed; they do not lose additional hit points each round from bleeding out.

                  DELAYED DEATH: A mythic character does not die until their negative hit point total equals or exceeds twice their Constitution score. A character with Constitution 14 does not die until reaching –28 hit points, not –14 as for ordinary characters.

                  INTERACTION WITH HEALING: Hard to kill does not prevent the dying condition — a mythic character at negative HP is still dying and cannot act normally. It merely means they survive until a greater threshold is crossed or aid arrives.

                  INTERACTION WITH INSTANT DEATH: Spells and effects that cause instant death (such as finger of death or death effects with a failed save) still function normally against mythic characters unless the character has additional mythic protections. Hard to kill applies to hit point damage only.
                  """,
                  summary: "Mythic characters auto-stabilize and only die at negative HP equal to twice Con score.",
                  source: "Mythic Adventures",
                  isPremium: true),

            .make("Amazing Initiative",
                  category: "Mythic Rules",
                  body: """
                  Mythic characters gain the amazing initiative ability, which enhances their ability to react and act in combat.

                  INITIATIVE BONUS: A mythic character adds their mythic tier to all initiative checks. At tier 5, this represents a +5 bonus to initiative — a significant edge in determining combat order.

                  EXTRA ACTION: Once per round, a mythic character can spend one use of mythic power to take an extra standard action during their turn. This action is in addition to the character's normal actions and does not replace any existing action. The extra standard action can be used for an additional attack, spell, or any other standard action.

                  LIMITATIONS: The extra standard action from amazing initiative cannot be used to take another swift action (swift actions are still limited to one per round). It cannot be combined with haste to produce more than one extra attack on a full attack action.
                  """,
                  summary: "Add mythic tier to initiative; spend mythic power for an extra standard action per round.",
                  source: "Mythic Adventures",
                  isPremium: true),

            .make("Recuperation",
                  category: "Mythic Rules",
                  body: """
                  Mythic characters recover from wounds and exhaustion with supernatural speed.

                  FULL RECOVERY ON REST: After resting for 8 or more hours, a mythic character fully recovers all lost hit points and ability score damage (including ability drain from non-mythic sources that permits natural recovery). This is in addition to the normal benefits of rest.

                  ACCELERATED RECOVERY: By spending two uses of mythic power, a mythic character can recover as though they had rested for 8 hours, doing so in only 1 hour. This accelerated recovery grants full HP restoration and ability score recovery.

                  DAILY ABILITIES: The accelerated recovery from spending mythic power also resets daily-use abilities as if a full night's rest had occurred. This includes prepared spells, channel energy uses, and similar rest-dependent resources.

                  LIMITATIONS: Recuperation does not remove curse effects, disease, or permanent negative levels. It does not function if the character is suffering from an effect that specifically prevents natural healing. The two-uses-for-one-hour version can only be used once per day.
                  """,
                  summary: "After 8 hours rest, fully recover all HP and ability damage; spend 2 mythic power for 1-hour version.",
                  source: "Mythic Adventures",
                  isPremium: true),

            .make("Mythic Saving Throws",
                  category: "Mythic Rules",
                  body: """
                  Mythic characters have enhanced resistance to harmful effects.

                  TIER BONUS: At 3rd mythic tier, a mythic character gains a +1 bonus to all saving throws. This bonus represents the growing resilience of mythic characters against magical and extraordinary threats.

                  REROLL ON FAILURE: A mythic character can spend one use of mythic power when they fail a saving throw to reroll it. They keep the higher of the two results. This can turn a catastrophic failure into a success, but does not guarantee success.

                  IMMUNITY DEVELOPMENT: At higher mythic tiers, path abilities can grant immunity to specific conditions, energy types, or spell effects. These immunities are purchased through path abilities, not granted automatically.

                  INTERACTION WITH SPELLS: When a mythic character's spell or ability forces a save, non-mythic creatures often face additional penalties or reduced odds of success, as mythic power infuses the effect with greater force than ordinary magic.
                  """,
                  summary: "Gain saving throw bonuses per tier; spend mythic power to reroll failed saves.",
                  source: "Mythic Adventures",
                  isPremium: true),

            .make("Surge",
                  category: "Mythic Rules",
                  body: """
                  The surge ability allows mythic characters to push beyond their natural limits at a critical moment, turning near-misses into successes.

                  ACTIVATION: Spend one use of mythic power after seeing the result of a d20 roll but before the outcome is determined. Add the surge die result to the total.

                  SURGE DIE PROGRESSION:
                  • Mythic tiers 1–4: 1d6
                  • Mythic tiers 5–8: 1d8
                  • Mythic tiers 9–10: 1d10

                  ELIGIBLE ROLLS: Surge can be applied to any d20 roll — attack rolls, skill checks, ability checks, and saving throws. It cannot be applied to rolls that are not d20-based (such as damage rolls or concentration checks using caster level).

                  TIMING: The decision to surge must be made after seeing the die result but before the GM announces the outcome. A player cannot wait to see if an attack hits before deciding to surge. However, they can see that they rolled a 6 and decide to add 1d6 before learning if AC 17 was met.

                  STACKING: Multiple surge effects cannot be stacked on the same roll. Only one use of mythic power can be spent on surge for any single d20 roll.
                  """,
                  summary: "Spend 1 mythic power after rolling to add 1d6–1d10 to any d20 roll.",
                  source: "Mythic Adventures",
                  isPremium: true),

            .make("Mythic Feats",
                  category: "Mythic Rules",
                  body: """
                  Mythic feats are enhanced versions of standard Pathfinder feats, available only to mythic characters.

                  PREREQUISITES: Each mythic feat requires the corresponding base feat. A character cannot take Mythic Power Attack without already having Power Attack.

                  ACQUISITION: A mythic character gains one mythic feat at 1st mythic tier and an additional mythic feat at every odd mythic tier (1st, 3rd, 5th, 7th, 9th). A character with mythic tier 10 has taken 5 mythic feats.

                  ENHANCED EFFECTS: Mythic feats typically augment the base feat in two ways:
                  1. Passive enhancement — an always-on improvement to the base feat's effect (often doubling a bonus or removing a penalty)
                  2. Active enhancement — an additional effect triggered by spending mythic power

                  SELECTING MYTHIC FEATS: Mythic feats do not have to match a character's mythic path. A Champion can take Mythic Spell Focus if they also have Spell Focus. The choice is purely based on what the character wants to enhance.

                  NON-MYTHIC PREREQUISITES: Standard feat prerequisites still apply. If a mythic feat requires Power Attack, the character must still meet the Strength 13 prerequisite for Power Attack itself.
                  """,
                  summary: "Enhanced versions of standard feats; one taken per odd mythic tier.",
                  source: "Mythic Adventures",
                  isPremium: true),

            .make("Mythic Spells",
                  category: "Mythic Rules",
                  body: """
                  Mythic spells are augmented versions of standard spells that produce effects far beyond what normal magic allows.

                  CASTING MYTHIC SPELLS: When casting a spell that has a mythic version, a mythic spellcaster can expend one use of mythic power to cast the mythic version instead of the standard version. The spell slot used is the same as for the standard spell.

                  MYTHIC SPELL EFFECTS: Each mythic spell has unique augmentations. Mythic fireball might deal maximum damage without a save, or affect a far larger area. Mythic charm person might affect creatures normally immune to mind effects. The enhancements are spell-specific and listed in the spell's mythic entry.

                  ACCESS: Only mythic characters can cast mythic spells. Non-mythic casters who use scrolls or wands of mythic spells must succeed on a Use Magic Device check (DC 20 + 3× spell level) and still cannot access the mythic augmentation.

                  DISPELLING MYTHIC SPELLS: To counterspell or dispel a mythic spell, the opposing caster must be mythic or use mythic dispel magic. Standard dispel magic has a 20% chance per caster level difference to fail entirely against mythic spell effects.
                  """,
                  summary: "Augmented spells cast by spending mythic power; only accessible to mythic characters.",
                  source: "Mythic Adventures",
                  isPremium: true),

            .make("Mythic Monsters",
                  category: "Mythic Rules",
                  body: """
                  Mythic monsters are creatures that have been infused with mythic power, making them far more dangerous than their base stat blocks suggest.

                  SIMPLE MYTHIC TEMPLATE: Apply to any monster to create a mythic version quickly.
                  • CR: +1
                  • HP: +mythic rank × 5
                  • AC: +2 deflection bonus
                  • Saves: +2 resistance bonus
                  • Attacks: +2 to attack and damage rolls
                  • Abilities: Gains mythic power (3 + 2× mythic rank uses/day) and one simple mythic ability
                  • DR/epic equal to mythic rank

                  FULL MYTHIC TEMPLATE: Detailed mythic powers tied to the creature's theme. CR increase varies. Requires individual design. Grants multiple mythic abilities, mythic power pool, and thematic supernatural powers.

                  MYTHIC RANK: Separate from mythic tier (which applies to player characters). A creature's mythic rank typically ranges from 1 to 10, representing how deeply it has been touched by mythic power.

                  DEFEATING MYTHIC MONSTERS: Non-mythic characters can fight mythic monsters but face significant penalties. Some mythic monster abilities only affect non-mythic creatures, and DR/epic cannot be bypassed by non-mythic weapons.
                  """,
                  summary: "Creatures with mythic templates gain DR/epic, mythic power, and enhanced statistics.",
                  source: "Mythic Adventures",
                  isPremium: true),

            .make("Mythic Items",
                  category: "Mythic Rules",
                  body: """
                  Mythic items are legendary objects imbued with mythic power, ranging from minor artifacts to items of world-altering significance.

                  ITEM TIERS:
                  • Minor artifacts: Powerful unique items, typically requiring mythic rank 1–3 to activate fully. Cannot be created with standard crafting rules.
                  • Major artifacts: Weapons and items of enormous historical significance. Mythic rank 4–7 to use. Practically indestructible by non-mythic means.
                  • Legendary artifacts: Items tied to the fabric of the cosmos. Mythic rank 8+ to fully utilize. Destruction requires specific, often world-altering methods.

                  USING MYTHIC ITEMS: Non-mythic characters can handle mythic items but often cannot activate their most powerful abilities. A non-mythic fighter can swing a mythic sword but cannot activate the mythic strike ability that makes it legendary.

                  RESONANCE: Mythic items resonate with mythic users of compatible paths. A Champion using a mythic weapon created for champions may unlock bonus abilities not listed in the item's description.

                  CREATION: Mythic items cannot be created using standard item creation feats. They are found, gifted by mythic entities, or created through specific narrative events (completing a mythic trial, performing a ritual at a place of power).
                  """,
                  summary: "Legendary artifacts requiring mythic rank to use; minor, major, and legendary tiers.",
                  source: "Mythic Adventures",
                  isPremium: true),
        ]

        for rule in mythicRules {
            try await db.insertRule(rule)
        }

        // MARK: - Mythic Feats

        let mythicFeats: [FeatEntry] = [

            .make("Mythic Power Attack",
                  featType: "Mythic",
                  prerequisites: "Power Attack",
                  benefit: """
                  When using Power Attack, double the bonus damage from Power Attack (so the –1/+2 ratio becomes –1/+4 for one-handed weapons, –1/+6 for two-handed weapons).

                  In addition, you can spend one use of mythic power as a free action to apply Power Attack's damage bonus to all attacks you make until the start of your next turn without incurring the attack roll penalty. These attacks deal the bonus damage but do not take the –1 to attack rolls.
                  """,
                  summary: "Double Power Attack damage bonus; spend mythic power to gain bonus without penalty.",
                  source: "Mythic Adventures",
                  isPremium: true),

            .make("Mythic Cleave",
                  featType: "Mythic",
                  prerequisites: "Cleave",
                  benefit: """
                  Using Cleave no longer provokes attacks of opportunity from creatures other than the target of your initial attack.

                  In addition, you can spend one use of mythic power when you hit with a Cleave attempt to continue cleaving without limit for 1 round — as long as each attack hits and an eligible target is within reach, you may make additional Cleave attacks. You may cleave the same target multiple times in a round with this ability.
                  """,
                  summary: "Cleave doesn't provoke AoO; spend mythic power to cleave without limit for 1 round.",
                  source: "Mythic Adventures",
                  isPremium: true),

            .make("Mythic Combat Expertise",
                  featType: "Mythic",
                  prerequisites: "Combat Expertise",
                  benefit: """
                  The dodge bonus from Combat Expertise also applies to your touch AC and flat-footed AC (normally, dodge bonuses are lost when flat-footed).

                  In addition, you can spend one use of mythic power as an immediate action to gain a +10 dodge bonus to AC until the start of your next turn. This bonus stacks with the normal bonus from Combat Expertise.
                  """,
                  summary: "Expertise bonus applies to touch AC; spend mythic power for +10 dodge for 1 round.",
                  source: "Mythic Adventures",
                  isPremium: true),

            .make("Mythic Deadly Aim",
                  featType: "Mythic",
                  prerequisites: "Deadly Aim",
                  benefit: """
                  When using Deadly Aim, double the bonus damage from Deadly Aim (so the –1/+2 ratio becomes –1/+4 per attack).

                  In addition, you can spend one use of mythic power as a free action to negate the attack roll penalty from Deadly Aim for 1 round while retaining the full doubled damage bonus on all ranged attacks until the start of your next turn.
                  """,
                  summary: "Double Deadly Aim damage bonus; spend mythic power to remove attack penalty for 1 round.",
                  source: "Mythic Adventures",
                  isPremium: true),

            .make("Mythic Improved Initiative",
                  featType: "Mythic",
                  prerequisites: "Improved Initiative",
                  benefit: """
                  Add half your mythic tier (minimum 1) as an additional bonus to initiative checks, stacking with the normal +4 from Improved Initiative and the mythic tier bonus from amazing initiative.

                  In addition, you always act in the surprise round even when you would normally be surprised. You may take a full round's worth of actions in the surprise round rather than just a single action.
                  """,
                  summary: "Add half mythic tier to initiative; always act in surprise round with full actions.",
                  source: "Mythic Adventures",
                  isPremium: true),

            .make("Mythic Iron Will",
                  featType: "Mythic",
                  prerequisites: "Iron Will",
                  benefit: """
                  Once per day when you fail a Will saving throw, you can reroll it as a free action. You keep the higher of the two results.

                  In addition, you can spend one use of mythic power when targeted by a Will save effect from a non-mythic source to automatically succeed on the saving throw without rolling. This applies to spells, spell-like abilities, and supernatural effects originating from non-mythic creatures or casters.
                  """,
                  summary: "Reroll Will saves once per day; spend mythic power for auto-success vs non-mythic sources.",
                  source: "Mythic Adventures",
                  isPremium: true),

            .make("Mythic Lightning Reflexes",
                  featType: "Mythic",
                  prerequisites: "Lightning Reflexes",
                  benefit: """
                  Once per day when you fail a Reflex saving throw, you can reroll it as a free action. You keep the higher of the two results.

                  In addition, you can spend one use of mythic power when targeted by a Reflex save effect from a non-mythic source to automatically succeed on the saving throw without rolling. This applies to breath weapons, area spells, and other Reflex-based effects originating from non-mythic sources.
                  """,
                  summary: "Reroll Reflex saves once per day; spend mythic power for auto-success vs non-mythic sources.",
                  source: "Mythic Adventures",
                  isPremium: true),

            .make("Mythic Toughness",
                  featType: "Mythic",
                  prerequisites: "Toughness",
                  benefit: """
                  Gain 2 additional hit points per mythic tier (in addition to the normal benefits of Toughness). These hit points are gained immediately when you take this feat and increase retroactively as you advance mythic tiers.

                  In addition, your minimum hit point total cannot fall below twice your mythic tier due to Constitution damage or drain. Even if Constitution damage would reduce you to 1 HP or lower, you retain a minimum of 2× mythic tier hit points until the Constitution damage is removed.
                  """,
                  summary: "Gain 2 HP per mythic tier; minimum HP equal to twice mythic tier regardless of Con damage.",
                  source: "Mythic Adventures",
                  isPremium: true),

            .make("Mythic Weapon Focus",
                  featType: "Mythic",
                  prerequisites: "Weapon Focus",
                  benefit: """
                  The bonus from Weapon Focus with the chosen weapon increases to +2 (instead of the normal +1).

                  In addition, you can spend one use of mythic power as a swift action to ignore all miss chances when attacking with the chosen weapon for 1 round. This includes concealment (including total concealment), blur, displacement, and similar effects. It does not grant you the ability to strike incorporeal creatures unless the weapon already has that property.
                  """,
                  summary: "+2 attack with chosen weapon; spend mythic power to ignore all miss chances for 1 round.",
                  source: "Mythic Adventures",
                  isPremium: true),

            .make("Mythic Spell Focus",
                  featType: "Mythic",
                  prerequisites: "Spell Focus",
                  benefit: """
                  The DC bonus from Spell Focus with the chosen school increases to +2 (instead of the normal +1).

                  In addition, you can spend one use of mythic power when a creature succeeds on a saving throw against one of your spells from the chosen school to force that creature to reroll the saving throw and take the worse result. This ability can be used once per round and targets only the most recent save by a single creature.
                  """,
                  summary: "+2 spell DC for chosen school; spend mythic power to force a reroll on successful saves.",
                  source: "Mythic Adventures",
                  isPremium: true),
        ]

        for feat in mythicFeats {
            try await db.insertFeat(feat)
        }
    }
}
