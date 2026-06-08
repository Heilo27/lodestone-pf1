import Foundation

extension SeedDataBuilder {
    func seedFeatsD() async throws {
        try await db.insertFeat(
        .make("Divert Harm (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, base attack bonus +6, evasion class feature.",
                          benefit: "Whenever you are the target of an area-of-effect attack that normally deals half damage on a successful Reflex save (such as a fireball spell or dragon’s breath weapon), you may, as an immediate action, wrestle an adjacent foe into harm’s way. This does not alter the position of you or your opponent, but your opponent must attempt a Reflex save against the attack in your place. If your opponent fails, it takes half damage from the attack and you take none; if it succeeds, it takes no damage and you take damage as normal as though you’d failed your saving throw (though this damage is still reduced by abilities such as improved evasion). This feat works even if the opponent was already in the affected area of the attack (so it is possible that an unlucky opponent could take as much as 1-1/2 times the damage normally possible from the attack). You can use this ability only on a foe within one size category of yourself.",
                          summary: "Whenever you are the target of an area-of-effect attack that normally deals half damage on a successful Reflex save (such as a fireball spell or dragon’s breath weapon), you may, as an immediate…",
                          source: "Bastards of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Solo Maneuvers (Combat)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Whenever you are the only one threatening an opponent, you gain a +1 bonus on combat maneuvers against that creature and a +1 bonus to CMD against combat maneuvers made by that creature.",
                          summary: "Whenever you are the only one threatening an opponent, you gain a +1 bonus on combat maneuvers against that creature and a +1 bonus to CMD against combat maneuvers made by that creature.",
                          source: "Bastards of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Unusual Heritage (Changeling) (Teamwork)",
                          featType: "General",
                          prerequisites: "Changeling.",
                          benefit: "Your mother was part of a powerful hag coven, and it shows when you are near your kin. As long as you are within 30 feet of at least two other changelings, you gain a +2 bonus on concentration checks and dispel checks. If at least two of these changelings also have this feat, these bonuses increase to +4.",
                          special: "This version of Unusual Origin is a teamwork feat.",
                          summary: "Your mother was part of a powerful hag coven, and it shows when you are near your kin.",
                          source: "Bastards of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Unusual Heritage (Dhampir)",
                          featType: "General",
                          prerequisites: "Dhampir.",
                          benefit: "Your undead progenitor left you with more than a hint of vampiric nature. You gain a natural bite attack that deals 1d4 points of damage. Once per day upon making a successful bite attack, you can choose to deal an additional 1d4 points of bleed damage to the creature struck.",
                          special: "You can only select this feat at 1st level.",
                          summary: "Your undead progenitor left you with more than a hint of vampiric nature. You gain a natural bite attack that deals 1d4 points of damage.",
                          source: "Bastards of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Unusual Heritage (Fetchling)",
                          featType: "General",
                          prerequisites: "Fetchling.",
                          benefit: "You have the mysterious ability to see into the Shadow Plane, but only in your dreams. Once per day while sleeping, you can create a magical sensor, as arcane eye except this sensor can view only your current location as it exists on the Shadow Plane. This effect lasts for 1 minute per character level, and can be used during any point while you sleep.",
                          summary: "You have the mysterious ability to see into the Shadow Plane, but only in your dreams.",
                          source: "Bastards of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Unusual Heritage (Gillman)",
                          featType: "General",
                          prerequisites: "Gillman.",
                          benefit: "As a so-called “Low Azlanti,” you have abilities supposedly tied to mysterious ancestors who still watch over you and your ilk. Your divination spells and spell-like abilities manifest at 1 caster level higher. In addition, once per day while fully immersed in water, you can cast augury as a spell-like ability.",
                          summary: "As a so-called “Low Azlanti,” you have abilities supposedly tied to mysterious ancestors who still watch over you and your ilk.",
                          source: "Bastards of Golarion", isPremium: true),

                    // // MARK: - Bestiary
        )
        try await db.insertFeat(
        .make("Ability Focus (Monster)",
                          featType: "General",
                          prerequisites: "Special attack.",
                          benefit: "Choose one of the creature’s special attacks. Add +2 to the DC for all saving throws against the special attack on which the creature focuses.",
                          special: "A creature can gain this feat multiple times. Its effects do not stack. Each time the creature takes the feat, it applies to a different special attack.",
                          summary: "Choose one of the creature’s special attacks. Add +2 to the DC for all saving throws against the special attack on which the creature focuses.",
                          source: "Bestiary", isPremium: true)
        )
        try await db.insertFeat(
        .make("Awesome Blow (Combat, Monster)",
                          featType: "General",
                          prerequisites: "Str 25, Power Attack, Improved Bull Rush, size Large or larger.",
                          benefit: "As a standard action, the creature may perform an awesome blow combat maneuver. If the creature’s maneuver succeeds against a corporeal opponent smaller than itself, its opponent takes damage (typically slam damage plus Strength bonus) and is knocked flying 10 feet in a direction of the attacking creature’s choice and falls prone. The attacking creature can only push the opponent in a straight line, and the opponent can’t move closer to the attacking creature than the square it started in. If an obstacle prevents the completion of the opponent’s move, the opponent and the obstacle each take 1d6 points of damage, and the opponent is knocked prone in the space adjacent to the obstacle.",
                          summary: "As a standard action, the creature may perform an awesome blow combat maneuver.",
                          source: "Bestiary", isPremium: true)
        )
        try await db.insertFeat(
        .make("Craft Construct (Item Creation)",
                          featType: "General",
                          prerequisites: "Caster level 5th, Craft Magic Arms and Armor, Craft Wondrous Item.",
                          benefit: "You can create any construct whose prerequisites you meet. The act of animating a construct takes one day for each 1,000 gp in its market price. To create a construct, you must use up raw materials costing half of its base price, plus the full cost of the basic body created for the construct. Each construct has a special section that summarizes its costs and other prerequisites. A newly created construct has average hit points for its Hit Dice.",
                          summary: "You can create any construct whose prerequisites you meet. The act of animating a construct takes one day for each 1,000 gp in its market price.",
                          source: "Bestiary", isPremium: true)
        )
        try await db.insertFeat(
        .make("Empower Spell-Like Ability (Monster)",
                          featType: "General",
                          prerequisites: "Spell-like ability at caster level 6th or higher.",
                          benefit: "Choose one of the creature’s spell-like abilities, subject to the restrictions below. The creature can use that ability as an empowered spell-like ability three times per day (or less, if the ability is normally usable only once or twice per day). When a creature uses an empowered spell-like ability, all variable, numeric effects of the spell-like ability are increased by half (+50%). Saving throws and opposed rolls are not affected. Spell-like abilities without random variables are not affected. The creature can only select a spell-like ability duplicating a spell with a level less than or equal to 1/2 its caster level (round down) – 2. For a summary, see the table in the description of the Quicken Spell-Like Ability. Spell Level Caster Level to Empower Caster Level to Quicken 0 4th 8th 1st 6th 10th 2nd 8th 12th 3rd 10th 14th 4th 12th 16th 5th 14th 18th 6th 16th 20th 7th 18th - 8th 20th - 9th - -",
                          special: "This feat can be taken multiple times. Each time it is taken, the creature can apply it to a different spell-like ability.",
                          summary: "Choose one of the creature’s spell-like abilities, subject to the restrictions below.",
                          source: "Bestiary", isPremium: true)
        )
        try await db.insertFeat(
        .make("Flyby Attack (Monster)",
                          featType: "General",
                          prerequisites: "Fly speed.",
                          benefit: "When flying, the creature can take a move action and another standard action at any point during the move. The creature cannot take a second move action during a round when it makes a flyby attack.",
                          normal: "Without this feat, the creature takes a standard action either before or after its move.",
                          summary: "When flying, the creature can take a move action and another standard action at any point during the move. The creature cannot take a second move action during a round when it makes a flyby attack.",
                          source: "Bestiary", isPremium: true)
        )
        try await db.insertFeat(
        .make("Hover (Monster)",
                          featType: "General",
                          prerequisites: "Fly speed.",
                          benefit: "A creature with this feat can halt its movement while flying, allowing it to hover without needing to make a Fly skill check. If a creature of size Large or larger with this feat hovers within 20 feet of the ground in an area with lots of loose debris, the draft from its wings creates a hemispherical cloud with a radius of 60 feet. The winds generated can snuff torches, small campfires, exposed lanterns, and other small, open flames of non-magical origin. Clear vision within the cloud is limited to 10 feet. Creatures have concealment at 15 to 20 feet (20% miss chance). At 25 feet or more, creatures have total concealment (50% miss chance, and opponents cannot use sight to locate the creature).",
                          normal: "Without this feat, a creature must make a Fly skill check to hover and the creature does not create a cloud of debris while hovering.",
                          summary: "A creature with this feat can halt its movement while flying, allowing it to hover without needing to make a Fly skill check.",
                          source: "Bestiary", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Natural Armor (Monster)",
                          featType: "General",
                          prerequisites: "Natural armor, Con 13.",
                          benefit: "The creature’s natural armor bonus increases by +1.",
                          special: "A creature can gain this feat multiple times. Each time the creature takes the feat, its natural armor bonus increases by another point.",
                          summary: "The creature’s natural armor bonus increases by +1.",
                          source: "Bestiary", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Natural Attack (Monster)",
                          featType: "General",
                          prerequisites: "Natural weapon, base attack bonus +4.",
                          benefit: "Choose one of the creature’s natural attack forms (not an unarmed strike). The damage for this natural attack increases by one step on the following list, as if the creature’s size had increased by one category. Damage dice increase as follows: 1d2, 1d3, 1d4, 1d6, 1d8, 2d6, 3d6, 4d6, 6d6, 8d6, 12d6. A weapon or attack that deals 1d10 points of damage increases as follows: 1d10, 2d8, 3d8, 4d8, 6d8, 8d8, 12d8.",
                          special: "This feat can be taken multiple times. Each time it is taken, it applies to a different natural attack.",
                          summary: "Choose one of the creature’s natural attack forms (not an unarmed strike).",
                          source: "Bestiary", isPremium: true)
        )
        try await db.insertFeat(
        .make("Multiattack (Combat, Monster)",
                          featType: "General",
                          prerequisites: "Three or more natural attacks.",
                          benefit: "The creature’s secondary attacks with natural weapons take only a –2 penalty.",
                          normal: "Without this feat, the creature’s secondary attacks with natural weapons take a –5 penalty.",
                          summary: "The creature’s secondary attacks with natural weapons take only a –2 penalty.",
                          source: "Bestiary", isPremium: true)
        )
        try await db.insertFeat(
        .make("Multiweapon Fighting (Combat, Monster)",
                          featType: "General",
                          prerequisites: "Dex 13, three or more hands.",
                          benefit: "Penalties for fighting with multiple weapons are reduced by –2 with the primary hand and by –6 with off hands.",
                          normal: "A creature without this feat takes a –6 penalty on attacks made with its primary hand and a –10 penalty on attacks made with all of its off hands. (It has one primary hand, and all the others are off hands.) See Two-Weapon Fighting in the Pathfinder RPG Core Rulebook.",
                          special: "This feat replaces the Two-Weapon Fighting feat for creatures with more than two arms.",
                          summary: "Penalties for fighting with multiple weapons are reduced by –2 with the primary hand and by –6 with off hands.",
                          source: "Bestiary", isPremium: true)
        )
        try await db.insertFeat(
        .make("Quicken Spell-Like Ability (Monster)",
                          featType: "General",
                          prerequisites: "Spell-like ability at CL 10th or higher.",
                          benefit: "Choose one of the creature’s spell-like abilities, subject to the restrictions described in this feat. The creature can use the chosen spell-like ability as a quickened spell-like ability three times per day (or less, if the ability is normally usable only once or twice per day). Using a quickened spell-like ability is a swift action that does not provoke an attack of opportunity. The creature can perform another action—including the use of another spell-like ability (but not another swift action)—in the same round that it uses a quickened spell-like ability. The creature may use only one quickened spell-like ability per round. The creature can only select a spell-like ability duplicating a spell with a level less than or equal to 1/2 its caster level (round down) – 4. For a summary, see the table below. A spell-like ability that duplicates a spell with a casting time greater than 1 full round cannot be quickened. Spell Level Caster Level to Empower Caster Level to Quicken 0 4th 8th 1st 6th 10th 2nd 8th 12th 3rd 10th 14th 4th 12th 16th 5th 14th 18th 6th 16th 20th 7th 18th — 8th 20th — 9th — —",
                          normal: "The use of a spell-like ability normally requires a standard action (at the very least) and provokes an attack of opportunity.",
                          special: "This feat can be taken multiple times. Each time it is taken, the creature can apply it to a different one of its spell-like abilities.",
                          summary: "Choose one of the creature’s spell-like abilities, subject to the restrictions described in this feat.",
                          source: "Bestiary", isPremium: true)
        )
        try await db.insertFeat(
        .make("Snatch (Monster)",
                          featType: "General",
                          prerequisites: "Size Huge or larger.",
                          benefit: "The creature can start a grapple when it hits with a claw or bite attack, as though it had the grab ability. If it grapples a creature three or more sizes smaller, it squeezes each round for automatic bite or claw damage with a successful grapple check. A snatched opponent held in the creature’s mouth is not allowed a Reflex save against the creature’s breath weapon, if it has one. The creature can drop a creature it has snatched as a free action or use a standard action to fling it aside. A flung creature travels 1d6 × 10 feet, and takes 1d6 points of damage per 10 feet traveled. If the creature flings a snatched opponent while flying, the opponent takes this amount or falling damage, whichever is greater.",
                          summary: "The creature can start a grapple when it hits with a claw or bite attack, as though it had the grab ability.",
                          source: "Bestiary", isPremium: true)
        )
        try await db.insertFeat(
        .make("Wingover (Monster)",
                          featType: "General",
                          prerequisites: "Fly speed.",
                          benefit: "Once each round, a creature with this feat can turn up to 180 degrees as a free action without making a Fly skill check. This free turn does not consume any additional movement from the creature.",
                          normal: "A flying creature can turn up to 90 degrees by making a DC 15 Fly skill check and expending 5 feet of movement. A flying creature can turn up to 180 degrees by making a DC 20 Fly skill check and expending 10 feet of movement.",
                          summary: "Once each round, a creature with this feat can turn up to 180 degrees as a free action without making a Fly skill check. This free turn does not consume any additional movement from the creature.",
                          source: "Bestiary", isPremium: true),

                    // // MARK: - Black Markets, Dark Markets - A Guide to Katapesh
        )
        try await db.insertFeat(
        .make("Pesh Euphoria",
                          featType: "General",
                          prerequisites: "Sahir-Afiyun or pesh addict.",
                          benefit: "When you take a dose of pesh, in addition to its normal initial effect, you gain a +2 bonus on saves against emotionUM and fear effects. Once per day, if you fail a saving throw against an emotionUM or fear effect while you are under the initial effect of pesh, you can attempt another saving throw 1 round later at the same DC.",
                          summary: "When you take a dose of pesh, in addition to its normal initial effect, you gain a +2 bonus on saves against emotionUM and fear effects.",
                          source: "Black Markets, Dark Markets - A Guide to Katapesh", isPremium: true)
        )
        try await db.insertFeat(
        .make("Pesh Healing",
                          featType: "General",
                          prerequisites: "Sahir-Afiyun or pesh addict.",
                          benefit: "When you take a dose of pesh, in addition to its normal initial effect, you gain a number of temporary hit points equal to your total Hit Dice for 1 hour. Temporary hit points gained from additional doses of pesh do not stack.",
                          summary: "When you take a dose of pesh, in addition to its normal initial effect, you gain a number of temporary hit points equal to your total Hit Dice for 1 hour.",
                          source: "Black Markets, Dark Markets - A Guide to Katapesh", isPremium: true)
        )
        try await db.insertFeat(
        .make("Pesh Rejuvenation",
                          featType: "General",
                          prerequisites: "Sahir-Afiyun or pesh addict.",
                          benefit: "If you are brought to 0 or fewer hit points while under the initial effect of pesh, you can end the drug’s initial effect as an immediate action. If you do, you gain a number of temporary hit points equal to your Constitution score. These temporary hit points last 1 hour. Upon using this feat, you are sickened for 1d6 hours.",
                          summary: "If you are brought to 0 or fewer hit points while under the initial effect of pesh, you can end the drug’s initial effect as an immediate action.",
                          source: "Black Markets, Dark Markets - A Guide to Katapesh", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sahir-Afiyun",
                          featType: "General",
                          prerequisites: "Spell Focus (any), ability to cast 2nd-level spells.",
                          benefit: "When you consume pesh, you take 1 fewer point of Constitution or Wisdom damage (your choice). In addition, you add spells from the sahir-afiyun spells listed below to your own class spell list or list of spells known. You can add one spell from the highest level you can cast; you can instead add two spells to your list of spells known, but both of these spells must be at least 1 level lower than the highest-level spell you can cast for that class. If you have more than one spellcasting class, choose one and add the sahir-afiyun spell or spells listed below to that class’s spell list or list of spells known. 1st—alleviate addiction (see page 19), lesser confusion, night blindness (see page 19), pesh vigor (see page 19), ray of sickeningUM, remove fear, sleep. 2nd—augury, calm emotions, euphoric cloudACG. 3rd—contact high (see page 19), deep slumber, imbue with addiction (see page 19). 4th—absorbing inhalationARG, confusion, divination. 5th—symbol of sleep. All sahir-afiyun spells require 1 dose of pesh as a material component, either replacing the existing material component, or as part of the material component if the existing component costs more.",
                          special: "You can gain this feat multiple times. Its effects do not stack. Each time you take the feat, add one or more sahir-afiyun spells to your spell list.",
                          summary: "When you consume pesh, you take 1 fewer point of Constitution or Wisdom damage (your choice).",
                          source: "Black Markets, Dark Markets - A Guide to Katapesh", isPremium: true),

                    // // MARK: - Blood of Angels
        )
        try await db.insertFeat(
        .make("Blinding Light",
                          featType: "General",
                          prerequisites: "Inner Light, aasimar, daylight spell-like ability.",
                          benefit: "Whenever an enemy unsuccessfully attempts to counter or dispel your daylight spell-like ability, it must succeed at a Fortitude saving throw (DC 10 + 1/2 your character level + your Charisma modifier) or become blinded for 1 round as its mind is overwhelmed with celestial light. This is a supernatural mind-affecting effect.",
                          summary: "Whenever an enemy unsuccessfully attempts to counter or dispel your daylight spell-like ability, it must succeed at a Fortitude saving throw (DC 10 + 1/2 your character level + your Charisma…",
                          source: "Blood of Angels", isPremium: true)
        )
        try await db.insertFeat(
        .make("Consecrate Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "Aasimar, able to prepare or cast consecrate.",
                          benefit: "A consecrated spell is treated as a maximized spell against evil creatures and creatures with the evil subtype. Against all other creatures, this feat does not modify the spell in any way (for example, a consecrated fireball acts as a normal fireball against neutral or good creatures). This feat does not stack with Maximize Spell. A consecrated spell uses up a spell slot two levels higher than the spell’s actual level.",
                          summary: "A consecrated spell is treated as a maximized spell against evil creatures and creatures with the evil subtype.",
                          source: "Blood of Angels", isPremium: true)
        )
        try await db.insertFeat(
        .make("Inner Light (BoA)",
                          featType: "General",
                          prerequisites: "Aasimar, daylight spell-like ability.",
                          benefit: "Whenever you cast your daylight spell-like ability, you do so as if your caster level were one higher. Whenever an enemy successfully counters or dispels your daylight spell-like ability, you and any allies within a 20-foot radius gain darkvision 60 feet for a number of rounds equal to your character level. This is a supernatural effect.",
                          summary: "Whenever you cast your daylight spell-like ability, you do so as if your caster level were one higher.",
                          source: "Blood of Angels", isPremium: true)
        )
        try await db.insertFeat(
        .make("Revered Guidance",
                          featType: "General",
                          prerequisites: "Aasimar, must be taken at 1st level.",
                          benefit: "Select one of the following creature subtypes: dwarf, elf, gnome, halfling, human, or orc. You gain a +4 racial bonus on Diplomacy checks made to influence creatures of the selected subtype.",
                          summary: "Select one of the following creature subtypes: dwarf, elf, gnome, halfling, human, or orc. You gain a +4 racial bonus on Diplomacy checks made to influence creatures of the selected subtype.",
                          source: "Blood of Angels", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sunlit Strike",
                          featType: "General",
                          prerequisites: "Arcane Strike, able to prepare or cast daylight.",
                          benefit: "Whenever you successfully hit an enemy that is vulnerable to light (such as by the light blindness, light sensitivity, or sunlight powerlessness universal monster rules) with a melee weapon you’ve imbued with your Arcane Strike feat, you deal an additional 1d6 points of damage to the target of your attack. The struck creature must also succeed at a Fortitude saving throw (DC 10 + your character level + your Strength modifier) or become staggered for 1 round.",
                          summary: "Whenever you successfully hit an enemy that is vulnerable to light (such as by the light blindness, light sensitivity, or sunlight powerlessness universal monster rules) with a melee weapon you’ve…",
                          source: "Blood of Angels", isPremium: true)
        )
        try await db.insertFeat(
        .make("Supernal Feast",
                          featType: "General",
                          prerequisites: "Con 15, aasimar.",
                          benefit: "Whenever you are adjacent to a good outsider that takes bleed or blood drain damage, you gain 1 temporary hit point as you bathe in the celestial being’s gore. Furthermore, as a full-round action, you can feast on the fallen body of a good outsider that has been dead no longer than 24 hours. When you do, you regain 1 temporary hit point per Hit Die the outsider possessed at a rate of 1 hit point per minute. Temporary hit points gained from this feat last 1d4 hours.",
                          summary: "Whenever you are adjacent to a good outsider that takes bleed or blood drain damage, you gain 1 temporary hit point as you bathe in the celestial being’s gore.",
                          source: "Blood of Angels", isPremium: true),

                    // // MARK: - Blood of Fiends
        )
        try await db.insertFeat(
        .make("Ancestral Scorn",
                          featType: "General",
                          prerequisites: "Intimidate 5 ranks, tiefling.",
                          benefit: "Whenever you successfully demoralize an outsider of the evil subtype with an Intimidate check, it becomes sickened for 1 round in addition to being affected by the normal effects of being demoralized. If you beat the DC by 5 or more, the creature is nauseated for 1 round instead.",
                          normal: "Demoralizing a foe with a successful Intimidate check causes it to become shaken for 1 round, +1 round for every 5 by which you beat the DC.",
                          summary: "Whenever you successfully demoralize an outsider of the evil subtype with an Intimidate check, it becomes sickened for 1 round in addition to being affected by the normal effects of being…",
                          source: "Blood of Fiends", isPremium: true)
        )
        try await db.insertFeat(
        .make("Banner of Doom (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +8, banner class feature, tiefling.",
                          benefit: "As long your banner is clearly visible, all enemies within 60 feet take a –2 penalty on saving throws against fear. This penalty does not stack with other effects that provide enemies with penalties on saving throws against fear.",
                          summary: "As long your banner is clearly visible, all enemies within 60 feet take a –2 penalty on saving throws against fear.",
                          source: "Blood of Fiends", isPremium: true)
        )
        try await db.insertFeat(
        .make("Blinding Sneak Attack (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +5, darkness spell-like ability, sneak attack class feature, tiefling.",
                          benefit: "When you successfully deal sneak attack damage to a foe while you are within an area of magical darkness, you temporarily blind your opponent for 1 round. A successful Fortitude save (DC 10 + the amount of sneak attack damage dealt) negates this effect.",
                          summary: "When you successfully deal sneak attack damage to a foe while you are within an area of magical darkness, you temporarily blind your opponent for 1 round.",
                          source: "Blood of Fiends", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fiendish Darkness",
                          featType: "General",
                          prerequisites: "Darkness spell-like ability, tiefling.",
                          benefit: "You can use darkness three times per day as a spell-like ability.",
                          normal: "Tieflings can use darkness once per day as a spell-like ability.",
                          summary: "You can use darkness three times per day as a spell-like ability.",
                          source: "Blood of Fiends", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fiendish Resilience",
                          featType: "General",
                          prerequisites: "Dex 13, evasion class feature, tiefling.",
                          benefit: "Choose one of the following energy types that you have resistance to: cold, electricity, or fire. Anytime you make a Reflex saving throw against an attack that deals the selected type of energy damage and is subject to your evasion class feature, you gain a +4 competence bonus on the save.",
                          special: "You can take this feat multiple times. Each time you take it, you select a different qualifying energy type.",
                          summary: "Choose one of the following energy types that you have resistance to: cold, electricity, or fire.",
                          source: "Blood of Fiends", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fury of the Tainted (Combat)",
                          featType: "General",
                          prerequisites: "Cha 13, rage class feature, tiefling.",
                          benefit: "While raging, you gain a +4 competence bonus on saving throws made against spells and effects with the good descriptor.",
                          summary: "While raging, you gain a +4 competence bonus on saving throws made against spells and effects with the good descriptor.",
                          source: "Blood of Fiends", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Fiendish Darkness",
                          featType: "General",
                          prerequisites: "Fiendish Darkness, darkness spell-like ability, caster level 3rd, tiefling.",
                          benefit: "You gain a +2 bonus to your effective caster level when using your darkness spell-like ability. In addition, whenever you cast a spell with the evil descriptor that targets another creature, you can spend a swift action to apply the effects of your darkness spell-like ability to the spell cast, with the darkness effect centered on the spell’s target. Using the darkness spell-like ability in this way expends all three uses of it for the day, and it cannot be used if fewer than three uses of it remain for that day.",
                          summary: "You gain a +2 bonus to your effective caster level when using your darkness spell-like ability.",
                          source: "Blood of Fiends", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Fiendish Sorcery",
                          featType: "General",
                          prerequisites: "Fiendish sorcery racial trait, tiefling.",
                          benefit: "If you are a sorcerer and possess the Rakshasa bloodline (Pathfinder RPG Ultimate Magic 68) or Shadow bloodline (Pathfinder RPG Advanced Player’s Guide 140), treat your Charisma score as 2 points higher for all sorcerer class abilities.",
                          summary: "If you are a sorcerer and possess the Rakshasa bloodline (Pathfinder RPG Ultimate Magic 68) or Shadow bloodline (Pathfinder RPG Advanced Player’s Guide 140), treat your Charisma score as 2 points…",
                          source: "Blood of Fiends", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Fury of the Tainted (Combat)",
                          featType: "General",
                          prerequisites: "Cha 13, Fury of the Tainted, base attack bonus +8, rage class feature, tiefling.",
                          benefit: "While raging, you gain spell resistance equal to 10 + your class level against spells with the good descriptor.",
                          summary: "While raging, you gain spell resistance equal to 10 + your class level against spells with the good descriptor.",
                          source: "Blood of Fiends", isPremium: true)
        )
        try await db.insertFeat(
        .make("Reckless Aim (Combat)",
                          featType: "General",
                          prerequisites: "Point-Blank Shot, Precise Shot.",
                          benefit: "When you shoot or throw ranged weapons at an opponent engaged in melee, you can choose to take a –1 penalty to your AC and gain a +2 competence bonus on your attack roll. However, when you roll a natural 1 on a ranged attack roll made with this bonus, you automatically hit a random adjacent creature that threatens your intended target.",
                          summary: "When you shoot or throw ranged weapons at an opponent engaged in melee, you can choose to take a –1 penalty to your AC and gain a +2 competence bonus on your attack roll.",
                          source: "Blood of Fiends", isPremium: true)
        )
        try await db.insertFeat(
        .make("Terrifying Mask",
                          featType: "General",
                          prerequisites: "Cha 13, Monstrous Mask, tiefling.",
                          benefit: "Anytime you can make a Sense Motive check to get a hunch or detect whether someone is trustworthy or not, you can choose to instead make an Intimidate check at a –2 penalty. This ability only works on creatures of the humanoid type.",
                          summary: "Anytime you can make a Sense Motive check to get a hunch or detect whether someone is trustworthy or not, you can choose to instead make an Intimidate check at a –2 penalty.",
                          source: "Blood of Fiends", isPremium: true)
        )
        try await db.insertFeat(
        .make("Wicked Valor",
                          featType: "General",
                          prerequisites: "Con 15, Diehard, Endurance, tiefling.",
                          benefit: "When you regain hit points by resting, you heal double the normal amount of damage. This feat does not stack with items or effects that also affect the amount of damage you recover from while resting. This feat only functions with a full night’s rest; complete bed rest is not affected by this feat.",
                          summary: "When you regain hit points by resting, you heal double the normal amount of damage.",
                          source: "Blood of Fiends", isPremium: true),

                    // // MARK: - Blood of Fiends, Pathfinder #25: The Bastards of Erebus
        )
        try await db.insertFeat(
        .make("Fiendish Facade",
                          featType: "General",
                          prerequisites: "Must be taken at 1st level, tiefling.",
                          benefit: "You gain a +5 racial bonus on Disguise checks when attempting to impersonate a particular race. You must select the race you are able to impersonate when you select this feat, and thereafter you cannot change the race you have chosen. That race must be Medium size.",
                          summary: "You gain a +5 racial bonus on Disguise checks when attempting to impersonate a particular race.",
                          source: "Blood of Fiends, Pathfinder #25: The Bastards of Erebus", isPremium: true)
        )
        try await db.insertFeat(
        .make("Monstrous Mask",
                          featType: "General",
                          prerequisites: "Tiefling, must be taken at 1st level.",
                          benefit: "You get a +5 racial bonus on Intimidate checks made against all creatures of the humanoid type.",
                          summary: "You get a +5 racial bonus on Intimidate checks made against all creatures of the humanoid type.",
                          source: "Blood of Fiends, Pathfinder #25: The Bastards of Erebus", isPremium: true),

                    // // MARK: - Blood of the Elements
        )
        try await db.insertFeat(
        .make("Elemental Commixture (Teamwork)",
                          featType: "General",
                          prerequisites: "Caster level 1st.",
                          benefit: "You and an ally within 30 feet who shares this feat can cast your spells together to create a more powerful, hybrid effect. Both spells must have an elemental descriptor (air, earth, fire, or water), or an energy descriptor that corresponds to one of the elements (acid [earth], cold [water], electricity [air], or fire [fire]) . Both spells must be at least 1st level, within 1 spell level of each other, and cast during the same initiative turn through the use of readied actions. When the spells to be commixed are cast, one is designated as the primary spell (typically the higherlevel spell), while the other is the secondary spell. The primary spell must be an offensive spell that targets an area or one or more creatures. The secondary spell can be any spell with an appropriate descriptor. Neither spell can take more than a standard action to cast. The primary spell behaves as written (with the exception of the synergistic benefits that are described below). The secondary spell does not manifest any of its usual effects; instead, targeted creatures are affected by a secondary effect that is determined by the combination of the two spells’ descriptors. Targeted creatures can attempt a saving throw against the primary spell as normal (assuming that a save is normally allowed), and then attempt a separate save against the secondary effect. The secondary effect’s save type is described in its listing, and its save DC is equal to the normal save DC of the primary or secondary spell, whichever is lower (or, if neither spell allows a saving throw, 10 + lowest spell’s level + spellcaster’s primary spellcasting ability score [Int, Wis, or Cha] modifier). Commixed spells cannot be counterspelled normally. A creature with Improved Counterspell can counterspell commixed spells if both spells are correctly identified and both belong to the same school. Regardless, the secondary effects of two spells combined through Elemental Commixture cannot be counterspelled. Spell resistance still applies to the secondary effect, unless both of the commixed spells bypass spell resistance. Synergistic Benefits: The primary spell’s save DC (if any) increases by 1. If either spell is normally modified by Spell Focus or Greater Spell Focus, the bonus to save DCs granted by those feats stacks with this increase. The caster of the primary spell also gains a +1 bonus on any caster level check made to overcome spell resistance. Secondary Effects: While the secondary spell has no direct effect other than bolstering the effects of the primary spell, the combination of spells also creates a unique secondary effect depending on the elemental descriptors of the commixed spells. For the purpose of this secondary effect, the acid, cold, and electricity descriptors count as earth, water, and air descriptors, respectively. Commixed spells with the same elemental descriptors do not produce a secondary effect, though the primary spell still gains the synergistic benefits described above. Dust (Air/Earth) : Choked by dust, the targets must succeed at a Fortitude save or become staggered for 1 round plus 1 round per 5 caster levels of the secondary spell’s caster. Targeted spellcasters must succeed at a concentration check to cast spells (the DC is equal to the save DC). On a successful save, the targets are not staggered but must still attempt concentration checks. Lava (Earth/Fire) : The targets are splattered with bits of molten rock and take 1d6 points of fire damage. The targets must succeed at a Reflex save or catch fire (see Catching on Fire on page 444 of the Pathfinder RPG Core Rulebook ). Mud (Earth/Water) : The targets must succeed at a Reflex save or fall prone and have their movement speeds cut in half (to a minimum speed of 5 feet) for 1 round plus 1 round per 5 caster levels of the secondary spell’s caster. On a successful save, the targets’ movement speeds are cut in half for 1 round. Smoke (Air/Fire) : The targets suffer smoke inhalation and must succeed at Fortitude saves or become nauseated for 1 round and blinded for 1d4 rounds. Success negates the nausea effect and reduces the blindness to 1 round. Creatures immune to fire are immune to the nausea effect. Snow (Air/Water) : The primary spell gains the cold descriptor if it doesn’t have that descriptor already, and half the damage dealt (if any) is cold damage. The targets must succeed at a Reflex save or fall prone. Steam (Fire/Water) : Damage caused by the primary spell (if any) is treated as nonlethal, untyped damage (neither cold nor fire damage) and is not affected by energy resistance or absorbed by protection from energy . The targets become blinded for 1d4 rounds unless they succeed at a Will save.",
                          special: "An inquisitor or any other character with the solo tactics class feature can use this teamwork feat without the aid of an ally. In order to do so, the character must be able to cast two qualifying spells within the same round, such as by using the Quicken Spell metamagic feat to cast one spell as a swift action or by using effects such as the time stop spell.",
                          summary: "You and an ally within 30 feet who shares this feat can cast your spells together to create a more powerful, hybrid effect.",
                          source: "Blood of the Elements", isPremium: true),

                    // // MARK: - Blood of the Moon
        )
        try await db.insertFeat(
        .make("Bat Shape",
                          featType: "General",
                          prerequisites: "Cha 13, werebat-kin.",
                          benefit: "You can take the form of a bat whose appearance is static and cannot be changed each time you assume this form. You gain a +10 racial bonus on Disguise checks to appear as a bat. Changing from werebat-kin to bat shape is a standard action. This ability otherwise functions as beast shape II, and your ability scores change accordingly. If you wear a bat pelt (see page 31), you may choose to adopt a form resembling the bat whose skin you wear instead of your normal bat form.",
                          summary: "You can take the form of a bat whose appearance is static and cannot be changed each time you assume this form. You gain a +10 racial bonus on Disguise checks to appear as a bat.",
                          source: "Blood of the Moon", isPremium: true)
        )
        try await db.insertFeat(
        .make("Bear Hug (Combat)",
                          featType: "General",
                          prerequisites: "Str 17, Beartrap Bite, Weapon Focus (bite), base attack bonus +8.",
                          benefit: "You can attempt to initiate a grapple against a foe trapped by your Beartrap Bite feat without provoking attacks of opportunity. You gain a +2 bonus on damage rolls against foes you are grappling.",
                          summary: "You can attempt to initiate a grapple against a foe trapped by your Beartrap Bite feat without provoking attacks of opportunity. You gain a +2 bonus on damage rolls against foes you are grappling.",
                          source: "Blood of the Moon", isPremium: true)
        )
        try await db.insertFeat(
        .make("Beartrap Bite (Combat)",
                          featType: "General",
                          prerequisites: "Weapon Focus (bite), base attack bonus +6.",
                          benefit: "Whenever you confirm a critical hit against a foe with your bite attack, if your confirmation roll matches or exceeds your foe’s CMD, you can clamp down on your foe to prevent it from moving away as a free action. The foe cannot move outside the area threatened by your bite attack unless it breaks free of your bite. It can attempt to free itself with a combat maneuver check or Escape Artist check as if you were grappling it, but neither of you gains the grappled condition. You cannot use your bite attack while you maintain your grip on your foe, but you can release the bite as a swift action to end the effect.",
                          summary: "Whenever you confirm a critical hit against a foe with your bite attack, if your confirmation roll matches or exceeds your foe’s CMD, you can clamp down on your foe to prevent it from moving away as…",
                          source: "Blood of the Moon", isPremium: true)
        )
        try await db.insertFeat(
        .make("Bloodmarked Flight",
                          featType: "General",
                          prerequisites: "Base attack bonus +5, werebat-kin.",
                          benefit: "As an additional bestial feature, you can use your change shape ability to gain a fly speed of 30 feet with poor maneuverability if carrying a light load and wearing no armor or light armor, or a fly speed of 20 feet with clumsy maneuverability if carrying a medium or heavy load or wearing medium or heavy armor.",
                          summary: "As an additional bestial feature, you can use your change shape ability to gain a fly speed of 30 feet with poor maneuverability if carrying a light load and wearing no armor or light armor, or a fly…",
                          source: "Blood of the Moon", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dire Bat Shape",
                          featType: "General",
                          prerequisites: "Cha 13, Bat Shape, base attack bonus +3, werebat-kin.",
                          benefit: "When you use Bat Shape to become a bat, you can choose to become a bat or a dire bat.",
                          summary: "When you use Bat Shape to become a bat, you can choose to become a bat or a dire bat.",
                          source: "Blood of the Moon", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Feature",
                          featType: "General",
                          prerequisites: "Con 13, skinwalker.",
                          benefit: "When you change shape to your bestial form, you may choose one additional feature from those listed in your shapechange ability and gain that benefit while in bestial form.",
                          special: "You can gain this feat multiple times. Its effects stack.",
                          summary: "When you change shape to your bestial form, you may choose one additional feature from those listed in your shapechange ability and gain that benefit while in bestial form.",
                          source: "Blood of the Moon", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fast Change",
                          featType: "General",
                          prerequisites: "Dex 13, base attack bonus +6, skinwalker.",
                          benefit: "You can assume your bestial form as a move action instead of a standard action.",
                          summary: "You can assume your bestial form as a move action instead of a standard action.",
                          source: "Blood of the Moon", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ferocious Loyalty (Teamwork)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You gain a +1 morale bonus on attack rolls against any foe that currently threatens an ally who also has this feat. Whenever an ally with this feat is rendered helpless or killed within 30 feet of you, you gain a +2 morale bonus on attack rolls for 1 minute or until the foe responsible is rendered helpless or killed, whichever comes first.",
                          summary: "You gain a +1 morale bonus on attack rolls against any foe that currently threatens an ally who also has this feat.",
                          source: "Blood of the Moon", isPremium: true)
        )
        try await db.insertFeat(
        .make("Motivating Display (Combat)",
                          featType: "General",
                          prerequisites: "Cha 13, Dazzling Display, Weapon Focus.",
                          benefit: "Whenever you use Dazzling Display to demoralize foes, you can motivate your allies to better serve you. In addition to possibly demoralizing foes within 30 feet, your Intimidate check while using Dazzling Display also applies to allies within 30 feet who can see you. The DC for this effect is the same as it would be to demoralize your allies. Each ally so affected gains a +1 morale bonus on attack rolls and skill checks for the duration that it would normally be shaken.",
                          summary: "Whenever you use Dazzling Display to demoralize foes, you can motivate your allies to better serve you.",
                          source: "Blood of the Moon", isPremium: true)
        )
        try await db.insertFeat(
        .make("Surprising Combatant (Combat)",
                          featType: "General",
                          prerequisites: "Improved Initiative, Bluff 3 ranks.",
                          benefit: "At the beginning of combat, after initiative is rolled but before the first round of combat begins, you can attempt a Bluff check as a free action. Each opponent who is aware of you must succeed at a Sense Motive check (DC equal to the result of your Bluff check). Failure means that an opponent is treated as if it were not aware of you when determining whether it is aware combat has begun. If none of your opponents are aware of you, you may act during the surprise round. If an opponent is effectively unaware of any foes, it cannot act during the surprise round.",
                          summary: "At the beginning of combat, after initiative is rolled but before the first round of combat begins, you can attempt a Bluff check as a free action.",
                          source: "Blood of the Moon", isPremium: true)
        )
        try await db.insertFeat(
        .make("Swarm Scatter (Teamwork)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "For each ally who has this feat and is adjacent to you, you gain a +1 circumstance bonus to AC. As long as you have this bonus, you are immune to the swarm attack and distraction ability of rat swarms.",
                          summary: "For each ally who has this feat and is adjacent to you, you gain a +1 circumstance bonus to AC.",
                          source: "Blood of the Moon", isPremium: true)
        )
        try await db.insertFeat(
        .make("Swarm Strike (Teamwork)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Whenever a foe provokes an attack of opportunity from you, you gain a +1 bonus on your attack roll, plus an additional +1 bonus for each ally who also has this feat and currently threatens that foe.",
                          summary: "Whenever a foe provokes an attack of opportunity from you, you gain a +1 bonus on your attack roll, plus an additional +1 bonus for each ally who also has this feat and currently threatens that foe.",
                          source: "Blood of the Moon", isPremium: true)
        )
        try await db.insertFeat(
        .make("Violent Display (Combat)",
                          featType: "General",
                          prerequisites: "Dazzling Display, Weapon Focus, base attack bonus +6.",
                          benefit: "When you land a successful sneak attack or confirm a critical hit against a creature with a weapon with which you have Weapon Focus, you can use Dazzling Display as an immediate action.",
                          summary: "When you land a successful sneak attack or confirm a critical hit against a creature with a weapon with which you have Weapon Focus, you can use Dazzling Display as an immediate action.",
                          source: "Blood of the Moon", isPremium: true),

                    // // MARK: - Blood of the Night
        )
        try await db.insertFeat(
        .make("Conviction",
                          featType: "General",
                          prerequisites: "Cha 13.",
                          benefit: "When you present to a vampire a holy symbol or other object it is averse to, the DC for the creature to overcome such an aversion increases by 2.",
                          summary: "When you present to a vampire a holy symbol or other object it is averse to, the DC for the creature to overcome such an aversion increases by 2.",
                          source: "Blood of the Night", isPremium: true)
        )
        try await db.insertFeat(
        .make("Famine Tolerance",
                          featType: "General",
                          prerequisites: "Moroi or nosferatu.",
                          benefit: "You can go without feeding for a number of days equal to twice your Hit Dice before having to make hunger saves. When you use your blood drain ability, you gain twice the normal amount of temporary hit points for each feeding.",
                          special: "This feat is only for campaigns using the optional undead hunger rules (see page 22).",
                          summary: "You can go without feeding for a number of days equal to twice your Hit Dice before having to make hunger saves.",
                          source: "Blood of the Night", isPremium: true)
        )
        try await db.insertFeat(
        .make("Hymn Singer",
                          featType: "General",
                          prerequisites: "Bardic performance, good alignment, worshiper of a good deity.",
                          benefit: "When using bardic performance, you may choose to play, recite, or sing a religious song or piece of scripture of your faith. Each round of bardic performance you spend in this way, you count as presenting a holy symbol, chanting prayers, or ringing a hand bell for the purpose of keeping vampires at bay.",
                          summary: "When using bardic performance, you may choose to play, recite, or sing a religious song or piece of scripture of your faith.",
                          source: "Blood of the Night", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Bestial Transformation",
                          featType: "General",
                          prerequisites: "Vampire.",
                          benefit: "You can change shape (as the universal monster rule) to assume the form of one of the following beasts, as beast shape II: boar, dire bat, giant frog, grizzly bear, hyena, leopard, lion, shark, squid, or wolf. This is a supernatural ability.",
                          special: "You can gain this feat multiple times. Each time you take this feat, choose another animal transformation.",
                          summary: "You can change shape (as the universal monster rule) to assume the form of one of the following beasts, as beast shape II: boar, dire bat, giant frog, grizzly bear, hyena, leopard, lion, shark,…",
                          source: "Blood of the Night", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Gaseous Form",
                          featType: "General",
                          prerequisites: "Vampire.",
                          benefit: "As a standard action, you can assume gaseous form at will (caster level 5th), but can remain gaseous indefinitely and have a fly speed of 20 feet with perfect maneuverability. This is a supernatural ability.If you already possess the gaseous form special quality, you can instead choose to augment your gaseous form in one of the following ways. These effects apply only to creatures that enter your space while you are in gaseous form. Glitterdust (Su): Creatures must succeed at a Will save or be blinded and outlined in golden particles as though under the effects of glitterdust. Mind Fog (Su): Creatures must succeed at a Will save or take penalties as though under the effects of mind fog. This effect lasts as long as a creature shares your space and for 2d6 rounds after.",
                          special: "You can gain this feat multiple times. Each time you take this feat, choose another swarm type.",
                          summary: "As a standard action, you can assume gaseous form at will (caster level 5th), but can remain gaseous indefinitely and have a fly speed of 20 feet with perfect maneuverability.",
                          source: "Blood of the Night", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Swarm Form",
                          featType: "General",
                          prerequisites: "Vampire.",
                          benefit: "Choose one of the following forms: bat swarm, centipede swarm, cockroach swarmB2, leech swarm, rat swarm, or spider swarm. As a standard action, you can change into this form.The swarm has the same number of hit points as you, and any damage dealt to the swarm affects you. While in swarm form, you are immune to any physical spell or effect that targets a specific number of creatures (including single-target spells such as disintegrate), with the exception of such spells and effects generated by you, which treat you as one single creature if you so choose. While in swarm form, you cannot use any natural attacks or any special attacks, although you gain the natural weapons and extraordinary special attacks of the swarm you transform into. You also retain all of your usual special qualities. While in swarm form, you are still considered an undead creature with your total number of Hit Dice. You can remain in swarm form until you assume another form, until you retake your original form as a standard action, or until the next sunrise. This is a supernatural ability.",
                          special: "You can gain this feat multiple times. Each time you take this feat, choose another swarm type.",
                          summary: "Choose one of the following forms: bat swarm, centipede swarm, cockroach swarmB2, leech swarm, rat swarm, or spider swarm.",
                          source: "Blood of the Night", isPremium: true)
        )
        try await db.insertFeat(
        .make("Life-Dominant Soul",
                          featType: "General",
                          prerequisites: "Dhampir.",
                          benefit: "You are healed by channeled positive energy used to heal living creatures and channeled negative energy used to heal undead, but both only heal half the normal amount. You still take damage from positive energy used to harm undead, such as that from channeled energy and lay on hands.",
                          summary: "You are healed by channeled positive energy used to heal living creatures and channeled negative energy used to heal undead, but both only heal half the normal amount.",
                          source: "Blood of the Night", isPremium: true)
        )
        try await db.insertFeat(
        .make("Potent Holy Symbol",
                          featType: "General",
                          prerequisites: "Good alignment, worshiper of a good deity.",
                          benefit: "Any round in which you use your holy symbol as a divine focus for the casting of a spell or to channel positive energy, you count as presenting a holy symbol, chanting prayers, or ringing a hand bell for the purpose of keeping vampires at bay.",
                          summary: "Any round in which you use your holy symbol as a divine focus for the casting of a spell or to channel positive energy, you count as presenting a holy symbol, chanting prayers, or ringing a hand bell…",
                          source: "Blood of the Night", isPremium: true)
        )
        try await db.insertFeat(
        .make("Schooled Resolve",
                          featType: "General",
                          prerequisites: "Bravery class feature.",
                          benefit: "You add your bravery bonus on Will saves against mind-affecting spells and effects from vampires. This does not stack with the normal bravery bonus on saves against fear effects.",
                          summary: "You add your bravery bonus on Will saves against mind-affecting spells and effects from vampires. This does not stack with the normal bravery bonus on saves against fear effects.",
                          source: "Blood of the Night", isPremium: true)
        )
        try await db.insertFeat(
        .make("Variant Prayer Scroll",
                          featType: "General",
                          prerequisites: "Jiang-shi.",
                          benefit: "You gain the ability to create a different type of prayer scroll. You may create a prayer scroll with this ability by using any strip of parchment and a writing instrument, but doing so requires 10 minutes of uninterrupted work. Swapping your current prayer scroll for a different prepared one is a standard action. When wearing a different prayer scroll, you gain its special abilities, but lose your normal prayer scroll’s immunity to spell completion and spell trigger magic items. Your prayer scrolls can be used only by you, and have no effect when used by other jiang-shis. When you choose this feat, select one of the following prayer scroll types. Embalmed Form: This prayer scroll alters your physical form to how you looked 1 day before your death. Treat this as an alter self spell that affects you regardless of your original or current type; your caster level is equal to your Hit Dice. Your speed increases by 10 feet, but you lose your immunity to trip attacks and your ability to move through difficult terrain unhindered. These effects persist indefinitely as long as you wear the prayer scroll, but end immediately if you use a different prayer scroll or 24 hours after you remove this prayer scroll. Enduring Dust: If you crumble into dust from hit point damage, you reform after 1 round instead of 1 minute. Scattering your dust does not prevent you from reforming as long none of your dust is more than 30 feet from any other part of your dust. Storing a portion of your dust in an air-tight container prevents you from reforming. If you are unable to reform after 1 minute, you are destroyed. Positive Energy Immunity: You become immune to positive channeled energy used to harm undead. This does not protect you against positive energy from other sources such as cure spells or lay on hands. Spell Immunity: The prayer scroll grants you immunity to a spell, as if you were using spell immunity. You decide which spell when you create the prayer scroll, and can choose a different spell each time you create a new spell immunity prayer scroll. If you have 15 or more Hit Dice, this functions as greater spell immunity. Creating this type of prayer scroll costs 100 gp × the spell level of the spell keyed to the scroll.",
                          special: "You may select this feat multiple times. Each time you do so, choose another ability granted by the feat.",
                          summary: "You gain the ability to create a different type of prayer scroll.",
                          source: "Blood of the Night", isPremium: true),

                    // // MARK: - Blood of the Sea
        )
        try await db.insertFeat(
        .make("Aberration-Bane Caster",
                          featType: "General",
                          prerequisites: "Caster level 4th, gillman, favored enemy (aberrations) class feature.",
                          benefit: "Add half of your favored enemy bonus against aberrations to the saving throw DC of spells that you cast against aberrations and on caster level checks to overcome the spell resistance of aberrations.",
                          summary: "Add half of your favored enemy bonus against aberrations to the saving throw DC of spells that you cast against aberrations and on caster level checks to overcome the spell resistance of aberrations.",
                          source: "Blood of the Sea", isPremium: true)
        )
        try await db.insertFeat(
        .make("Aboleth Deceiver",
                          featType: "General",
                          prerequisites: "Iron Will, gillman, enchantment resistance racial trait.",
                          benefit: "Once per day, if you fail a Will save against a compulsion spell or effect, you can reroll that saving throw but must take the second result, even if it’s worse. If the compulsion spell or effect originates from an aboleth, you do not apply your racial –2 penalty on such saving throws, and the reroll does not count against your daily use of this feat.",
                          summary: "Once per day, if you fail a Will save against a compulsion spell or effect, you can reroll that saving throw but must take the second result, even if it’s worse.",
                          source: "Blood of the Sea", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ally Caller",
                          featType: "General",
                          prerequisites: "Triton, summon nature’s ally II spell-like ability, character level 3rd.",
                          benefit: "You gain two additional uses of summon nature’s ally II per day.",
                          special: "You may take this feat multiple times. Each time you select it, you gain two additional uses of summon nature’s ally II.",
                          summary: "You gain two additional uses of summon nature’s ally II per day.",
                          source: "Blood of the Sea", isPremium: true)
        )
        try await db.insertFeat(
        .make("Aphotic Explorer",
                          featType: "General",
                          prerequisites: "Endurance, gillman.",
                          benefit: "While you are in darkness or dim light, you can take a swift action to gain cold resistance 5 for 1 round. If you have 11 or more Hit Dice, you gain cold resistance 10 instead.",
                          summary: "While you are in darkness or dim light, you can take a swift action to gain cold resistance 5 for 1 round. If you have 11 or more Hit Dice, you gain cold resistance 10 instead.",
                          source: "Blood of the Sea", isPremium: true)
        )
        try await db.insertFeat(
        .make("Aquatic Squires",
                          featType: "General",
                          prerequisites: "Triton, summon nature’s ally II spell-like ability, character level 5th.",
                          benefit: "The duration of your summon nature’s ally II spell-like ability is 1 minute per level.",
                          normal: "Summon nature’s ally II has a duration of 1 round per level.",
                          summary: "The duration of your summon nature’s ally II spell-like ability is 1 minute per level.",
                          source: "Blood of the Sea", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cecaelia Focus Tattoo",
                          featType: "General",
                          prerequisites: "Cecaelia.",
                          benefit: "Select one of the cecaelia focus tattoos below; you gain its benefits while it is active. While you can have any number of focus tattoos, only one can be active at a time. You activate a focus tattoo by concentrating on its importance to you for 1 hour without interruption. Once a focus tattoo is active, it remains so until you activate a new tattoo. Each time you would gain a favored class bonus, you may forgo that benefit and instead get another tattoo from the Cecaelia Focus Tattoos list. Instead of getting a new tattoo, you can increase the complexity of an existing tattoo by selecting the same tattoo again. You may choose any tattoo multiple times; if you do, its benefits stack while it is active. Name Effect Aureoln prong Increase range of darkvision by 5 feet while on land Cobalt prong Increase range of darkvision by 5 feet while underwater Crimson spiral +1 competence bonus on Fortitude saves against death effects and on Constitution checks to become stable Emerald helix +1 competence bonus on Survival checks while on land Indigo vines +1 competence bonus on Fortitude saves against poison delivered by a creature’s natural attack Inky whorls +1 competence bonus on Stealth checks while on land Silver whorls +1 competence bonus on Stealth checks while underwater Teal helix +1 competence bonus on Survival checks while underwater",
                          summary: "Select one of the cecaelia focus tattoos below; you gain its benefits while it is active. While you can have any number of focus tattoos, only one can be active at a time.",
                          source: "Blood of the Sea", isPremium: true)
        )
        try await db.insertFeat(
        .make("Electric Eel Conduit (Combat)",
                          featType: "General",
                          prerequisites: "Wis 17, Electric Eel Shock, Electric Eel Style, Elemental Fist APG, Improved Unarmed Strike, base attack bonus +13 or monk level 9th.",
                          benefit: "You gain one additional Elemental Fist (Pathfinder RPG Advanced Player’s Guide 158) attempt per day. When you successfully grapple a creature, you may expend two uses of Elemental Fist as a swift action to set up an electric charge between yourself and the creature. If you do, the target takes electricity damage equal to 1d6 plus your Wisdom modifier each round you maintain the grapple. This damage ceases when you are no longer grappling the target.",
                          summary: "You gain one additional Elemental Fist (Pathfinder RPG Advanced Player’s Guide 158) attempt per day.",
                          source: "Blood of the Sea", isPremium: true)
        )
        try await db.insertFeat(
        .make("Electric Eel Shock (Combat)",
                          featType: "General",
                          prerequisites: "Wis 15, Electric Eel Style, Elemental Fist APG, Improved Unarmed Strike, base attack bonus +11 or monk level 7th.",
                          benefit: "You gain one additional Elemental Fist (Advanced Player’s Guide 158) attempt per day. Creatures that take electricity damage from your Elemental Fist attack must succeed at a Fortitude save (DC 10 + half your character level + your Wisdom modifier) or be staggered for 1 round. This also applies to creatures that take electricity damage from your Electric Eel Conduit feat while grappled.",
                          summary: "You gain one additional Elemental Fist (Advanced Player’s Guide 158) attempt per day.",
                          source: "Blood of the Sea", isPremium: true)
        )
        try await db.insertFeat(
        .make("Electric Eel Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Wis 13, Elemental Fist APG, Improved Unarmed Strike, base attack bonus +9 or monk level 5th.",
                          benefit: "You gain one additional Elemental Fist (Advanced Player’s Guide 158) attempt per day. While you are in this style, your Elemental Fist attack deals electricity damage. When a creature takes electricity damage from your Elemental Fist attack, you gain a +4 bonus for 1 round on combat maneuver checks to grapple the creature.",
                          summary: "You gain one additional Elemental Fist (Advanced Player’s Guide 158) attempt per day. While you are in this style, your Elemental Fist attack deals electricity damage.",
                          source: "Blood of the Sea", isPremium: true)
        )
        try await db.insertFeat(
        .make("Surface Survivor",
                          featType: "General",
                          prerequisites: "Con 15, gillman, water dependent racial trait.",
                          benefit: "You lose the water dependent racial trait, but you are sickened if you have not submerged yourself in water within the past 24 hours.",
                          summary: "You lose the water dependent racial trait, but you are sickened if you have not submerged yourself in water within the past 24 hours.",
                          source: "Blood of the Sea", isPremium: true),

                    // // MARK: - Champions of Balance
        )
        try await db.insertFeat(
        .make("Crisis of Conscience (Story)",
                          featType: "General",
                          prerequisites: "Lawful neutral, neutral, or chaotic neutral alignment. Your alignment must have shifted from either good or evil at least once since 1st level or the last time you completed this feat (see Special).",
                          benefit: "You are an enigma unto those who cleave to notions of morality as guiding life principles. Habits and mannerisms from your past life send subtly confusing signals to those trying to read you. Whenever another character attempts to discern your alignment, loyalties, or intentions (including via magical effects such as detect thoughts and when you are using Bluff to send a secret message or feint), you gain a +2 bonus on opposed skill checks and on Will saving throws to resist such effects.Goal: Resolve your conscience with an act of decisive good or evil that shifts your alignment accordingly. Acts of decisive good include dedicating your worldly wealth to a noble cause or charitable institution, risking death for the sake of others, or another notable sacrifice for a greater good. Acts of decisive evil include reducing a city to penury and starvation, murdering or terrorizing innocents, or other, darker deeds.Completion Benefit: If your alignment changes from good to evil or evil to good, you know how to entice others down your path. While you retain this alignment, you gain a +2 bonus on Charisma- and Wisdom-based skill checks made to interact with a sentient creature of your previous (and now opposite) moral alignment. This bonus increases to +4 if success would cause the target to act against its moral alignment (at the GM’s discretion). If it does so, you retain this bonus when interacting with that target until its moral alignment is the same as yours.If you return to your original moral alignment, you have gained deeper insight into your convictions. While you retain this moral alignment, you become aware of any action or item that could adversely affect your alignment or your standing with your deity (if you have one), including magical effects. You acquire this information prior to performing such an action or becoming associated with such an item if you take a moment to contemplate the act.",
                          special: "If you’ve already completed this feat by changing to the opposite moral alignment and have since returned to being morally neutral, you may take this feat a second time. You gain no additional basic benefits, but if you complete this feat’s goal a second time by crossing back to your original alignment, you gain additional completion benefits—you gain the second completion benefit, and can apply the first benefit against good and evil creatures.",
                          summary: "You are an enigma unto those who cleave to notions of morality as guiding life principles. Habits and mannerisms from your past life send subtly confusing signals to those trying to read you.",
                          source: "Champions of Balance", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fabulist (Grit)",
                          featType: "General",
                          prerequisites: "Amateur GunslingerUC feat or grit class feature.",
                          benefit: "You gain a +1 bonus on Perform (act, comedy, oratory, and sing) skill checks, and Perform is a class skill for you. In addition, each time you make a successful Bluff check to convince someone of a far-fetched or impossible story, you regain 1 grit point. Successfully lying to a friendly or helpful creature, or a creature that has fewer Hit Dice than half your character level, doesn’t restore grit.",
                          summary: "You gain a +1 bonus on Perform (act, comedy, oratory, and sing) skill checks, and Perform is a class skill for you.",
                          source: "Champions of Balance", isPremium: true)
        )
        try await db.insertFeat(
        .make("Gun Twirling (Grit)",
                          featType: "General",
                          prerequisites: "Amateur GunslingerUC feat or grit class feature, Dazzling Display, Weapon Focus.",
                          benefit: "You can spend 1 grit point to make a feint attempt using a one-handed firearm for which you have Weapon Focus (instead of a melee weapon). The target of this feint must be within 30 feet of you and be able to see you. If you have the Quick Draw feat, you can holster a onehanded firearm as a free action as long as you have at least 1 grit point.",
                          summary: "You can spend 1 grit point to make a feint attempt using a one-handed firearm for which you have Weapon Focus (instead of a melee weapon).",
                          source: "Champions of Balance", isPremium: true)
        )
        try await db.insertFeat(
        .make("Named Bullet (Grit)",
                          featType: "General",
                          prerequisites: "Amateur GunslingerUC feat or grit class feature, Gunsmithing UC, base attack bonus +5.",
                          benefit: "Whenever you craft ammunition using Gunsmithing, you may inscribe a bullet or alchemical cartridge with the name of its intended target. The ammunition gains the bane weapon special ability against the chosen creature only. If the ammunition is used to attack any other target, the attack roll is instead made with a –2 penalty. Crafting a named bullet costs 1 grit point and reduces your maximum grit points by 1 until the named bullet is fired or destroyed.",
                          summary: "Whenever you craft ammunition using Gunsmithing, you may inscribe a bullet or alchemical cartridge with the name of its intended target.",
                          source: "Champions of Balance", isPremium: true)
        )
        try await db.insertFeat(
        .make("Planar Hunter",
                          featType: "General",
                          prerequisites: "Knowledge (planes) 5 ranks, favored terrain (any plane) class feature.",
                          benefit: "When you are on one of the planes you’ve selected as a favored terrain, you gain a +2 bonus on weapon attack rolls against outsiders native to that plane. You also ignore up to 5 points of damage reduction when making weapon attacks against outsiders native to that plane, except for damage reduction without a type (such as DR 10/—). In addition, you gain this bonus against extraplanar creatures you encounter and identify as being from one of your planar favored terrains, such as with a successful Knowledge (planes) check, regardless of what plane you or they are on.",
                          special: "You may select this feat multiple times. Each time you take it, you apply it to a different qualifying favored terrain.",
                          summary: "When you are on one of the planes you’ve selected as a favored terrain, you gain a +2 bonus on weapon attack rolls against outsiders native to that plane.",
                          source: "Champions of Balance", isPremium: true)
        )
        try await db.insertFeat(
        .make("Practiced Leadership",
                          featType: "General",
                          prerequisites: "Leadership, membership in the same organization as your cohort.",
                          benefit: "As long as you and your cohort maintain membership in good standing within the same organization, your cohort gains a +4 morale bonus on Will saves against enchantment spells and effects. Additionally, your cohort is treated as though she possessed the same teamwork feats you do for the purpose of determining whether you receive a bonus from your teamwork feats. Your cohort doesn’t receive any bonuses from these feats unless she actually possesses the feats. If you and your cohort belong to one of the organizations listed in this section, your cohort gains the practiced leadership benefit associated with your organization. If a benefit grants your cohort access to a spell-like ability, the caster level of the effect is 1st or equal to your cohort’s caster level, whichever is higher.",
                          summary: "As long as you and your cohort maintain membership in good standing within the same organization, your cohort gains a +4 morale bonus on Will saves against enchantment spells and effects.",
                          source: "Champions of Balance", isPremium: true)
        )
        try await db.insertFeat(
        .make("Summon Neutral Monster",
                          featType: "General",
                          prerequisites: "Chaotic neutral, lawful neutral, or neutral alignment.",
                          benefit: "When casting a summon monster spell, you gain access to the list of neutral creatures on this page. You may also summon creatures from the standard summon monster list and apply the counterpoised creature simple template (see the sidebar) to applicable creatures instead of the celestial or fiendish template. Creatures you summon from the list on this page and creatures you summon with the counterpoised template gain a +2 resistance bonus on Will saves. 1st Level Sprite B3 (CN) Stirge (N) 2nd Level Atomie B3 (CN) Brownie B2 (N) 3rd Level Arbiter B2 (inevitable) (LN) Nosoi B4 (psychopomp) (N) Paracletus B2 (aeon) (N) Thoqqua B2 (N) Voidworm B2 (protean) (CN) 4th Level D’ziriak B2 (N) Magmin B3 (CN) Mephit (any) (N) Satyr (CN) Shae B3 (N) Viduus ISB (psychopomp) (N) 5th Level Catrina B4 (psychopomp) (N) Mercane B2 (LN) Rast B2 (N) Tojanida B3 (N) 6th Level Chaos Beast B2 (CN) Invisible stalker (N) Naunet B2 (protean) (CN) Theletos B2 (aeon) (N) Vanth B4 (psychopomp) (N) 7th Level Axiomite B2 (LN) Jyoti B2 (N) Shoki ISB (psychopomp) (N) Zelekhut B2 (inevitable) (LN) 8th Level Imentesh B2 (protean) (CN) 9th Level Akhana B2 (aeon) (N) Morrigna B4 (psychopomp) Valkyrie B3 (CN)",
                          summary: "When casting a summon monster spell, you gain access to the list of neutral creatures on this page.",
                          source: "Champions of Balance", isPremium: true),

                    // // MARK: - Champions of Corruption
        )
        try await db.insertFeat(
        .make("Ally Shield (Betrayal, Teamwork)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Whenever you are the target of a melee or ranged attack and are adjacent to an ally who also has this feat, you can initiate this feat to skillfully pull the abettor into harm’s way or dodge behind the abettor as an immediate action. You gain cover against that attack (and only that attack). If the attack misses you but would have hit you if not for the cover bonus to your Armor Class, the abettor becomes the target of the attack and the attacker must make a new attack roll (with all the same modifiers) against the abettor’s Armor Class.",
                          summary: "Whenever you are the target of a melee or ranged attack and are adjacent to an ally who also has this feat, you can initiate this feat to skillfully pull the abettor into harm’s way or dodge behind…",
                          source: "Champions of Corruption", isPremium: true)
        )
        try await db.insertFeat(
        .make("Callous Casting (Betrayal, Teamwork)",
                          featType: "General",
                          prerequisites: "Spellcraft 1 rank.",
                          benefit: "You initiate this feat by including an abetting ally in the area of any spell that deals damage of a type to which the abettor is not immune. The callousness of the attack disheartens foes in the area, who must succeed at a Will save against the spell’s DC or be shaken for 1 round per spell level. After you resolve the spell’s effects, the abettor can move up to her speed as an immediate action. Any movement undertaken using this action is then subtracted from her speed until the end of her next turn. This movement can still provoke attacks of opportunity as normal. Once a foe has attempted a Will save against this feat, he is immune to this effect from that initiator for 24 hours thereafter.",
                          summary: "You initiate this feat by including an abetting ally in the area of any spell that deals damage of a type to which the abettor is not immune.",
                          source: "Champions of Corruption", isPremium: true)
        )
        try await db.insertFeat(
        .make("Chairbreaker (Combat)",
                          featType: "General",
                          prerequisites: "Catch Off-Guard, base attack bonus +1.",
                          benefit: "When you attack a target with an improvised weapon, you can give that weapon the broken condition to deal 1d4 points of additional damage on that attack. Additionally, you gain a +4 bonus on the roll to confirm a critical hit with this attack. If you confirm the crit, the extra damage granted by this feat is also multiplied and the improvised weapon is destroyed.",
                          summary: "When you attack a target with an improvised weapon, you can give that weapon the broken condition to deal 1d4 points of additional damage on that attack.",
                          source: "Champions of Corruption", isPremium: true)
        )
        try await db.insertFeat(
        .make("Craft Shadow Piercing (Item Creation)",
                          featType: "General",
                          prerequisites: "Craft (jewelry) 5 ranks, caster level 5th.",
                          benefit: "You can create special wondrous items—typically barbs, hooks, rings, and spikes—that adorn piercings in the wearer’s flesh and grant magical abilities. Both you and the recipient of the piercing (if not yourself) must be present for the entire piercing process. Shadow piercings must be placed in a part of the body normally associated with a magic item slot, but they do not take up a slot on the body, nor interfere with other magic items that use those slots. A single slot can only hold one shadow piercing (nonmagical piercings do not count against this limit). Shadow piercings can be applied to the following slots: belt, body, chest, eyes, feet, hands, head, neck, shoulder, and wrist. A single slot can hold multiple physical piercings, though the pieces of jewelry operate as a single item and must be created for that purpose. Shadow piercings have different levels of power: minor, major, and greater. Minor shadow piercings usually include one piece of jewelry, while major and greater shadow piercings often are made up of multiple rings and spikes that cover the entire area of the piercing’s slot (but are still considered a single item). A creature can only use a number of shadow piercings equal its Constitution modifier plus its Wisdom modifier. Carefully inserting or removing a shadow piercing takes a full-round action and deals no damage. Alternatively, a shadow piercing may be pulled out of a creature using the steal maneuver as a standard action that deals 1d6 points of damage. Only a creature with the Craft Shadow Piercing feat may create or insert a shadow piercing, but any creature may remove one. Inserting a shadow piercing is impossible unless the target is willing or helpless. After being removed, a shadow piercing may be inserted into another creature by someone with this feat. Since they are treated as magic items, they are affected by dispel magic. Shadow piercings follow the rules for magic item creation, except the creator can use the Craft (jewelry) skill instead of Spellcraft. New shadow piercings can be researched and designed using the rules for pricing new magic items. Shadow piercing powers for a specific slot must be thematically similar or linked. Since shadow piercings don’t interfere with other magic items in the same slot, but can only have one piercing per slot, the base price is multiplied by 1.5 instead of doubled as if they had no space limitation.",
                          summary: "You can create special wondrous items—typically barbs, hooks, rings, and spikes—that adorn piercings in the wearer’s flesh and grant magical abilities.",
                          source: "Champions of Corruption", isPremium: true)
        )
        try await db.insertFeat(
        .make("Destructive Persuasion (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Power Attack, Intimidate 1 rank.",
                          benefit: "As a standard action, you can attempt to smash an unattended inanimate object while attempting an Intimidate check (see Smashing an Object, Pathfinder RPG Core Rulebook 173). If you break the object, you gain a bonus to the Intimidate check equal to half its hardness (minimum +1). If you destroy the object, the bonus is equal to its hardness (minimum +1). Creatures intimidated by this feat cannot be affected by it again for 24 hours.",
                          summary: "As a standard action, you can attempt to smash an unattended inanimate object while attempting an Intimidate check (see Smashing an Object, Pathfinder RPG Core Rulebook 173).",
                          source: "Champions of Corruption", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fiendskin (Damnation)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You gain defensive abilities related to your patron’s outsider subtype. For example, if your patron is a devil, the abilities listed below tie into the devil subtype (see Creature Subtypes, starting on page 310 of the Pathfinder RPG Bestiary). These benefits tie to your patron’s subtype, not your specific patron (its abilities might differ from the norm). One Damnation Feat: Choose one of the energy types to which your patron’s outsider subtype grants resistance. You gain resistance 5 against that energy type. Two Damnation Feats: Choose one of the energy types to which your patron’s outsider subtype grants resistance. You gain resistance 5 against that energy type. If you already have resistance to the chosen energy type (even from earlier benefits of this feat), this new resistance stacks with the existing resistance. Three Damnation Feats: Choose one of the energy types to which your patron’s outsider subtype grants resistance. You gain immunity to the selected energy type. Four Damnation Feats: Your creature type changes to outsider (native). Additionally, choose one energy type to which your patron’s outsider subtype grants immunity or resistance. You gain immunity to that energy type.",
                          summary: "You gain defensive abilities related to your patron’s outsider subtype.",
                          source: "Champions of Corruption", isPremium: true)
        )
        try await db.insertFeat(
        .make("Friendly Fire (Betrayal, Teamwork)",
                          featType: "General",
                          prerequisites: "Precise Shot.",
                          benefit: "You initiate this feat as a standard action, making a ranged attack against a foe engaged in melee with at least one abettor. This shot deliberately forsakes normal precautions, putting your abettor at risk, but also is unexpected enough to surprise your mutual opponent. You gain a +2 bonus on your attack roll if the attack passes through an abettor’s space. If your shot misses the target, you must immediately make a second attack roll with all the same modifiers against the abettor, potentially hitting her with the attack instead of the opponent. When the attack resolves (regardless of whether either potential target was hit), the intended target’s startled reaction provokes an attack of opportunity from the abettor.",
                          summary: "You initiate this feat as a standard action, making a ranged attack against a foe engaged in melee with at least one abettor.",
                          source: "Champions of Corruption", isPremium: true)
        )
        try await db.insertFeat(
        .make("Maleficium (Damnation)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You cast spells with the evil descriptor with increased potency. One Damnation Feat: Add 1 to the DCs of all saving throws against spells with the evil descriptor that you cast. Two Damnation Feats: When you apply a metamagic feat to a spell with the evil descriptor, that spell takes up a spell slot 1 level lower than normal (to a minimum of 1 level above the spell’s actual level). Three Damnation Feats: Add 1 to the DCs of all saving throws against spells with the evil descriptor that you cast. This bonus stacks with the earlier benefits of this feat. Four Damnation Feats: Treat your caster level as being 2 higher for all level-dependent effects of spells with the evil descriptor that you cast.",
                          summary: "You cast spells with the evil descriptor with increased potency. One Damnation Feat: Add 1 to the DCs of all saving throws against spells with the evil descriptor that you cast.",
                          source: "Champions of Corruption", isPremium: true)
        )
        try await db.insertFeat(
        .make("Mask of Virtue (Damnation)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Those who try to learn your true alignment find it hidden or receive a false result. Depending on the number of damnation feats you possess, spells or special abilities that would normally reveal your alignment return a vague or incorrect result. If this feat disguises your alignment, you can use either your true alignment or the false one when using magic items with alignment prerequisites. One Damnation Feat: The spell or special ability returns an inconclusive result. Two Damnation Feats: Upon gaining this power, choose an alignment within one step of your actual alignment. Your alignment is always revealed as being that false alignment. Three Damnation Feats: Upon gaining this power, choose an alignment within two steps of your actual alignment. Your alignment is always revealed as being this false alignment. Four Damnation Feats: You immediately know when someone is attempting to use a spell or special ability to learn your alignment. You learn the name and alignment of the creature using the effect. Additionally, you can choose any alignment as the result returned by the spell or ability.",
                          summary: "Those who try to learn your true alignment find it hidden or receive a false result.",
                          source: "Champions of Corruption", isPremium: true)
        )
        try await db.insertFeat(
        .make("Reckless Moves (Betrayal, Teamwork)",
                          featType: "General",
                          prerequisites: "Acrobatics 3 ranks.",
                          benefit: "If you are adjacent to an ally who also has this feat, you can initiate this feat as a free action to use the ally as a counterweight to improve your balance, which requires you to push or pull her slightly. You gain a +4 bonus on Acrobatics, Climb, and Stealth checks until you cease using this feat as a free action or you move away from the ally. The abettor is kept off balance and takes a –2 penalty on Acrobatics, Climb, and Stealth checks as long as this feat remains in effect. You can initiate this feat as an immediate action while you are falling or being knocked prone in order to switch places with the abettor, moving her into your former space and moving yourself into her former space. If you do, you and the abettor each end this movement prone unless you succeed at an Acrobatics check with a DC of 20 (the bonuses and penalties for this feat apply). If you were falling, the abettor is falling instead. If you or the abettor were climbing, the other person must succeed at a Climb check against the surface’s normal DC to grab on and avoid falling. Switching places provokes attacks of opportunity for the abettor only.",
                          summary: "If you are adjacent to an ally who also has this feat, you can initiate this feat as a free action to use the ally as a counterweight to improve your balance, which requires you to push or pull her…",
                          source: "Champions of Corruption", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shrapnel Strike (Combat)",
                          featType: "General",
                          prerequisites: "Str 15, Improved Sunder, Power Attack.",
                          benefit: "When you attempt a Strength check to break an object that can shatter (nothing made of paper, cloth, leather, or other soft, pliable material), you gain a bonus on the Strength check equal to your base attack bonus. If you surpass the object’s break DC, you can send shards of its material flying out in all directions, dealing an amount of piercing, slashing, and bludgeoning damage equal to 1d4 plus 1 point per point of the object’s hardness to all creatures within 10 feet of the object, including yourself. A successful Reflex save (DC = 10 + 1/2 your Hit Dice + your Strength modifier) halves the damage.",
                          summary: "When you attempt a Strength check to break an object that can shatter (nothing made of paper, cloth, leather, or other soft, pliable material), you gain a bonus on the Strength check equal to your…",
                          source: "Champions of Corruption", isPremium: true)
        )
        try await db.insertFeat(
        .make("Soulless Gaze (Damnation)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You can use the Intimidate skill to manipulate and terrify others. One Damnation Feat: You gain a +2 bonus on Intimidate checks. Two Damnation Feats: When you demoralize a creatures more than once using Intimidate, you can create stronger fear conditions rather than increasing the duration of the shaken condition. Three Damnation Feats: You gain a +2 bonus on Intimidate checks (this stacks with the earlier benefits of this feat). Four Damnation Feats: You can use Intimidate to demoralize opponents as a swift action.",
                          summary: "You can use the Intimidate skill to manipulate and terrify others. One Damnation Feat: You gain a +2 bonus on Intimidate checks.",
                          source: "Champions of Corruption", isPremium: true)
        )
        try await db.insertFeat(
        .make("Splash Volley (Betrayal, Teamwork)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1.",
                          benefit: "You initiate this feat whenever you throw a splash weapon into a square within the reach of an ally who also has this feat and miss your target. Rather than you rolling to see where the weapon lands, the abettor can try to redirect it as an immediate action by making a melee touch attack against any adjacent foe. If the abettor’s attack hits that foe, the splash weapon impacts in the nearest square the targeted foe occupies.",
                          summary: "You initiate this feat whenever you throw a splash weapon into a square within the reach of an ally who also has this feat and miss your target.",
                          source: "Champions of Corruption", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stunning Irruption (Combat)",
                          featType: "General",
                          prerequisites: "Str 15, Power Attack, base attack bonus +5.",
                          benefit: "Before starting combat, you can attempt to break through a door, window, or wall to enter a room. If you succeed, the violence of your arrival is so great that all characters within 20 feet of your entry point must succeed at a Fortitude saving throw (DC = 10 + your base attack bonus) or be stunned instead of acting in the surprise round (if there is one) plus 1 round thereafter. Characters who succeed at this save are instead shaken for 1d4 rounds.",
                          summary: "Before starting combat, you can attempt to break through a door, window, or wall to enter a room.",
                          source: "Champions of Corruption", isPremium: true)
        )
        try await db.insertFeat(
        .make("Summon Evil Monster",
                          featType: "General",
                          prerequisites: "Evil alignment.",
                          benefit: "When casting summon monster, you also have access to the list of evil monsters on this page. When summoning a creature from this list, your debased nature allows you to cast the spell as a standard action. The summoned creature appears as normal for the spell but can’t act until next your next turn. It is not flat-footed, however, and it can make attacks of opportunity as normal. These effects don’t apply for creatures from the standard list that aren’t also on this list.",
                          special: "If you possess the Sacred SummonsUM feat, you can apply it to a creature on this list whose alignment (as opposed to its subtype or subtypes) matches your aura. 1st Level Fiendish dire rat (NE) Fiendish fire beetle (NE) Fiendish ghost scorpion B3 (NE) Fiendish pony (NE) Fiendish stingray B2 (NE) Fiendish vulture B3 (NE) 2nd Level Damned petitioner B2 (LE) Fiendish squid (NE) Fuath B3 (gremlin, CE) Hunted petitioner B2 (NE) Larvae petitioner B2 (CE) Lemure (devil, LE) Pugwampi B3 (gremlin, NE) 3rd Level Augur B3 (kyton, LE) Cacodaemon B2 (daemon, NE) Doru B3 (div, NE) Dretch (demon, CE) Fiendish shark (NE) Howler B2 (CE) Tripurasura B3 (asura, LE) 4th Level Aghash B3 (div, NE) Hell hound (LE) Kelpie B2 (NE) Schir B3 (demon, CE) Spring-Heeled Jack B4 (CE) Yeth Hound (NE) Zebub B2 (devil, LE) 5th Level Babau (demon, CE) Barbazu (devil, LE) Evangelist (kyton, LE) Fiendish giant moray eel (NE) Lurker in light B2 (NE) Salamander (CE) Shadow mastiff B3 (NE) 6th Level Efreeti (genie, LE) Erinyes (devil , LE) Fiendish giant octopus (NE) Pairaka B3 (div, NE) Shadow demon (CE) Soul eater B2 (NE) Succubus (demon, CE) 7th Level Bebilith (CE) Bogeyman B3 (NE) Leukodaemon B2 (daemon, NE) Nuckelavee B3 (NE) Osyluth (devil, LE) Sacristan B4 (kyton, LE) Vrock (demon, CE) 8th Level Baregara B3 (CE) Dorvae B4 (NE) Hamatula (devil, LE) Hezrou (demon, CE) Meladaemon B2 (daemon, NE) Rusalka B3 (NE) Young adult green dragon (LE) 9th Level Ankou B4 (LE) Nalfeshnee (demon, CE) Derghodaemon B2 (daemon, NE) Gelugon (devil, LE) Glabrezu (demon, CE) Sepid B3 (div, NE) Thanadaemon B2 (daemon, NE)",
                          summary: "When casting summon monster, you also have access to the list of evil monsters on this page.",
                          source: "Champions of Corruption", isPremium: true)
        )
        try await db.insertFeat(
        .make("Wild Flanking (Betrayal, Teamwork)",
                          featType: "General",
                          prerequisites: "Power Attack, base attack bonus +4.",
                          benefit: "When you are flanking an opponent with an ally who also possesses this feat, you can throw yourself into your attacks in such a way that your opponent takes extra damage, at the risk of these attacks striking your ally as well. When you choose to use this feat, check the results of your attack roll against both your opponent’s AC and your ally’s AC. If you hit your opponent, you deal bonus damage as though you were using Power Attack. If you hit your ally, the ally takes no damage from your attack except this bonus damage. It is possible to hit both your enemy and your abettor with one attack. Extra damage from this feat stacks with Power Attack.",
                          summary: "When you are flanking an opponent with an ally who also possesses this feat, you can throw yourself into your attacks in such a way that your opponent takes extra damage, at the risk of these attacks…",
                          source: "Champions of Corruption", isPremium: true),

                    // // MARK: - Champions of Purity
        )
        try await db.insertFeat(
        .make("Golden Legion's Stayed Blade",
                          featType: "General",
                          prerequisites: "Base attack bonus +3.",
                          benefit: "If you deal an amount of damage to a creature that would slay it outright, you can pull that attack, instead dealing only enough damage to reduce its hit points to –1, and leave it stable.",
                          summary: "If you deal an amount of damage to a creature that would slay it outright, you can pull that attack, instead dealing only enough damage to reduce its hit points to –1, and leave it stable.",
                          source: "Champions of Purity", isPremium: true)
        )
        try await db.insertFeat(
        .make("Lastwall Phalanx (Teamwork)",
                          featType: "General",
                          prerequisites: "Base attack bonus +3, good alignment.",
                          benefit: "You gain a sacred bonus to your AC against the attacks of evil creatures and a sacred bonus to saves against the spells and abilities of evil creatures equal to the number of adjacent allies who also have this feat.",
                          summary: "You gain a sacred bonus to your AC against the attacks of evil creatures and a sacred bonus to saves against the spells and abilities of evil creatures equal to the number of adjacent allies who also…",
                          source: "Champions of Purity", isPremium: true)
        )
        try await db.insertFeat(
        .make("Legacy of Ozem",
                          featType: "General",
                          prerequisites: "Base attack bonus +5, good alignment.",
                          benefit: "When using good-aligned weapons, including those under the effects of a bless weapon spell, you gain a +1 sacred bonus on damage rolls.",
                          summary: "When using good-aligned weapons, including those under the effects of a bless weapon spell, you gain a +1 sacred bonus on damage rolls.",
                          source: "Champions of Purity", isPremium: true)
        )
        try await db.insertFeat(
        .make("Peacemaker",
                          featType: "General",
                          prerequisites: "Charisma 13, good alignment.",
                          benefit: "The DC to resist spells you cast to ensure peace or force aggressive creatures to become peaceful increases by +2. This affects spells that dissuade creatures from aggressive actions without exerting long-term or absolute control over them, and without leaving them defenseless. These spells include, but are not limited to, calm animals, calm emotions, command, compassionate allyUM, enthrall, euphoric tranquilityUM, sanctuary, and serenityUM.",
                          summary: "The DC to resist spells you cast to ensure peace or force aggressive creatures to become peaceful increases by +2.",
                          source: "Champions of Purity", isPremium: true)
        )
        try await db.insertFeat(
        .make("Siphon Poison",
                          featType: "General",
                          prerequisites: "",
                          benefit: "As a full-round action, you can remove an injury poison from a helpless or willing creature’s bloodstream with a successful Heal check. The DC of this check is equal to the poison’s DC. You can only draw out poison in this way within the first 2 rounds of when the target was poisoned. If the check is successful, the creature no longer suffers any additional effects from the poison. By performing this action, you do not risk poisoning yourself.",
                          summary: "As a full-round action, you can remove an injury poison from a helpless or willing creature’s bloodstream with a successful Heal check. The DC of this check is equal to the poison’s DC.",
                          source: "Champions of Purity", isPremium: true)
        )
        try await db.insertFeat(
        .make("Summon Good Monster",
                          featType: "General",
                          prerequisites: "Good alignment.",
                          benefit: "When casting summon monster, you also gain access to the list of good monsters below. Your righteous determination grants these summoned creatures the Diehard feat. You may still summon creatures from the standard list, but without the Diehard feat. 1st Level Celestial dog (NG) Celestial dolphin (NG) Celestial eagle (NG) Celestial fire beetle (NG) Celestial pony (NG) Celestial viper (NG)2nd Level Celestial octopus (NG) Celestial wolf (NG) Faun B3 (CG) Grig B2 (without fiddle ability) (NG) Pseudodragon (NG)3rd Level Blink dog (LG) Celestial shark (NG) Foo dog B3 (NG) Lantern archon (LG) Lyrakien azata B2 (CG) Silvanshee agathion B2 (NG)4th Level Celestial dire wolf (NG) Celestial giant eagle (NG) Celestial pegasus (CG) Faerie dragon B3 (NG) Foo lion B3 (NG) Hound archon (LG) Pixie (NG)5th Level Bralani azata (CG) Celestial orca (NG) Djinni (CG) Unicorn (CG) Vulpinal agathion B2 (NG)6th Level Celestial giant octopus (NG) Kirin B3 (LG) Legion archon B3 (LG) Lillend azata (LG) Wood giant B2 (CG)7th Level Celestial dire shark (NG) Celestial roc (NG) Movanic deva B2 (NG) Shedu B3 (LG) Shield archon B2 (LG) Treant (NG) Young bronze dragon (LG)8th Level Cloud giant (NG) Dragon horse B2 (NG) Lammasu B3 (LG) Monadic deva B2 (NG) Young gold dragon (LG)9th Level Astral deva (NG) Couatl (LG) Ghaele azata (CG) Leonal agathion B2 (NG) Storm giant (CG) Trumpet archon (LG)",
                          summary: "When casting summon monster, you also gain access to the list of good monsters below. Your righteous determination grants these summoned creatures the Diehard feat.",
                          source: "Champions of Purity", isPremium: true)
        )
        try await db.insertFeat(
        .make("Virtuous Creed",
                          featType: "General",
                          prerequisites: "You must be good.",
                          benefit: "Select one of the following virtues. You must adhere to that virtue’s creed in order to benefit from its bonus. If you break any part of the creed, you are unable to gain the benefits from that virtue for 24 hours. Significant violations require atonement for you to be able to benefit from this feat again.",
                          special: "You can gain this feat multiple times. Each time you take this feat, you must choose a new virtue.",
                          summary: "Select one of the following virtues. You must adhere to that virtue’s creed in order to benefit from its bonus.",
                          source: "Champions of Purity", isPremium: true)
        )
        try await db.insertFeat(
        .make("Worldwound Walker",
                          featType: "General",
                          prerequisites: "5 or more Hit Dice, good alignment.",
                          benefit: "You can alter the essence of your being to lessen the effects of spells designed to harm good creatures. When affected by spells and effects that behave differently according to alignment (such as unholy word or protection from good), you can choose whether you are considered good or neutral. This ability does not actually change your alignment or fool divinations, nor does it permit you to overcome alignment requirements for the use of magic items, class abilities, and so on.",
                          summary: "You can alter the essence of your being to lessen the effects of spells designed to harm good creatures.",
                          source: "Champions of Purity", isPremium: true),

                    // // MARK: - Cities of Golarion
        )
        try await db.insertFeat(
        .make("Corsair of Taldor",
                          featType: "General",
                          prerequisites: "Spent at least 1 month working on a ship for Jean Coremont.",
                          benefit: "You get a +2 bonus on initiative checks made while on a ship and deal an additional +1 damage when using light or one-handed weapons on a ship.",
                          summary: "You get a +2 bonus on initiative checks made while on a ship and deal an additional +1 damage when using light or one-handed weapons on a ship.",
                          source: "Cities of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Endure Pain (Zon-Kuthon's Kiss)",
                          featType: "General",
                          prerequisites: "Survived being tortured 10 or more times.",
                          benefit: "If you take nonlethal damage, you may attempt a Fortitude saving throw (DC equal to 10 + the nonlethal damage dealt) to reduce that damage by half. The Endurance feat grants a +4 bonus on this saving throw.",
                          summary: "If you take nonlethal damage, you may attempt a Fortitude saving throw (DC equal to 10 + the nonlethal damage dealt) to reduce that damage by half.",
                          source: "Cities of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Indomitable Mount (Combat)",
                          featType: "General",
                          prerequisites: "Mounted Combat, Handle Animal 5 ranks, Ride 5 ranks, Lastwall affinity.",
                          benefit: "Once per round when your mount must make a saving throw, you can make a Ride check as an immediate action. Your mount makes its save if your Ride check result is greater than the DC of the opponent’s attack.",
                          summary: "Once per round when your mount must make a saving throw, you can make a Ride check as an immediate action.",
                          source: "Cities of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Irrisen Icemage",
                          featType: "General",
                          prerequisites: "Sorcerer, Irrisen affinity, may only be taken at first level.",
                          benefit: "All of your spells with the cold descriptor are cast at +1 caster level. Any spell with a different energy descriptor is cast at –1 caster level. Three times per day you may alter a spell you cast to deal cold damage instead of its normal damage; your +1 caster level for this feat applies to this variant casting.",
                          summary: "All of your spells with the cold descriptor are cast at +1 caster level. Any spell with a different energy descriptor is cast at –1 caster level.",
                          source: "Cities of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Master Delver",
                          featType: "General",
                          prerequisites: "Explored part of Cassomir’s locker.",
                          benefit: "You get a +2 bonus on all Knowledge (dungeoneering) checks and Perception checks made to notice traps. Knowledge (dungeoneering) is always a class skill for you.",
                          summary: "You get a +2 bonus on all Knowledge (dungeoneering) checks and Perception checks made to notice traps. Knowledge (dungeoneering) is always a class skill for you.",
                          source: "Cities of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Wheeling Charge (Combat)",
                          featType: "General",
                          prerequisites: "Mounted Combat, Ride-By Attack, Ride 5 ranks, Lastwall affinity.",
                          benefit: "When you are mounted and use the charge action, your mount can make one turn of up to 90 degrees as part of the move, as long as each part of the move is at least 10 feet. You may make an attack during any part of this move. Your total movement for the round can’t exceed double your mounted speed. Allied creatures do not impede your charge, though you cannot attack from or end your move in an ally’s space.",
                          normal: "You cannot turn when making a charge.",
                          summary: "When you are mounted and use the charge action, your mount can make one turn of up to 90 degrees as part of the move, as long as each part of the move is at least 10 feet.",
                          source: "Cities of Golarion", isPremium: true),

                    // // MARK: - City of Strangers, Pathfinder #12: Crown of Fangs, Pathfinder Campaign Setting
        )
        try await db.insertFeat(
        .make("Bloatmage Initiate",
                          featType: "General",
                          prerequisites: "Spell Focus (any school).",
                          benefit: "You learn the basics of the ancient art of hemotheurgy. Pick one school of magic in which you possess the Spell Focus feat—you cast spells from this school of magic at +1 caster level. This bonus stacks with the bonus from Spell Focus. Unfortunately, the bloating side effects increase your girth to such a point that you are constantly under the effects of a medium load—your maximum bonus to AC from Dexterity is +3, you gain an armor check penalty of –3, and your speed decreases as appropriate (generally from 30 feet to 20 feet for a Medium creature).",
                          summary: "You learn the basics of the ancient art of hemotheurgy. Pick one school of magic in which you possess the Spell Focus feat—you cast spells from this school of magic at +1 caster level.",
                          source: "City of Strangers, Pathfinder #12: Crown of Fangs, Pathfinder Campaign Setting", isPremium: true),

                    // // MARK: - Classic Horrors Revisited
        )
        try await db.insertFeat(
        .make("Brain Eater",
                          featType: "General",
                          prerequisites: "Ghoul, Int 17.",
                          benefit: "If you eat a portion of the brain of a creature with Intelligence 3 or higher, you gain a +2 insight bonus on all skill checks and Will saving throws for 1 hour. Eating a brain is a full-round action, and the target must be dead or helpless. If the target is living, you may attempt to eat its brain as a coup de grace attack on the target, but you gain the insight bonus only if your attempt results in the victim’s death.",
                          summary: "If you eat a portion of the brain of a creature with Intelligence 3 or higher, you gain a +2 insight bonus on all skill checks and Will saving throws for 1 hour.",
                          source: "Classic Horrors Revisited", isPremium: true)
        )
        try await db.insertFeat(
        .make("Civilized Ghoulishness",
                          featType: "General",
                          prerequisites: "Ghoul, Cha 18.",
                          benefit: "Your appearance is such that, while paleskinned and gaunt, you can pass as a living humanoid of your choice. You gain a +10 racial bonus on Disguise checks made to appear human, and your channel resistance increases by +2. Ghasts with this feat can activate or suppress their stench ability as a free action.",
                          summary: "Your appearance is such that, while paleskinned and gaunt, you can pass as a living humanoid of your choice.",
                          source: "Classic Horrors Revisited", isPremium: true),

                    // // MARK: - Classic Monsters Revisited
        )
        try await db.insertFeat(
        .make("Gift of Sight",
                          featType: "General",
                          prerequisites: "Troll, patron deity Urxehl.",
                          benefit: "You can read the future by cutting open your abdomen and pulling out your entrails. This is a full-round action that deals 6d6 points of damage to you. This functions as the divination spell, using your Hit Dice as the caster level. You can perform this ability no more than once per day.",
                          summary: "You can read the future by cutting open your abdomen and pulling out your entrails. This is a full-round action that deals 6d6 points of damage to you.",
                          source: "Classic Monsters Revisited", isPremium: true)
        )
        try await db.insertFeat(
        .make("Impaling Charge",
                          featType: "General",
                          prerequisites: "Gore attack, powerful charge.",
                          benefit: "When you hit an opponent with a gore attack as part of a charge, you might also start a grapple as a free action. You do not need to make an additional touch attack to start this grapple and you do not provoke an attack of opportunity. Do not add your size modifier (if positive) to the initial grapple check made to start the grapple. Your size modifier applies as normal on all subsequent checks.",
                          summary: "When you hit an opponent with a gore attack as part of a charge, you might also start a grapple as a free action.",
                          source: "Classic Monsters Revisited", isPremium: true)
        )
        try await db.insertFeat(
        .make("Minotaur's Charge",
                          featType: "General",
                          prerequisites: "Str 13, Improved Bull Rush, powerful charge.",
                          benefit: "When you hit an opponent with a charge attack, you might also initiate a bull rush as a free action. This does not require you to move into your opponent’s square and does not provoke an attack of opportunity. If you successfully push your opponent 15 feet or more, he is also knocked prone.",
                          summary: "When you hit an opponent with a charge attack, you might also initiate a bull rush as a free action.",
                          source: "Classic Monsters Revisited", isPremium: true)
        )
        try await db.insertFeat(
        .make("Quick at Hand",
                          featType: "General",
                          prerequisites: "Ogre.",
                          benefit: "You may use any item as an improvised melee or ranged weapon without penalty.",
                          summary: "You may use any item as an improvised melee or ranged weapon without penalty.",
                          source: "Classic Monsters Revisited", isPremium: true)
        )
        try await db.insertFeat(
        .make("Scent of Fear",
                          featType: "General",
                          prerequisites: "Possess the scent ability, any evil.",
                          benefit: "You can track by smell and automatically pinpoint the location of opponents by scent alone if they are within 30 feet. In addition, you gain a +2 morale bonus on attack rolls against shaken or frightened opponents, and you can detect them at twice the normal scent range (120 feet, pinpoint at 60 feet). You gain a +2 bonus on all Will saves as long as a shaken or frightened target is in range. You cannot be surprised by anyone who is shaken or frightened within range of your enhanced sense of smell.",
                          summary: "You can track by smell and automatically pinpoint the location of opponents by scent alone if they are within 30 feet.",
                          source: "Classic Monsters Revisited", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sow Terror",
                          featType: "General",
                          prerequisites: "Stealthy.",
                          benefit: "Anytime you win an opposed Hide check by 5 or more you might sow terror as a standard action. You do so by scraping your nails slightly on a solid surface, causing a board to creak ever so lightly, or rapping on a window pane. The victim cannot detect the source of the sound and dismisses it as the wind or some other mundane source, but the idea that something might be lurking nearby festers in the victim’s subconscious. The victim must roll a Will save (DC 10 + 1/2 you character level + your Charisma modifier) or become shaken for 1d4 rounds.",
                          summary: "Anytime you win an opposed Hide check by 5 or more you might sow terror as a standard action.",
                          source: "Classic Monsters Revisited", isPremium: true),

                    // // MARK: - Classic Treasures Revisited
        )
        try await db.insertFeat(
        .make("Companion Figurine",
                          featType: "General",
                          prerequisites: "Handle Animal 1 rank, own a figurine of wondrous power.",
                          benefit: "You may select the creature summoned by your figurine of wondrous power as an animal companion or familiar, or as appropriate. The figurine has the standard abilities of a familiar or animal companion of its type, plus additional abilities related to its figurine type (see below). The main advantage of this is that if your familiar or companion is killed in creature form, it merely reverts to statue form and can be used again later. The following standard figurines are available as animal companions (C) or familiars (F).Ebony Fly (C): You must have the Vermin Heart feat (see page 219 of the Pathfinder Chronicles Campaign Setting) to select this creature as an animal companion. It is treated as a horse animal companion, and at 8th level it gains a fly speed of 120 feet (average maneuverability).Golden Lions (C): When you select a golden lion as an animal companion, one of the pair becomes your companion and the other retains its standard figurine abilities.Ivory Goats (C): When selecting an ivory goat as an animal companion, you select one of the three goats in the set (traveling, travail, or terror) as your companion; the others remain standard figurines. All three goats are treated as horse companions. The goat of traveling never suffers from fatigue or exhaustion from extended travel. The goat of travail has 2 horn attacks (1d8 + Str bonus) in addition to a horse’s normal attacks. The goat of terror has the fear aura and magical weapon horns as described in its figurine entry.Marble Elephant (C): The elephant is treated as an elephant companion (see page 128 of the Pathfinder RPG Bestiary).Serpentine Owl (C, F): The owl is treated as a bird animal companion or an owl familiar, but only in its Small horned owl form. In its giant owl form, it is merely a creature, not an animal companion or familiar. After three uses of its giant owl form, the figurine loses that transformation ability forever but still functions normally in its horned owl form as an animal companion or familiar.Silver Raven (C, F): The raven is treated as a bird animal companion or a raven familiar. It retains its metallic appearance and animal messenger ability (though this is redundant for an intelligent familiar) but not its hardness when in animal form.While the figurine is active, you and the active figurine gain all the normal benefits of having a companion creature; for example, a wizard with a silver raven familiar gains a +3 bonus on Appraise checks, the raven can speak one language, and so on. While the figure is inactive, you gain none of these benefits but are not otherwise hampered by its inert state (as if the creature were out of range but not dead). The usable duration of the companion figurine doubles; for example, an ebony fly is normally usable up to three times per week for up to 12 hours per use, but as a companion creature you may use it up to six times per week for up to 12 hours per use. The figurine is still a magic item and is subject to effects like antimagic field and dispel magic that affect magic items; it uses its caster level or your own, whichever is greater.",
                          summary: "You may select the creature summoned by your figurine of wondrous power as an animal companion or familiar, or as appropriate.",
                          source: "Classic Treasures Revisited", isPremium: true)
        )
        try await db.insertFeat(
        .make("Instrumental",
                          featType: "General",
                          prerequisites: "Bardic Performance class feature, Perform (any instrument) 3 ranks.",
                          benefit: "When activating a magical instrument as a fullround or standard action, you may begin a bardic performance as a free action. Your performance must use a Perform skill appropriate to the instrument.Alternatively, you may expand 2 rounds of bardic performance to add +2 to any save DCs associated with the use of the instrument's powers.If your instrument summons allies, such as pipes of the sewers or the horn of Valhalla, your bardic performances with that instrument affect those allies even if they normally would not.",
                          summary: "When activating a magical instrument as a fullround or standard action, you may begin a bardic performance as a free action.",
                          source: "Classic Treasures Revisited", isPremium: true),

                    // // MARK: - Cohorts and Companions
        )
        try await db.insertFeat(
        .make("Basic Harmony (Teamwork)",
                          featType: "General",
                          prerequisites: "Bardic performance or raging song.",
                          benefit: "You can attempt a DC 10 Perform check to aid the Perform check of an ally who also has this feat. If you succeed, your ally gains a +1 bonus for each 5 points of your check result; a check result of 10 grants a +2 bonus, a result of 15 grants a +3 bonus, and so on. If you fail, the discord applies a –5 penalty on your ally’s check.",
                          normal: "Aid another checks grant a +2 bonus.",
                          summary: "You can attempt a DC 10 Perform check to aid the Perform check of an ally who also has this feat.",
                          source: "Cohorts and Companions", isPremium: true)
        )
        try await db.insertFeat(
        .make("Blazing Channel",
                          featType: "General",
                          prerequisites: "Turn Undead, channel positive energy class feature.",
                          benefit: "When you use your Turn Undead feat, undead failing their saving throw are engulfed in holy fire. This functions identically to catching on fire (Core Rulebook 444), but the damage dealt is divine (like the divine damage from flame strike) rather than fire. Water cannot extinguish this holy fire, but any negative energy effect that heals the creature of at least 5 points of damage extinguishes the flames instantly.",
                          summary: "When you use your Turn Undead feat, undead failing their saving throw are engulfed in holy fire.",
                          source: "Cohorts and Companions", isPremium: true)
        )
        try await db.insertFeat(
        .make("Channel Surge",
                          featType: "General",
                          prerequisites: "Channel energy or lay on hands class feature.",
                          benefit: "When you channel energy or lay on hands, you may expend two uses of the ability as a full-round action to increase the amount of healing or damage you do by +50%.",
                          summary: "When you channel energy or lay on hands, you may expend two uses of the ability as a full-round action to increase the amount of healing or damage you do by +50%.",
                          source: "Cohorts and Companions", isPremium: true)
        )
        try await db.insertFeat(
        .make("Charming Performance",
                          featType: "General",
                          prerequisites: "Cha 13, Perform (any) 1 rank, bardic performance or raging song.",
                          benefit: "You can use Perform, rather than Diplomacy, to improve an NPC’s starting attitude toward you. Alternatively, by praising another character, you may use Perform to improve an NPC’s starting attitude toward another character, though the DC for doing so is increased by 5. Either use of this feat requires at least 5 minutes of performance. You can’t improve an NPC’s attitude beyond friendly in this way, but if you would have made them helpful, you gain a +2 bonus on your next normal Diplomacy check against that NPC attempted within 24 hours. If the campaign uses the contact rules (Ultimate Campaign 148), seeing you perform can count as up to four of the five positive interactions required to cultivate a contact.",
                          summary: "You can use Perform, rather than Diplomacy, to improve an NPC’s starting attitude toward you.",
                          source: "Cohorts and Companions", isPremium: true)
        )
        try await db.insertFeat(
        .make("Charnel Soldiers",
                          featType: "General",
                          prerequisites: "Any teamwork feat, ability to control or create undead.",
                          benefit: "When you create undead, they gain one teamwork feat you know as a bonus feat, though they gain its benefits only when cooperating with you or with other undead that you have created. If you control undead with the Command Undead feat or a spell like command undead, they likewise gain one teamwork feat you know as a bonus feat as long as they remain under your control. Intelligent undead gain no benefit from this feat.",
                          summary: "When you create undead, they gain one teamwork feat you know as a bonus feat, though they gain its benefits only when cooperating with you or with other undead that you have created.",
                          source: "Cohorts and Companions", isPremium: true)
        )
        try await db.insertFeat(
        .make("Compelling Harmonies (Teamwork)",
                          featType: "General",
                          prerequisites: "Basic Harmony, Perform (keyboard, percussion, sing, string, or wind) 10 ranks, bardic performance or raging song.",
                          benefit: "As a standard action, you may expend one round of bardic performance to boost the effectiveness of the bardic performance of an ally within 60 feet who also has this feat. Until the beginning of your next turn, if that ally uses a bardic performance that allows a saving throw, increase that saving throw DC by 2.",
                          summary: "As a standard action, you may expend one round of bardic performance to boost the effectiveness of the bardic performance of an ally within 60 feet who also has this feat.",
                          source: "Cohorts and Companions", isPremium: true)
        )
        try await db.insertFeat(
        .make("Counterpoint to Inspiration (Teamwork)",
                          featType: "General",
                          prerequisites: "Basic Harmony, Compelling Harmony, Perform (keyboard, percussion, sing, string, or wind) 10 ranks, bardic performance or raging song.",
                          benefit: "When an ally with this feat is within 60 feet and uses a bardic performance or raging song that grants allies a morale bonus or competence bonus, you may perform the same bardic performance or raging song to increase those bonuses by +1. This increase only lasts as long as you and your ally each maintain the same performance, and cannot be extended with effects like Lingering PerformanceAPG. Additional bards with this feat beyond the second don’t increase the bonuses further.",
                          summary: "When an ally with this feat is within 60 feet and uses a bardic performance or raging song that grants allies a morale bonus or competence bonus, you may perform the same bardic performance or raging…",
                          source: "Cohorts and Companions", isPremium: true)
        )
        try await db.insertFeat(
        .make("Grow Plant Creature (Item Creation)",
                          featType: "General",
                          prerequisites: "Train Plants, Handle Animal 5 ranks, Knowledge (nature) 5 ranks.",
                          benefit: "You can grow plants and perform rituals to invest them with animating spirits, becoming Assassin Vine, treants, or viper vines. Each plant creature has a list of additional prerequisites, costs, and skill checks required to grow them (see Growing Plant Creatures below). At the GM’s discretion, characters with this feat may grow other plant creatures as well.",
                          summary: "You can grow plants and perform rituals to invest them with animating spirits, becoming Assassin Vine, treants, or viper vines.",
                          source: "Cohorts and Companions", isPremium: true)
        )
        try await db.insertFeat(
        .make("Monstrous Companion",
                          featType: "General",
                          prerequisites: "Handle Animal 7 ranks; class feature that functions as the druid animal companion ability (including animal companion, divine bond [mount], hunter’s bond [animal companion], nature’s bond [animal companion], and the mount class feature) with an effective druid level of 7.",
                          benefit: "You can select a magical beast as a cohort in place of your animal companion class feature (for more information on monster cohorts see Bestiary 316). The following chart determines the effective cohort level for your monstrous companion based on your effective druid level. Effective Druid Level Effective Cohort Level 7 4 8 5 9 6 10 6 11 6 12 7 13 8 14 9 15 9 16 9 17 10 18 11 19 11 20 12 If the magical beast’s effective cohort level is lower than what is allowed by your effective druid level, the cohort gains class levels equal to the difference. A cohort with 1 class level gains the link and share spells abilities of an animal companion. A cohort with 3 class levels gains the evasion animal companion ability. A cohort with 6 class levels gains the devotion animal companion ability. If the class feature you use as a prerequisite for this feat does not grant one of those abilities (such as a cavalier’s mount, which does not gain share spells), your monstrous mount also does not gain the ability. The magical beast does not gain any abilities not listed here. In addition to the magical beasts listed in the Bestial Cohorts sidebar, this feat can be used to gain an ahuizotlB3, araneaB2, blink dogB2, dragon horseB2, dragonneB3, giant eagle, giant owlB3, giant vultureB3, griffon, kirinB3, leucrottaB2, manticore, pegasus, sea catB4, sheduB3, sleipnirB3, worg, or xanthosB4. The rules for using each of these creatures as a monster cohort are presented in the appendices of their respective Pathfinder RPG Bestiary volumes.",
                          special: "This feat counts as the Leadership feat for the purposes of prerequisites. A character cannot have both Leadership and Monstrous Companion.",
                          summary: "You can select a magical beast as a cohort in place of your animal companion class feature (for more information on monster cohorts see Bestiary 316).",
                          source: "Cohorts and Companions", isPremium: true)
        )
        try await db.insertFeat(
        .make("Rouse Emotions",
                          featType: "General",
                          prerequisites: "Cha 13, Charming Performance, Perform (any) 5 ranks, bardic performance or raging song.",
                          benefit: "You can use Charming Performance on all creatures within 60 feet. In addition to swaying the crowd’s starting attitude toward a single person, you may choose to sway the crowd’s attitude toward a well-defined group with which they are familiar (such as a specific nation, organization, or religion). An attempt to rouse emotions about a group takes a –5 penalty due to the difficulty of creating strong feelings toward an entire group rather than a specific individual. The DC for this check is 30 + 1 for every five people in the crowd to be affected. You can’t use Rouse Emotions to change a crowd’s attitude by more than one step, or to make it helpful or hostile.",
                          summary: "You can use Charming Performance on all creatures within 60 feet.",
                          source: "Cohorts and Companions", isPremium: true)
        )
        try await db.insertFeat(
        .make("Secret Language (Teamwork)",
                          featType: "General",
                          prerequisites: "Bluff 1 rank, Linguistics 1 rank, Sense Motive 1 rank.",
                          benefit: "You gain a +5 circumstance bonus on Bluff checks made to pass secret messages to other characters that have this feat, and can communicate as much information as you could normally say in one round as a swift action.",
                          summary: "You gain a +5 circumstance bonus on Bluff checks made to pass secret messages to other characters that have this feat, and can communicate as much information as you could normally say in one round…",
                          source: "Cohorts and Companions", isPremium: true)
        )
        try await db.insertFeat(
        .make("Solar Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Any spell you cast with the light descriptor is fortified with the cleansing energies of the sun. If the spell creates an area of light, all creatures are dazzled for as long as they remain within the spell’s area. Oozes, fungal creatures, creatures from the Shadow Plane, and undead must also succeed at a Will save (DC 10 + the spell level + your Wisdom or Charisma bonus) or take a –2 penalty on attack rolls, damage rolls, saving throws, skill checks, and ability checks for as long as they remain within the spell’s area. If the spell normally dazzles or blinds affected creatures with a duration other than instantaneous or permanent, the duration of that effect is increased by a number of rounds equal to the spell’s original level. Saving throws to remove the effect early still apply and can bypass this increase. If the spell deals more damage against oozes, fungal creatures, creatures from the Shadow Plane, or undead with a specific vulnerability to sunlight, the spell deals 1 additional point of damage per die against such creatures. A solar spell uses up a spell slot 1 level higher than the spell’s actual level.",
                          summary: "Any spell you cast with the light descriptor is fortified with the cleansing energies of the sun.",
                          source: "Cohorts and Companions", isPremium: true)
        )
        try await db.insertFeat(
        .make("Train Plants",
                          featType: "General",
                          prerequisites: "Handle Animal 5 ranks, Knowledge (nature) 5 ranks.",
                          benefit: "A character with this feat treats creatures of the plant type with Intelligence scores of 3 or lower as animals for the purposes of the Handle Animal skill. Plant creatures without an Intelligence score are treated as animals with an Intelligence of 1 for these purposes. Ordinary plants lack Wisdom and Charisma scores—they aren’t creatures and can’t be trained.",
                          summary: "A character with this feat treats creatures of the plant type with Intelligence scores of 3 or lower as animals for the purposes of the Handle Animal skill.",
                          source: "Cohorts and Companions", isPremium: true),

                    // // MARK: - Curse of the Crimson Throne (PFRPG), Curse of the Crimson Throne Player's Guide
        )
        try await db.insertFeat(
        .make("Shingle Runner",
                          featType: "General",
                          prerequisites: "Dex 13, Acrobatic.",
                          benefit: "You gain a +2 bonus on Acrobatics and Climb checks, and can take 10 on Climb checks even when distracted. If you have 10 or more ranks in one of these skills, the bonus increases to +4 for that skill. If you fall, you automatically reduce the damage taken by the fall by 1d6, as if you’d fallen 10 feet less. This reduction in damage stacks with the reduction from a successful Acrobatics check to soften a fall.",
                          summary: "You gain a +2 bonus on Acrobatics and Climb checks, and can take 10 on Climb checks even when distracted.",
                          source: "Curse of the Crimson Throne (PFRPG), Curse of the Crimson Throne Player's Guide", isPremium: true),

                    // // MARK: - Curse of the Crimson Throne Player's Guide
        )
        try await db.insertFeat(
        .make("Acadamae Graduate",
                          featType: "General",
                          prerequisites: "Specialist wizard 1st; cannot have conjuration as a forbidden school.",
                          benefit: "Whenever you cast a prepared arcane spell from the conjuration (summoning) school that takes longer than a standard action to cast, reduce the casting time by one round (to a minimum casting time of one standard action). Casting a spell in this way is taxing and requires a Fortitude save (DC 15 + spell level) to resist becoming fatigued.",
                          summary: "Whenever you cast a prepared arcane spell from the conjuration (summoning) school that takes longer than a standard action to cast, reduce the casting time by one round (to a minimum casting time of…",
                          source: "Curse of the Crimson Throne Player's Guide", isPremium: true),

                    // // MARK: - Dark Markets - A Guide to Katapesh
        )
        try await db.insertFeat(
        .make("Jackal Blood",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You gain a +4 bonus on saving throws to resist spells or effects that would cause you to fall asleep. You also gain a +2 bonus on Listen checks.",
                          summary: "You gain a +4 bonus on saving throws to resist spells or effects that would cause you to fall asleep. You also gain a +2 bonus on Listen checks.",
                          source: "Dark Markets - A Guide to Katapesh", isPremium: true),

                    // // MARK: - Demon Hunter's Handbook
        )
        try await db.insertFeat(
        .make("Coordinated Distraction (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When you and at least one ally with this feat threaten the same enemy, the enemy treats the DC to cast spells defensively as 2 higher for each threatening character with this feat. If you or your allies are incapable of taking an attack of opportunity against the target for any reason, the effects of this feat do not apply.",
                          summary: "When you and at least one ally with this feat threaten the same enemy, the enemy treats the DC to cast spells defensively as 2 higher for each threatening character with this feat.",
                          source: "Demon Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Demonic Nemesis (Combat)",
                          featType: "General",
                          prerequisites: "Demon Hunter ISWG, Knowledge (planes) 6 ranks.",
                          benefit: "When you take this feat, choose a demon lord. When fighting followers of that demon lord, including cultists or demons, you gain a +2 bonus on damage rolls and rolls to confirm critical hits against these creatures.",
                          special: "You can take this feat more than once. Each time you do, you must choose a new demon lord.",
                          summary: "When you take this feat, choose a demon lord. When fighting followers of that demon lord, including cultists or demons, you gain a +2 bonus on damage rolls and rolls to confirm critical hits against…",
                          source: "Demon Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Exorcist's Rebuttal",
                          featType: "General",
                          prerequisites: "Improved Iron Will, Iron Will.",
                          benefit: "If you use your Improved Iron Will feat to reroll a Will save against a compulsion effect and successfully save against the effect, the creature that created the effect (if it originated from a creature) takes 1d4 points of Wisdom damage.",
                          summary: "If you use your Improved Iron Will feat to reroll a Will save against a compulsion effect and successfully save against the effect, the creature that created the effect (if it originated from a…",
                          source: "Demon Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Outer Planes Traveler",
                          featType: "General",
                          prerequisites: "Knowledge (planes) 11 ranks, ability to cast plane shift or gate as a spell or spell-like ability.",
                          benefit: "Choose one of the planes below. The alignment of the plane must be within one step of your alignment. You gain a +2 bonus on saves against spells and spell-like abilities with the associated descriptor, and you cast spells with that descriptor at +1 caster level. Plane Alignment Descriptor Heaven LG Light Nirvana NG Good Elysium CG Emotion UM Axis LN Lawful The Boneyard N Death The Maelstrom CN Chaotic Hell LE Pain UM Abaddon NE Evil The Abyss CE Fear",
                          summary: "Choose one of the planes below. The alignment of the plane must be within one step of your alignment.",
                          source: "Demon Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Punch Through (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Base attack bonus +6.",
                          benefit: "As a full-round action, you may make a single attack against a target. If the attack hits and deals damage to the target, all of your allies with this feat ignore up to 5 points of damage reduction against the same target for 1 round. This feat does not apply to damage reduction without a type (such as DR 10/—).",
                          summary: "As a full-round action, you may make a single attack against a target.",
                          source: "Demon Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spell Chain (Teamwork)",
                          featType: "General",
                          prerequisites: "Spell Penetration.",
                          benefit: "Whenever you make a successful caster level check to overcome a target’s spell resistance, the next ally who also has this feat that attempts to overcome the same target’s spell resistance can roll twice when attempting his own caster level check, taking the better result. This benefit must be used within 1 round or else it is lost.",
                          summary: "Whenever you make a successful caster level check to overcome a target’s spell resistance, the next ally who also has this feat that attempts to overcome the same target’s spell resistance can roll…",
                          source: "Demon Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Vengeful Banisher (Story)",
                          featType: "General",
                          prerequisites: "You witnessed at least one family member or a close friend being killed by demons or demonic cultists, or you have the Hated Foe or An Eye for an Eye background (see Ultimate Campaign).",
                          benefit: "You gain a +2 bonus on saving throws against spells or effects originating from demon worshipers and from creatures of the demon type.Goal: Convince the leader of a demon cult to renounce her Abyssal lord and seek atonement for her actions. Alternatively, if you kill the cult leader, you must also decisively defeat at least half of the cultists and have the cult’s base of operations consecrated by a well-known local priest.Completion Benefit: When a demon damages you with an attack, spell, spell-like ability, or special ability and reduces you to fewer than 0 hit points, you may allow righteous energy to pour through you and into the demon, instantly sending it to another plane of existence (as dismissal) if it fails a Will save (DC = 10 + 1/2 your Hit Dice + your Charisma modifier). This dismissal takes place after you are damaged but before you fall unconscious, so you can use this ability even if the demon kills you. You can use this ability once per day. Once you have used this ability, you must be healed to your maximum number of hit points before you can use the ability again.",
                          summary: "You gain a +2 bonus on saving throws against spells or effects originating from demon worshipers and from creatures of the demon type.Goal: Convince the leader of a demon cult to renounce her Abyssal…",
                          source: "Demon Hunter's Handbook", isPremium: true),

                    // // MARK: - Demons Revisited
        )
        try await db.insertFeat(
        .make("Babau Rogue Talent",
                          featType: "General",
                          prerequisites: "Dex 17, babau.",
                          benefit: "Choose one rogue talent that adds to sneak attacks (such as bleeding attack or slow reactions).",
                          special: "You may select this feat multiple times. Each time you take the feat, you gain a new rogue talent.",
                          summary: "Choose one rogue talent that adds to sneak attacks (such as bleeding attack or slow reactions).",
                          source: "Demons Revisited", isPremium: true)
        )
        try await db.insertFeat(
        .make("Consume Undeath",
                          featType: "General",
                          prerequisites: "Nabasu, Con 23",
                          benefit: "As a full-round action, you can consume the animating force of any undead creature you have created with your death-stealing gaze. This immediately destroys the undead creature, but grants you one of that creature’s special attacks or supernatural abilities (chosen from one of the following abilities possessed by the undead: Constitution drain, disease, energy drain, or paralysis). The ability granted persists for 24 hours or until the next sunrise, whichever comes first.",
                          summary: "As a full-round action, you can consume the animating force of any undead creature you have created with your death-stealing gaze.",
                          source: "Demons Revisited", isPremium: true)
        )
        try await db.insertFeat(
        .make("Demonic Possession",
                          featType: "General",
                          prerequisites: "Demon or half-demon, Cha 21, Wis 17",
                          benefit: "You gain the ability to use magic jar as a spell-like ability once per day.",
                          special: "You may take this feat more than once. Each time you select this feat, you gain the ability to use your magic jar spell-like ability one additional time per day.",
                          summary: "You gain the ability to use magic jar as a spell-like ability once per day.",
                          source: "Demons Revisited", isPremium: true)
        )
        try await db.insertFeat(
        .make("Flensing Strike",
                          featType: "General",
                          prerequisites: "Sneak attack +3d6, bleeding sneak attack rogue trick or bleed universal monster ability.",
                          benefit: "When you successfully inflict sneak attack damage on a foe with a slashing weapon, your attack doesn’t go particularly deep, but you do carve away a significant portion of skin and flesh. If this sneak attack inflicts bleed damage, the victim of the sneak attack is sickened by the pain and has its natural armor bonus (if any) reduced by a number of points equal to the number of sneak attack dice you possess. These penalties persist as long as the bleed damage persists. Multiple strikes on the same foe do not stack the bleed damage, but the penalty to natural armor does stack, to a maximum penalty equal to the target’s normal full natural armor score.",
                          summary: "When you successfully inflict sneak attack damage on a foe with a slashing weapon, your attack doesn’t go particularly deep, but you do carve away a significant portion of skin and flesh.",
                          source: "Demons Revisited", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Death-Stealing",
                          featType: "General",
                          prerequisites: "Nabasu, Ability Focus (death-stealing gaze)",
                          benefit: "When you would normally create a ghoul with your death-stealing gaze, you instead create a ghast. As a free action, you may also spend a number of growth points in order to even further augment your new undead minion as it is created. If you spend 1 growth point, you create a wight instead of a ghast. If you spend 3 growth points, you create a wraith instead of a ghast. And if you spend 5 growth points, you transform the target into a juju zombie instead of a ghast. Note that spending growth in this manner reduces your statistics as appropriate.",
                          summary: "When you would normally create a ghoul with your death-stealing gaze, you instead create a ghast.",
                          source: "Demons Revisited", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Infuse Weapon",
                          featType: "General",
                          prerequisites: "Infuse weapon special ability, Cha 27",
                          benefit: "When you infuse a weapon, you can add an additional +1 worth of weapon qualities to that weapon; this could either be used to increase a weapon infused to be a +1 weapon to be a +2 weapon, or to grant a weapon quality like flaming, defending, keen, or any other +1 quality from the Pathfinder RPG Core Rulebook. This effect occurs automatically as you infuse a weapon, but you may only do so to one weapon you wield at a time.",
                          special: "You may take this feat more than once; each time you do, the limit to the number of weapons on which you can simultaneously use Improved Infuse Weapon increases by 2.",
                          summary: "When you infuse a weapon, you can add an additional +1 worth of weapon qualities to that weapon; this could either be used to increase a weapon infused to be a +1 weapon to be a +2 weapon, or to…",
                          source: "Demons Revisited", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Possession",
                          featType: "General",
                          prerequisites: "Demonic Possession or shadow demon, Cha 25",
                          benefit: "The duration of your magic jar spell-like ability increases to 24 hours. You can choose to activate a host body’s extraordinary abilities, supernatural abilities, spelllike abilities, and spells known or prepared.",
                          summary: "The duration of your magic jar spell-like ability increases to 24 hours.",
                          source: "Demons Revisited", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Stench",
                          featType: "General",
                          prerequisites: "Stench universal monster ability.",
                          benefit: "The aura range of your stench ability increases by 30 feet. In addition, your stench ability save DC increases by 2, and its duration increases by 50%.",
                          summary: "The aura range of your stench ability increases by 30 feet. In addition, your stench ability save DC increases by 2, and its duration increases by 50%.",
                          source: "Demons Revisited", isPremium: true)
        )
        try await db.insertFeat(
        .make("Multiweapon Defense",
                          featType: "General",
                          prerequisites: "Three or more arms, Dex 21",
                          benefit: "When you make a full-attack action, you may choose not to take an attack with a number of your wielded weapons other than your primary weapon. For each attack you forgo, you gain a +1 shield bonus to your AC for that round. This bonus stacks with itself to a maximum bonus of +5, but not with shield bonuses to AC from other sources.",
                          summary: "When you make a full-attack action, you may choose not to take an attack with a number of your wielded weapons other than your primary weapon.",
                          source: "Demons Revisited", isPremium: true)
        )
        try await db.insertFeat(
        .make("Multiweapon Specialist",
                          featType: "General",
                          prerequisites: "Three or more arms, Dex 21",
                          benefit: "When you wield one-handed or light weapons in each of your arms, and all of those weapons belong to the same weapon group (as defined for the fighter class), all attacks with those weapons gain a +2 bonus on damage rolls.",
                          summary: "When you wield one-handed or light weapons in each of your arms, and all of those weapons belong to the same weapon group (as defined for the fighter class), all attacks with those weapons gain a +2…",
                          source: "Demons Revisited", isPremium: true)
        )
        try await db.insertFeat(
        .make("Penetrating Possession",
                          featType: "General",
                          prerequisites: "Magic jar as a known spell or spell-like ability, Cha 21",
                          benefit: "The first time you attempt to possess a host under the effect of protection from evil spell or any similar spell, you have a chance to dispel that spell as if you had cast dispel magic on the spell.",
                          summary: "The first time you attempt to possess a host under the effect of protection from evil spell or any similar spell, you have a chance to dispel that spell as if you had cast dispel magic on the spell.",
                          source: "Demons Revisited", isPremium: true)
        )
        try await db.insertFeat(
        .make("Pungent Stench",
                          featType: "General",
                          prerequisites: "Stench universal monster ability, Improved Stench, Great Fortitude",
                          benefit: "The first round a creature is affected by your stench, it is nauseated in addition to being sickened. At the end of an affected creature’s turn after the first round, it can make a new save against the stench’s DC to remove the nauseated condition, but the sickened condition lasts as long as normal.",
                          summary: "The first round a creature is affected by your stench, it is nauseated in addition to being sickened.",
                          source: "Demons Revisited", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spirit Vision",
                          featType: "General",
                          prerequisites: "Magic jar as a known spell or spell-like ability, Wis 15",
                          benefit: "When you sense life forces while seeking a host, you can observe them as you could when you were in your own body. Attempting to possess a body is a standard action.",
                          summary: "When you sense life forces while seeking a host, you can observe them as you could when you were in your own body. Attempting to possess a body is a standard action.",
                          source: "Demons Revisited", isPremium: true)
        )
        try await db.insertFeat(
        .make("Toxic Stench",
                          featType: "General",
                          prerequisites: "Stench universal monster ability, immunity to poison, Improved Stench, Toughness",
                          benefit: "The first round a creature is affected by your stench, it must also make a successful Fortitude save against the same DC to resist becoming poisoned. If you have 10 or fewer HD, this poison is identical to insanity mist; if you have 11 or more HD, the poison also adds confusion for 1 round to its effects.",
                          summary: "The first round a creature is affected by your stench, it must also make a successful Fortitude save against the same DC to resist becoming poisoned.",
                          source: "Demons Revisited", isPremium: true),

                    // // MARK: - Dirty Tactics Toolbox
        )
        try await db.insertFeat(
        .make("Accomplished Sneak Attacker",
                          featType: "General",
                          prerequisites: "Sneak attack class feature.",
                          benefit: "Your sneak attack damage increases by 1d6. Your number of sneak attack dice cannot exceed half your character level (rounded up).",
                          summary: "Your sneak attack damage increases by 1d6. Your number of sneak attack dice cannot exceed half your character level (rounded up).",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ambuscading Spell",
                          featType: "General",
                          prerequisites: "",
                          benefit: "During a surprise round, your opponents that have not yet acted take a –2 penalty on saving throws against spells you cast. Creatures that have already acted take a –1 penalty during the surprise round.",
                          summary: "During a surprise round, your opponents that have not yet acted take a –2 penalty on saving throws against spells you cast.",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Battle Cry (DTT)",
                          featType: "General",
                          prerequisites: "Bardic performance class feature.",
                          benefit: "Bardic performances you use during a surprise round do not count against your number of rounds per day. Any bonuses granted by your performance increase by 1 during a surprise round.",
                          summary: "Bardic performances you use during a surprise round do not count against your number of rounds per day. Any bonuses granted by your performance increase by 1 during a surprise round.",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Befuddling Initiative (Combat)",
                          featType: "General",
                          prerequisites: "Improved Initiative.",
                          benefit: "You treat each opponent that begins a surprise round flat-footed as being flat-footed until its action in the first full round of combat, even if it acts on the surprise round.",
                          summary: "You treat each opponent that begins a surprise round flat-footed as being flat-footed until its action in the first full round of combat, even if it acts on the surprise round.",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dastardly Trick (Combat, Panache)",
                          featType: "General",
                          prerequisites: "Int 13; Amateur SwashbucklerACG or panacheACG class feature; Combat Expertise; Improved Dirty Trick APG .",
                          benefit: "When you attempt a dirty trick combat maneuver check and expend 1 point of panache, if the maneuver is successful, your opponent must succeed at a Will save (DC = 10 + 1/2 your character level + your Charisma modifier) to remove its dirty trick condition.",
                          summary: "When you attempt a dirty trick combat maneuver check and expend 1 point of panache, if the maneuver is successful, your opponent must succeed at a Will save (DC = 10 + 1/2 your character level + your…",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dedicated Adversary (Combat)",
                          featType: "General",
                          prerequisites: "No levels in a class that has the favored enemy class feature.",
                          benefit: "When you select this feat, choose a specific kind of creature, such as wolf, frost giant, goblin, or babau demon. You gain the ranger’s favored enemy class ability against this particular type of creature with a bonus of +2. This feat does not grant the favored enemy class feature for the purposes of prerequisites. If you later gain the favored enemy class feature, you can replace this feat with a feat for which you qualify and whose prerequisites include the favored enemy class feature.",
                          special: "You can gain this feat multiple times. Its effects do not stack. Each time you take the feat, it applies to a different creature.",
                          summary: "When you select this feat, choose a specific kind of creature, such as wolf, frost giant, goblin, or babau demon.",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Deep Toxin",
                          featType: "General",
                          prerequisites: "Vital Strike; base attack bonus +6; Craft (poison) 6 ranks or poison use class feature.",
                          benefit: "When you use a poisoned weapon to make a Vital Strike, you increase the poison’s duration by one frequency increment (for example, a dose of large scorpion venom would last for 7 rounds instead of 6 and a dose of drow poison would last for 3 minutes instead of 2). The poison takes effect immediately and does not have an onset time.",
                          summary: "When you use a poisoned weapon to make a Vital Strike, you increase the poison’s duration by one frequency increment (for example, a dose of large scorpion venom would last for 7 rounds instead of 6…",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dirty Critical Hit (Combat, Critical)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Critical Focus, Improved Dirty Trick APG, base attack bonus +11.",
                          benefit: "Whenever you confirm a critical hit, you can also affect the target as if you had succeeded at a dirty trick combat maneuver check. Doing so normally causes the target to suffer for 1 round one of the conditions applied by a dirty trick, unless you have feats or abilities that give you more dirty trick options.",
                          special: "You can apply the effects of only one critical feat to a given critical hit unless you possess Critical Mastery.",
                          summary: "Whenever you confirm a critical hit, you can also affect the target as if you had succeeded at a dirty trick combat maneuver check.",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dirty Disarm (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Improved Dirty Trick APG, Improved Disarm, base attack bonus +6.",
                          benefit: "You can attempt to perform a dirty trick and a disarm maneuver together against a single target as a full-round action. You attempt a single combat maneuver check for both maneuvers. If your CMB is different for the two types of maneuvers, use the lower of the two bonuses. If your target’s CMD is different against the two types of maneuvers, use the higher CMD. If you succeed at the check, you successfully perform both combat maneuvers.",
                          summary: "You can attempt to perform a dirty trick and a disarm maneuver together against a single target as a full-round action. You attempt a single combat maneuver check for both maneuvers.",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dirty Fighting (Combat)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When you attempt a combat maneuver check against a foe you are flanking, you can forgo the +2 bonus on your attack roll for flanking to instead have the combat maneuver not provoke an attack of opportunity. If you have a feat or ability that allows you to attempt the combat maneuver without provoking an attack of opportunity, you can instead increase the bonus on your attack roll for flanking to +4 for the combat maneuver check.",
                          special: "This feat counts as having Dex 13, Int 13, Combat Expertise, and Improved Unarmed Strike for the purposes of meeting the prerequisites of the various improved combat maneuver feats, as well as feats that require those improved combat maneuver feats as prerequisites.",
                          summary: "When you attempt a combat maneuver check against a foe you are flanking, you can forgo the +2 bonus on your attack roll for flanking to instead have the combat maneuver not provoke an attack of…",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dirty Grapple (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Int 13, Combat Expertise, Improved Dirty Trick APG, Improved Grapple, Improved Unarmed Strike, base attack bonus +6.",
                          benefit: "You can attempt to perform a dirty trick and a grapple maneuver together against a single target as a full-round action when initiating or maintaining a grapple. You must attempt a single combat maneuver check for both maneuvers. If your CMB is different for the two types of maneuvers, use the lower of the two bonuses. If your target’s CMD is different against the two types of maneuvers, use the higher CMD. If you succeed at the check, you successfully perform both combat maneuvers.",
                          summary: "You can attempt to perform a dirty trick and a grapple maneuver together against a single target as a full-round action when initiating or maintaining a grapple.",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Expert Sniper (Combat)",
                          featType: "General",
                          prerequisites: "Stealth 3 ranks.",
                          benefit: "You reduce the penalty on your Stealth checks to stay hidden while sniping by 10.",
                          normal: "You take a –20 penalty on Stealth checks to stay hidden while sniping.",
                          summary: "You reduce the penalty on your Stealth checks to stay hidden while sniping by 10.",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Impromptu Sneak Attack (Combat)",
                          featType: "General",
                          prerequisites: "Impromptu sneak attack class feature.",
                          benefit: "You can perform one additional impromptu sneak attack each day.",
                          special: "You can gain this feat multiple times. Its benefits stack.",
                          summary: "You can perform one additional impromptu sneak attack each day.",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Flexible Foe (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +5, favored enemy (any humanoid or any outsider), favored enemy class feature.",
                          benefit: "Once per day as a swift action, you can change the subtype of the humanoid or outsider you chose as your favored enemy. For example, you can change your favored enemy from humanoid (elf ) to humanoid (dwarf ). The bonus granted by favored enemy when used in this way is always +2, regardless of the original bonus. This change lasts for a number of rounds equal to your character level.",
                          special: "You can gain this feat multiple times. Each time you take the feat, you can use this ability one additional time per day.",
                          summary: "Once per day as a swift action, you can change the subtype of the humanoid or outsider you chose as your favored enemy.",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Flying Tackle",
                          featType: "General",
                          prerequisites: "Improved Overrun.",
                          benefit: "When attempting an overrun combat maneuver check against a flat-footed opponent, if the attempt knocks the creature prone, you can also fall prone in order to attempt a grapple combat maneuver check against the creature as a free action. Doing so does not provoke an attack of opportunity from the target of your grapple.",
                          summary: "When attempting an overrun combat maneuver check against a flat-footed opponent, if the attempt knocks the creature prone, you can also fall prone in order to attempt a grapple combat maneuver check…",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Friendly Shroud",
                          featType: "General",
                          prerequisites: "Stealth 1 rank.",
                          benefit: "Whenever you are adjacent to an ally, and neither you nor that ally move for at least 1 round, and both you and that ally attempt Stealth checks, that ally can use your Stealth check result if it is better than his own.",
                          summary: "Whenever you are adjacent to an ally, and neither you nor that ally move for at least 1 round, and both you and that ally attempt Stealth checks, that ally can use your Stealth check result if it is…",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Frightening Ambush (Combat)",
                          featType: "General",
                          prerequisites: "Intimidate 1 rank.",
                          benefit: "As a free action, you can attempt an Intimidate check to demoralize a flat-footed opponent you attack.",
                          summary: "As a free action, you can attempt an Intimidate check to demoralize a flat-footed opponent you attack.",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Lookout",
                          featType: "General",
                          prerequisites: "Lookout APG .",
                          benefit: "Whenever you are adjacent to an ally who also has the Lookout teamwork feat, when either of you first takes an action, you both lose the flat-footed condition.",
                          summary: "Whenever you are adjacent to an ally who also has the Lookout teamwork feat, when either of you first takes an action, you both lose the flat-footed condition.",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Inspired Sneak Attack (Combat)",
                          featType: "General",
                          prerequisites: "Inspiration pool; sneak attack or studied strike class feature.",
                          benefit: "When dealing sneak attack or studied strike damage, you can expend a use of inspiration from your pool to reroll all of your sneak attack dice that resulted in 1s. If you have the powerful sneakAPG rogue talent, rather than treat all 1s on your sneak attack damage dice as 2s, you can reroll all your sneak attack dice that resulted in 1s. If you have the deadly sneakAPG advanced rogue talent, rather than treat all 1s and 2s on your sneak attack damage dice as 3s, you can reroll all your sneak attack damage dice that resulted in 1s or 2s. In either case, you must take the result of the rerolls, even if it’s worse than the original result.",
                          summary: "When dealing sneak attack or studied strike damage, you can expend a use of inspiration from your pool to reroll all of your sneak attack dice that resulted in 1s.",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Kitsune Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Improved Dirty Trick APG .",
                          benefit: "While using this style, you can attempt to perform a dirty trick in place of an attack at the end of a charge.",
                          summary: "While using this style, you can attempt to perform a dirty trick in place of an attack at the end of a charge.",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Kitsune Tricks (Combat)",
                          featType: "General",
                          prerequisites: "Int 13; Combat Expertise; Improved Dirty Trick APG; Kitsune Style; base attack bonus +3 or monk level 3rd.",
                          benefit: "While you are using the Kitsune Style feat, you can apply two different conditions with a single dirty trick combat maneuver check. Removing both conditions imparted in this way requires only one action.",
                          summary: "While you are using the Kitsune Style feat, you can apply two different conditions with a single dirty trick combat maneuver check.",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Kitsune Vengeance (Combat)",
                          featType: "General",
                          prerequisites: "Int 13; Combat Expertise; Improved Dirty Trick APG; Kitsune Style; Kitsune Tricks; base attack bonus +6 or monk level 6th.",
                          benefit: "While using the Kitsune Style feat, when a foe provokes an attack of opportunity from you, you can attempt to perform a dirty trick combat maneuver in place of making a melee attack.",
                          summary: "While using the Kitsune Style feat, when a foe provokes an attack of opportunity from you, you can attempt to perform a dirty trick combat maneuver in place of making a melee attack.",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Lightning Rager",
                          featType: "General",
                          prerequisites: "Rage class feature.",
                          benefit: "If caught unawares during a surprise round, you can enter a rage as an immediate action. If you do, you gain a +2 insight bonus to your Armor Class for the remainder of the surprise round.",
                          summary: "If caught unawares during a surprise round, you can enter a rage as an immediate action. If you do, you gain a +2 insight bonus to your Armor Class for the remainder of the surprise round.",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Master Sniper (Combat)",
                          featType: "General",
                          prerequisites: "Expert Sniper, Rapid Shot, Stealth 6 ranks.",
                          benefit: "While hiding, you can make two ranged attacks at your highest attack bonus as a full-round action and then immediately use Stealth again. You take the normal penalties on your Stealth check to remain hidden. Effects that modify sniping apply to this full-round action. These attack rolls take a –2 penalty.",
                          normal: "You can fire only once when sniping.",
                          summary: "While hiding, you can make two ranged attacks at your highest attack bonus as a full-round action and then immediately use Stealth again.",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Poison Shot Deed (Grit)",
                          featType: "General",
                          prerequisites: "Amateur GunslingerUC or gritUC class feature.",
                          benefit: "You can spend 1 grit point to load your firearm with 1 dose of inhaled or ingested poison as a move action. This action has no chance of exposing you to the poison (as if you had the poison use class feature). Shooting a firearm loaded with a poison in this manner is a standard action that provokes attacks of opportunity and sprays out the poison in a 15-foot cone. Any creatures caught in the blast take no damage but are exposed to this poison and must each immediately attempt a save against the poison as though the onset time had elapsed.",
                          summary: "You can spend 1 grit point to load your firearm with 1 dose of inhaled or ingested poison as a move action.",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Powerful Poisoning",
                          featType: "General",
                          prerequisites: "Power Attack; Craft (poison) 3 ranks or poison use class feature.",
                          benefit: "When you damage an opponent with a Power Attack while using a poisoned weapon, you can forgo the bonus damage from Power Attack to increase the save DC of the poison by 1. When your base attack bonus reaches +4, and every +4 thereafter, the bonus to the poison’s save DC increases by an additional 1. This can’t cause the save DC to exceed 15 + 1/2 your character level.",
                          summary: "When you damage an opponent with a Power Attack while using a poisoned weapon, you can forgo the bonus damage from Power Attack to increase the save DC of the poison by 1.",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Reflexive Caster",
                          featType: "General",
                          prerequisites: "Combat Reflexes, caster level 5th.",
                          benefit: "If you fail a Perception check that results in you being unable to act in a surprise round, you still roll initiative normally. You can act on your initiative count in the surprise round, but can only take a standard action to cast an abjuration spell that targets only yourself.",
                          summary: "If you fail a Perception check that results in you being unable to act in a surprise round, you still roll initiative normally.",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Scurrying Swarmer (Combat)",
                          featType: "General",
                          prerequisites: "Ratfolk, swarming racial trait.",
                          benefit: "You can use your swarming racial trait to enter the square of any willing ally that is the same size as you or up to one size category larger, granting you the benefits of the swarming racial trait as if your ally were also a ratfolk with the swarming racial trait. Your ally gains no benefits from sharing its space with you unless it also has the swarming racial trait. Additionally, you treat any ally who shares its space with you as having the same teamwork feats that you do for the purpose of determining whether you gain a bonus from teamwork feats. Your ally doesn’t gain any of the bonuses from these feats unless she actually has the teamwork feats. You and your ally’s positioning and actions must still meet the prerequisites listed in a teamwork feat’s description in order to gain the teamwork feat’s listed bonus, but your ally is considered to be adjacent to you while you share her space for the purpose of determining whether you or your ally gains a benefit.",
                          summary: "You can use your swarming racial trait to enter the square of any willing ally that is the same size as you or up to one size category larger, granting you the benefits of the swarming racial trait…",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sneaking Critical (Combat, Critical)",
                          featType: "General",
                          prerequisites: "Critical Focus, base attack bonus +9, sneak attack class feature.",
                          benefit: "Whenever you confirm a critical hit on a sneak attack, you can roll an additional number of sneak attack dice equal to your weapon’s critical modifier.",
                          special: "You can apply the effects of only one critical feat to a given critical hit unless you possess Critical Mastery.",
                          summary: "Whenever you confirm a critical hit on a sneak attack, you can roll an additional number of sneak attack dice equal to your weapon’s critical modifier.",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Superior Dirty Trick (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Greater Dirty Trick APG, Improved Dirty Trick APG, base attack bonus +8.",
                          benefit: "Choose one condition imposed by the dirty trick combat maneuver, such as blinded or entangled. The target must spend a full-round action in order to remove that condition.",
                          special: "You can gain this feat multiple times. Each time you take the feat, it applies to a different condition.",
                          summary: "Choose one condition imposed by the dirty trick combat maneuver, such as blinded or entangled. The target must spend a full-round action in order to remove that condition.",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Terrifying Assault (Combat)",
                          featType: "General",
                          prerequisites: "Frightening Ambush, Intimidate 5 ranks.",
                          benefit: "When using Intimidate to demoralize an opponent during a surprise round, if you exceed the DC by 10 or more, you can make the target frightened for 1 round instead of shaken.",
                          summary: "When using Intimidate to demoralize an opponent during a surprise round, if you exceed the DC by 10 or more, you can make the target frightened for 1 round instead of shaken.",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Toxic Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "Craft (poison) 5 ranks, ability to cast 2nd-level spells, poison use class feature.",
                          benefit: "You can use 1 dose of contact, ingested, inhaled, or injury poison as an additional material component for a spell you cast. This spell gains the poison descriptor (Pathfinder RPG Ultimate Magic 138). Select a single creature affected by the spell. If that creature fails its saving throw against the spell, it must also attempt a saving throw against the poison used as a material component. If the target fails the save against the poison, the poison takes effect immediately, ignoring any onset time. The poison uses its save DC (rather than the save DC of the spell), but is modified by any effects that increase the spell’s DC (such as Spell Focus). This feat works only with spells whose effects can be negated by a successful Fortitude save. A toxic spell uses up a spell slot 1 level higher than the spell’s actual level.",
                          summary: "You can use 1 dose of contact, ingested, inhaled, or injury poison as an additional material component for a spell you cast.",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Treacherous Toxin",
                          featType: "General",
                          prerequisites: "Base attack bonus +5, sneak attack class feature.",
                          benefit: "When you make a sneak attack with a poisoned weapon, you can forgo some of your sneak attack damage to increase the save DC of your poison, increasing the poison’s save DC by 1 for every 1d6 points of sneak attack damage you forgo. This can’t cause the save DC to exceed 15 + 1/2 your character level.",
                          summary: "When you make a sneak attack with a poisoned weapon, you can forgo some of your sneak attack damage to increase the save DC of your poison, increasing the poison’s save DC by 1 for every 1d6 points…",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Trick Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "Ability to cast 1st-level spells, chaotic neutral alignment, worshiper of Calistria.",
                          benefit: "Only enchantment spells that affect a single target and can be negated with a successful Will save can be trick spells. If the target fails its Will save against a trick spell, in addition to the spell’s normal effects, the target also clumsily hinders itself. Immediately attempt a special combat maneuver check (1d20 + your caster level + your Charisma bonus) to perform a dirty trick combat maneuver against the target. Any feats you have that apply to dirty trick maneuvers (such as Greater Dirty TrickAPG) also apply to this check. A trick spell takes up a spell slot 1 level higher than the spell’s actual level.",
                          summary: "Only enchantment spells that affect a single target and can be negated with a successful Will save can be trick spells.",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Unseen Poison",
                          featType: "General",
                          prerequisites: "Bluff 5 ranks, Craft (poison) 5 ranks, ability to cast nondetection.",
                          benefit: "Whenever a creature attempts to magically detect poison you are carrying, the creature must succeed at a caster level check with a DC equal to 10 + your character level. On a failed check, that spell or magic ability fails to detect any poison you possess for the duration of the spell.",
                          summary: "Whenever a creature attempts to magically detect poison you are carrying, the creature must succeed at a caster level check with a DC equal to 10 + your character level.",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Verify",
                          featType: "General",
                          prerequisites: "Ability to cast 1st-level spells, lawful evil alignment, worshiper of Asmodeus.",
                          benefit: "You gain a +5 bonus on Sense Motive checks to determine whether a creature is lying when you ask if it has followed the terms of a contract or deal to which it formally agreed. This includes all written and signed contracts, but also such things as witnessed oaths of loyalty and guild charters. If you succeed at such a Sense Motive check and learn that a creature has violated any part of such a formal bargain, that creature takes a –2 penalty on saving throws against your spells, spell-like abilities, and supernatural abilities.",
                          summary: "You gain a +5 bonus on Sense Motive checks to determine whether a creature is lying when you ask if it has followed the terms of a contract or deal to which it formally agreed.",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Wasp Familiar",
                          featType: "General",
                          prerequisites: "Chaotic neutral alignment, worshiper of Calistria.",
                          benefit: "You gain a familiar as per the arcane bond class feature, using your character level as your wizard level. The familiar is a cat-sized, chaotic neutral wasp loyal to you. Use the statistics for a greensting scorpion familiar (Pathfinder RPG Ultimate Magic 188), but give it a base speed of 10 feet, a fly speed of 40 feet (average), no Climb bonus, and Fly +7. If you have the ability to gain a familiar through other means (such as the arcane bond class feature), and you are at least 5th level, instead use the statistics for an imp, but replace the invisibility spell-like ability with an unnatural lustUM (DC 14) spell-like ability usable three times per day. You can have only one familiar. If you ever grossly violate the code of conduct required by Calistria (a violation of the scale that would cause a cleric of Calistria to lose all spells and class features), your familiar turns on you and attacks you until it is killed. To regain a familiar, you must atone for your deeds with the atonement spell, and pay to have the slain familiar raised from the dead. If your familiar is slain or lost through other means, you can replace it using the normal rules for replacing familiars.",
                          special: "This feat can be taken a second time by characters of 7th or higher level if they do not otherwise have access to familiars. Such characters have access to a wasp familiar that uses the statistics for an imp, as described above.",
                          summary: "You gain a familiar as per the arcane bond class feature, using your character level as your wizard level. The familiar is a cat-sized, chaotic neutral wasp loyal to you.",
                          source: "Dirty Tactics Toolbox", isPremium: true),

                    // // MARK: - Divine Anthology, Weapon Master's Handbook
        )
        try await db.insertFeat(
        .make("Divine Fighting Technique (Combat)",
                          featType: "General",
                          prerequisites: "Must worship a single patron deity that has an established divine fighting technique.",
                          benefit: "You can use your patron deity’s fighting technique and receive any benefit associated with that technique for which you qualify, as described in the Divine Fighting Techniques section below.",
                          special: "A cleric, inquisitor, or warpriest who worships a deity can choose to give up either the first power of one of her domains or a minor blessing benefit to gain access to her god’s divine fighting technique without having to meet the technique’s prerequisites (including the Divine Fighting Technique feat). In addition, a warpriest can give up a major blessing to gain the advanced benefit without meeting its prerequisites.",
                          summary: "You can use your patron deity’s fighting technique and receive any benefit associated with that technique for which you qualify, as described in the Divine Fighting Techniques section below.",
                          source: "Divine Anthology, Weapon Master's Handbook", isPremium: true),

                    // // MARK: - Dragon Empires Primer
        )
        try await db.insertFeat(
        .make("Blinding Flash (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Combat Expertise.",
                          benefit: "As a move action, you can expertly angle the blade of your weapon or shield to reflect light into an opponent’s eyes, dazzling your foe for 1 round. This feat functions as a gaze attack, and the target must make a Fortitude save (DC 10 + 1/2 your character level + your Dex modifier) to resist the effect. This is a sight-dependent effect, and does not work on creatures that are already blinded or creatures that do not rely on sight as their primary sense. You must be wielding a weapon or shield with a polished or reflective surface in order to use this feat. You must be in an area of bright light to use this feat.",
                          summary: "As a move action, you can expertly angle the blade of your weapon or shield to reflect light into an opponent’s eyes, dazzling your foe for 1 round.",
                          source: "Dragon Empires Primer", isPremium: true)
        )
        try await db.insertFeat(
        .make("Disorienting Blow (Combat)",
                          featType: "General",
                          prerequisites: "Stunning Fist, base attack bonus +11.",
                          benefit: "You must choose to use this ability before making an attack roll with your Stunning Fist, and this effect replaces other effects or conditions that would be caused by Stunning Fist. If you successfully hit your opponent and it fails its Fortitude save, it becomes confused for 1 round. Additional disorienting blows to the confused target add to the duration of its confusion. This feat is otherwise subject to all of the limits and conditions of Stunning Fist.",
                          summary: "You must choose to use this ability before making an attack roll with your Stunning Fist, and this effect replaces other effects or conditions that would be caused by Stunning Fist.",
                          source: "Dragon Empires Primer", isPremium: true)
        )
        try await db.insertFeat(
        .make("Enhanced Ki Throw (Combat)",
                          featType: "General",
                          prerequisites: "Ki pool class feature, Ki Throw (see the Pathfinder RPG Advanced Player’s Guide).",
                          benefit: "When using the Ki Throw feat, you can expend 1 ki point to amplify the force of your attack. If your ki throw succeeds, when the target hits the ground, it takes damage as if you had hit it with an unarmed strike.",
                          summary: "When using the Ki Throw feat, you can expend 1 ki point to amplify the force of your attack.",
                          source: "Dragon Empires Primer", isPremium: true)
        )
        try await db.insertFeat(
        .make("Feinting Flurry (Combat)",
                          featType: "General",
                          prerequisites: "Dex 15, flurry of blows class feature, Combat Expertise.",
                          benefit: "While using flurry of blows to make melee attacks, you can forgo your first attack to make a Bluff check to feint.",
                          summary: "While using flurry of blows to make melee attacks, you can forgo your first attack to make a Bluff check to feint.",
                          source: "Dragon Empires Primer", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fox Shape",
                          featType: "General",
                          prerequisites: "Cha 13, base attack bonus +3, kitsune.",
                          benefit: "You can take the form of a fox (Pathfinder RPG Bestiary 3 112) whose appearance is static and cannot be changed each time you assume this form. Your bite attack’s damage is reduced to 1d3 points of damage on a hit, but you gain a +10 racial bonus on Disguise checks made to appear as a fox. Changing from kitsune to fox shape is a standard action. This ability otherwise functions as beast shape II, and your ability scores change accordingly.",
                          summary: "You can take the form of a fox (Pathfinder RPG Bestiary 3 112) whose appearance is static and cannot be changed each time you assume this form.",
                          source: "Dragon Empires Primer", isPremium: true)
        )
        try await db.insertFeat(
        .make("Hold the Blade (Combat)",
                          featType: "General",
                          prerequisites: "Improved Disarm, base attack bonus +10.",
                          benefit: "Whenever an enemy deals damage to you with a melee weapon as part of a flanking attack or sneak attack, you can make a combat maneuver check to disarm against that opponent as an immediate action. You must have at least one hand free when you use this feat. When you use this feat, you take a –4 penalty to your AC until your next turn. You can only use this feat once per round.",
                          summary: "Whenever an enemy deals damage to you with a melee weapon as part of a flanking attack or sneak attack, you can make a combat maneuver check to disarm against that opponent as an immediate action.",
                          source: "Dragon Empires Primer", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Feinting Flurry (Combat)",
                          featType: "General",
                          prerequisites: "Dex 17, flurry of blows class feature, Combat Expertise, Feinting Flurry, base attack bonus +6.",
                          benefit: "While using Feinting Flurry, if you successfully feint, your opponent is denied its Dexterity bonus to AC until the end of your turn.",
                          normal: "A successful feint causes your opponent to be denied its Dexterity bonus to AC against your next attack.",
                          summary: "While using Feinting Flurry, if you successfully feint, your opponent is denied its Dexterity bonus to AC until the end of your turn.",
                          source: "Dragon Empires Primer", isPremium: true)
        )
        try await db.insertFeat(
        .make("Quivering Palm Adept (Combat)",
                          featType: "General",
                          prerequisites: "Quivering palm class feature.",
                          benefit: "Add +2 to the saving throw DC against your quivering palm attacks.",
                          summary: "Add +2 to the saving throw DC against your quivering palm attacks.",
                          source: "Dragon Empires Primer", isPremium: true)
        )
        try await db.insertFeat(
        .make("Quivering Palm Versatility (Combat)",
                          featType: "General",
                          prerequisites: "Quivering palm class feature, base attack bonus +13.",
                          benefit: "After successfully using your quivering palm attack on a creature, you can produce one of the following effects instead of killing the creature, as long as you do so within a number of days equal to your monk level.Coma: The subject falls unconscious and is helpless for a number of days equal to your monk level. Memory Loss: The subject falls unconscious for 24 hours and awakens with huge gaps in its memory. The target’s memories of the recent past (a number of consecutive days equal to your monk level) are completely obliterated, and can only be restored by a wish or miracle spell.Pain: The subject takes 1d6 points of nonlethal damage per monk level you possess.You must choose the desired effect before the quivering palm’s attack roll is made. Unless the target succeeds at its Fortitude save against your quivering palm attack, it succumbs to the desired effect when you will it (a free action). This feat is otherwise subject to all of the limits and conditions of quivering palm.",
                          summary: "After successfully using your quivering palm attack on a creature, you can produce one of the following effects instead of killing the creature, as long as you do so within a number of days equal to…",
                          source: "Dragon Empires Primer", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sleeper Hold (Combat)",
                          featType: "General",
                          prerequisites: "Greater Grapple, base attack bonus +8.",
                          benefit: "You must declare that you are using this feat before you make a combat maneuver check to maintain a grapple (thus a failed check to maintain the grapple ruins the attempt). If you maintain a grapple for a number of consecutive rounds equal to your opponent’s Constitution bonus (minimum 1 round), you can attempt to knock out your opponent. The victim must succeed at a Fortitude save (DC 10 + 1/2 your character level + your Str modifier) or else it falls unconscious for 1d4 rounds. Each successive round you attempt this, the target takes a cumulative –1 penalty on its saving throw. When you use this feat, you take an additional –2 penalty to your AC. Creatures that are immune to bleed damage, stunning, or critical hits are immune to this ability.",
                          summary: "You must declare that you are using this feat before you make a combat maneuver check to maintain a grapple (thus a failed check to maintain the grapple ruins the attempt).",
                          source: "Dragon Empires Primer", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stunning Fist Adept (Combat)",
                          featType: "General",
                          prerequisites: "Stunning Fist, base attack bonus +3.",
                          benefit: "Add +1 to the saving throw DC against your Stunning Fist attacks. This bonus does not stack with feats that grant you bonuses to the DC for saving throws against your Stunning Fist attacks, such as Mantis Style (see Pathfinder RPG Ultimate Combat).",
                          summary: "Add +1 to the saving throw DC against your Stunning Fist attacks.",
                          source: "Dragon Empires Primer", isPremium: true)
        )
        try await db.insertFeat(
        .make("Swift Kitsune Shapechanger",
                          featType: "General",
                          prerequisites: "Dex 13, base attack bonus +6, kitsune.",
                          benefit: "You can assume human or kitsune form as a swift action. If you have the Fox Shape feat, you can assume fox form as a swift action as well.",
                          normal: "A kitsune’s change shape ability is a standard action.",
                          summary: "You can assume human or kitsune form as a swift action. If you have the Fox Shape feat, you can assume fox form as a swift action as well.",
                          source: "Dragon Empires Primer", isPremium: true)
        )
        try await db.insertFeat(
        .make("Vulpine Pounce (Combat)",
                          featType: "General",
                          prerequisites: "Swift Kitsune Shapechanger, base attack bonus +10, kitsune.",
                          benefit: "When you change shape into your kitsune form and use the charge action in the same round, you can make a full attack against your opponent.",
                          summary: "When you change shape into your kitsune form and use the charge action in the same round, you can make a full attack against your opponent.",
                          source: "Dragon Empires Primer", isPremium: true),

                    // // MARK: - Dragons Revisited
        )
        try await db.insertFeat(
        .make("Draconic Defender",
                          featType: "General",
                          prerequisites: "Con 17, Toughness.",
                          benefit: "During your action, designate an ally within your reach. When you fight defensively or use Combat Expertise, your ally gains a natural armor bonus to AC equal to the dodge bonus you gain from fighting defensively or Combat Expertise. You can select a new ally on any action. Allies who move out of your reach lose this natural armor bonus.",
                          summary: "During your action, designate an ally within your reach. When you fight defensively or use Combat Expertise, your ally gains a natural armor bonus to AC equal to the dodge bonus you gain from…",
                          source: "Dragons Revisited", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dragon Discipline",
                          featType: "General",
                          prerequisites: "Wis 17, base will save +10, any lawful alignment, dragon type.",
                          benefit: "If you are affected by a mind-affecting enchantment or necromancy effect and fail your saving throw, you can attempt it again 1 round later at the same DC. You get only this one extra chance to succeed on your saving throw.",
                          summary: "If you are affected by a mind-affecting enchantment or necromancy effect and fail your saving throw, you can attempt it again 1 round later at the same DC.",
                          source: "Dragons Revisited", isPremium: true)
        )
        try await db.insertFeat(
        .make("Noxious Bite",
                          featType: "General",
                          prerequisites: "Acidic breath weapon, bite attack.",
                          benefit: "Your bite attack deals 1 point of acid damage in addition to its normal damage. Living creatures you bite must make a Fort save (DC equal to your breath weapon's DC) or be nauseated for a number of rounds equal to 1 + your Constitution modifier (minimum 1 round).",
                          summary: "Your bite attack deals 1 point of acid damage in addition to its normal damage.",
                          source: "Dragons Revisited", isPremium: true),

                    // // MARK: - Dragonslayer's Handbook
        )
        try await db.insertFeat(
        .make("Courage in Numbers (Teamwork)",
                          featType: "General",
                          prerequisites: "Iron Will.",
                          benefit: "You gain a +2 morale bonus on saves against fear for every ally within 10 feet who possesses this feat (maximum +8).",
                          summary: "You gain a +2 morale bonus on saves against fear for every ally within 10 feet who possesses this feat (maximum +8).",
                          source: "Dragonslayer's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Covering Shield (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Shield Focus, Shield Proficiency.",
                          benefit: "While using a shield of the type to which your Shield Focus feat applies, you gain a bonus on Reflex saves against area of effect attacks equal to your shield’s base bonus to armor class plus any bonuses granted by feats or class abilities. This does not transfer any enhancement bonuses on a shield to Reflex saves.",
                          summary: "While using a shield of the type to which your Shield Focus feat applies, you gain a bonus on Reflex saves against area of effect attacks equal to your shield’s base bonus to armor class plus any…",
                          source: "Dragonslayer's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Death from Below (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1.",
                          benefit: "You gain a +2 circumstance bonus against flying opponents when you have set a weapon against a charge, or when you are allowed an attack of opportunity against the flying opponent.",
                          summary: "You gain a +2 circumstance bonus against flying opponents when you have set a weapon against a charge, or when you are allowed an attack of opportunity against the flying opponent.",
                          source: "Dragonslayer's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dragon-Touched (Story)",
                          featType: "General",
                          prerequisites: "You must have been knocked unconscious in an encounter with a challenging draconic foe or have a regional background tied to a specific dragon (such as those presented in this section or a similar trait).",
                          benefit: "Choose one kind of dragon (such as blue, green, or silver). You gain a +2 bonus on Reflex saves against the breath weapons of dragons of the chosen kind, as well as a +1 bonus on attack rolls and a +1 dodge bonus to AC against members of the same dragon kind.Goal: Defeat the specific dragon linked to your prerequisite.Completion Benefit: You gain the ability to select a new dragon kind whenever you wish. You must first defeat a member of the selected kind with a CR equal to or greater than your character level. In addition, you gain a +2 bonus on initiative checks when facing a dragon of your selected kind.",
                          summary: "Choose one kind of dragon (such as blue, green, or silver). You gain a +2 bonus on Reflex saves against the breath weapons of dragons of the chosen kind, as well as a +1 bonus on attack rolls and a…",
                          source: "Dragonslayer's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dragoncrafting",
                          featType: "General",
                          prerequisites: "Craft (any) 5 ranks, Knowledge (arcana) 3 ranks.",
                          benefit: "You gain the ability to create a variety of dragoncraft items from materials gathered from the bodies of true dragons (not lesser dragons, such as linnorms or wyverns). Crafting dragoncraft items takes 1 hour per 100 gp of items being produced. In order to gather specimens from a dragon's corpse, you must succeed at a Heal check equal to 10 + the dragon's CR within 48 hours of the dragon's death (unless the body is preserved in some way). Refer to the table below to determine how much of a given material can be harvested from a dragon based on its size. Dragon Size Blood Stomach Acid Gall Musk Skin Tiny 2 vials 1 vial 1 vial — 1 grip Small 3 vials 1 vial 1 vial 1 vial 2 grips Medium 4 vials 2 vials 2 vials 1 vial 2 grips Large 5 vials 2 vials 2 vials 2 vials 2 grips Huge 6 vials 3 vials 2 vials 2 vials 3 grips Gargantuan 7 vials 3 vials 3 vials 3 vials 3 grips Colossal 8 vials 4 vials 3 vials 3 vials 3 grips",
                          special: "Normally, if a suit of dragonhide armor has energy immunity, one may enhance such a suit with additional energy protection for the wearer at a 25% reduced cost. However, only effects with the same elemental type as the armor’s immunity are eligible for this discount. An artisan with the Dragoncrafting feat may add 1 additional elemental protection to a suit of dragonhide armor at the same 25% discount, even if this energy resistance is not normally associated with the type of dragonhide being used.",
                          summary: "You gain the ability to create a variety of dragoncraft items from materials gathered from the bodies of true dragons (not lesser dragons, such as linnorms or wyverns).",
                          source: "Dragonslayer's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dragonheart",
                          featType: "General",
                          prerequisites: "Knowledge (arcana) 1 rank.",
                          benefit: "You gain a +1 bonus on all saving throws against auras, breath weapons, spell-like abilities, spells, supernatural abilities, and other special attacks of creatures with the dragon type.",
                          summary: "You gain a +1 bonus on all saving throws against auras, breath weapons, spell-like abilities, spells, supernatural abilities, and other special attacks of creatures with the dragon type.",
                          source: "Dragonslayer's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dragonslayer (Combat)",
                          featType: "General",
                          prerequisites: "Knowledge (arcana) 4 ranks, base attack bonus +4.",
                          benefit: "Whenever you confirm a critical hit against an opponent that has a breath weapon, you can forgo the extra critical damage to instead prevent your foe from using its breath weapon for a number of rounds equal to twice the critical multiplier of your attack, in addition to any normal delay mentioned in the breath weapon effect’s description.",
                          summary: "Whenever you confirm a critical hit against an opponent that has a breath weapon, you can forgo the extra critical damage to instead prevent your foe from using its breath weapon for a number of…",
                          source: "Dragonslayer's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Flaying Critical (Combat, Critical)",
                          featType: "General",
                          prerequisites: "Critical Focus, base attack bonus +11.",
                          benefit: "Whenever you score a critical hit, your opponent takes a –1 penalty to its natural armor bonus for the duration of the encounter. This penalty is cumulative, but cannot reduce an opponent’s natural armor bonus below 0.",
                          summary: "Whenever you score a critical hit, your opponent takes a –1 penalty to its natural armor bonus for the duration of the encounter.",
                          source: "Dragonslayer's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Overwhelm (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You are considered to be flanking an opponent if at least one ally who also has this feat is threatening that opponent and the opponent is at least two size categories larger than the larger of you or your ally, regardless of your actual positioning.",
                          normal: "You must be positioned opposite an ally to flank an opponent.",
                          summary: "You are considered to be flanking an opponent if at least one ally who also has this feat is threatening that opponent and the opponent is at least two size categories larger than the larger of you…",
                          source: "Dragonslayer's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Porcupine Defense (Combat)",
                          featType: "General",
                          prerequisites: "Combat Expertise, Combat Reflexes, base attack bonus +6.",
                          benefit: "Whenever an opponent of at least one size category larger than yourself attempts a combat maneuver attack against you, you gain a +2 bonus on any allowed attacks of opportunity. If your opponent may make such attacks without provoking attacks of opportunity, you instead gain a +2 bonus to CMD against such maneuvers.",
                          summary: "Whenever an opponent of at least one size category larger than yourself attempts a combat maneuver attack against you, you gain a +2 bonus on any allowed attacks of opportunity.",
                          source: "Dragonslayer's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Reach Defense (Combat)",
                          featType: "General",
                          prerequisites: "Dex 15",
                          benefit: "You gain a +2 dodge bonus to Armor Class against attacks of opportunity from opponents that are not adjacent to you.",
                          special: "This feat counts as Dodge for the purposes of qualifying for the Mobility and Spring Attack feats.",
                          summary: "You gain a +2 dodge bonus to Armor Class against attacks of opportunity from opponents that are not adjacent to you.",
                          source: "Dragonslayer's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Snoutgrip (Combat)",
                          featType: "General",
                          prerequisites: "Combat Expertise, Combat Reflexes, Improved Grapple, Improved Unarmed Strike, base attack bonus +12 or 10th-level monk.",
                          benefit: "As an immediate action, whenever an opponent up to one size category larger than you misses you with its bite attack, you can attempt a grapple with a –5 penalty on the check. If you succeed, you have grappled your opponent and are holding its mouth shut, preventing it from using its bite attack, breath weapon, or spells with a verbal component until it escapes your grapple. You may make this grapple attempt even if the target is out of your reach.",
                          summary: "As an immediate action, whenever an opponent up to one size category larger than you misses you with its bite attack, you can attempt a grapple with a –5 penalty on the check.",
                          source: "Dragonslayer's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tandem Evasion (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Dex 13, Dodge.",
                          benefit: "When adjacent to an ally who also has this feat, you gain evasion against a dragon’s breath weapon and tail sweep special attacks. If you already have evasion, you gain improved evasion instead.",
                          summary: "When adjacent to an ally who also has this feat, you gain evasion against a dragon’s breath weapon and tail sweep special attacks. If you already have evasion, you gain improved evasion instead.",
                          source: "Dragonslayer's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Wingclipper (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +9.",
                          benefit: "Whenever you confirm a critical hit against an opponent that uses wings to fly, you can forgo the extra critical damage to instead prevent it from flying for a number of rounds equal to twice the critical multiplier of your attack. Opponents that are flying at the time of the critical effect must succeed at a DC 20 Fly check to avoid taking falling damage.",
                          summary: "Whenever you confirm a critical hit against an opponent that uses wings to fly, you can forgo the extra critical damage to instead prevent it from flying for a number of rounds equal to twice the…",
                          source: "Dragonslayer's Handbook", isPremium: true),

                    // // MARK: - Dungeon Denizens Revisited
        )
        try await db.insertFeat(
        .make("Indigestible",
                          featType: "General",
                          prerequisites: "Favored enemy (ooze) or survived engulfing by an ooze.",
                          benefit: "You gain acid resistance 5.",
                          summary: "You gain acid resistance 5.",
                          source: "Dungeon Denizens Revisited", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ooze Companion",
                          featType: "General",
                          prerequisites: "Ooze Whisperer, animal companion, wild empathy.",
                          benefit: "Add the following oozes to your list of possible animal companions. 7th—gelatinous cube, gray ooze; 10th—ochre jelly; 13th—black pudding. Because of its nonintelligence, an ooze companion starts with 0 tricks (only your bonus tricks from druid levels apply) and can only learn the following bonus tricks: attack, come, defend, and stay.",
                          summary: "Add the following oozes to your list of possible animal companions. 7th—gelatinous cube, gray ooze; 10th—ochre jelly; 13th—black pudding.",
                          source: "Dungeon Denizens Revisited", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ooze Whisperer",
                          featType: "General",
                          prerequisites: "Wild empathy class feature.",
                          benefit: "You may target oozes with spells and special abilities that normally only affect animals as if the oozes were magical beasts with Intelligence 1, though they gain a +4 bonus to their saving throws. You may use wild empathy to influence oozes as easily as you influence magical beasts with Intelligence 1.",
                          summary: "You may target oozes with spells and special abilities that normally only affect animals as if the oozes were magical beasts with Intelligence 1, though they gain a +4 bonus to their saving throws.",
                          source: "Dungeon Denizens Revisited", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shambling Monolith",
                          featType: "General",
                          prerequisites: "Shambling mound.",
                          benefit: "As a full-round action, you may draw additional vegetable matter into yourself and increase your size, strength, and durability as if using an animal growth spell. At the beginning of each turn, you must succeed at a Fortitude save to maintain your increased size. The save DC is 10 if in forest or jungle and 15 if in a swamp or underground , and increases by 1 for each round that passes. If you fail the save, you collapse back to your normal size and are fatigued for 8 hours.",
                          special: "You must be in forest, jungle, swamp, or underground terrain to use this feat. You cannot use this feat when you are fatigued or exhausted.",
                          summary: "As a full-round action, you may draw additional vegetable matter into yourself and increase your size, strength, and durability as if using an animal growth spell.",
                          source: "Dungeon Denizens Revisited", isPremium: true)
        )
        try await db.insertFeat(
        .make("Silent as Stone",
                          featType: "General",
                          prerequisites: "Roper, Stealthy.",
                          benefit: "You gain a +4 bonus to all Move Silently checks in rocky environments and may use Move Silently at no penalty while climbing. If you attack with your strands in the surprise round, you may automatically choke the victim and cover his mouth with a strand to quell any sound. If you hit with a strand in the surprise round, on your next turn make a Move Silently check at –5 opposed by the Listen check of nearby creatures; if you succeed, you silently drag your opponent 10 feet toward you, and your target’s allies are unaware your target is missing (barring precautions or activities that would make this obvious, such as being tied together, your target carrying the only light source, your target speaking before the attack, and so on).",
                          summary: "You gain a +4 bonus to all Move Silently checks in rocky environments and may use Move Silently at no penalty while climbing.",
                          source: "Dungeon Denizens Revisited", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stone Clinger",
                          featType: "General",
                          prerequisites: "Roper.",
                          benefit: "You gain a climb speed of 10 feet and all the benefits of having a climb speed (bonus to Climb checks, always able to take 10 on Climb checks, and so on). You may hang upside down indefinitely from the ceiling, and then fall on any creature passing below, dealing 2d6+6 crushing or piercing damage (your choice).",
                          summary: "You gain a climb speed of 10 feet and all the benefits of having a climb speed (bonus to Climb checks, always able to take 10 on Climb checks, and so on).",
                          source: "Dungeon Denizens Revisited", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stormstruck Shambler",
                          featType: "General",
                          prerequisites: "Shambling mound, must have been struck by lightning.",
                          benefit: "As a free action, you may charge one of your limbs with electricity equivalent to a shocking grasp spell, dealing 5d6 electricity damage to a creature you touch, attack with an unarmed strike, or grapple. If making a touch attack, you get a +3 to your attack roll if the target is wearing metal armor. Each time you use this ability, you take 1 point of temporary Constitution damage; you regain these lost Constitution points at a rate of 1 per hour. You may use this ability a number of times per day equal to your hit dice.",
                          summary: "As a free action, you may charge one of your limbs with electricity equivalent to a shocking grasp spell, dealing 5d6 electricity damage to a creature you touch, attack with an unarmed strike, or…",
                          source: "Dungeon Denizens Revisited", isPremium: true)
        )
        try await db.insertFeat(
        .make("Suffocating Strangulation",
                          featType: "General",
                          prerequisites: "Improved grab, constrict.",
                          benefit: "By making a successful grapple check, you are able to coil your natural weapons around an opponent’s throat (or other breathing apparatus), crushing the breath out of him. The opponent cannot hold his breath and must immediately begin making Constitution checks at the end of his turn each round, starting at DC 10 and increasing by 1 each round. Failure indicates he falls unconscious at 0 hit points. Once the opponent is unconscious, you may choose to either damage him (requiring a grapple check) or continue to suffocate him (no check required); if you maintain the chokehold, on your next turn he drops to –1 hit points and is dying. If you maintain the chokehold on the following turn, he suffocates and dies.Creatures that do not need to breathe are unaffected by this ability.",
                          summary: "By making a successful grapple check, you are able to coil your natural weapons around an opponent’s throat (or other breathing apparatus), crushing the breath out of him.",
                          source: "Dungeon Denizens Revisited", isPremium: true),

                    // // MARK: - Dungeoneer's Handbook
        )
        try await db.insertFeat(
        .make("Arcane Trap Suppressor",
                          featType: "General",
                          prerequisites: "Ability to cast dispel magic or greater dispel magic as a spell or spell-like ability.",
                          benefit: "When you target a magic trap with dispel magic or greater dispel magic, if your caster level check exceeds the Disable Device DC of the trap, the trap is disabled for 1d4 minutes.",
                          normal: "Dispel magic suppresses an item’s magical properties for 1d4 rounds.",
                          summary: "When you target a magic trap with dispel magic or greater dispel magic, if your caster level check exceeds the Disable Device DC of the trap, the trap is disabled for 1d4 minutes.",
                          source: "Dungeoneer's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Close Call",
                          featType: "General",
                          prerequisites: "Deft Hands.",
                          benefit: "Once per day, you may reroll either a Disable Device or Sleight of Hand check. You must decide to use this ability after the first attempt but before the results are revealed by the GM. You must take the second roll, even if it’s worse.",
                          summary: "Once per day, you may reroll either a Disable Device or Sleight of Hand check. You must decide to use this ability after the first attempt but before the results are revealed by the GM.",
                          source: "Dungeoneer's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Coaxing Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "Spell Focus (enchantment), Knowledge (dungeoneering) 6 ranks.",
                          benefit: "This feat only works with mind-affecting effects. A coaxing spell affects mindless oozes and vermin as if they weren’t mindless, but has no effect on other creature types. A coaxing spell uses a spell slot 2 levels higher than the spell’s actual level.",
                          summary: "This feat only works with mind-affecting effects. A coaxing spell affects mindless oozes and vermin as if they weren’t mindless, but has no effect on other creature types.",
                          source: "Dungeoneer's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cursed Item Detection",
                          featType: "General",
                          prerequisites: "Spellcraft 5 ranks, ability to cast detect magic as a spell or spell-like ability.",
                          benefit: "You gain a +2 bonus on checks made to identify the properties of magic items. In addition, you need only exceed the DC of these checks by 5 in order to determine whether or not an item is cursed.",
                          normal: "Unless the check made to identify a cursed item exceeds the DC by 10 or more, the item’s curse cannot be detected.",
                          summary: "You gain a +2 bonus on checks made to identify the properties of magic items. In addition, you need only exceed the DC of these checks by 5 in order to determine whether or not an item is cursed.",
                          source: "Dungeoneer's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dampen Presence",
                          featType: "General",
                          prerequisites: "Skill Focus (Stealth), Stealth 5 ranks.",
                          benefit: "You may use the Stealth skill to hide from any creature attempting to perceive you using blindsight or blindsense, even if you are clearly in that creature’s perceptual field. This feat does not confer any advantages against other forms of perception, such as scent, vision, or tremorsense.",
                          summary: "You may use the Stealth skill to hide from any creature attempting to perceive you using blindsight or blindsense, even if you are clearly in that creature’s perceptual field.",
                          source: "Dungeoneer's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ostentatious Display",
                          featType: "General",
                          prerequisites: "",
                          benefit: "As long as you are wearing a valuable nonmagical item in a magic item slot, you gain a +1 bonus on skill checks with a corresponding skill. Bonuses from wearing items in multiple slots that affect the same skill do not stack. Each item must be worth at least 5% of your character wealth by level (see Table 12–4 on page 399 of the Pathfinder RPG Core Rulebook). For example, a 6th-level PC gains a +1 bonus on Bluff checks while wearing a gem-studded tiara (which fills the headband slot) worth at least 800 gp. When she reaches 7th level, she must wear an accessory in the appropriate slot worth at least 1,175 gp in order to continue gaining this bonus. Item Slot Skill Bonus Belt, chest, shoulders +1 Intimidate Body, feet, neck +1 Diplomacy Eyes, hands, headband +1 Bluff Head, ring, wrists +1 Perform (any)",
                          summary: "As long as you are wearing a valuable nonmagical item in a magic item slot, you gain a +1 bonus on skill checks with a corresponding skill.",
                          source: "Dungeoneer's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tactical Reposition (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Improved Reposition APG .",
                          benefit: "When making a reposition combat maneuver (Pathfinder RPG Advanced Player’s Guide 322), you can move an enemy into a trap or other hazardous area, such as a pit, wall scythe, or blade barrier. When you do so, the moved enemy is treated as though it had activated the trap or triggered the hazard, and it takes a –2 penalty to AC and on saving throws to mitigate the trap or hazard’s effects.",
                          normal: "You cannot reposition a foe into an intrinsically dangerous space such as a pit or blade barrier.",
                          summary: "When making a reposition combat maneuver (Pathfinder RPG Advanced Player’s Guide 322), you can move an enemy into a trap or other hazardous area, such as a pit, wall scythe, or blade barrier.",
                          source: "Dungeoneer's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Torch Handling",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You gain three benefits upon taking this feat. First, you treat torches as simple weapons. Second, the radius of normal and increased illumination shed by any torch or mundane light source you carry increases by 10 feet. Finally, once per day you may reroll a single saving throw to resist any effect that would otherwise extinguish your light source, such as having water thrown at you, being targeted by a quench spell, and so on.",
                          summary: "You gain three benefits upon taking this feat. First, you treat torches as simple weapons.",
                          source: "Dungeoneer's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Torchbearer",
                          featType: "General",
                          prerequisites: "Character level 5th.",
                          benefit: "This feat is similar to the Leadership feat, with several exceptions. You can attract only a 1st-level cohort (referred to hereafter as a torchbearer) with this feat, and can’t recruit followers. You determine your Leadership score according to the rules presented in the Leadership feat, but your torchbearer is always at least 3 levels lower than your level. A torchbearer can take levels in the alchemist, bard, fighter, ranger, or rogue class. She can’t multiclass, though she can take any archetype she qualifies for, including those from the Torchbearer Archetypes section on page 21. The torchbearer must take the Torch Handling feat at 1st level (see the sidebar on page 21). If a torchbearer gains enough XP to bring her to 2 levels lower than your level, she doesn’t gain the new level until you gain your next level; until then her new XP total is 1 less than the amount needed to attain the next level and she gains no additional XP until you advance. If you release your torchbearer from service or otherwise lose your torchbearer, you may gain a new one by scouting for potential candidates in a city or large town where adventurers are at least somewhat common, which requires 24 hours of uninterrupted scouting. Unlike other hirelings, a torchbearer requires no compensation for her services as long as her employer has this feat; the opportunity to train under a hardened adventurer is reward enough for most torchbearers. Graduation: When you reach 8th level, this feat automatically upgrades to the Leadership feat (meaning that you effectively lose this feat and replace it with Leadership). You gain all the normal benefits of the Leadership feat but lose the benefits of this feat, and your torchbearer acts as a normal cohort; she may begin taking levels in other classes if she so chooses, and may increase in level to up to 2 levels lower than your level.",
                          summary: "This feat is similar to the Leadership feat, with several exceptions. You can attract only a 1st-level cohort (referred to hereafter as a torchbearer) with this feat, and can’t recruit followers.",
                          source: "Dungeoneer's Handbook", isPremium: true),

                    // // MARK: - Dwarves of Golarion
        )
        try await db.insertFeat(
        .make("Bounding Hammer (Combat)",
                          featType: "General",
                          prerequisites: "Proficiency with hammer, base attack bonus +6.",
                          benefit: "As a standard action, you may throw a hammer at an opponent within 20 feet. If you hit (whether or not the attack damages the target), the hammer rebounds off of the creature and lands in your square. If you have the Snatch Arrows feat, you may choose to catch the hammer when it enters your square (though this does not give you the ability to immediately throw the hammer). This ability may not work against some creatures or in certain circumstances as determined by the GM; for example, your weapon does not bounce off incorporeal creatures (unless it has the ghost touch ability), it may stick to creatures with the adhesive ability, the slowing effect of fighting underwater prevents you from using this feat, and so on.",
                          normal: "A thrown weapon drops in the square where it hit its target.",
                          summary: "As a standard action, you may throw a hammer at an opponent within 20 feet.",
                          source: "Dwarves of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sliding Axe Throw (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, base attack bonus +1.",
                          benefit: "You can choose to take a –2 penalty on a ranged attack roll with an axe, bouncing it or sliding it along the ground. If the target is flat-footed, running, or charging, this attack ignores any bonuses to the target’s AC from its shield. If the attack hits, you may immediately make a trip attempt against the target as a free action. If you fail to trip your opponent, your opponent does not get an attempt to trip you in return.This ability may not work in certain circumstances as determined by the GM, such as if the ground is soft, there is an obstacle or difficult terrain on the floor between you and your target, and so on.",
                          summary: "You can choose to take a –2 penalty on a ranged attack roll with an axe, bouncing it or sliding it along the ground.",
                          source: "Dwarves of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stance of the Xorn (Combat)",
                          featType: "General",
                          prerequisites: "Wis 15, base attack bonus +3.",
                          benefit: "Flanking creatures do not gain a +2 bonus to attack you (this does not prevent you from being sneak attacked or denied your Dexterity bonus). A condition that makes you lose your Dex bonus to AC also makes you lose the benefits of this feat.",
                          normal: "Flanking opponents gain a +2 flanking bonus to hit.",
                          summary: "Flanking creatures do not gain a +2 bonus to attack you (this does not prevent you from being sneak attacked or denied your Dexterity bonus).",
                          source: "Dwarves of Golarion", isPremium: true),

                    // // MARK: - Elemental Master's Handbook
        )
        try await db.insertFeat(
        .make("Benthic Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You can modify a spell that deals acid, cold, electricity, or fire damage to deal damage through high-pressure water instead. The spell gains the water descriptor, and you can either replace the spell’s normal damage with bludgeoning damage or split the spell’s damage so that half is bludgeoning and half is of its normal type. Creatures with damage reduction apply their damage reduction to bludgeoning damage from a benthic spell, but the spell counts as bludgeoning and magic for the purposes of bypassing damage reduction. A benthic spell uses up a spell slot one level higher than the spell’s actual level.",
                          summary: "You can modify a spell that deals acid, cold, electricity, or fire damage to deal damage through high-pressure water instead.",
                          source: "Elemental Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Bilge Rat",
                          featType: "General",
                          prerequisites: "",
                          benefit: "If you are wearing an eye patch when you are dazzled or blinded as a result of eye damage or a visual stimulus (such as from fireworksUE or a glitterdust spell), you can remove or switch your eye patch as a move action to favor the eye you had kept covered. Switching your eye patch allows you to ignore the dazzled condition or to reduce the blinded condition to dazzled until the effect ends, at which time you regain the ability to use this feat.",
                          summary: "If you are wearing an eye patch when you are dazzled or blinded as a result of eye damage or a visual stimulus (such as from fireworksUE or a glitterdust spell), you can remove or switch your eye…",
                          source: "Elemental Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Brackish Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "This feat can be applied only to spells with the water descriptor. You can modify the spell to surround you with a thin sheath of brackish salt water in addition to the spell’s normal effect. You gain DR/piercing equal to the spell’s level for 1 round after you finish casting the spell. After this round, the water collapses into a briny puddle and the effect ends. A brackish spell does not use up a higher-level spell slot than the spell’s actual level.",
                          summary: "This feat can be applied only to spells with the water descriptor. You can modify the spell to surround you with a thin sheath of brackish salt water in addition to the spell’s normal effect.",
                          source: "Elemental Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Flumefire Rage",
                          featType: "General",
                          prerequisites: "Cha 15; bloodrage class feature, elemental focus class feature, or Varisian Tattoo (evocation) (Pathfinder Campaign Setting: The Inner Sea World Guide 289).",
                          benefit: "When casting an evocation spell that deals fire damage, you can deal +1 point of fire damage per die. If you do, you must succeed at a Fortitude save (DC = 15 + the spell or blast’s level) or become fatigued. You cannot use this feat while fatigued or if you cannot become fatigued. If you are raging (such as when using bloodrage or affected by the rage spell), this damage increases to +2 points per die and you roll twice when attempting the Fortitude save and take the better result. This feat does not otherwise grant you the ability to cast spells while raging.",
                          summary: "When casting an evocation spell that deals fire damage, you can deal +1 point of fire damage per die.",
                          source: "Elemental Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Growth in Ash",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When you succeed at a Reflex save to avoid catching on fire, or when you cease taking ongoing fire damage from a spell or effect, you can smear ash on yourself as an immediate action to gain fast healing 1 for 3 rounds. For every Hit Die you have beyond 3, extend the duration of this fast healing by an additional round.",
                          summary: "When you succeed at a Reflex save to avoid catching on fire, or when you cease taking ongoing fire damage from a spell or effect, you can smear ash on yourself as an immediate action to gain fast…",
                          source: "Elemental Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Hammer Guards the Anvil (Teamwork)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Creatures threatened by an ally with this feat cannot make attacks of opportunity against you when you pick up an item from the ground, retrieve a stored item, sheathe a weapon, or stand up from prone.",
                          summary: "Creatures threatened by an ally with this feat cannot make attacks of opportunity against you when you pick up an item from the ground, retrieve a stored item, sheathe a weapon, or stand up from…",
                          source: "Elemental Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Hurricane Punch (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Improved Bull Rush, Improved Unarmed Strike, Power Attack.",
                          benefit: "When you hit the same creature with unarmed strikes at least twice in the same round, you can attempt a bull rush combat maneuver against that creature as a swift action. You can also move with the target even if you have no movement remaining, but the distance you move can’t exceed half your speed.",
                          summary: "When you hit the same creature with unarmed strikes at least twice in the same round, you can attempt a bull rush combat maneuver against that creature as a swift action.",
                          source: "Elemental Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Elemental Counterspell",
                          featType: "General",
                          prerequisites: "Two basic blast wild talents from two different elements, expanded element class feature, kinetic blast class feature.",
                          benefit: "You can use a readied kinetic blast to counterspell any spell of equal or lower level, provided that the target spell has any of the following descriptors: air, cold, darkness, earth, electricity, fire, force, light, or water.",
                          normal: "A readied kinetic blast can be used to counterspell spells that share its descriptor.",
                          summary: "You can use a readied kinetic blast to counterspell any spell of equal or lower level, provided that the target spell has any of the following descriptors: air, cold, darkness, earth, electricity,…",
                          source: "Elemental Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Joyless Toil (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Wis 13, Improved Unarmed Strike, base attack bonus +8.",
                          benefit: "Joyless Toil forces a foe damaged by your unarmed attack to attempt a Fortitude saving throw (DC = 10 + half your character level + your Wisdom modifier) in addition to taking damage normally. You must declare that you are using this feat before you make your attack roll—thus, a failed attack roll wastes the attempt. An opponent who fails this saving throw is nauseated for 1 round or until the opponent is attacked. You can attempt to use Joyless Toil once per day for every 4 character levels you have, but you can use it no more than once per round. Constructs, incorporeal creatures, mindless creatures, plants, undead, and creatures that are immune to critical hits cannot be affected by this ability.",
                          summary: "Joyless Toil forces a foe damaged by your unarmed attack to attempt a Fortitude saving throw (DC = 10 + half your character level + your Wisdom modifier) in addition to taking damage normally.",
                          source: "Elemental Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Kraggodan's Stance (Combat)",
                          featType: "General",
                          prerequisites: "Con 13, proficiency with heavy armor and shields.",
                          benefit: "As a move action when wearing heavy armor and using a heavy shield or tower shield, you increase the bonus to AC granted by your armor and your shield by 1 each until you move or are moved from your current square. You must be in contact with solid ground to gain this benefit. You can never increase an armor or shield bonus to AC by more than 1 each in this way.",
                          summary: "As a move action when wearing heavy armor and using a heavy shield or tower shield, you increase the bonus to AC granted by your armor and your shield by 1 each until you move or are moved from your…",
                          source: "Elemental Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Mobile Gathering",
                          featType: "General",
                          prerequisites: "Kineticist level 7th, kinetic blast class feature.",
                          benefit: "While taking a move action to gather power, you can move up to half your base speed, and while taking 1 full round to gather power, you can move up to half your speed on the turn you begin the full round of gathering power. This movement provokes attacks of opportunity, and you can’t use Acrobatics checks or other abilities to attempt to negate them, as you’re concentrating on gathering power (nor can you use Acrobatics to balance, jump, or do anything else that requires a skill check). It’s harder to concentrate on gathering power while using this feat; if you take damage during or after gathering power and before using a kinetic blast that releases it (including from an attack of opportunity provoked by the movement), the concentration check DC to avoid losing the gathered power increases by twice the blast’s effective spell level.",
                          summary: "While taking a move action to gather power, you can move up to half your base speed, and while taking 1 full round to gather power, you can move up to half your speed on the turn you begin the full…",
                          source: "Elemental Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Mountain Eyes",
                          featType: "General",
                          prerequisites: "Blind-Fight, Perception 5 ranks.",
                          benefit: "You ignore concealment (but not total concealment) caused by fog, rain, smoke, wind, and other gases or weather effects (including magical effects like obscuring mist), and you ignore up to –4 in penalties on Perception checks from such effects. You treat total concealment resulting from any such gas or weather effects within 10 feet of you as concealment (20% miss chance).",
                          summary: "You ignore concealment (but not total concealment) caused by fog, rain, smoke, wind, and other gases or weather effects (including magical effects like obscuring mist), and you ignore up to –4 in…",
                          source: "Elemental Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stone-Handed (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Stunning Fist.",
                          benefit: "Before making a melee attack with an unarmed strike, you can expend one use of Stunning Fist to declare a stone-handed strike. Resolve the attack normally, except your attack ignores an amount of the target’s hardness equal to your monk level or one-quarter your base attack bonus (minimum 1), whichever is higher. This effect replaces other effects or conditions that would be caused by your Stunning Fist.",
                          summary: "Before making a melee attack with an unarmed strike, you can expend one use of Stunning Fist to declare a stone-handed strike.",
                          source: "Elemental Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Storm Breaker",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You are treated as two sizes larger than your actual size when calculating whether you can be moved by wind or currents, including the vortex and whirlwind special abilities of monsters. If you have at least 11 Hit Dice, you cannot be moved by nonmagical wind unless you so choose.",
                          summary: "You are treated as two sizes larger than your actual size when calculating whether you can be moved by wind or currents, including the vortex and whirlwind special abilities of monsters.",
                          source: "Elemental Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sunblade",
                          featType: "General",
                          prerequisites: "Word of Healing UM, paladin level 5th, worshiper of a deity that grants the Fire or Sun domain.",
                          benefit: "You can expend a use of lay on hands as a standard action to launch a blast of flame from your weapon. This acts as the kineticist’s fire blast (Pathfinder RPG Occult Adventures 15), with an effective kineticist level equal to your paladin level – 4. You do not need a free hand to use this ability, but you must be wielding a manufactured melee weapon. You use your Charisma modifier instead of your Constitution modifier to determine the blast’s damage. This blast cannot be modified by infusions or other effects that specifically improve a kineticist’s blast, even if you have them from other classes.",
                          summary: "You can expend a use of lay on hands as a standard action to launch a blast of flame from your weapon.",
                          source: "Elemental Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tundra Stride",
                          featType: "General",
                          prerequisites: "Acrobatics 5 ranks.",
                          benefit: "While charging, running, or withdrawing, you gain a +10-foot enhancement bonus to your base speed. This bonus also applies to your speed when calculating overland movement in any plains terrain. You lose the benefits of this feat while you are wearing heavy armor or carrying a heavy load.",
                          summary: "While charging, running, or withdrawing, you gain a +10-foot enhancement bonus to your base speed. This bonus also applies to your speed when calculating overland movement in any plains terrain.",
                          source: "Elemental Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Wind Song",
                          featType: "General",
                          prerequisites: "Perform (wind instruments) 5 ranks; bardic performance or raging song class feature.",
                          benefit: "Three times per day while you are using a wind instrument to play a bardic performance or raging song, you can spend an extra round of performance at the start of your performance and choose a square within 120 feet. Strange echoes carry your music, and for the purpose of determining which creatures are affected by your performance, your performance counts as originating from that square rather than from your location. You cannot change the square from which the music originates until you end your performance. If you move beyond 120 feet from the chosen square, the performance immediately ends.",
                          summary: "Three times per day while you are using a wind instrument to play a bardic performance or raging song, you can spend an extra round of performance at the start of your performance and choose a square…",
                          source: "Elemental Master's Handbook", isPremium: true),

                    // // MARK: - Faction Guide
        )
        try await db.insertFeat(
        .make("Advanced Defensive Combat Training (Combat, Faction)",
                          featType: "General",
                          prerequisites: "Defensive Combat Training, Bellflower Network 10 TPA.",
                          benefit: "You gain a +4 bonus to your CMD.",
                          summary: "You gain a +4 bonus to your CMD.",
                          source: "Faction Guide", isPremium: true)
        )
        try await seedFeatsE()
    }
}
