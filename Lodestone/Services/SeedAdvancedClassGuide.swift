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
        source: String = "Advanced Class Guide",
        isPremium: Bool = true
    ) -> ClassEntry {
        ClassEntry(
            id: UUID(),
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

private extension FeatEntry {
    static func make(
        _ title: String,
        featType: String,
        prerequisites: String,
        benefit: String,
        normal: String = "",
        special: String = "",
        summary: String,
        source: String = "Advanced Class Guide",
        isPremium: Bool = true
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
    func seedAdvancedClassGuide() async throws {
        try await seedACGClassesA()
        try await seedACGClassesB()
        try await seedACGFeats()
    }

    private func seedACGClassesA() async throws {
        let classes: [ClassEntry] = [

            .make("Arcanist",
                  hitDie: "d6",
                  skillRanks: 2,
                  bab: "Poor",
                  fort: "Poor",
                  ref: "Poor",
                  will: "Good",
                  classSkills: [
                      "Appraise", "Craft", "Fly", "Knowledge (arcana)",
                      "Knowledge (dungeoneering)", "Knowledge (history)",
                      "Knowledge (planes)", "Knowledge (religion)",
                      "Linguistics", "Profession", "Spellcraft",
                      "Use Magic Device"
                  ],
                  summary: "A hybrid of wizard and sorcerer who prepares spells but casts spontaneously using arcane exploits.",
                  desc: """
                  The arcanist blends the best of both prepared and spontaneous arcane casting. Like a wizard, the arcanist prepares spells from a spellbook each morning; like a sorcerer, they do not expend those prepared spells — instead they choose from their prepared list each time they cast, limited by spell slots.

                  Arcanists use the sorcerer/wizard spell list but progress like a wizard. Their primary class feature is the arcane reservoir — a pool of points equal to 3 plus half their arcanist level — used to fuel exploits. Exploits are special abilities that let the arcanist modify spells or gain new magical effects. Quick study lets the arcanist swap a prepared spell for another from their spellbook as a full-round action.

                  The exploit system is the arcanist's defining strength, allowing deep customization. Potent magic (add reservoir points to increase CL or DC), metamixing (apply metamagic without preparation), and school mastery exploits let arcanists fine-tune their magic to a degree that wizards and sorcerers cannot match.
                  """,
                  source: "Advanced Class Guide", isPremium: true),

            .make("Bloodrager",
                  hitDie: "d10",
                  skillRanks: 4,
                  bab: "Medium",
                  fort: "Good",
                  ref: "Poor",
                  will: "Poor",
                  classSkills: [
                      "Acrobatics", "Climb", "Craft", "Handle Animal",
                      "Intimidate", "Knowledge (arcana)", "Perception",
                      "Ride", "Spellcraft", "Survival", "Swim"
                  ],
                  summary: "A barbarian-sorcerer hybrid who channels a magical bloodline through primal rage.",
                  desc: """
                  The bloodrager is a warrior whose magical bloodline erupts violently in battle. When they enter their bloodrage — a state similar to a barbarian's rage but suffused with raw magical energy — they can cast spells and gain bloodline powers simultaneously. Their combat proficiency sits between full BAB and medium, and their saves follow barbarian good Fort/poor Ref/poor Will progressions.

                  Bloodrager bloodlines parallel sorcerer bloodlines but grant combat-focused powers: an Aberrant bloodrager grows tentacle attacks, a Draconic bloodrager grows wings and a breath weapon, an Undead bloodrager gains fear auras and energy drain. Bloodline powers activate at 4th, 8th, and 16th level.

                  Spellcasting is limited to 4 spell levels (like a ranger), drawing from a restricted sorcerer/wizard list favoring swift, self-buffing spells. Bloodrage ends when the bloodrager is no longer in combat and leaves them fatigued, but the combination of buff spells and bloodline powers active simultaneously makes them devastating in melee.
                  """,
                  source: "Advanced Class Guide", isPremium: true),

            .make("Brawler",
                  hitDie: "d10",
                  skillRanks: 4,
                  bab: "Full",
                  fort: "Good",
                  ref: "Good",
                  will: "Poor",
                  classSkills: [
                      "Acrobatics", "Climb", "Craft", "Escape Artist",
                      "Handle Animal", "Intimidate", "Knowledge (dungeoneering)",
                      "Perception", "Profession", "Ride", "Sense Motive",
                      "Stealth", "Survival", "Swim"
                  ],
                  summary: "A martial brawler who grabs and discards combat feats on the fly during battle.",
                  desc: """
                  The brawler is a martial artist and street fighter who combines monk-style unarmed combat with fighter-like adaptability. Their defining feature is martial flexibility: as a move action, the brawler can temporarily gain any combat feat they meet the prerequisites for, holding it for 1 minute. They can use this ability 3 + half their brawler level times per day.

                  Brawler's flurry allows them to make a full attack with any combination of unarmed strikes and close weapons (improvised, monk, or close-range), functioning like a monk's flurry of blows but without the monk's alignment and equipment restrictions. Maneuver training improves their combat maneuver bonus. Unarmed strike damage progresses like a monk. At higher levels, their AC bonus matches the monk's unarmored AC bonus.

                  The brawler has no spellcasting and relies entirely on physical combat. Their martial flexibility makes them the most adaptable melee class, able to respond to any situation by drawing on the full combat feat library.
                  """,
                  source: "Advanced Class Guide", isPremium: true),

            .make("Hunter",
                  hitDie: "d8",
                  skillRanks: 6,
                  bab: "Medium",
                  fort: "Good",
                  ref: "Good",
                  will: "Poor",
                  classSkills: [
                      "Bluff", "Climb", "Craft", "Handle Animal", "Heal",
                      "Intimidate", "Knowledge (dungeoneering)", "Knowledge (geography)",
                      "Knowledge (nature)", "Perception", "Profession",
                      "Ride", "Sense Motive", "Spellcraft", "Stealth",
                      "Survival", "Swim"
                  ],
                  summary: "A nature warrior bonded to an animal companion who automatically shares teamwork feats.",
                  desc: """
                  The hunter is a wilderness warrior who fights alongside an animal companion of druid-level power. Unlike the ranger's limited companion, the hunter's animal companion advances as if the hunter were a druid of their full level. Combined spells draws from both the druid and ranger spell lists, giving the hunter one of the broadest nature-magic selections in the game.

                  The hunter's most distinctive feature is teamwork feat sharing: the hunter can grant their animal companion any teamwork feat the hunter knows as a free action, and the companion is treated as having that feat. Paired with precise companion (allowing the companion to flank without penalty), this makes hunter and companion a devastating tandem unit.

                  Nature training lets the hunter count levels toward certain druid and ranger abilities. At higher levels, the hunter can briefly grant the companion additional teamwork feats. The hunter/companion pair excels at flanking strategies and works best when both are positioned to exploit every combat opportunity simultaneously.
                  """,
                  source: "Advanced Class Guide", isPremium: true),

            .make("Investigator",
                  hitDie: "d8",
                  skillRanks: 6,
                  bab: "Medium",
                  fort: "Poor",
                  ref: "Good",
                  will: "Good",
                  classSkills: [
                      "Acrobatics", "Appraise", "Bluff", "Climb", "Craft",
                      "Diplomacy", "Disable Device", "Disguise", "Escape Artist",
                      "Heal", "Intimidate", "Knowledge (all)", "Linguistics",
                      "Perception", "Perform", "Profession", "Sense Motive",
                      "Sleight of Hand", "Spellcraft", "Stealth",
                      "Use Magic Device"
                  ],
                  summary: "A scholarly detective who studies targets in combat and strikes for bonus damage.",
                  desc: """
                  The investigator is equal parts detective and martial artist, combining alchemist alchemy with rogue-style precision attacks. Studied combat (swift action) adds Intelligence modifier to attack and damage rolls against one studied target for a number of rounds equal to the investigator's Intelligence modifier. Studied strike (free action, once per study) adds 1d6 per two investigator levels as precision damage on one hit against the studied target.

                  Alchemy functions exactly as the alchemist's, granting access to extracts, mutagen, and bombs. The inspiration pool — equal to Intelligence modifier plus half investigator level — lets the investigator add d6 to any skill check or attack roll without spending an action (or saving throws with a swift action). Many investigator talents expand inspiration uses.

                  The investigator's combination of extraordinary skill access, high INT-based bonuses, and reliable precision damage makes them one of the most versatile characters in play. They function as party face, skill specialist, and capable combatant simultaneously.
                  """,
                  source: "Advanced Class Guide", isPremium: true),
        ]
        for cls in classes { try await db.insertClass(cls) }
    }

    private func seedACGClassesB() async throws {
        let classes: [ClassEntry] = [

            .make("Shaman",
                  hitDie: "d8",
                  skillRanks: 4,
                  bab: "Medium",
                  fort: "Poor",
                  ref: "Poor",
                  will: "Good",
                  classSkills: [
                      "Craft", "Diplomacy", "Fly", "Handle Animal", "Heal",
                      "Knowledge (history)", "Knowledge (nature)", "Knowledge (planes)",
                      "Knowledge (religion)", "Profession", "Ride",
                      "Sense Motive", "Spellcraft", "Survival"
                  ],
                  summary: "A divine conduit who calls on spirits for hexes, spells, and supernatural power.",
                  desc: """
                  The shaman draws power from spirits — mysterious entities tied to concepts, places, and natural forces. At 1st level the shaman chooses a primary spirit (such as Battle, Bones, Flame, Life, Stone, or Waves) that grants a spirit ability, spirit magic (bonus spells), and hexes. At 4th level the shaman gains a wandering spirit each day, adding a second spirit's abilities on the fly.

                  Hexes are drawn from the shaman's spirit list and function similarly to witch hexes: powerful single-target or area effects usable at will or once per target per 24 hours. Shaman's curse lets them extend a hex's duration. The combination of prepared divine spellcasting (drawn from a spirit-modified witch/cleric hybrid list) and daily wandering spirit selection gives the shaman remarkable day-to-day flexibility.

                  At higher levels the shaman can call on greater and grand spirit abilities, including flight, planar communication, and powerful offensive hexes. They are best played as flexible support casters who adapt their daily spirit selection to the expected challenges of each adventure.
                  """,
                  source: "Advanced Class Guide", isPremium: true),

            .make("Skald",
                  hitDie: "d8",
                  skillRanks: 4,
                  bab: "Medium",
                  fort: "Good",
                  ref: "Poor",
                  will: "Good",
                  classSkills: [
                      "Acrobatics", "Bluff", "Climb", "Craft", "Diplomacy",
                      "Escape Artist", "Handle Animal", "Intimidate",
                      "Knowledge (all)", "Linguistics", "Perception", "Perform",
                      "Profession", "Sense Motive", "Sleight of Hand",
                      "Spellcraft", "Swim", "Use Magic Device"
                  ],
                  summary: "A battle poet who inspires allies into a controlled rage with their raging songs.",
                  desc: """
                  The skald is a warrior-bard who channels battle hymns into a supernatural raging song that affects allies rather than just themselves. Raging song functions like bardic performance with a full pool of rounds per day (4 + Charisma modifier at 1st, +2/level thereafter). When the skald performs an inspired rage, all willing allies within 60 feet gain the benefits of the barbarian rage ability — using the skald's strength-bonus numbers — but remain in control of their actions.

                  Skalds can cast spells in medium armor without arcane failure. Their spell list blends the bard's and skald's unique additions, emphasizing combat and battle poetry. Spell kenning lets the skald expend a spell slot to cast any spell from the bard or skald list once per day. Lore master grants the take-10-on-any-Knowledge ability.

                  The skald excels in melee-heavy parties. Inspiring rage transforms a group of fighting-classes into a rampaging horde, and the skald's own above-average BAB and hit die let them participate in the front line while maintaining their song.
                  """,
                  source: "Advanced Class Guide", isPremium: true),

            .make("Slayer",
                  hitDie: "d10",
                  skillRanks: 6,
                  bab: "Full",
                  fort: "Good",
                  ref: "Good",
                  will: "Poor",
                  classSkills: [
                      "Acrobatics", "Bluff", "Climb", "Craft", "Disguise",
                      "Handle Animal", "Heal", "Intimidate",
                      "Knowledge (dungeoneering)", "Knowledge (geography)",
                      "Knowledge (local)", "Perception", "Profession",
                      "Ride", "Sense Motive", "Stealth", "Survival", "Swim"
                  ],
                  summary: "A full-BAB stalker who marks targets for precision damage with no spellcasting.",
                  desc: """
                  The slayer is the pure combat hybrid of ranger and rogue, stripped of spellcasting and animal companions in exchange for full BAB and better saves. Studied target (swift action) grants a +1 insight bonus to attack rolls, damage rolls, and a selection of skills against one creature, with the bonus increasing every 5 levels to a maximum of +5 at 20th level.

                  Slayer talents mirror rogue talents and draw from the rogue talent list for variety. Stalker adds studied target bonus to Perception and Stealth against targets. At 7th level, the slayer gains quarry — designating one creature as a quarry they can track without penalty and against which they have +2 attack rolls and can expend a use of studied target for greater effect.

                  Master slayer at 19th level adds the ability to automatically confirm a critical hit against a studied target once per day. The slayer is a no-frills assassin and tracker; what it lacks in magical versatility it compensates for with consistent, escalating combat dominance against prioritized targets.
                  """,
                  source: "Advanced Class Guide", isPremium: true),

            .make("Swashbuckler",
                  hitDie: "d10",
                  skillRanks: 4,
                  bab: "Full",
                  fort: "Poor",
                  ref: "Good",
                  will: "Poor",
                  classSkills: [
                      "Acrobatics", "Bluff", "Craft", "Diplomacy",
                      "Escape Artist", "Intimidate", "Knowledge (local)",
                      "Knowledge (nobility)", "Perception", "Perform",
                      "Profession", "Ride", "Sense Motive",
                      "Sleight of Hand", "Swim"
                  ],
                  summary: "A Charisma-driven duelist who uses panache points to fuel flashy deed-based combat.",
                  desc: """
                  The swashbuckler is the iconic fencing duelist — nimble, theatrical, and devastatingly precise. Panache (equal to Charisma modifier) fuels deeds, class abilities that define the swashbuckler's combat style. Deeds include dodging panache (add Cha to Reflex, move 5 ft. as free action), opportune parry and riposte (spend 1 panache to parry with a reaction and riposte for free), and precise strike (add swashbuckler level as precision damage with a one-handed or light piercing weapon).

                  Panache is replenished when the swashbuckler confirms a critical hit or kills a creature with a piercing weapon, rewarding aggressive, stylish play. Finesse training makes a chosen light or one-handed weapon add Dexterity to damage rolls as well as attack. Nimble adds +1 dodge AC per 4 levels. Charmed life lets the swashbuckler add Charisma to a saving throw 3/day.

                  The swashbuckler has no spellcasting and no armor proficiency beyond light, but compensates with one of the best per-round damage outputs among non-magical martial classes, especially when fighting one-on-one with a rapier.
                  """,
                  source: "Advanced Class Guide", isPremium: true),

            .make("Warpriest",
                  hitDie: "d8",
                  skillRanks: 2,
                  bab: "Medium",
                  fort: "Good",
                  ref: "Poor",
                  will: "Good",
                  classSkills: [
                      "Climb", "Craft", "Diplomacy", "Handle Animal",
                      "Heal", "Intimidate", "Knowledge (religion)",
                      "Profession", "Ride", "Sense Motive", "Spellcraft",
                      "Survival", "Swim"
                  ],
                  summary: "A divine warrior who channels deity power through weapon and fervor to fight on the front line.",
                  desc: """
                  The warpriest is a battle-hardened divine champion who bridges the gap between cleric and fighter. Blessings (chosen from the warpriest's deity's domains) grant minor powers usable 3 + Wisdom modifier times per day and major powers at 10th level. Two blessings are selected at 1st level from the deity's domain list.

                  Sacred weapon is the warpriest's signature: their deity's favored weapon (or a chosen weapon) treats its damage die as if one size larger when the warpriest is wielding it. At 4th level, the warpriest adds enhancement bonuses equal to half their level to the weapon, bypassing the cost of physical magic items. Fervor — a pool of healing energy equal to half the warpriest's level times Wisdom modifier — can be used as a swift action to cast a buff spell on oneself or as standard action channel energy.

                  The warpriest fills the divine warrior niche more naturally than the paladin, with no alignment restriction and a broader weapon selection, while still providing the party with divine spellcasting focused on buffs and combat enhancement.
                  """,
                  source: "Advanced Class Guide", isPremium: true),

        ]
        for cls in classes { try await db.insertClass(cls) }
    }

    private func seedACGFeats() async throws {
        let feats: [FeatEntry] = [

            .make("Accomplished Sneak Attacker",
                  featType: "General",
                  prerequisites: "Sneak attack class feature",
                  benefit: "Your rogue level is treated as 4 higher than normal for the purpose of determining your sneak attack damage. This benefit can't increase your effective rogue level to higher than your total Hit Dice.",
                  summary: "Treat your rogue level as 4 higher for sneak attack damage.",
                  source: "Advanced Class Guide", isPremium: true),

            .make("Agile Tongue",
                  featType: "General",
                  prerequisites: "Grippli",
                  benefit: "You can use your tongue to retrieve small, stowed objects carried on your person as a swift action. In addition, you can use Sleight of Hand as if your hands were free even when your hands are restrained.",
                  summary: "Use your tongue to retrieve stowed objects and perform Sleight of Hand with restrained hands.",
                  source: "Advanced Class Guide", isPremium: true),

            .make("Alertness",
                  featType: "General",
                  prerequisites: "",
                  benefit: "You get a +2 bonus on Perception skill checks. If you have 10 or more ranks in Perception, this bonus increases to +4.",
                  summary: "+2 (or +4 with 10+ ranks) bonus on Perception checks.",
                  source: "Advanced Class Guide", isPremium: true),

            .make("Amateur Investigator",
                  featType: "General",
                  prerequisites: "No levels in investigator, Int 13",
                  benefit: "You gain 1 point of inspiration as if you were an investigator, and gain one investigator talent for which you qualify. You can expend inspiration to add 1d6 to a skill check as an investigator does. You cannot gain more than 1 point of inspiration from this feat.",
                  summary: "Gain 1 inspiration point and one investigator talent.",
                  source: "Advanced Class Guide", isPremium: true),

            .make("Amplified Hex",
                  featType: "General",
                  prerequisites: "Hex class feature",
                  benefit: "When you target the same creature with a hex two rounds in a row, you can expend a use of your hex on the second round to increase the hex's DC by 4 instead of the normal 2. This benefit applies only to hexes that have a saving throw DC.",
                  summary: "Expend a hex use to gain +4 DC on a hex against a creature targeted last round.",
                  source: "Advanced Class Guide", isPremium: true),

            .make("Antagonize",
                  featType: "General",
                  prerequisites: "",
                  benefit: "You can make Diplomacy and Intimidate checks to attempt to force a creature to attack you. As a standard action, make a Diplomacy check or Intimidate check against one creature within 30 feet. If using Diplomacy, the DC is 15 + the creature's CR. If using Intimidate, the DC equals 10 + the creature's HD + its Wisdom modifier. On success with Diplomacy, the creature attacks only you until the start of your next turn (Will DC 15 + your CHA negates). On success with Intimidate, the creature becomes shaken for 1 round/2 class levels.",
                  summary: "Force a creature to focus its attacks on you or become shaken.",
                  source: "Advanced Class Guide", isPremium: true),

            .make("Arcane Armor Mastery",
                  featType: "General",
                  prerequisites: "Arcane Armor Training, Medium Armor Proficiency, ability to cast arcane spells, caster level 7th",
                  benefit: "As a swift action, reduce arcane spell failure chance of the armor you are wearing by 20% for any arcane spell you cast this turn. This stacks with the reduction granted by Arcane Armor Training, potentially allowing you to cast arcane spells in medium armor with no spell failure chance.",
                  summary: "Reduce arcane spell failure chance by 20% as a swift action (prereq: Arcane Armor Training, CL 7).",
                  source: "Advanced Class Guide", isPremium: true),

            .make("Arcane Armor Training",
                  featType: "General",
                  prerequisites: "Light Armor Proficiency, ability to cast arcane spells, caster level 3rd",
                  benefit: "As a swift action, reduce the arcane spell failure chance due to the armor you are wearing by 10% for any arcane spell you cast this turn.",
                  summary: "Reduce arcane spell failure chance by 10% as a swift action (prereq: Light Armor, CL 3).",
                  source: "Advanced Class Guide", isPremium: true),

            .make("Arcane Strike",
                  featType: "Combat",
                  prerequisites: "Ability to cast arcane spells",
                  benefit: "As a swift action, you can imbue your weapons with a fraction of your power. For 1 round, your weapons deal +1 damage and are treated as magic for the purpose of overcoming damage reduction. For every 5 caster levels you possess, this bonus increases by +1, to a maximum of +5 at 20th level.",
                  summary: "Swift action: +1 damage (+1/5 CL) and treat weapons as magic for DR purposes.",
                  source: "Advanced Class Guide", isPremium: true),

            .make("Blood Drinker",
                  featType: "General",
                  prerequisites: "Natural weapon",
                  benefit: "After making a successful attack with a natural weapon against a living creature that has blood, you gain fast healing 1 for 1 round. This fast healing does not stack with itself even if you make multiple successful natural weapon attacks in a round.",
                  summary: "Gain fast healing 1 for 1 round after striking a blood-bearing creature with a natural weapon.",
                  source: "Advanced Class Guide", isPremium: true),

        ]
        for feat in feats { try await db.insertFeat(feat) }
    }
}
