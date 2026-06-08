import Foundation

extension SeedDataBuilder {
    func seedFeats() async throws {
        try await db.insertFeat(
        .make("Acrobatic",
                          featType: "General",
                          prerequisites: "Acrobatic.",
                          benefit: "You get a +2 bonus on all Acrobatics and Fly skill checks. If you have 10 or more ranks in one of these skills, the bonus increases to +4 for that skill.",
                          summary: "You get a +2 bonus on all Acrobatics and Fly skill checks. If you have 10 or more ranks in one of these skills, the bonus increases to +4 for that skill.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Acrobatic Steps",
                          featType: "General",
                          prerequisites: "Dex 15, Nimble Moves.",
                          benefit: "Whenever you move, you may move through up to 15 feet of difficult terrain each round as if it were normal terrain. The effects of this feat stack with those provided by Nimble Moves (allowing you to move normally through a total of 20 feet of difficult terrain each round).",
                          summary: "Whenever you move, you may move through up to 15 feet of difficult terrain each round as if it were normal terrain.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Agile Maneuvers (Combat)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You add your Dexterity bonus to your base attack bonus and size bonus when determining your Combat Maneuver Bonus (see Combat) instead of your Strength bonus.",
                          normal: "You add your Strength bonus to your base attack bonus and size bonus when determining your Combat Maneuver Bonus.",
                          summary: "You add your Dexterity bonus to your base attack bonus and size bonus when determining your Combat Maneuver Bonus (see Combat) instead of your Strength bonus.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Alertness",
                          featType: "General",
                          prerequisites: "Alertness.",
                          benefit: "You get a +2 bonus on Perception and Sense Motive skill checks. If you have 10 or more ranks in one of these skills, the bonus increases to +4 for that skill.",
                          summary: "You get a +2 bonus on Perception and Sense Motive skill checks. If you have 10 or more ranks in one of these skills, the bonus increases to +4 for that skill.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Alignment Channel",
                          featType: "General",
                          prerequisites: "Ability to channel energy.",
                          benefit: "Instead of its normal effect, you can choose to have your ability to channel energy heal or harm outsiders of the chosen alignment subtype. You must make this choice each time you channel energy. If you choose to heal or harm creatures of the chosen alignment subtype, your channel energy has no effect on other creatures. The amount of damage healed or dealt and the DC to halve the damage is otherwise unchanged.",
                          special: "You can gain this feat multiple times. Its effects do not stack. Each time you take this feat, it applies to a new alignment subtype. Whenever you channel energy, you must choose which type to effect.",
                          summary: "Instead of its normal effect, you can choose to have your ability to channel energy heal or harm outsiders of the chosen alignment subtype. You must make this choice each time you channel energy.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Animal Affinity",
                          featType: "General",
                          prerequisites: "Animal Affinity.",
                          benefit: "You get a +2 bonus on all Handle Animal and Ride skill checks. If you have 10 or more ranks in one of these skills, the bonus increases to +4 for that skill.",
                          summary: "You get a +2 bonus on all Handle Animal and Ride skill checks. If you have 10 or more ranks in one of these skills, the bonus increases to +4 for that skill.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Arcane Armor Mastery (Combat)",
                          featType: "General",
                          prerequisites: "Arcane Armor Training, Medium Armor Proficiency, caster level 7th.",
                          benefit: "As a swift action, reduce the arcane spell failure chance due to the armor you are wearing by 20% for any spells you cast this round. This bonus replaces, and does not stack with, the bonus granted by Arcane Armor Training.",
                          summary: "As a swift action, reduce the arcane spell failure chance due to the armor you are wearing by 20% for any spells you cast this round.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Arcane Armor Training (Combat)",
                          featType: "General",
                          prerequisites: "Light Armor Proficiency, caster level 3rd.",
                          benefit: "As a swift action, reduce the arcane spell failure chance due to the armor you are wearing by 10% for any spells you cast this round.",
                          summary: "As a swift action, reduce the arcane spell failure chance due to the armor you are wearing by 10% for any spells you cast this round.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Arcane Strike (Combat)",
                          featType: "General",
                          prerequisites: "Ability to cast arcane spells.",
                          benefit: "As a swift action, you can imbue your weapons with a fraction of your power. For 1 round, your weapons deal +1 damage and are treated as magic for the purpose of overcoming damage reduction. For every five caster levels you possess, this bonus increases by +1, to a maximum of +5 at 20th level.",
                          summary: "As a swift action, you can imbue your weapons with a fraction of your power. For 1 round, your weapons deal +1 damage and are treated as magic for the purpose of overcoming damage reduction.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Armor Proficiency, Heavy (Combat)",
                          featType: "General",
                          prerequisites: "Light Armor Proficiency, Medium Armor Proficiency.",
                          benefit: "See Armor Proficiency, Light.",
                          normal: "See Armor Proficiency, Light.",
                          special: "Fighters and paladins automatically have Heavy Armor Proficiency as a bonus feat. They need not select it.",
                          summary: "See Armor Proficiency, Light.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Armor Proficiency, Light (Combat)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When you wear a type of armor with which you are proficient, the armor check penalty for that armor applies only to Dexterity- and Strength-based skill checks.",
                          normal: "A character who is wearing armor with which he is not proficient applies its armor check penalty to attack rolls and to all skill checks that involve moving.",
                          special: "All characters except monks, sorcerers, and wizards automatically have Light Armor Proficiency as a bonus feat. They need not select it.",
                          summary: "When you wear a type of armor with which you are proficient, the armor check penalty for that armor applies only to Dexterity- and Strength-based skill checks.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Armor Proficiency, Medium (Combat)",
                          featType: "General",
                          prerequisites: "Light Armor Proficiency.",
                          benefit: "See Armor Proficiency, Light.",
                          normal: "See Armor Proficiency, Light.",
                          special: "Barbarians, clerics, druids, fighters, paladins, and rangers automatically have Medium Armor Proficiency as a bonus feat. They need not select it.",
                          summary: "See Armor Proficiency, Light.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Athletic",
                          featType: "General",
                          prerequisites: "Athletic.",
                          benefit: "You get a +2 bonus on Climb and Swim skill checks. If you have 10 or more ranks in one of these skills, the bonus increases to +4 for that skill.",
                          summary: "You get a +2 bonus on Climb and Swim skill checks. If you have 10 or more ranks in one of these skills, the bonus increases to +4 for that skill.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Augment Summoning",
                          featType: "General",
                          prerequisites: "Spell Focus (conjuration).",
                          benefit: "Each creature you conjure with any summon spell gains a +4 enhancement bonus to Strength and Constitution for the duration of the spell that summoned it.",
                          summary: "Each creature you conjure with any summon spell gains a +4 enhancement bonus to Strength and Constitution for the duration of the spell that summoned it.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Bleeding Critical (Combat, Critical)",
                          featType: "General",
                          prerequisites: "Critical Focus, base attack bonus +11.",
                          benefit: "Whenever you score a critical hit with a slashing or piercing weapon, your opponent takes 2d6 points of bleed damage (see Conditions) each round on his turn, in addition to the damage dealt by the critical hit. Bleed damage can be stopped by a DC 15 Heal skill check or through any magical healing. The effects of this feat stack.",
                          special: "You can only apply the effects of one critical feat to a given critical hit unless you possess Critical Mastery.",
                          summary: "Whenever you score a critical hit with a slashing or piercing weapon, your opponent takes 2d6 points of bleed damage (see Conditions) each round on his turn, in addition to the damage dealt by the…",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Blind-Fight (Combat)",
                          featType: "General",
                          prerequisites: "Blind-Fight.",
                          benefit: "In melee, every time you miss because of concealment (see Combat), you can reroll your miss chance percentile roll one time to see if you actually hit.An invisible attacker gets no advantages related to hitting you in melee. That is, you don't lose your Dexterity bonus to Armor Class, and the attacker doesn't get the usual +2 bonus for being invisible. The invisible attacker's bonuses do still apply for ranged attacks, however.You do not need to make Acrobatics skill checks to move at full speed while blinded.",
                          normal: "Regular attack roll modifiers for invisible attackers trying to hit you apply, and you lose your Dexterity bonus to AC. The speed reduction for darkness and poor visibility also applies.",
                          special: "The Blind-Fight feat is of no use against a character who is the subject of a blink spell.",
                          summary: "In melee, every time you miss because of concealment (see Combat), you can reroll your miss chance percentile roll one time to see if you actually hit.An invisible attacker gets no advantages related…",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Blinding Critical (Combat, Critical)",
                          featType: "General",
                          prerequisites: "Critical Focus, base attack bonus +15.",
                          benefit: "Whenever you score a critical hit, your opponent is permanently blinded. A successful Fortitude save reduces this to dazzled for 1d4 rounds. The DC of this Fortitude save is equal to 10 + your base attack bonus. This feat has no effect on creatures that do not rely on eyes for sight or creatures with more than two eyes (although multiple critical hits might cause blindness, at the GM's discretion). Blindness can be cured by heal, regeneration, remove blindness, or similar abilities.",
                          special: "You can only apply the effects of one critical feat to a given critical hit unless you possess Critical Mastery.",
                          summary: "Whenever you score a critical hit, your opponent is permanently blinded. A successful Fortitude save reduces this to dazzled for 1d4 rounds.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Brew Potion (Item Creation)",
                          featType: "General",
                          prerequisites: "Caster level 3rd.",
                          benefit: "You can create a potion of any 3rd-level or lower spell that you know and that targets one or more creatures or objects. Brewing a potion takes 2 hours if its base price is 250 gp or less, otherwise brewing a potion takes 1 day for each 1,000 gp in its base price. When you create a potion, you set the caster level, which must be sufficient to cast the spell in question and no higher than your own level. To brew a potion, you must use up raw materials costing one half this base price. See the magic item creation rules in Magic Items for more information.When you create a potion, you make any choices that you would normally make when casting the spell. Whoever drinks the potion is the target of the spell.",
                          summary: "You can create a potion of any 3rd-level or lower spell that you know and that targets one or more creatures or objects.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Catch Off-Guard (Combat)",
                          featType: "General",
                          prerequisites: "Catch Off-Guard.",
                          benefit: "You do not suffer any penalties for using an improvised melee weapon. Unarmed opponents are flat-footed against any attacks you make with an improvised melee weapon.",
                          normal: "You take a –4 penalty on attack rolls made with an improvised weapon.",
                          summary: "You do not suffer any penalties for using an improvised melee weapon. Unarmed opponents are flat-footed against any attacks you make with an improvised melee weapon.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Channel Smite (Combat)",
                          featType: "General",
                          prerequisites: "Channel energy class feature.",
                          benefit: "Before you make a melee attack roll, you can choose to spend one use of your channel energy ability as a swift action. If you channel positive energy and you hit an undead creature, that creature takes an amount of additional damage equal to the damage dealt by your channel positive energy ability. If you channel negative energy and you hit a living creature, that creature takes an amount of additional damage equal to the damage dealt by your channel negative energy ability. Your target can make a Will save, as normal, to halve this additional damage. If your attack misses, the channel energy ability is still expended with no effect.",
                          summary: "Before you make a melee attack roll, you can choose to spend one use of your channel energy ability as a swift action.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Cleave (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Power Attack, base attack bonus +1.",
                          benefit: "As a standard action, you can make a single attack at your full base attack bonus against a foe within reach. If you hit, you deal damage normally and can make an additional attack (using your full base attack bonus) against a foe that is adjacent to the first and also within reach. You can only make one additional attack per round with this feat. When you use this feat, you take a –2 penalty to your Armor Class until your next turn.",
                          summary: "As a standard action, you can make a single attack at your full base attack bonus against a foe within reach.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Combat Casting",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You get a +4 bonus on concentration checks made to cast a spell or use a spell-like ability when casting on the defensive or while grappled.",
                          summary: "You get a +4 bonus on concentration checks made to cast a spell or use a spell-like ability when casting on the defensive or while grappled.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Combat Expertise (Combat)",
                          featType: "General",
                          prerequisites: "Int 13.",
                          benefit: "You can choose to take a –1 penalty on melee attack rolls and combat maneuver checks to gain a +1 dodge bonus to your Armor Class. When your base attack bonus reaches +4, and every +4 thereafter, the penalty increases by –1 and the dodge bonus increases by +1. You can only choose to use this feat when you declare that you are making an attack or a full-attack action with a melee weapon. The effects of this feat last until your next turn.",
                          summary: "You can choose to take a –1 penalty on melee attack rolls and combat maneuver checks to gain a +1 dodge bonus to your Armor Class.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Combat Reflexes (Combat)",
                          featType: "General",
                          prerequisites: "Combat Reflexes.",
                          benefit: "You may make a number of additional attacks of opportunity per round equal to your Dexterity bonus. With this feat, you may also make attacks of opportunity while flat-footed.",
                          normal: "A character without this feat can make only one attack of opportunity per round and can't make attacks of opportunity while flat-footed.",
                          special: "The Combat Reflexes feat does not allow a rogue to use her opportunist ability more than once per round.",
                          summary: "You may make a number of additional attacks of opportunity per round equal to your Dexterity bonus. With this feat, you may also make attacks of opportunity while flat-footed.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Command Undead",
                          featType: "General",
                          prerequisites: "Channel negative energy class feature.",
                          benefit: "As a standard action, you can use one of your uses of channel negative energy to enslave undead within 30 feet. Undead receive a Will save to negate the effect. The DC for this Will save is equal to 10 + 1/2 your cleric level + your Charisma modifier. Undead that fail their saves fall under your control, obeying your commands to the best of their ability, as if under the effects of control undead. Intelligent undead receive a new saving throw each day to resist your command. You can control any number of undead, so long as their total Hit Dice do not exceed your cleric level. If you use channel energy in this way, it has no other effect (it does not heal or harm nearby creatures). If an undead creature is under the control of another creature, you must make an opposed Charisma check whenever your orders conflict.",
                          summary: "As a standard action, you can use one of your uses of channel negative energy to enslave undead within 30 feet. Undead receive a Will save to negate the effect.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Craft Magic Arms and Armor (Item Creation)",
                          featType: "General",
                          prerequisites: "Caster level 5th.",
                          benefit: "You can create magic weapons, armor, or shields. Enhancing a weapon, suit of armor, or shield takes 1 day for each 1,000 gp in the price of its magical features. To enhance a weapon, suit of armor, or shield, you must use up raw materials costing half of this total price. See the magic item creation rules in Magic Items for more information.The weapon, armor, or shield to be enhanced must be a masterwork item that you provide. Its cost is not included in the above cost.You can also mend a broken magic weapon, suit of armor, or shield if it is one that you could make. Doing so costs half the raw materials and half the time it would take to craft that item in the first place.",
                          summary: "You can create magic weapons, armor, or shields. Enhancing a weapon, suit of armor, or shield takes 1 day for each 1,000 gp in the price of its magical features.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Craft Rod (Item Creation)",
                          featType: "General",
                          prerequisites: "Caster level 9th.",
                          benefit: "You can create magic rods. Crafting a rod takes 1 day for each 1,000 gp in its base price. To craft a rod, you must use up raw materials costing half of its base price. See the magic item creation rules in Magic Items for more information.",
                          summary: "You can create magic rods. Crafting a rod takes 1 day for each 1,000 gp in its base price. To craft a rod, you must use up raw materials costing half of its base price.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Craft Staff (Item Creation)",
                          featType: "General",
                          prerequisites: "Caster level 11th.",
                          benefit: "You can create any staff whose prerequisites you meet. Crafting a staff takes 1 day for each 1,000 gp in its base price. To craft a staff, you must use up raw materials costing half of its base price. A newly created staff has 10 charges. See the magic item creation rules in Magic Items for more information.",
                          summary: "You can create any staff whose prerequisites you meet. Crafting a staff takes 1 day for each 1,000 gp in its base price.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Craft Wand (Item Creation)",
                          featType: "General",
                          prerequisites: "Caster level 5th.",
                          benefit: "You can create a wand of any 4th-level or lower spell that you know. Crafting a wand takes 1 day for each 1,000 gp in its base price. To craft a wand, you must use up raw materials costing half of this base price. A newly created wand has 50 charges. See the magic item creation rules in Magic Items for more information.",
                          summary: "You can create a wand of any 4th-level or lower spell that you know. Crafting a wand takes 1 day for each 1,000 gp in its base price.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Craft Wondrous Item (Item Creation)",
                          featType: "General",
                          prerequisites: "Caster level 3rd.",
                          benefit: "You can create a wide variety of magic wondrous items. Crafting a wondrous item takes 1 day for each 1,000 gp in its price. To create a wondrous item, you must use up raw materials costing half of its base price. See the magic item creation rules in Magic Items for more information.You can also mend a broken wondrous item if it is one that you could make. Doing so costs half the raw materials and half the time it would take to craft that item.",
                          summary: "You can create a wide variety of magic wondrous items. Crafting a wondrous item takes 1 day for each 1,000 gp in its price.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Critical Focus (Combat, Critical)",
                          featType: "General",
                          prerequisites: "Base attack bonus +9.",
                          benefit: "You receive a +4 circumstance bonus on attack rolls made to confirm critical hits.",
                          summary: "You receive a +4 circumstance bonus on attack rolls made to confirm critical hits.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Critical Mastery (Combat, Critical)",
                          featType: "General",
                          prerequisites: "Critical Focus, any two critical feats, 14th-level fighter.",
                          benefit: "When you score a critical hit, you can apply the effects of two critical feats in addition to the damage dealt.",
                          normal: "You can only apply the effects of one critical feat to a given critical hit in addition to the damage dealt.",
                          summary: "When you score a critical hit, you can apply the effects of two critical feats in addition to the damage dealt.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Dazzling Display (Combat)",
                          featType: "General",
                          prerequisites: "Weapon Focus, proficiency with the selected weapon.",
                          benefit: "While wielding the weapon in which you have Weapon Focus, you can perform a bewildering show of prowess as a full-round action. Make an Intimidate check to demoralize all foes within 30 feet who can see your display.",
                          summary: "While wielding the weapon in which you have Weapon Focus, you can perform a bewildering show of prowess as a full-round action.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Deadly Aim (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, base attack bonus +1.",
                          benefit: "You can choose to take a –1 penalty on all ranged attack rolls to gain a +2 bonus on all ranged damage rolls. When your base attack bonus reaches +4, and every +4 thereafter, the penalty increases by –1 and the bonus to damage increases by +2. You must choose to use this feat before making an attack roll and its effects last until your next turn. The bonus damage does not apply to touch attacks or effects that do not deal hit point damage.",
                          summary: "You can choose to take a –1 penalty on all ranged attack rolls to gain a +2 bonus on all ranged damage rolls.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Deadly Stroke (Combat)",
                          featType: "General",
                          prerequisites: "Dazzling Display, Greater Weapon Focus, Shatter Defenses, Weapon Focus, proficiency with the selected weapon, base attack bonus +11.",
                          benefit: "As a standard action, make a single attack with the weapon for which you have Greater Weapon Focus against a stunned or flat-footed opponent. If you hit, you deal double the normal damage and the target takes 1 point of Constitution bleed (see Conditions). The additional damage and bleed is not multiplied on a critical hit.",
                          summary: "As a standard action, make a single attack with the weapon for which you have Greater Weapon Focus against a stunned or flat-footed opponent.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Deafening Critical (Combat, Critical)",
                          featType: "General",
                          prerequisites: "Critical Focus, base attack bonus +13.",
                          benefit: "Whenever you score a critical hit against an opponent, the victim is permanently deafened. A successful Fortitude save reduces the deafness to 1 round. The DC of this Fortitude save is equal to 10 + your base attack bonus. This feat has no effect on deaf creatures. This deafness can be cured by heal, regeneration, remove deafness, or a similar ability.",
                          special: "You can only apply the effects of one critical feat to a given critical hit unless you possess Critical Mastery.",
                          summary: "Whenever you score a critical hit against an opponent, the victim is permanently deafened. A successful Fortitude save reduces the deafness to 1 round.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Deceitful",
                          featType: "General",
                          prerequisites: "Deceitful.",
                          benefit: "You get a +2 bonus on all Bluff and Disguise skill checks. If you have 10 or more ranks in one of these skills, the bonus increases to +4 for that skill.",
                          summary: "You get a +2 bonus on all Bluff and Disguise skill checks. If you have 10 or more ranks in one of these skills, the bonus increases to +4 for that skill.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Defensive Combat Training (Combat)",
                          featType: "General",
                          prerequisites: "Defensive Combat Training, 4th mythic tier.",
                          benefit: "You treat your total Hit Dice as your base attack bonus when calculating your Combat Maneuver Defense (see Combat).",
                          summary: "You treat your total Hit Dice as your base attack bonus when calculating your Combat Maneuver Defense (see Combat).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Deflect Arrows (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Improved Unarmed Strike.",
                          benefit: "You must have at least one hand free (holding nothing) to use this feat. Once per round when you would normally be hit with an attack from a ranged weapon, you may deflect it so that you take no damage from it. You must be aware of the attack and not flat-footed. Attempting to deflect a ranged attack doesn't count as an action. Unusually massive ranged weapons (such as boulders or ballista bolts) and ranged attacks generated by natural attacks or spell effects can't be deflected.",
                          summary: "You must have at least one hand free (holding nothing) to use this feat.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Deft Hands",
                          featType: "General",
                          prerequisites: "Deft Hands.",
                          benefit: "You get a +2 bonus on Disable Device and Sleight of Hand skill checks. If you have 10 or more ranks in one of these skills, the bonus increases to +4 for that skill.",
                          summary: "You get a +2 bonus on Disable Device and Sleight of Hand skill checks. If you have 10 or more ranks in one of these skills, the bonus increases to +4 for that skill.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Diehard",
                          featType: "General",
                          prerequisites: "Endurance.",
                          benefit: "When your hit point total is below 0, but you are not dead, you automatically stabilize. You do not need to make a Constitution check each round to avoid losing additional hit points. You may choose to act as if you were disabled, rather than dying. You must make this decision as soon as you are reduced to negative hit points (even if it isn't your turn). If you do not choose to act as if you were disabled, you immediately fall unconscious.When using this feat, you are staggered. You can take a move action without further injuring yourself, but if you perform any standard action (or any other action deemed as strenuous, including some swift actions, such as casting a quickened spell) you take 1 point of damage after completing the act. If your negative hit points are equal to or greater than your Constitution score, you immediately die.",
                          normal: "A character without this feat who is reduced to negative hit points is unconscious and dying.",
                          summary: "When your hit point total is below 0, but you are not dead, you automatically stabilize. You do not need to make a Constitution check each round to avoid losing additional hit points.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Disruptive (Combat)",
                          featType: "General",
                          prerequisites: "6th-level fighter.",
                          benefit: "The DC to cast spells defensively increases by +4 for all enemies that are within your threatened area. This increase to casting spells defensively only applies if you are aware of the enemy's location and are capable of taking an attack of opportunity. If you can only take one attack of opportunity per round and have already used that attack, this increase does not apply.",
                          summary: "The DC to cast spells defensively increases by +4 for all enemies that are within your threatened area.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Dodge (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13.",
                          benefit: "You gain a +1 dodge bonus to your AC. A condition that makes you lose your Dex bonus to AC also makes you lose the benefits of this feat.",
                          summary: "You gain a +1 dodge bonus to your AC. A condition that makes you lose your Dex bonus to AC also makes you lose the benefits of this feat.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Double Slice (Combat)",
                          featType: "General",
                          prerequisites: "Dex 15, Two-Weapon Fighting.",
                          benefit: "Add your Strength bonus to damage rolls made with your off-hand weapon.",
                          normal: "You normally add only half of your Strength modifier to damage rolls made with a weapon wielded in your off-hand.",
                          summary: "Add your Strength bonus to damage rolls made with your off-hand weapon.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Elemental Channel",
                          featType: "General",
                          prerequisites: "Channel energy class feature.",
                          benefit: "Instead of its normal effect, you can choose to have your ability to channel energy heal or harm outsiders of your chosen elemental subtype. You must make this choice each time you channel energy. If you choose to heal or harm creatures of your elemental subtype, your channel energy has no affect on other creatures. The amount of damage healed or dealt and the DC to halve the damage is otherwise unchanged.",
                          special: "You can gain this feat multiple times. Its effects do not stack. Each time you take this feat, it applies to a new elemental subtype.",
                          summary: "Instead of its normal effect, you can choose to have your ability to channel energy heal or harm outsiders of your chosen elemental subtype. You must make this choice each time you channel energy.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Empower Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "All variable, numeric effects of an empowered spell are increased by half including bonuses to those dice rolls.Saving throws and opposed rolls are not affected, nor are spells without random variables. An empowered spell uses up a spell slot two levels higher than the spell's actual level.",
                          summary: "All variable, numeric effects of an empowered spell are increased by half including bonuses to those dice rolls.Saving throws and opposed rolls are not affected, nor are spells without random…",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Endurance",
                          featType: "General",
                          prerequisites: "Endurance.",
                          benefit: "You gain a +4 bonus on the following checks and saves: Swim checks made to resist nonlethal damage from exhaustion; Constitution checks made to continue running; Constitution checks made to avoid nonlethal damage from a forced march; Constitution checks made to hold your breath; Constitution checks made to avoid nonlethal damage from starvation or thirst; Fortitude saves made to avoid nonlethal damage from hot or cold environments; and Fortitude saves made to resist damage from suffocation.You may sleep in light or medium armor without becoming fatigued.",
                          normal: "A character without this feat who sleeps in medium or heavier armor is fatigued the next day.",
                          summary: "You gain a +4 bonus on the following checks and saves: Swim checks made to resist nonlethal damage from exhaustion; Constitution checks made to continue running; Constitution checks made to avoid…",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Enlarge Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You can alter a spell with a range of close, medium, or long to increase its range by 100%. An enlarged spell with a range of close now has a range of 50 ft. + 5 ft./level, while medium-range spells have a range of 200 ft. + 20 ft./level and long-range spells have a range of 800 ft. + 80 ft./level. An enlarged spell uses up a spell slot one level higher than the spell's actual level.Spells whose ranges are not defined by distance, as well as spells whose ranges are not close, medium, or long, do not benefit from this feat.",
                          summary: "You can alter a spell with a range of close, medium, or long to increase its range by 100%. An enlarged spell with a range of close now has a range of 50 ft.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Eschew Materials",
                          featType: "General",
                          prerequisites: "Eschew Materials.",
                          benefit: "You can cast any spell with a material component costing 1 gp or less without needing that component. The casting of the spell still provokes attacks of opportunity as normal. If the spell requires a material component that costs more than 1 gp, you must have the material component on hand to cast the spell, as normal.",
                          summary: "You can cast any spell with a material component costing 1 gp or less without needing that component. The casting of the spell still provokes attacks of opportunity as normal.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Exhausting Critical (Combat, Critical)",
                          featType: "General",
                          prerequisites: "Critical Focus, Tiring Critical, base attack bonus +15.",
                          benefit: "When you score a critical hit on a foe, your target immediately becomes exhausted. This feat has no effect on exhausted creatures.",
                          special: "You can only apply the effects of one critical feat to a given critical hit unless you possess the Critical Mastery feat.",
                          summary: "When you score a critical hit on a foe, your target immediately becomes exhausted. This feat has no effect on exhausted creatures.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Exotic Weapon Proficiency (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1.",
                          benefit: "You make attack rolls with the weapon normally.",
                          normal: "A character who uses a weapon with which he is not proficient takes a –4 penalty on attack rolls.",
                          special: "You can gain Exotic Weapon Proficiency multiple times. Each time you take the feat, it applies to a new type of exotic weapon.",
                          summary: "You make attack rolls with the weapon normally.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Extend Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "An extended spell lasts twice as long as normal. A spell with a duration of concentration, instantaneous, or permanent is not affected by this feat. An extended spell uses up a spell slot one level higher than the spell's actual level.",
                          summary: "An extended spell lasts twice as long as normal. A spell with a duration of concentration, instantaneous, or permanent is not affected by this feat.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Extra Ki",
                          featType: "General",
                          prerequisites: "Ki pool class feature.",
                          benefit: "Your ki pool increases by 2.",
                          special: "You can gain Extra Ki multiple times. Its effects stack.",
                          summary: "Your ki pool increases by 2.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Extra Lay on Hands",
                          featType: "General",
                          prerequisites: "Lay on hands class feature.",
                          benefit: "You can use your lay on hands ability two additional times per day.",
                          special: "You can gain Extra Lay On Hands multiple times. Its effects stack.",
                          summary: "You can use your lay on hands ability two additional times per day.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Extra Mercy",
                          featType: "General",
                          prerequisites: "Lay on hands class feature, mercy class feature.",
                          benefit: "Select one additional mercy for which you qualify. When you use lay on hands to heal damage to one target, it also receives the additional effects of this mercy.",
                          special: "You can gain this feat multiple times. Its effects do not stack. Each time you take this feat, select a new mercy.",
                          summary: "Select one additional mercy for which you qualify. When you use lay on hands to heal damage to one target, it also receives the additional effects of this mercy.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Extra Performance",
                          featType: "General",
                          prerequisites: "Bardic performance class feature.",
                          benefit: "You can use bardic performance for 6 additional rounds per day.",
                          special: "You can gain Extra Performance multiple times. Its effects stack.",
                          summary: "You can use bardic performance for 6 additional rounds per day.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Extra Rage",
                          featType: "General",
                          prerequisites: "Rage class feature.",
                          benefit: "You can rage for 6 additional rounds per day.",
                          special: "You can gain Extra Rage multiple times. Its effects stack.",
                          summary: "You can rage for 6 additional rounds per day.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Far Shot (Combat)",
                          featType: "General",
                          prerequisites: "Point-Blank Shot.",
                          benefit: "You only suffer a –1 penalty per full range increment between you and your target when using a ranged weapon.",
                          normal: "You suffer a –2 penalty per full range increment between you and your target.",
                          summary: "You only suffer a –1 penalty per full range increment between you and your target when using a ranged weapon.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Fleet",
                          featType: "General",
                          prerequisites: "Fleet.",
                          benefit: "While you are wearing light or no armor, your base speed increases by 5 feet. You lose the benefits of this feat if you carry a medium or heavy load.",
                          special: "You can take this feat multiple times. The effects stack.",
                          summary: "While you are wearing light or no armor, your base speed increases by 5 feet. You lose the benefits of this feat if you carry a medium or heavy load.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Forge Ring (Item Creation)",
                          featType: "General",
                          prerequisites: "Caster level 7th.",
                          benefit: "You can create magic rings. Crafting a ring takes 1 day for each 1,000 gp in its base price. To craft a ring, you must use up raw materials costing half of the base price. See the magic item creation rules in Magic Items for more information.You can also mend a broken ring if it is one that you could make. Doing so costs half the raw materials and half the time it would take to forge that ring in the first place.",
                          summary: "You can create magic rings. Crafting a ring takes 1 day for each 1,000 gp in its base price. To craft a ring, you must use up raw materials costing half of the base price.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Gorgon's Fist (Combat)",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike, Scorpion Style, base attack bonus +6.",
                          benefit: "As a standard action, make a single unarmed melee attack against a foe whose speed is reduced (such as from Scorpion Style). If the attack hits, you deal damage normally and the target is staggered until the end of your next turn unless it makes a Fortitude saving throw (DC 10 + 1/2 your character level + your Wis modifier). This feat has no effect on targets that are staggered.",
                          summary: "As a standard action, make a single unarmed melee attack against a foe whose speed is reduced (such as from Scorpion Style).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Great Cleave (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Cleave, Power Attack, base attack bonus +4.",
                          benefit: "As a standard action, you can make a single attack at your full base attack bonus against a foe within reach. If you hit, you deal damage normally and can make an additional attack (using your full base attack bonus) against a foe that is adjacent to the previous foe and also within reach. If you hit, you can continue to make attacks against foes adjacent to the previous foe, so long as they are within your reach. You cannot attack an individual foe more than once during this attack action. When you use this feat, you take a –2 penalty to your Armor Class until your next turn.",
                          summary: "As a standard action, you can make a single attack at your full base attack bonus against a foe within reach.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Great Fortitude",
                          featType: "General",
                          prerequisites: "Great Fortitude.",
                          benefit: "You get a +2 bonus on all Fortitude saving throws.",
                          summary: "You get a +2 bonus on all Fortitude saving throws.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Greater Bull Rush (Combat)",
                          featType: "General",
                          prerequisites: "Improved Bull Rush, Power Attack, base attack bonus +6, Str 13.",
                          benefit: "You receive a +2 bonus on checks made to bull rush a foe. This bonus stacks with the bonus granted by Improved Bull Rush. Whenever you bull rush an opponent, his movement provokes attacks of opportunity from all of your allies (but not you).",
                          normal: "Creatures moved by bull rush do not provoke attacks of opportunity.",
                          summary: "You receive a +2 bonus on checks made to bull rush a foe. This bonus stacks with the bonus granted by Improved Bull Rush.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Greater Disarm (Combat)",
                          featType: "General",
                          prerequisites: "Combat Expertise, Improved Disarm, base attack bonus +6, Int 13.",
                          benefit: "You receive a +2 bonus on checks made to disarm a foe. This bonus stacks with the bonus granted by Improved Disarm. Whenever you successfully disarm an opponent, the weapon lands 15 feet away from its previous wielder, in a random direction.",
                          normal: "Disarmed weapons and gear land at the feet of the disarmed creature.",
                          summary: "You receive a +2 bonus on checks made to disarm a foe. This bonus stacks with the bonus granted by Improved Disarm.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Greater Feint (Combat)",
                          featType: "General",
                          prerequisites: "Combat Expertise, Improved Feint, base attack bonus +6, Int 13.",
                          benefit: "Whenever you use feint to cause an opponent to lose his Dexterity bonus, he loses that bonus until the beginning of your next turn, in addition to losing his Dexterity bonus against your next attack.",
                          normal: "A creature you feint loses its Dexterity bonus against your next attack.",
                          summary: "Whenever you use feint to cause an opponent to lose his Dexterity bonus, he loses that bonus until the beginning of your next turn, in addition to losing his Dexterity bonus against your next attack.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Greater Grapple (Combat)",
                          featType: "General",
                          prerequisites: "Improved Grapple, Improved Unarmed Strike, base attack bonus +6, Dex 13.",
                          benefit: "You receive a +2 bonus on checks made to grapple a foe. This bonus stacks with the bonus granted by Improved Grapple. Once you have grappled a creature, maintaining the grapple is a move action. This feat allows you to make two grapple checks each round (to move, harm, or pin your opponent), but you are not required to make two checks. You only need to succeed at one of these checks to maintain the grapple.",
                          normal: "Maintaining a grapple is a standard action.",
                          summary: "You receive a +2 bonus on checks made to grapple a foe. This bonus stacks with the bonus granted by Improved Grapple. Once you have grappled a creature, maintaining the grapple is a move action.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Greater Overrun (Combat)",
                          featType: "General",
                          prerequisites: "Improved Overrun, Power Attack, base attack bonus +6, Str 13.",
                          benefit: "You receive a +2 bonus on checks made to overrun a foe. This bonus stacks with the bonus granted by Improved Overrun. Whenever you overrun opponents, they provoke attacks of opportunity if they are knocked prone by your overrun.",
                          normal: "Creatures knocked prone by your overrun do not provoke an attack of opportunity.",
                          summary: "You receive a +2 bonus on checks made to overrun a foe. This bonus stacks with the bonus granted by Improved Overrun.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Greater Penetrating Strike (Combat)",
                          featType: "General",
                          prerequisites: "Penetrating Strike, Weapon Focus, 16th-level fighter.",
                          benefit: "Your attacks made with weapons selected with Weapon Focus ignore up to 10 points of damage reduction. This amount is reduced to 5 points for damage reduction without a type (such as DR 10/—).",
                          summary: "Your attacks made with weapons selected with Weapon Focus ignore up to 10 points of damage reduction. This amount is reduced to 5 points for damage reduction without a type (such as DR 10/—).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Greater Shield Focus (Combat)",
                          featType: "General",
                          prerequisites: "Shield Focus, Shield Proficiency, base attack bonus +1, 8th-level fighter.",
                          benefit: "Increase the AC bonus granted by any shield you are using by 1. This bonus stacks with the bonus granted by Shield Focus.",
                          summary: "Increase the AC bonus granted by any shield you are using by 1. This bonus stacks with the bonus granted by Shield Focus.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Greater Spell Focus",
                          featType: "General",
                          prerequisites: "Spell Focus.",
                          benefit: "Add +1 to the Difficulty Class for all saving throws against spells from the school of magic you select. This bonus stacks with the bonus from Spell Focus.",
                          special: "You can gain this feat multiple times. Its effects do not stack. Each time you take the feat, it applies to a new school to which you already have applied the Spell Focus feat.",
                          summary: "Add +1 to the Difficulty Class for all saving throws against spells from the school of magic you select. This bonus stacks with the bonus from Spell Focus.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Greater Spell Penetration",
                          featType: "General",
                          prerequisites: "Spell Penetration.",
                          benefit: "You get a +2 bonus on caster level checks (1d20 + caster level) made to overcome a creature's spell resistance. This bonus stacks with the one from Spell Penetration.",
                          summary: "You get a +2 bonus on caster level checks (1d20 + caster level) made to overcome a creature's spell resistance. This bonus stacks with the one from Spell Penetration.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Greater Sunder (Combat)",
                          featType: "General",
                          prerequisites: "Improved Sunder, Power Attack, base attack bonus +6, Str 13.",
                          benefit: "You receive a +2 bonus on checks made to sunder an item. This bonus stacks with the bonus granted by Improved Sunder. Whenever you sunder to destroy a weapon, shield, or suit of armor, any excess damage is applied to the item's wielder. No damage is transferred if you decide to leave the item with 1 hit point.",
                          summary: "You receive a +2 bonus on checks made to sunder an item. This bonus stacks with the bonus granted by Improved Sunder.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Greater Trip (Combat)",
                          featType: "General",
                          prerequisites: "Combat Expertise, Improved Trip, base attack bonus +6, Int 13.",
                          benefit: "You receive a +2 bonus on checks made to trip a foe. This bonus stacks with the bonus granted by Improved Trip. Whenever you successfully trip an opponent, that opponent provokes attacks of opportunity.",
                          normal: "Creatures do not provoke attacks of opportunity from being tripped.",
                          summary: "You receive a +2 bonus on checks made to trip a foe. This bonus stacks with the bonus granted by Improved Trip.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Greater Two-Weapon Fighting (Combat)",
                          featType: "General",
                          prerequisites: "Dex 19, Improved Two-Weapon Fighting, Two-Weapon Fighting, base attack bonus +11.",
                          benefit: "You get a third attack with your off-hand weapon, albeit at a –10 penalty.",
                          summary: "You get a third attack with your off-hand weapon, albeit at a –10 penalty.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Greater Vital Strike (Combat)",
                          featType: "General",
                          prerequisites: "Improved Vital Strike, Vital Strike, base attack bonus +16.",
                          benefit: "When you use the attack action, you can make one attack at your highest base attack bonus that deals additional damage. Roll the weapon's damage dice for the attack four times and add the results together before adding bonuses from Strength, weapon abilities (such as flaming), precision-based damage, and other damage bonuses. These extra weapon damage dice are not multiplied on a critical hit, but are added to the total.",
                          summary: "When you use the attack action, you can make one attack at your highest base attack bonus that deals additional damage.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Greater Weapon Focus (Combat)",
                          featType: "General",
                          prerequisites: "Proficiency with selected weapon, Weapon Focus with selected weapon, base attack bonus +1, 8th-level fighter.",
                          benefit: "You gain a +1 bonus on attack rolls you make using the selected weapon. This bonus stacks with other bonuses on attack rolls, including those from Weapon Focus.",
                          special: "You can gain Greater Weapon Focus multiple times. Its effects do not stack. Each time you take the feat, it applies to a new type of weapon.",
                          summary: "You gain a +1 bonus on attack rolls you make using the selected weapon. This bonus stacks with other bonuses on attack rolls, including those from Weapon Focus.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Greater Weapon Specialization (Combat)",
                          featType: "General",
                          prerequisites: "Proficiency with selected weapon, Greater Weapon Focus with selected weapon, Weapon Focus with selected weapon, Weapon Specialization with selected weapon, 12th-level fighter.",
                          benefit: "You gain a +2 bonus on all damage rolls you make using the selected weapon. This bonus to damage stacks with other damage roll bonuses, including any you gain from Weapon Specialization.",
                          special: "You can gain Greater Weapon Specialization multiple times. Its effects do not stack. Each time you take the feat, it applies to a new type of weapon.",
                          summary: "You gain a +2 bonus on all damage rolls you make using the selected weapon. This bonus to damage stacks with other damage roll bonuses, including any you gain from Weapon Specialization.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Heighten Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "A heightened spell has a higher spell level than normal (up to a maximum of 9th level). Unlike other metamagic feats, Heighten Spell actually increases the effective level of the spell that it modifies. All effects dependent on spell level (such as saving throw DCs and ability to penetrate a lesser globe of invulnerability) are calculated according to the heightened level. The heightened spell is as difficult to prepare and cast as a spell of its effective level.",
                          summary: "A heightened spell has a higher spell level than normal (up to a maximum of 9th level).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Improved Bull Rush (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Power Attack, base attack bonus +1.",
                          benefit: "You do not provoke an attack of opportunity when performing a bull rush combat maneuver. In addition, you receive a +2 bonus on checks made to bull rush a foe. You also receive a +2 bonus to your Combat Maneuver Defense whenever an opponent tries to bull rush you.",
                          normal: "You provoke an attack of opportunity when performing a bull rush combat maneuver.",
                          summary: "You do not provoke an attack of opportunity when performing a bull rush combat maneuver. In addition, you receive a +2 bonus on checks made to bull rush a foe.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Improved Channel",
                          featType: "General",
                          prerequisites: "Channel energy class feature.",
                          benefit: "Add 2 to the DC of saving throws made to resist the effects of your channel energy ability.",
                          summary: "Add 2 to the DC of saving throws made to resist the effects of your channel energy ability.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Improved Counterspell",
                          featType: "General",
                          prerequisites: "Improved Counterspell.",
                          benefit: "When counterspelling, you may use a spell of the same school that is one or more spell levels higher than the target spell.",
                          normal: "Without this feat, you may counter a spell only with the same spell or with a spell specifically designated as countering the target spell.",
                          summary: "When counterspelling, you may use a spell of the same school that is one or more spell levels higher than the target spell.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Improved Critical (Combat)",
                          featType: "General",
                          prerequisites: "Proficient with weapon, base attack bonus +8.",
                          benefit: "When using the weapon you selected, your threat range is doubled.",
                          special: "You can gain Improved Critical multiple times. The effects do not stack. Each time you take the feat, it applies to a new type of weapon. This effect doesn't stack with any other effect that expands the threat range of a weapon.",
                          summary: "When using the weapon you selected, your threat range is doubled.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Improved Disarm (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise.",
                          benefit: "You do not provoke an attack of opportunity when performing a disarm combat maneuver. In addition, you receive a +2 bonus on checks made to disarm a foe. You also receive a +2 bonus to your Combat Maneuver Defense whenever an opponent tries to disarm you.",
                          normal: "You provoke an attack of opportunity when performing a disarm combat maneuver.",
                          summary: "You do not provoke an attack of opportunity when performing a disarm combat maneuver. In addition, you receive a +2 bonus on checks made to disarm a foe.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Improved Familiar",
                          featType: "General",
                          prerequisites: "Ability to acquire a new familiar, compatible alignment, sufficiently high level (see below).",
                          benefit: "When choosing a familiar, the creatures listed below are also available to you. You may choose a familiar with an alignment up to one step away on each alignment axis (lawful through chaotic, good through evil).You can find the full list of available Improved Familiars here.Improved familiars otherwise use the rules for regular familiars, with two exceptions: if the creature's type is something other than animal, its type does not change; and improved familiars do not gain the ability to speak with other creatures of their kind (although many of them already have the ability to communicate).",
                          summary: "When choosing a familiar, the creatures listed below are also available to you.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Improved Feint (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise.",
                          benefit: "You can make a Bluff check to feint in combat as a move action.",
                          normal: "Feinting in combat is a standard action.",
                          summary: "You can make a Bluff check to feint in combat as a move action.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Improved Grapple (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Improved Unarmed Strike.",
                          benefit: "You do not provoke an attack of opportunity when performing a grapple combat maneuver. In addition, you receive a +2 bonus on checks made to grapple a foe. You also receive a +2 bonus to your Combat Maneuver Defense whenever an opponent tries to grapple you.",
                          normal: "You provoke an attack of opportunity when performing a grapple combat maneuver.",
                          summary: "You do not provoke an attack of opportunity when performing a grapple combat maneuver. In addition, you receive a +2 bonus on checks made to grapple a foe.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Improved Great Fortitude",
                          featType: "General",
                          prerequisites: "Great Fortitude.",
                          benefit: "Once per day, you may reroll a Fortitude save. You must decide to use this ability before the results are revealed. You must take the second roll, even if it is worse.",
                          summary: "Once per day, you may reroll a Fortitude save. You must decide to use this ability before the results are revealed. You must take the second roll, even if it is worse.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Improved Initiative (Combat)",
                          featType: "General",
                          prerequisites: "Improved Initiative.",
                          benefit: "You get a +4 bonus on initiative checks.",
                          summary: "You get a +4 bonus on initiative checks.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Improved Iron Will",
                          featType: "General",
                          prerequisites: "Iron Will.",
                          benefit: "Once per day, you may reroll a Will save. You must decide to use this ability before the results are revealed. You must take the second roll, even if it is worse.",
                          summary: "Once per day, you may reroll a Will save. You must decide to use this ability before the results are revealed. You must take the second roll, even if it is worse.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Improved Lightning Reflexes",
                          featType: "General",
                          prerequisites: "Lightning Reflexes.",
                          benefit: "Once per day, you may reroll a Reflex save. You must decide to use this ability before the results are revealed. You must take the second roll, even if it is worse.",
                          summary: "Once per day, you may reroll a Reflex save. You must decide to use this ability before the results are revealed. You must take the second roll, even if it is worse.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Improved Overrun (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Power Attack, base attack bonus +1.",
                          benefit: "You do not provoke an attack of opportunity when performing an overrun combat maneuver. In addition, you receive a +2 bonus on checks made to overrrun a foe. You also receive a +2 bonus to your Combat Maneuver Defense whenever an opponent tries to overrun you. Targets of your overrun attempt may not chose to avoid you.",
                          normal: "You provoke an attack of opportunity when performing an overrun combat maneuver.",
                          summary: "You do not provoke an attack of opportunity when performing an overrun combat maneuver. In addition, you receive a +2 bonus on checks made to overrrun a foe.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Improved Precise Shot (Combat)",
                          featType: "General",
                          prerequisites: "Dex 19, Point-Blank Shot, Precise Shot, base attack bonus +11.",
                          benefit: "Your ranged attacks ignore the AC bonus granted to targets by anything less than total cover, and the miss chance granted to targets by anything less than total concealment. Total cover and total concealment provide their normal benefits against your ranged attacks.",
                          normal: "See the normal rules on the effects of cover and concealment in Combat.",
                          summary: "Your ranged attacks ignore the AC bonus granted to targets by anything less than total cover, and the miss chance granted to targets by anything less than total concealment.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Improved Shield Bash (Combat)",
                          featType: "General",
                          prerequisites: "Shield Proficiency.",
                          benefit: "When you perform a shield bash, you may still apply the shield's shield bonus to your AC.",
                          normal: "Without this feat, a character that performs a shield bash loses the shield's shield bonus to AC until his next turn (see Equipment).",
                          summary: "When you perform a shield bash, you may still apply the shield's shield bonus to your AC.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Improved Sunder (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Power Attack, base attack bonus +1.",
                          benefit: "You do not provoke an attack of opportunity when performing a sunder combat maneuver. In addition, you receive a +2 bonus on checks made to sunder an item. You also receive a +2 bonus to your Combat Maneuver Defense whenever an opponent tries to sunder your gear.",
                          normal: "You provoke an attack of opportunity when performing a sunder combat maneuver.",
                          summary: "You do not provoke an attack of opportunity when performing a sunder combat maneuver. In addition, you receive a +2 bonus on checks made to sunder an item.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Improved Trip (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise.",
                          benefit: "You do not provoke an attack of opportunity when performing a trip combat maneuver. In addition, you receive a +2 bonus on checks made to trip a foe. You also receive a +2 bonus to your Combat Maneuver Defense whenever an opponent tries to trip you.",
                          normal: "You provoke an attack of opportunity when performing a trip combat maneuver.",
                          summary: "You do not provoke an attack of opportunity when performing a trip combat maneuver. In addition, you receive a +2 bonus on checks made to trip a foe.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Improved Two-Weapon Fighting (Combat)",
                          featType: "General",
                          prerequisites: "Dex 17, Two-Weapon Fighting, base attack bonus +6.",
                          benefit: "In addition to the standard single extra attack you get with an off-hand weapon, you get a second attack with it, albeit at a –5 penalty.",
                          normal: "Without this feat, you can only get a single extra attack with an off-hand weapon.",
                          summary: "In addition to the standard single extra attack you get with an off-hand weapon, you get a second attack with it, albeit at a –5 penalty.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Improved Unarmed Strike (Combat)",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike.",
                          benefit: "You are considered to be armed even when unarmed—you do not provoke attacks of opportunity when you attack foes while unarmed. Your unarmed strikes can deal lethal or nonlethal damage, at your choice.",
                          normal: "Without this feat, you are considered unarmed when attacking with an unarmed strike, and you can deal only nonlethal damage with such an attack.",
                          summary: "You are considered to be armed even when unarmed—you do not provoke attacks of opportunity when you attack foes while unarmed. Your unarmed strikes can deal lethal or nonlethal damage, at your choice.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Improved Vital Strike (Combat)",
                          featType: "General",
                          prerequisites: "Vital Strike, base attack bonus +11.",
                          benefit: "When you use the attack action, you can make one attack at your highest base attack bonus that deals additional damage. Roll the weapon's damage dice for the attack three times and add the results together before adding bonuses from Strength, weapon abilities (such as flaming), precision-based damage, and other damage bonuses. These extra weapon damage dice are not multiplied on a critical hit, but are added to the total.",
                          summary: "When you use the attack action, you can make one attack at your highest base attack bonus that deals additional damage.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Improvised Weapon Mastery (Combat)",
                          featType: "General",
                          prerequisites: "Catch Off-Guard or Throw Anything, base attack bonus +8.",
                          benefit: "You do not suffer any penalties for using an improvised weapon. Increase the amount of damage dealt by the improvised weapon by one step (for example, 1d4 becomes 1d6) to a maximum of 1d8 (2d6 if the improvised weapon is two-handed). The improvised weapon has a critical threat range of 19–20, with a critical multiplier of ×2.",
                          summary: "You do not suffer any penalties for using an improvised weapon.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Intimidating Prowess (Combat)",
                          featType: "General",
                          prerequisites: "Intimidating Prowess.",
                          benefit: "Add your Strength modifier to Intimidate skill checks in addition to your Charisma modifier.",
                          summary: "Add your Strength modifier to Intimidate skill checks in addition to your Charisma modifier.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Iron Will",
                          featType: "General",
                          prerequisites: "Iron Will.",
                          benefit: "You get a +2 bonus on all Will saving throws.",
                          summary: "You get a +2 bonus on all Will saving throws.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Leadership",
                          featType: "General",
                          prerequisites: "Character level 7th.",
                          benefit: "This feat enables you to attract a loyal cohort and a number of devoted subordinates who assist you. A cohort is generally an NPC with class levels, while followers are typically lower level NPCs. See Table: Leadership for what level of cohort and how many followers you can recruit.Leadership Score Cohort Level Number of Followers by Level 1st 2nd 3rd 4th 5th 6th 1 or lower — — — — — — — 2 1st — — — — — — 3 2nd — — — — — — 4 3rd — — — — — — 5 3rd — — — — — — 6 4th — — — — — — 7 5th — — — — — — 8 5th — — — — — — 9 6th — — — — — — 10 7th 5 — — — — — 11 7th 6 — — — — — 12 8th 8 — — — — — 13 9th 10 1 — — — — 14 10th 15 1 — — — — 15 10th 20 2 1 — — — 16 11th 25 2 1 — — — 17 12th 30 3 1 1 — — 18 12th 35 3 1 1 — — 19 13th 40 4 2 1 1 — 20 14th 50 5 3 2 1 — 21 15th 60 6 3 2 1 1 22 15th 75 7 4 2 2 1 23 16th 90 9 5 3 2 1 24 17th 110 11 6 3 2 1 25 or higher 17th 135 13 7 4 2 2Leadership Modifiers: Several factors can affect your Leadership score, causing it to vary from the base score (character level + Cha modifier). Your reputation (from the point of view of the cohort or follower you are trying to attract) raises or lowers your Leadership score:Leader's Reputation Modifier Great renown +2 Fairness and generosity +1 Special power +1 Failure -1 Aloofness -1 Cruelty -2Other modifiers may apply when you try to attract a cohort, as listed below.The Leader... Modifier Has a familiar, special mount, or animal companion -2 Recruits a cohort of a different alignment -1 Caused the death of a cohort -2* *Cumulative per cohort killed.Followers have different priorities from cohorts. When you try to attract a follower, use the following modifiers.The Leader... Modifier Has a stronghold, base of operations, guildhouse, etc. +2 Moves around a lot -1 Caused the death of other followers -1Leadership Score: Your base Leadership score equals your level plus your Charisma modifier. In order to take into account negative Charisma modifiers, this table allows for very low Leadership scores, but you must still be 7th level or higher in order to gain the Leadership feat. Outside factors can affect your Leadership score, as detailed above.Cohort Level: You can attract a cohort of up to this level. Regardless of your Leadership score, you can only recruit a cohort who is two or more levels lower than yourself. The cohort should be equipped with gear appropriate for its level (see Creating NPCs). A cohort can be of any race or class. The cohort's alignment may not be opposed to your alignment on either the law/chaos or good/evil axis, and you take a –1 penalty to your Leadership score if you recruit a cohort of an alignment different from your own.A cohort does not count as a party member when determining the party's XP. Instead, divide the cohort's level by your level. Multiply this result by the total XP awarded to you, then add that number of experience points to the cohort's total.If a cohort gains enough XP to bring it to a level one lower than your level, the cohort does not gain the new level—its new XP total is 1 less than the amount needed to attain the next level. Number of Followers by Level: You can lead up to the indicated number of characters of each level. Followers are similar to cohorts, except they're generally low-level NPCs. Because they're usually 5 or more levels behind you, they're rarely effective in combat.Followers don't earn experience and thus don't gain levels. When you gain a new level, consult Table: Leadership to determine if you acquire more followers, some of whom may be higher level than the existing followers. Don't consult the table to see if your cohort gains levels, however, because cohorts earn experience on their own.",
                          summary: "This feat enables you to attract a loyal cohort and a number of devoted subordinates who assist you. A cohort is generally an NPC with class levels, while followers are typically lower level NPCs.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Lightning Reflexes",
                          featType: "General",
                          prerequisites: "Lightning Reflexes.",
                          benefit: "You get a +2 bonus on all Reflex saving throws.",
                          summary: "You get a +2 bonus on all Reflex saving throws.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Lightning Stance (Combat)",
                          featType: "General",
                          prerequisites: "Dex 17, Dodge, Wind Stance, base attack bonus +11.",
                          benefit: "If you take two actions to move or a withdraw action in a turn, you gain 50% concealment for 1 round.",
                          summary: "If you take two actions to move or a withdraw action in a turn, you gain 50% concealment for 1 round.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Lunge (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +6.",
                          benefit: "You can increase the reach of your melee attacks by 5 feet until the end of your turn by taking a –2 penalty to your AC until your next turn. You must decide to use this ability before any attacks are made.",
                          summary: "You can increase the reach of your melee attacks by 5 feet until the end of your turn by taking a –2 penalty to your AC until your next turn.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Magical Aptitude",
                          featType: "General",
                          prerequisites: "Magical Aptitude.",
                          benefit: "You get a +2 bonus on all Spellcraft checks and Use Magic Device checks. If you have 10 or more ranks in one of these skills, the bonus increases to +4 for that skill.",
                          summary: "You get a +2 bonus on all Spellcraft checks and Use Magic Device checks. If you have 10 or more ranks in one of these skills, the bonus increases to +4 for that skill.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Manyshot (Combat)",
                          featType: "General",
                          prerequisites: "Dex 17, Point-Blank Shot, Rapid Shot, base attack bonus +6.",
                          benefit: "When making a full-attack action with a bow, your first attack fires two arrows. If the attack hits, both arrows hit. Apply precision-based damage (such as sneak attack) and critical hit damage only once for this attack. Damage bonuses from using a composite bow with a high Strength bonus apply to each arrow, as do other damage bonuses, such as a ranger's favored enemy bonus. Damage reduction and resistances apply separately to each arrow.",
                          summary: "When making a full-attack action with a bow, your first attack fires two arrows. If the attack hits, both arrows hit.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Martial Weapon Proficiency (Combat)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You make attack rolls with the selected weapon normally (without the non-proficient penalty).",
                          normal: "When using a weapon with which you are not proficient, you take a –4 penalty on attack rolls.",
                          special: "Barbarians, fighters, paladins, and rangers are proficient with all martial weapons. They need not select this feat. You can gain Martial Weapon Proficiency multiple times. Each time you take the feat, it applies to a new type of weapon.",
                          summary: "You make attack rolls with the selected weapon normally (without the non-proficient penalty).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Master Craftsman",
                          featType: "General",
                          prerequisites: "5 ranks in any Craft or Profession skill.",
                          benefit: "Choose one Craft or Profession skill in which you possess at least 5 ranks. You receive a +2 bonus on your chosen Craft or Profession skill. Ranks in your chosen skill count as your caster level for the purposes of qualifying for the Craft Magic Arms and Armor and Craft Wondrous Item feats. You can create magic items using these feats, substituting your ranks in the chosen skill for your total caster level. You must use the chosen skill for the check to create the item. The DC to create the item still increases for any necessary spell requirements (see the magic item creation rules in Magic Items). You cannot use this feat to create any spell-trigger or spell-activation item.",
                          normal: "Only spellcasters can qualify for the Craft Magic Arms and Armor and Craft Wondrous Item feats.",
                          summary: "Choose one Craft or Profession skill in which you possess at least 5 ranks. You receive a +2 bonus on your chosen Craft or Profession skill.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Maximize Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "All variable, numeric effects of a spell modified by this feat are maximized. Saving throws and opposed rolls are not affected, nor are spells without random variables. A maximized spell uses up a spell slot three levels higher than the spell's actual level.An empowered, maximized spell gains the separate benefits of each feat: the maximum result plus half the normally rolled result.",
                          summary: "All variable, numeric effects of a spell modified by this feat are maximized. Saving throws and opposed rolls are not affected, nor are spells without random variables.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Medusa's Wrath (Combat)",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike, Gorgon's Fist, Scorpion Style, base attack bonus +11.",
                          benefit: "Whenever you use the full-attack action and make at least one unarmed strike, you can make two additional unarmed strikes at your highest base attack bonus. These bonus attacks must be made against a dazed, flat-footed, paralyzed, staggered, stunned, or unconscious foe.",
                          summary: "Whenever you use the full-attack action and make at least one unarmed strike, you can make two additional unarmed strikes at your highest base attack bonus.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Mobility (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Dodge.",
                          benefit: "You get a +4 dodge bonus to Armor Class against attacks of opportunity caused when you move out of or within a threatened area. A condition that makes you lose your Dexterity bonus to Armor Class (if any) also makes you lose dodge bonuses. Dodge bonuses stack with each other, unlike most types of bonuses.",
                          summary: "You get a +4 dodge bonus to Armor Class against attacks of opportunity caused when you move out of or within a threatened area.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Mounted Archery (Combat)",
                          featType: "General",
                          prerequisites: "Ride 1 rank, Mounted Combat.",
                          benefit: "The penalty you take when using a ranged weapon while mounted is halved: –2 instead of –4 if your mount is taking a double move, and –4 instead of –8 if your mount is running.",
                          summary: "The penalty you take when using a ranged weapon while mounted is halved: –2 instead of –4 if your mount is taking a double move, and –4 instead of –8 if your mount is running.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Mounted Combat (Combat)",
                          featType: "General",
                          prerequisites: "Ride 1 rank.",
                          benefit: "Once per round when your mount is hit in combat, you may attempt a Ride check (as an immediate action) to negate the hit. The hit is negated if your Ride check result is greater than the opponent's attack roll.",
                          summary: "Once per round when your mount is hit in combat, you may attempt a Ride check (as an immediate action) to negate the hit.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Natural Spell",
                          featType: "General",
                          prerequisites: "Wis 13, wild shape class feature.",
                          benefit: "You can complete the verbal and somatic components of spells while using wild shape. You substitute various noises and gestures for the normal verbal and somatic components of a spell. You can also use any material components or focuses you possess, even if such items are melded within your current form. This feat does not permit the use of magic items while you are in a form that could not ordinarily use them, and you do not gain the ability to speak while using wild shape.",
                          summary: "You can complete the verbal and somatic components of spells while using wild shape. You substitute various noises and gestures for the normal verbal and somatic components of a spell.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Nimble Moves",
                          featType: "General",
                          prerequisites: "Dex 13.",
                          benefit: "Whenever you move, you may move through 5 feet of difficult terrain each round as if it were normal terrain. This feat allows you to take a 5-foot step into difficult terrain.",
                          summary: "Whenever you move, you may move through 5 feet of difficult terrain each round as if it were normal terrain. This feat allows you to take a 5-foot step into difficult terrain.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Penetrating Strike (Combat)",
                          featType: "General",
                          prerequisites: "Weapon Focus, base attack bonus +1, 12th-level fighter, proficiency with weapon.",
                          benefit: "Your attacks made with weapons selected with Weapon Focus ignore up to 5 points of damage reduction. This feat does not apply to damage reduction without a type (such as DR 10/—).",
                          summary: "Your attacks made with weapons selected with Weapon Focus ignore up to 5 points of damage reduction. This feat does not apply to damage reduction without a type (such as DR 10/—).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Persuasive",
                          featType: "General",
                          prerequisites: "Persuasive.",
                          benefit: "You get a +2 bonus on Diplomacy and Intimidate skill checks. If you have 10 or more ranks in one of these skills, the bonus increases to +4 for that skill.",
                          summary: "You get a +2 bonus on Diplomacy and Intimidate skill checks. If you have 10 or more ranks in one of these skills, the bonus increases to +4 for that skill.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Pinpoint Targeting (Combat)",
                          featType: "General",
                          prerequisites: "Dex 19, Improved Precise Shot, Point-Blank Shot, Precise Shot, base attack bonus +16.",
                          benefit: "As a standard action, make a single ranged attack. The target does not gain any armor, natural armor, or shield bonuses to its Armor Class. You do not gain the benefit of this feat if you move this round.",
                          summary: "As a standard action, make a single ranged attack. The target does not gain any armor, natural armor, or shield bonuses to its Armor Class.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Point-Blank Shot (Combat)",
                          featType: "General",
                          prerequisites: "Point-Blank Shot.",
                          benefit: "You get a +1 bonus on attack and damage rolls with ranged weapons at ranges of up to 30 feet.",
                          summary: "You get a +1 bonus on attack and damage rolls with ranged weapons at ranges of up to 30 feet.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Power Attack (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, base attack bonus +1.",
                          benefit: "You can choose to take a –1 penalty on all melee attack rolls and combat maneuver checks to gain a +2 bonus on all melee damage rolls. This bonus to damage is increased by half (+50%) if you are making an attack with a two-handed weapon, a one handed weapon using two hands, or a primary natural weapon that adds 1-1/2 times your Strength modifier on damage rolls. This bonus to damage is halved (–50%) if you are making an attack with an off-hand weapon or secondary natural weapon. When your base attack bonus reaches +4, and every 4 points thereafter, the penalty increases by –1 and the bonus to damage increases by +2. You must choose to use this feat before making an attack roll, and its effects last until your next turn. The bonus damage does not apply to touch attacks or effects that do not deal hit point damage.",
                          summary: "You can choose to take a –1 penalty on all melee attack rolls and combat maneuver checks to gain a +2 bonus on all melee damage rolls.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Precise Shot (Combat)",
                          featType: "General",
                          prerequisites: "Point-Blank Shot.",
                          benefit: "You can shoot or throw ranged weapons at an opponent engaged in melee without taking the standard –4 penalty on your attack roll.",
                          summary: "You can shoot or throw ranged weapons at an opponent engaged in melee without taking the standard –4 penalty on your attack roll.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Quick Draw (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1.",
                          benefit: "You can draw a weapon as a free action instead of as a move action. You can draw a hidden weapon (see the Sleight of Hand skill) as a move action. A character who has selected this feat may throw weapons at his full normal rate of attacks (much like a character with a bow). Alchemical items, potions, scrolls, and wands cannot be drawn quickly using this feat.",
                          normal: "Without this feat, you may draw a weapon as a move action, or (if your base attack bonus is +1 or higher) as a free action as part of movement. Without this feat, you can draw a hidden weapon as a standard action.",
                          summary: "You can draw a weapon as a free action instead of as a move action. You can draw a hidden weapon (see the Sleight of Hand skill) as a move action.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Quicken Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Casting a quickened spell is a swift action. You can perform another action, even casting another spell, in the same round as you cast a quickened spell. A spell whose casting time is more than 1 round or 1 full-round action cannot be quickened.A quickened spell uses up a spell slot four levels higher than the spell's actual level. Casting a quickened spell doesn't provoke an attack of opportunity.",
                          special: "You can apply the effects of this feat to a spell cast spontaneously, so long as it has a casting time that is not more than 1 full-round action, without increasing the spell's casting time.",
                          summary: "Casting a quickened spell is a swift action. You can perform another action, even casting another spell, in the same round as you cast a quickened spell.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Rapid Shot (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Point-Blank Shot.",
                          benefit: "When making a full-attack action with a ranged weapon, you can fire one additional time this round at your highest bonus. All of your attack rolls take a –2 penalty when using Rapid Shot.",
                          summary: "When making a full-attack action with a ranged weapon, you can fire one additional time this round at your highest bonus. All of your attack rolls take a –2 penalty when using Rapid Shot.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Ride-By Attack (Combat)",
                          featType: "General",
                          prerequisites: "Ride 1 rank, Mounted Combat.",
                          benefit: "When you are mounted and use the charge action, you may move and attack as if with a standard charge and then move again (continuing the straight line of the charge). Your total movement for the round can't exceed double your mounted speed. You and your mount do not provoke an attack of opportunity from the opponent that you attack.",
                          summary: "When you are mounted and use the charge action, you may move and attack as if with a standard charge and then move again (continuing the straight line of the charge).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Run",
                          featType: "General",
                          prerequisites: "Run.",
                          benefit: "When running, you move five times your normal speed (if wearing medium, light, or no armor and carrying no more than a medium load) or four times your speed (if wearing heavy armor or carrying a heavy load). If you make a jump after a running start (see the Acrobatics skill description), you gain a +4 bonus on your Acrobatics check. While running, you retain your Dexterity bonus to your Armor Class.",
                          normal: "You move four times your speed while running (if wearing medium, light, or no armor and carrying no more than a medium load) or three times your speed (if wearing heavy armor or carrying a heavy load), and you lose your Dexterity bonus to AC.",
                          summary: "When running, you move five times your normal speed (if wearing medium, light, or no armor and carrying no more than a medium load) or four times your speed (if wearing heavy armor or carrying a…",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Scorpion Style (Combat)",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike.",
                          benefit: "To use this feat, you must make a single unarmed attack as a standard action. If this unarmed attack hits, you deal damage normally, and the target's base land speed is reduced to 5 feet for a number of rounds equal to your Wisdom modifier unless it makes a Fortitude saving throw (DC 10 + 1/2 your character level + your Wis modifier).",
                          summary: "To use this feat, you must make a single unarmed attack as a standard action.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Scribe Scroll (Item Creation)",
                          featType: "General",
                          prerequisites: "Caster level 1st.",
                          benefit: "You can create a scroll of any spell that you know. Scribing a scroll takes 2 hours if its base price is 250 gp or less, otherwise scribing a scroll takes 1 day for each 1,000 gp in its base price. To scribe a scroll, you must use up raw materials costing half of this base price. See the magic item creation rules in Magic Items for more information.",
                          summary: "You can create a scroll of any spell that you know. Scribing a scroll takes 2 hours if its base price is 250 gp or less, otherwise scribing a scroll takes 1 day for each 1,000 gp in its base price.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Selective Channeling",
                          featType: "General",
                          prerequisites: "Cha 13, channel energy class feature.",
                          benefit: "When you channel energy, you can choose a number of targets in the area up to your Charisma modifier. These targets are not affected by your channeled energy.",
                          normal: "All targets in a 30-foot burst are affected when you channel energy. You can only choose whether or not you are affected.",
                          summary: "When you channel energy, you can choose a number of targets in the area up to your Charisma modifier. These targets are not affected by your channeled energy.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Self-Sufficient",
                          featType: "General",
                          prerequisites: "Self-Sufficient.",
                          benefit: "You get a +2 bonus on all Heal checks and Survival checks. If you have 10 or more ranks in one of these skills, the bonus increases to +4 for that skill.",
                          summary: "You get a +2 bonus on all Heal checks and Survival checks. If you have 10 or more ranks in one of these skills, the bonus increases to +4 for that skill.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Shatter Defenses (Combat)",
                          featType: "General",
                          prerequisites: "Weapon Focus, Dazzling Display, base attack bonus +6, proficiency with weapon.",
                          benefit: "Any shaken, frightened, or panicked opponent hit by you this round is flat-footed to your attacks until the end of your next turn. This includes any additional attacks you make this round.",
                          summary: "Any shaken, frightened, or panicked opponent hit by you this round is flat-footed to your attacks until the end of your next turn. This includes any additional attacks you make this round.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Shield Focus (Combat)",
                          featType: "General",
                          prerequisites: "Shield Proficiency, base attack bonus +1.",
                          benefit: "Increase the AC bonus granted by any shield you are using by 1.",
                          summary: "Increase the AC bonus granted by any shield you are using by 1.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Shield Master (Combat)",
                          featType: "General",
                          prerequisites: "Improved Shield Bash, Shield Proficiency, Shield Slam, Two-Weapon Fighting, base attack bonus +11.",
                          benefit: "You do not suffer any penalties on attack rolls made with a shield while you are wielding another weapon. Add your shield's enhancement bonus to attack and damage rolls made with the shield as if it was a weapon enhancement bonus.",
                          summary: "You do not suffer any penalties on attack rolls made with a shield while you are wielding another weapon.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Shield Proficiency (Combat)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When you use a shield (except a tower shield), the shield's armor check penalty only applies to Strength- and Dexterity-based skills.",
                          normal: "When you are using a shield with which you are not proficient, you take the shield's armor check penalty on attack rolls and on all skill checks that involve moving.",
                          special: "Barbarians, bards, clerics, druids, fighters, paladins, and rangers all automatically have Shield Proficiency as a bonus feat. They need not select it.",
                          summary: "When you use a shield (except a tower shield), the shield's armor check penalty only applies to Strength- and Dexterity-based skills.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Shield Slam (Combat)",
                          featType: "General",
                          prerequisites: "Improved Shield Bash, Shield Proficiency, Two-Weapon Fighting, base attack bonus +6.",
                          benefit: "Any opponents hit by your shield bash are also hit with a free bull rush attack, substituting your attack roll for the combat maneuver check (see Combat). This bull rush does not provoke an attack of opportunity. Opponents who cannot move back due to a wall or other surface are knocked prone after moving the maximum possible distance. You may choose to move with your target if you are able to take a 5-foot step or to spend an action to move this turn.",
                          summary: "Any opponents hit by your shield bash are also hit with a free bull rush attack, substituting your attack roll for the combat maneuver check (see Combat).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Shot on the Run (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Dodge, Mobility, Point-Blank Shot, base attack bonus +4.",
                          benefit: "As a full-round action, you can move up to your speed and make a single ranged attack at any point during your movement.",
                          normal: "You cannot move before and after an attack with a ranged weapon.",
                          summary: "As a full-round action, you can move up to your speed and make a single ranged attack at any point during your movement.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Sickening Critical (Combat, Critical)",
                          featType: "General",
                          prerequisites: "Critical Focus, base attack bonus +11.",
                          benefit: "Whenever you score a critical hit, your opponent becomes sickened for 1 minute. The effects of this feat do not stack. Additional hits instead add to the effect's duration.",
                          special: "You can only apply the effects of one critical feat to a given critical hit unless you possess Critical Mastery.",
                          summary: "Whenever you score a critical hit, your opponent becomes sickened for 1 minute. The effects of this feat do not stack. Additional hits instead add to the effect's duration.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Silent Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "A silent spell can be cast with no verbal components. Spells without verbal components are not affected. A silent spell uses up a spell slot one level higher than the spell's actual level.",
                          special: "Bard spells cannot be enhanced by this feat.",
                          summary: "A silent spell can be cast with no verbal components. Spells without verbal components are not affected. A silent spell uses up a spell slot one level higher than the spell's actual level.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Simple Weapon Proficiency (Combat)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You make attack rolls with simple weapons without penalty.",
                          normal: "When using a weapon with which you are not proficient, you take a –4 penalty on attack rolls.",
                          special: "All characters except for druids, monks, and wizards are automatically proficient with all simple weapons. They need not select this feat.",
                          summary: "You make attack rolls with simple weapons without penalty.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Skill Focus",
                          featType: "General",
                          prerequisites: "Skill Focus.",
                          benefit: "You get a +3 bonus on all checks involving the chosen skill. If you have 10 or more ranks in that skill, this bonus increases to +6.",
                          special: "You can gain this feat multiple times. Its effects do not stack. Each time you take the feat, it applies to a new skill.",
                          summary: "You get a +3 bonus on all checks involving the chosen skill. If you have 10 or more ranks in that skill, this bonus increases to +6.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Snatch Arrows (Combat)",
                          featType: "General",
                          prerequisites: "Dex 15, Deflect Arrows, Improved Unarmed Strike.",
                          benefit: "When using the Deflect Arrows feat you may choose to catch the weapon instead of just deflecting it. Thrown weapons can immediately be thrown back as an attack against the original attacker (even though it isn't your turn) or kept for later use.You must have at least one hand free (holding nothing) to use this feat.",
                          summary: "When using the Deflect Arrows feat you may choose to catch the weapon instead of just deflecting it.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Spell Focus",
                          featType: "General",
                          prerequisites: "Spell Focus.",
                          benefit: "Add +1 to the Difficulty Class for all saving throws against spells from the school of magic you select.",
                          special: "You can gain this feat multiple times. Its effects do not stack. Each time you take the feat, it applies to a new school of magic.",
                          summary: "Add +1 to the Difficulty Class for all saving throws against spells from the school of magic you select.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Spell Mastery",
                          featType: "General",
                          prerequisites: "1st-level wizard",
                          benefit: "Each time you take this feat, choose a number of spells that you already know equal to your Intelligence modifier. From that point on, you can prepare these spells without referring to a spellbook.",
                          normal: "Without this feat, you must use a spellbook to prepare all your spells, except read magic.",
                          summary: "Each time you take this feat, choose a number of spells that you already know equal to your Intelligence modifier. From that point on, you can prepare these spells without referring to a spellbook.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Spell Penetration",
                          featType: "General",
                          prerequisites: "Spell Penetration.",
                          benefit: "You get a +2 bonus on caster level checks (1d20 + caster level) made to overcome a creature's spell resistance.",
                          summary: "You get a +2 bonus on caster level checks (1d20 + caster level) made to overcome a creature's spell resistance.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Spellbreaker (Combat)",
                          featType: "General",
                          prerequisites: "Disruptive, 10th-level fighter.",
                          benefit: "Enemies in your threatened area that fail their checks to cast spells defensively provoke attacks of opportunity from you.",
                          normal: "Enemies that fail to cast spells defensively do not provoke attacks of opportunity.",
                          summary: "Enemies in your threatened area that fail their checks to cast spells defensively provoke attacks of opportunity from you.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Spirited Charge (Combat)",
                          featType: "General",
                          prerequisites: "Ride 1 rank, Mounted Combat, Ride-By Attack.",
                          benefit: "When mounted and using the charge action, you deal double damage with a melee weapon (or triple damage with a lance).",
                          summary: "When mounted and using the charge action, you deal double damage with a melee weapon (or triple damage with a lance).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Spring Attack (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Dodge, Mobility, base attack bonus +4.",
                          benefit: "As a full-round action, you can move up to your speed and make a single melee attack without provoking any attacks of opportunity from the target of your attack. You can move both before and after the attack, but you must move at least 10 feet before the attack and the total distance that you move cannot be greater than your speed. You cannot use this ability to attack a foe that is adjacent to you at the start of your turn.",
                          normal: "You cannot move before and after an attack.",
                          summary: "As a full-round action, you can move up to your speed and make a single melee attack without provoking any attacks of opportunity from the target of your attack.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Staggering Critical (Combat, Critical)",
                          featType: "General",
                          prerequisites: "Critical Focus, base attack bonus +13.",
                          benefit: "Whenever you score a critical hit, your opponent becomes staggered for 1d4+1 rounds. A successful Fortitude save reduces the duration to 1 round. The DC of this Fortitude save is equal to 10 + your base attack bonus. The effects of this feat do not stack. Additional hits instead add to the duration.",
                          special: "You can only apply the effects of one critical feat to a given critical hit unless you possess Critical Mastery.",
                          summary: "Whenever you score a critical hit, your opponent becomes staggered for 1d4+1 rounds. A successful Fortitude save reduces the duration to 1 round.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Stand Still (Combat)",
                          featType: "General",
                          prerequisites: "Combat Reflexes.",
                          benefit: "When a foe provokes an attack of opportunity due to moving through your adjacent squares, you can make a combat maneuver check as your attack of opportunity. If successful, the enemy cannot move for the rest of his turn. An enemy can still take the rest of his action, but cannot move. This feat also applies to any creature that attempts to move from a square that is adjacent to you if such movement provokes an attack of opportunity.",
                          summary: "When a foe provokes an attack of opportunity due to moving through your adjacent squares, you can make a combat maneuver check as your attack of opportunity.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Stealthy",
                          featType: "General",
                          prerequisites: "Stealthy.",
                          benefit: "You get a +2 bonus on all Escape Artist and Stealth skill checks. If you have 10 or more ranks in one of these skills, the bonus increases to +4 for that skill.",
                          summary: "You get a +2 bonus on all Escape Artist and Stealth skill checks. If you have 10 or more ranks in one of these skills, the bonus increases to +4 for that skill.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Step Up (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1.",
                          benefit: "Whenever an adjacent foe attempts to take a 5-foot step away from you, you may also make a 5-foot step as an immediate action so long as you end up adjacent to the foe that triggered this ability. If you take this step, you cannot take a 5-foot step during your next turn. If you take an action to move during your next turn, subtract 5 feet from your total movement.",
                          summary: "Whenever an adjacent foe attempts to take a 5-foot step away from you, you may also make a 5-foot step as an immediate action so long as you end up adjacent to the foe that triggered this ability.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Still Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "A stilled spell can be cast with no somatic components. Spells without somatic components are not affected. A stilled spell uses up a spell slot one level higher than the spell's actual level.",
                          summary: "A stilled spell can be cast with no somatic components. Spells without somatic components are not affected. A stilled spell uses up a spell slot one level higher than the spell's actual level.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Strike Back (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +11.",
                          benefit: "You can ready an action to make a melee attack against any foe that attacks you in melee, even if the foe is outside of your reach.",
                          summary: "You can ready an action to make a melee attack against any foe that attacks you in melee, even if the foe is outside of your reach.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Stunning Critical (Combat, Critical)",
                          featType: "General",
                          prerequisites: "Critical Focus, Staggering Critical, base attack bonus +17.",
                          benefit: "Whenever you score a critical hit, your opponent becomes stunned for 1d4 rounds. A successful Fortitude save reduces this to staggered for 1d4 rounds. The DC of this Fortitude save is equal to 10 + your base attack bonus. The effects of this feat do not stack. Additional hits instead add to the duration.",
                          special: "You can only apply the effects of one critical feat to a given critical hit unless you possess Critical Mastery.",
                          summary: "Whenever you score a critical hit, your opponent becomes stunned for 1d4 rounds. A successful Fortitude save reduces this to staggered for 1d4 rounds.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Stunning Fist (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Wis 13, Improved Unarmed Strike, base attack bonus +8.",
                          benefit: "You must declare that you are using this feat before you make your attack roll (thus, a failed attack roll ruins the attempt). Stunning Fist forces a foe damaged by your unarmed attack to make a Fortitude saving throw (DC 10 + 1/2 your character level + your Wis modifier), in addition to dealing damage normally. A defender who fails this saving throw is stunned for 1 round (until just before your next turn). A stunned character drops everything held, can't take actions, loses any Dexterity bonus to AC, and takes a –2 penalty to AC. You may attempt a stunning attack once per day for every four levels you have attained (but see Special), and no more than once per round. Constructs, oozes, plants, undead, incorporeal creatures, and creatures immune to critical hits cannot be stunned.",
                          special: "A monk receives Stunning Fist as a bonus feat at 1st level, even if he does not meet the prerequisites. A monk may attempt a stunning attack a number of times per day equal to his monk level, plus one more time per day for every four levels he has in classes other than monk.",
                          summary: "You must declare that you are using this feat before you make your attack roll (thus, a failed attack roll ruins the attempt).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Throw Anything (Combat)",
                          featType: "General",
                          prerequisites: "Throw Anything.",
                          benefit: "You do not suffer any penalties for using an improvised ranged weapon. You receive a +1 circumstance bonus on attack rolls made with thrown splash weapons.",
                          normal: "You take a –4 penalty on attack rolls made with an improvised weapon.",
                          summary: "You do not suffer any penalties for using an improvised ranged weapon. You receive a +1 circumstance bonus on attack rolls made with thrown splash weapons.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Tiring Critical (Combat, Critical)",
                          featType: "General",
                          prerequisites: "Critical Focus, base attack bonus +13.",
                          benefit: "Whenever you score a critical hit, your opponent becomes fatigued. This feat has no additional effect on a fatigued or exhausted creature.",
                          special: "You can only apply the effects of one critical feat to a given critical hit unless you possess Critical Mastery.",
                          summary: "Whenever you score a critical hit, your opponent becomes fatigued. This feat has no additional effect on a fatigued or exhausted creature.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Toughness",
                          featType: "General",
                          prerequisites: "Toughness.",
                          benefit: "You gain +3 hit points. For every Hit Die you possess beyond 3, you gain an additional +1 hit point. If you have more than 3 Hit Dice, you gain +1 hit points whenever you gain a Hit Die (such as when you gain a level).",
                          summary: "You gain +3 hit points. For every Hit Die you possess beyond 3, you gain an additional +1 hit point.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Tower Shield Proficiency (Combat)",
                          featType: "General",
                          prerequisites: "Shield Proficiency.",
                          benefit: "When you use a tower shield, the shield's armor check penalty only applies to Strength and Dexterity-based skills.",
                          normal: "A character using a shield with which he is not proficient takes the shield's armor check penalty on attack rolls and on all skill checks that involve moving, including Ride.",
                          special: "Fighters automatically have Tower Shield Proficiency as a bonus feat. They need not select it.",
                          summary: "When you use a tower shield, the shield's armor check penalty only applies to Strength and Dexterity-based skills.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Trample (Combat)",
                          featType: "General",
                          prerequisites: "Ride 1 rank, Mounted Combat.",
                          benefit: "When you attempt to overrun an opponent while mounted, your target may not choose to avoid you. Your mount may make one hoof attack against any target you knock down, gaining the standard +4 bonus on attack rolls against prone targets.",
                          summary: "When you attempt to overrun an opponent while mounted, your target may not choose to avoid you.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Turn Undead",
                          featType: "General",
                          prerequisites: "Channel positive energy class feature.",
                          benefit: "You can, as a standard action, use one of your uses of channel positive energy to cause all undead within 30 feet of you to flee, as if panicked. Undead receive a Will save to negate the effect. The DC for this Will save is equal to 10 + 1/2 your cleric level + your Charisma modifier. Undead that fail their save flee for 1 minute. Intelligent undead receive a new saving throw each round to end the effect. If you use channel energy in this way, it has no other effect (it does not heal or harm nearby creatures).",
                          summary: "You can, as a standard action, use one of your uses of channel positive energy to cause all undead within 30 feet of you to flee, as if panicked. Undead receive a Will save to negate the effect.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Two-Weapon Defense (Combat)",
                          featType: "General",
                          prerequisites: "Dex 15, Two-Weapon Fighting.",
                          benefit: "When wielding a double weapon or two weapons (not including natural weapons or unarmed strikes), you gain a +1 shield bonus to your AC. When you are fighting defensively or using the total defense action, this shield bonus increases to +2.",
                          summary: "When wielding a double weapon or two weapons (not including natural weapons or unarmed strikes), you gain a +1 shield bonus to your AC.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Two-Weapon Fighting (Combat)",
                          featType: "General",
                          prerequisites: "Dex 15.",
                          benefit: "Your penalties on attack rolls for fighting with two weapons are reduced. The penalty for your primary hand lessens by 2 and the one for your off hand lessens by 6. See Two-Weapon Fighting in Combat.",
                          normal: "If you wield a second weapon in your off hand, you can get one extra attack per round with that weapon. When fighting in this way you suffer a –6 penalty with your regular attack or attacks with your primary hand and a –10 penalty to the attack with your off hand. If your off-hand weapon is light, the penalties are reduced by 2 each. An unarmed strike is always considered light.",
                          summary: "Your penalties on attack rolls for fighting with two weapons are reduced. The penalty for your primary hand lessens by 2 and the one for your off hand lessens by 6. See Two-Weapon Fighting in Combat.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Two-Weapon Rend (Combat)",
                          featType: "General",
                          prerequisites: "Dex 17, Double Slice, Improved Two-Weapon Fighting, Two-Weapon Fighting, base attack bonus +11.",
                          benefit: "If you hit an opponent with both your primary hand and your off-hand weapon, you deal an additional 1d10 points of damage plus 1-1/2 times your Strength modifier. You can only deal this additional damage once each round.",
                          summary: "If you hit an opponent with both your primary hand and your off-hand weapon, you deal an additional 1d10 points of damage plus 1-1/2 times your Strength modifier.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Unseat (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Ride 1 rank, Mounted Combat, Power Attack, Improved Bull Rush, base attack bonus +1.",
                          benefit: "When charging an opponent while mounted and wielding a lance, resolve the attack as normal. If it hits, you may immediately make a free bull rush attempt in addition to the normal damage. If successful, the target is knocked off his horse and lands prone in a space adjacent to his mount that is directly away from you.",
                          summary: "When charging an opponent while mounted and wielding a lance, resolve the attack as normal. If it hits, you may immediately make a free bull rush attempt in addition to the normal damage.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Vital Strike (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +6.",
                          benefit: "When you use the attack action, you can make one attack at your highest base attack bonus that deals additional damage. Roll the weapon's damage dice for the attack twice and add the results together before adding bonuses from Strength, weapon abilities (such as flaming), precision-based damage, and other damage bonuses. These extra weapon damage dice are not multiplied on a critical hit, but are added to the total.",
                          summary: "When you use the attack action, you can make one attack at your highest base attack bonus that deals additional damage.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Weapon Finesse (Combat)",
                          featType: "General",
                          prerequisites: "Weapon Finesse.",
                          benefit: "With a light weapon, rapier, whip, or spiked chain made for a creature of your size category, you may use your Dexterity modifier instead of your Strength modifier on attack rolls. If you carry a shield, its armor check penalty applies to your attack rolls.",
                          special: "Natural weapons are considered light weapons.",
                          summary: "With a light weapon, rapier, whip, or spiked chain made for a creature of your size category, you may use your Dexterity modifier instead of your Strength modifier on attack rolls.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Weapon Focus (Combat)",
                          featType: "General",
                          prerequisites: "Proficiency with selected weapon, base attack bonus +1.",
                          benefit: "You gain a +1 bonus on all attack rolls you make using the selected weapon.",
                          special: "You can gain this feat multiple times. Its effects do not stack. Each time you take the feat, it applies to a new type of weapon.",
                          summary: "You gain a +1 bonus on all attack rolls you make using the selected weapon.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Weapon Specialization (Combat)",
                          featType: "General",
                          prerequisites: "Proficiency with selected weapon, Weapon Focus with selected weapon, fighter level 4th.",
                          benefit: "You gain a +2 bonus on all damage rolls you make using the selected weapon.",
                          special: "You can gain this feat multiple times. Its effects do not stack. Each time you take the feat, it applies to a new type of weapon.",
                          summary: "You gain a +2 bonus on all damage rolls you make using the selected weapon.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Whirlwind Attack (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Int 13, Combat Expertise, Dodge, Mobility, Spring Attack, base attack bonus +4.",
                          benefit: "When you use the full-attack action, you can give up your regular attacks and instead make one melee attack at your highest base attack bonus against each opponent within reach. You must make a separate attack roll against each opponent.When you use the Whirlwind Attack feat, you also forfeit any bonus or extra attacks granted by other feats, spells, or abilities.",
                          summary: "When you use the full-attack action, you can give up your regular attacks and instead make one melee attack at your highest base attack bonus against each opponent within reach.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Widen Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You can alter a burst, emanation, or spread-shaped spell to increase its area. Any numeric measurements of the spell's area increase by 100%. A widened spell uses up a spell slot three levels higher than the spell's actual level.Spells that do not have an area of one of these four sorts are not affected by this feat.",
                          summary: "You can alter a burst, emanation, or spread-shaped spell to increase its area. Any numeric measurements of the spell's area increase by 100%.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertFeat(
        .make("Wind Stance (Combat)",
                          featType: "General",
                          prerequisites: "Dex 15, Dodge, base attack bonus +6.",
                          benefit: "If you move more than 5 feet this turn, you gain 20% concealment for 1 round against ranged attacks.",
                          summary: "If you move more than 5 feet this turn, you gain 20% concealment for 1 round against ranged attacks.",
                          source: "Core Rulebook", isPremium: false),

                    // // MARK: - Advanced Class Guide
        )
        try await db.insertFeat(
        .make("Aberrant Tumor",
                          featType: "General",
                          prerequisites: "Aberrant bloodline.",
                          benefit: "You gain a tumor familiar, as the tumor familiar alchemist discovery (Pathfinder RPG Ultimate Magic 17), with an effective alchemist level equal to the level of the class that grants your aberrant bloodline for determining the tumor familiar’s abilities. If multiple classes grant you the aberrant bloodline, those class levels stack for determining your effective alchemist level.",
                          summary: "You gain a tumor familiar, as the tumor familiar alchemist discovery (Pathfinder RPG Ultimate Magic 17), with an effective alchemist level equal to the level of the class that grants your aberrant…",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Amateur Investigator",
                          featType: "General",
                          prerequisites: "Int 13, 1 rank in at least one Knowledge skill, no levels in a class that has the inspiration class feature.",
                          benefit: "Like an investigator, you have the ability to augment your Knowledge, Linguistics, and Spellcraft skill checks. You gain a pool of inspiration equal to your Intelligence modifier. You can expend one use of inspiration as a free action to add 1d6 to the result of a Knowledge, Linguistics, or Spellcraft check, as long as you are trained in that skill (even if you take 10 or 20 on that check). You make this choice after the check is rolled and before the results of the roll are revealed. You can use inspiration only once per skill check. Your pool of inspiration refreshes each day, typically after you get a restful night’s sleep.",
                          special: "If you gain levels in a class that has the inspiration class feature, you can immediately trade this feat for the Extra Inspiration feat.",
                          summary: "Like an investigator, you have the ability to augment your Knowledge, Linguistics, and Spellcraft skill checks. You gain a pool of inspiration equal to your Intelligence modifier.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Amateur Swashbuckler (Combat)",
                          featType: "General",
                          prerequisites: "No levels in a class that has the panache class feature.",
                          benefit: "You gain a small amount of panache and the ability to perform a single 1st-level swashbuckler deed. Choose a 1st-level deed from the swashbuckler’s deeds class feature (see page 56; you can't select opportune parry and riposte). Once chosen, this deed cannot be changed. At the start of each day, you gain 1 panache point. Throughout the day, you can gain a number of panache points up to a maximum of your Charisma modifier (minimum 1). You can regain panache points as the swashbuckler’s panache class feature (see page 56). You can spend these panache points to perform the 1st-level deed you chose upon taking this feat as well as any other deeds you have gained through feats or magic items.",
                          special: "If you gain levels in a class that has the panache class feature, you can immediately trade this feat for the Extra Panache feat.",
                          summary: "You gain a small amount of panache and the ability to perform a single 1st-level swashbuckler deed.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Animal Soul",
                          featType: "General",
                          prerequisites: "Animal companion or mount class feature.",
                          benefit: "You can choose not to allow spells and effects to affect you if they would not be capable of affecting both your original creature type and the animal creature type.",
                          summary: "You can choose not to allow spells and effects to affect you if they would not be capable of affecting both your original creature type and the animal creature type.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Anticipate Dodge (Combat)",
                          featType: "General",
                          prerequisites: "Dodge, Mobility; base attack bonus +7, brawler level 4th, or monk level 4th.",
                          benefit: "You automatically know whether a creature you can see has a dodge bonus to its AC. You gain up to a +2 bonus on attack rolls against a target that has a dodge bonus. This bonus cannot exceed the dodge bonus of the creature you attack.",
                          summary: "You automatically know whether a creature you can see has a dodge bonus to its AC. You gain up to a +2 bonus on attack rolls against a target that has a dodge bonus.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Barroom Brawler (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +4.",
                          benefit: "Once per day as a move action, you can gain the benefit of a combat feat that you do not possess for 1 minute. You must otherwise meet the feat’s requirements.",
                          special: "If you have the martial flexibility class feature, this feat instead grants you one additional use per day of that ability.",
                          summary: "Once per day as a move action, you can gain the benefit of a combat feat that you do not possess for 1 minute. You must otherwise meet the feat’s requirements.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Battle Cry (Combat)",
                          featType: "General",
                          prerequisites: "Cha 13; base attack bonus +5 or Perform (act, oratory, or sing) 5 ranks.",
                          benefit: "A number of times per day equal to your Charisma bonus, you can let out a battle cry as a swift action. When you do, allies within 30 feet who can hear you gain a +1 morale bonus on attack rolls and a +4 morale bonus on saving throws against fear. This effect lasts for 1 minute. If an ally is under the effect of this feat and fails a saving throw against a fear effect, she can choose to end the battle cry’s effect on her to reroll the failed save. The ally must take the result of the reroll, even if it’s lower. Each ally can use this effect only once per use of this feat.",
                          summary: "A number of times per day equal to your Charisma bonus, you can let out a battle cry as a swift action.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Befuddling Strike (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Wis 13, Improved Unarmed Strike, base attack bonus +8.",
                          benefit: "Befuddling Strike forces a foe damaged by your unarmed attack to attempt a Fortitude saving throw (DC = 10 + 1/2 your character level + your Wisdom modifier), in addition to dealing damage normally. You must declare that you are using this feat before you make your attack roll—thus, a failed attack roll ruins the attempt. A defender who fails this saving throw is confused for 1d4 rounds. You can attempt to use Befuddling Strike once per day for every 4 character levels you have, but can use it no more than once per round. Constructs, incorporeal creatures, mindless creatures, plants, undead, and creatures that are immune to critical hits cannot be affected by this ability.",
                          summary: "Befuddling Strike forces a foe damaged by your unarmed attack to attempt a Fortitude saving throw (DC = 10 + 1/2 your character level + your Wisdom modifier), in addition to dealing damage normally.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Believer's Boon",
                          featType: "General",
                          prerequisites: "Wis 13, alignment must be within one step of your deity’s.",
                          benefit: "When you take this feat, choose one domain granted by your deity. You can use the 1st-level domain ability that clerics of that domain can use a number of times or rounds per day, but you can use it only once per day or 1 round per day, whichever is appropriate. Your effective cleric level in regard to this ability is 1st level. If the domain has a 1st-level ability that does not meet this specification, you cannot use it.",
                          special: "You can take this feat twice. When you take it a second time, you choose another domain granted by your deity. If you grossly violate the code of conduct required by your deity, your alignment shifts so that it is more than one step away from your deity’s, or you no longer worship your deity, you lose access to this feat. You can regain it once you atone for your misdeeds to your deity (see the atonement spell on page 245 of the Pathfinder RPG Core Rulebook).",
                          summary: "When you take this feat, choose one domain granted by your deity.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Believer's Hands",
                          featType: "General",
                          prerequisites: "Wis 13, Believer’s Boon, must be lawful good, alignment must be within one step of your deity’s.",
                          benefit: "Once per day, you can use the paladin’s lay on hands ability. Your effective paladin level is equal to 1/2 your character level (minimum 1). If you already have (or later gain) the lay on hands ability, you instead gain one extra use of lay on hands each day.",
                          special: "This feat counts as having the lay on hands ability for the purpose of qualifying for feats such as Extra Lay on Hands. If you grossly violate the code of conduct required by your deity, your alignment shifts so that it is more than one step away from your deity’s, or you no longer worship your deity, you lose access to this feat. You can regain it once you atone for your misdeeds to your deity (see the atonement spell on page 245 of the Core Rulebook).",
                          summary: "Once per day, you can use the paladin’s lay on hands ability. Your effective paladin level is equal to 1/2 your character level (minimum 1).",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Blasting Charge",
                          featType: "General",
                          prerequisites: "Base attack bonus +7, ability to cast 2nd-level bloodrager spells, bloodrage class feature.",
                          benefit: "While you are bloodraging, at the end of a charge you can expend a bloodrager spell slot as a swift action to imbue your charge attack with extra power. You deal an additional 1d6 points of damage per level of the spell slot expended. This extra damage is force damage, and it’s not multiplied in the case of a critical hit. If your bloodline has a specific energy type associated with it (such as the elemental or draconic bloodlines), you can choose to increase the damage to 1d8 points per level of the spell slot expended, and this extra damage is of that energy type.",
                          summary: "While you are bloodraging, at the end of a charge you can expend a bloodrager spell slot as a swift action to imbue your charge attack with extra power.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Blessed Striker",
                          featType: "General",
                          prerequisites: "Base attack bonus +11, ability to cast divine spells, alignment must be within one step of your deity’s.",
                          benefit: "All of your attacks are treated as having whatever alignment components you and your deity share for the purpose of overcoming damage reduction.",
                          special: "If you grossly violate the code of conduct required by your deity or no longer worship your deity, you lose access to this feat. You can regain it once you atone for your misdeeds to your deity (see the atonement spell on page 245 of the Core Rulebook).",
                          summary: "All of your attacks are treated as having whatever alignment components you and your deity share for the purpose of overcoming damage reduction.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Blooded Arcane Strike (Combat)",
                          featType: "General",
                          prerequisites: "Arcane Strike, ability to cast arcane spells, bloodrage class feature.",
                          benefit: "While you are bloodraging, you don’t need to spend a swift action to use your Arcane Strike—it is always in effect. When you use this ability with Vital Strike, Improved Vital Strike, or Greater Vital Strike, the bonus on damage rolls for Arcane Strike is multiplied by the number of times (two, three, or four) you roll damage dice for one of those feats.",
                          summary: "While you are bloodraging, you don’t need to spend a swift action to use your Arcane Strike—it is always in effect.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Bookish Rogue",
                          featType: "General",
                          prerequisites: "Minor magic rogue talent.",
                          benefit: "By studying a spellbook for 10 minutes, you can change one spell you are able to cast using your minor magic or major magic rogue talent to one sorcerer/wizard spell of the same level contained in the spellbook. This change is permanent until you take the time to change it via this feat again.",
                          summary: "By studying a spellbook for 10 minutes, you can change one spell you are able to cast using your minor magic or major magic rogue talent to one sorcerer/wizard spell of the same level contained in…",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Canny Tumble (Combat)",
                          featType: "General",
                          prerequisites: "Dodge, Mobility, Acrobatics 5 ranks.",
                          benefit: "When you use Acrobatics to move through an opponent’s threatened area or space without provoking an attack of opportunity from that opponent, you gain a +2 circumstance bonus on your next melee attack roll against that opponent and that opponent is denied its Dexterity bonus to AC, as long as you make that attack before the start of your next turn.",
                          summary: "When you use Acrobatics to move through an opponent’s threatened area or space without provoking an attack of opportunity from that opponent, you gain a +2 circumstance bonus on your next melee…",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Channeled Blessing",
                          featType: "General",
                          prerequisites: "Blessings class feature, channel energy class feature.",
                          benefit: "When you channel energy to heal, you can instead deliver a warpriest’s blessing to a single willing creature (including yourself ) in the area that otherwise would have been healed by your channeled energy. The blessing must be one that requires a standard action and affects one or more creatures. If the blessing would normally affect multiple targets, you affect only a single target. The target receives the blessing in place of the healing and any other effects of the channeled energy. (This application doesn’t count toward your uses of blessings per day.)",
                          summary: "When you channel energy to heal, you can instead deliver a warpriest’s blessing to a single willing creature (including yourself ) in the area that otherwise would have been healed by your channeled…",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Channeling Force (Combat)",
                          featType: "General",
                          prerequisites: "Ability to cast at least one force spell, channel energy class feature.",
                          benefit: "A swift action, you can expend one use of channel energy to grant your weapon attacks a bonus on damage rolls equal to the number of dice of your channel energy. This extra damage is force damage. This lasts for your next three weapon attacks or until the end of combat, whichever comes first.",
                          summary: "A swift action, you can expend one use of channel energy to grant your weapon attacks a bonus on damage rolls equal to the number of dice of your channel energy. This extra damage is force damage.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Confounding Tumble Deed (Panache)",
                          featType: "General",
                          prerequisites: "Amateur Swashbuckler feat or panache class feature, Canny Tumble, Acrobatics 7 ranks.",
                          benefit: "When you use Acrobatics to move through an opponent’s threatened area or space without provoking an attack of opportunity from that opponent and then hit that foe with a melee attack in the same round, as a free action you can spend 1 panache point to deny that foe its Dexterity bonus to its armor class until the end of your next turn.",
                          summary: "When you use Acrobatics to move through an opponent’s threatened area or space without provoking an attack of opportunity from that opponent and then hit that foe with a melee attack in the same…",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Coordinated Shot (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Point-Blank Shot.",
                          benefit: "If your ally with this feat is threatening an opponent and is not providing cover to that opponent against your ranged attacks, you gain a +1 bonus on ranged attacks against that opponent. If your ally with this feat is flanking that opponent with another ally (even if that other ally doesn’t have this feat), this bonus increases to +2.",
                          summary: "If your ally with this feat is threatening an opponent and is not providing cover to that opponent against your ranged attacks, you gain a +1 bonus on ranged attacks against that opponent.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Counter Reflexes (Combat)",
                          featType: "General",
                          prerequisites: "Anticipate Dodge, Dodge, Mobility; base attack bonus +9, brawler level 6th, or monk level 6th.",
                          benefit: "Opponents with the Mobility feat do not gain the dodge bonus granted by that feat when they provoke attacks of opportunity by moving out of or within your threatened area.",
                          summary: "Opponents with the Mobility feat do not gain the dodge bonus granted by that feat when they provoke attacks of opportunity by moving out of or within your threatened area.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Counterpunch (Combat)",
                          featType: "General",
                          prerequisites: "Dex 18, Combat Reflexes, Improved Unarmed Strike, Weapon Focus (unarmed strike); base attack bonus +16 or brawler level 12th.",
                          benefit: "Once per round, when you are fighting unarmed with both hands free and an opponent misses you with a melee attack, it provokes an attack of opportunity from you. You must use an unarmed strike for this attack of opportunity.",
                          summary: "Once per round, when you are fighting unarmed with both hands free and an opponent misses you with a melee attack, it provokes an attack of opportunity from you.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dazing Fist (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Wis 13, Improved Unarmed Strike, base attack bonus +4.",
                          benefit: "You must declare that you are using this feat before you make your attack roll (thus, a failed attack roll ruins the attempt). Dazing Fist forces a foe damaged by your unarmed attack to attempt a Fortitude saving throw (DC = 10 + 1/2 your character level + your Wisdom modifier), in addition to dealing damage normally. A foe who fails this saving throw is dazed for 1 round, until just before your next turn. You can attempt to use Dazing Fist once per day for every 4 character levels you have, but no more than once per round. Constructs, incorporeal creatures, plants, undead, and creatures that are immune to critical hits cannot be affected by this ability.",
                          summary: "You must declare that you are using this feat before you make your attack roll (thus, a failed attack roll ruins the attempt).",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Disable Dweomer",
                          featType: "General",
                          prerequisites: "Disable Device 5 ranks, Use Magic Device 5 ranks, trapfinding.",
                          benefit: "You can use Disable Device to suppress the magic of a non-artifact magic item for 1d4 rounds, after which the item recovers its magical properties. A suppressed item becomes nonmagical for the duration of the suppression. Using Disable Device in this way takes 2d4 rounds, with a DC of 15 + the item’s caster level.",
                          summary: "You can use Disable Device to suppress the magic of a non-artifact magic item for 1d4 rounds, after which the item recovers its magical properties.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Disarming Threat Deed (Panache)",
                          featType: "General",
                          prerequisites: "Amateur Swashbuckler or panache class feature; Diplomacy 2 ranks, Intimidate 2 ranks.",
                          benefit: "When you succeed at an Intimidate check to force an opponent to act friendly toward you, you can spend 1 panache point to cause the target to regard you with indifference when the duration of the effect expires. A target influenced in this manner is unlikely to report you to authorities.",
                          normal: "An opponent forced to act friendly toward you by Intimidate becomes unfriendly when the duration expires, and is likely to report you to the authorities.",
                          summary: "When you succeed at an Intimidate check to force an opponent to act friendly toward you, you can spend 1 panache point to cause the target to regard you with indifference when the duration of the…",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Disheartening Display (Combat)",
                          featType: "General",
                          prerequisites: "Dazzling Display, Weapon Focus, base attack bonus +6, proficiency with chosen weapon.",
                          benefit: "When you successfully use Dazzling Display against any shaken, frightened, or panicked opponents, their fear increases by one step. An already panicked creature demoralized by this feat cowers. Once affected by this feat, a creature cannot be affected by it again (by you or anyone else) for 24 hours.",
                          summary: "When you successfully use Dazzling Display against any shaken, frightened, or panicked opponents, their fear increases by one step. An already panicked creature demoralized by this feat cowers.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Distracting Charge (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When your ally with this feat uses the charge action and hits, you gain a +2 bonus on your next attack roll against the target of that charge. This bonus must be used before your ally’s next turn, or it is lost.",
                          summary: "When your ally with this feat uses the charge action and hits, you gain a +2 bonus on your next attack roll against the target of that charge.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Divine Protection",
                          featType: "General",
                          prerequisites: "Cha 13, Knowledge (religion) 5 ranks.",
                          benefit: "Once per day as an immediate action before rolling a saving throw, you can add your Charisma modifier on that saving throw. As usual, this does not stack if you already apply your Charisma modifier to that saving throw. If you possess the charmed life class feature, you can instead apply Divine Protection’s bonus after rolling the saving throw but before the result is revealed.",
                          summary: "Once per day as an immediate action before rolling a saving throw, you can add your Charisma modifier on that saving throw.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Draining Strike (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Wis 13, Improved Unarmed Strike, base attack bonus +8.",
                          benefit: "You must declare that you are using this feat before you make your attack roll (thus, a failed attack roll ruins the attempt). Draining Strike forces a foe that was damaged by your unarmed attack to attempt a Fortitude saving throw (DC = 10 + 1/2 your character level + your Wisdom modifier), in addition to dealing damage normally. A defender who fails this saving throw is fatigued for 1 minute or until the foe is subject to any spell or effect that heals hit point damage. If you have a base attack bonus of +14 or higher, the target is exhausted for the same duration instead. You can attempt to use Draining Strike once per day for every 4 character levels you have, but you can use it no more than once per round. Constructs, incorporeal creatures, plants, undead, and creatures that are immune to critical hits cannot be affected by this ability.",
                          summary: "You must declare that you are using this feat before you make your attack roll (thus, a failed attack roll ruins the attempt).",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dual Enhancement",
                          featType: "General",
                          prerequisites: "Two-Weapon Fighting; divine bond (weapon) or sacred weapon class feature.",
                          benefit: "When you use divine bond or sacred weapon to improve your weapon, you can choose to enhance two weapons or both ends of a double weapon. All weapons affected must be in hand or otherwise wielded. Any enhancement bonus you add to one of your weapons gets added to both automatically, but weapon special abilities must be accounted for separately. For example, if you can enhance up to the equivalent of a +2 bonus, you could give both your weapons an additional +1 bonus and apply the keen special weapon ability to one of those weapons.",
                          summary: "When you use divine bond or sacred weapon to improve your weapon, you can choose to enhance two weapons or both ends of a double weapon. All weapons affected must be in hand or otherwise wielded.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dueling Cape Deed (Combat, Panache)",
                          featType: "General",
                          prerequisites: "Amateur Swashbuckler† or panache† class feature; Dodge, Sleight of Hand 1 rank.",
                          benefit: "As a move action, you can wrap a cape that you’re wearing around your arm (removing it if necessary), and treat it as a buckler. If you are using the cape in this way, and an opponent misses you with a melee attack, as an immediate action you can spend 1 panache point to release your cape from your arm and entangle your foe in it. The foe can free it by using a full-round action to escape or by destroying the cape; a typical cape has hardness 1 and 3 hit points. You can use this feat with items similar in shape and weight to a cape, such as a cloak or a curtain.",
                          summary: "As a move action, you can wrap a cape that you’re wearing around your arm (removing it if necessary), and treat it as a buckler.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Energy Channel",
                          featType: "General",
                          prerequisites: "Channel energy class feature; Air, Earth, Fire, or Water domain or blessing.",
                          benefit: "A swift action, you can expend one use of channel energy to grant your weapon attacks a bonus on damage rolls equal to twice the number of dice rolled for your channel energy. This additional damage is of an energy type determined by your domain or blessing: acid (Earth), cold (Water), electricity (Air), or fire (Fire). If you have more than one of those domains or blessings, you must choose one of those damage types when you use this ability. This effect lasts for your next three weapon attacks or until the end of combat, whichever comes first.",
                          summary: "A swift action, you can expend one use of channel energy to grant your weapon attacks a bonus on damage rolls equal to twice the number of dice rolled for your channel energy.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Esoteric Linguistics",
                          featType: "General",
                          prerequisites: "Skill Focus (Linguistics).",
                          benefit: "You can attempt a Linguistics check in place of a Use Magic Device check to activate a scroll, or in place of a Spellcraft check to identify a scroll. You must still have (or emulate) the ability score required to cast a spell of the desired level, and you cannot use Linguistics on the check to emulate the required ability score.",
                          summary: "You can attempt a Linguistics check in place of a Use Magic Device check to activate a scroll, or in place of a Spellcraft check to identify a scroll.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Evolved Companion",
                          featType: "General",
                          prerequisites: "Cha 13, animal companion class feature.",
                          benefit: "Select a 1-point evolution other than pounce or reach from those available to a summoner’s eidolon. Your animal companion gains this evolution. The animal companion must conform to any limitations of the evolution. For instance, only an animal companion of an appropriate size and base form can have the mount evolution. If you gain a new animal companion, your old animal companion loses this evolution, and you can select a new 1-point evolution for the new animal companion.",
                          special: "You can take this feat multiple times. Each time you do, select an additional 1-point evolution for your animal companion.",
                          summary: "Select a 1-point evolution other than pounce or reach from those available to a summoner’s eidolon. Your animal companion gains this evolution.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Evolved Summoned Monster",
                          featType: "General",
                          prerequisites: "Augmented Summoning, Spell Focus (conjuration), ability to cast summon monster I.",
                          benefit: "Each time you cast a summon monster spell, you can select a 1-point evolution other than pounce or reach from those available to a summoner’s eidolon. Your summoned creature gains this evolution. The summoned creature must conform to any limitations of the evolution. (For instance, only a creature with a reach of 10 feet or more can have the pull evolution.) Evolutions that grant additional attacks or enhance existing attacks can be applied only to Medium or larger summoned creatures. If you summon more than one creature with a single spell, only one creature gains this evolution.",
                          special: "You can take this feat multiple times. Each time you do, select an additional 1–point evolution for one of your summoned creatures. If you summon more than one creature, you can choose to apply all the evolutions to a single summoned creature, or split them between the creatures summoned.",
                          summary: "Each time you cast a summon monster spell, you can select a 1-point evolution other than pounce or reach from those available to a summoner’s eidolon. Your summoned creature gains this evolution.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Expanded Preparation",
                          featType: "General",
                          prerequisites: "Arcanist level 1st.",
                          benefit: "You gain an extra spell prepared of the highest level you can currently cast as an arcanist when selecting this feat. This is in addition to the number of spells you can normally prepare from your spellbook. You can instead add two spells prepared, but both of these spells must be at least 1 level lower than the highest-level spell you can currently cast as an arcanist when selecting this feat. You must choose which benefit you gain when you take this feat, and the extra spells prepared do not change level when you gain access to higher-level spells.",
                          special: "You can take this feat up to three times. Each time you do, you can choose either benefit.",
                          summary: "You gain an extra spell prepared of the highest level you can currently cast as an arcanist when selecting this feat.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Arcanist Exploit",
                          featType: "General",
                          prerequisites: "Arcanist exploit class feature.",
                          benefit: "You gain one additional arcanist exploit. You must meet the prerequisites for this arcanist exploit.",
                          special: "You can take this feat multiple times. Each time you do, you gain another arcanist exploit.",
                          summary: "You gain one additional arcanist exploit. You must meet the prerequisites for this arcanist exploit.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Inspiration",
                          featType: "General",
                          prerequisites: "Amateur Investigator or inspiration class feature.",
                          benefit: "You gain three extra use per day of inspiration in your inspiration pool.",
                          special: "If you have levels in the investigator class, you can take this feat multiple times. Each time you do, you gain three extra uses of inspiration per day.",
                          summary: "You gain three extra use per day of inspiration in your inspiration pool.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Investigator Talent",
                          featType: "General",
                          prerequisites: "Investigator talent class feature.",
                          benefit: "You gain one additional investigator talent. You must meet the prerequisites for this investigator talent.",
                          special: "You can take this feat multiple times. Each time you do, you gain another investigator talent.",
                          summary: "You gain one additional investigator talent. You must meet the prerequisites for this investigator talent.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Martial Flexibility",
                          featType: "General",
                          prerequisites: "Martial flexibility class feature.",
                          benefit: "You can use your martial flexibility ability three additional times per day.",
                          summary: "You can use your martial flexibility ability three additional times per day.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Panache (Panache)",
                          featType: "General",
                          prerequisites: "Amateur Swashbuckler or panache class feature.",
                          benefit: "You gain two more panache points at the start of each day, and your maximum panache increases by two.",
                          special: "If you have levels in the swashbuckler class, you can take this feat multiple times. Its effects stack.",
                          summary: "You gain two more panache points at the start of each day, and your maximum panache increases by two.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Reservoir",
                          featType: "General",
                          prerequisites: "Arcane reservoir class feature.",
                          benefit: "You gain three more points in your arcane reservoir, and the maximum number of points in your arcane reservoir increases by that amount.",
                          special: "You can take this feat multiple times. Its effects stack.",
                          summary: "You gain three more points in your arcane reservoir, and the maximum number of points in your arcane reservoir increases by that amount.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Slayer Talent",
                          featType: "General",
                          prerequisites: "Slayer talent class feature.",
                          benefit: "You gain one additional slayer talent. You must meet the prerequisites for this slayer talent.",
                          special: "You can take this feat multiple times. Each time you do, you gain another slayer talent.",
                          summary: "You gain one additional slayer talent. You must meet the prerequisites for this slayer talent.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extreme Prejudice (Combat)",
                          featType: "General",
                          prerequisites: "Seething Hatred, sneak attack +3d6, studied target class feature.",
                          benefit: "When you succeed at a sneak attack against a creature you selected as the target of your Seething Hatred feat, you use d8s to roll sneak attack damage instead of d6s.",
                          summary: "When you succeed at a sneak attack against a creature you selected as the target of your Seething Hatred feat, you use d8s to roll sneak attack damage instead of d6s.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Faerie's Strike (Combat)",
                          featType: "General",
                          prerequisites: "Nature Magic or the ability to cast druid or ranger spells; Vital Strike, Knowledge (nature) 5 ranks.",
                          benefit: "When you use Vital Strike (or Improved Vital Strike or Greater Vital Strike), the creature you hit with the attack must succeed at a Will save (DC = 10 + 1/2 your character level + your Wisdom modifier) or be illuminated as if by faerie fire for 1 minute. You can use this benefit a number of times per day equal to your Wisdom modifier (minimum 1).",
                          summary: "When you use Vital Strike (or Improved Vital Strike or Greater Vital Strike), the creature you hit with the attack must succeed at a Will save (DC = 10 + 1/2 your character level + your Wisdom…",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Favored Enemy Spellcasting",
                          featType: "General",
                          prerequisites: "Ability to cast spells.",
                          benefit: "When you select this feat, choose a creature type or a humanoid subtype from the Ranger Favored Enemies table (Core Rulebook 64). When creatures of the chosen type attempt saving throws against your spells, they treat the spells’ DCs as 1 higher. If you also have the favored enemy class feature and the chosen type is already a favored enemy of yours, such creatures treat your spells’ DCs as 2 higher.",
                          special: "You can take this feat multiple times. Each time you do, it applies to a different creature type.",
                          summary: "When you select this feat, choose a creature type or a humanoid subtype from the Ranger Favored Enemies table (Core Rulebook 64).",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Flexible Hex",
                          featType: "General",
                          prerequisites: "Wandering hex class feature.",
                          benefit: "Once per day as a swift action, you can change your wandering hex. When you change your hex, the new hex must be associated with the wandering spirit with which you are currently bonded. At 12th level, you can change either or both of your wandering hexes with the feat.",
                          normal: "Shamans select their hexes every day when they prepare their spells and cannot change them.",
                          summary: "Once per day as a swift action, you can change your wandering hex. When you change your hex, the new hex must be associated with the wandering spirit with which you are currently bonded.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Flexible Wizardry",
                          featType: "General",
                          prerequisites: "Spell Mastery, wizard level 1st.",
                          benefit: "When you prepare your spells each day, you can choose to keep a number of spell slots equal to your Intelligence modifier (minimum 1) flexibly prepared. Instead of preparing a single spell within each of these slots, you can partially prepare two spells. Anytime after you prepare these flexible slots, you can spend a full-round action to finalize one slot, choosing one of the two spells to be finished and fully prepared in that slot.",
                          summary: "When you prepare your spells each day, you can choose to keep a number of spell slots equal to your Intelligence modifier (minimum 1) flexibly prepared.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Focused Inspiration",
                          featType: "General",
                          prerequisites: "Inspiration class feature, keen recollection class feature.",
                          benefit: "Choose two skills that you either are trained in or can otherwise use untrained. You must be able to use inspiration on these skills. When you use inspiration with those skills, roll a d8 instead of a d6, or a d10 if you would normally roll a d8. If you have the true inspiration class feature, you roll twice as many such dice (2d8 or 2d10) as normal.",
                          summary: "Choose two skills that you either are trained in or can otherwise use untrained. You must be able to use inspiration on these skills.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Force Dash",
                          featType: "General",
                          prerequisites: "Base attack bonus +4, ability to cast 2nd-level arcane spells, ability to cast at least one arcane force spell.",
                          benefit: "As a swift action, you can sacrifice a prepared arcane force spell (or if you are a spontaneous caster, a spell slot of the same level as an arcane force spell you know) to give yourself an enhancement bonus to speed. The bonus gained is equal to 10 feet × the level of the spell sacrificed. The bonus applies to all forms of movement, and it lasts 1 round. If you charge while this bonus is in effect, you do not take the normal –2 penalty to AC until the start of your next turn.",
                          summary: "As a swift action, you can sacrifice a prepared arcane force spell (or if you are a spontaneous caster, a spell slot of the same level as an arcane force spell you know) to give yourself an…",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Formula Recollection",
                          featType: "General",
                          prerequisites: "Spellcraft 5 ranks, keen recollection class feature.",
                          benefit: "Once per day, you can record the formula for a spell that you saw being cast and identified with Spellcraft in the past 24 hours. This spell must be on the alchemist formula list.",
                          summary: "Once per day, you can record the formula for a spell that you saw being cast and identified with Spellcraft in the past 24 hours. This spell must be on the alchemist formula list.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Grabbing Drag (Combat)",
                          featType: "General",
                          prerequisites: "Grabbing Style, Improved Grapple; base attack bonus +8, brawler level 4th, or monk level 4th.",
                          benefit: "When you are using Grabbing Style, if you use the move grapple action, you can move both yourself and a single target that you’re grappling your full speed instead of half your speed. After you have done so, you can use a move action to move yourself and the target of your grapple half your speed without needing to attempt an additional combat maneuver check. You cannot use this feat if you are grappling two targets.",
                          summary: "When you are using Grabbing Style, if you use the move grapple action, you can move both yourself and a single target that you’re grappling your full speed instead of half your speed.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Grabbing Master (Combat)",
                          featType: "General",
                          prerequisites: "Grabbing Drag, Grabbing Style, Improved Grapple; base attack bonus +12, brawler level 8th, or monk level 8th.",
                          benefit: "When you are grabbing two opponents while using Grabbing Style, you can use your grapple to move or damage one or both opponents you are grappling, instead of just one.",
                          summary: "When you are grabbing two opponents while using Grabbing Style, you can use your grapple to move or damage one or both opponents you are grappling, instead of just one.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Grabbing Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Improved Grapple; base attack bonus +6, brawler’s flurry class feature, or flurry of blows class feature.",
                          benefit: "When you use this style, you do not take a –4 penalty on combat maneuver checks to grapple a foe with only one hand. Additionally, you do not lose your Dexterity bonus to AC while pinning an opponent.",
                          normal: "Without two hands free, you take a –4 penalty on the combat maneuver roll to grapple a foe. While pinning a foe, you lose your Dexterity bonus to AC.",
                          summary: "When you use this style, you do not take a –4 penalty on combat maneuver checks to grapple a foe with only one hand. Additionally, you do not lose your Dexterity bonus to AC while pinning an opponent.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Grasping Strike (Combat)",
                          featType: "General",
                          prerequisites: "Nature Magic or the ability to cast druid or ranger spells; Vital Strike, Knowledge (nature) 5 ranks.",
                          benefit: "When you use Vital Strike (or Improved Vital Strike or Greater Vital Strike), you cause the foliage in the area to reach out and entangle your foe (as the condition) if it fails a Reflex save (DC = 10 + 1/2 your character level + your Wisdom modifier). The effect lasts for 1 minute or until the enemy breaks free with a successful Strength check or an Escape Artist check (DC = the effect’s saving throw DC), whichever comes first. You can use this benefit a number of times per day equal to your Wisdom modifier (minimum 1). You can choose to use this ability as a free action after you hit the enemy with the attack. This is a supernatural ability.",
                          summary: "When you use Vital Strike (or Improved Vital Strike or Greater Vital Strike), you cause the foliage in the area to reach out and entangle your foe (as the condition) if it fails a Reflex save (DC =…",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Dirge of Doom",
                          featType: "General",
                          prerequisites: "Improved Dirge of Doom, ability to perform dirge of doom.",
                          benefit: "The effect of your dirge of doom lingers with a target for 2 rounds after the creature leaves the dirge’s area of effect. If you use your dirge on a creature that is shaken, it becomes frightened. If you use it on a creature that is frightened, it becomes panicked. Once affected by this feat, a creature cannot be affected by it again for 24 hours.",
                          normal: "Fear effects on a creature end immediately once it leaves the area of dirge of doom. A fear effect cannot be made more extreme by dirge of doom and can be changed only to the frightened condition by the Improved Dirge of Doom feat.",
                          summary: "The effect of your dirge of doom lingers with a target for 2 rounds after the creature leaves the dirge’s area of effect. If you use your dirge on a creature that is shaken, it becomes frightened.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Skald's Vigor",
                          featType: "General",
                          prerequisites: "Skald’s Vigor, Perform (song) 10 ranks.",
                          benefit: "Your allies share in the fast healing granted by your Skald’s Vigor, starting in the round when you begin your performance. They must be able to hear the performance. If you stop maintaining the song, the fast healing ends immediately, even if other effects of your song linger.",
                          summary: "Your allies share in the fast healing granted by your Skald’s Vigor, starting in the round when you begin your performance. They must be able to hear the performance.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Weapon of the Chosen (Combat)",
                          featType: "General",
                          prerequisites: "Improved Weapon of the Chosen, Weapon Focus with deity’s favored weapon, Weapon of the Chosen, worship and receive spells from a deity.",
                          benefit: "When you use your deity’s favored weapon to attempt a single attack with the attack action, you roll two dice for your attack roll and take the higher result. You do not need to use your Weapon of the Chosen feat to gain this feat’s benefit. As usual, the reroll does not apply to any confirmation rolls.",
                          summary: "When you use your deity’s favored weapon to attempt a single attack with the attack action, you roll two dice for your attack roll and take the higher result.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Gruesome Slaughter (Combat)",
                          featType: "General",
                          prerequisites: "Intimidating Prowess, Killing Flourish, Intimidate 11 ranks, slayer level 11th.",
                          benefit: "Creatures you demoralize by using the Killing Flourish feat must succeed at a Fortitude save (DC = 10 + 1/2 your character level + the higher of your Strength or Dexterity modifier) or become sickened for 1 minute.",
                          summary: "Creatures you demoralize by using the Killing Flourish feat must succeed at a Fortitude save (DC = 10 + 1/2 your character level + the higher of your Strength or Dexterity modifier) or become…",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Awesome Blow (Combat)",
                          featType: "General",
                          prerequisites: "Str 13; Awesome Blow or awesome blow class feature; Power Attack",
                          benefit: "You receive a +2 bonus on checks to perform an awesome blow combat maneuver. You also gain a +2 bonus to your combat maneuver defense whenever an opponent tries to perform an awesome blow combat maneuver against you. Whenever you successfully perform an awesome blow combat maneuver, your opponent’s movement provokes attacks of opportunity from all your allies (but not you).",
                          normal: "Creatures moved by awesome blow do not provoke attacks of opportunity.",
                          summary: "You receive a +2 bonus on checks to perform an awesome blow combat maneuver.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Dirge of Doom",
                          featType: "General",
                          prerequisites: "Ability to perform dirge of doom.",
                          benefit: "The range of your dirge of doom ability is extended to 60 feet. Additionally, if a creature is shaken from another effect, the effect of your dirge of doom is changed to frightened for that specific creature. This benefit cannot cause a creature to become panicked, even if a target is already frightened from another effect.",
                          normal: "The range of dirge of doom is 30 feet. A creature that is already shaken cannot become frightened by dirge of doom. Once affected by this feat, a creature cannot be affected by it again for 24 hours.",
                          summary: "The range of your dirge of doom ability is extended to 60 feet.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Duck and Cover (Teamwork)",
                          featType: "General",
                          prerequisites: "Duck and Cover.",
                          benefit: "Whenever you use Duck and Cover, your ally has evasion or improved evasion, and your ally’s saving throw roll succeeds, half of the damage you would have taken is transferred to your ally. (This damage is not reduced by the ally’s evasion or improved evasion.)",
                          summary: "Whenever you use Duck and Cover, your ally has evasion or improved evasion, and your ally’s saving throw roll succeeds, half of the damage you would have taken is transferred to your ally.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Flexible Wizardry",
                          featType: "General",
                          prerequisites: "Flexible Wizardry, Spell Mastery, wizard level 8th.",
                          benefit: "When you use Flexible Wizardry, you can flexibly prepare a number of spell slots equal to your Intelligence modifier + 4. Furthermore, you can finalize one of these slots with a standard action instead of a fullround action.",
                          summary: "When you use Flexible Wizardry, you can flexibly prepare a number of spell slots equal to your Intelligence modifier + 4.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Spell Sharing (Teamwork)",
                          featType: "General",
                          prerequisites: "Ability to acquire an animal companion, eidolon, familiar, or special mount.",
                          benefit: "When you are adjacent to or sharing a square with your companion creature and that companion creature has this feat, you can cast a spell on yourself and divide the duration evenly between yourself and the companion creature. You can use this feat only on spells with a duration of at least 2 rounds. For example, you could cast bull’s strength on yourself, and instead of the spell lasting 1 minute per level on yourself, it lasts 5 rounds per level on yourself and 5 rounds per level on your companion. Once the spell is cast, you and the companion creature can move farther apart without ending the effect.",
                          summary: "When you are adjacent to or sharing a square with your companion creature and that companion creature has this feat, you can cast a spell on yourself and divide the duration evenly between yourself…",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Studied Combatant",
                          featType: "General",
                          prerequisites: "Int 13, Amateur Investigator, Studied Combatant, base attack bonus +8, 1 rank in at least one Knowledge skill, no levels in a class that has the inspiration class feature.",
                          benefit: "Your bonuses for Studied Combatant increase to a +4 insight bonus on melee attack rolls and a +4 bonus on damage rolls. This feat otherwise works like the Studied Combatant feat.",
                          summary: "Your bonuses for Studied Combatant increase to a +4 insight bonus on melee attack rolls and a +4 bonus on damage rolls. This feat otherwise works like the Studied Combatant feat.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Swap Places (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Swap Places.",
                          benefit: "When you and your ally use Swap Places, your ally can be up to one size larger or smaller than you, and your movement into the ally’s square does not provoke an attack of opportunity. If your ally cannot fit into the space you had been occupying and there are no available adjacent squares to accommodate the rest of the ally’s space, the ally must squeeze. Alternatively, as part of its movement, the ally can attempt a bull rush combat maneuver against a creature that occupies a space your ally would occupy, but this bull rush cannot move the creature more than 5 feet.",
                          normal: "Using Swap Places requires you and your ally to be the same size, and your movement into the ally’s square provokes attacks of opportunity.",
                          summary: "When you and your ally use Swap Places, your ally can be up to one size larger or smaller than you, and your movement into the ally’s square does not provoke an attack of opportunity.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Weapon of the Chosen (Combat)",
                          featType: "General",
                          prerequisites: "Weapon Focus with your deity’s favored weapon, Weapon of the Chosen.",
                          benefit: "This feat acts as Weapon of the Chosen, except you gain the benefits on all attacks until the start of your next turn. Your attacks gain a single alignment component of your deity—either chaotic, evil, good, or lawful—for the purpose of overcoming damage reduction. If your deity is neutral with no other alignment components, your attacks instead overcome damage reduction as though your weapon were both cold iron and silver.",
                          summary: "This feat acts as Weapon of the Chosen, except you gain the benefits on all attacks until the start of your next turn.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Insightful Delivery",
                          featType: "General",
                          prerequisites: "Poison use class feature, studied strike +4d6.",
                          benefit: "When you use a poisoned weapon to attempt an attack in conjunction with studied strike, the DC to resist the poison increases by half the number of your studied strike dice.",
                          summary: "When you use a poisoned weapon to attempt an attack in conjunction with studied strike, the DC to resist the poison increases by half the number of your studied strike dice.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Inspired Alchemy",
                          featType: "General",
                          prerequisites: "Ability to create 2nd-level extracts, alchemy class feature, inspiration† class feature.",
                          benefit: "You can recreate an extract that you consumed during the past hour. You must spend 10 minutes and expend a number of uses of inspiration equal to the level of the extract’s formula to do so. When you recreate an extract in this way, it does not count toward the number of extracts you can prepare in a day.",
                          summary: "You can recreate an extract that you consumed during the past hour. You must spend 10 minutes and expend a number of uses of inspiration equal to the level of the extract’s formula to do so.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Inspired Strike",
                          featType: "General",
                          prerequisites: "Studied combat class feature.",
                          benefit: "When you damage a creature by using the studied combat class feature, you can expend one use of inspiration to roll an inspiration die and increase the damage by the number rolled.",
                          summary: "When you damage a creature by using the studied combat class feature, you can expend one use of inspiration to roll an inspiration die and increase the damage by the number rolled.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Inspired by Fear",
                          featType: "General",
                          prerequisites: "Ability to perform dirge of doom.",
                          benefit: "Allies in the area of your dirge of doom receive a +4 morale bonus on saving throws against fear effects. At least one enemy must be in the dirge’s area and become shaken by the dirge for you and your allies to receive this bonus.",
                          summary: "Allies in the area of your dirge of doom receive a +4 morale bonus on saving throws against fear effects.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Intercept Charge (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When an opponent charges your ally with this feat, as an immediate action you can move up to your speed toward any square in the path of the charge. If you end your movement in the path of the charge, the opponent must stop when it becomes adjacent to you and then attack you instead of your ally. Your movement from using this feat counts toward your movement on your next turn.",
                          summary: "When an opponent charges your ally with this feat, as an immediate action you can move up to your speed toward any square in the path of the charge.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Intimidating Performance",
                          featType: "General",
                          prerequisites: "Ability to start a performance (or raging song) as a move action, bardic performance or raging song† class feature.",
                          benefit: "When you start a performance (or a raging song) as a move or swift action, you can use a standard action to demoralize a foe (Core Rulebook 99), attempting a Perform check appropriate to your performance in place of the Intimidate check. Your performance must be one with an audible component. If you can start a performance as a swift action and you have the Dazzling Display feat, you can gain the benefit of Dazzling Display by succeeding at a Perform check in place of an Intimidate check.",
                          summary: "When you start a performance (or a raging song) as a move or swift action, you can use a standard action to demoralize a foe (Core Rulebook 99), attempting a Perform check appropriate to your…",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Jabbing Dancer (Combat)",
                          featType: "General",
                          prerequisites: "Dodge, Improved Unarmed Strike, Jabbing Style, Mobility; base attack bonus +9, brawler level 5th, or monk level 5th.",
                          benefit: "Each time you hit with an unarmed strike while using Jabbing Style, you can move 5 feet without provoking an attack of opportunity as long as you move to a space adjacent to the opponent you hit with the unarmed strike. If you use this feat, you cannot take a 5-foot step during your next turn.",
                          summary: "Each time you hit with an unarmed strike while using Jabbing Style, you can move 5 feet without provoking an attack of opportunity as long as you move to a space adjacent to the opponent you hit with…",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Jabbing Master (Combat)",
                          featType: "General",
                          prerequisites: "Dodge, Improved Unarmed Strike, Jabbing Dancer, Jabbing Style, Mobility, Power Attack; base attack bonus +12, brawler level 8th, or monk level 8th.",
                          benefit: "While using Jabbing Style, the extra damage you deal when you hit a single target with two unarmed strikes increases to 2d6, and the extra damage when you hit a single target with three or more unarmed strikes increases to 4d6.",
                          summary: "While using Jabbing Style, the extra damage you deal when you hit a single target with two unarmed strikes increases to 2d6, and the extra damage when you hit a single target with three or more…",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Jabbing Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike; base attack bonus +6, brawler’s flurry class feature, or flurry of blows class feature.",
                          benefit: "When you hit a target with an unarmed strike and you have hit that target with an unarmed strike previously that round, you deal an extra 1d6 points of damage to that target.",
                          summary: "When you hit a target with an unarmed strike and you have hit that target with an unarmed strike previously that round, you deal an extra 1d6 points of damage to that target.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Kick Up (Combat)",
                          featType: "General",
                          prerequisites: "Dex 12, Acrobatic, Acrobatics 1 rank; slayer level 1st or swashbuckler level 1st.",
                          benefit: "As long as you have at least one hand free, you can use a swift action to retrieve a single unattended item or weapon that weighs 10 pounds or less from the ground, either in your square or in any adjacent square not occupied or threatened by an enemy. Additionally, when you kick up a weapon and attempt a feint before the end of your turn, you receive a +2 circumstance bonus on the feint attempt.",
                          summary: "As long as you have at least one hand free, you can use a swift action to retrieve a single unattended item or weapon that weighs 10 pounds or less from the ground, either in your square or in any…",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Killing Flourish (Combat)",
                          featType: "General",
                          prerequisites: "Intimidating Prowess, Intimidate 4 ranks, slayer level 4th.",
                          benefit: "When you reduce your target to below 0 hit points with a melee attack, as a swift action you can attempt an Intimidate check to demoralize all foes within 30 feet who can see your attack.",
                          summary: "When you reduce your target to below 0 hit points with a melee attack, as a swift action you can attempt an Intimidate check to demoralize all foes within 30 feet who can see your attack.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Lay of the Land",
                          featType: "General",
                          prerequisites: "Animal focus class feature, wild empathy class feature.",
                          benefit: "You gain a favored terrain as the ranger ability of the same name, though the favored terrain bonuses you receive do not increase with your level. This ability counts as the favored terrain class feature for the purposes of prerequisites and other effects.",
                          special: "You can select this feat up to four times. Each time you take it, you apply it to a different terrain. Unlike with the ranger’s favored terrain class feature, the bonuses you gain for previously chosen terrains do not increase.",
                          summary: "You gain a favored terrain as the ranger ability of the same name, though the favored terrain bonuses you receive do not increase with your level.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Lunging Spell Touch",
                          featType: "General",
                          prerequisites: "Spellcraft 6 ranks.",
                          benefit: "You can increase the reach of your spells’ melee touch attacks by 5 feet until the end of your turn by taking a –2 penalty to your AC until your next turn. You must decide to use this ability before you attempt any attacks on your turn.",
                          summary: "You can increase the reach of your spells’ melee touch attacks by 5 feet until the end of your turn by taking a –2 penalty to your AC until your next turn.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Manifested Blood",
                          featType: "General",
                          prerequisites: "Cha 13; draconic or elemental bloodline.",
                          benefit: "Once per day, you can surround yourself with the element associated with your bloodline. For a number of rounds equal to your Charisma modifier (minimum 1), you gain resistance 5 to that energy type, and all creatures that attempt a natural weapon attack or an unarmed strike against you take 2 points of damage of that same energy type. If you already have resistance to that energy type, the resistance increases by 5.",
                          special: "You can take this feat multiple times. Each time you do, you gain an additional daily use of this feat.",
                          summary: "Once per day, you can surround yourself with the element associated with your bloodline.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Merciless Butchery (Combat)",
                          featType: "General",
                          prerequisites: "Dastardly Finish, sneak attack +5d6, studied target class feature.",
                          benefit: "As a standard action that does not provoke attacks of opportunity, you can attempt a coup de grace against a cowering, helpless, or stunned opponent that you have designated as your studied target.",
                          summary: "As a standard action that does not provoke attacks of opportunity, you can attempt a coup de grace against a cowering, helpless, or stunned opponent that you have designated as your studied target.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Nature Magic",
                          featType: "General",
                          prerequisites: "Knowledge (nature) 1 rank.",
                          benefit: "You gain know direction as a constant spell-like ability, and can choose another druid orison you can cast as a spell-like ability once per day. Your caster level for both of these spell-like abilities is equal to your character level.",
                          summary: "You gain know direction as a constant spell-like ability, and can choose another druid orison you can cast as a spell-like ability once per day.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Orator",
                          featType: "General",
                          prerequisites: "Skill Focus (Linguistics).",
                          benefit: "You can use a Linguistics check in place of a Bluff check to tell a falsehood or conceal information, in place of a Diplomacy check to change the attitude of a creature, or in place of an Intimidate check to force a creature to cooperate. You must deliver your attempt in a language the target understands.",
                          summary: "You can use a Linguistics check in place of a Bluff check to tell a falsehood or conceal information, in place of a Diplomacy check to change the attitude of a creature, or in place of an Intimidate…",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Pack Flanking (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, ability to acquire an animal companion.",
                          benefit: "When you and your companion creature have this feat, your companion creature is adjacent to you or sharing your square, and you both threaten the same opponent, you are both considered to be flanking that opponent, regardless of your actual positioning.",
                          normal: "You must be positioned opposite an ally to flank an opponent.",
                          summary: "When you and your companion creature have this feat, your companion creature is adjacent to you or sharing your square, and you both threaten the same opponent, you are both considered to be flanking…",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Paralyzing Strike (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Wis 13, Improved Unarmed Strike, base attack bonus +14.",
                          benefit: "You must declare that you are using this feat before you make your attack roll (thus, a failed attack roll ruins the attempt). Paralyzing Strike forces a foe damaged by your unarmed attack to attempt a Fortitude saving throw (DC = 10 + 1/2 your character level + your Wisdom modifier), in addition to dealing damage normally. A defender who fails this saving throw is paralyzed for 1 round, until just before your next turn. You can attempt to use Paralyzing Strike once per day for every 4 character levels you have, but no more than once per round. Constructs, incorporeal creatures, plants, undead, and creatures that are immune to critical hits cannot be affected by this ability.",
                          summary: "You must declare that you are using this feat before you make your attack roll (thus, a failed attack roll ruins the attempt).",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Pommel Strike Deed (Panache)",
                          featType: "General",
                          prerequisites: "Amateur Swashbuckler or panache class feature; base attack bonus +3.",
                          benefit: "You can spend 1 panache point to make a melee attack with the pommel of a light or one-handed piercing melee weapon as a standard action. You make this attack as if you were using the weapon normally (including any bonuses gained from the swashbuckler’s finesse class feature, Weapon Finesse, or other similar feats and effects), but you deal 1d6 bludgeoning damage (or 1d4 if you are Small) instead of the weapon’s normal damage. Regardless of your size, the critical threat range and critical multiplier of this attack are 20/×2, and they are not affected by Improved Critical, the keen weapon special ability, or similar effects. If the attack hits, you can attempt a combat maneuver check to knock the target prone as a free action.",
                          summary: "You can spend 1 panache point to make a melee attack with the pommel of a light or one-handed piercing melee weapon as a standard action.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Pummeling Bully (Combat)",
                          featType: "General",
                          prerequisites: "Improved Reposition, Improved Trip, Improved Unarmed Strike, Pummeling Style; base attack bonus +9, brawler level 5th, or monk level 5th.",
                          benefit: "When you use Pummeling Style to make an entire full attack or flurry of blows against a single target, if you hit with any of your attacks, you can attempt a reposition or trip combat maneuver check as a free action.",
                          summary: "When you use Pummeling Style to make an entire full attack or flurry of blows against a single target, if you hit with any of your attacks, you can attempt a reposition or trip combat maneuver check…",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Pummeling Charge (Combat)",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike, Pummeling Style; base attack bonus +12, brawler level 8th, or monk level 8th.",
                          benefit: "You can charge and make a full attack or flurry of blows at the end of your charge as part of the charge action. You can use Pummeling Charge in this way only if all of your attacks qualify for using Pummeling Style against a single target.",
                          normal: "You cannot make a full attack on a charge.",
                          summary: "You can charge and make a full attack or flurry of blows at the end of your charge as part of the charge action.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Pummeling Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike; base attack bonus +6, brawler’s flurry class feature, or flurry of blows class feature.",
                          benefit: "Whenever you use a full-attack action or flurry of blows to make multiple attacks against a single opponent with unarmed strikes, total the damage from all hits before applying damage reduction. This ability works only with unarmed strikes, no matter what other abilities you might possess.",
                          summary: "Whenever you use a full-attack action or flurry of blows to make multiple attacks against a single opponent with unarmed strikes, total the damage from all hits before applying damage reduction.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Quicken Blessing",
                          featType: "General",
                          prerequisites: "Access to a blessing’s major power, blessings class feature.",
                          benefit: "Choose one of your blessings that normally requires a standard action to use. You can expend two of your daily uses of blessings to deliver that blessing (regardless of whether it’s a minor or major effect) as a swift action instead.",
                          special: "You can take this feat multiple times. Each time you do, you choose a different blessing.",
                          summary: "Choose one of your blessings that normally requires a standard action to use.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Rage Casting",
                          featType: "General",
                          prerequisites: "Blood casting class feature.",
                          benefit: "When you cast a bloodrager spell, as a swift action you can sacrifice some of your life force to augment the spell’s potency. You can opt to take up to 1d6 points of damage per spell level of the spell you are casting, choosing the amount of dice before rolling. You cannot overcome this damage in any way, and it cannot be taken from temporary hit points. For each of these damage dice you roll, the DC of the spell you are casting increases by 1.",
                          summary: "When you cast a bloodrager spell, as a swift action you can sacrifice some of your life force to augment the spell’s potency.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Raging Absorption",
                          featType: "General",
                          prerequisites: "Ability to cast 2nd-level bloodrager spells, bloodrage class feature.",
                          benefit: "While you are bloodraging, if you successfully save against a damaging arcane spell that either targets you or includes you in its area, and you take no damage from that spell, you can absorb a portion of its arcane energy to replenish your bloodrage. You regain 1 round of bloodrage for every 2 levels of the spell you successfully saved against. You cannot use this feat to regain more rounds of bloodrage each day than your daily maximum number of rounds, nor can you ever exceed your maximum number of rounds.",
                          summary: "While you are bloodraging, if you successfully save against a damaging arcane spell that either targets you or includes you in its area, and you take no damage from that spell, you can absorb a…",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Raging Blood",
                          featType: "General",
                          prerequisites: "Eldritch Heritage or sorcerer bloodline class feature.",
                          benefit: "You gain the 1st-level bloodrager bloodline power for your bloodline. In addition, you gain the ability to enter a state similar to (but less powerful than) a bloodrager’s bloodrage. You can enter this lesser bloodrage twice per day, for up to 4 rounds. During this lesser bloodrage, you gain a +2 morale bonus to Strength and Constitution, and no morale bonus on Will saving throws. Otherwise, this benefit is the same as the bloodrage class feature. If you have more than one bloodline, you choose the bloodline this applies to upon taking the feat.",
                          summary: "You gain the 1st-level bloodrager bloodline power for your bloodline. In addition, you gain the ability to enter a state similar to (but less powerful than) a bloodrager’s bloodrage.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Raging Concentration",
                          featType: "General",
                          prerequisites: "Blood casting class feature.",
                          benefit: "While in a bloodrage, you gain a bonus on concentration checks equal to the morale bonus granted to your Constitution by the bloodrage.",
                          summary: "While in a bloodrage, you gain a bonus on concentration checks equal to the morale bonus granted to your Constitution by the bloodrage.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ranged Study",
                          featType: "General",
                          prerequisites: "Weapon Focus with the chosen weapon, studied combat class feature.",
                          benefit: "Choose one kind of ranged weapon. You gain the bonuses for studied combat with your chosen weapon and can use studied strike with your chosen weapon as long as the target of your studied strike is within 30 feet of you.",
                          normal: "You gain the bonuses for studied combat and can use studied strike only with melee weapons.",
                          summary: "Choose one kind of ranged weapon. You gain the bonuses for studied combat with your chosen weapon and can use studied strike with your chosen weapon as long as the target of your studied strike is…",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await seedFeatsB()
    }
}
