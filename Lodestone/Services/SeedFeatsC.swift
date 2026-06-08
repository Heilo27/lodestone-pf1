import Foundation

extension SeedDataBuilder {
    func seedFeatsC() async throws {
        try await db.insertFeat(
        .make("Foment the Blood",
                          featType: "General",
                          prerequisites: "Channel energy class feature, orc.",
                          benefit: "When you channel energy, instead of creating its normal effect, you can give orcs a bonus on weapon damage and critical hit confirmation rolls until your next turn. This bonus is equal to the number of dice your channeled energy normally heals or harms. Your channel has its normal effect on other creatures in the area.",
                          summary: "When you channel energy, instead of creating its normal effect, you can give orcs a bonus on weapon damage and critical hit confirmation rolls until your next turn.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fortunate One",
                          featType: "General",
                          prerequisites: "Adaptable luck racial trait, halfling.",
                          benefit: "The number of times per day you can use the adaptable luck racial trait increases by 1.",
                          summary: "The number of times per day you can use the adaptable luck racial trait increases by 1.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Giant Killer (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Cleave, Goblin Cleaver, Orc Hewer, Power Attack, Strike Back, base attack bonus +11, dwarf.",
                          benefit: "This functions as Goblin Cleaver, but your additional attacks can be made against creatures one size category larger than you or smaller. In addition, any such attacks made against humanoids (giant) gain a +2 circumstance bonus on attack rolls.",
                          summary: "This functions as Goblin Cleaver, but your additional attacks can be made against creatures one size category larger than you or smaller.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Giant Steps",
                          featType: "General",
                          prerequisites: "Duergar, slow and steady racial trait.",
                          benefit: "When your size increases to Large or larger, your base speed increases by 20 feet. This increase applies only if the effect that changed your size does not alter your speed.",
                          summary: "When your size increases to Large or larger, your base speed increases by 20 feet. This increase applies only if the effect that changed your size does not alter your speed.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Gloom Sight",
                          featType: "General",
                          prerequisites: "Fetchling.",
                          benefit: "You gain darkvision 90 ft., but gain the light sensitivity weakness.",
                          summary: "You gain darkvision 90 ft., but gain the light sensitivity weakness.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Gloom Strike (Combat)",
                          featType: "General",
                          prerequisites: "Blind-Fight, fetchling.",
                          benefit: "When you are within an area of dim light or darkness, you gain a +1 bonus on attack rolls against enemies that are also within dim light or darkness.",
                          summary: "When you are within an area of dim light or darkness, you gain a +1 bonus on attack rolls against enemies that are also within dim light or darkness.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Gnome Weapon Focus (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1, gnome, proficient with all martial weapons.",
                          benefit: "You gain a +1 bonus on attack rolls with gnome weapons (weapons with \"gnome\" in the title).",
                          summary: "You gain a +1 bonus on attack rolls with gnome weapons (weapons with \"gnome\" in the title).",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Goblin Cleaver (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Cleave, Power Attack, dwarf.",
                          benefit: "When using Cleave or Great Cleave, if your initial attack hits, you may take your additional attacks against any creature smaller than you that you threaten; your targets need not be adjacent to one another. Additional attacks you make against humanoids (goblinoid) gain a +2 circumstance bonus on attack rolls.",
                          summary: "When using Cleave or Great Cleave, if your initial attack hits, you may take your additional attacks against any creature smaller than you that you threaten; your targets need not be adjacent to one…",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Goblin Gunslinger (Combat)",
                          featType: "General",
                          prerequisites: "Goblin.",
                          benefit: "You can wield Medium firearms without taking the penalty for an inappropriately sized weapon.",
                          normal: "You take a –2 penalty when using an inappropriately sized weapon.",
                          summary: "You can wield Medium firearms without taking the penalty for an inappropriately sized weapon.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Great Hatred (Combat)",
                          featType: "General",
                          prerequisites: "Gnome, hatred racial trait.",
                          benefit: "You gain an additional +1 bonus on melee and thrown weapon attacks against targets of your hatred racial trait.",
                          summary: "You gain an additional +1 bonus on melee and thrown weapon attacks against targets of your hatred racial trait.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Channel Force",
                          featType: "General",
                          prerequisites: "Channel Force, Improved Channel Force, aasimar, channel energy 6d6.",
                          benefit: "When using Improved Channel Force, you can affect all creatures in a 30-foot-radius burst.",
                          summary: "When using Improved Channel Force, you can affect all creatures in a 30-foot-radius burst.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Drow Nobility",
                          featType: "General",
                          prerequisites: "Cha 13, Drow Nobility, Improved Drow Nobility, able to use drow spell-like abilities, drow.",
                          benefit: "Your detect magic spell-like ability is now constant. You may use your dancing lights, deeper darkness, faerie fire, feather fall, and levitate spell-like abilities at will.",
                          summary: "Your detect magic spell-like ability is now constant. You may use your dancing lights, deeper darkness, faerie fire, feather fall, and levitate spell-like abilities at will.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Grudge Fighter (Combat)",
                          featType: "General",
                          prerequisites: "Orc.",
                          benefit: "You gain a +1 morale bonus on attack and damage rolls made against any creature that attacked you in the current combat.",
                          summary: "You gain a +1 morale bonus on attack and damage rolls made against any creature that attacked you in the current combat.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Guardian of the Wild",
                          featType: "General",
                          prerequisites: "Attuned to the Wild, elf.",
                          benefit: "When you are in a terrain type you have selected the Attuned to the Wild feat for, you gain a +2 dodge bonus to Armor Class. If you are in an area that qualifies as more than one kind of terrain, these bonuses do not stack; you receive the bonus for only one of the terrain types.",
                          summary: "When you are in a terrain type you have selected the Attuned to the Wild feat for, you gain a +2 dodge bonus to Armor Class.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Half-Drow Paragon",
                          featType: "General",
                          prerequisites: "Drow-blooded and drow magic racial traits, half-elf.",
                          benefit: "You count as a drow for any effects that relate to race. Furthermore, the spell-like abilities granted to you by your drow magic racial trait count as drow spell-like abilities for the purposes of any feat prerequisites.",
                          summary: "You count as a drow for any effects that relate to race. Furthermore, the spell-like abilities granted to you by your drow magic racial trait count as drow spell-like abilities for the purposes of…",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Hard-Headed (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1, dwarf.",
                          benefit: "You gain a +1 bonus on attack rolls and combat maneuver checks made using a helmet. You receive a +2 bonus on saves against spells and special abilities that cause you to become staggered or stunned.",
                          summary: "You gain a +1 bonus on attack rolls and combat maneuver checks made using a helmet. You receive a +2 bonus on saves against spells and special abilities that cause you to become staggered or stunned.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Heavenly Radiance",
                          featType: "General",
                          prerequisites: "Aasimar, daylight spell-like ability, sufficiently high level (see below).",
                          benefit: "You gain one additional use per day of daylight. Choose one spell from the table below; by expending a use of daylight, you may use this spell as a spell-like ability. To select a spell, you must meet the minimum character level for its listing in the table. The save DC for this spell is Charisma-based. Spell-Like Ability Minimum Character Level Flare burst 1st Wake of light 3rd Searing light 5th Wandering star motes 7th Sunbeam (one beam only) 9th",
                          special: "You may take this feat multiple times. Each time you select it, you gain an additional use of daylight and may select another spell from the table.",
                          summary: "You gain one additional use per day of daylight. Choose one spell from the table below; by expending a use of daylight, you may use this spell as a spell-like ability.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Heroic Will",
                          featType: "General",
                          prerequisites: "Iron Will, base Will save +4, human.",
                          benefit: "Once per day as a standard action, you may attempt a new saving throw against a harmful condition requiring a Will save that is affecting you. If you are dominated, controlled, or cannot take an action because of the effect against which you are trying to make a new saving throw, you can make this saving throw at the start of the turn as no action, but on a success, your turn ends. You cannot use this feat to remove instantaneous effects, effects that do not require a Will save, or effects that do not allow a saving throw.",
                          summary: "Once per day as a standard action, you may attempt a new saving throw against a harmful condition requiring a Will save that is affecting you.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Hobgoblin Discipline",
                          featType: "General",
                          prerequisites: "Base attack bonus +1, hobgoblin.",
                          benefit: "While you are within 30 feet of at least two other hobgoblins, you gain a +1 morale bonus on saving throws.",
                          summary: "While you are within 30 feet of at least two other hobgoblins, you gain a +1 morale bonus on saving throws.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Horde Charge (Teamwork)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1, half-orc or orc.",
                          benefit: "When charging during the same round as an ally with this feat, you gain a +2 bonus on attack and damage rolls in addition to the normal bonus for charging. If you can make multiple attacks on a charge, this bonus only applies to the first attack.",
                          summary: "When charging during the same round as an ally with this feat, you gain a +2 bonus on attack and damage rolls in addition to the normal bonus for charging.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Human Spirit",
                          featType: "General",
                          prerequisites: "Half-elf.",
                          benefit: "You receive 1 bonus skill rank. Whenever you gain another Hit Die, you gain an additional skill rank. You cannot gain more than four skill ranks in this way.",
                          special: "You can only take this feat at 1st level. If you take this feat, you cannot take the Elven Spirit feat.",
                          summary: "You receive 1 bonus skill rank. Whenever you gain another Hit Die, you gain an additional skill rank. You cannot gain more than four skill ranks in this way.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Huntmaster",
                          featType: "General",
                          prerequisites: "Handle Animal 1 rank; either the animal companion, divine bond (mount), or mount class feature; human.",
                          benefit: "If you have the animal companion class feature, pick one of the following types of animal companions that this feat affects: bird, dog, small cat, or horse. If you have the divine bond (mount) or mount class feature, this feat always affects horses. You gain a +2 bonus on Handle Animal and Knowledge (nature) checks with creatures of that type of animal. Furthermore, you are treated as one level higher when determining the abilities of your animal companion or mount, as long as it is of the chosen type.",
                          summary: "If you have the animal companion class feature, pick one of the following types of animal companions that this feat affects: bird, dog, small cat, or horse.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Hydraulic Maneuver",
                          featType: "General",
                          prerequisites: "Hydraulic push spell-like ability, undine.",
                          benefit: "You may use hydraulic push to attempt a bull rush, disarm, dirty trick (blind or dazzle, see ), or trip combat maneuver. Each time you use hydraulic push, you must decide which of the allowed combat maneuvers you want to perform. You may use this feat with your hydraulic push racial spell-like ability, your class-granted use of hydraulic push, or any hydraulic push spells you cast, but not with magic items or other external sources that use that spell.",
                          normal: "Hydraulic push can only be used to make a bull rush combat maneuver.",
                          summary: "You may use hydraulic push to attempt a bull rush, disarm, dirty trick (blind or dazzle, see ), or trip combat maneuver.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Channel Force",
                          featType: "General",
                          prerequisites: "Channel Force, aasimar, channel energy 4d6.",
                          benefit: "When using Channel Force, you can affect all creatures in a 60-foot line or a 30-foot cone-shaped burst. You must choose to either push or pull all creatures within the affected area that fail their saves.",
                          summary: "When using Channel Force, you can affect all creatures in a 60-foot line or a 30-foot cone-shaped burst.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Dark Sight",
                          featType: "General",
                          prerequisites: "Dark Sight, Gloom Sight, fetchling.",
                          benefit: "You gain the see in darkness ability and lose the light sensitivity weakness, but gain the light blindness weakness.",
                          summary: "You gain the see in darkness ability and lose the light sensitivity weakness, but gain the light blindness weakness.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Drow Nobility",
                          featType: "General",
                          prerequisites: "Cha 13, Drow Nobility, able to use drow spell-like abilities, drow.",
                          benefit: "You may use your dancing lights, faerie fire, feather fall, and levitate spell-like abilities twice per day. Your darkness spell-like ability instead becomes deeper darkness, which you may use twice per day.",
                          summary: "You may use your dancing lights, faerie fire, feather fall, and levitate spell-like abilities twice per day.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Improvisation",
                          featType: "General",
                          prerequisites: "Int 13, Fast Learner, Improvisation, human.",
                          benefit: "Your nonproficiency penalty with weapons, armor, and shields is halved. In addition, the bonus on all skill checks for skills you have no ranks in increases to +4 instead of +2.",
                          summary: "Your nonproficiency penalty with weapons, armor, and shields is halved. In addition, the bonus on all skill checks for skills you have no ranks in increases to +4 instead of +2.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Low Blow (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +4, halfling, low-blow racial trait.",
                          benefit: "Your bonus to confirm critical hits against opponents larger than yourself improves to +2. Furthermore, once per day, after you fail to hit with a critical hit confirmation roll, you can reroll the confirmation roll, but must take the new result even if it is worse.",
                          summary: "Your bonus to confirm critical hits against opponents larger than yourself improves to +2.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Surprise Follow-Through (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Cleave, Great Cleave, Power Attack, Surprise Follow Through, base attack bonus +8.",
                          benefit: "When using Great Cleave, each opponent you attack on your turn (other than the first) is denied his Dexterity bonus against you.",
                          summary: "When using Great Cleave, each opponent you attack on your turn (other than the first) is denied his Dexterity bonus against you.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Umbral Scion",
                          featType: "General",
                          prerequisites: "Cha 13, Wis 13, Drow Nobility, Greater Drow Nobility, Improved Drow Nobility, Umbral Scion, able to use drow spell-like abilities, drow.",
                          benefit: "You may use dispel magic, divine favor, and suggestion once per day as spell-like abilities. Your caster level is equal to your character level.",
                          summary: "You may use dispel magic, divine favor, and suggestion once per day as spell-like abilities. Your caster level is equal to your character level.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improvisation",
                          featType: "General",
                          prerequisites: "Int 13, Fast Learner, human.",
                          benefit: "You gain a +2 bonus on all skill checks for skills you have no ranks in. Furthermore, you can use all skills designated \"trained only\" untrained.",
                          summary: "You gain a +2 bonus on all skill checks for skills you have no ranks in. Furthermore, you can use all skills designated \"trained only\" untrained.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Incremental Elemental Assault",
                          featType: "General",
                          prerequisites: "Suli.",
                          benefit: "You may use your elemental assault ability in 1-round increments, up to a maximum number of rounds per day equal to your character level. These rounds do not have to be consecutive. Activating the ability is a swift action; ending it is a free action.",
                          normal: "You can use elemental assault once per day. It lasts a number of rounds equal to your class level.",
                          summary: "You may use your elemental assault ability in 1-round increments, up to a maximum number of rounds per day equal to your character level. These rounds do not have to be consecutive.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Inexplicable Luck",
                          featType: "General",
                          prerequisites: "Defiant Luck, human.",
                          benefit: "Once per day, as a free action before a roll is made, you gain a +8 bonus on any single d20 roll. You can also use this ability after the roll is made, but if you do, this bonus is reduced to +4.",
                          summary: "Once per day, as a free action before a roll is made, you gain a +8 bonus on any single d20 roll. You can also use this ability after the roll is made, but if you do, this bonus is reduced to +4.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Inner Breath",
                          featType: "General",
                          prerequisites: "Character level 11th, sylph.",
                          benefit: "You no longer need to breathe. You are immune to effects that require breathing (such as inhaled poison). This does not give you immunity to cloud or gas attacks that do not require breathing, such as cloudkill.",
                          summary: "You no longer need to breathe. You are immune to effects that require breathing (such as inhaled poison).",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Inner Flame (Combat)",
                          featType: "General",
                          prerequisites: "Scorching Weapons, character level 7th, ifrit.",
                          benefit: "Your bonus on saves against fire attacks and spells with the fire descriptor or light descriptor increases to +4. When you use Scorching Weapons, the affected weapons deal an additional 1d6 points of fire damage instead of 1, and when you are grappling, you deal this damage to your grappling opponent on your turn.",
                          summary: "Your bonus on saves against fire attacks and spells with the fire descriptor or light descriptor increases to +4.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Intimidating Confidence",
                          featType: "General",
                          prerequisites: "Cha 13, Fearless Curiosity, Intimidate 5 ranks, human.",
                          benefit: "You gain a +1 bonus on saving throws against effects with the emotion descriptor; this bonus stacks with the bonus granted by Fearless Curiosity. When you confirm a critical hit, as a free action you can make an Intimidate check to demoralize one creature you threaten. If you have the Dazzling Display feat, you can make Intimidate checks to demoralize all creatures you threaten instead. You gain a +2 bonus on this check if your weapon has a ×3 critical modifier, or +4 if it has a ×4 critical modifier.",
                          summary: "You gain a +1 bonus on saving throws against effects with the emotion descriptor; this bonus stacks with the bonus granted by Fearless Curiosity.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Kobold Ambusher (Combat)",
                          featType: "General",
                          prerequisites: "Stealth 4 ranks, kobold.",
                          benefit: "You take no penalty on Stealth checks when you move up to your full speed. You can use the run or charge action and remain hidden, taking a –10 penalty on the check to do so.",
                          normal: "When moving greater than half speed up to your full speed, you take a –5 penalty on Stealth checks. When you are able to run or charge while using Stealth, you take a –20 penalty on the Stealth check.",
                          summary: "You take no penalty on Stealth checks when you move up to your full speed. You can use the run or charge action and remain hidden, taking a –10 penalty on the check to do so.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Kobold Sniper (Combat)",
                          featType: "General",
                          prerequisites: "Stealth 1 rank, kobold.",
                          benefit: "When you are sniping, you only take a –10 penalty on your Stealth checks to stay hidden.",
                          normal: "You take a –20 penalty on your Stealth check to maintain your obscured location while sniping.",
                          summary: "When you are sniping, you only take a –10 penalty on your Stealth checks to stay hidden.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ledge Walker",
                          featType: "General",
                          prerequisites: "Dex 13, dwarf, mountaineer or stability racial trait.",
                          benefit: "You can move at full speed while using Acrobatics to balance on narrow surfaces, and you gain a +4 bonus on Climb checks to catch yourself or another creature while falling. You also gain a +4 bonus on saving throws against effects that would cause you to fall prone (such as earthquakes). This bonus does not apply to your CMD against bull rush or trip attacks.",
                          summary: "You can move at full speed while using Acrobatics to balance on narrow surfaces, and you gain a +4 bonus on Climb checks to catch yourself or another creature while falling.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Life's Blood",
                          featType: "General",
                          prerequisites: "Samsaran.",
                          benefit: "At will as a full-round action, you may perform a special bloodletting ritual through which you sacrifice some of your own vitality to heal another creature. When using this feat, you take 1d4 points of damage and apply your blood to the wounds of a living creature, healing it for a number of hit points equal to the amount of damage you took from the ritual. This is a supernatural ability. Only you can perform this bloodletting. A creature cannot be healed by this ability more than once per day.",
                          summary: "At will as a full-round action, you may perform a special bloodletting ritual through which you sacrifice some of your own vitality to heal another creature.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Lingering Invisibility",
                          featType: "General",
                          prerequisites: "Duergar.",
                          benefit: "When your invisibility ends, you gain concealment for 1 round per minute of duration the invisibility effect had remaining (minimum 1 round). This only occurs if the invisibility is from your racial spell-like ability or a spell you cast. Effects that negate invisibility negate this concealment.",
                          summary: "When your invisibility ends, you gain concealment for 1 round per minute of duration the invisibility effect had remaining (minimum 1 round).",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Long-Nose Form",
                          featType: "General",
                          prerequisites: "Character level 3rd, tengu.",
                          benefit: "Once per day, you can assume the form of a human whose nose is the length of your beak. This spell-like ability functions as alter self with a caster level equal to your level. While in this form you gain the scent ability and a +2 bonus to your Strength score. Because your long nose in this form clearly indicates you are not fully human, you do not gain the normal bonus to Disguise checks for using a polymorph effect (however, you could possibly explain the nose as an unfortunate curse or deformity, or hide it with an item such as a plague doctor’s mask).",
                          summary: "Once per day, you can assume the form of a human whose nose is the length of your beak. This spell-like ability functions as alter self with a caster level equal to your level.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Lucky Healer",
                          featType: "General",
                          prerequisites: "Adaptive luck racial trait, halfling.",
                          benefit: "When a magical healing effect (such as a spell with \"cure\" in the title or channel energy) cures you, you can spend one use of your adaptable luck racial trait to reroll the amount of damage cured. You regain a number of hit points equal to the new roll or the original roll, whichever is greater. Other creatures healed by the effect do not gain this benefit.",
                          summary: "When a magical healing effect (such as a spell with \"cure\" in the title or channel energy) cures you, you can spend one use of your adaptable luck racial trait to reroll the amount of damage cured.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Lucky Strike (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +5, adaptive luck racial trait, halfling.",
                          benefit: "Spend a use of your adaptive luck racial trait to reroll the damage from a single weapon attack. You deal damage equal to the new damage roll, or the original roll, whichever is greater.",
                          summary: "Spend a use of your adaptive luck racial trait to reroll the damage from a single weapon attack. You deal damage equal to the new damage roll, or the original roll, whichever is greater.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Mage of the Wild",
                          featType: "General",
                          prerequisites: "Attuned to the Wild, elf.",
                          benefit: "When you are in a terrain type you have selected the Attuned to the Wild feat for, you gain a +2 bonus on caster level checks, concentration checks, and, Knowledge (arcana) and Spellcraft checks. If you are in an area that qualifies as more than one kind of terrain, these bonuses do not stack; you receive the bonus for only one of the terrain types.",
                          summary: "When you are in a terrain type you have selected the Attuned to the Wild feat for, you gain a +2 bonus on caster level checks, concentration checks, and, Knowledge (arcana) and Spellcraft checks.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Magical Tail",
                          featType: "General",
                          prerequisites: "Kitsune.",
                          benefit: "You gain a new spell-like ability, each usable twice per day, from the following list, in order: disguise self, charm person, misdirection, invisibility, suggestion, displacement, confusion, dominate person. For example, the first time you select this feat, you gain disguise self 2/day; the second time you select this feat, you gain charm person 2/day. Your caster level for these spells is equal to your Hit Dice. The DCs for these abilities are Charisma-based.",
                          special: "You may select this feat up to eight times. Each time you take it, you gain an additional ability as described above.",
                          summary: "You gain a new spell-like ability, each usable twice per day, from the following list, in order: disguise self, charm person, misdirection, invisibility, suggestion, displacement, confusion, dominate…",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Martial Mastery (Combat)",
                          featType: "General",
                          prerequisites: "Martial Versatility, fighter level 16th, human.",
                          benefit: "Each combat feat you have that applies to a specific weapon (e.g., Weapon Focus) can be used with all weapons in the same weapon group.",
                          summary: "Each combat feat you have that applies to a specific weapon (e.g., Weapon Focus) can be used with all weapons in the same weapon group.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Martial Versatility (Combat)",
                          featType: "General",
                          prerequisites: "Fighter level 4th, human.",
                          benefit: "Choose one combat feat you know that applies to a specific weapon (e.g., Weapon Focus). You can use that feat with any weapon within the same weapon group.",
                          special: "You may take this feat more than once. Each time it applies to a different feat.",
                          summary: "Choose one combat feat you know that applies to a specific weapon (e.g., Weapon Focus). You can use that feat with any weapon within the same weapon group.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Metallic Wings",
                          featType: "General",
                          prerequisites: "Angelic Blood, Angelic Flesh, Angel Wings, aasimar, character level 11th.",
                          benefit: "You gain two wing attacks. These are secondary natural attacks that deal 1d4 points of slashing damage (or 1d3 if you are Small).",
                          summary: "You gain two wing attacks. These are secondary natural attacks that deal 1d4 points of slashing damage (or 1d3 if you are Small).",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Mother's Gift",
                          featType: "General",
                          prerequisites: "Changeling.",
                          benefit: "Your dark legacy manifests in one of the following ways. You choose the manifestation when you choose the feat, and once selected it cannot be changed. Hag Claws (Ex): You gain a +1 bonus on attack and damage rolls with your claws. Surprisingly Tough (Ex): Your natural armor bonus increases by +1. Uncanny Resistance (Su): You gain spell resistance equal to 6 + your character level.",
                          special: "You can gain this feat up to three times. Its effects do not stack. Each time you take the feat, you must select a different manifestation.",
                          summary: "Your dark legacy manifests in one of the following ways. You choose the manifestation when you choose the feat, and once selected it cannot be changed.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Multitalented Mastery",
                          featType: "General",
                          prerequisites: "Character level 5th, half-elf, multitalented racial trait.",
                          benefit: "All of your classes are considered favored classes. You gain either +1 hit point or +1 skill point whenever you take a level in any class. Apply these bonuses retroactively for all class levels that have not yet gained one of these bonuses.",
                          normal: "Half-elves with the multitalented racial trait have two favored classes.",
                          summary: "All of your classes are considered favored classes. You gain either +1 hit point or +1 skill point whenever you take a level in any class.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Murmurs of Earth",
                          featType: "General",
                          prerequisites: "Echoes of Stone, character level 9th, oread.",
                          benefit: "You gain a limited form of tremorsense. As a move action, you become aware of all creatures within 15 feet that are in contact with the ground at that moment.",
                          summary: "You gain a limited form of tremorsense. As a move action, you become aware of all creatures within 15 feet that are in contact with the ground at that moment.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Natural Charmer",
                          featType: "General",
                          prerequisites: "Cha 17, dhampir.",
                          benefit: "You can take 20 on any Charisma-based skills to charm, convince, persuade, or seduce humanoids whose attitude is at least friendly to you. Taking 20 still requires 20 times the normal time to perform the skill.",
                          normal: "You cannot take 20 on any check where you incur penalties for failure.",
                          summary: "You can take 20 on any Charisma-based skills to charm, convince, persuade, or seduce humanoids whose attitude is at least friendly to you.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Neither Elf nor Human",
                          featType: "General",
                          prerequisites: "Exile’s Path, Seen and Unseen, character level 11th, half-elf.",
                          benefit: "You are not considered elven or human for the purpose of harmful spells or effects based on your type, like a bane weapon or a ranger’s favored enemy class feature.",
                          summary: "You are not considered elven or human for the purpose of harmful spells or effects based on your type, like a bane weapon or a ranger’s favored enemy class feature.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Nimble Striker (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, base attack bonus +1, catfolk, sprinter racial trait.",
                          benefit: "You do not take a –2 penalty to AC when you use the Cleave feat, Lunge feat, or when you charge.",
                          summary: "You do not take a –2 penalty to AC when you use the Cleave feat, Lunge feat, or when you charge.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Noble Spell Resistance",
                          featType: "General",
                          prerequisites: "Cha 13, Wis 13, Greater Drow Nobility, character level 13th, drow.",
                          benefit: "Your spell resistance is equal to 11 + your character level.",
                          special: "You receive a +1 circumstance bonus on Diplomacy and Intimidate checks made against any drow.",
                          summary: "Your spell resistance is equal to 11 + your character level.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Orc Hewer (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Cleave, Goblin Cleaver, Power Attack, dwarf.",
                          benefit: "This feat functions as Goblin Cleaver, but your additional attacks can be made against creatures your size or smaller. In addition, any such attacks that you make against humanoids (orc) gain a +2 circumstance bonus on attack rolls.",
                          summary: "This feat functions as Goblin Cleaver, but your additional attacks can be made against creatures your size or smaller.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Orc Weapon Expertise (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1, orc.",
                          benefit: "When you take this feat, choose one of the benefits below. Whenever you wield a weapon that has \"orc\" in its name, you gain the benefit you chose so long as you are actually proficient with that weapon. Bully: Gain a +1 bonus on damage rolls against creatures at least one size smaller than you. Defender: Gain a +1 shield bonus to your AC (or +2 if wielding a two-handed weapon). Disrupter: Add 3 to the DC of opponents’ concentration checks to cast a spell within your threatened area. This only applies if you are aware of the enemy’s location and are capable of taking an attack of opportunity. If you have already used all of your available attacks of opportunity for the round, this increase does not apply. Killer: Gain a +2 competence bonus on attack rolls made to confirm critical hits. Thug: Deal +1 point of nonlethal damage with the weapon. Trickster: Gain a +2 bonus on a single type of combat maneuver check that you can perform with that weapon. This feat has no effect if you are not proficient with the weapon you’re using.",
                          special: "You can gain this feat multiple times. Each time you take this feat, you must choose a different benefit. You may only apply one of these benefits per round (chosen as a free action at the start of your turn).",
                          summary: "When you take this feat, choose one of the benefits below. Whenever you wield a weapon that has \"orc\" in its name, you gain the benefit you chose so long as you are actually proficient with that…",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Oread Burrower",
                          featType: "General",
                          prerequisites: "Stony Step, character level 9th, oread.",
                          benefit: "You gain a burrow speed equal to 1/2 your base speed. You can burrow through sand, dirt, clay, gravel, or similar materials, but not solid stone. You do not leave a hole behind, nor is your passage marked on the surface.",
                          summary: "You gain a burrow speed equal to 1/2 your base speed. You can burrow through sand, dirt, clay, gravel, or similar materials, but not solid stone.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Oread Earth Glider",
                          featType: "General",
                          prerequisites: "Oread Burrower, Stony Step, character level 13th, oread.",
                          benefit: "You gain the earth glide universal monster ability and can use it to travel at your full base speed through sand, dirt, clay, gravel, or similar materials. If protected against fire damage, you can even burrow through lava. You can burrow through solid stone at 1/2 your base speed.",
                          summary: "You gain the earth glide universal monster ability and can use it to travel at your full base speed through sand, dirt, clay, gravel, or similar materials.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Realistic Likeness",
                          featType: "General",
                          prerequisites: "Kitsune.",
                          benefit: "You can precisely mimic the physical features of any individual you have encountered. When you use your racial change shape ability, you can attempt to take the form of an individual, granting you a +10 circumstance bonus on Disguise checks made to fool others with your impersonation.",
                          summary: "You can precisely mimic the physical features of any individual you have encountered.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Resilient Brute",
                          featType: "General",
                          prerequisites: "Half-orc or orc.",
                          benefit: "Once per day, when a creature confirms a critical hit against you, you may treat half the damage as nonlethal damage. You cannot use this ability if you are immune to nonlethal damage. When your base attack bonus reaches +10, you may use this ability an additional time per day.",
                          summary: "Once per day, when a creature confirms a critical hit against you, you may treat half the damage as nonlethal damage. You cannot use this ability if you are immune to nonlethal damage.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Resolute Rager",
                          featType: "General",
                          prerequisites: "Orc, rage class feature.",
                          benefit: "While raging, when under the effect of a fear effect that allows a saving throw, you can make a new saving throw against that fear effect at the start of each of your turns before acting. If you make the new save, the fear effect ends.",
                          summary: "While raging, when under the effect of a fear effect that allows a saving throw, you can make a new saving throw against that fear effect at the start of each of your turns before acting.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Reverse-Feint (Combat)",
                          featType: "General",
                          prerequisites: "Toughness, base attack bonus +1, orc.",
                          benefit: "As a move action, you can leave a gap in your defenses for one adjacent opponent to use. If the opponent attacks you on its next turn, it gains a +4 bonus on its attack roll. Whether or not the opponent successfully hits, you may attack it as an immediate action with a single melee attack, gaining a +2 bonus on your attack roll.",
                          summary: "As a move action, you can leave a gap in your defenses for one adjacent opponent to use. If the opponent attacks you on its next turn, it gains a +4 bonus on its attack roll.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Risky Striker (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1, halfling.",
                          benefit: "You can choose to take a –1 penalty to AC to gain a +2 bonus on melee damage rolls against creatures two or more size categories larger than you. When your base attack bonus reaches +4 and every 4 levels thereafter, the penalty increases by -1 and the damage bonus increases by 2. The bonus damage is multiplied in the case of a critical hit. You can only choose to use this feat when you declare that you are making an attack action or a full-attack action with a melee weapon. The effects last until your next turn.",
                          summary: "You can choose to take a –1 penalty to AC to gain a +2 bonus on melee damage rolls against creatures two or more size categories larger than you.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Scavenger's Eye",
                          featType: "General",
                          prerequisites: "Tengu.",
                          benefit: "You gain a +2 bonus on Appraise checks. You may determine the most valuable item in a hoard as a standard action and gain an additional +2 bonus on the Appraise check to do so. In addition, if you fail an Appraise check by 5 or more, you treat the check as if you had failed by less than 5.",
                          normal: "Determining the most valuable object in a treasure hoard takes 1 full-round action.",
                          summary: "You gain a +2 bonus on Appraise checks. You may determine the most valuable item in a hoard as a standard action and gain an additional +2 bonus on the Appraise check to do so.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Scorching Weapons (Combat)",
                          featType: "General",
                          prerequisites: "Ifrit.",
                          benefit: "You gain a +2 bonus on saving throws against fire attacks and spells with the fire descriptor or light descriptor. As a swift action, you can make up to two held manufactured metallic weapons become red-hot for 1 round, dealing 1 additional point of fire damage with a successful hit. This does not stack with other effects that add fire damage to weapons, such as the flaming weapon special ability.",
                          summary: "You gain a +2 bonus on saving throws against fire attacks and spells with the fire descriptor or light descriptor.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sea Hunter (Combat)",
                          featType: "General",
                          prerequisites: "Combat Expertise, merfolk.",
                          benefit: "When you make a successful melee attack against a swimming target, as a free action you can attempt to knock the target off balance. Treat this as a trip combat maneuver. If you succeed, the target is considered off balance until it recovers its balance, usually by making a Swim check on its turn. This feat has no effect on creatures with a swim speed, those using magic such as freedom of movement, and creatures that can’t be tripped.",
                          summary: "When you make a successful melee attack against a swimming target, as a free action you can attempt to knock the target off balance. Treat this as a trip combat maneuver.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Seen and Unseen",
                          featType: "General",
                          prerequisites: "Exile’s Path, character level 5th, half-elf.",
                          benefit: "You gain a +2 bonus on all saving throws against scrying or divination effects. Additionally, you gain a +2 bonus on all Stealth checks, and elves, half-elves, and humans take a –4 penalty on all efforts to track you through the Survival skill.",
                          summary: "You gain a +2 bonus on all saving throws against scrying or divination effects.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shadow Caster",
                          featType: "General",
                          prerequisites: "Caster level 1st, drow.",
                          benefit: "When you cast spells of the shadow subschool or spells with the darkness or shadow descriptor, you are considered two levels higher when determining the duration of those spells.",
                          summary: "When you cast spells of the shadow subschool or spells with the darkness or shadow descriptor, you are considered two levels higher when determining the duration of those spells.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shadow Ghost",
                          featType: "General",
                          prerequisites: "Fetchling, shadow walk spell-like ability.",
                          benefit: "You gain the ability to use shadow walk an additional time each day.",
                          special: "You may select this feat multiple times. Its effects stack.",
                          summary: "You gain the ability to use shadow walk an additional time each day.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shadow Walker",
                          featType: "General",
                          prerequisites: "Fetchling, shadow walk spell-like ability.",
                          benefit: "You can expend one use of your shadow walk spell-like ability to use dimension door as a spell-like ability. Your start and end locations for this ability must be in dim light or darkness.",
                          summary: "You can expend one use of your shadow walk spell-like ability to use dimension door as a spell-like ability. Your start and end locations for this ability must be in dim light or darkness.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shadowy Dash",
                          featType: "General",
                          prerequisites: "Wayang.",
                          benefit: "Whenever you are in an area of dim light or darkness, you can move at full speed using Stealth without taking the normal –5 penalty for doing so.",
                          normal: "When moving at more than half your speed and up to your normal speed, you take a –5 penalty on Stealth checks.",
                          summary: "Whenever you are in an area of dim light or darkness, you can move at full speed using Stealth without taking the normal –5 penalty for doing so.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shared Manipulation",
                          featType: "General",
                          prerequisites: "Cha 13, half-elf.",
                          benefit: "As a move action, you can grant all friendly creatures within 30 feet who can see or hear you a +2 bonus on Bluff or Intimidate checks (choose which skill to affect each time you use this ability) for a number of rounds equal to your Charisma modifier (minimum 1 round).",
                          summary: "As a move action, you can grant all friendly creatures within 30 feet who can see or hear you a +2 bonus on Bluff or Intimidate checks (choose which skill to affect each time you use this ability)…",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sharpclaw (Combat)",
                          featType: "General",
                          prerequisites: "Ratfolk.",
                          benefit: "You gain two claw attacks. These are primary natural attacks that deal 1d4 points of damage.",
                          summary: "You gain two claw attacks. These are primary natural attacks that deal 1d4 points of damage.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shatterspell (Combat)",
                          featType: "General",
                          prerequisites: "Disruptive, Spellbreaker, dwarf, 10th-level fighter.",
                          benefit: "As a standard action, you can attempt to sunder an ongoing spell effect as if you had the spell sunder rage power (Ultimate Combat 28). You may use this feat once per day, plus one additional time per day for every 5 points by which your base attack bonus exceeds +10.",
                          summary: "As a standard action, you can attempt to sunder an ongoing spell effect as if you had the spell sunder rage power (Ultimate Combat 28).",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sleep Venom",
                          featType: "General",
                          prerequisites: "Vishkanya.",
                          benefit: "As a swift action, you may alter the effects of your venom so the target falls unconscious. This changes the initial and secondary effect of your venom to the following: initial effect staggered for 1d4 rounds; secondary effect unconsciousness for 1 minute. You must make the decision to alter your venom before you apply it to a weapon.",
                          normal: "Vishkanya venom deals Dexterity damage.",
                          summary: "As a swift action, you may alter the effects of your venom so the target falls unconscious.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spider Climber",
                          featType: "General",
                          prerequisites: "Character level 3rd, drow.",
                          benefit: "You can cast spider climb once per day as a spell-like ability, using your character level as the caster level. Furthermore, you gain a +4 bonus on saving throws against the web special attacks of spiders and the effects of web and other similar spells (such as the web cloud spell).",
                          summary: "You can cast spider climb once per day as a spell-like ability, using your character level as the caster level.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spider Summoner",
                          featType: "General",
                          prerequisites: "Ability to cast summon monster or summon nature’s ally spells, drow.",
                          benefit: "When casting either a summon monster spell or a summon nature’s ally spell, your options increase. Depending on the level of the spell, you can summon the spiders listed below. Summon Monster: 1st level—giant crab spider*; 4th level—giant black widow*; 5th level—ogre spider*; 7th level—giant tarantula* Summon Nature’s Ally: 1st level—giant crab spider; 4th level—giant black widow; 5th level—ogre spider; 7th level—giant tarantula Creatures marked with an asterisk (*) are summoned with the celestial template if you are good, and the fiendish template if you are evil. If you are neutral, you may choose which template to apply to the creature. Furthermore, when you summon spiders using summon monster or summon nature’s ally, the DC of the summoned monster’s poison and web effects increases by 2.",
                          summary: "When casting either a summon monster spell or a summon nature’s ally spell, your options increase. Depending on the level of the spell, you can summon the spiders listed below.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spirit of the Wild",
                          featType: "General",
                          prerequisites: "Attuned to the Wild, Guardian of the Wild, elf.",
                          benefit: "When you are in a terrain type you have selected the Attuned to the Wild feat for, you gain a +4 bonus on Perception checks made to act in the surprise round of combat. If you act in the surprise round, you gain blindsense out to a range of 30 feet during the surprise round. If you are in an area that qualifies as more than one kind of terrain, these bonuses do not stack; you receive the bonus for only one terrain type.",
                          summary: "When you are in a terrain type you have selected the Attuned to the Wild feat for, you gain a +4 bonus on Perception checks made to act in the surprise round of combat.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spit Venom (Combat)",
                          featType: "General",
                          prerequisites: "Nagaji.",
                          benefit: "As a full-round action, you can spit poison up to 10 feet as a ranged touch attack. If you hit, the target must make a successful Fortitude save or be blinded for 1d6 rounds. The DC of this save is equal to 10 + 1/2 your total Hit Dice + your Constitution modifier. You can use this ability once per day plus one additional time per day for every three Hit Dice you have.",
                          summary: "As a full-round action, you can spit poison up to 10 feet as a ranged touch attack. If you hit, the target must make a successful Fortitude save or be blinded for 1d6 rounds.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Steam Caster",
                          featType: "General",
                          prerequisites: "Undine.",
                          benefit: "You may increase the casting time of a fire spell to a full-round action, infusing it with elemental power (spells with a casting time of 1 full-round action or longer do not have an increased casting time). The spell is treated as if it had the water descriptor. All fire effects of the altered spell instead manifest as superheated steam. The altered spell works normally underwater without requiring a caster level check. Unlike fire, the steam cannot ignite objects or set creatures on fire. As the spell still deals fire damage, fire resistance or immunity still applies to the spell’s effects.",
                          summary: "You may increase the casting time of a fire spell to a full-round action, infusing it with elemental power (spells with a casting time of 1 full-round action or longer do not have an increased…",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stoic Pose",
                          featType: "General",
                          prerequisites: "Svirfneblin.",
                          benefit: "By spending 5 rounds finding a suitable location, you can hold yourself so still that you appear to be a Small object such as a pile of rocks. This allows you to make a Stealth check without cover or concealment, as long as you do not move or take any other actions.",
                          summary: "By spending 5 rounds finding a suitable location, you can hold yourself so still that you appear to be a Small object such as a pile of rocks.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stony Step",
                          featType: "General",
                          prerequisites: "Oread.",
                          benefit: "Whenever you move, you may move through 5 feet of earth- or stone-based difficult terrain (rubble, stone stairs, and so on) each round as if it were normal terrain. The effects of this feat stack with similar feats such as Acrobatic Steps and Nimble Moves. This feat allows you to take a 5-foot step into this kind of difficult terrain.",
                          summary: "Whenever you move, you may move through 5 feet of earth- or stone-based difficult terrain (rubble, stone stairs, and so on) each round as if it were normal terrain.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stretched Wings",
                          featType: "General",
                          prerequisites: "Str 13, Skill Focus (Fly), strix, wing-clipped racial trait.",
                          benefit: "Your strix racial fly speed increases to 60 feet (average). You ignore the wing-clipped trait’s Fly check requirement to fly upward.",
                          summary: "Your strix racial fly speed increases to 60 feet (average). You ignore the wing-clipped trait’s Fly check requirement to fly upward.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sure and Fleet",
                          featType: "General",
                          prerequisites: "Fleet of foot racial trait, halfling.",
                          benefit: "You gain a +2 racial bonus on Acrobatics and Climb checks.",
                          summary: "You gain a +2 racial bonus on Acrobatics and Climb checks.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Surge of Success",
                          featType: "General",
                          prerequisites: "Human.",
                          benefit: "When you confirm a critical hit or roll a natural 20 on a saving throw, you gain a +2 circumstance bonus on a single attack roll, saving throw, skill check, or ability check of your choice before the end of your next turn. You must choose to use this bonus before you make the attack roll, saving throw, skill check, or ability check.",
                          summary: "When you confirm a critical hit or roll a natural 20 on a saving throw, you gain a +2 circumstance bonus on a single attack roll, saving throw, skill check, or ability check of your choice before the…",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Surprise Follow-Through (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Cleave, Power Attack, base attack bonus +1.",
                          benefit: "When using Cleave or Great Cleave, the second foe you attack on your turn is denied its Dexterity bonus against you.",
                          summary: "When using Cleave or Great Cleave, the second foe you attack on your turn is denied its Dexterity bonus against you.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Surprise Strike (Combat)",
                          featType: "General",
                          prerequisites: "Cautious Fighter, Desperate Swing, base attack bonus +6, halfling.",
                          benefit: "Once per day, when fighting defensively or making an attack of opportunity while taking the total defense action with the Desperate Swing feat, you take no penalty on the attack roll.",
                          summary: "Once per day, when fighting defensively or making an attack of opportunity while taking the total defense action with the Desperate Swing feat, you take no penalty on the attack roll.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tail Terror (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1, kobold.",
                          benefit: "You can make a tail slap attack with your tail. This is a secondary natural attack that deals 1d4 points of bludgeoning damage. Furthermore, you can augment your tail slap attack with a kobold tail attachment. For the purpose of weapon feats, you are considered proficient with all kobold tail attachments.",
                          summary: "You can make a tail slap attack with your tail. This is a secondary natural attack that deals 1d4 points of bludgeoning damage.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tangle Feet (Combat)",
                          featType: "General",
                          prerequisites: "Dodge, Mobility, Underfoot, goblin, Small size or smaller.",
                          benefit: "When you successfully make an Acrobatics check to avoid provoking an attack of opportunity from a larger opponent when you move through its threatened area or its space, you can make that opponent lose its balance until the end of its next turn as a free action. While that creature’s balance is lost, if it attempts to move, it must make a successful DC 15 Acrobatics check or fall prone, wasting the move action. You can only affect one creature with this effect each round.",
                          summary: "When you successfully make an Acrobatics check to avoid provoking an attack of opportunity from a larger opponent when you move through its threatened area or its space, you can make that opponent…",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Taskmaster (Combat)",
                          featType: "General",
                          prerequisites: "Demoralizing Lash, Intimidate 5 ranks, hobgoblin.",
                          benefit: "As a standard action, you spur an ally, who must have fewer Hit Dice than yourself, to reckless effort. For 1 minute, the ally gains a +1 morale bonus on attack rolls, weapon damage rolls, and Will saves against mind-affecting effects. However, the ally also takes a –2 penalty to AC and on skill checks. To affect an unwilling ally, you must succeed at an Intimidate check with the same DC used to demoralize your ally.",
                          special: "If you have 10 or more ranks in Intimidate, the morale bonus increases to +2.",
                          summary: "As a standard action, you spur an ally, who must have fewer Hit Dice than yourself, to reckless effort.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tenacious Survivor",
                          featType: "General",
                          prerequisites: "Con 13, Diehard, Endurance, half-orc or orc.",
                          benefit: "When you are killed by hit point damage, your soul lingers in your body for a number of rounds equal to your Constitution bonus. You are still dead, but a creature can make a DC 10 Heal check as a standard action to realize that you can still be saved. You can be healed by magic as if you were alive. If you are healed enough hit points that you would no longer be dead, you are alive again, but you gain one permanent negative level.",
                          summary: "When you are killed by hit point damage, your soul lingers in your body for a number of rounds equal to your Constitution bonus.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tengu Raven Form",
                          featType: "General",
                          prerequisites: "Tengu Wings, character level 7th, tengu.",
                          benefit: "Once per day, you can take the form of a Large black bird resembling a raven, granting you a fly speed of 60 feet (good maneuverability), a +4 size bonus to your Strength, a –2 penalty to your Dexterity, and a +4 natural armor bonus. This spell-like ability otherwise functions as beast shape II with a caster level equal to your level.",
                          summary: "Once per day, you can take the form of a Large black bird resembling a raven, granting you a fly speed of 60 feet (good maneuverability), a +4 size bonus to your Strength, a –2 penalty to your…",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tengu Wings",
                          featType: "General",
                          prerequisites: "Character level 5th, tengu.",
                          benefit: "Once per day, you can sprout a pair of giant black crow’s wings, granting you a fly speed of 30 feet (average maneuverability). This spell-like ability otherwise functions as beast shape I (though you do not gain any other benefits of that spell) with a caster level equal to your level.",
                          summary: "Once per day, you can sprout a pair of giant black crow’s wings, granting you a fly speed of 30 feet (average maneuverability).",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Terrorizing Display (Combat)",
                          featType: "General",
                          prerequisites: "Dazzling Display, Demoralizing Lash, Taskmaster, Weapon Focus, Intimidate 10 ranks, hobgoblin, proficiency with selected weapon.",
                          benefit: "When you use Dazzling Display, in addition to its normal effects, you can use it to spur allies within 30 feet as if you had used the Taskmaster feat. Use the same Intimidate check to determine the effects of Dazzling Display and this feat.",
                          summary: "When you use Dazzling Display, in addition to its normal effects, you can use it to spur allies within 30 feet as if you had used the Taskmaster feat.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Toxic Recovery",
                          featType: "General",
                          prerequisites: "Dwarf, hardy racial trait.",
                          benefit: "Whenever you succeed at a saving throw against poison, you heal 1 point of ability damage of the type dealt by the poison. Whenever you heal ability damage naturally or magically, you heal 1 additional point of ability damage. This feat has no effect on penalties to ability scores or ability drain.",
                          summary: "Whenever you succeed at a saving throw against poison, you heal 1 point of ability damage of the type dealt by the poison.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Trap Wrecker",
                          featType: "General",
                          prerequisites: "Power Attack, Disable Device 1 rank, orc.",
                          benefit: "You can attempt to disarm a trap by striking it with a melee weapon instead of making a Disable Device check. As a full-round action, make a melee attack against an Armor Class equal to the trap’s Disable Device DC. If you miss, the trap activates. If you hit, roll damage. If this damage is at least half the trap’s Disable Device DC, you disable the trap. If this damage is less than half the trap’s Disable Device DC, the trap activates. You can only attempt this on nonmagical traps. You must be able to reach some part of the trap with your attack in order to use this feat. At the GM’s discretion, some traps may not be susceptible to this feat.",
                          summary: "You can attempt to disarm a trap by striking it with a melee weapon instead of making a Disable Device check.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tree Hanger (Combat)",
                          featType: "General",
                          prerequisites: "Acrobatics 1 rank, vanara.",
                          benefit: "You gain a +2 bonus to your CMD against all trip attacks. If your square has a branch or other sturdy large object that you could hang from, as a swift action you may make a DC 15 Acrobatics check to jump upward and use your tail to hang from that object. While hanging, you can’t be tripped, you ignore the effects of difficult terrain in your square, and you gain a +2 bonus to your CMD against bull rush, drag, and reposition attacks. If you leave that square (including if you are moved against your will), you lose your grip on the object and are no longer hanging. While hanging, you cannot use your tail for anything else.",
                          summary: "You gain a +2 bonus to your CMD against all trip attacks. If your square has a branch or other sturdy large object that you could hang from, as a swift action you may make a DC 15 Acrobatics check to…",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Triton Portal",
                          featType: "General",
                          prerequisites: "Character level 5th, hydraulic push spell-like ability, undine.",
                          benefit: "Once per day, you may expend your racial hydraulic push ability to instead cast summon nature’s ally III as a spell-like ability with a caster level equal to your character level. This use of the ability can only summon 1d3 Small water elementals, 1d4+1 dolphins, a shark, or an electric eel. Using this ability is a full-round action.",
                          summary: "Once per day, you may expend your racial hydraulic push ability to instead cast summon nature’s ally III as a spell-like ability with a caster level equal to your character level.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tunnel Rat",
                          featType: "General",
                          prerequisites: "Ratfolk, swarming racial trait.",
                          benefit: "You count as one size smaller than normal for the purpose of squeezing.",
                          summary: "You count as one size smaller than normal for the purpose of squeezing.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Uncanny Defense (Combat)",
                          featType: "General",
                          prerequisites: "Cautious Fighter, base attack bonus +3, halfling.",
                          benefit: "While fighting defensively or taking the total defense action, you gain a bonus on your Reflex saving throws and to your CMD equal to 1/2 of the dodge bonus to AC you gained from taking that action.",
                          summary: "While fighting defensively or taking the total defense action, you gain a bonus on your Reflex saving throws and to your CMD equal to 1/2 of the dodge bonus to AC you gained from taking that action.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Vast Hatred (Combat)",
                          featType: "General",
                          prerequisites: "Gnome, hatred racial trait.",
                          benefit: "Select two creature types (and subtypes where appropriate) from the list of potential favored enemies from the ranger class ability. Your +1 attack bonus from the hatred racial trait applies to creatures of the selected types (and subtypes).",
                          special: "You may take this feat more than once. Its benefits do not stack. Each time you select this feat, you select two additional creature types to which your hatred racial trait applies.",
                          summary: "Select two creature types (and subtypes where appropriate) from the list of potential favored enemies from the ranger class ability.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Water Skinned",
                          featType: "General",
                          prerequisites: "Undine.",
                          benefit: "As a standard action, you can extinguish a small nonmagical fire with a touch, affecting anything up to the size of a large campfire. This ability does not affect fires with a total area greater than 5 square feet. Touching the fire in this way does not harm you.",
                          summary: "As a standard action, you can extinguish a small nonmagical fire with a touch, affecting anything up to the size of a large campfire.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Wings of Air",
                          featType: "General",
                          prerequisites: "Airy Step, character level 9th, sylph.",
                          benefit: "Your bonus on saves against effects with the air or electricity descriptors and effects that deal electricity damage increases to +4. In addition, you gain a supernatural fly speed equal to your base speed (good maneuverability). You may only fly with this ability when wearing light armor or no armor.",
                          summary: "Your bonus on saves against effects with the air or electricity descriptors and effects that deal electricity damage increases to +4.",
                          source: "Advanced Race Guide", isPremium: true),

                    // // MARK: - Advanced Race Guide, Goblins of Golarion
        )
        try await db.insertFeat(
        .make("Burn! Burn! Burn!",
                          featType: "General",
                          prerequisites: "Disable Device 1 rank, goblin.",
                          benefit: "You deal an extra 1d4 points of fire damage when you attack with fire from an alchemical or nonmagical source (such as with alchemical fire or torches) and gain a +4 competence bonus on Reflex saving throws made to avoid catching on fire or to put yourself out when on fire. Additional damage caused by this feat does not apply to magical attacks (such as an alchemist’s bomb) or to splash damage.",
                          summary: "You deal an extra 1d4 points of fire damage when you attack with fire from an alchemical or nonmagical source (such as with alchemical fire or torches) and gain a +4 competence bonus on Reflex saving…",
                          source: "Advanced Race Guide, Goblins of Golarion", isPremium: true),

                    // // MARK: - Advanced Race Guide, Orcs of Golarion
        )
        try await db.insertFeat(
        .make("Blood Vengeance",
                          featType: "General",
                          prerequisites: "Half-orc or orc, nonlawful.",
                          benefit: "Whenever one of your allies is reduced to negative hit points or killed, you may enter a state similar to but less powerful than a barbarian’s rage as a free action on your next turn. If you have the rage class feature and are already raging, your morale bonuses to Strength and Constitution increase by +2 for the duration of your rage. If you do not have the rage class feature, or you have no more rage rounds left, this weaker rage gives you all the benefits and penalties of a barbarian’s rage, except your morale bonus to Strength and Constitution is only +2. In either case, this state lasts for 4 rounds. As with a barbarian’s rage, when this weaker rage ends, you are fatigued; if another ally falls before this duration ends, the weaker rage lasts for an additional 4 rounds. This feat does not allow you to enter a rage if you are fatigued. You may only use this feat if the fallen ally had at least as many Hit Dice as you (excluding conjured or summoned allies).",
                          summary: "Whenever one of your allies is reduced to negative hit points or killed, you may enter a state similar to but less powerful than a barbarian’s rage as a free action on your next turn.",
                          source: "Advanced Race Guide, Orcs of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Destroyer's Blessing (Combat)",
                          featType: "General",
                          prerequisites: "Half-orc or orc, rage class feature.",
                          benefit: "When you are raging and you succeed at a sunder combat maneuver, you regain 1 round of rage. If the sunder attempt causes the object to gain the broken condition, you heal 1 hit point. You can only gain these benefits once per round.",
                          summary: "When you are raging and you succeed at a sunder combat maneuver, you regain 1 round of rage. If the sunder attempt causes the object to gain the broken condition, you heal 1 hit point.",
                          source: "Advanced Race Guide, Orcs of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ferocious Tenacity (Combat)",
                          featType: "General",
                          prerequisites: "Ferocity racial trait, half-orc or orc, rage class feature.",
                          benefit: "Once per day when raging, if you are hit by an attack that would deal enough hit points of damage to kill you (negative hit points equal to your Constitution score), as an immediate action you may expend 1 or more rounds of rage to negate some of this damage and keep yourself alive. Each round of rage you spend reduces the attack’s damage by 1 point, but cannot reduce the damage taken below 1 hit point. For example, if you are raging, have a raging Constitution score of 18, are currently at 2 hit points, and take 20 hit points of damage from a hit (which is enough to bring you to –18 hit points, thereby killing you), you may spend 1 round of rage to reduce the damage by 1 hit point (leaving you perilously close to death at –17 hit points); if you spend 17 rounds of rage, you reduce the damage to 1 (the minimum), leaving you with 1 hit point.",
                          summary: "Once per day when raging, if you are hit by an attack that would deal enough hit points of damage to kill you (negative hit points equal to your Constitution score), as an immediate action you may…",
                          source: "Advanced Race Guide, Orcs of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Gore Fiend",
                          featType: "General",
                          prerequisites: "Half-orc or orc, rage class feature.",
                          benefit: "When you are raging and you confirm a critical hit with a melee weapon or a critical hit is confirmed on you (whether by a melee weapon, spell, or ranged weapon), you regain 1 round of rage (up to your maximum for the day). You can only gain this benefit once per round.",
                          summary: "When you are raging and you confirm a critical hit with a melee weapon or a critical hit is confirmed on you (whether by a melee weapon, spell, or ranged weapon), you regain 1 round of rage (up to…",
                          source: "Advanced Race Guide, Orcs of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sympathetic Rage (Combat)",
                          featType: "General",
                          prerequisites: "Half-orc or orc, nonlawful.",
                          benefit: "Whenever you are adjacent to an ally who is raging, you may choose to enter a similar but less powerful rage as a free action on your turn. This weaker rage gives you all the benefits and penalties of a barbarian’s rage, except your morale bonus to Strength and Constitution is only +2. There is no limit to how long you can rage, as long as you remain adjacent to a raging ally (for example, you could take a 5-foot step away from one raging ally toward another raging ally and maintain your rage). As with a barbarian’s rage, when this weaker rage ends, you are fatigued. You cannot use this feat if you are fatigued.",
                          summary: "Whenever you are adjacent to an ally who is raging, you may choose to enter a similar but less powerful rage as a free action on your turn.",
                          source: "Advanced Race Guide, Orcs of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Thrill of the Kill",
                          featType: "General",
                          prerequisites: "Half-orc or orc, rage class feature.",
                          benefit: "When you are raging and your attack reduces an enemy to negative hit points or kills it, you regain 1 round of rage. You may only use this feat if the fallen enemy had at least as many Hit Dice as you. You can only gain this benefit once per round.",
                          summary: "When you are raging and your attack reduces an enemy to negative hit points or kills it, you regain 1 round of rage.",
                          source: "Advanced Race Guide, Orcs of Golarion", isPremium: true),

                    // // MARK: - Advanced Race Guide, Pathfinder #15: The Armageddon Echo, Pathfinder #18: Descent into Midnight
        )
        try await db.insertFeat(
        .make("Umbral Scion",
                          featType: "General",
                          prerequisites: "Cha 13, Wis 13, Drow Nobility, Greater Drow Nobility, Improved Drow Nobility, able to use drow spell-like abilities, drow.",
                          benefit: "Select one of the following: dispel magic, divine favor, or suggestion. You may use this spell once per day as a spell-like ability. Your caster level is equal to your character level.",
                          summary: "Select one of the following: dispel magic, divine favor, or suggestion. You may use this spell once per day as a spell-like ability. Your caster level is equal to your character level.",
                          source: "Advanced Race Guide, Pathfinder #15: The Armageddon Echo, Pathfinder #18: Descent into Midnight", isPremium: true),

                    // // MARK: - Adventurer's Armory
        )
        try await db.insertFeat(
        .make("Sly Draw",
                          featType: "General",
                          prerequisites: "Quick Draw.",
                          benefit: "When you draw a light weapon, you may make a Sleight of Hand check instead of a Bluff check to feint in combat. Other feats and abilities that affect a feint still apply to your feint.",
                          summary: "When you draw a light weapon, you may make a Sleight of Hand check instead of a Bluff check to feint in combat. Other feats and abilities that affect a feint still apply to your feint.",
                          source: "Adventurer's Armory", isPremium: true)
        )
        try await db.insertFeat(
        .make("Splash Weapon Mastery",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When throwing a splash weapon, you act as if you had the Far Shot feat. When you hit with a splash weapon, select one additional square adjacent to the splash area; creatures in this area also take splash damage. When you miss with a splash weapon, you may adjust the miss direction on the grid by +1 or –1. This feat counts as Far Shot for the purpose of qualifying for other feats, but only in regard to splash weapons.",
                          summary: "When throwing a splash weapon, you act as if you had the Far Shot feat.",
                          source: "Adventurer's Armory", isPremium: true),

                    // // MARK: - Adventurer's Armory 2
        )
        try await db.insertFeat(
        .make("Armor Adept (Combat)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Choose two armor modifications (such as deflecting or jarring). You no longer suffer the drawbacks of wearing armor with those modifications.",
                          normal: "Each type of armor modification imparts a drawback on a wearer.",
                          special: "You can gain this feat multiple times, choosing two different armor modifications each time.",
                          summary: "Choose two armor modifications (such as deflecting or jarring). You no longer suffer the drawbacks of wearing armor with those modifications.",
                          source: "Adventurer's Armory 2", isPremium: true)
        )
        try await db.insertFeat(
        .make("Craft Poppet (Item Creation)",
                          featType: "General",
                          prerequisites: "Caster level 1st.",
                          benefit: "You can craft poppets and add augmentations to existing poppets that you control. You are treated as having both Craft Arms and Armor and Craft Wondrous Item for the purpose of fulfilling the prerequisites for Craft Construct.",
                          summary: "You can craft poppets and add augmentations to existing poppets that you control.",
                          source: "Adventurer's Armory 2", isPremium: true)
        )
        try await db.insertFeat(
        .make("Creative Armorsmith (Combat)",
                          featType: "General",
                          prerequisites: "Craft (armor) 3 ranks, Knowledge (engineering) 3 ranks.",
                          benefit: "With an hour of work, you can temporarily add an armor modification of your choice to your armor, or temporarily remove an existing modification, at no cost. You must have access to masterwork artisan’s tools designed for armorsmithing to perform this alteration. This alteration lasts for 8 hours. Armor modifications you add this way only provide their benefits to you; any other wearer suffers the modification’s drawbacks but does not gain its benefits.",
                          summary: "With an hour of work, you can temporarily add an armor modification of your choice to your armor, or temporarily remove an existing modification, at no cost.",
                          source: "Adventurer's Armory 2", isPremium: true)
        )
        try await db.insertFeat(
        .make("Creative Weaponsmith (Combat)",
                          featType: "General",
                          prerequisites: "Craft (weapons) 3 ranks, Knowledge (engineering) 3 ranks.",
                          benefit: "With an hour of work, you can temporarily add a weapon modification of your choice to your weapon (or temporarily remove an existing modification) at no cost. You must have access to masterwork artisan’s tools designed for weaponsmithing to perform this alteration. This alteration lasts for 8 hours. Weapon modifications you add this way only provide their benefits to you; any other wielder treats the weapon as one category more difficult to use than normal, but does not gain its benefits.",
                          summary: "With an hour of work, you can temporarily add a weapon modification of your choice to your weapon (or temporarily remove an existing modification) at no cost.",
                          source: "Adventurer's Armory 2", isPremium: true)
        )
        try await db.insertFeat(
        .make("Hook Fighter (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1.",
                          benefit: "You treat a grappling hook as a one-handed weapon that deals piercing damage equal to a heavy pick of its size and that has the disarm and trip special weapon features. You do not incur penalties as you would for using a grappling hook as an improvised weapon. If you are proficient with whips and your grappling hook has at least 10 feet of rope or chain attached to it, you can treat it as a two-handed melee weapon with 15-foot reach, though you can use it against foes anywhere within your reach (including adjacent foes), though you don’t threaten any squares with it. Changing between using a grappling hook as a normal weapon and a reach weapon is a move action. When performing a repositionAPG maneuver with a grappling hook, you can only move the target toward you from its original position.",
                          summary: "You treat a grappling hook as a one-handed weapon that deals piercing damage equal to a heavy pick of its size and that has the disarm and trip special weapon features.",
                          source: "Adventurer's Armory 2", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improvisational Healer",
                          featType: "General",
                          prerequisites: "Heal 1 rank.",
                          benefit: "When attempting a Heal check that normally requires a healer’s kit, you don’t take a penalty on the check for not having a healer’s kit. When you use a healer’s kit, you can augment it with improvised supplies, gaining an additional +2 circumstance bonus on your check. Finally, you can treat any potion of cure light wounds, potion of cure moderate wounds, or potion of cure serious wounds you drink yourself or administer to another character as though its caster level were equal to the number of ranks you have in the Heal skill. The spell’s normal limitations apply; for example, a potion of cure light wounds can cure a maximum of 1d8+5 points of damage, even if you have more than 5 ranks in the Heal skill.",
                          summary: "When attempting a Heal check that normally requires a healer’s kit, you don’t take a penalty on the check for not having a healer’s kit.",
                          source: "Adventurer's Armory 2", isPremium: true)
        )
        try await db.insertFeat(
        .make("Modification Master (Combat)",
                          featType: "General",
                          prerequisites: "Creative Armorsmith, Armor Adept, and Craft (armor) 7 ranks, or Creative Weaponsmith, Weapon Adept, and Craft (weapons) 7 ranks; Knowledge (engineering) 7 ranks.",
                          benefit: "You can use Creative Armorsmith or Creative Weaponsmith to add a modification to a weapon or suit of armor that already has a modification. The modification you are adding must be one that you have selected with Armor Adept or Weapon Adept. In addition, others can use armor or weapons with your temporary modifications.",
                          summary: "You can use Creative Armorsmith or Creative Weaponsmith to add a modification to a weapon or suit of armor that already has a modification.",
                          source: "Adventurer's Armory 2", isPremium: true)
        )
        try await db.insertFeat(
        .make("Modification Trainer (Combat)",
                          featType: "General",
                          prerequisites: "Cha 13, Armor Adept or Weapon Adept, fighter level 4th.",
                          benefit: "Choose a modification that you have selected with the Armor Adept or Weapon Adept feat. Once per day with 10 minutes of drilling, you can instruct a number of allies equal to your Charisma modifier in the use of that modification. The allies to be trained must have an Intelligence of at least 3. The instructed allies gain the benefit of Armor Adept or Weapon Adept with that modification for 8 hours.",
                          summary: "Choose a modification that you have selected with the Armor Adept or Weapon Adept feat.",
                          source: "Adventurer's Armory 2", isPremium: true)
        )
        try await db.insertFeat(
        .make("Modified Weapon Proficiency (Combat)",
                          featType: "General",
                          prerequisites: "Proficiency with the selected weapon.",
                          benefit: "Select one type of weapon, such as longsword. You are always considered to be proficient with modified weapons of that type.",
                          normal: "A modified weapon is treated as one category more difficult to wield.",
                          special: "A warpriestACG with the focus weapon class feature can gain this feat with his deity’s favored weapon in place of his bonus Weapon Focus feat. A magusUM with the kensaiUC archetype can gain this feat with his chosen weapon in place of his bonus Weapon Focus feat.",
                          summary: "Select one type of weapon, such as longsword. You are always considered to be proficient with modified weapons of that type.",
                          source: "Adventurer's Armory 2", isPremium: true)
        )
        try await db.insertFeat(
        .make("Poppet Familiar",
                          featType: "General",
                          prerequisites: "Ability to acquire a new familiar, caster level 3rd.",
                          benefit: "You can choose a standard Tiny poppet that you control as your familiar. This poppet cannot have any existing augmentations. You absorb the poppet’s token harmlessly into your body, making it impossible for you to transfer control of the poppet thereafter. A poppet familiar uses the rules for regular familiars, with the following exceptions: its type does not change, and it does not gain the ability to speak with others of its kind. The poppet’s Wisdom score increases to match its Intelligence score and it can speak and understand one language chosen by you at the time you select the poppet as your familiar. A poppet familiar has Craft, Perception, Profession, and Stealth as class skills. A poppet familiar cannot receive augmentations from crafting, but its connection to you allows it to spontaneously generate augmentations of your choice as you increase in level. If your caster level is 5th or higher, your poppet familiar either becomes Small in size or gains two augmentations of your choice. You do not need to meet the requirements (or pay the construction cost) to craft these augmentations. At caster level 7th, and every 2 caster levels thereafter, your poppet familiar gains an additional augmentation of your choice. If your caster level is 7th or higher, your poppet familiar gains the ability to generate spray of splinters as a breath weapon that deals 1d6 points of piercing damage in a 15-foot cone. At caster level 9th and every 2 caster levels thereafter, the damage increases by 1d6 (to a maximum> of 7d6 at 19th level). A poppet can use this breath weapon three times per day. If your poppet familiar is lost or destroyed, you can replace it with another standard Tiny poppet that you control by undertaking a ritual that takes 8 hours to complete. If your previous poppet familiar was Small or had gained augmentations, you can choose different augmentations for your new poppet familiar.",
                          summary: "You can choose a standard Tiny poppet that you control as your familiar. This poppet cannot have any existing augmentations.",
                          source: "Adventurer's Armory 2", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tool Optimizer",
                          featType: "General",
                          prerequisites: "Craft (any) 1 rank, Disable Device 1 rank, or Profession (any) 1 rank.",
                          benefit: "You take no penalty for using an improvised tool associated with a skill in which you have at least 1 rank. For example, if you have 1 rank in Disable Device, you take no penalty when opening a lock without a proper tool. If you have at least 3 ranks in a skill, you can treat a normal tool associated with that skill as though it were a masterwork tool.",
                          summary: "You take no penalty for using an improvised tool associated with a skill in which you have at least 1 rank.",
                          source: "Adventurer's Armory 2", isPremium: true)
        )
        try await db.insertFeat(
        .make("Weapon Adept (Combat)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Choose a weapon modification (such as jagged hooks). You treat weapons with that modification as being of their normal category (simple, martial, or exotic).",
                          normal: "A modified weapon is treated as one category more difficult to wield.",
                          special: "You can gain this feat multiple times, choosing a different weapon modification each time.",
                          summary: "Choose a weapon modification (such as jagged hooks). You treat weapons with that modification as being of their normal category (simple, martial, or exotic).",
                          source: "Adventurer's Armory 2", isPremium: true),

                    // // MARK: - Adventurer's Armory 2, Dwarves of Golarion
        )
        try await db.insertFeat(
        .make("Darting Viper (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +4, proficiency with the dwarven dorn-dergar.",
                          benefit: "You can change whether you’re using the dorndergar as a normal or reach weapon as a swift action.",
                          normal: "Changing whether a dorn-dergar is a normal or reach weapon is a move action.",
                          summary: "You can change whether you’re using the dorndergar as a normal or reach weapon as a swift action.",
                          source: "Adventurer's Armory 2, Dwarves of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dorn-Dergar Master (Combat)",
                          featType: "General",
                          prerequisites: "Two-Weapon Fighting, base attack bonus +4, proficiency with the dwarven dorn-dergar.",
                          benefit: "You can use a dorn-dergar as a one-handed weapon. When using it one-handed, changing whether it’s a normal or reach weapon is a full-round action. If you have the Darting Viper feat, changing its reach is a move action.",
                          normal: "A dorn-dergar requires two hands to wield.",
                          summary: "You can use a dorn-dergar as a one-handed weapon. When using it one-handed, changing whether it’s a normal or reach weapon is a full-round action.",
                          source: "Adventurer's Armory 2, Dwarves of Golarion", isPremium: true),

                    // // MARK: - Adventurer's Guide
        )
        try await db.insertFeat(
        .make("Additional Affiliations",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Increase your affiliation slot total by 2.",
                          normal: "You have a number of affiliation slots equal to your Charisma modifier + 1 (minimum 1).",
                          special: "You can take this feat multiple times; each time you do so, your number of affiliation slots increases by 2.",
                          summary: "Increase your affiliation slot total by 2.",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Agile Maiden (Combat)",
                          featType: "General",
                          prerequisites: "Str 13; Dex 13; Endurance or armor training class feature; proficiency with heavy armor.",
                          benefit: "For the purpose of class features (such as a ranger’s combat style, a barbarian’s fast movement, or a magus’s spellcasting), you treat Gray Maiden plate as medium armor or heavy armor, whichever is more beneficial to a given ability. This does not affect the armor’s statistics, and it is still considered heavy armor for all other purposes.",
                          summary: "For the purpose of class features (such as a ranger’s combat style, a barbarian’s fast movement, or a magus’s spellcasting), you treat Gray Maiden plate as medium armor or heavy armor, whichever is…",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Al-Zabriti-Trained Horse",
                          featType: "General",
                          prerequisites: "Horse.",
                          benefit: "This horse automatically knows the tricks included in the combat riding trick (attack, come, defend, down, guard, and heel), and these tricks do not count against the normal maximum number of tricks the horse can learn. The Handle Animal DC to get the horse to perform a trick is reduced by 5, and the DC to teach the horse new tricks is reduced by 5.",
                          summary: "This horse automatically knows the tricks included in the combat riding trick (attack, come, defend, down, guard, and heel), and these tricks do not count against the normal maximum number of tricks…",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Aldori Artistry (Combat)",
                          featType: "General",
                          prerequisites: "Exotic Weapon Proficiency (Aldori dueling sword), Weapon Finesse, base attack bonus +2.",
                          benefit: "Choose one of the following combat maneuvers: disarm, repositionAPG, stealAPG, sunder, or trip. You gain a +2 bonus when performing the selected maneuver while wielding an Aldori dueling sword. This bonus does not stack with the bonus provided by a combat maneuver feat with “improved” in its name (such as Improved Trip).",
                          special: "You can select this feat multiple times, choosing a different combat maneuver each time.",
                          summary: "Choose one of the following combat maneuvers: disarm, repositionAPG, stealAPG, sunder, or trip. You gain a +2 bonus when performing the selected maneuver while wielding an Aldori dueling sword.",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Aldori Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Alertness, Exotic Weapon Proficiency (Aldori dueling sword), Weapon Finesse, Weapon Focus (Aldori dueling sword).",
                          benefit: "While using Aldori Style and wielding only a single Aldori dueling sword in one hand (not using a shield, an off-hand weapon, armor spikes, unarmed strikes, or natural weapons), when you fight defensively or use Combat Expertise, you gain a +2 bonus on weapon damage rolls.",
                          summary: "While using Aldori Style and wielding only a single Aldori dueling sword in one hand (not using a shield, an off-hand weapon, armor spikes, unarmed strikes, or natural weapons), when you fight…",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Aldori Style Aegis (Combat)",
                          featType: "General",
                          prerequisites: "Aldori Style, Alertness, Combat Reflexes, Exotic Weapon Proficiency (Aldori dueling sword), Weapon Finesse, Weapon Focus (Aldori dueling sword).",
                          benefit: "While using Aldori Style, at the beginning of your turn, you can designate a focused target as a swift action. This designation lasts until the beginning of your next turn, and you take a –2 penalty to your AC against all other creatures’ attacks for that duration. As an immediate action while using Combat Expertise or fighting defensively, you can attempt to parry the focused target’s attack. This functions as the swashbuckler’s opportune parry and riposte deed (Pathfinder RPG Advanced Class Guide 57), except that it does not cost panache and you cannot riposte.",
                          summary: "While using Aldori Style, at the beginning of your turn, you can designate a focused target as a swift action.",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Aldori Style Conquest (Combat)",
                          featType: "General",
                          prerequisites: "Aldori Style, Aldori Style Aegis, Alertness, Combat Reflexes, Exotic Weapon Proficiency (Aldori dueling sword), Weapon Finesse, Weapon Focus (Aldori dueling sword).",
                          benefit: "When you attempt to parry an attack using Aldori Style Aegis, you do not take any penalties on the attack roll incurred from using Combat Expertise or fighting defensively.",
                          summary: "When you attempt to parry an attack using Aldori Style Aegis, you do not take any penalties on the attack roll incurred from using Combat Expertise or fighting defensively.",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Armored Rider",
                          featType: "General",
                          prerequisites: "Mounted Combat, Ride 3 ranks.",
                          benefit: "You don’t take the usual armor check penalty on Ride checks. If you are knocked unconscious while in a saddle, you always remain in the saddle.",
                          normal: "If you are knocked unconscious while riding, you have a 50% chance to stay in the saddle (75% if you’re in a military saddle).",
                          summary: "You don’t take the usual armor check penalty on Ride checks. If you are knocked unconscious while in a saddle, you always remain in the saddle.",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Devil Sense",
                          featType: "General",
                          prerequisites: "Wis 13, ability to cast detect evil as a spell or spell-like ability.",
                          benefit: "At the beginning of your turn each round, if you are within 60 feet of an outsider with the evil subtype, you instinctively sense that something unholy is near. You may experience this sense as an unpleasant smell or taste (such as sulfur), as gooseflesh on your arms or neck, or as an ineffable sense of dread. This sense does not alert you to the direction of the outsider. Anything that can thwart or mislead detect evil can likewise block this sense.",
                          summary: "At the beginning of your turn each round, if you are within 60 feet of an outsider with the evil subtype, you instinctively sense that something unholy is near.",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Diva Advance (Combat)",
                          featType: "General",
                          prerequisites: "Cha 17, Combat Expertise, Diva Strike, Diva Style, Improved Feint, base attack bonus +11 or bard level 11th.",
                          benefit: "While using Diva Style, you do not provoke attacks of opportunity from creatures you have successfully feinted against. Additionally, you can feint against a creature using Diva Style from up to 30 feet away.",
                          summary: "While using Diva Style, you do not provoke attacks of opportunity from creatures you have successfully feinted against.",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Diva Strike (Combat)",
                          featType: "General",
                          prerequisites: "Cha 15; Combat Expertise; Diva Style; Improved Feint; base attack bonus +7 or bard level 7th.",
                          benefit: "While using Diva Style, the first time you hit with a melee weapon in a round, you deal an additional amount of damage equal to your Charisma modifier to a target that is denied its Dexterity bonus to AC. This damage is precision-based, and is not multiplied on a critical hit.",
                          summary: "While using Diva Style, the first time you hit with a melee weapon in a round, you deal an additional amount of damage equal to your Charisma modifier to a target that is denied its Dexterity bonus…",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Diva Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Cha 13; base attack bonus +1 or bard level 1st.",
                          benefit: "While using this style, you can use any Perform skill in place of Bluff to feint in combat. You can attempt a Perform check to feint as a move action when you begin a bardic performance.",
                          summary: "While using this style, you can use any Perform skill in place of Bluff to feint in combat. You can attempt a Perform check to feint as a move action when you begin a bardic performance.",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fanged Crown Massacre",
                          featType: "General",
                          prerequisites: "Bodyguard APG, Combat Reflexes, Perform (oratory) 3 ranks, any evil alignment.",
                          benefit: "Whenever an ally within 30 feet makes an attack, you can attempt a DC 10 Perform (oratory) check as an immediate action. If you are successful, the ally gains a +2 morale bonus on her attack roll. If an attack affected in this way would normally deal nonlethal damage, it deals lethal damage instead. This ability has no effect if your ally cannot hear you speak or understand your words.",
                          summary: "Whenever an ally within 30 feet makes an attack, you can attempt a DC 10 Perform (oratory) check as an immediate action. If you are successful, the ally gains a +2 morale bonus on her attack roll.",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Forceful Charge",
                          featType: "General",
                          prerequisites: "Improved Bull Rush, Power Attack, animal companion.",
                          benefit: "Once per round when this animal companion hits an opponent with a charge attack, it can initiate a bull rush against that target as a free action. If it moves its full speed as part of the charge, it gains a +4 bonus on its combat maneuver check to resolve this bull rush.",
                          summary: "Once per round when this animal companion hits an opponent with a charge attack, it can initiate a bull rush against that target as a free action.",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Garen's Discipline (Combat)",
                          featType: "General",
                          prerequisites: "Alertness, Exotic Weapon Proficiency (Aldori dueling sword), Weapon Focus (Aldori dueling sword), base attack bonus +4.",
                          benefit: "Whenever you use Combat Expertise, fight defensively, or take the total defense action, choose a type of saving throw. (You can choose a different type each time you take such an action.) Once per round before attempting a saving throw using the selected save, you gain a +2 bonus on that save. If you have a base attack bonus of +11 or higher, this bonus increases to +3. If you have a base attack bonus of +16 or higher, the bonus instead increases to +4.",
                          summary: "Whenever you use Combat Expertise, fight defensively, or take the total defense action, choose a type of saving throw.",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Gray Maiden Initiate",
                          featType: "General",
                          prerequisites: "Female, must be taken at 1st level.",
                          benefit: "You are affiliated with the Gray Maidens. In addition, choose two of the following benefits to represent the focus of your initial training and indoctrination. Avenging Knight: Like the Queens of the Night, you crave vengeance upon those who have wronged you. You gain a +1 bonus on damage rolls against any creature that dealt damage to you during the previous round. Deeper Indoctrination: Mental conditioning has bolstered your mind against most magical control. You gain a +1 bonus on Will saving throws, except when resisting charm or compulsion effects created by lawful evil creatures, in which case you instead take a –2 penalty on Will saving throws. Faceless Maiden: You can take advantage of the disquieting nature of the iconic armor of the Gray Maidens. While wearing Gray Maiden plate, you gain a +2 bonus on Intimidate checks. Gray Maiden Adept: You had some magical skill before being recruited and learned to cast spells despite the restrictive armor you were forced to wear. The arcane spell failure chance of Gray Maiden plate you wear is reduced by 5%. Gray Maiden Endurance: Surviving the brutal process of becoming a Gray Maiden taught you to endure more pain than others. You gain 2 hit points and can sleep while wearing Gray Maiden armor without becoming fatigued. Korvosan Acceptance: With the aid of the Scarlet Rose, you’ve successfully reintegrated into Korvosan society. You gain a +1 bonus on Diplomacy and Knowledge (local) checks, and one of these skills (your choice) is a class skill for you. Scarred: Your face was horribly scarred during Gray Maiden initiation, destroying your beauty. You take a –1 penalty on Diplomacy and Disguise checks, but gain a +2 bonus on Intimidate checks and on saving throws against pain effects (Pathfinder RPG Ultimate Magic 138). Tamed and Broken: You reach your full potential only when magically compelled. Whenever you are under the effects of an enemy’s compulsion spell, you gain a number of temporary hit points equal to the spell’s level. These temporary hit points last for the duration of the spell effect.",
                          special: "This feat is unaffiliated; a creature need not be affiliated with the Gray Maidens to select this feat.",
                          summary: "You are affiliated with the Gray Maidens. In addition, choose two of the following benefits to represent the focus of your initial training and indoctrination.",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Horse Whisperer",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You gain a +2 bonus on Handle Animal and Ride checks to handle or ride horses. In addition, you can attempt one Handle Animal check to issue a command to all horses within a 60-foot radius. An opponent whose animal companion or mount is within range can attempt a DC 20 Handle Animal check as an immediate action to prevent her horse from being influenced by you. If the opponent succeeds, you cannot influence that creature again for 1 hour.",
                          summary: "You gain a +2 bonus on Handle Animal and Ride checks to handle or ride horses. In addition, you can attempt one Handle Animal check to issue a command to all horses within a 60-foot radius.",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Forceful Charge",
                          featType: "General",
                          prerequisites: "Forceful Charge, Improved Bull Rush, Power Attack, animal companion.",
                          benefit: "This animal can bull rush a target that is up to two size categories larger than itself. If it pushes the target at least 10 feet as a result of this bull rush, it can attempt a trip combat maneuver check against the target as a free action. This trip combat maneuver provokes attacks of opportunity as normal.",
                          summary: "This animal can bull rush a target that is up to two size categories larger than itself.",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Horse Whisperer",
                          featType: "General",
                          prerequisites: "Horse Whisperer, Handle Animal 5 ranks, Ride 5 ranks.",
                          benefit: "With a successful DC 20 Handle Animal check, you can communicate with a horse as if you were using speak with animals for 1 round. The horse’s ability to communicate and take actions is still limited by its intelligence.",
                          summary: "With a successful DC 20 Handle Animal check, you can communicate with a horse as if you were using speak with animals for 1 round.",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Mounted Archery",
                          featType: "General",
                          prerequisites: "Mounted Archery, Mounted Combat, Ride 1 rank.",
                          benefit: "You take no penalty when using a ranged weapon while mounted and taking a double move action. The penalty while your mount is running is reduced to –2.",
                          summary: "You take no penalty when using a ranged weapon while mounted and taking a double move action. The penalty while your mount is running is reduced to –2.",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Purifying Channel",
                          featType: "General",
                          prerequisites: "Cha 15, Selective Channeling, channel energy class feature.",
                          benefit: "When you channel positive energy to heal, one creature that you exclude from your channeling takes an amount of fire damage equal to the die result you roll for healing, and is dazzled for 1 round by the light of these flames. A successful saving throw against your channel energy halves the fire damage and negates the dazzled effect.",
                          summary: "When you channel positive energy to heal, one creature that you exclude from your channeling takes an amount of fire damage equal to the die result you roll for healing, and is dazzled for 1 round by…",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Redistributed Might (Combat)",
                          featType: "General",
                          prerequisites: "Con 13 or Wis 13, Enhanced Morale, Exotic Weapon Proficiency (Aldori dueling sword), Iron Will, base attack bonus +4.",
                          benefit: "Whenever an effect would grant you an enhancement or morale bonus to your Strength score (such as via bull’s strength or a skald’s inspired rageACG performance), you can instead apply that bonus to your Dexterity score. You make this choice when you first gain the bonus. The bonus type does not change.",
                          summary: "Whenever an effect would grant you an enhancement or morale bonus to your Strength score (such as via bull’s strength or a skald’s inspired rageACG performance), you can instead apply that bonus to…",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Scarlet Rose Devotion",
                          featType: "General",
                          prerequisites: "Bodyguard APG, Combat Reflexes, Perform (oratory) 3 ranks, any good alignment.",
                          benefit: "Whenever an ally within 30 feet attempts a saving throw, you can attempt a DC 10 Perform (oratory) check as an immediate action. If you are successful, the ally gains a +2 morale bonus on her saving throw. This ability has no effect if your ally cannot hear you speak or understand your words.",
                          summary: "Whenever an ally within 30 feet attempts a saving throw, you can attempt a DC 10 Perform (oratory) check as an immediate action.",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Serren's Masterstroke (Combat)",
                          featType: "General",
                          prerequisites: "Exotic Weapon Proficiency (Aldori dueling sword), Weapon Focus (Aldori dueling sword), base attack bonus +6.",
                          benefit: "Once per round when you hit a foe you have successfully feinted against via a melee attack using an Aldori dueling sword, you deal an extra 2d6 points of precision damage. When your base attack bonus reaches +11, this damage bonus increases to +3d6, and at base attack bonus +16, it increases to +4d6. This precision damage does not stack with damage from sneak attack, a vigilante’s sudden strike, or similar effects. Any effect which protects against sneak attack damage also protects against this additional damage.",
                          summary: "Once per round when you hit a foe you have successfully feinted against via a melee attack using an Aldori dueling sword, you deal an extra 2d6 points of precision damage.",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sinister Reputation",
                          featType: "General",
                          prerequisites: "Cha 13; Intimidate 5 ranks; Persuasive or renown social talentUI.",
                          benefit: "By spending 8 hours cultivating your local legend in a settlement and then succeeding at an Intimidate check, your fearsome reputation becomes common knowledge. The DC is based on the size of the settlement (see the Sinister Reputation table below and page 203 of Pathfinder RPG GameMastery Guide). If the check succeeds, you can attempt an Intimidate check to demoralize a creature that has fewer Hit Dice than you as a swift action, and using Intimidate to force a creature to act friendly to you takes only half as long. You gain these benefits only while within the settlement and while not disguised. These benefits last for a number of days equal to your half your level + your Charisma modifier.",
                          special: "This feat’s benefits always apply to a vigilante’sUI area of renown, and he can choose whether the reputation and benefits apply to his social identity, vigilante identity, or both. You can always apply this feat’s benefits to followers and cohorts gained from Leadership or similar abilities. Sinister Reputation Settlement Size DC Thorp 10 Hamlet 12 Village 15 Small town 18 Large town 20 Small city 25 Large city 30 Metropolis 35",
                          summary: "By spending 8 hours cultivating your local legend in a settlement and then succeeding at an Intimidate check, your fearsome reputation becomes common knowledge.",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sisterhood Dedication (Combat)",
                          featType: "General",
                          prerequisites: "Cha 13, Shield Focus, Shield Wall APG, Sisterhood Rampart, Sisterhood Style, Weapon Focus (longsword), base attack bonus +6.",
                          benefit: "While you’re using Sisterhood Style and wielding a longsword and either a light or heavy shield, the bonus on saving throws from Sisterhood Style increases to +2 and you grant half that bonus to all allies within 20 feet. In addition, you can choose up to two teamwork feats you have when entering the Sisterhood Style stance. As a swift action, you can grant one of those feats to two allies within 20 feet until the beginning of your next turn, or you can grant both feats to one ally within 20 feet until the beginning of your next turn.",
                          summary: "While you’re using Sisterhood Style and wielding a longsword and either a light or heavy shield, the bonus on saving throws from Sisterhood Style increases to +2 and you grant half that bonus to all…",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sisterhood Rampart (Combat)",
                          featType: "General",
                          prerequisites: "Cha 13, Shield Focus, Shield Wall APG, Sisterhood Style, Weapon Focus (longsword), base attack bonus +4.",
                          benefit: "While using Sisterhood Style, you and adjacent allies gain an additional +1 bonus to the shield bonus granted by Shield Wall, and each of you adds your shield bonus to AC (not counting enhancement bonuses) to your CMD against bull rush combat maneuvers. In addition, you and adjacent allies do not provide soft cover against allies’ attacks.",
                          summary: "While using Sisterhood Style, you and adjacent allies gain an additional +1 bonus to the shield bonus granted by Shield Wall, and each of you adds your shield bonus to AC (not counting enhancement…",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sisterhood Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Cha 13, Shield Focus, Weapon Focus (longsword), base attack bonus +2.",
                          benefit: "While using this style and wielding a longsword and a light or heavy shield, you gain a +1 bonus on Reflex and Will saving throws. In addition, when you enter the Sisterhood Style stance, you can choose a teamwork feat you have. As a swift action, you can grant that feat to an ally within 10 feet until the beginning of your next turn.",
                          summary: "While using this style and wielding a longsword and a light or heavy shield, you gain a +1 bonus on Reflex and Will saving throws.",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spirit Beacon",
                          featType: "General",
                          prerequisites: "Wis 15, Iron Will.",
                          benefit: "Select one specific category of spirit: fey, outsiders, or undead (including haunts). You gain a +1 bonus on Perception and Sense Motive checks against those creatures. If you have 10 or more ranks in one of these skills, the bonus increases to +2 for that skill. You also gain a +1 dodge bonus to your Armor Class against creatures of the chosen type, and a +1 insight bonus on Will saving throws against spells, spell-like abilities, and supernatural abilities of creatures of the chosen type. Any condition that causes you to lose your Dexterity bonus to AC also causes you to lose the AC and saving throw bonuses from this feat.",
                          special: "You shine like a light to the eyes of spirits. Fey, outsiders, and undead creatures gain a +2 bonus on Perception checks to notice you. You can select this feat up to three times. Each time you do, you must select a different creature type for this feat’s benefit.",
                          summary: "Select one specific category of spirit: fey, outsiders, or undead (including haunts). You gain a +1 bonus on Perception and Sense Motive checks against those creatures.",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spirit Rebuke",
                          featType: "General",
                          prerequisites: "Wis 17; Iron Will; Spirit Beacon; Diplomacy 5 ranks or Intimidate 5 ranks.",
                          benefit: "Select one specific category of spirit (fey, outsiders, or undead). Once per day as a standard action, you can condemn these spirits with such force of will that you can drive them from hosts, unravel their magic, or damage them physically. A rebuke targets a single spirit you can see (or one that is possessing a creature you can see) within 30 feet. Rebuking a spirit either functions as a targeted dispel magic spell or channels damaging energy directly into the creature, similar to a cleric’s channel energy ability. To dispel a spirit’s magic, attempt a dispel check, using your character level as your caster level (DC = 11 + spell level); if you’re successful, that effect is dispelled. You can dispel only spells and spell-like abilities affecting the spirit itself or a creature it is currently possessing. If you use this dispel effect to end a spirit’s possession of a creature or object, you gain a +2 bonus on this check. Channeling damaging energy instead deals 1d6 points of damage for every 2 character levels you have. A successful Will saving throw (DC = 10 + half your character level + your Charisma modifier) halves this damage.",
                          special: "You can select this feat up to three times. Each time you do, you must select a different category of spirit your rebuke can affect, and you can use the feat one additional time each day.",
                          summary: "Select one specific category of spirit (fey, outsiders, or undead).",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spirit Sight",
                          featType: "General",
                          prerequisites: "Wis 15, Iron Will, Spirit Beacon.",
                          benefit: "Invisible creatures of the fey, outsider, and undead types gain only concealment from you, rather than total concealment (though they can still gain total concealment from cover or use of the Stealth skill). Such creatures do not gain a bonus on attack rolls against you or ignore your Dexterity bonus to AC as normally granted by invisibility.",
                          summary: "Invisible creatures of the fey, outsider, and undead types gain only concealment from you, rather than total concealment (though they can still gain total concealment from cover or use of the Stealth…",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tag-Team Interrogation (Teamwork)",
                          featType: "General",
                          prerequisites: "Intimidating Prowess or Persuasive; Diplomacy 1 rank; Intimidate 1 rank.",
                          benefit: "While using Diplomacy or Intimidate to shift the attitude of a creature, one ally you can see who also has this feat can attempt to shift the creature’s attitude at the same time. You roll either a Diplomacy check or an Intimidate check, and your ally rolls a check with the other skill. If you both succeed, you choose whether to apply the Diplomacy check’s or Intimidate check’s effects; the other check has no direct effect but instead provides the first check a +5 circumstance bonus to its result. If only one person succeeds, ignore the failed check, but the successful skill check’s effect lasts only half as long. If you both fail, any effects resulting from both failed checks apply.",
                          summary: "While using Diplomacy or Intimidate to shift the attitude of a creature, one ally you can see who also has this feat can attempt to shift the creature’s attitude at the same time.",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Unbreakable (Combat)",
                          featType: "General",
                          prerequisites: "Con 13, Endurance, Toughness, fighter level 4th.",
                          benefit: "Whenever you gain 1 hit point as a fighter favored class benefit, you gain an additional hit point. Treat your effective Constitution score as being 4 higher for the purpose of determining when you would die from hit point damage. These benefits are retroactive.",
                          summary: "Whenever you gain 1 hit point as a fighter favored class benefit, you gain an additional hit point.",
                          source: "Adventurer's Guide", isPremium: true),

                    // // MARK: - Adventurer's Guide, Agents of Evil
        )
        try await db.insertFeat(
        .make("Aspis Partner",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Whenever you are in a settlement that is the size of a small town or larger, you can purchase (but not sell) items through your Aspis contacts. Treat your current settlement as though it were a metropolis to determine its base value and available magic items. You pay a 5% markup for such items, and orders take 3d6 days to be delivered through Consortium channels. You can pay an additional 1,000 gp to have your item magically delivered to you in 1d3 days instead.",
                          summary: "Whenever you are in a settlement that is the size of a small town or larger, you can purchase (but not sell) items through your Aspis contacts.",
                          source: "Adventurer's Guide, Agents of Evil", isPremium: true),

                    // // MARK: - Adventurer's Guide, Andoran, Birthplace of Freedom
        )
        try await db.insertFeat(
        .make("Eagle's Resolve",
                          featType: "General",
                          prerequisites: "Iron Will.",
                          benefit: "You receive a +1 bonus on saving throws against mind-affecting effects. When you succeed at such a saving throw, you gain a +2 morale bonus on all attack rolls, damage rolls, and saving throws against the source of that effect for a number of rounds equal to the spell’s level, or if the effect is not a spell, for a number of rounds equal to one-third the Hit Dice of the creature that created the effect.",
                          summary: "You receive a +1 bonus on saving throws against mind-affecting effects.",
                          source: "Adventurer's Guide, Andoran, Birthplace of Freedom", isPremium: true)
        )
        try await db.insertFeat(
        .make("Expert Boarder",
                          featType: "General",
                          prerequisites: "Affiliated with the Gray Corsairs.",
                          benefit: "Acrobatics and Climb are class skills for you. You gain a +2 bonus on Acrobatics and Climb checks to climb or swing on a rope or ship’s rigging. You do not provoke attacks of opportunity from climbing or swinging on a rope or ship’s rigging.",
                          summary: "Acrobatics and Climb are class skills for you. You gain a +2 bonus on Acrobatics and Climb checks to climb or swing on a rope or ship’s rigging.",
                          source: "Adventurer's Guide, Andoran, Birthplace of Freedom", isPremium: true)
        )
        try await db.insertFeat(
        .make("Falcon's Cry",
                          featType: "General",
                          prerequisites: "Cha 13, affiliated with the Steel Falcons.",
                          benefit: "You inspire a zeal for freedom in your allies. As a standard action, you can grant everyone within 60 feet who is able to see and hear you the ability to roll twice when attempting an Escape Artist check, a Will save against compulsions, or a Strength check to break chains, manacles, or similar bonds. Such checks must be attempted before the beginning of your next turn. You can do this once per day, plus one additional time for every 3 character levels that you have.",
                          summary: "You inspire a zeal for freedom in your allies. As a standard action, you can grant everyone within 60 feet who is able to see and hear you the ability to roll twice when attempting an Escape Artist…",
                          source: "Adventurer's Guide, Andoran, Birthplace of Freedom", isPremium: true)
        )
        try await db.insertFeat(
        .make("Legionnaire's Inspiration",
                          featType: "General",
                          prerequisites: "Affiliated with the Golden Legion.",
                          benefit: "As a standard action, you can select one creature you can see. All allies within 30 feet who are able to see and hear you gain a +1 morale bonus to their Armor Class against that creature for a number of rounds equal to your Charisma bonus (minimum 1 round). You can do this once per day, plus one additional time for every 3 character levels you have.",
                          summary: "As a standard action, you can select one creature you can see.",
                          source: "Adventurer's Guide, Andoran, Birthplace of Freedom", isPremium: true)
        )
        try await db.insertFeat(
        .make("Twilight Tattoo",
                          featType: "General",
                          prerequisites: "Wis 13, affiliated with the Twilight Talons.",
                          benefit: "You gain an invisible magical tattoo that identifies you as a member of the Twilight Talons. When you speak the command word, the tattoo becomes visible for 1 round before fading again. The tattoo has no magical aura when not visible and is not an illusion; it can’t be observed through magical means. (The command word causes the tattoo to manifest rather than ending the magic concealing it.) Additionally, you gain a +2 bonus on Disguise checks, on Sleight of Hand checks to hide small objects on your person, and on Will saving throws against attempts to scry upon you or read your mind.",
                          summary: "You gain an invisible magical tattoo that identifies you as a member of the Twilight Talons. When you speak the command word, the tattoo becomes visible for 1 round before fading again.",
                          source: "Adventurer's Guide, Andoran, Birthplace of Freedom", isPremium: true),

                    // // MARK: - Adventurer's Guide, Arcane Anthology
        )
        try await db.insertFeat(
        .make("Extra Spontaneous Spell Mastery",
                          featType: "General",
                          prerequisites: "Magaambyan arcanist spontaneous spell mastery class feature.",
                          benefit: "You gain one additional use of your spontaneous spell mastery ability per day.",
                          special: "You can take this feat multiple times.",
                          summary: "You gain one additional use of your spontaneous spell mastery ability per day.",
                          source: "Adventurer's Guide, Arcane Anthology", isPremium: true)
        )
        try await db.insertFeat(
        .make("Mask Focus",
                          featType: "General",
                          prerequisites: "Extend Spell, Nameless One, ability to cast 3rd-level arcane spells.",
                          benefit: "While you’re benefiting from the Nameless One feat (see below), the mask you wear to gain the benefits of that feat satisfies the focus component of any spell you cast that requires a mask (such as mask from divination). In addition, once per day you can apply the Extend Spell metamagic feat to an arcane spell without increasing the spell’s level by adding your mask as a focus component. When Extend Spell is applied in this manner, its increase to duration applies only to effects that target you; other creatures use the spell’s normal duration. For example, if you use this ability with the haste spell, the spell’s effects last twice as long for you, but not for any other creature that you target with the spell.",
                          summary: "While you’re benefiting from the Nameless One feat (see below), the mask you wear to gain the benefits of that feat satisfies the focus component of any spell you cast that requires a mask (such as…",
                          source: "Adventurer's Guide, Arcane Anthology", isPremium: true)
        )
        try await db.insertFeat(
        .make("Masked Intent",
                          featType: "General",
                          prerequisites: "Nameless One.",
                          benefit: "While you’re benefiting from the Nameless One feat, your intentions become difficult to read. You gain a +4 circumstance bonus on opposed Bluff checks, and increase the DC by 4 of checks to gather information about you using Diplomacy, to answer questions about you or your abilities or weaknesses using the appropriate Knowledge skill, or to identify any spells or spell-like abilities that you cast using Spellcraft. If you have 10 or more ranks in any of these skills, the bonus for that skill or increase to that DC increases to +8.",
                          summary: "While you’re benefiting from the Nameless One feat, your intentions become difficult to read.",
                          source: "Adventurer's Guide, Arcane Anthology", isPremium: true)
        )
        try await db.insertFeat(
        .make("Masked by Fear",
                          featType: "General",
                          prerequisites: "Nameless One; base Will save bonus +6 or bravery class feature.",
                          benefit: "By donning a mask etched with your greatest terrors, you are able to eschew fear completely. While benefiting from the Nameless One feat, when you suffer the cowering, frightened, or panicked condition, that condition causes you to act as if shaken instead of imposing its normal effects. In addition, whenever you attempt a skill check (normally Intimidate) to demoralize an opponent, you gain a +3 bonus on the check.",
                          summary: "By donning a mask etched with your greatest terrors, you are able to eschew fear completely.",
                          source: "Adventurer's Guide, Arcane Anthology", isPremium: true)
        )
        try await db.insertFeat(
        .make("Nameless One",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When you take this feat, you eschew all of your former identities, going as far as to render your former name completely inaccessible to discover by mortal means. You perform an 8-hour ritual that requires the expenditure of 200 gp for rare oils, incense, and creation of a special mask. After this ritual, you forever lose all names and identities previously associated with you (including any identities that you gain from class abilities). You adopt a brief descriptive title in place of a new name. Your title must not reference the names of any people or places. (For example, you could adopt the title “Blue Fox” or “Twilight Stalker,” but not the title “Chelish Avenger” or “Spirit of the Mwangi.”) At the ritual’s conclusion, you must don the mask created for the ritual, the appearance of which is evocative of your title. While you’re wearing this mask, any attempts to scry or otherwise locate any of your eschewed identities or connect you to those identities do not work, revealing nothing but darkness, as if you were an invalid target or did not exist. Successful Knowledge checks to identify you reveal your new title rather than any old identity, but can reveal your strengths and weaknesses normally. As long as you wear the ritual mask and do not reveal your connection to any past identities, any attempt to scry on you in relation to of your eschewed identities requires a successful caster level check with a DC of 10 + your Hit Dice. In addition, you are immune to effects that require the use of your name, such as the named bullet UC spell. While benefiting from this feat, you cannot wear any magic items in the head slot, as the mask used by this effect effectively occupies this slot (though this feat’s benefits are not magical for the purpose of dispel magic and other effects). In addition, you cannot attempt to impersonate a specific individual by any means, magical or nonmagical. If you ever reveal or confirm your connection to your eschewed identities, you immediately lose the benefit of this feat and gain 1d4 permanent negative levels as your discarded identities return. You cannot regain the benefit of this feat or remove these negative levels until you atone (as per atonement, as if restoring a class feature).",
                          summary: "When you take this feat, you eschew all of your former identities, going as far as to render your former name completely inaccessible to discover by mortal means.",
                          source: "Adventurer's Guide, Arcane Anthology", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ritual Mask",
                          featType: "General",
                          prerequisites: "Nameless One, ability to cast one or more occult rituals (Pathfinder RPG Occult Adventures 208).",
                          benefit: "While benefiting from the Nameless One feat, your masked identity affords you a greater spiritual connection when you act as the primary caster for an occult ritual you know. For any such occult ritual, you can attempt all required skill checks, even if untrained in such a skill. If you are trained in such a skill, you instead gain a +3 bonus on your skill check. In addition, if you have the spirit class feature (as per the shamanACG or mediumOA class), you can use the ritualistic focus afforded by this feat to enhance your connection to spirits with which you have communed. Once per day, when you use a supernatural ability granted to you by your spirit (such as a shaman’s spirit’s hex or spirit abilities, or a medium’s spirit powers), you increase your effective class level by 1 when determining the effects of that supernatural ability.",
                          summary: "While benefiting from the Nameless One feat, your masked identity affords you a greater spiritual connection when you act as the primary caster for an occult ritual you know.",
                          source: "Adventurer's Guide, Arcane Anthology", isPremium: true),

                    // // MARK: - Adventurer's Guide, Cities of Golarion
        )
        try await db.insertFeat(
        .make("Mounted Onslaught",
                          featType: "General",
                          prerequisites: "Mounted Combat, Trample, Ride 5 ranks.",
                          benefit: "On your turn, you can overrun more than one creature. Each overrun combat maneuver check beyond the first takes a cumulative –5 penalty. If you fail to overrun a target, your movement ends. Your mount can make only a single hoof attack against one target that is knocked prone by your overrun (not one per prone opponent).",
                          normal: "You can perform only one overrun combat maneuver per round.",
                          summary: "On your turn, you can overrun more than one creature. Each overrun combat maneuver check beyond the first takes a cumulative –5 penalty. If you fail to overrun a target, your movement ends.",
                          source: "Adventurer's Guide, Cities of Golarion", isPremium: true),

                    // // MARK: - Adventurer's Guide, Inner Sea Combat
        )
        try await db.insertFeat(
        .make("Aldori Dueling Disciple (Combat)",
                          featType: "General",
                          prerequisites: "Exotic Weapon Proficiency (Aldori dueling sword), Weapon Finesse, Weapon Focus (Aldori dueling sword).",
                          benefit: "You gain a +2 morale bonus on Intimidate checks to demoralize opponents, and the DC of any attempt to demoralize you increases by 2. When you’re participating in a duel, these bonuses increase to +4.",
                          summary: "You gain a +2 morale bonus on Intimidate checks to demoralize opponents, and the DC of any attempt to demoralize you increases by 2. When you’re participating in a duel, these bonuses increase to +4.",
                          source: "Adventurer's Guide, Inner Sea Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Duelist of the Roaring Falls (Combat)",
                          featType: "General",
                          prerequisites: "Aldori Dueling Disciple, Exotic Weapon Proficiency (Aldori dueling sword), Weapon Finesse, Weapon Focus (Aldori dueling sword), base attack bonus +5.",
                          benefit: "When you use an Aldori dueling sword to deal damage to a shaken, frightened, or panicked foe, you can add your Dexterity bonus to damage rolls instead of your Strength bonus. If you can already add your Dexterity bonus to damage rolls, you instead gain a +1 competence bonus on damage rolls made with an Aldori dueling sword. When you attempt a dueling parry during a duel, the penalty on your attack roll to parry is reduced from –5 to –3. To gain these benefits, you must be wielding only an Aldori dueling sword (not using a shield, an off-hand weapon, armor spikes, unarmed strikes, or natural weapons).",
                          summary: "When you use an Aldori dueling sword to deal damage to a shaken, frightened, or panicked foe, you can add your Dexterity bonus to damage rolls instead of your Strength bonus.",
                          source: "Adventurer's Guide, Inner Sea Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Duelist of the Shrouded Lake (Combat)",
                          featType: "General",
                          prerequisites: "Aldori Dueling Disciple, Exotic Weapon Proficiency (Aldori dueling sword), Weapon Finesse, Weapon Focus (Aldori dueling sword), base attack bonus +5.",
                          benefit: "When attempting to bull rush or repositionAPG a foe, you gain a +1 insight bonus on the combat maneuver check and a +4 dodge bonus to your AC against attacks of opportunity you provoke. You also gain a +1 insight bonus to your CMD against bull rush and reposition attempts. When you attempt a dueling dodge during a duel, your bonus to AC increases to +6. To gain these benefits, you must be wielding only an Aldori dueling sword (not using a shield, an off-hand weapon, armor spikes, unarmed strikes, or natural weapons).",
                          summary: "When attempting to bull rush or repositionAPG a foe, you gain a +1 insight bonus on the combat maneuver check and a +4 dodge bonus to your AC against attacks of opportunity you provoke.",
                          source: "Adventurer's Guide, Inner Sea Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Falling Water Gambit (Combat)",
                          featType: "General",
                          prerequisites: "Aldori Dueling Disciple, Duelist of the Roaring Falls, Duelist of the Shrouded Lake, Exotic Weapon Proficiency (Aldori dueling sword), Weapon Finesse, Weapon Focus (Aldori dueling sword), base attack bonus +8.",
                          benefit: "When attacking a creature denied its Dexterity bonus to AC because of your successful feint, you increase the threat range of your Aldori dueling sword by 1 (typically to 18–20/×2), and gain a +2 bonus on attack rolls to confirm critical hits. After you make a dueling dodge or succeed at a dueling parry during a duel, you can make an attack of opportunity against the foe who attacked you if that foe is shaken, frightened, or panicked. To gain these benefits, you must be wielding only an Aldori dueling sword (not using a shield, an off-hand weapon, armor spikes, unarmed strikes, or natural weapons).",
                          summary: "When attacking a creature denied its Dexterity bonus to AC because of your successful feint, you increase the threat range of your Aldori dueling sword by 1 (typically to 18–20/×2), and gain a +2…",
                          source: "Adventurer's Guide, Inner Sea Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Perfect Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Wis 13; base attack bonus +5 or monk level 5th.",
                          benefit: "When you take this feat, choose one of the Houses of Perfection; once this decision has been made, it cannot be changed. While using this style, you gain a type of energy resistance based on the House of Perfection you have chosen. Students of the Monastery of Untwisting Iron gain acid resistance 5. Students of the Monastery of Unblinking Flame gain fire resistance 5. Students of the Monastery of Unfolding Wind gain electricity resistance 5. If you have energy resistance from a racial trait or class feature, the energy resistance gained from this style stacks. Additionally, you gain a ki pool that you can use to activate abilities of your chosen House of Perfection style. Your pool contains 2 ki points, and this increases by 1 point at 9th level and every 4 levels thereafter. If you have a ki pool from another source, you do not gain additional ki points from this feat.",
                          normal: "You can select Perfect Style multiple times. Each time you do so, you must select a different House of Perfection to belong to.",
                          summary: "When you take this feat, choose one of the Houses of Perfection; once this decision has been made, it cannot be changed.",
                          source: "Adventurer's Guide, Inner Sea Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Unblinking Flame Feint (Combat)",
                          featType: "General",
                          prerequisites: "Int 13; Wis 13; Combat Expertise; Perfect Style; base attack bonus +9 or monk level 9th.",
                          benefit: "While using Perfect Style, you can use your Wisdom modifier in place of your Charisma modifier when attempting Bluff checks to feint. You can spend 1 ki point as a swift action to gain the benefits of Improved Feint for 1 round.",
                          summary: "While using Perfect Style, you can use your Wisdom modifier in place of your Charisma modifier when attempting Bluff checks to feint.",
                          source: "Adventurer's Guide, Inner Sea Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Unblinking Flame Fist (Combat)",
                          featType: "General",
                          prerequisites: "Int 13; Wis 13; Combat Expertise; Perfect Style; Stunning Fist; Unblinking Flame Feint; base attack bonus +13 or monk level 13th.",
                          benefit: "When using Perfect Style, the save DC of your stunning fist attack increases by 2 against flat-footed targets. When you spend 1 ki point to gain the benefits of Improved Feint for 1 round, you can attempt a feint as part of your movement when charging.",
                          summary: "When using Perfect Style, the save DC of your stunning fist attack increases by 2 against flat-footed targets.",
                          source: "Adventurer's Guide, Inner Sea Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Unfolding Wind Rush (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13; Wis 13; Dodge; Mobility; Perfect Style; Quick Draw; Unfolding Wind Strike; base attack bonus +13 or monk level 13th.",
                          benefit: "When using Perfect Style and wielding thrown weapons, you can combine a full-attack action with a single move action. You must forgo the attack at your highest bonus but can take the remaining attacks as normal at any point during your movement. You can spend 1 ki point as a swift action to create a path of wind along your path of movement that functions as wind wall for 1 round; this effect does not affect your ranged attacks.",
                          summary: "When using Perfect Style and wielding thrown weapons, you can combine a full-attack action with a single move action.",
                          source: "Adventurer's Guide, Inner Sea Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Unfolding Wind Strike (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13; Wis 13; Perfect Style; Quick Draw; base attack bonus +9 or monk level 9th.",
                          benefit: "When using Perfect Style, you double the range increment of any thrown weapon you wield. You can spend 1 ki point as a swift action to imbue a number of thrown weapons equal to your Wisdom bonus with the returning or seeking weapon special ability for 1 round.",
                          summary: "When using Perfect Style, you double the range increment of any thrown weapon you wield.",
                          source: "Adventurer's Guide, Inner Sea Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Untwisting Iron Skin (Combat)",
                          featType: "General",
                          prerequisites: "Str 15; Wis 13; Perfect Style; Toughness; Untwisting Iron Strength; base attack bonus +13 or monk level 13th.",
                          benefit: "When using Perfect Style, you gain an amount of DR/adamantine equal to 1/3 your character level (maximum 6). Additionally, whenever you break an item with a hardness of 10 or more, you gain DR 1/— for a number of rounds equal to half the item’s hit points (maximum 10 rounds); the value of this damage reduction increases by 1 for every 5 points of hardness above 10 the broken item had. You can spend 1 ki point as a swift action to double either of the damage reduction values granted by this feat for 1 round.",
                          summary: "When using Perfect Style, you gain an amount of DR/adamantine equal to 1/3 your character level (maximum 6).",
                          source: "Adventurer's Guide, Inner Sea Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Untwisting Iron Strength (Combat)",
                          featType: "General",
                          prerequisites: "Str 15; Wis 13; Perfect Style; base attack bonus +9 or monk level 9th.",
                          benefit: "When using Perfect Style, your attacks ignore an amount of hardness equal to your character level. Additionally, you gain a +4 bonus on Strength checks to break objects. If you spend 1 ki point as a swift action, you also gain the benefits of Improved Sunder for 1 round.",
                          summary: "When using Perfect Style, your attacks ignore an amount of hardness equal to your character level. Additionally, you gain a +4 bonus on Strength checks to break objects.",
                          source: "Adventurer's Guide, Inner Sea Combat", isPremium: true),

                    // // MARK: - Adventurer's Guide, Inner Sea World Guide
        )
        try await db.insertFeat(
        .make("Rugged Northerner",
                          featType: "General",
                          prerequisites: "Con 13, Survival 1 rank.",
                          benefit: "You treat extreme cold conditions (Pathfinder RPG Core Rulebook 442) as severe cold, and severe cold as cold weather conditions. You are not impacted at all by normal cold weather conditions. In addition, you do not become fatigued by frostbite or hypothermia.",
                          special: "This feat is unaffiliated—a character need not be affiliated with the Mammoth Lords to select this feat.",
                          summary: "You treat extreme cold conditions (Pathfinder RPG Core Rulebook 442) as severe cold, and severe cold as cold weather conditions. You are not impacted at all by normal cold weather conditions.",
                          source: "Adventurer's Guide, Inner Sea World Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Scholar",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Pick any two Knowledge skills. You gain a +2 bonus on checks with these two skills. If you have 10 or more ranks in one of these Knowledge skills, the bonus increases to +4 for that skill.",
                          special: "This feat is unaffiliated; a creature need not be affiliated with the Magaambya to select this feat.",
                          summary: "Pick any two Knowledge skills. You gain a +2 bonus on checks with these two skills. If you have 10 or more ranks in one of these Knowledge skills, the bonus increases to +4 for that skill.",
                          source: "Adventurer's Guide, Inner Sea World Guide", isPremium: true),

                    // // MARK: - Adventurer's Guide, Pathfinder Campaign Setting, Inner Sea World Guide
        )
        try await db.insertFeat(
        .make("Aldori Dueling Mastery (Combat)",
                          featType: "General",
                          prerequisites: "Exotic Weapon Proficiency (Aldori dueling sword), Quick Draw, Weapon Finesse, Weapon Focus (Aldori dueling sword).",
                          benefit: "You gain a +2 bonus on initiative checks as long as you start combat with an Aldori dueling sword in your hand. As long as you wield only a single Aldori dueling sword in one hand (not using a shield, an off-hand weapon, armor spikes, unarmed strikes, or natural weapons), you gain a +2 shield bonus to your AC. If you wield the sword in two hands, this bonus drops to a +1 shield bonus to AC. Although the dueling sword deals slashing damage, you treat it as if it were also a piercing weapon when determining the effects of weapons used by a duelist or swashbuckler.",
                          summary: "You gain a +2 bonus on initiative checks as long as you start combat with an Aldori dueling sword in your hand.",
                          source: "Adventurer's Guide, Pathfinder Campaign Setting, Inner Sea World Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Storm-Lashed",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You can ignore many of the effects of severe weather. In rainy conditions, your visibility is reduced by only one-quarter (not by half ) and you take only a –2 penalty on Perception checks. You are treated as if you were one size category larger for the purpose of wind effects, and halve any penalty on Perception checks caused by high winds. Finally, you gain a +2 bonus on saving throws against effects with the electricity descriptor or that deal electricity damage.",
                          summary: "You can ignore many of the effects of severe weather. In rainy conditions, your visibility is reduced by only one-quarter (not by half ) and you take only a –2 penalty on Perception checks.",
                          source: "Adventurer's Guide, Pathfinder Campaign Setting, Inner Sea World Guide", isPremium: true),

                    // // MARK: - Adventurer's Guide, People of the North
        )
        try await db.insertFeat(
        .make("Cold Celerity",
                          featType: "General",
                          prerequisites: "Endurance.",
                          benefit: "When you are in conditions of severe cold (below 0° F), you gain a +2 bonus on initiative checks and a +1 bonus on attack rolls. In addition, you gain the bonus on attack rolls for 1 round after any round in which you take cold damage.",
                          summary: "When you are in conditions of severe cold (below 0° F), you gain a +2 bonus on initiative checks and a +1 bonus on attack rolls.",
                          source: "Adventurer's Guide, People of the North", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tribal Scars",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You gain one of the following benefits, depending on which Mammoth Lord following you belong to. (At the GM’s discretion, other options of her own design could exist for different tribes.) Bearpelt: You gain a +1 bonus on Fortitude saves and a +2 bonus on Intimidate checks. Greattusk: You gain a +2 bonus on checks to perform bull rush or overrun combat maneuvers and a +2 bonus on Ride checks. Ice Chasm: You gain a +1 bonus on Reflex saves and a +2 bonus on Climb checks. Night Hunt: You gain a +2 bonus on Perception and Survival checks. Raptorscale: Your base land speed increases by 5 feet, and you gain a +2 bonus on Acrobatics checks. Slothjaw: You gain a +1 bonus on Will saves and a +2 bonus on Handle Animal checks.",
                          summary: "You gain one of the following benefits, depending on which Mammoth Lord following you belong to.",
                          source: "Adventurer's Guide, People of the North", isPremium: true),

                    // // MARK: - Adventurer's Guide, Qadira, Gateway to the East, Qadira, Jewel of the East
        )
        try await db.insertFeat(
        .make("Mounted Blade",
                          featType: "General",
                          prerequisites: "Mounted Combat, Ride-By Attack, Ride 3 ranks.",
                          benefit: "When you use the Ride-By Attack feat, if your attack hits, you can also make an attack against a target adjacent to your original target. You take a –5 penalty on this additional attack, which does not benefit from any effects of a charge.",
                          summary: "When you use the Ride-By Attack feat, if your attack hits, you can also make an attack against a target adjacent to your original target.",
                          source: "Adventurer's Guide, Qadira, Gateway to the East, Qadira, Jewel of the East", isPremium: true),

                    // // MARK: - Adventurer's Guide, Second Darkness Player's Guide, Inner Sea World Guide
        )
        try await db.insertFeat(
        .make("Cypher Magic",
                          featType: "General",
                          prerequisites: "Int 15, Scribe Scroll.",
                          benefit: "You cast spells from scrolls at 1 caster level higher than the scroll’s caster level. In addition, you gain a +2 bonus on caster level checks to activate a scroll with a higher caster level than your own.",
                          summary: "You cast spells from scrolls at 1 caster level higher than the scroll’s caster level.",
                          source: "Adventurer's Guide, Second Darkness Player's Guide, Inner Sea World Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cypher Script",
                          featType: "General",
                          prerequisites: "Knowledge (arcana) 1 rank, Linguistics 1 rank, Spellcraft 1 rank, spellbook class feature.",
                          benefit: "Any spell you scribe in your spellbook costs half as much as normal and takes up only half the room it normally would (round all fractions up). It takes you only 10 minutes per spell level to scribe a spell into your spellbook (5 minutes for cantrips).",
                          summary: "Any spell you scribe in your spellbook costs half as much as normal and takes up only half the room it normally would (round all fractions up).",
                          source: "Adventurer's Guide, Second Darkness Player's Guide, Inner Sea World Guide", isPremium: true),

                    // // MARK: - Animal Archive
        )
        try await db.insertFeat(
        .make("Critical Conduit",
                          featType: "General",
                          prerequisites: "Deliver touch spells ability, familiar.",
                          benefit: "When delivering a touch spell for your master, the critical threat range of your touch attack is doubled. This feat does not stack with Improved Critical or other effects that increase critical threat range.",
                          summary: "When delivering a touch spell for your master, the critical threat range of your touch attack is doubled.",
                          source: "Animal Archive", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Item Slot",
                          featType: "General",
                          prerequisites: "Non-humanoid body shape.",
                          benefit: "Choose one magic item slot not normally available to creatures with your shape. You can now use magic items in that slot.",
                          summary: "Choose one magic item slot not normally available to creatures with your shape. You can now use magic items in that slot.",
                          source: "Animal Archive", isPremium: true)
        )
        try await db.insertFeat(
        .make("Familiar Focus",
                          featType: "General",
                          prerequisites: "Familiar.",
                          benefit: "Whenever your master targets you with a harmless spell or spell-like ability, your master’s effective caster level for the effect is increased by 1.",
                          summary: "Whenever your master targets you with a harmless spell or spell-like ability, your master’s effective caster level for the effect is increased by 1.",
                          source: "Animal Archive", isPremium: true)
        )
        try await db.insertFeat(
        .make("Familiar Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "Spellcaster with familiar class feature.",
                          benefit: "You can transfer a prepared spell to your familiar, allowing the familiar to cast that spell at a later time. Variables that rely on caster level function according to your caster level, not your familiar’s Hit Dice, though your familiar’s Intelligence may influence how precisely it can follow your instructions on how to use these spells. Your familiar must be able to speak to cast spells with a verbal component (the ability to speak with its master or creatures of its kind is insufficient). Your familiar must be carrying any material or focus components necessary, unless the materials cost less than 1 gp and the spell is prepared with Eschew Materials. Attack rolls use your familiar’s ability scores. A familiar spell counts against the number of spells you may prepare for as long as your familiar retains the spell. Once your familiar casts a retained spell, you can prepare a new spell in that slot the next time you prepare spells. A familiar spell uses up a spell slot 3 levels higher than the spell’s actual level. Your familiar can store a number of spell levels (including this modifier) equal to your caster level, but no spell’s adjusted level can exceed half your caster level.",
                          special: "If you are a spontaneous caster, you must select a specific spell with which to imbue your familiar; you cannot imbue your familiar with an open spell slot.",
                          summary: "You can transfer a prepared spell to your familiar, allowing the familiar to cast that spell at a later time.",
                          source: "Animal Archive", isPremium: true)
        )
        try await db.insertFeat(
        .make("Jumper",
                          featType: "General",
                          prerequisites: "Acrobatics 1 rank, creature type other than humanoid or outsider.",
                          benefit: "You always count as having a running start when making jump checks using Acrobatics. Acrobatics becomes a class skill for you.",
                          summary: "You always count as having a running start when making jump checks using Acrobatics. Acrobatics becomes a class skill for you.",
                          source: "Animal Archive", isPremium: true)
        )
        try await db.insertFeat(
        .make("Lithe Attacker",
                          featType: "General",
                          prerequisites: "Narrow Frame, Escape Artist 5 ranks, animal or magical beast.",
                          benefit: "You can attack from nooks and crannies, even while using Escape Artist to squeeze through or into a narrow space less than half as wide as your normal space, and you do not lose your Dexterity bonus to AC while using Escape Artist to squeeze through or into a narrow space. You still take a –4 penalty to AC while using Escape Artist in this way.",
                          summary: "You can attack from nooks and crannies, even while using Escape Artist to squeeze through or into a narrow space less than half as wide as your normal space, and you do not lose your Dexterity bonus…",
                          source: "Animal Archive", isPremium: true)
        )
        try await db.insertFeat(
        .make("Master of Your Kind",
                          featType: "General",
                          prerequisites: "Familiar, speak with animals of its kind ability.",
                          benefit: "Your master gains a +2 bonus on Handle Animal checks with animals of your kind. In addition, once per day you can use animal messenger, animal trance, or charm animal as a spell-like ability, using your master’s caster level but your own Charisma modifier. These abilities affect only animals of your kind, and you gain only one use of this ability per day (not one of each ability); however, you can gain one additional use of any one of these three abilities by having your master sacrifice a prepared spell or spell slot of the same level or higher as a standard action.",
                          summary: "Your master gains a +2 bonus on Handle Animal checks with animals of your kind.",
                          source: "Animal Archive", isPremium: true)
        )
        try await db.insertFeat(
        .make("Narrow Frame",
                          featType: "General",
                          prerequisites: "Escape Artist 1 rank, animal or magical beast.",
                          benefit: "You do not take penalties on your attack rolls or to your AC for squeezing through a narrow space that is at least half as wide as your normal space, though each move into or through a narrow space still counts as if it were 2 squares.",
                          normal: "You take a –4 penalty on attack rolls and a –4 penalty to AC while squeezing.",
                          summary: "You do not take penalties on your attack rolls or to your AC for squeezing through a narrow space that is at least half as wide as your normal space, though each move into or through a narrow space…",
                          source: "Animal Archive", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spell Sponge",
                          featType: "General",
                          prerequisites: "Animal companion or familiar, share spells ability.",
                          benefit: "Whenever your master targets you with a harmless spell with a target of “you,” the spell’s duration is doubled as if modified by the Extend Spell metamagic feat. This does not affect spells with a duration of concentration, instantaneous, or permanent, or spells already modified by Extend Spell.",
                          summary: "Whenever your master targets you with a harmless spell with a target of “you,” the spell’s duration is doubled as if modified by the Extend Spell metamagic feat.",
                          source: "Animal Archive", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stable Gallop",
                          featType: "General",
                          prerequisites: "Animal or magical beast.",
                          benefit: "Your AC penalty when charging is halved. The penalties on ranged attacks made by your rider are reduced by 1 when you take a double move and by 2 when you run (minimum penalty of 0). Your rider gains a +4 bonus on concentration checks caused by your motion.",
                          summary: "Your AC penalty when charging is halved. The penalties on ranged attacks made by your rider are reduced by 1 when you take a double move and by 2 when you run (minimum penalty of 0).",
                          source: "Animal Archive", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sure-Footed",
                          featType: "General",
                          prerequisites: "Quadruped animal or magical beast.",
                          benefit: "You gain a +2 bonus on Acrobatics checks to keep your balance and Reflex saves to avoid falling. You can move at a normal speed on steep slopes and stairs and do not risk falling when running or charging downhill.",
                          normal: "Moving uphill costs 2 squares of movement to enter each square of steep slope. Running or charging downhill requires a successful DC 10 Acrobatics check (or DC 10 Ride check for mounted characters) or you risk falling (Pathfinder RPG Core Rulebook 428).",
                          summary: "You gain a +2 bonus on Acrobatics checks to keep your balance and Reflex saves to avoid falling.",
                          source: "Animal Archive", isPremium: true)
        )
        try await db.insertFeat(
        .make("Valiant Steed",
                          featType: "General",
                          prerequisites: "Animal or magical beast.",
                          benefit: "You gain a +4 morale bonus on saves against fear and emotion effects. If you can serve as a mount, your rider gains a +4 morale bonus on Handle Animal, Ride, and wild empathy checks to force you within range of a creature with the unnatural aura universal monster rule. In addition, the DC to push you with the Handle Animal skill does not increase if you are wounded or have taken any nonlethal damage or ability score damage.",
                          normal: "The DC to push an animal increases by 2 if the animal is wounded or has taken any nonlethal damage or ability score damage.",
                          summary: "You gain a +4 morale bonus on saves against fear and emotion effects.",
                          source: "Animal Archive", isPremium: true),

                    // // MARK: - Antihero's Handbook
        )
        try await db.insertFeat(
        .make("Bloody Mess (Combat)",
                          featType: "General",
                          prerequisites: "Skill Focus (Intimidate).",
                          benefit: "Whenever you take an amount of piercing, slashing, or bleed damage equal to or greater than double your character level, you can attempt an Intimidate check as an immediate action to demoralize the creature that dealt the damage as long as it is within 30 feet of you. If the damage resulted from a critical hit, you can cause the target creature to be sickened instead of shaken if you successfully demoralize it. You can use this feat only once per round to attempt an Intimidate check to demoralize an opponent.",
                          summary: "Whenever you take an amount of piercing, slashing, or bleed damage equal to or greater than double your character level, you can attempt an Intimidate check as an immediate action to demoralize the…",
                          source: "Antihero's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Casting Conduit (Teamwork)",
                          featType: "General",
                          prerequisites: "Spellcraft 1 rank.",
                          benefit: "When casting a spell with a range of touch that deals hit point damage, you can target a willing, adjacent ally who also has this feat. The ally takes the minimum damage from the spell, and as an immediate action the ally can make a touch attack against an adjacent foe to deliver the spell. If this attack hits, the spell deals its normal damage to the opponent. If the ally has the grappled or pinned condition, the spell is automatically transferred to the grappling or grappled foe with no attack roll needed. This ability has no effect if the targeted ally is immune to the spell’s effect (such as shocking grasp delivered to an ally immune to electricity).",
                          summary: "When casting a spell with a range of touch that deals hit point damage, you can target a willing, adjacent ally who also has this feat.",
                          source: "Antihero's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Deceitful Incompetence (Combat)",
                          featType: "General",
                          prerequisites: "Combat Reflexes.",
                          benefit: "When you make an attack of opportunity in a single round after you have already made an unsuccessful attack of opportunity that round, you gain a cumulative +2 insight bonus on your attack roll for each unsuccessful attack of opportunity. For example, if you have made one unsuccessful attack of opportunity and an enemy provokes another attack of opportunity from you during that same round, you gain a +2 insight bonus on that attack roll, and if you have made two unsuccessful attacks of opportunity in a round and an enemy provokes another attack of opportunity from you during that same round, you gain a +4 insight bonus on that attack roll, and so on.",
                          summary: "When you make an attack of opportunity in a single round after you have already made an unsuccessful attack of opportunity that round, you gain a cumulative +2 insight bonus on your attack roll for…",
                          source: "Antihero's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Designated Antagonist (Teamwork)",
                          featType: "General",
                          prerequisites: "Antagonize UM .",
                          benefit: "When you succeed at a skill check using Antagonize, you can cause the target creature to focus its efforts on a willing ally who also has this feat, as if the ally had been the one to use the ability.",
                          summary: "When you succeed at a skill check using Antagonize, you can cause the target creature to focus its efforts on a willing ally who also has this feat, as if the ally had been the one to use the ability.",
                          source: "Antihero's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fall Guy (Teamwork)",
                          featType: "General",
                          prerequisites: "Bluff 1 rank.",
                          benefit: "An ally who also has this feat can spend a standard action bumbling around, uttering gaffes, or otherwise making herself appear to be socially inept. The ally takes a –2 penalty on future Charisma-based checks against characters who witnessed her behavior, but you gain a +2 competence bonus on such checks. The penalty and bonus both end after 24 hours.",
                          summary: "An ally who also has this feat can spend a standard action bumbling around, uttering gaffes, or otherwise making herself appear to be socially inept.",
                          source: "Antihero's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Opportunistic Grappler (Combat)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "While you are grappled (but not when you are controlling the grapple), you can attempt a dirty trickAPG combat maneuver against the creature grappling you without provoking an attack of opportunity or taking a penalty on the combat maneuver check. If you have the Improved Dirty TrickAPG feat, you gain a +2 bonus on combat maneuver checks to attempt such a dirty trick, and the condition the dirty trick imposes lasts for 1 round longer than normal. This bonus stacks with the bonuses granted by Improved Dirty Trick and Greater Dirty TrickAPG feats.",
                          summary: "While you are grappled (but not when you are controlling the grapple), you can attempt a dirty trickAPG combat maneuver against the creature grappling you without provoking an attack of opportunity…",
                          source: "Antihero's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Piercing Gambit (Teamwork)",
                          featType: "General",
                          prerequisites: "Spell Penetration or Bluff 3 ranks; caster level 1st.",
                          benefit: "You can expend one prepared spell or spell slot, as if you had cast the spell, to weaken an enemy’s defenses. Your spell has no effect, but a designated ally who also has this feat gains a bonus on her caster level check to overcome spell resistance equal to half the level of the spell or spell slot you expended, lasting until the start of your next turn.",
                          summary: "You can expend one prepared spell or spell slot, as if you had cast the spell, to weaken an enemy’s defenses.",
                          source: "Antihero's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sacrificial Aid (Teamwork)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When you attempt to disable a trap, an ally who also has this feat can bolster your efforts. The ally rolls 1d20 and adds either her total bonus on Disable Device checks or her character level, whichever is higher; if the result of the ally’s roll is 10 or greater, you gain a +4 bonus on your Disable Device check. If you trigger the trap, your ally is the target of the trap’s effects. In the case of a trap with multiple targets, your ally takes the effects both for herself and for you (potentially taking damage twice or attempting saving throws twice).",
                          normal: "You can use the aid another action only if you are able to attempt the skill check in question. The bonus provided is only +2.",
                          summary: "When you attempt to disable a trap, an ally who also has this feat can bolster your efforts.",
                          source: "Antihero's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sheltering Stubborness",
                          featType: "General",
                          prerequisites: "Iron Will.",
                          benefit: "When you fail a saving throw against a mind-affecting effect with a duration of 1 round or longer (such as confusion), you can choose to be dazzled for the first round of the duration instead of suffering the usual effect. On subsequent rounds, the effect functions normally. If an effect, immunity, or other ability prevents you from being dazzled, this feat has no effect.",
                          summary: "When you fail a saving throw against a mind-affecting effect with a duration of 1 round or longer (such as confusion), you can choose to be dazzled for the first round of the duration instead of…",
                          source: "Antihero's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spell Bluff (AH) (Teamwork)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When an ally who also has this feat fails her saving throw (including voluntarily failing the save) against a spell that would harm her with an area of effect that includes her, intelligent enemies within the spell’s area take a –2 penalty on their saving throws to resist the spell’s effects.",
                          summary: "When an ally who also has this feat fails her saving throw (including voluntarily failing the save) against a spell that would harm her with an area of effect that includes her, intelligent enemies…",
                          source: "Antihero's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Take This (Teamwork)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "If you are adjacent to an ally who also has this feat but is unable to act, you can retrieve a held or openly carried item from his body as a swift action that does not provoke attacks of opportunity.",
                          normal: "Retrieving a stored item or picking up a fallen item is a move action that provokes attacks of opportunity.",
                          special: "This is an exception to the rule that allies who are unable to act do not count for the purpose of teamwork feats.",
                          summary: "If you are adjacent to an ally who also has this feat but is unable to act, you can retrieve a held or openly carried item from his body as a swift action that does not provoke attacks of opportunity.",
                          source: "Antihero's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Vindictive Fall",
                          featType: "General",
                          prerequisites: "Lightning Reflexes.",
                          benefit: "When a creature causes you to fall prone, such as with an effect or a spell (such as grease) or by succeeding at a combat maneuver to trip you, you can attempt a combat maneuver check as an immediate action to trip an enemy within your melee reach. The target of this combat maneuver need not be the creature that caused you to fall prone. If you do not have the Improved Trip feat or a similar ability, your trip combat maneuver provokes an attack of opportunity from the target as normal.",
                          summary: "When a creature causes you to fall prone, such as with an effect or a spell (such as grease) or by succeeding at a combat maneuver to trip you, you can attempt a combat maneuver check as an immediate…",
                          source: "Antihero's Handbook", isPremium: true),

                    // // MARK: - Armor Master's Handbook
        )
        try await db.insertFeat(
        .make("Advanced Armor Training (Combat)",
                          featType: "General",
                          prerequisites: "Armor training class feature, fighter level 3rd.",
                          benefit: "Select one advanced armor training option.",
                          special: "This feat can be taken more than once, but at most once per 3 fighter levels.",
                          summary: "Select one advanced armor training option.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Armor Focus (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1, proficiency with selected armor.",
                          benefit: "Select one type of armor, such as chain shirt or splint mail. The AC bonus granted by the selected armor increases by 1.",
                          special: "You can gain this feat multiple times. Its effects do not stack. Each time you take the feat, it applies to a new type of armor. The Armor Focus feat counts as the armor training class feature for the purpose of armor mastery feat prerequisites and determines what types of armor you can use with armor mastery feats.",
                          summary: "Select one type of armor, such as chain shirt or splint mail. The AC bonus granted by the selected armor increases by 1.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Armor Material Expertise (Armor Mastery, Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +6 or fighter level 4th, armor training class feature.",
                          benefit: "When wearing armor made of one of the materials listed below, you can use the listed ability twice per day (unless otherwise stated).Adamantine: As an immediate action after being struck by an attack, you convert half the lethal damage of the attack into nonlethal damage.AngelskinUE: As a swift action, you shine with bright light as daylight for 1 round.Darkleaf ClothUE: As a swift action, you gain the woodland stride druid class feature for 1 minute.Dragonhide: As an immediate action when you take energy damage of the same type to which the dragonhide armor is immune, you reduce the damage taken by 10 hit points.Elysian BronzeUE: As an immediate action after being struck by an attack from a magical beast or monstrous humanoid, you convert half the lethal damage of the attack into nonlethal damage.Fire-Forged SteelUE or Frost-Forged SteelUE: As a swift action, any unarmed strikes, shield bashes, or attacks with a spiked gauntlet or armor spikes you make are treated as having the flaming special ability (for fire-forged steel) or the frost special ability (for frost-forged steel) for 1 minute.Horacalcum (Pathfinder Adventure Path #61: Shards of Sin): Once per day as a swift action, you can grant yourself the benefits of haste for 1 round.Living SteelUE: As an immediate action after being struck by an attack with a metal weapon, you can use the living steel’s ability to damage metal weapons, as if the attacker had rolled a natural 1 on the attack.Mithral: As an immediate action, you gain spell resistance against transmutation spells equal to 5 + the armor’s enhancement bonus + your character level for 1 round.Noqual (Pathfinder Adventure Path #61: Shards of Sin): The armor’s resistance bonus on saves increases to +4 for 1 round.",
                          summary: "When wearing armor made of one of the materials listed below, you can use the listed ability twice per day (unless otherwise stated).Adamantine: As an immediate action after being struck by an…",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Armor Material Mastery (Armor Mastery, Combat)",
                          featType: "General",
                          prerequisites: "Armor Material Expertise, base attack bonus +11 or fighter level 8th, armor training class feature.",
                          benefit: "You can use the ability granted by Armor Material Expertise two additional times per day.",
                          summary: "You can use the ability granted by Armor Material Expertise two additional times per day.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Armor Trick (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1.",
                          benefit: "You can use any armor tricks related to the chosen armor option if you meet the trick’s prerequisites and are proficient with any armor that you use as part of the trick.",
                          special: "You can gain Armor Trick multiple times. Each time you take the feat, it applies to a new armor trick option.",
                          summary: "You can use any armor tricks related to the chosen armor option if you meet the trick’s prerequisites and are proficient with any armor that you use as part of the trick.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Bulette Charge Style (Armor Style, Combat, Style)",
                          featType: "General",
                          prerequisites: "Str 13, Improved Overrun, Power Attack, proficiency with heavy armor.",
                          benefit: "While using this style, you gain a +4 bonus on combat maneuver checks to overrun an opponent. Any magic ability or material that reduces your armor check penalty also reduces the bonus you gain for this style.",
                          special: "A character with the armor training class feature can use Bulette Charge Style while wearing any type of armor with which she is proficient. Medium armor grants a +3 bonus, and light armor grants a +2 bonus.",
                          summary: "While using this style, you gain a +4 bonus on combat maneuver checks to overrun an opponent.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Bulette Leap (Armor Style, Combat)",
                          featType: "General",
                          prerequisites: "Str 15, Bulette Charge Style, Improved Overrun, Power Attack, proficiency with heavy armor.",
                          benefit: "While using Bulette Charge Style, you gain a bonus on Acrobatics checks to jump equal to your Strength bonus. Additionally, when you perform an overrun combat maneuver, you can attempt to overrun multiple foes, but you take a cumulative –2 penalty on each successive overrun attempt in the same round. If an overrun attempt fails, you cannot make any further attempts until your next round.",
                          summary: "While using Bulette Charge Style, you gain a bonus on Acrobatics checks to jump equal to your Strength bonus.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Bulette Rampage (Armor Style, Combat)",
                          featType: "General",
                          prerequisites: "Str 15, Bulette Charge Style, Bulette Leap, Improved Overrun, Power Attack, proficiency with heavy armor.",
                          benefit: "While you’re using Bulette Charge Style, whenever you succeed at an overrun combat maneuver check against a foe, that foe takes an amount of damage equal to 1d8 (if you’re Medium) or 1d6 (if you’re Small) + 1/2 your armor bonus to AC + 1-1/2 times your Strength bonus.",
                          summary: "While you’re using Bulette Charge Style, whenever you succeed at an overrun combat maneuver check against a foe, that foe takes an amount of damage equal to 1d8 (if you’re Medium) or 1d6 (if you’re…",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cushioning Armor (Armor Mastery, Combat)",
                          featType: "General",
                          prerequisites: "Armor training class feature, proficiency with medium or heavy armor.",
                          benefit: "When you take falling damage, you can direct half of the damage to your armor. This damage ignores the armor’s hardness.",
                          summary: "When you take falling damage, you can direct half of the damage to your armor. This damage ignores the armor’s hardness.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cushioning Shield (Combat, Shield Mastery)",
                          featType: "General",
                          prerequisites: "Shield Focus, base attack bonus +6 or fighter level 4th.",
                          benefit: "When you fall 10 or more feet, you can direct half of the falling damage you would take to your shield. This damage ignores the shield’s hardness.",
                          summary: "When you fall 10 or more feet, you can direct half of the falling damage you would take to your shield. This damage ignores the shield’s hardness.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Defended Movement (Combat, Shield Mastery)",
                          featType: "General",
                          prerequisites: "Shield Focus, base attack bonus +6 or fighter level 4th.",
                          benefit: "You gain a +2 bonus to your AC against attacks of opportunity.",
                          special: "Defended Movement counts as both Dodge and Mobility for the purposes of feats that have Dodge and Mobility as prerequisites.",
                          summary: "You gain a +2 bonus to your AC against attacks of opportunity.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Feint Defender (Combat, Shield Mastery)",
                          featType: "General",
                          prerequisites: "Shield Focus, base attack bonus +6 or fighter level 4th, Sense Motive 1 rank.",
                          benefit: "You add your shield’s bonus to AC to the DC of feint attempts against you.",
                          summary: "You add your shield’s bonus to AC to the DC of feint attempts against you.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Ironclad Reactions (Armor Mastery, Combat)",
                          featType: "General",
                          prerequisites: "Combat Reflexes, Ironclad Reactions, base attack bonus +11 or fighter level 8th, armor trainingclass feature, proficiency with medium armor.",
                          benefit: "You can use Ironclad Reactions more than once per round, but not more than once for each act you take that provokes an attack of opportunity. Each 5-foot step you take still counts as expending one use of an attack of opportunity.",
                          summary: "You can use Ironclad Reactions more than once per round, but not more than once for each act you take that provokes an attack of opportunity.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Ray Shield (Combat, Shield Mastery)",
                          featType: "General",
                          prerequisites: "Dex 17, Missile Shield, Ray Shield APG, Spellbreaker.",
                          benefit: "When you use the Ray Shield feat, your shield is not affected by the deflected ranged touch attack.",
                          summary: "When you use the Ray Shield feat, your shield is not affected by the deflected ranged touch attack.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Guarded Charge (Combat, Shield Mastery)",
                          featType: "General",
                          prerequisites: "Shield Focus, base attack bonus +6 or fighter level 4th.",
                          benefit: "When performing a bull rush or overrun combat maneuver as part of a charge, you don’t provoke an attack of opportunity for that maneuver. If you already have the improved Bull Rush or Improved Overrun feats, you gain an additional +2 bonus on your combat maneuver check when attempting the respective maneuver.",
                          special: "This feat counts as having a Strength score of 13 and Power Attack for the purposes of meeting the prerequisites of Improved Bull Rush and Improved Overrun, and for feats that require either of those two feats as prerequisites.",
                          summary: "When performing a bull rush or overrun combat maneuver as part of a charge, you don’t provoke an attack of opportunity for that maneuver.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Imposing Bearing (Armor Mastery, Combat)",
                          featType: "General",
                          prerequisites: "Poised Bearing, base attack bonus +11 or fighter level 8th, armor training class feature, proficiency with heavy armor.",
                          benefit: "You treat your size as two categories larger for the purposes of determining the size of creatures against which you can attempt bull rush, dragAPG, overrun, and trip combat maneuvers.",
                          summary: "You treat your size as two categories larger for the purposes of determining the size of creatures against which you can attempt bull rush, dragAPG, overrun, and trip combat maneuvers.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Armor Focus (Combat)",
                          featType: "General",
                          prerequisites: "Armor Focus, base attack bonus +6, proficiency with selected armor.",
                          benefit: "The armor check penalty of the selected armor decreases by 1 (to a minimum of 0). You also use your character level in place of your base attack bonus for the purpose of armor mastery feat prerequisites.",
                          special: "You can gain this feat multiple times. Its effects do not stack. Each time you take the feat, it applies to a new type of armor.",
                          summary: "The armor check penalty of the selected armor decreases by 1 (to a minimum of 0).",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Shield Focus (Combat)",
                          featType: "General",
                          prerequisites: "Shield Focus, base attack bonus +6.",
                          benefit: "You reduce the armor check penalty of any shield you are using by 1. You also use your character level in place of your base attack bonus for the purpose of shield mastery feat prerequisites.",
                          summary: "You reduce the armor check penalty of any shield you are using by 1. You also use your character level in place of your base attack bonus for the purpose of shield mastery feat prerequisites.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Intense Blows (Armor Mastery, Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Power Attack, base attack bonus +6 or fighter level 4th, armor training class feature, proficiency with heavy armor.",
                          benefit: "When you are using Power Attack, you gain a +1 bonus to your CMD until the beginning of your next turn. When your base attack bonus reaches +4, and every 4 points thereafter, this bonus increases by another 1.",
                          summary: "When you are using Power Attack, you gain a +1 bonus to your CMD until the beginning of your next turn.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ironclad Reactions (Armor Mastery, Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +6 or fighter level 4th, armor training class feature, proficiency with medium armor.",
                          benefit: "Once per round when a foe successfully hits you with an attack of opportunity, you can expend a use of an attack of opportunity to take a 5-foot step. You can do this even if you have already taken a 5-foot step.",
                          summary: "Once per round when a foe successfully hits you with an attack of opportunity, you can expend a use of an attack of opportunity to take a 5-foot step.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Knocking Blows (Armor Mastery, Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Intense Blows, Power Attack, base attack bonus +11 or fighter level 8th, armor training class feature, proficiency with heavy armor.",
                          benefit: "If you hit a creature that is no more than one size category larger than you with a Power Attack, the creature you attacked is also knocked off balance. Until the beginning of your next turn, it takes a –4 penalty to its CMD against combat maneuvers that move it or knock it prone.",
                          summary: "If you hit a creature that is no more than one size category larger than you with a Power Attack, the creature you attacked is also knocked off balance.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Mobile Bulwark Style (Combat, Shield Style, Style)",
                          featType: "General",
                          prerequisites: "Str 13, Shield Focus, Tower Shield Proficiency, base attack bonus +1.",
                          benefit: "While using a tower shield, add the shield’s bonus to AC (including its enhancement bonus) to your CMD against bull rush and overrun combat maneuvers. While using this style, you can use a tower shield to grant you total cover along one edge of your space (Pathfinder Roleplaying Game Core Rulebook 153) as a move action.",
                          summary: "While using a tower shield, add the shield’s bonus to AC (including its enhancement bonus) to your CMD against bull rush and overrun combat maneuvers.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Mobile Fortress (Combat, Shield Style)",
                          featType: "General",
                          prerequisites: "Str 15, Mobile Bulwark Style, Shield Focus, Tower Shield Proficiency, base attack bonus +4.",
                          benefit: "While using a tower shield, you add half of the shield’s bonus to AC (including its enhancement bonus) to your touch AC and take only a –1 penalty on attack rolls because of the shield’s encumbrance. While using Mobile Bulwark Style, whenever you would use a tower shield to gain total cover, you also grant any adjacent ally total cover against attacks passing through the selected edge of your space.",
                          summary: "While using a tower shield, you add half of the shield’s bonus to AC (including its enhancement bonus) to your touch AC and take only a –1 penalty on attack rolls because of the shield’s encumbrance.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Mobile Stronghold (Combat, Shield Style)",
                          featType: "General",
                          prerequisites: "Str 17, Mobile Bulwark Style, Mobile Fortress, Shield Focus, Tower Shield Proficiency, base attack bonus +7.",
                          benefit: "While using a tower shield, you do not suffer a penalty on attack rolls because of the shield’s encumbrance. While using Mobile Bulwark Style, whenever you use a tower shield to gain total cover, you also gain partial cover (and grant partial cover to adjacent allies) against spells passing through the selected edge of your space. Also, while using this style, you can gain total cover against a single attack made against you as an immediate or swift action.",
                          summary: "While using a tower shield, you do not suffer a penalty on attack rolls because of the shield’s encumbrance.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Poised Bearing (Armor Mastery, Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +6 or fighter level 4th, armor training class feature, proficiency with medium or heavy armor.",
                          benefit: "You treat your size as one category larger for the purposes of determining the size of creatures against which you can attempt bull rush, dragAPG, overrun, and trip combat maneuvers.",
                          summary: "You treat your size as one category larger for the purposes of determining the size of creatures against which you can attempt bull rush, dragAPG, overrun, and trip combat maneuvers.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Secured Armor (Armor Mastery, Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +11 or fighter level 8th, armor training class feature, proficiency with medium or heavy armor.",
                          benefit: "When you are hit by a confirmed critical hit or a sneak attack, there is a 25% chance that the critical hit or sneak attack is negated and damage is instead rolled normally.",
                          special: "This chance stacks with the light fortification and moderate fortification armor special abilities.",
                          summary: "When you are hit by a confirmed critical hit or a sneak attack, there is a 25% chance that the critical hit or sneak attack is negated and damage is instead rolled normally.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shield Brace (Combat, Shield Mastery)",
                          featType: "General",
                          prerequisites: "Shield Focus; base attack bonus +3 or fighter level 1st; proficiency with light shields, heavy shields, or tower shields.",
                          benefit: "You can use a two-handed weapon sized appropriately for you from the polearm or spears weapon group while also using a light, heavy, or tower shield with which you are proficient. The shield’s armor check penalty (if any) applies to attacks made with the weapon.",
                          summary: "You can use a two-handed weapon sized appropriately for you from the polearm or spears weapon group while also using a light, heavy, or tower shield with which you are proficient.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shield Gauntlet Style (Combat, Shield Style, Style)",
                          featType: "General",
                          prerequisites: "Weapon Focus (gauntlet or spiked gauntlet), proficiency with bucklers and light shields.",
                          benefit: "When using this style, if you begin your turn wearing a gauntlet or spiked gauntlet on your off hand, and you are not using that hand to hold or make attacks with any other weapons or shield, you gain a +1 shield bonus to AC. You lose this shield bonus whenever you attack with your gauntlet or hold a weapon or shield in that hand. While receiving this shield bonus to AC, your gauntlet or spiked gauntlet is treated as a buckler for the purpose of using other feats and abilities (though you are also considered to have a free hand). This feat acts as the Improved Unarmed Strike feat for the purpose of satisfying the prerequisites of the Deflect Arrows and Snatch Arrows feats.",
                          summary: "When using this style, if you begin your turn wearing a gauntlet or spiked gauntlet on your off hand, and you are not using that hand to hold or make attacks with any other weapons or shield, you…",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shield Material Expertise (Combat, Shield Mastery)",
                          featType: "General",
                          prerequisites: "Shield Focus, base attack bonus +6 or fighter level 4th.",
                          benefit: "When wielding a shield made of one of the materials listed below, you can use the listed ability twice per day.Darkwood: As a free action as part of an attack with your shield, you can drive splinters of your shield into your opponent, dealing an amount of bleed damage equal to 1 + the shield’s enhancement bonus.Dragonhide: As an immediate action when you take energy damage of the type to which the dragonhide shield is immune, you can reduce the amount of damage you take by 10 hit points.Living Steel UE: As a free action as part of an attack with your shield, you can attempt a sunder combat maneuver check against a metal weapon wielded by your target. If you succeed at the attempt, the weapon gains the broken condition; if the weapon already has the broken condition, it is destroyed.",
                          summary: "When wielding a shield made of one of the materials listed below, you can use the listed ability twice per day.Darkwood: As a free action as part of an attack with your shield, you can drive…",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shield Material Mastery (Combat, Shield Mastery)",
                          featType: "General",
                          prerequisites: "Shield Focus, Shield Material Expertise, base attack bonus +11 or fighter level 8th.",
                          benefit: "You can use the ability granted by Shield Material Expertise two additional times per day.",
                          summary: "You can use the ability granted by Shield Material Expertise two additional times per day.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shielded Gauntlet Attack (Combat, Shield Style)",
                          featType: "General",
                          prerequisites: "Shield Gauntlet Style, Weapon Focus (gauntlet or spiked gauntlet), proficiency with bucklers and light shields.",
                          benefit: "While using Shield Gauntlet Style, you can calculate the damage of your gauntlet or spiked gauntlet using the sacred weapon damage value of a warpriestACG with a level 4 less than your base attack bonus. The style also allows you to take one attack of opportunity each round that does not count toward your maximum number of attacks of opportunity. This must be used to make an attack with your gauntlet (or spiked gauntlet), or a disarm or stealAPG combat maneuver. You do not provoke an attack of opportunity for performing either combat maneuver, and you are able to attempt a steal combat maneuver with this attack of opportunity despite the maneuver normally requiring a standard action.",
                          summary: "While using Shield Gauntlet Style, you can calculate the damage of your gauntlet or spiked gauntlet using the sacred weapon damage value of a warpriestACG with a level 4 less than your base attack…",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shielded Gauntlet Master (Combat, Shield Style)",
                          featType: "General",
                          prerequisites: "Shielded Gauntlet Attack, Shield Gauntlet Style, Weapon Focus (gauntlet or spiked gauntlet), proficiency with bucklers and light shields.",
                          benefit: "While using Shield Gauntlet Style, you no longer lose your shield bonus to AC when you attack with your gauntlet (or spiked gauntlet) or use it to hold a weapon. In addition, you add your gauntlet’s enhancement bonus to the shield bonus to AC granted by this feat as if it were a shield enhancement bonus.",
                          summary: "While using Shield Gauntlet Style, you no longer lose your shield bonus to AC when you attack with your gauntlet (or spiked gauntlet) or use it to hold a weapon.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shielded Mage (Combat, Shield Mastery)",
                          featType: "General",
                          prerequisites: "Shield Focus, base attack bonus +3 or fighter level 1st.",
                          benefit: "You reduce the arcane spell failure of any shield you use by 15% (to a minimum of 0%). Using a shield does not prevent you from completing somatic spell components with the hand wielding the shield.",
                          summary: "You reduce the arcane spell failure of any shield you use by 15% (to a minimum of 0%). Using a shield does not prevent you from completing somatic spell components with the hand wielding the shield.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shielded Stand (Combat, Shield Mastery)",
                          featType: "General",
                          prerequisites: "Shield Focus, base attack bonus +3 or fighter level 1st.",
                          benefit: "As a swift action, you can prevent yourself or an adjacent ally from provoking an attack of opportunity when standing from prone or when picking up an object from the ground.",
                          summary: "As a swift action, you can prevent yourself or an adjacent ally from provoking an attack of opportunity when standing from prone or when picking up an object from the ground.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sprightly Armor (Armor Mastery, Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, base attack bonus +11 or fighter level 8th, armor training class feature, proficiency with light armor.",
                          benefit: "You add your armor’s enhancement bonus as a bonus on your initiative checks.",
                          summary: "You add your armor’s enhancement bonus as a bonus on your initiative checks.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spring-Heeled Reaping (Armor Style, Combat)",
                          featType: "General",
                          prerequisites: "Dex 17, Dodge, Mobility, Shot on the Run or Spring Attack, Spring-Heeled Sprint, Spring-Heeled Style, base attack bonus +11, proficiency with light armor.",
                          benefit: "While using Spring-Heeled Style, whenever you use Shot on the Run or Spring Attack, you can attack two different creatures at any point in your movement. Each attack is made at your full attack bonus. Any creature that you attack in melee with this feat cannot make attacks of opportunity against you for that movement, as normal for Spring Attack.",
                          summary: "While using Spring-Heeled Style, whenever you use Shot on the Run or Spring Attack, you can attack two different creatures at any point in your movement.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spring-Heeled Sprint (Armor Style, Combat)",
                          featType: "General",
                          prerequisites: "Dex 15, Dodge, Mobility, Shot on the Run or Spring Attack, Spring-Heeled Style, base attack bonus +7, proficiency with light armor.",
                          benefit: "While using Spring-Heeled Style, you can move up to twice your speed when using the Shot on the Run or Spring Attack feats",
                          summary: "While using Spring-Heeled Style, you can move up to twice your speed when using the Shot on the Run or Spring Attack feats",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spring-Heeled Style (Armor Style, Combat, Style)",
                          featType: "General",
                          prerequisites: "Dex 13, Dodge, Mobility, Shot on the Run or Spring Attack, base attack bonus +4, proficiency with light armor.",
                          benefit: "If using this style during any round in which you take a move action to move 10 or more feet, you gain a +2 bonus on weapon attack rolls until the start of your next turn. While using this style, you gain the AC bonus from Mobility against attacks of opportunity provoked by making a ranged attack or loading a ranged weapon.",
                          special: "A character with the armor training class feature can use Spring-Heeled Style while wearing any type of armor with which she is proficient.",
                          summary: "If using this style during any round in which you take a move action to move 10 or more feet, you gain a +2 bonus on weapon attack rolls until the start of your next turn.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stumbling Bash (Combat, Shield Mastery)",
                          featType: "General",
                          prerequisites: "Improved Shield Bash, Shield Focus, base attack bonus +6 or fighter level 4th.",
                          benefit: "Creatures struck by your shield bash take a –2 penalty to their AC until the end of your next turn.",
                          summary: "Creatures struck by your shield bash take a –2 penalty to their AC until the end of your next turn.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Swift Iron Style (Armor Style, Combat, Style)",
                          featType: "General",
                          prerequisites: "Str 13, Dex 13, proficiency with medium armor.",
                          benefit: "While using this style, you treat the armor check penalty of your armor as if it were 1 less, and the maximum Dexterity bonus to AC as if it were 1 higher.",
                          special: "A character with the armor training class feature can use Swift Iron Style while wearing any type of armor with which she is proficient. These benefits stack with armor training.",
                          summary: "While using this style, you treat the armor check penalty of your armor as if it were 1 less, and the maximum Dexterity bonus to AC as if it were 1 higher.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Swift Refuge (Armor Style, Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Dex 13, Swift Iron Style, proficiency with medium armor.",
                          benefit: "Once per day when using Swift Iron Style, when you’re hit by a weapon, unarmed attack, or natural weapon, you can treat all dice other than the weapon’s base damage dice (including extra dice from sneak attack, critical hit, magic special weapon abilities, and Vital Strike) as having rolled 1s. You can use this ability a second time per day when your base attack bonus reaches +8, and a third time at +16.",
                          summary: "Once per day when using Swift Iron Style, when you’re hit by a weapon, unarmed attack, or natural weapon, you can treat all dice other than the weapon’s base damage dice (including extra dice from…",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Swift Sprint (Armor Style, Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Dex 13, Swift Iron Style, Swift Refuge, proficiency with medium armor.",
                          benefit: "When you’re charging, running, or taking no action in your turn other than movement, your armor does not reduce your movement.",
                          summary: "When you’re charging, running, or taking no action in your turn other than movement, your armor does not reduce your movement.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Toppling Bash (Combat, Shield Mastery)",
                          featType: "General",
                          prerequisites: "Improved Shield Bash, Shield Focus, Stumbling Bash, base attack bonus +11 or fighter level 8th.",
                          benefit: "As a swift action when you hit a creature with a shield bash, you can attempt a trip combat maneuver against that creature at a –5 penalty. This does not provoke an attack of opportunity, and if your attempt fails by 10 or more, you are not knocked prone.",
                          summary: "As a swift action when you hit a creature with a shield bash, you can attempt a trip combat maneuver against that creature at a –5 penalty.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tower Shield Specialist (Combat, Shield Mastery)",
                          featType: "General",
                          prerequisites: "Shield Focus, Tower Shield Proficiency, base attack bonus +11 or fighter level 8th.",
                          benefit: "You reduce the armor check penalty for tower shields by 3, and if you have the armor training class feature, you modify the armor check penalty and maximum Dexterity bonus of tower shields as if they were armor.",
                          summary: "You reduce the armor check penalty for tower shields by 3, and if you have the armor training class feature, you modify the armor check penalty and maximum Dexterity bonus of tower shields as if they…",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Unhindering Shield (Combat, Shield Mastery)",
                          featType: "General",
                          prerequisites: "Shield Focus, base attack bonus +6 or fighter level 4th, proficiency with bucklers.",
                          benefit: "You still gain a buckler’s bonus to AC even if you use your shield hand for some other purpose. When you wield a buckler, your shield hand is considered free for the purposes of casting spells, wielding weapons, and using any other abilities that require you to have a free hand or interact with your shield, such as the swashbuckler’s precise strike deed or the Weapon Finesse feat.",
                          special: "A monk with this feat is not considered to be using a shield for the purposes of his AC bonus, fast movement, or flurry of blows.",
                          summary: "You still gain a buckler’s bonus to AC even if you use your shield hand for some other purpose.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Upsetting Shield Style (Combat, Shield Style, Style)",
                          featType: "General",
                          prerequisites: "Dex 13, proficiency with bucklers.",
                          benefit: "You can shield bash with a buckler as if it were a light shield, and you can use the buckler in conjunction with any feats or abilities that normally apply to light shields. While using this style, whenever you successfully deal damage to an opponent with a shield bash using your buckler, that opponent takes a –2 penalty on all attack rolls made against you until the start of your next turn.",
                          summary: "You can shield bash with a buckler as if it were a light shield, and you can use the buckler in conjunction with any feats or abilities that normally apply to light shields.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Upsetting Strike (Combat, Shield Style)",
                          featType: "General",
                          prerequisites: "Dex 15, Combat Reflexes, Improved Shield Bash, Upsetting Shield Style, proficiency with bucklers.",
                          benefit: "While you are using Upsetting Shield Style, if a foe is taking a penalty on attack rolls against you as a result of Upsetting Shield Style, and that foe makes a melee attack roll against you that misses your AC by 5 or more, that foe provokes an attack of opportunity from you. You can only make one attack of opportunity against an opponent in this manner each round.",
                          summary: "While you are using Upsetting Shield Style, if a foe is taking a penalty on attack rolls against you as a result of Upsetting Shield Style, and that foe makes a melee attack roll against you that…",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Upsetting Vengeance (Combat, Shield Style)",
                          featType: "General",
                          prerequisites: "Dex 13, Combat Reflexes, Improved Shield Bash, Upsetting Shield Style, Upsetting Strike, proficiency with bucklers.",
                          benefit: "While using Upsetting Shield Style, the penalty on attack rolls foes take for being hit by your shield bash attack applies to their attacks against any target. If an adjacent foe taking this penalty makes an attack roll against any target and misses the target’s AC by 5 or more, that foe provokes an attack of opportunity from you. You can only make one attack of opportunity against an opponent as a result of this feat or Upsetting Strike each round.",
                          summary: "While using Upsetting Shield Style, the penalty on attack rolls foes take for being hit by your shield bash attack applies to their attacks against any target.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Vanguard Hustle (Combat, Shield Style)",
                          featType: "General",
                          prerequisites: "Dex 13, Bodyguard APG, Combat Patrol APG, Combat Reflexes, Mobility, Saving Shield APG, Vanguard Style, Vanguard Ward, proficiency with light or heavy shields.",
                          benefit: "Add half of your shield’s enhancement bonus to the shield bonus to AC that you grant to an ally using the Saving Shield feat. While using Vanguard Style, whenever you increase your threatened area with Combat Patrol, your ward retains the bonuses of Vanguard Style as long as he remains within your threatened area, and you can use Bodyguard, Saving Shield, and Vanguard Style whenever an ally that is within this threatened area is the target of an attack.",
                          summary: "Add half of your shield’s enhancement bonus to the shield bonus to AC that you grant to an ally using the Saving Shield feat.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Vanguard Style (Combat, Shield Style, Style)",
                          featType: "General",
                          prerequisites: "Bodyguard APG, Combat Reflexes, proficiency with light or heavy shields.",
                          benefit: "While using this style, when an adjacent ally is required to make a Reflex saving throw, you can expend a use of an attack of opportunity to attempt the aid another action to improve your ally’s Reflex save. Your ally gains a +2 bonus to all Reflex saves while adjacent to you until the beginning of your next turn.",
                          summary: "While using this style, when an adjacent ally is required to make a Reflex saving throw, you can expend a use of an attack of opportunity to attempt the aid another action to improve your ally’s…",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Vanguard Ward (Combat, Shield Style)",
                          featType: "General",
                          prerequisites: "Bodyguard APG, Combat Reflexes, Vanguard Style, proficiency with light or heavy shields.",
                          benefit: "While using Vanguard Style, when an adjacent ally is attacked or required to make a Reflex saving throw, you can expend a use of an attack of opportunity to use both Bodyguard and Vanguard Style to protect that ally. You can also lose your shield bonus to AC to grant your ally a shield bonus to AC of the same value for as long as that ally gains a bonus to Reflex saves from Vanguard Style.",
                          summary: "While using Vanguard Style, when an adjacent ally is attacked or required to make a Reflex saving throw, you can expend a use of an attack of opportunity to use both Bodyguard and Vanguard Style to…",
                          source: "Armor Master's Handbook", isPremium: true),

                    // // MARK: - Bastards of Golarion
        )
        try await db.insertFeat(
        .make("Betraying Blow (Combat)",
                          featType: "General",
                          prerequisites: "Solo Maneuvers, base attack bonus +8.",
                          benefit: "Whenever you use a melee attack to deal nonlethal damage to a creature that only you threaten, roll a Bluff check opposed by your opponent’s Sense Motive check. You deal an additional amount of nonlethal damage equal to 1/2 the difference between your Bluff check and your opponent’s Sense Motive check (minimum 0). If your opponent has an attitude of friendly or helpful toward you (including temporarily due to Intimidate checks, charm person, and similar effects), you instead deal an amount of extra nonlethal damage equal to the difference between your checks. Regardless, the amount of extra nonlethal damage you deal with this feat cannot exceed your Hit Dice.",
                          summary: "Whenever you use a melee attack to deal nonlethal damage to a creature that only you threaten, roll a Bluff check opposed by your opponent’s Sense Motive check.",
                          source: "Bastards of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dirty Trick Master (Combat)",
                          featType: "General",
                          prerequisites: "Greater Dirty Trick, Improved Dirty Trick, base attack bonus +11.",
                          benefit: "Whenever you successfully perform a dirty trick combat maneuver against an opponent who is still affected by a condition inflicted by a previous dirty trick (whether your own or another creature’s), you can cause the condition to worsen. In addition to increasing the duration of the condition as normal, you cause an opponent who is dazzled to become dazed, entangled to become pinned, shaken to become frightened, and sickened to become nauseated. This worsened condition replaces the previous dirty trick condition, and lasts for the duration of the dirty trick (including any rounds remaining from the previous dirty trick condition) or until the opponent uses a standard action to remove the condition (whichever comes first).",
                          summary: "Whenever you successfully perform a dirty trick combat maneuver against an opponent who is still affected by a condition inflicted by a previous dirty trick (whether your own or another creature’s),…",
                          source: "Bastards of Golarion", isPremium: true)
        )
        try await seedFeatsD()
    }
}
