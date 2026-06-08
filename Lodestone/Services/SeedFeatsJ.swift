import Foundation

extension SeedDataBuilder {
    func seedFeatsJ() async throws {
        try await db.insertFeat(
        .make("Slayer's Knack",
                          featType: "General",
                          prerequisites: "Favored enemy class feature, base attack bonus +6.",
                          benefit: "When you take this feat, choose one of your favored enemy types. Against enemies of that type, the threat range of any weapon you wield is doubled. This effect does not stack with any other effect that expands a weapon’s threat range.",
                          special: "You can take this feat multiple times. Each time you take it, you choose a different favored enemy type.",
                          summary: "When you take this feat, choose one of your favored enemy types. Against enemies of that type, the threat range of any weapon you wield is doubled.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sling Flail (Combat)",
                          featType: "General",
                          prerequisites: "Weapon Focus (sling), base attack bonus +1.",
                          benefit: "You can make melee attacks using your loaded sling, using that weapon’s normal statistics but treating it as a flail. Using a sling in this way does not expend mundane ammunition, but magical or masterwork ammunition loses its special properties after a single hit.",
                          special: "Any feats you have that apply when you use a flail also apply when you use a loaded sling as a melee weapon.",
                          summary: "You can make melee attacks using your loaded sling, using that weapon’s normal statistics but treating it as a flail.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Snake Fang (Combat)",
                          featType: "General",
                          prerequisites: "Combat Reflexes, Improved Unarmed Strike, Snake Sidewind, Snake Style, Acrobatics 6 ranks, Sense Motive 9 ranks.",
                          benefit: "While using the Snake Style feat, when an opponent’s attack misses you, you can make an unarmed strike against that opponent as an attack of opportunity. If this attack of opportunity hits, you can spend an immediate action to make another unarmed strike against the same opponent.",
                          summary: "While using the Snake Style feat, when an opponent’s attack misses you, you can make an unarmed strike against that opponent as an attack of opportunity.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Snake Sidewind (Combat)",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike, Snake Style, Acrobatics 3 ranks, Sense Motive 6 ranks.",
                          benefit: "You gain a +4 bonus to CMD against trip combat maneuvers and on Acrobatics checks and saving throws to avoid being knocked prone. While using the Snake Style feat, whenever you score a critical threat with your unarmed strike, you can make a Sense Motive check in place of the attack roll to confirm the critical hit. Whenever you score a critical hit with your unarmed strike, you can spend an immediate action to take a 5-foot step even if you have otherwise moved this round.",
                          normal: "You can take a 5-foot step only if you have not otherwise moved this round.",
                          summary: "You gain a +4 bonus to CMD against trip combat maneuvers and on Acrobatics checks and saving throws to avoid being knocked prone.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Snake Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike, Acrobatics 1 rank, Sense Motive 3 ranks.",
                          benefit: "You gain a +2 bonus on Sense Motive checks, and you can deal piercing damage with your unarmed strikes. While using the Snake Style feat, when an opponent targets you with a melee or ranged attack, you can spend an immediate action to make a Sense Motive check. You can use the result as your AC or touch AC against that attack. You must be aware of the attack and not flat-footed.",
                          normal: "An unarmed strike deals bludgeoning damage.",
                          summary: "You gain a +2 bonus on Sense Motive checks, and you can deal piercing damage with your unarmed strikes.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Snap Shot (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Point-Blank Shot, Rapid Shot, Weapon Focus, base attack bonus +6.",
                          benefit: "While wielding a ranged weapon with which you have Weapon Focus, you threaten squares within 5 feet of you. You can make attacks of opportunity with that ranged weapon. You do not provoke attacks of opportunity when making a ranged attack as an attack of opportunity.",
                          normal: "While wielding a ranged weapon, you threaten no squares and can make no attacks of opportunity with that weapon.",
                          summary: "While wielding a ranged weapon with which you have Weapon Focus, you threaten squares within 5 feet of you. You can make attacks of opportunity with that ranged weapon.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Snapping Turtle Clutch (Combat)",
                          featType: "General",
                          prerequisites: "Snapping Turtle Style, Improved Grapple, Improved Unarmed Strike, base attack bonus +3 or monk level 3rd.",
                          benefit: "While you are using the Snapping Turtle Style feat, the shield bonus the style grants to your AC applies to your CMD and touch AC. Whenever an opponent misses you with a melee attack while you are using the Snapping Turtle Style feat, you can use an immediate action to attempt a grapple combat maneuver against that opponent, but with a –2 penalty.",
                          summary: "While you are using the Snapping Turtle Style feat, the shield bonus the style grants to your AC applies to your CMD and touch AC.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Snapping Turtle Shell (Combat)",
                          featType: "General",
                          prerequisites: "Snapping Turtle Clutch, Snapping Turtle Style, Improved Grapple, Improved Unarmed Strike, base attack bonus +5 or monk level 5th.",
                          benefit: "While you are using the Snapping Turtle Style feat, the shield bonus the style grants to your AC increases to +2, and your enemies take a –4 penalty on critical confirmation rolls against you.",
                          summary: "While you are using the Snapping Turtle Style feat, the shield bonus the style grants to your AC increases to +2, and your enemies take a –4 penalty on critical confirmation rolls against you.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Snapping Turtle Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike, base attack bonus +1 or monk level 1st.",
                          benefit: "While using the Snapping Turtle Style feat with at least one hand free, you gain a +1 shield bonus to AC.",
                          summary: "While using the Snapping Turtle Style feat with at least one hand free, you gain a +1 shield bonus to AC.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sneaking Precision",
                          featType: "General",
                          prerequisites: "Sneak attack +6d6, Critical Focus, any critical feat, base attack bonus +9.",
                          benefit: "Whenever you successfully sneak attack an opponent for a second time on your turn, you can spend a swift action to apply the effects of one critical feat you know to that opponent.",
                          summary: "Whenever you successfully sneak attack an opponent for a second time on your turn, you can spend a swift action to apply the effects of one critical feat you know to that opponent.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sorcerous Strike (Combat)",
                          featType: "General",
                          prerequisites: "Sorcerer bloodline class feature, Improved Unarmed Strike.",
                          benefit: "When you gain this feat, you choose one bloodline power that you can use to affect a single opponent. If you make a successful unarmed strike against an opponent, in addition to dealing your unarmed strike damage, you can spend a swift action to deliver the effects of the chosen bloodline power to that opponent. Doing so provokes no attacks of opportunity.",
                          special: "You can take this feat multiple times. Each time you take it, you apply it to a different qualifying bloodline power.",
                          summary: "When you gain this feat, you choose one bloodline power that you can use to affect a single opponent.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spell Bane",
                          featType: "General",
                          prerequisites: "Bane class feature.",
                          benefit: "While your bane class feature is affecting a creature type, the saving throw’s DCs for your spells increase by +2 for creatures of that type.",
                          summary: "While your bane class feature is affecting a creature type, the saving throw’s DCs for your spells increase by +2 for creatures of that type.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spinning Throw (Combat)",
                          featType: "General",
                          prerequisites: "Combat Expertise, Improved Bull Rush, Improved Trip, Improved Unarmed Strike, Ki Throw.",
                          benefit: "On a successful unarmed trip combat maneuver against an opponent your size or smaller, you can spend a swift action to attempt a bull rush combat maneuver against that opponent. If your bull rush succeeds, you can move that opponent to any unoccupied square you threaten, then push that opponent the number of 5-foot increments your successful bull rush allows. The target is then knocked prone. If the bull rush fails, you can use the Ki Throw feat as normal. If you also have the Improved Ki Throw feat, a successful bull rush allows you to push the opponent into a space secondary targets occupy. You resolve this effect as if you used the Improved Ki Throw feat to throw the opponent into that space.",
                          special: "Per the Ki Throw feat, a monk can use ki to affect creatures larger than himself with this feat.",
                          summary: "On a successful unarmed trip combat maneuver against an opponent your size or smaller, you can spend a swift action to attempt a bull rush combat maneuver against that opponent.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Splintering Weapon",
                          featType: "General",
                          prerequisites: "Base attack bonus +1, proficient with weapon, weapon made of primitive material.",
                          benefit: "Whenever you use a melee or thrown weapon with the fragile weapon feature (page 146) or similar quality and hit an opponent, you can give your weapon the broken condition to deal that opponent 1d4 points of bleed damage.",
                          summary: "Whenever you use a melee or thrown weapon with the fragile weapon feature (page 146) or similar quality and hit an opponent, you can give your weapon the broken condition to deal that opponent 1d4…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stage Combatant (Combat)",
                          featType: "General",
                          prerequisites: "Weapon Focus, base attack bonus +5",
                          benefit: "When you make an attack with a weapon that you have Weapon Focus in, you take no penalty on the attack roll when you are attempting to make an attack that deals no damage or nonlethal damage.",
                          normal: "When making attacks that deal no damage or nonlethal damage, you take a –4 penalty on attack rolls.",
                          summary: "When you make an attack with a weapon that you have Weapon Focus in, you take no penalty on the attack roll when you are attempting to make an attack that deals no damage or nonlethal damage.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stalwart",
                          featType: "General",
                          prerequisites: "Diehard, Endurance, base attack bonus +4.",
                          benefit: "While using the total defense action, fighting defensively action, or Combat Expertise, you can forgo the dodge bonus to AC you would normally gain to instead gain an equivalent amount of DR, to a maximum of DR 5/—, until the start of your next turn. This damage reduction stacks with DR you gain from class features, such as the barbarian’s, but not with DR from any other source. If you are denied your Dexterity bonus to AC, you are also denied this DR.",
                          summary: "While using the total defense action, fighting defensively action, or Combat Expertise, you can forgo the dodge bonus to AC you would normally gain to instead gain an equivalent amount of DR, to a…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stealth Synergy (Teamwork)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "While you can see one or more allies who also have this feat, whenever you and your allies make a Stealth check, you all take the highest roll and add all your modifiers to Stealth.",
                          summary: "While you can see one or more allies who also have this feat, whenever you and your allies make a Stealth check, you all take the highest roll and add all your modifiers to Stealth.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Strangler (UC) (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, sneak attack +1d6, Improved Grapple, Improved Unarmed Strike.",
                          benefit: "Whenever you successfully maintain a grapple and choose to deal damage, you can spend a swift action to deal your sneak attack damage to the creature you are grappling.",
                          summary: "Whenever you successfully maintain a grapple and choose to deal damage, you can spend a swift action to deal your sneak attack damage to the creature you are grappling.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Strong Comeback",
                          featType: "General",
                          prerequisites: "Strong Comeback UC .",
                          benefit: "Whenever you are allowed to reroll an ability check, a skill check, or a saving throw, you gain a +2 circumstance bonus on the reroll.",
                          summary: "Whenever you are allowed to reroll an ability check, a skill check, or a saving throw, you gain a +2 circumstance bonus on the reroll.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stunning Pin (Combat)",
                          featType: "General",
                          prerequisites: "Improved Grapple, Improved Unarmed Strike, Stunning Fist.",
                          benefit: "Whenever you pin an opponent, you can spend a swift action to make a Stunning Fist attempt against that opponent.",
                          summary: "Whenever you pin an opponent, you can spend a swift action to make a Stunning Fist attempt against that opponent.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sure Grasp",
                          featType: "General",
                          prerequisites: "Climb 1 rank.",
                          benefit: "Roll twice while climbing or when making a Reflex save to avoid falling, and take the higher result.",
                          summary: "Roll twice while climbing or when making a Reflex save to avoid falling, and take the higher result.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sword and Pistol (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Point-Blank Shot, Rapid Shot, Snap Shot, Two-Weapon Fighting, base attack bonus +6.",
                          benefit: "When you use the Two-Weapon Fighting feat while wielding a melee weapon and a crossbow or firearm, your attacks with the crossbow or firearm provoke no attacks of opportunity from foes that you threaten with your melee weapon.",
                          normal: "Making a ranged attack provokes attacks of opportunity.",
                          summary: "When you use the Two-Weapon Fighting feat while wielding a melee weapon and a crossbow or firearm, your attacks with the crossbow or firearm provoke no attacks of opportunity from foes that you…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tandem Trip (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Whenever you attempt a trip combat maneuver against an enemy threatened by an ally with this feat, you roll twice and take the better result.",
                          summary: "Whenever you attempt a trip combat maneuver against an enemy threatened by an ally with this feat, you roll twice and take the better result.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Target of Opportunity (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Point-Blank Shot, base attack bonus +6.",
                          benefit: "When an ally who also has this feat makes a ranged attack and hits an opponent within 30 feet of you, you can spend an immediate action to make a single ranged attack against that opponent. Your ranged weapon must be in hand, loaded, and ready to be fired or thrown for you to make the ranged attack.",
                          summary: "When an ally who also has this feat makes a ranged attack and hits an opponent within 30 feet of you, you can spend an immediate action to make a single ranged attack against that opponent.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Team Pickpocketing (Teamwork)",
                          featType: "General",
                          prerequisites: "Bluff 1 rank, Sleight of Hand 1 rank.",
                          benefit: "Whenever an ally with this feat succeeds a Bluff check to feint an opponent, if you are adjacent to that creature, you can spend an immediate action to make a Sleight of Hand check to pickpocket that opponent and gain a +4 bonus on that attempt.",
                          summary: "Whenever an ally with this feat succeeds a Bluff check to feint an opponent, if you are adjacent to that creature, you can spend an immediate action to make a Sleight of Hand check to pickpocket that…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tiger Claws (Combat)",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike, Tiger Style, base attack bonus +6 or monk level 5th.",
                          benefit: "While you are using the Tiger Style feat and have both hands free, you can use a full-round action to make a single unarmed strike with both hands. Use your highest base attack bonus, rolling unarmed strike damage for each hand separately and multiplying both if you score a critical hit. If you use Power Attack in conjunction with this attack, increase your Strength bonus on one of the damage rolls by an additional one-half your Strength bonus, normally to a total of 1-1/2 your Strength bonus. If you hit, you can attempt a bull rush maneuver with a +2 bonus on the combat maneuver check. This bull rush attempt provokes no attack of opportunity from your opponent, but you cannot move with that opponent if your bull rush is successful.",
                          summary: "While you are using the Tiger Style feat and have both hands free, you can use a full-round action to make a single unarmed strike with both hands.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tiger Pounce (Combat)",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike, Power Attack, Tiger Claws, Tiger Style, base attack bonus +9 or monk level 8th.",
                          benefit: "While using the Tiger Style feat, you can apply the penalty from Power Attack to your AC instead of attack rolls. Additionally, once per round as a swift action, you can move up to half your speed closer to a target you hit with an unarmed strike or made a successful combat maneuver against on this turn or your last turn.",
                          summary: "While using the Tiger Style feat, you can apply the penalty from Power Attack to your AC instead of attack rolls.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tiger Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike, base attack bonus +3 or monk level 3rd.",
                          benefit: "While using this style, you gain a +2 bonus to your CMD against bull rush, overrun, and trip maneuvers. You can also deal slashing damage with your unarmed strikes. Whenever you score a critical hit with your slashing unarmed strike, your opponent also takes 1d4 points of bleed damage at the start of his next two turns.",
                          normal: "Unarmed strikes deal bludgeoning damage.",
                          summary: "While using this style, you gain a +2 bonus to your CMD against bull rush, overrun, and trip maneuvers. You can also deal slashing damage with your unarmed strikes.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Trapper's Setup",
                          featType: "General",
                          prerequisites: "Craft (traps) 5 ranks.",
                          benefit: "When you manually trigger a trap against opponents, that trap receives either a +2 circumstance bonus on melee attack rolls or a +2 circumstance bonus to its saving throw DC.",
                          summary: "When you manually trigger a trap against opponents, that trap receives either a +2 circumstance bonus on melee attack rolls or a +2 circumstance bonus to its saving throw DC.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Twin Thunders (Combat)",
                          featType: "General",
                          prerequisites: "Dwarf or gnome, defensive training racial trait, Two-Weapon Fighting or flurry of blows class feature, Weapon Focus with both wielded weapons.",
                          benefit: "Once per round, when wielding a bludgeoning weapon in each hand against a creature with the giant subtype, if you hit the creature with your off-hand weapon after you hit with your primary weapon, roll the damage dice for your off-hand weapon twice and add the results together before adding any bonuses. Such extra weapon damage dice are not multiplied on a critical hit.",
                          summary: "Once per round, when wielding a bludgeoning weapon in each hand against a creature with the giant subtype, if you hit the creature with your off-hand weapon after you hit with your primary weapon,…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Twin Thunders Flurry (Combat)",
                          featType: "General",
                          prerequisites: "Dwarf or gnome; defensive training racial trait; Improved Two-Weapon Fighting and Two-Weapon Fighting, or flurry of blows class feature; Twin Thunders; Weapon Focus with both wielded weapons; base attack bonus +6.",
                          benefit: "You can trip a creature with the giant subtype of up to Huge size, and you gain a +2 bonus on damage rolls against creatures of the giant subtype. Further, each time you hit a creature of the giant subtype with your off-hand weapon after you hit that creature with your primary weapon, you can deal the extra off-hand weapon damage Twin Thunders grants you.",
                          summary: "You can trip a creature with the giant subtype of up to Huge size, and you gain a +2 bonus on damage rolls against creatures of the giant subtype.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Twin Thunders Master (Combat)",
                          featType: "General",
                          prerequisites: "Dwarf or gnome; defensive training racial trait; Improved Two-Weapon Fighting and Two-Weapon Fighting, or flurry of blows class feature; Twin Thunders; Twin Thunders Flurry; Weapon Focus with both wielded weapons; base attack bonus +9.",
                          benefit: "Whenever you deal an opponent extra damage with the Twin Thunders feat, that opponent is shaken for 1 round. You also force that opponent to succeed at a Fortitude saving throw (DC 10 + half your level + your Str modifier) or become staggered for 1 round. If you use this feat to render staggered an opponent that is already staggered, you daze that opponent instead. In a similar way, you can stun an opponent that is already dazed.",
                          summary: "Whenever you deal an opponent extra damage with the Twin Thunders feat, that opponent is shaken for 1 round.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Two-Handed Thrower (Combat)",
                          featType: "General",
                          prerequisites: "Str 15.",
                          benefit: "Whenever you use two hands to throw a one-handed or two-handed weapon, you gain a bonus on damage rolls equal to 1-1/2 times your Strength bonus. Using two hands to throw any weapon requires only a standard action for you. If you also have the Quick Draw feat, you can throw two-handed weapons at your full normal rate of attacks.",
                          normal: "You add your Strength bonus on thrown weapon damage, regardless of available hands. Throwing a two-handed weapon is a full-round action.",
                          summary: "Whenever you use two hands to throw a one-handed or two-handed weapon, you gain a bonus on damage rolls equal to 1-1/2 times your Strength bonus.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Two-Weapon Feint (Combat)",
                          featType: "General",
                          prerequisites: "Dex 15, Int 13, Combat Expertise, Two-Weapon Fighting.",
                          benefit: "While using Two-Weapon Fighting to make melee attacks, you can forgo your first primary-hand melee attack to make a Bluff check to feint an opponent.",
                          summary: "While using Two-Weapon Fighting to make melee attacks, you can forgo your first primary-hand melee attack to make a Bluff check to feint an opponent.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Vicious Stomp (Combat)",
                          featType: "General",
                          prerequisites: "Combat Reflexes, Improved Unarmed Strike.",
                          benefit: "Whenever an opponent falls prone adjacent to you, that opponent provokes an attack of opportunity from you. This attack must be an unarmed strike.",
                          summary: "Whenever an opponent falls prone adjacent to you, that opponent provokes an attack of opportunity from you. This attack must be an unarmed strike.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Wave Strike (Combat)",
                          featType: "General",
                          prerequisites: "Weapon expertise class feature or Quick Draw, Bluff 1 rank.",
                          benefit: "If on your first turn of combat you draw a melee weapon to attack an opponent within your reach, you can spend a swift action to make a Bluff check to feint against that opponent.",
                          summary: "If on your first turn of combat you draw a melee weapon to attack an opponent within your reach, you can spend a swift action to make a Bluff check to feint against that opponent.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Whip Mastery (Combat)",
                          featType: "General",
                          prerequisites: "Weapon Focus (whip), base attack bonus +2.",
                          benefit: "You no longer provoke attacks of opportunity when attacking with a whip. You can deal lethal damage with a whip, although you can still deal nonlethal damage when you want. Further, you can deal damage with a whip despite a creature’s armor bonus or natural armor bonus.",
                          normal: "Attacking with a whip provokes attacks of opportunity as if you used a ranged weapon. A whip deals no damage to a creature that has an armor bonus of +1 or natural armor bonus of +3.",
                          summary: "You no longer provoke attacks of opportunity when attacking with a whip. You can deal lethal damage with a whip, although you can still deal nonlethal damage when you want.",
                          source: "Ultimate Combat", isPremium: true),

                    // // MARK: - Ultimate Combat, Inner Sea World Guide, PRPG Core Rulebook
        )
        try await db.insertFeat(
        .make("Rapid Reload (Combat)",
                          featType: "General",
                          prerequisites: "Weapon Proficiency (crossbow type chosen) or Exotic Weapon Proficiency (firearm).",
                          benefit: "The time required for you to reload your chosen type of weapon is reduced to a free action (for a hand or light crossbow), a move action (for heavy crossbow or one-handed firearm), or a standard action (two-handed firearm). Reloading a crossbow or firearm still provokes attacks of opportunity. If you have selected this feat for a hand crossbow or light crossbow, you may fire that weapon as many times in a full-attack action as you could attack if you were using a bow.",
                          normal: "A character without this feat needs a move action to reload a hand or light crossbow, a standard action to reload a one-handed firearm, or a full-round action to load a heavy crossbow or a two-handed firearm.",
                          special: "You can gain Rapid Reload multiple times. Each time you take the feat, it applies to a new type of crossbow or a new type of firearm.",
                          summary: "The time required for you to reload your chosen type of weapon is reduced to a free action (for a hand or light crossbow), a move action (for heavy crossbow or one-handed firearm), or a standard…",
                          source: "Ultimate Combat, Inner Sea World Guide, PRPG Core Rulebook", isPremium: true),

                    // // MARK: - Ultimate Intrigue
        )
        try await db.insertFeat(
        .make("Acrobatic Spellcaster (Combat)",
                          featType: "General",
                          prerequisites: "Combat Casting, Skill Focus (Acrobatics).",
                          benefit: "When you succeed at an Acrobatics check to move through a threatened square without provoking attacks of opportunity or to move through an enemy’s space, creatures denied attacks of opportunity by your Acrobatics check also cannot make attacks of opportunity against you when you cast spells for the remainder of your turn.",
                          normal: "Casting a spell within an enemy’s reach provokes attacks of opportunity even after you succeed at an Acrobatics check to move through a threatened square.",
                          summary: "When you succeed at an Acrobatics check to move through a threatened square without provoking attacks of opportunity or to move through an enemy’s space, creatures denied attacks of opportunity by…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Agent of Fear",
                          featType: "General",
                          prerequisites: "Persuasive, frightening appearance class feature.",
                          benefit: "When you target a creature with your frightening appearance or stunning appearance class feature, it does not become immune to the effects of those features for 24 hours, but does gain a +2 bonus on the saving throws against those class features for 24 hours. This bonus stacks with itself if you use those abilities against the same creature multiple times in the same 24- hour period. Because these abilities alert the creature to your presence, you still can’t use them on the creature again until after the end of that specific combat.",
                          normal: "A creature targeted by frightening appearance or stunning appearance becomes immune to the feature’s effect for 24 hours.",
                          summary: "When you target a creature with your frightening appearance or stunning appearance class feature, it does not become immune to the effects of those features for 24 hours, but does gain a +2 bonus on…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Betrayal Sense (Combat)",
                          featType: "General",
                          prerequisites: "Wis 13, rogue level 3rd, trap sense class feature.",
                          benefit: "You gain a bonus on Perception checks to pierce another creature’s disguise and Sense Motive checks to avoid being surprised by an attack. These bonuses are equal to the bonus you gain from trap sense.",
                          summary: "You gain a bonus on Perception checks to pierce another creature’s disguise and Sense Motive checks to avoid being surprised by an attack.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Blustering Bluff",
                          featType: "General",
                          prerequisites: "Cha 13, Bluff 1 rank, Intimidate 1 rank.",
                          benefit: "When using Bluff to fool a foe, you can bully that person to reduce the penalty for telling an unlikely or far-fetched lie by 5. If you do so and your check would not have succeeded otherwise, after 1d6×10 minutes, the person you fooled realizes you bullied him into believing a lie, treats you as unfriendly, and might report you or take other actions against you.",
                          normal: "The penalty for telling unlikely lies is –5, and the penalty for telling far-fetched lies is –10.",
                          summary: "When using Bluff to fool a foe, you can bully that person to reduce the penalty for telling an unlikely or far-fetched lie by 5.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Brilliant Planner",
                          featType: "General",
                          prerequisites: "Int 13, character level 5th.",
                          benefit: "You can prepare for future contingencies without defining what those preparations are until they are relevant. As a part of this preparation, while in a settlement for at least 24 hours, you can take 8 hours and spend up to 50 gp per character level, which becomes your brilliant plan fund. While you have a brilliant plan pending, you are always treated as carrying 20 additional pounds of weight, even before you define your brilliant plan. Once per day, you can take 10 minutes to enact a brilliant plan, withdrawing an item that would have been available in a settlement you visited or procuring a mundane service that your character planned ahead of time. Once you enact the plan, subtract the price of the item or service from this feat’s fund. Any item procured must weigh 10 pounds or less. Likewise, the GM must approve any nonmagical service you gain by using this feat as being appropriate for the location selected. Once you have spent all the money in your brilliant plan fund or procured 20 pounds of objects with this feat, you cannot use the feat again until you replenish your brilliant plan fund.",
                          summary: "You can prepare for future contingencies without defining what those preparations are until they are relevant.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Brilliant Spell Preparation",
                          featType: "General",
                          prerequisites: "Int 13, ability to prepare 3rd-level spells.",
                          benefit: "Select one class for which you prepare spells of 3rd level or higher. Once you select a class, it can’t be changed. When you prepare spells for that class, you can leave one spell slot open as a special slot. The slot must be at least 2 levels lower than the highest-level spell you can cast. You can then prepare a spell in this special open slot as a standard action instead of it taking 15 minutes.",
                          special: "You can take this feat multiple times. Each time you do, you can leave an additional special slot open.",
                          summary: "Select one class for which you prepare spells of 3rd level or higher. Once you select a class, it can’t be changed.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("But a Scratch (Combat)",
                          featType: "General",
                          prerequisites: "Cha 13, Bluff 4 ranks.",
                          benefit: "When an opponent confirms a critical hit against you with a melee weapon, you can attempt a special Bluff check against that opponent as an immediate action. The DC of this check is the same as the DC to demoralize the opponent with the Intimidate skill. If you are successful, the attacking opponent is shaken for 1 round as if you had successfully demoralized it with Intimidate. Exceeding the DC by 5 or more does not add to the shaken condition’s duration. If you fail the special Bluff check granted by this feat, you can attempt it against opponents who saw you attempt the earlier check and fail, but you take a –2 cumulative penalty on that Bluff check and any subsequent Bluff checks attempted in conjunction with this feat against those opponents for 24 hours.",
                          summary: "When an opponent confirms a critical hit against you with a melee weapon, you can attempt a special Bluff check against that opponent as an immediate action.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Call Truce",
                          featType: "General",
                          prerequisites: "Cha 15, Persuasive, Diplomacy 5 ranks.",
                          benefit: "While in combat, as a 1-round action (as if it were a spell with a 1-round casting time, Pathfinder RPG Core Rulebook 213), you can call for a truce with any creatures that have an Intelligence score of 4 or greater and can understand you. When doing so, you can’t be wielding a weapon or threatening implement, such as a charged spell, wand, or anything else the creatures you are entreating might consider threatening. You must also be in plain sight of most the creatures you are entreating. Once you’ve called for a truce, if any of your allies attack or take any threatening action against those you are entreating before the start of your next turn, your call is unsuccessful. At the start of your next turn, attempt a single Diplomacy check (DC = 30 + the Charisma modifier of the creature with the highest Charisma modifier in the opposing group). If you are successful, combat ceases for 1 minute, or until any creature in the opposing group is threatened or attacked. If you fail the check by 5 or more, you cannot use Diplomacy again with any creature you attempted to entreat for 1d4 hours. If anyone in your group instead plans to use the parley to gain a combat advantage, the opponents can attempt a Sense Motive check against each such member of your group to get a hunch, with a DC equal to either 20 or the result of that character’s Bluff check, whichever is higher. Special: If the parley would inherently result in the opponents surrendering or losing, if the opponents are mind-controlled or fanatics, or if there are other appropriate circumstances at the GM’s discretion, you might not be able to use this feat. For instance, if the opponents’ main advantage over your group comes from a short-duration spell that would end during a parley, you cannot use this feat. Circumstances could potentially increase the check’s DC by 5, 10, or even up to 20.",
                          summary: "While in combat, as a 1-round action (as if it were a spell with a 1-round casting time, Pathfinder RPG Core Rulebook 213), you can call for a truce with any creatures that have an Intelligence score…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Careful Flyer",
                          featType: "General",
                          prerequisites: "Acrobatic, Fly 5 ranks.",
                          benefit: "As long as you take a move action to fly, even when moving less than half your speed, you do not need to succeed at a Fly check to continue flying. When moving less than half your speed in a round, you also gain a +2 bonus on Acrobatics checks to avoid attacks of opportunity and a +2 bonus to your AC against attacks of opportunity you provoke because of movement.",
                          normal: "You must succeed at a Fly check to continue flying unless you move at least half your speed.",
                          summary: "As long as you take a move action to fly, even when moving less than half your speed, you do not need to succeed at a Fly check to continue flying.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Careful Sneak",
                          featType: "General",
                          prerequisites: "Dex 13, Stealth 3 ranks.",
                          benefit: "You do not apply the armor check penalty for light and medium armor on Stealth skill checks as long as you move half your speed or less. You still cannot run or charge while using Stealth in this way.",
                          summary: "You do not apply the armor check penalty for light and medium armor on Stealth skill checks as long as you move half your speed or less. You still cannot run or charge while using Stealth in this way.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cartogramancer",
                          featType: "General",
                          prerequisites: "Knowledge (geography) 10 ranks, ability to cast greater teleport.",
                          benefit: "If you cast greater teleport—or similar teleportation effects that require a reliable description of the location—but do not have a reliable description of the destination, you can attempt a DC 25 Knowledge (geography) check prior to casting the spell to gain a reliable description of some location within 100 miles of the destination. If you exceed the DC by 10, you gain a description of some location within 50 miles, and if you succeed the DC by 20, you gain a description of some location within 25 miles. Once you have attempted such a check for a specific location, you cannot attempt it again, and if you attempt to use greater teleport elsewhere in the same general area, the result is the same. For instance, if you don’t know the location of the villain’s castle, you also don’t know a location within 100 miles of the stables next to the villain’s castle, or within 100 miles of the town half a mile away from the villain’s castle.",
                          summary: "If you cast greater teleport—or similar teleportation effects that require a reliable description of the location—but do not have a reliable description of the destination, you can attempt a DC 25…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cat and Mouse (Combat)",
                          featType: "General",
                          prerequisites: "Bluff 5 ranks, Sense Motive 5 ranks, opportune parry and riposte deedACG.",
                          benefit: "When you use the opportune parry and riposte deed to successfully parry an opponent’s attack, if you have your immediate action available and choose not to attempt a riposte, you gain a +1 dodge bonus to your AC and a +2 bonus on all combat maneuver checks against the opponent you successfully parried for 1 round.",
                          summary: "When you use the opportune parry and riposte deed to successfully parry an opponent’s attack, if you have your immediate action available and choose not to attempt a riposte, you gain a +1 dodge…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cat's Fall",
                          featType: "General",
                          prerequisites: "Dex 13, Acrobatics 1 rank.",
                          benefit: "When you succeed at a DC 15 Acrobatics skill check to soften a fall, you ignore the first 20 feet of that fall and convert the damage from the next 10 feet of the fall to nonlethal damage. You land on your feet as long as you take less than 20 points of damage from the fall.",
                          normal: "A successful DC 15 Acrobatics check allows you to ignore the first 10 feet fallen, and you fall prone if you take any falling damage.",
                          summary: "When you succeed at a DC 15 Acrobatics skill check to soften a fall, you ignore the first 20 feet of that fall and convert the damage from the next 10 feet of the fall to nonlethal damage.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Circuitous Shot (Combat)",
                          featType: "General",
                          prerequisites: "Dex 19, Blind-Fight, Improved Precise Shot, Point-Blank Shot, Precise Shot, base attack bonus +11.",
                          benefit: "You can choose to take a –2 penalty on a ranged weapon attack to ricochet it off a stone or metal surface and resolve the attack as if it originated from the chosen ricochet point for the purpose of determining cover (but not for determining concealment). Add the entire distance the weapon or ammunition traveled to determine range penalties for the attack. Bouncing a shot this way can potentially enable you to make ranged attacks against foes who have total cover against you by going around obstacles, but such a foe still has total concealment against your attack.",
                          summary: "You can choose to take a –2 penalty on a ranged weapon attack to ricochet it off a stone or metal surface and resolve the attack as if it originated from the chosen ricochet point for the purpose of…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("City Sprinter",
                          featType: "General",
                          prerequisites: "Street Smarts.",
                          benefit: "You do not treat crowds as difficult terrain. You also gain an additional +2 bonus on Acrobatics checks to move along rooftops and on slippery sections of city streets and sewers.",
                          summary: "You do not treat crowds as difficult terrain. You also gain an additional +2 bonus on Acrobatics checks to move along rooftops and on slippery sections of city streets and sewers.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Clambering Escape (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Improved Reposition APG, evasion class feature.",
                          benefit: "When you successfully use your evasion class feature to avoid taking damage from an effect that allows a Reflex saving throw, you can attempt a special repositionAPG combat maneuver check against any one foe within reach as an immediate action. If successful, you switch positions with the target of your combat maneuver. If your foe was not initially within range of the effect that you evaded, it must save against the effect as if it had been within the area of effect.",
                          summary: "When you successfully use your evasion class feature to avoid taking damage from an effect that allows a Reflex saving throw, you can attempt a special repositionAPG combat maneuver check against any…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Conceal Spell",
                          featType: "General",
                          prerequisites: "Deceitful, Bluff 1 rank, Disguise 1 rank, Sleight of Hand 1 rank.",
                          benefit: "When you cast a spell or use a spell-like ability, you can attempt to conceal verbal and somatic components among other speech and gestures, and to conceal the manifestation of casting the spell, so others don’t realize you’re casting a spell or using a spell-like ability until it is too late. The attempt to hide the spell slows your casting slightly, such that spells that normally take a standard action to cast now take a full-round action, and spells that normally take longer than a standard action take twice as long. (Swift action spells still take a swift action.) To discover your ruse, a creature must succeed at a Perception, Sense Motive, or Spellcraft check (the creature receives an automatic check with whichever of those skills has the highest bonus) against a DC equal to 15 + your number of ranks in Bluff or Disguise (whichever is higher) + your Charisma modifier; the creature gains a bonus on its check equal to the level of the spell or spelllike ability you are concealing. If your spell has a somatic component, any creature that can see you receives a Perception or Spellcraft check (whichever has the highest bonus) against a DC equal to 15 + your number of ranks in Sleight of Hand + your Dexterity modifier; the creature gains a bonus on its check equal to the level of the spell or spell-like ability you are concealing. Since you are concealing the spell’s manifestation through other actions, others observing you realize you’re doing something, even if they don’t realize you’re casting a spell. If there is a verbal component, they still hear your loud, clear voice but don’t notice the spell woven within. If an opponent fails its check, your casting also does not provoke attacks of opportunity, and an opponent that fails its check can’t use readied actions that depend on realizing that you’re casting a spell or using a spell-like ability, or readied actions such as counterspelling that require identifying the spell you’re casting. Spells such as fireball that create an additional obvious effect (aside from the manifestation of casting that all spells and spell-like abilities share) still create that effect, though it might not be obvious who cast the spell unless it emanates from you. If a character interacts with you long enough to attempt a Sense Motive check without realizing you have been casting spells, that character can use Sense Motive to gain a hunch that you’re behaving unusually.",
                          summary: "When you cast a spell or use a spell-like ability, you can attempt to conceal verbal and somatic components among other speech and gestures, and to conceal the manifestation of casting the spell, so…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Confabulist",
                          featType: "General",
                          prerequisites: "Bluff 9 ranks, Sense Motive 9 ranks.",
                          benefit: "When you fail to deceive someone with a Bluff check, you can immediately attempt another version of the same basic deception against that creature at a –5 penalty by downplaying the failed Bluff and quickly moving on to another one. You cannot use this ability if the first Bluff was so egregious that further checks would have been impossible (as per the Bluff skill). If you fail the second attempt, you cannot retry the Bluff check and all further attempts to perpetrate that particular deception are impossible.",
                          normal: "When you fail a Bluff check against a creature, that creature is innately suspicious. You take a –10 penalty on future attempts to deceive that creature, or at the GM’s discretion, such attempts may be impossible.",
                          summary: "When you fail to deceive someone with a Bluff check, you can immediately attempt another version of the same basic deception against that creature at a –5 penalty by downplaying the failed Bluff and…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cooperative Disabling (Teamwork)",
                          featType: "General",
                          prerequisites: "Disable Device 1 rank, trapfinding class feature.",
                          benefit: "When you use the Disable Device skill and fail the check against a trap, a single adjacent ally with this feat who is also within reach of the trap can attempt a Disable Device check against the same device as an immediate action. The ally must have remained adjacent throughout the process of disabling the device and must have either aided your Disable Device check or taken no other action. If your ally succeeds at the check, your attempt is considered to be successful. If your ally fails, your attempt is considered to have failed by 5 or more, even if the original check failed by 4 or less.",
                          summary: "When you use the Disable Device skill and fail the check against a trap, a single adjacent ally with this feat who is also within reach of the trap can attempt a Disable Device check against the same…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Criminal Reputation",
                          featType: "General",
                          prerequisites: "Diplomacy 5 ranks, Intimidate 5 ranks.",
                          benefit: "You gain a +2 bonus on Diplomacy and Intimidate checks when interacting with criminals, whether they’re individual thieves and cutpurses or criminal organizations. If you have 10 or more ranks in one of these skills, the bonus increases to +4 for that skill. These bonuses do not stack with those granted by Persuasive, but this feat counts as Persuasive for the purposes of feats and other rules elements with Persuasive as a prerequisite.",
                          summary: "You gain a +2 bonus on Diplomacy and Intimidate checks when interacting with criminals, whether they’re individual thieves and cutpurses or criminal organizations.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cunning Intuition (Combat)",
                          featType: "General",
                          prerequisites: "Alertness, Improved Initiative, Lightning Reflexes, Quick Draw, Ready for Anything, base attack bonus +13 or rogue level 13th, Sense Motive 13 ranks.",
                          benefit: "When you ready an action, you do not need to declare what action you will take, only the trigger for that action and an action type (either standard, move, swift, or free). If you choose the standard action type, you can take a move action instead when your readied action triggers. When the condition triggers, you can choose a specific action of the appropriate type to take.",
                          summary: "When you ready an action, you do not need to declare what action you will take, only the trigger for that action and an action type (either standard, move, swift, or free).",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cutting Humiliation",
                          featType: "General",
                          prerequisites: "Persuasive, Intimidate 5 ranks.",
                          benefit: "When you successfully demoralize a target by using a verbal Intimidate check in a social situation (rather than an Intimidate check you can make via an ability such as Dazzling Display or EnforcerAPG), you can instead humiliate the target, causing it to take a –2 penalty on Charisma-based skill checks and Charisma ability checks for 1 hour + 1 additional hour for every 5 by which the result of your check exceeds the DC. The target can remove the effect early by taking 10 minutes to compose herself. If you fail this check, any creature who witnessed the failure is immune to your humiliation from this feat for 24 hours. If you fail by 5 or more, you become humiliated for 1 hour instead of your target.",
                          summary: "When you successfully demoralize a target by using a verbal Intimidate check in a social situation (rather than an Intimidate check you can make via an ability such as Dazzling Display or…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Darkness Trick",
                          featType: "General",
                          prerequisites: "Use Magic Device 5 ranks, ability to cast darkness.",
                          benefit: "When wielding a magic weapon that sheds light or that features a luminescent quality, such as a flaming or brilliant energy weapon, you can deactivate that illumination as a swift action. You can reignite the illumination at any time as a free action. Any intrinsic magic properties that would force the weapon to shed light, such as the extra damage of a flaming weapon, do not function while the illumination is deactivated, and the “significant portion” of a brilliant energy weapon that is normally made of light ceases to exist. If a weapon affected by this ability ever leaves your possession (for instance, if you drop the weapon or pass it to another creature), its illumination and related abilities instantly return.",
                          summary: "When wielding a magic weapon that sheds light or that features a luminescent quality, such as a flaming or brilliant energy weapon, you can deactivate that illumination as a swift action.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Deft Catcher",
                          featType: "General",
                          prerequisites: "Skill Focus (Sleight of Hand).",
                          benefit: "Whenever you drop or are forced to drop an item you possess (other than by an effect that disarms or steals the item), you can attempt a DC 20 Sleight of Hand check as an immediate action to catch the item before it falls away. If you are targeted by an effect that would disarm or steal an item you’re holding, such as a disarm or stealAPG combat maneuver or the effects of a spell like telekinesis, you can also attempt a Sleight of Hand check as an immediate action to maintain possession of the errant item (DC = 10 + the combat maneuver check result if there was a combat maneuver check, or 20 + the DC of the spell if there was no combat maneuver check). In either case, if you fail the Sleight of Hand check by 10 or more, you fall prone.",
                          summary: "Whenever you drop or are forced to drop an item you possess (other than by an effect that disarms or steals the item), you can attempt a DC 20 Sleight of Hand check as an immediate action to catch…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Drunkard's Recovery",
                          featType: "General",
                          prerequisites: "Con 13.",
                          benefit: "If you are dying and a creature gives you at least a sip of alcohol (a standard action for an adjacent creature), you immediately stabilize.",
                          summary: "If you are dying and a creature gives you at least a sip of alcohol (a standard action for an adjacent creature), you immediately stabilize.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Enrage Opponent (Combat, Panache)",
                          featType: "General",
                          prerequisites: "Cha 13, Amateur Swashbuckler ACG or panache class feature ACG, Persuasive.",
                          benefit: "As a swift action, you can spend 1 panache point to enrage a creature with an Intelligence of 4 or more within 60 feet that can see or hear you. Attempt an Intimidate check as if to demoralize the creature. If you succeed, the creature takes a –2 penalty to its AC until it has made at least one attack against you (including area effects that include you) or until it can no longer see or hear you. You can have only one opponent enraged at you with this feat at a time, and once you’ve enraged a creature, you can’t enrage it again for 24 hours.",
                          summary: "As a swift action, you can spend 1 panache point to enrage a creature with an Intelligence of 4 or more within 60 feet that can see or hear you.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Entreating Critical (Combat, Critical)",
                          featType: "General",
                          prerequisites: "Cha 15, Call Truce, Critical Focus, Persuasive, base attack bonus +11, Diplomacy 5 ranks.",
                          benefit: "Whenever you confirm a critical hit, the shock of the attack momentarily opens an opportunity to end hostilities with a quick entreaty. As an immediate action immediately after confirming the critical hit, you can attempt a Diplomacy check to improve the target’s attitude as though you had spent 1 full round using the Call Truce feat. All other conditions and limitations of the Call Truce feat apply.",
                          summary: "Whenever you confirm a critical hit, the shock of the attack momentarily opens an opportunity to end hostilities with a quick entreaty.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Expeditious Sleuth",
                          featType: "General",
                          prerequisites: "Perception 3 ranks, inspirationACG or lore master class feature.",
                          benefit: "You can take 20 on a Perception check in only 10 times the usual amount of time, and gain a +2 bonus on Perception checks when you take 20.",
                          normal: "It takes 20 times as long to take 20 on a skill check.",
                          summary: "You can take 20 on a Perception check in only 10 times the usual amount of time, and gain a +2 bonus on Perception checks when you take 20.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Exquisite Sneak",
                          featType: "General",
                          prerequisites: "Dex 15, Careful Sneak, Stealth 6 ranks.",
                          benefit: "You do not apply the armor check penalty for light and medium armor on Stealth skill checks no matter how fast you move. You still cannot use Stealth while running or charging.",
                          summary: "You do not apply the armor check penalty for light and medium armor on Stealth skill checks no matter how fast you move. You still cannot use Stealth while running or charging.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Contingency",
                          featType: "General",
                          prerequisites: "Character level 19th.",
                          benefit: "You can have two contingency effects active at one time. If they would both trigger on the same round, one (chosen randomly) does not trigger until 1 round later.",
                          normal: "You can benefit from only a single contingency active at a time.",
                          summary: "You can have two contingency effects active at one time. If they would both trigger on the same round, one (chosen randomly) does not trigger until 1 round later.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Eye for Ingredients",
                          featType: "General",
                          prerequisites: "Eschew Materials, Appraise 6 ranks, Spellcraft 6 ranks.",
                          benefit: "When in a large city or larger settlement, you can search the markets carefully for 4 hours in order to purchase material components for your spells at a 10% discount. You can purchase up to 1,000 gp worth of material components (which costs you 900 gp) each day. These cheaper components work perfectly well for their spells, but their resale value is also 10% less.",
                          summary: "When in a large city or larger settlement, you can search the markets carefully for 4 hours in order to purchase material components for your spells at a 10% discount.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Feign Curse",
                          featType: "General",
                          prerequisites: "Deceitful, Bluff 5 ranks, Spellcraft 1 rank.",
                          benefit: "As a standard action, you can feign placing a curse on a target. The target must attempt a Sense Motive or Spellcraft check (whichever skill that target has a higher bonus with) against a DC equal to 15 + your number of ranks in Bluff + your Charisma modifier, with a bonus on his skill check equal to any conditional bonus he has on saving throws against hexes or curses (like from the spell hex ward UM). If he fails, he becomes plagued by self-doubt and second-guesses himself. For his next two attack rolls, saving throws, skill checks, or ability checks, he rolls twice and takes the lower result; for every 5 ranks of Bluff you possess beyond 5, this ability affects an additional roll. This is a mind-affecting effect, and it doesn’t work if the target is immune to curses or has an intelligence score of 2 or lower. Once you attempt to feign putting a curse on a creature, you cannot do so again against the same creature for 24 hours, and if the target succeeds at detecting your ruse, he gains a +10 bonus against future attempts.",
                          summary: "As a standard action, you can feign placing a curse on a target.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fey Spell Lore",
                          featType: "General",
                          prerequisites: "Cha 13, Spellcraft 1 rank, ability to cast druid spells.",
                          benefit: "Add the following spells to your druid spell list at the indicated levels: 0—dancing lights, 1st—lesser confusion, 2nd—charm person, 3rd—invisibility, 4th—bestow curse, 5th—charm monster, 6th—major curse UM, 7th—cloak of dreams APG, 8th—insanity, 9th—irresistible dance.",
                          summary: "Add the following spells to your druid spell list at the indicated levels: 0—dancing lights, 1st—lesser confusion, 2nd—charm person, 3rd—invisibility, 4th—bestow curse, 5th—charm monster, 6th—major…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fey Spell Versatility",
                          featType: "General",
                          prerequisites: "Cha 13, Spellcraft 1 rank, ability to cast ranger spells.",
                          benefit: "Choose a 1st-level spell, a 2nd-level spell, a 3rd-level spell, and a 4th-level spell from the bard, sorcerer/wizard, or witch spell list that is either from the enchantment or illusion school or a spell with the curseUM descriptor. Add those spells to your ranger spell list. Once chosen, these spells cannot be changed.",
                          summary: "Choose a 1st-level spell, a 2nd-level spell, a 3rd-level spell, and a 4th-level spell from the bard, sorcerer/wizard, or witch spell list that is either from the enchantment or illusion school or a…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fleeting Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "A fleeting spell’s duration becomes dismissible, if it is not already. You can dismiss your own fleeting spell as a swift action. When you dismiss a fleeting spell, its lingering aura cannot be detected by magic unless the caster succeeds at a caster level check against a DC equal to 11 + your caster level. The DC of dispel checks to counter a fleeting spell is reduced by 2, and once active, dispel magic removes a fleeting spell without a caster level check. A fleeting spell has half its normal duration (with an extended fleeting spell, these duration adjustments cancel out). Only spells with a duration of at least 2 rounds can be made fleeting, and instantaneous or permanent spells cannot be fleeting spells. A fleeting spell does not use up a higher-level spell slot than the spell’s actual level.",
                          normal: "It is a standard action to dismiss a dismissible spell, and only spells whose Duration entry is marked with a D are dismissible.",
                          summary: "A fleeting spell’s duration becomes dismissible, if it is not already. You can dismiss your own fleeting spell as a swift action.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fool Magic",
                          featType: "General",
                          prerequisites: "Deceitful, Disguise 1 rank, Use Magic Device 1 rank.",
                          benefit: "When you are in disguise as a member of a particular race or a person of a particular alignment, you can use your Disguise bonus instead of your Use Magic Device bonus to emulate that race and alignment for the purpose of attempting to activate a magic item.",
                          summary: "When you are in disguise as a member of a particular race or a person of a particular alignment, you can use your Disguise bonus instead of your Use Magic Device bonus to emulate that race and…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fox Insight (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Fox Style.",
                          benefit: "While using Fox Style, you can use your base attack bonus in place of your ranks in Sense Motive to determine your Sense Motive skill bonus when foes attempt to feint against you, and creatures attempting to demoralize you don’t gain a bonus for being bigger than you (though they still take a penalty for being smaller). If your Intelligence score is at least 19, the DC to demoralize or feint you increases by 4.",
                          summary: "While using Fox Style, you can use your base attack bonus in place of your ranks in Sense Motive to determine your Sense Motive skill bonus when foes attempt to feint against you, and creatures…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fox Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Int 13.",
                          benefit: "While using this style, you can use your base attack bonus in place of your ranks in Bluff on Bluff checks to feint in combat and to create a distraction to hide. If your Intelligence is at least 19, you gain a +4 bonus on such Bluff checks when adding your Charisma modifier.",
                          summary: "While using this style, you can use your base attack bonus in place of your ranks in Bluff on Bluff checks to feint in combat and to create a distraction to hide.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fox Trickery (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Fox Insight, Fox Style, Improved Dirty Trick APG .",
                          benefit: "While using Fox Style, you can perform dirty trick combat maneuvers as attacks of opportunity. If your Intelligence is at least 19, you gain a +4 bonus on dirty trick combat maneuver checks.",
                          summary: "While using Fox Style, you can perform dirty trick combat maneuvers as attacks of opportunity. If your Intelligence is at least 19, you gain a +4 bonus on dirty trick combat maneuver checks.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Gaze Reflection",
                          featType: "General",
                          prerequisites: "Spellcraft 10 ranks, bold stareOA and mesmerist tricksOA class features.",
                          benefit: "When you avert your eyes from a creature with a gaze attack (including one produced by a spell like eyebite or burning gaze or by a magic item), you can roll twice and select the better result when checking to see whether you are exposed to that gaze attack and when rolling your miss chance on attacks made against that creature (the latter doesn't stack with Blind-Fight ). In addition, as a swift action, you can expend one mesmerist trick to make yourself immune to that creature's gaze until the beginning of your next turn. If you expend two mesmerist tricks instead, you gain immunity to that creature's gaze and also reflect its gaze back at it, affecting it with its own gaze. Special : A mesmerist’s hypnotic stare, a witch’s or hag’s evil eye, and a vampire’s dominate ability are treated as gaze attacks for the purpose of this feat, as are abilities that are triggered when looking at a creature, such as a nymph’s blinding beauty or a sea hag’s horrific appearance. Spending two mesmerist tricks on this feat does not bypass any immunity the creature might have to its own gaze, such as a vampire’s immunity to mind-affecting effects or the fact that the nymph’s blinding beauty works only on humanoids.",
                          special: "A mesmerist’s hypnotic stare, a witch’s or hag’s evil eye, and a vampire’s dominate ability are treated as gaze attacks for the purpose of this feat, as are abilities that are triggered when looking at a creature, such as a nymph’s blinding beauty or a sea hag’s horrific appearance. Spending two mesmerist tricks on this feat does not bypass any immunity the creature might have to its own gaze, such as a vampire’s immunity to mind-affecting effects or the fact that the nymph’s blinding beauty works only on humanoids.",
                          summary: "When you avert your eyes from a creature with a gaze attack (including one produced by a spell like eyebite or burning gaze or by a magic item), you can roll twice and select the better result when…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Graceful Steal (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Agile Maneuvers, Improved Steal APG, Sleight of Hand 3 ranks.",
                          benefit: "When attempting Sleight of Hand checks to lift or palm objects, you can use your Combat Maneuver Bonus for a stealAPG combat maneuver in place of your Sleight of Hand modifier, though if you do so, you must use your Dexterity modifier and not your Strength modifier. You can steal items with the steal combat maneuver even if they are hidden in a bag or pack (provided you can reach the item within), but the opponent gains at least a +5 bonus to its CMD (as for a fastened object) in this case.",
                          summary: "When attempting Sleight of Hand checks to lift or palm objects, you can use your Combat Maneuver Bonus for a stealAPG combat maneuver in place of your Sleight of Hand modifier, though if you do so,…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Groom",
                          featType: "General",
                          prerequisites: "Character level 4th.",
                          benefit: "This feat is similar to the Leadership feat, with several exceptions to note. You can attract only a 1st-level cohort (referred to hereafter as a groom) with this feat, and cannot recruit followers of his own. You determine your Leadership score according to the rules presented in the Leadership feat, but your groom is always at least 3 levels lower than your level. A groom can take levels in bard, fighter, or ranger. A groom can’t multiclass, though he can take any archetype for which he qualifies. A groom finds the best place to stable and conceal your mount and the mounts of up to five allies while you and your allies are elsewhere. A groom adds half his level (minimum 1) to Stealth checks when concealing himself and any mounts that are left in his care. A groom also gains the ability to speak with animals as a supernatural ability, but he can use this ability only with horses, riding dogs, and other mounts of the animal type. If a groom gains enough XP to bring him to 2 levels lower than your level, he doesn’t gain the new level until you gain your next level; until you advance, his XP total remains 1 less than the amount needed to attain the next level. If you release your groom from service or otherwise lose your groom, you can recruit a new one. At 7th level, you can swap this feat for the Leadership feat.",
                          summary: "This feat is similar to the Leadership feat, with several exceptions to note.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Bravery (Combat)",
                          featType: "General",
                          prerequisites: "Cha 13, bravery class feature.",
                          benefit: "Add your bravery bonus against all mind-affecting effects instead of just against fear.",
                          summary: "Add your bravery bonus against all mind-affecting effects instead of just against fear.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Conceal Spell",
                          featType: "General",
                          prerequisites: "Conceal Spell, Deceitful, Bluff 5 ranks, Disguise 5 ranks, Sleight of Hand 10 ranks, ability to cast 3rd-level spells or use a 3rd-level spell-like ability.",
                          benefit: "When you use Conceal Spell, creatures no longer gain a bonus equal to the level of the spell or spell-like ability on their checks to notice the hidden spell.",
                          normal: "Creatures attempting to notice a spell hidden with Conceal Spell gain a bonus equal to the level of the spell or spell-like ability on their Perception, Sense Motive, and Spellcraft checks.",
                          summary: "When you use Conceal Spell, creatures no longer gain a bonus equal to the level of the spell or spell-like ability on their checks to notice the hidden spell.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Legendary Influence",
                          featType: "General",
                          prerequisites: "Legendary Influence, lesser spirit powerOA and propitiationOA class features.",
                          benefit: "For each spirit you can channel, choose a second feat other than an item creation feat. Whenever you allow a spirit to gain 1 point of influence over you to gain that spirit’s associated feat via Legendary Influence, you can allow that spirit to gain 1 additional point of influence over you to gain the second feat.",
                          summary: "For each spirit you can channel, choose a second feat other than an item creation feat.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Sabotaging Sunder (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Improved Sunder, Power Attack, Sabotaging Sunder, Disable Device 9 ranks.",
                          benefit: "You do not provoke an attack of opportunity when performing the special sunder combat maneuver from the Sabotaging Sunder feat. In addition, you can attempt to use that maneuver on items held by the target, but you still cannot do so against items hidden in a bag, a pack, or another container.",
                          summary: "You do not provoke an attack of opportunity when performing the special sunder combat maneuver from the Sabotaging Sunder feat.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Incite Paranoia (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Deceitful Greater Feint, Improved Feint, base attack bonus +6.",
                          benefit: "When you successfully feint in combat, if you succeed by 5 or more, the target no longer provides flanking to its allies and no longer gains or grants the benefits of teamwork feats until the beginning of your next turn. In addition, when you attempt a Bluff check to lie and the lie implies that one or more of the target’s allies have betrayed her or are secretly against her, your lie is one step more believable than normal, from far-fetched to unlikely and from unlikely to believable (if the lie was already less believable than far-fetched, this feat has no effect).",
                          summary: "When you successfully feint in combat, if you succeed by 5 or more, the target no longer provides flanking to its allies and no longer gains or grants the benefits of teamwork feats until the…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Insightful Advice",
                          featType: "General",
                          prerequisites: "Perform (oratory) 3 ranks.",
                          benefit: "You can attempt a skill check to aid an ally within 30 feet with a skill in which you are trained. This takes 1 minute, and during that time, you need only speak and be heard by your chosen ally to offer this aid. The bonus you grant is +2, regardless of any other effects that would alter your aid another bonus. This bonus applies to all checks the ally attempts with that skill for 1 day and does not stack with any other aid another bonus. Whether you succeed at or fail the skill check to aid another, you can attempt to use this ability only once per day for each ally.",
                          summary: "You can attempt a skill check to aid an ally within 30 feet with a skill in which you are trained.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Inspiring Bravery (Combat)",
                          featType: "General",
                          prerequisites: "Cha 13, bravery class feature.",
                          benefit: "As long as you are conscious and not stunned, dazed, or confused, allies within 30 feet who can see and hear you gain your bravery bonus on saving throws against fear. If you have Improved Bravery, they gain your bravery bonus on saving throws against all mind-affecting effects. If you have Social Bravery, your bravery bonus is added to the DC of checks to demoralize them, feint against them, change their attitude, or convince them to perform a request.",
                          summary: "As long as you are conscious and not stunned, dazed, or confused, allies within 30 feet who can see and hear you gain your bravery bonus on saving throws against fear.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Inspiring Mentor",
                          featType: "General",
                          prerequisites: "Cha 13, inspire competence bardic performance.",
                          benefit: "Inspire competence now affects all allies within 30 feet who can hear your performance, as long as they are attempting the skill you’ve selected.",
                          normal: "Inspire competence only affects one ally.",
                          summary: "Inspire competence now affects all allies within 30 feet who can hear your performance, as long as they are attempting the skill you’ve selected.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Intoxicating Flattery",
                          featType: "General",
                          prerequisites: "Deceitful, Bluff 5 ranks.",
                          benefit: "You can flatter a creature in a protracted interaction (taking at least 1 minute) to bestow in them an inflated sense of self worth that muddles their judgment. At the end of the tirade of flattery, attempt a Bluff check against a DC equal to 10 + the creature’s HD + the creature’s Wisdom modifier or equal to 10 + the creature’s Sense Motive modifier, whichever is higher. If you succeed, the target takes a –2 penalty on Will saving throws, Wisdombased skill checks, and Wisdom ability checks for 1 hour plus an additional hour for every 5 by which your result exceeds the DC. The target can remove the effect early by taking 10 minutes to compose herself. If you fail this check, any creature who witnesses the failure is immune to your flattery from this feat for 24 hours. If you fail by 5 or more, the target’s attitude toward you decreases by 1 step.",
                          summary: "You can flatter a creature in a protracted interaction (taking at least 1 minute) to bestow in them an inflated sense of self worth that muddles their judgment.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ironclad Logic",
                          featType: "General",
                          prerequisites: "Int 19, Diplomacy 3 ranks.",
                          benefit: "You gain a +4 bonus on Diplomacy checks whenever you add your Charisma modifier on those checks. If you have at least 10 ranks in Diplomacy and an Intelligence score of 27 or more, this bonus increases to +8. This bonus doesn’t stack with the bonus from Skill Focus (Diplomacy), but this feat counts as Skill Focus (Diplomacy) for the purpose of feats and other elements with Skill Focus (Diplomacy) as a prerequisite. In verbal duels, when using tactics to which you assigned an Intelligence-based skill, you can add your Intelligence modifier instead of your Charisma modifier to the associated skill check.",
                          summary: "You gain a +4 bonus on Diplomacy checks whenever you add your Charisma modifier on those checks.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Legendary Influence",
                          featType: "General",
                          prerequisites: "Lesser spirit powerOA class feature.",
                          benefit: "Immediately select one feat (other than an item creation feat) for each spirit you can channel. Whenever you perform a seance to channel a spirit, you can allow the spirit to gain 1 point of influence over you to gain access to that spirit’s Legendary Influence feat for as long as you channel that spirit. You can use this bonus feat as a prerequisite for any feats granted by a spirit power (such as the champion’s legendary champion ability), but not for any other feats.",
                          summary: "Immediately select one feat (other than an item creation feat) for each spirit you can channel.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Light Bearer",
                          featType: "General",
                          prerequisites: "Character level 4th.",
                          benefit: "This feat is similar to the Leadership feat, with several exceptions. You can attract only a 1st-level cohort (referred to hereafter as a light bearer) with this feat, and can’t recruit followers. You determine your Leadership score according to the rules presented in the Leadership feat, but your light bearer is always at least 3 levels lower than your level. A light bearer can take levels in alchemist, fighter, or rogue. The light bearer cannot multiclass, though he can take any archetype for which he qualifies. The radius of normal and increased illumination shed by whatever alchemical or mundane light source the light bearer carries increases by 10 feet. He also gains a +4 bonus on all saving throws made against an effect that would extinguish any nonmagical (including alchemical) light source he carries. If a light bearer gains enough XP to bring him to 2 levels lower than your level, he doesn’t gain the new level until you gain your next level; until you advance, his XP total remains 1 less than the amount needed to attain the next level. If you release your light bearer from service or otherwise lose your light bearer, you can recruit a new one. At 7th level, you can swap this feat for the Leadership feat.",
                          summary: "This feat is similar to the Leadership feat, with several exceptions. You can attract only a 1st-level cohort (referred to hereafter as a light bearer) with this feat, and can’t recruit followers.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Lightning Draw (Combat, Panache)",
                          featType: "General",
                          prerequisites: "Quick Draw, swashbuckler initiativeACG deed, swashbuckler level 7th.",
                          benefit: "You can spend 1 panache point to draw one or more light or one-handed piercing weapons, whether hidden or not, when you roll initiative, even at the start of a surprise round in which you can’t act. Drawing these weapons does not take an action. If you have the instant unveil deed, it doesn’t cost any panache to use the ability described in the previous paragraph as long as you have at least 1 point of panache, and you can spend 1 panache point to draw a single light or one-handed piercing weapon, hidden or not, as an immediate action whenever a creature attacks you.",
                          summary: "You can spend 1 panache point to draw one or more light or one-handed piercing weapons, whether hidden or not, when you roll initiative, even at the start of a surprise round in which you can’t act.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Manipulative Agility",
                          featType: "General",
                          prerequisites: "Bluff 1 rank, Sleight of Hand 1 rank.",
                          benefit: "You can use Sleight of Hand in place of Bluff for checks to feint in combat, as well as for checks to pass secret messages without being noticed (by using gestures and body language). In both cases, the effects become visual and don’t work if the target or recipient is blind or cannot see you. In the case of secret messages, the limitations of hand gestures and body language might impact what sorts of messages you can pass, at the GM’s discretion.",
                          summary: "You can use Sleight of Hand in place of Bluff for checks to feint in combat, as well as for checks to pass secret messages without being noticed (by using gestures and body language).",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Martial Dominance (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +5, Intimidate 1 rank.",
                          benefit: "You can use your base attack bonus in place of your ranks in Intimidate to determine your Intimidate skill bonus. When you confirm a critical hit against a creature, you can attempt an Intimidate check to demoralize that creature as an immediate action.",
                          summary: "You can use your base attack bonus in place of your ranks in Intimidate to determine your Intimidate skill bonus.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Measure Foe (Combat)",
                          featType: "General",
                          prerequisites: "Street Smarts, base attack bonus +1.",
                          benefit: "You can attempt a Sense Motive check as a free action to deduce a foe’s martial training after observing the foe’s movements for at least 1 minute or observing the foe’s attacks for at least 2 rounds. You take a –10 penalty on your check if you are observing movements, rather than attacks. The DC equals 20 + the creature’s base attack bonus or 10 + the creature’s Bluff or Disguise modifier, whichever is higher. If you succeed, you learn the foe’s base attack bonus and one combat feat it has, and you learn an additional combat feat it has for every 5 points by which you exceed the DC. You also gain a +1 insight bonus on attack rolls against that foe and to your AC against that foe until the foe gains a level or otherwise improves its abilities. If you fail this check against a particular foe, you can’t try again against that foe until you gain more ranks in Sense Motive.",
                          summary: "You can attempt a Sense Motive check as a free action to deduce a foe’s martial training after observing the foe’s movements for at least 1 minute or observing the foe’s attacks for at least 2…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Misdirection Attack (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Deceitful, Misdirection Redirection, Misdirection Tactics, Bluff 10 ranks.",
                          benefit: "When you successfully use the Misdirection Tactics feat to negate a melee weapon attack, the opponent whose attack you negated provokes an attack of opportunity from you, even though you normally can’t take attacks of opportunity while using the total defense action. This effect is in addition to the effect gained from Misdirection Redirection.",
                          summary: "When you successfully use the Misdirection Tactics feat to negate a melee weapon attack, the opponent whose attack you negated provokes an attack of opportunity from you, even though you normally…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Misdirection Redirection (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Misdirection Tactics, Deceitful, Bluff 10 ranks.",
                          benefit: "When you successfully use the Misdirection Tactics feat to negate a melee weapon attack, you redirect your foe’s attack and trick your foe into striking another creature of your choice within the foe’s melee reach. To resolve this attack, your foe must make a new attack roll against the new target.",
                          summary: "When you successfully use the Misdirection Tactics feat to negate a melee weapon attack, you redirect your foe’s attack and trick your foe into striking another creature of your choice within the…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Misdirection Tactics (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Deceitful, Bluff 4 ranks.",
                          benefit: "While you are using the total defense action, if a melee attack would still hit your AC, you can attempt a Bluff check with a DC equal to the foe’s attack roll as an immediate action. If you succeed at the check, you negate the attack (treat it as a miss). If the attack still hits, you cannot use this feat against the same opponent for 24 hours.",
                          summary: "While you are using the total defense action, if a melee attack would still hit your AC, you can attempt a Bluff check with a DC equal to the foe’s attack roll as an immediate action.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("My Blade is Yours (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Sense Motive 3 ranks.",
                          benefit: "When adjacent to an ally with this feat who is wielding a weapon with the blockingUE, disarm, distractingUE, or trip weapon special feature, you can treat your own weapon as if it also had that feature. If your ally’s weapon has more than one of those features, you choose one feature to emulate at the start of your turn.",
                          summary: "When adjacent to an ally with this feat who is wielding a weapon with the blockingUE, disarm, distractingUE, or trip weapon special feature, you can treat your own weapon as if it also had that…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Nerve-Racking Negotiator",
                          featType: "General",
                          prerequisites: "Persuasive.",
                          benefit: "When you successfully use the Intimidate skill to force an opponent to act friendly toward you, the target must attempt a Will save once the intimidation wears off. The DC is equal to 10 + your number of ranks in Intimidate. If the target fails this save, after the intimidation period expires, the target counts as having the same attitude toward you as it initially did (usually indifferent) and will not report you to the authorities for intimidating it.",
                          normal: "The target of a successful Intimidate check is unfriendly to you and potentially reports you to the authorities after the duration ends.",
                          summary: "When you successfully use the Intimidate skill to force an opponent to act friendly toward you, the target must attempt a Will save once the intimidation wears off.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Notorious Vigilante (Combat)",
                          featType: "General",
                          prerequisites: "Dazzling Display, Weapon Focus, any nongood alignment, great renown social talent, proficiency with chosen weapon.",
                          benefit: "Your presence can act as a fast and effective Dazzling Display. As a standard action, you use the benefit of Dazzling Display even when you are not wielding a weapon in which you have Weapon Focus. If you are wielding such a weapon, you gain a +2 bonus on the Intimidate check.",
                          summary: "Your presence can act as a fast and effective Dazzling Display. As a standard action, you use the benefit of Dazzling Display even when you are not wielding a weapon in which you have Weapon Focus.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Omnipresent Mentor",
                          featType: "General",
                          prerequisites: "Cha 17, Inspiring Mentor, inspire competence bardic performance.",
                          benefit: "By expending 4 rounds of your bardic performance at the start of the day, you can instill one ally with your inspiring words. Select one skill in which you possess ranks. Your ally gains the benefits of your inspire competence bardic performance, regardless of distance, until the next time you replenish rounds of bardic performance. This doesn’t count as an active performance, so the effects don’t end if you start another performance. Only one ally can be affected by this ability at a time; if you use this ability again before the duration expires, the ally currently affected loses the bonuses from this feat.",
                          summary: "By expending 4 rounds of your bardic performance at the start of the day, you can instill one ally with your inspiring words. Select one skill in which you possess ranks.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ostentatious Rager (Combat)",
                          featType: "General",
                          prerequisites: "Intimidate 5 ranks, rage class feature.",
                          benefit: "You can earn money with Intimidate by performing feats of strength and intimidation, exactly as if you were doing so with the Perform skill. Additionally, while you’re raging, if a foe would be demoralized by your Intimidate skill and the foe is not currently shaken by your intimidation, you can instead distract that foe until the beginning of your next turn. During that time, the foe takes a –5 penalty on Perception checks that don’t involve you and takes a –2 penalty to its AC against any creature other than you. These effects end early if a creature other than you attacks the foe or if you demoralize the foe and apply the shaken condition.",
                          summary: "You can earn money with Intimidate by performing feats of strength and intimidation, exactly as if you were doing so with the Perform skill.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Owl Dive (Combat)",
                          featType: "General",
                          prerequisites: "Dex 17, Owl Style, Owl Swoop, Skill Focus (Stealth), base attack bonus +7 or monk level 5th, Acrobatics 1 rank, Fly 1 rank, Stealth 1 rank.",
                          benefit: "While using Owl Style, you can use your base attack bonus in place of your ranks in Fly to determine your Fly skill bonus. You can charge through other creatures’ spaces, but you must make a successful Acrobatics check to move through enemy spaces, as normal. If you fail an Acrobatics check to move through an enemy’s space during a charge, your charge stops just before you enter that enemy’s space; if you threaten that foe, you can make your charge attack against that foe.",
                          summary: "While using Owl Style, you can use your base attack bonus in place of your ranks in Fly to determine your Fly skill bonus.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Owl Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Dex 13, Skill Focus (Stealth), Stealth 1 rank.",
                          benefit: "While using this style, you can use your base attack bonus in place of your ranks in Stealth to determine your Stealth skill modifier (as usual, this does not replace your ranks for other purposes, such as determining the effects of Skill Focus). While in this stance and using Stealth, you can charge at a –10 penalty beyond the penalty you take for using Stealth at full speed (which is typically –5). Foes that fail their Perception checks and don’t otherwise notice you (for instance, with an ability like blindsight) are denied their Dexterity bonuses to AC against all attacks you make against them during or at the end of that charge instead of just against the first attack.",
                          summary: "While using this style, you can use your base attack bonus in place of your ranks in Stealth to determine your Stealth skill modifier (as usual, this does not replace your ranks for other purposes,…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Owl Swoop (Combat)",
                          featType: "General",
                          prerequisites: "Dex 15, Owl Style, Skill Focus (Stealth), Acrobatics 1 rank, Stealth 1 rank.",
                          benefit: "While using Owl Style, you can use your base attack bonus in place of your ranks in Acrobatics to determine your Acrobatics skill bonus. You can attempt Acrobatics checks to move on narrow or slick surfaces and to avoid attacks of opportunity while charging, incurring the same penalties and increased DCs that you usually would apply for moving at full speed.",
                          summary: "While using Owl Style, you can use your base attack bonus in place of your ranks in Acrobatics to determine your Acrobatics skill bonus.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Page",
                          featType: "General",
                          prerequisites: "Character level 4th, proficiency with martial weapons.",
                          benefit: "This feat is similar to the Leadership feat, with several exceptions. You can attract only a 1st-level cohort (referred to hereafter as a page) with this feat, and can’t recruit followers. You determine your Leadership score according to the rules presented in the Leadership feat, but your page is always at least 3 levels lower than your level. A page can take levels in bard, cavalier, or paladin. She cannot multiclass, though she can take any archetype for which she qualifies. Whenever a page tries to influence a creature’s attitude by using the Diplomacy skill, she can use her total Diplomacy skill bonus or yours. Any improvement of a creature’s attitude toward the page also applies to you. If a page gains enough XP to bring her to 2 levels lower than your level, she doesn’t gain the new level until you gain your next level; until then, her XP total remains 1 less than the amount needed to attain the next level and she gains no additional XP until you advance in level. If you release your page from service or otherwise lose your page, you can recruit a new one. At 7th level, you can swap this feat for the Leadership feat.",
                          summary: "This feat is similar to the Leadership feat, with several exceptions. You can attract only a 1st-level cohort (referred to hereafter as a page) with this feat, and can’t recruit followers.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Persuasive Bribery",
                          featType: "General",
                          prerequisites: "Persuasive.",
                          benefit: "You gain a +2 bonus on Diplomacy checks when attempting to bribe someone and on Diplomacy or Charisma checks to bargain with a conjured creature (such as with planar ally or planar binding), in addition to any bonus granted by the bribe itself. The first time someone refuses a bribe you offer, that person’s attitude toward you doesn’t worsen, even if the offer would normally offend the person.",
                          summary: "You gain a +2 bonus on Diplomacy checks when attempting to bribe someone and on Diplomacy or Charisma checks to bargain with a conjured creature (such as with planar ally or planar binding), in…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Piercing Grapple (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Improved Grapple, Improved Unarmed Strike, Quick Draw, Intimidate 7 ranks.",
                          benefit: "You can draw a light or one-handed piercing weapon and stab your opponent with it when you initiate a grapple. You take a –2 penalty on your combat maneuver check to initiate the grapple, but since you pull the weapon out as part of the grapple, you don’t take the usual –4 penalty. If you succeed, you grapple your opponent as normal, and the weapon doesn’t count as being in your hand either for the purposes of the –4 penalty or for dealing damage while maintaining a grapple. If your opponent successfully breaks the grapple, it takes an amount of damage equal to the base weapon damage of the weapon you used to initiate the grapple plus an additional 1d4 points of bleed damage. A successful DC 15 Heal check or any magical healing ends the bleed effect. If you choose to end the grapple, you can opt to not deal the bleed damage, but either way, your opponent still takes the base weapon damage. While maintaining this grapple, you gain a +2 circumstance bonus on all Intimidate checks made against your opponent.",
                          summary: "You can draw a light or one-handed piercing weapon and stab your opponent with it when you initiate a grapple.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Planar Wanderer",
                          featType: "General",
                          prerequisites: "Cartogramancer, Knowledge (geography) 10 ranks, Knowledge (planes) 10 ranks, ability to cast greater teleport and plane shift.",
                          benefit: "When researching a plane to which you intend to plane shift, you can attempt a DC 25 Knowledge (planes) check as you cast the spell. If you succeed at the check, you’re able to more precisely target your planar transport, allowing you to arrive 5d20 miles away from your intended destination instead of 5d% miles away. If you exceed the DC by 10 or more, you arrive 5d10 miles away instead, and if you exceed the DC by 20 or more, you arrive 5d6 miles away.",
                          summary: "When researching a plane to which you intend to plane shift, you can attempt a DC 25 Knowledge (planes) check as you cast the spell.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Play to the Crowd",
                          featType: "General",
                          prerequisites: "Int 19, Ironclad Logic, Diplomacy 5 ranks, Sense Motive 5 ranks.",
                          benefit: "When you use Diplomacy to change the attitude of a character, you can first attempt a Sense Motive check against that NPC to get a hunch to determine whether the character is under the influence of an enchantment, to use Sense Assumptions, or to determine biases for a verbal duel. If you succeed at the Sense Motive check, you gain a +2 bonus on the Diplomacy check, and if you learned any biases for a verbal duel, you learn one additional bias of your choice. You do not worsen an NPC’s attitude if you fail a Diplomacy check by 5 or more.",
                          summary: "When you use Diplomacy to change the attitude of a character, you can first attempt a Sense Motive check against that NPC to get a hunch to determine whether the character is under the influence of…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Quick Favor",
                          featType: "General",
                          prerequisites: "Persuasive.",
                          benefit: "Once per day, you can decrease the time required for a Diplomacy check to gather information to 4d10 minutes when you use Diplomacy to gather information again just after you previously gathered information there (whether or not the previous attempt was successful).",
                          normal: "You must spend 1d4 hours to gather information using Diplomacy.",
                          summary: "Once per day, you can decrease the time required for a Diplomacy check to gather information to 4d10 minutes when you use Diplomacy to gather information again just after you previously gathered…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Quick Study (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, bravery +3 class feature, fighter level 10th.",
                          benefit: "Once per day, you can train with someone who has a combat feat you do not possess to gain that feat. You must train with that person for 8 hours and must meet the feat’s prerequisites to gain it this way. You gain this feat until you learn another one using this feat.",
                          summary: "Once per day, you can train with someone who has a combat feat you do not possess to gain that feat.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Quiet Death (Combat)",
                          featType: "General",
                          prerequisites: "Dex 19, Stealth 10 ranks, rogue level 10th.",
                          benefit: "When you ambush an enemy or enemies that are unaware of your presence, you can roll a Stealth check with a –5 penalty. The result indicates the Perception DC to hear your attacks (rather than the normal DC of –10 to hear pitched combat) until an opponent’s first action, when the DC returns to –10. Other enemies present can still see the attack; Quiet Death only prevents the sounds of battle from alerting further enemies.",
                          summary: "When you ambush an enemy or enemies that are unaware of your presence, you can roll a Stealth check with a –5 penalty.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ranged Disable",
                          featType: "General",
                          prerequisites: "Far Shot, Point-Blank Shot, Weapon Focus, Disable Device 9 ranks.",
                          benefit: "As a full-round action, you can attempt a Disable Device check with a ranged weapon you have chosen with Weapon Focus. You can use this ability against only a simple device (one that would normally take a full-round action to disable), and you can’t use it if the device has any cover or concealment. This use of the ranged weapon deals no damage to the device, but it allows you to attempt a Disable Device check instead. You treat the ranged attack as if you were using tools inappropriate for the job, taking a –4 penalty on your Disable Device check. You also apply any range penalty for the weapon to the Disable Device check, but you do not gain any bonuses that would normally apply on attack rolls on the Disable Device check.",
                          summary: "As a full-round action, you can attempt a Disable Device check with a ranged weapon you have chosen with Weapon Focus.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ranged Feint (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +2, Bluff 3 ranks.",
                          benefit: "You can feint with a ranged weapon by throwing a thrown weapon or firing one arrow, bolt, bullet, or other piece of ammunition; this feint takes the same action as normal to feint, but depending on your weapon, you might have to reload or draw another weapon afterward. When you successfully use a ranged feint, you deny that enemy its Dexterity bonus to AC against your ranged attacks as well as your melee attacks for the same duration as normal. If your feints normally deny a foe its Dexterity bonus to AC against attacks other than your own, this applies only against others’ melee attacks.",
                          normal: "You can feint only with a melee weapon, and only against a creature you threaten with that weapon.",
                          summary: "You can feint with a ranged weapon by throwing a thrown weapon or firing one arrow, bolt, bullet, or other piece of ammunition; this feint takes the same action as normal to feint, but depending on…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Read Spell Traces",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When using identify or any spell of a higher level that normally allows you to detect the school and aura strength of an active spell, if you exceed the DC by 10 or more, you also learn the exact spell. If the spell you are using would already allow you to learn the exact spell from its aura, you can attempt to identify the spell from the traces in a lingering aura, though you take a –10 penalty on such an attempt. When using greater detect magic to attempt to identify unique magical signatures, you receive a +2 bonus on your Knowledge (arcana) checks. In addition, you gain a +2 bonus on saving throws against magic aura and other spells and effects that conceal a spell’s true aura unless you succeed at a saving throw.",
                          summary: "When using identify or any spell of a higher level that normally allows you to detect the school and aura strength of an active spell, if you exceed the DC by 10 or more, you also learn the exact…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ready for Anything (Combat)",
                          featType: "General",
                          prerequisites: "Alertness, Improved Initiative, Lightning Reflexes, Quick Draw, base attack bonus +6 or uncanny dodge class feature.",
                          benefit: "You can always act in the surprise round even if you fail a Perception check to notice foes, but you are still considered flat-footed until you take an action.",
                          summary: "You can always act in the surprise round even if you fail a Perception check to notice foes, but you are still considered flat-footed until you take an action.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sabotage Magic Item",
                          featType: "General",
                          prerequisites: "Magical Aptitude, Disable Device 5 ranks, Use Magic Device 5 ranks.",
                          benefit: "You can attempt a Use Magic Device check to sabotage a magic item rather than to activate it, with the same DC as activating it blindly. If you succeed at the check, you define a condition under which the magic item will suffer a mishap, either dealing 2d6 points of damage to the creature attempting to use the magic item and failing to perform its desired function or else affecting the wrong target. The condition must be either an audible or a visual trigger, as defined by the magic mouth spell. If you fail the check, you suffer a mishap instead, just as if you had failed to activate the item blindly by 10 or more.",
                          summary: "You can attempt a Use Magic Device check to sabotage a magic item rather than to activate it, with the same DC as activating it blindly.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sabotage Specialist",
                          featType: "General",
                          prerequisites: "Deft Hands, Disable Device 5 ranks.",
                          benefit: "When you use the Disable Device skill to rig simple or tricky devices (such as a saddle or wagon wheel) to work normally for a while and then fail or fall off some time later, you can designate the time the device will fail, up to 60 minutes after you successfully sabotaged it. The device fails 1d6–3 rounds after the designated time (a result of –1 or –2 means it fails 1 round or 2 rounds before the designated time).",
                          normal: "You can use the Disable Device skill to rig simple devices such as saddles or wagon wheels to work normally for a while and then fail or fall off some time later (usually after 1d4 rounds or minutes of use).",
                          summary: "When you use the Disable Device skill to rig simple or tricky devices (such as a saddle or wagon wheel) to work normally for a while and then fail or fall off some time later, you can designate the…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sabotaging Sunder (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Improved Sunder, Power Attack, Disable Device 7 ranks.",
                          benefit: "As a standard action, you can sabotage an item worn by a foe with a special sunder combat maneuver. You use this maneuver in melee to sabotage an item that is neither held nor hidden in a bag, pack, or other container. You must have at least one hand free to perform this combat maneuver, and doing so provokes an attack of opportunity from the creature against whom you are performing the maneuver, even though you have the Improved Sunder feat. When attempting the combat maneuver check, use your ranks in Disable Device in place of your base attack bonus and your Dexterity modifier in place of your Strength modifier. Any bonuses on combat maneuver checks specifically to sunder (such as the bonus granted by Improved Sunder) also apply to this maneuver, and any bonuses your target gains to CMD against sundering attempts also protect her from this maneuver. If you succeed at the check, instead of dealing damage, you sabotage the chosen item, causing it to gain the broken condition. If the item was already broken, you instead destroy the item or cause it to fall off. Items immune to sunder are also immune to this special combat maneuver, and this still can’t destroy or remove an item such as an artifact that can normally be destroyed or removed only by specific means.",
                          normal: "A successful sunder attempt deals weapon damage to the sundered item.",
                          summary: "As a standard action, you can sabotage an item worn by a foe with a special sunder combat maneuver.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sense Assumptions",
                          featType: "General",
                          prerequisites: "Sense Motive 3 ranks.",
                          benefit: "You can attempt a Sense Motive check to intuit some of another person’s assumptions after 1 minute of conversation. The DC equals 20, or 10 + the target’s Bluff modifier, whichever is higher. If you succeed, you learn whether or not a falsehood of your choice related to the topic of conversation would impose a penalty on Bluff checks to convince the target of that falsehood’s truth. If you fail by 4 or less, you learn nothing. If you fail by 5 or more, the target realizes you are trying to glean information from it. You can retry this check, but the DC increases by 5 for each previous failure on this check against that target.",
                          summary: "You can attempt a Sense Motive check to intuit some of another person’s assumptions after 1 minute of conversation. The DC equals 20, or 10 + the target’s Bluff modifier, whichever is higher.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sense Relationships",
                          featType: "General",
                          prerequisites: "Street Smarts.",
                          benefit: "After 1 minute or more of interaction or observation, you can attempt a DC 20 Sense Motive check to get a hunch in order to intuit the relationship between any two creatures interacting with one another. If you don’t understand the language they are speaking, you take a –5 penalty on the check, and if the creatures are a different type than you, you take an additional –5 penalty on the check. If you succeed at this check by 5 or more, for the next hour, you gain a +2 bonus on Bluff checks to lie about one of the creatures to the other and on Diplomacy checks to request that one act against the other. If you fail the check, you cannot attempt this ability on the same creatures again until you gain an additional rank in Sense Motive.",
                          summary: "After 1 minute or more of interaction or observation, you can attempt a DC 20 Sense Motive check to get a hunch in order to intuit the relationship between any two creatures interacting with one…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shadows of Fear (Combat)",
                          featType: "General",
                          prerequisites: "Hidden strike +2d8 or sneak attack +2d6.",
                          benefit: "The first time each round that you hit a creature suffering from a fear effect, you can deal hidden strike or sneak attack damage as if you were flanking that creature (improved uncanny dodge and other effects that prevent flanking also prevent a hidden strike or sneak attack from this feat).",
                          summary: "The first time each round that you hit a creature suffering from a fear effect, you can deal hidden strike or sneak attack damage as if you were flanking that creature (improved uncanny dodge and…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sliding Dash (Combat)",
                          featType: "General",
                          prerequisites: "Dex 15, Acrobatics 10 ranks or acrobatic charge class feature, Bluff 3 ranks.",
                          benefit: "When charging, instead of moving to the closest space from which you can attack your target, you can move to the space adjacent to your target and on the other side of it, as long as you move through the closest space from which you can attack the target and through the target’s space to get there. When you move through the target’s space, you must attempt an Acrobatics check with a DC equal to 10 + your opponent’s CMD. Success allows you to move through the target’s space without provoking an attack of opportunity from that target, and when you arrive in the destination space and make your attack, the target is considered flanked for that attack (or the first attack if you have more than one attack on a charge). On a failed check, you instead provoke an attack of opportunity and complete the charge as normal. Whether or not you succeed at the Acrobatics check, you take a –4 penalty to your AC until the start of your turn, instead of the normal –2 penalty.",
                          normal: "When charging, you must end the movement part of a charge in the closest space in which you can attack your target.",
                          summary: "When charging, instead of moving to the closest space from which you can attack your target, you can move to the space adjacent to your target and on the other side of it, as long as you move through…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Social Bravery (Combat)",
                          featType: "General",
                          prerequisites: "Cha 13, bravery class feature.",
                          benefit: "In social situations, your bravado protects you and makes you harder to read. Add your bravery bonus to the DCs of checks to demoralize you, feint against you, change your attitude, or convince you to perform a request (this also applies against Cutting Humiliation and Intoxicating Flattery). Additionally, add a morale bonus equal to your bravery bonus on Bluff and Intimidate checks.",
                          summary: "In social situations, your bravado protects you and makes you harder to read.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Starry Grace (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Weapon Finesse, Weapon Focus (starknife).",
                          benefit: "When wielding a starknife, you can add your Dexterity modifier instead of your Strength modifier to that weapon’s damage. The starknife must be one appropriate for your size. You do not gain this benefit while fighting with two weapons or using flurry of blows, or any time another hand is otherwise occupied. In addition, if you have the panacheACG class feature, as long as you have at least 1 panache point, you gain a +5 bonus to your movement speed on your move action after taking an attack action with a starknife or on your Spring Attack or charge with a starknife.",
                          summary: "When wielding a starknife, you can add your Dexterity modifier instead of your Strength modifier to that weapon’s damage. The starknife must be one appropriate for your size.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Startling Getaway (Combat)",
                          featType: "General",
                          prerequisites: "Startling appearance class feature.",
                          benefit: "During a surprise round, after taking an attack action to attack a creature unaware of your presence, you can take a move action to move. If you are already capable of taking both a standard and a move action in the surprise round, this feat does not grant you any additional actions.",
                          normal: "You can take only a single standard or move action during a surprise round.",
                          summary: "During a surprise round, after taking an attack action to attack a creature unaware of your presence, you can take a move action to move.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Street Carnage (Combat)",
                          featType: "General",
                          prerequisites: "Str 15, Improved Bull Rush, Improved Unarmed Strike, Power Attack, Street Style, Street Sweep, base attack bonus +8 or monk level 7th.",
                          benefit: "While using Street Style, the critical multiplier of your unarmed strikes becomes ×3, instead of ×2.",
                          summary: "While using Street Style, the critical multiplier of your unarmed strikes becomes ×3, instead of ×2.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Street Smarts",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You get a +2 bonus on Knowledge (local) and Sense Motive checks, and Knowledge (local) is always a class skill for you. If you have 10 or more ranks in one of these skills, the bonus increases to +4 for that skill. The bonus on Sense Motive checks doesn’t stack with Alertness.",
                          summary: "You get a +2 bonus on Knowledge (local) and Sense Motive checks, and Knowledge (local) is always a class skill for you.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Street Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Str 15, Improved Bull Rush, Improved Unarmed Strike, Power Attack, base attack bonus +4 or monk level 3rd.",
                          benefit: "While using this style, once per round as a swift action when you hit a target with an unarmed strike, you can deal an extra 1d6 points of damage and attempt a bull rush combat maneuver against that target.",
                          special: "You can enter the style stance for street style only while in urban terrain, and the stance ends immediately if you cease to be in urban terrain.",
                          summary: "While using this style, once per round as a swift action when you hit a target with an unarmed strike, you can deal an extra 1d6 points of damage and attempt a bull rush combat maneuver against that…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Street Sweep (Combat)",
                          featType: "General",
                          prerequisites: "Str 15, Improved Bull Rush, Improved Unarmed Strike, Power Attack, Street Style, base attack bonus +6 or monk level 5th.",
                          benefit: "While using Street Style, the first time each round that you deal damage with an unarmed strike to a foe that you bull rushed with Street Style since the beginning of your last turn, that foe must succeed at a Fortitude save (DC = 10 + your base attack bonus) or be knocked prone and staggered for 1 round.",
                          summary: "While using Street Style, the first time each round that you deal damage with an unarmed strike to a foe that you bull rushed with Street Style since the beginning of your last turn, that foe must…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Structural Strike (Combat, Panache)",
                          featType: "General",
                          prerequisites: "Knowledge (engineering) 5 ranks, precise strike class feature or precise strikeACG deed.",
                          benefit: "When using the duelist’s or swashbuckler’s precise strike, you can make a single strike as a standard action against an opponent that would be otherwise immune to your precise strike damage. If you hit, you deal your precise strike damage as normal against this enemy. When using the swashbuckler’s precise strike deed, you can spend 1 panache point as a swift action to deal your regular precise strike damage on a single attack against an opponent that would typically be immune. If you have both class features, you can use either option in order to apply the full damage from both versions of precise strike. Additionally, against opponents with a chance of immunity to your precise strike (such as an opponent wearing armor with the fortification special ability), this feat reduces their chance of negating your precise strikes by 10%.",
                          summary: "When using the duelist’s or swashbuckler’s precise strike, you can make a single strike as a standard action against an opponent that would be otherwise immune to your precise strike damage.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Studied Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When casting a studied spell, designate one target affected by the spell. Attempt an appropriate Knowledge check based on that target’s creature type as you cast the spell. The DC for this check is equal to 20 + the creature’s CR based on its race and not including any class levels or template (a creature that is defined by class levels has an effective CR of 0 for this ability). If you succeed, your studied spell ignores any energy resistance or damage reduction the target has because of its race as well as any bonuses on saving throws against the spell granted by the target’s race (such as the bonus from a dwarf ’s hardy ability or a halfling’s halfling luck ability). Your studied spell doesn’t ignore energy resistance, damage reduction, or saving throw bonuses granted by other spells and effects. If you fail the Knowledge check, the spell still has its normal effects. A studied spell uses up a spell slot 2 levels higher than the spell’s actual level.",
                          summary: "When casting a studied spell, designate one target affected by the spell. Attempt an appropriate Knowledge check based on that target’s creature type as you cast the spell.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stylized Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "Bluff 5 ranks, Spellcraft 5 ranks.",
                          benefit: "A stylized spell has slightly different verbal and somatic components than normal, and the spell effect appears noticeably different. The Spellcraft DC to identify a stylized spell as it is being cast is 10 higher than normal. The Knowledge (arcana) DC to identify a stylized spell, its effects, or the materials it creates is 10 higher than normal, as is the DC to recognize your magical signature with greater detect magic. When you apply this feat to a spell, you can attempt to disguise your stylized spell as another spell of the same school and subschool with the same descriptors. The other spell must be either the same spell level as the stylized spell (before applying the metamagic adjustment) or 1 spell level higher. If you do so, the stylized spell gains the ruse descriptor (see page 192) and takes on some superficial aspects of the other spell. As usual for a spell with the ruse descriptor, identification attempts that fail by 10 or less mistakenly identify it as the chosen spell (those that fail by more can’t identify it at all). A stylized spell uses up a spell slot 1 level higher than the spell’s actual level.",
                          summary: "A stylized spell has slightly different verbal and somatic components than normal, and the spell effect appears noticeably different.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Subtle Enchantments",
                          featType: "General",
                          prerequisites: "Deceitful, Spell Focus (enchantment).",
                          benefit: "When you cast an enchantment spell or use an enchantment spell-like ability to influence a creature’s attitude or actions and the foe negates the spell with a successful Will save, she has a 50% chance not to notice that she just succeeded at a saving throw (she still can attempt to identify your spell or spell-like ability as normal). If the foe fails the saving throw or is otherwise affected by the spell, the Sense Motive DC to notice she is under the effects of an enchantment increases by 5.",
                          normal: "Anyone who successfully saves against a spell notices the mental intrusion automatically.",
                          summary: "When you cast an enchantment spell or use an enchantment spell-like ability to influence a creature’s attitude or actions and the foe negates the spell with a successful Will save, she has a 50%…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Superior Scryer",
                          featType: "General",
                          prerequisites: "Spell Focus (divination), the ability to cast at least one spell of the scrying subschool.",
                          benefit: "When casting a scrying spell, you see through the spell’s sensor with darkvision 60 feet, whether or not you possess darkvision normally and whether or not the spell normally allows you to see with darkvision. If the spell sends back sensory information only within 10 feet of the sensor (such as with scrying and greater scrying), this feat doesn’t increase that range. You receive a +2 bonus on Perception checks to notice things through a scrying sensor, and your prying eyes and insect spies also receive a +2 bonus on Perception checks. When you use the scrying or greater scrying spell, you have a 10% increase to the chance of using spells through the sensor.",
                          summary: "When casting a scrying spell, you see through the spell’s sensor with darkvision 60 feet, whether or not you possess darkvision normally and whether or not the spell normally allows you to see with…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Swipe and Stash (Combat)",
                          featType: "General",
                          prerequisites: "Sleight of Hand 5 ranks.",
                          benefit: "As a standard action, you can attempt a DC 20 Sleight of Hand check to plant a small object on a creature. The target is entitled to a Perception check opposed by your Sleight of Hand check to notice you planting the item. This does not force the creature to wear, wield, or otherwise use the item; you simply plant it on the creature’s person. The DC increases to 30 if the target is not wearing clothing, armor, tack and harness (if an animal or similar creature), or some other equivalent accoutrements in which you can hide the item. In combat, you must succeed at a stealAPG combat maneuver in order to plant an item on a creature while attempting a Sleight of Hand check opposed by the target’s Perception check to do so without the target noticing. You are automatically unnoticed if you succeed and have the Greater StealAPG feat. If you steal an object with a successful Sleight of Hand check or steal combat maneuver check, you can use this feat as a swift action to plant it on another creature within reach before the end of your turn.",
                          special: "If you have Walking Sleight, you can take either or both of your actions with Swipe and Stash at any point during your movement in the same round, moving both before and after both snatching and planting the object if you wish to do so and have enough movement.",
                          summary: "As a standard action, you can attempt a DC 20 Sleight of Hand check to plant a small object on a creature.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Telepathy Tap",
                          featType: "General",
                          prerequisites: "Sense Motive 10 ranks, ability to cast detect thoughts or telepathy OA as a spell or spell-like ability or telepathy supernatural ability.",
                          benefit: "When a creature within range of your telepathy (or within 60 feet if you are using detect thoughts) uses telepathy to communicate, including when that creature sends or receives a magical message such as dream or sending, you can notice the attempt with a successful DC 30 Sense Motive check. At this point, you can either use your telepathy ability or spend a use or casting of detect thoughts as an immediate action. If you do so, for every 5 points by which your check exceeds the DC, you glean one fragment of information about the communication, such as the identity of its source; its general nature; the emotional state of the sender or the recipient; or a specific person, place, or thing mentioned in the message. In addition, the creature must attempt a saving throw (with a DC equal to that of the spell if you spent a use of detect thoughts or are using telepathy, or 10 + 1/2 your racial HD + your Charisma modifier if you are using a racial telepathy ability). If the target fails its save, you can listen to both sides of the telepathic or magical communication as long as you continue to concentrate each round as a standard action.",
                          summary: "When a creature within range of your telepathy (or within 60 feet if you are using detect thoughts) uses telepathy to communicate, including when that creature sends or receives a magical message…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tenacious Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Increase the DC of caster level checks to counter or dispel a tenacious spell by 2. If a tenacious spell is dispelled or dismissed, it lasts for 1d4 further rounds (to a maximum of the spell’s normal duration) before ending (this does not occur if antimagic field or a similar spell or effect suppresses or ends the spell’s effect without dispelling or dismissing it). The lingering auras of tenacious spells detectable with detect magic last for twice as long as usual after the spells end. A tenacious spell uses up a spell slot 1 level higher than the spell’s actual level.",
                          summary: "Increase the DC of caster level checks to counter or dispel a tenacious spell by 2.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Threatening Negotiator",
                          featType: "General",
                          prerequisites: "Nerve-Racking Negotiator, Persuasive, Skill Focus (Intimidate).",
                          benefit: "When you successfully use the Intimidate skill to force an opponent to act friendly toward you, the duration of the attitude change lasts 2d6 hours.",
                          normal: "Changing an opponent’s attitude with Intimidate normally changes the foe’s attitude to friendly for 1d6×10 minutes.",
                          summary: "When you successfully use the Intimidate skill to force an opponent to act friendly toward you, the duration of the attitude change lasts 2d6 hours.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Timely Coordination (Teamwork)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You gain a +1 bonus on attack rolls and skill checks made as part of readied actions triggered by one of your allies who also has this feat. When you and an ally who also has this feat are attempting to overcome separate simultaneous obstacles as part of a heist or infiltration, you also gain this +1 bonus on attack rolls and skill checks.",
                          summary: "You gain a +1 bonus on attack rolls and skill checks made as part of readied actions triggered by one of your allies who also has this feat.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("True Deception",
                          featType: "General",
                          prerequisites: "Cha 17, Disguise 17 ranks, master disguise master ninja trickUC or master of disguise advanced rogue talent, ninja level 10th or rogue level 10th.",
                          benefit: "When using the master disguise master ninja trick or master of disguise advanced rogue talent to take on the appearance of a specific individual, you can fool divination magic and effects designed to locate the subject of your disguise as per the vigilante’s any guise social talent. In addition, you gain a +10 bonus on Bluff checks to act like that individual.",
                          summary: "When using the master disguise master ninja trick or master of disguise advanced rogue talent to take on the appearance of a specific individual, you can fool divination magic and effects designed to…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Unimpeachable Honor",
                          featType: "General",
                          prerequisites: "Iron Will.",
                          benefit: "Whenever you are under the effects of a charm or compulsion effect and would be compelled to take an action that violates your fundamental nature, explicitly violates the strictures of your religion, or would be an act of an alignment that directly opposes your own (for instance, a chaotic or evil act if you are lawful good), you gain a +4 bonus on any saving throw or opposed Charisma check to resist that command or break free from the effect. Whenever you are compelled to attack an ally, you take a –4 penalty on your attack rolls and damage rolls.",
                          summary: "Whenever you are under the effects of a charm or compulsion effect and would be compelled to take an action that violates your fundamental nature, explicitly violates the strictures of your religion,…",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Walking Sleight",
                          featType: "General",
                          prerequisites: "Deft Hands, Sleight of Hand 5 ranks.",
                          benefit: "You no longer take the –20 penalty for attempting a Sleight of Hand check as a move action. You can attempt a Sleight of Hand check as a standard action in the middle of your move action.",
                          normal: "You can attempt a Sleight of Hand check as a move action only by taking a –20 penalty on the check.",
                          summary: "You no longer take the –20 penalty for attempting a Sleight of Hand check as a move action. You can attempt a Sleight of Hand check as a standard action in the middle of your move action.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Weapon Bearer",
                          featType: "General",
                          prerequisites: "Character level 4th, proficient with all martial weapons.",
                          benefit: "This feat is similar to the Leadership feat, with several exceptions. You can attract only a 1st-level cohort (referred to hereafter as a weapon bearer) with this feat, and can’t recruit followers. You determine your Leadership score according to the rules presented in the Leadership feat, but your weapon bearer is always at least 3 levels lower than yourself. A weapon bearer can take levels in only cavalier, fighter, or gunslinger. She cannot multiclass, though she can take any archetype for which she qualifies. Once per round as a move action that does not provoke attacks of opportunity, you can retrieve an item carried by your weapon bearer. In addition, your weapon bearer can pick up items you drop as an immediate action. In order to use either of these abilities, you and your weapon bearer must be adjacent to each other and must both be able to move and communicate with each other. If a weapon bearer gains enough XP to bring her to 2 levels lower than your level, she doesn’t gain the new level until you gain your next level; until you advance, her XP total remains 1 less than the amount needed to attain the next level. If you release your weapon bearer from service or otherwise lose your weapon bearer, you can recruit a new one. At 7th level, you can swap this feat for the Leadership feat.",
                          summary: "This feat is similar to the Leadership feat, with several exceptions. You can attract only a 1st-level cohort (referred to hereafter as a weapon bearer) with this feat, and can’t recruit followers.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Willing Accomplice",
                          featType: "General",
                          prerequisites: "Cha 13, Bluff 3 ranks, Sense Motive 1 rank.",
                          benefit: "As a standard action, you can attempt a Bluff check to aid another’s Disguise check. In addition, when attempting such a check to aid a vigilante ally in maintaining that ally’s social identity, a successful check grants that ally a +5 bonus instead of the normal +2.",
                          summary: "As a standard action, you can attempt a Bluff check to aid another’s Disguise check.",
                          source: "Ultimate Intrigue", isPremium: true),

                    // // MARK: - Ultimate Intrigue, Cohorts and Companions
        )
        try await db.insertFeat(
        .make("Recruits",
                          featType: "General",
                          prerequisites: "Cha 13, character level 5th.",
                          benefit: "You gain a number of cohorts (as per the Leadership feat) that represent NPCs you are responsible for instructing and overseeing. You have a number of such cohorts equal to half your character level. Unlike normal cohorts, these recruits must be at least 4 levels lower than your level. Since these recruits must spend most of their time studying and gaining experience, only one recruit can travel with you at a time (though they all gain experience at the same rate, as those not present are assumed to be studying and growing independently). Whenever you are in a major town or city, you can exchange the recruit currently accompanying you for a different member of your recruits. As recruits are busy learning and studying the basics of their careers, those not traveling with you can’t engage in mundane or magical crafting or Profession checks. Recruits not traveling with you can, however, serve as managers for your holdings if you are using the downtime rules. If a recruit dies, you take only a –1 penalty to your Leadership score.",
                          special: "The Recruits feat counts as the Leadership feat for purposes of fulfilling prerequisites. A character cannot have both Leadership and Recruits. A character with Recruits who later qualifies for Leadership can exchange this feat for Leadership immediately upon qualifying (selecting one minor cohort to become a full cohort, while the rest move on).",
                          summary: "You gain a number of cohorts (as per the Leadership feat) that represent NPCs you are responsible for instructing and overseeing. You have a number of such cohorts equal to half your character level.",
                          source: "Ultimate Intrigue, Cohorts and Companions", isPremium: true),

                    // // MARK: - Ultimate Magic
        )
        try await db.insertFeat(
        .make("Abundant Revelations",
                          featType: "General",
                          prerequisites: "Mystery class feature.",
                          benefit: "Choose one of your revelations that has a number of uses per day. You gain 1 additional use per day of that revelation.",
                          special: "You can gain this feat multiple times. Its effects do not stack. Each time you take the feat, it applies to a new revelation.",
                          summary: "Choose one of your revelations that has a number of uses per day. You gain 1 additional use per day of that revelation.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Accursed Critical (Critical)",
                          featType: "General",
                          prerequisites: "Critical Focus, ability to cast bestow curse or major curse, caster level 9th.",
                          benefit: "When you confirm a critical hit with a spell or spell-like ability, you may cast bestow curse or major curse on that target as an immediate action. This works even with ranged spells. You must have bestow curse or major curse prepared or otherwise available to cast, and using this ability casts the corresponding spell.",
                          summary: "When you confirm a critical hit with a spell or spell-like ability, you may cast bestow curse or major curse on that target as an immediate action. This works even with ranged spells.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Accursed Hex",
                          featType: "General",
                          prerequisites: "Hex class feature.",
                          benefit: "When you target a creature with a hex that cannot target the same creature more than once per day, and that creature succeeds at its saving throw against the hex’s effect, you can target the creature with the same hex a second time before the end of your next turn. If the second attempt fails, you can make no further attempts to target that creature with the same hex for 1 day.",
                          normal: "You can only target a creature with these hexes once per day.",
                          summary: "When you target a creature with a hex that cannot target the same creature more than once per day, and that creature succeeds at its saving throw against the hex’s effect, you can target the creature…",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Advanced Ranger Trap",
                          featType: "General",
                          prerequisites: "Trap class feature, ranger level 5th.",
                          benefit: "Add +1 to the Difficulty Class on all Perception and Disable Device skill checks to find or disable the traps you make with your trap class feature. Add a +1 to the Difficulty Class on all saving throws against the effects of the trap you make with your trap class feature.",
                          summary: "Add +1 to the Difficulty Class on all Perception and Disable Device skill checks to find or disable the traps you make with your trap class feature.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Antagonize",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You can make Diplomacy and Intimidate checks to make creatures respond to you with hostility. No matter which skill you use, antagonizing a creature takes a standard action that does not provoke attacks of opportunity, and has a DC equal to 10 + the target’s Hit Dice + the target’s Wisdom modifier. You cannot make this check against a creature that does not understand you or has an Intelligence score of 3 or lower. Before you make these checks, you may make a Sense Motive check (DC 20) as a swift action to gain an insight bonus on these Diplomacy or Intimitade checks equal to your Charisma bonus until the end of your next turn. The benefits you gain for this check depend on the skill you use. This is a mind-affecting effect. Diplomacy: You fluster your enemy. For the next minute, the target takes a –2 penalty on all attacks rolls made against creatures other than you and has a 10% spell failure chance on all spells that do not target you or that have you within their area of effect. Intimidate: The creature flies into a rage. On its next turn, the target must attempt to make a melee attack against you, make a ranged attack against you, target you with a spell, or include you in the area of a spell. The effect ends if the creature is prevented from attacking you or attempting to do so would harm it (for example, if you are on the other side of a chasm or a wall of fire). If it cannot attack you on its turn, you may make the check again as an immediate action to extend the effect for 1 round (but cannot extend it thereafter). The effect ends as soon as the creature attacks you. Once you have targeted a creature with this ability, you cannot target it again for 1 day.",
                          summary: "You can make Diplomacy and Intimidate checks to make creatures respond to you with hostility.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Blighted Critical (Critical)",
                          featType: "General",
                          prerequisites: "Caster level 5th.",
                          benefit: "Whenever you confirm a critical hit with a touch spell, ranged touch spell, or spell-like ability against an opponent, the victim gains a random minor spellblight (see page 95).",
                          special: "You can apply the effects of only one critical feat to a given critical hit unless you possess Critical Mastery.",
                          summary: "Whenever you confirm a critical hit with a touch spell, ranged touch spell, or spell-like ability against an opponent, the victim gains a random minor spellblight (see page 95).",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Blighted Critical Mastery (Critical)",
                          featType: "General",
                          prerequisites: "Blighted Critical, caster level 9th.",
                          benefit: "Whenever you apply a spellblight by way of the Blighted Critical or Greater Blighted critical feat, you can choose the spellblight you apply rather than determining it randomly.",
                          summary: "Whenever you apply a spellblight by way of the Blighted Critical or Greater Blighted critical feat, you can choose the spellblight you apply rather than determining it randomly.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Burning Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "The acid or fire effects of the affected spell adhere to the creature, causing more damage the next round. When a creature takes acid or fire damage from the affected spell, that creature takes damage equal to 2× the spell’s actual level at the start of its next turn. The damage is acid or fire, as determined by the spell’s descriptor. If a burning spell has both the fire and acid descriptor, the caster chooses what kind of damage is dealt by the burning spell effect. A burning spell uses up a slot two levels higher than the spell’s actual level.",
                          summary: "The acid or fire effects of the affected spell adhere to the creature, causing more damage the next round.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Channeled Shield Wall",
                          featType: "General",
                          prerequisites: "Channel energy, 3d6 proficiency with a shield.",
                          benefit: "As a swift action, you can spend a use of your channel energy to grant yourself a +2 deflection bonus while using a shield. This bonus lasts 1 minute per cleric level or effective cleric level. While you benefit from this bonus, allies with shields also gain a +2 deflection bonus while they are adjacent to you.",
                          summary: "As a swift action, you can spend a use of your channel energy to grant yourself a +2 deflection bonus while using a shield. This bonus lasts 1 minute per cleric level or effective cleric level.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Concussive Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "With sonic damage comes a concussive wave of energy that rattles creatures affected by the spell. A concussive spell causes creatures that take damage from a spell that has the sonic descriptor to take a –2 penalty on attack rolls, saving throws, skill checks, and ability checks for a number of rounds equal to the actual spell level of the spell. A concussive spell only affects spells with the sonic descriptor. A concussive spell uses up a spell slot two levels higher than the spell's actual level.",
                          summary: "With sonic damage comes a concussive wave of energy that rattles creatures affected by the spell.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Create Reliquary Arms and Shields",
                          featType: "General",
                          prerequisites: "Craft Magic Arms and Armor, ability to cast consecrate or desecrate.",
                          benefit: "When you craft a magic weapon, magic armor, or magic shield, you may add one casting of consecrate or desecrate as part of the item crafting process. This increases the item’s price by 250 gp. The item becomes a reliquary and can be used as a holy (or unholy) symbol divine focus of your deity. If you cast consecrate or desecrate, your reliquary counts as a permanent fixture for that spell while it remains in the spell’s area.",
                          summary: "When you craft a magic weapon, magic armor, or magic shield, you may add one casting of consecrate or desecrate as part of the item crafting process. This increases the item’s price by 250 gp.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Create Sanguine Elixir",
                          featType: "General",
                          prerequisites: "Cha 15, Brew Potion, Craft (alchemy) 12 ranks, sorcerer level 3rd.",
                          benefit: "Once per day, when you clear your mind to regain spell slots, you can create a sanguine elixir. When you do, pick one of your bloodline powers. You transfer that power into a small potion that any creature can drink to temporarily gain the benefit of your bloodline power. Creating a sanguine elixir takes 1 hour, and requires special oils and distillates worth 100 gp, and when you make the sanguine elixir, you lose access to the bloodline power until the next time you clear your mind to regain spell slots. When a creature drinks a sanguine elixir, it can activate the bloodline power anytime before the end of its next turn, as if it had access to that bloodline power. A creature that drinks the elixir cannot gain the benefit if its character level does not equal or exceed the minimum level of the bloodline power. Any level-dependent effects use the character level of the creature that drinks the sanguine elixir, or your sorcerer level, whichever is lower. Drinking a sanguine elixir is just like drinking a potion. A sanguine elixir is treated as a magic item with your caster level. Sanguine elixirs are extremely unstable. They lose their potency 1 day after they are created.",
                          summary: "Once per day, when you clear your mind to regain spell slots, you can create a sanguine elixir. When you do, pick one of your bloodline powers.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Defending Eidolon",
                          featType: "General",
                          prerequisites: "Shield ally feature.",
                          benefit: "Whenever you are adjacent to your eidolon, you can choose for the eidolon to take a –1 penalty on melee attack rolls and combat maneuver checks to gain a +1 dodge bonus to your Armor Class. When your eidolon’s base attack bonus reaches +5, and for every +5 thereafter, the penalty increases by –1 and the dodge bonus increases by +1. You must choose to use this feat when your eidolon is making an attack or full-attack action with melee or natural weapons, and its effect lasts until your eidolon’s next turn, or until you are no longer adjacent to the eidolon, whichever occurs first.",
                          summary: "Whenever you are adjacent to your eidolon, you can choose for the eidolon to take a –1 penalty on melee attack rolls and combat maneuver checks to gain a +1 dodge bonus to your Armor Class.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Deny Death",
                          featType: "General",
                          prerequisites: "Ki pool, Endurance.",
                          benefit: "As long as you have 1 ki point in your ki pool, when you fail your Constitution check to stabilize, you do not lose 1 hit point. If you succeed at the check, you can spend 1 ki point to heal 1d6 hit points. If you roll a natural 20 on the check to stabilize, you can spend 1 ki point to heal 2d6 hit points of damage instead.",
                          summary: "As long as you have 1 ki point in your ki pool, when you fail your Constitution check to stabilize, you do not lose 1 hit point.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Detect Expertise",
                          featType: "General",
                          prerequisites: "Int 13; ability to cast detect chaos, detect evil, detect good, detect law, or detect magic.",
                          benefit: "When you use any of the spells listed in this feat’s prerequisites to detect a creature’s alignment or its magic, you have a chance of detecting what spellcasting expertise it has. After you observe a creature with the detect spell for 3 rounds, it must make a Will save (DC 10 + 1/2 your caster level + your Intelligence modifier). If it fails the saving throw, you learn what bloodlines, domains, hexes, schools, or mysteries (if any) the creature possesses. If the creature makes its save, it is immune to the effects of this feat for 24 hours.",
                          summary: "When you use any of the spells listed in this feat’s prerequisites to detect a creature’s alignment or its magic, you have a chance of detecting what spellcasting expertise it has.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Die for Your Master",
                          featType: "General",
                          prerequisites: "Tumor familiar alchemist discovery.",
                          benefit: "If your tumor familiar is attached, and you would be reduced to 0 or fewer hit points by damage in combat (from a weapon or other blow, not a spell or special ability), the familiar throws itself in the way of the attack as an immediate action. If it makes a Reflex saving throw (DC = damage dealt), it takes all the damage from the attack; if it fails, it takes half damage and you take half damage. The familiar must be aware of the attack and able to react to it in order to use this ability, and it can only do this once per day—if it is denied its Dexterity bonus to AC, it can’t use this ability. Since this effect would not normally allow the familiar to make a Reflex save for half damage, its improved evasion ability does not apply on this saving throw.",
                          summary: "If your tumor familiar is attached, and you would be reduced to 0 or fewer hit points by damage in combat (from a weapon or other blow, not a spell or special ability), the familiar throws itself in…",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Divine Interference",
                          featType: "General",
                          prerequisites: "Divine spellcaster, caster level 10th.",
                          benefit: "As an immediate action, when an enemy within 30 feet hits an ally with an attack, you can sacrifice a prepared divine spell or (if you are a spontaneous caster) an unused spell slot and make the enemy reroll the attack roll. The second attack roll takes a penalty equal to the level of the spell you sacrifice. You must sacrifice a spell of 1st-level or higher to use this ability. Whether or not the second attack is successful, you cannot use this effect on the same creature again for 1 day.",
                          summary: "As an immediate action, when an enemy within 30 feet hits an ally with an attack, you can sacrifice a prepared divine spell or (if you are a spontaneous caster) an unused spell slot and make the…",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dragonbane Aura",
                          featType: "General",
                          prerequisites: "Aura of courage class feature, caster level 8th.",
                          benefit: "When fighting dragons, your aura of courage expands to a 20-foot-radius emanation, and allies in the aura gain a morale bonus on saving throws against dragon breath equal to your aura of courage’s bonus against fear effects.",
                          normal: "The aura of courage is a 10-foot-radius emanation, and grants a +4 morale bonus on fear effects.",
                          summary: "When fighting dragons, your aura of courage expands to a 20-foot-radius emanation, and allies in the aura gain a morale bonus on saving throws against dragon breath equal to your aura of courage’s…",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Echoing Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When you cast an echoing spell, it does not disappear entirely from memory, and you can cast it one additional time during that day. No effect that allows you to reprepare or recast a spell can affect the echoed spell. If you prepare spells, this second casting does not require you to prepare it in another spell slot. If you spontaneously cast spells, this second casting does not expend another available spell slot. An echoing spell uses up a spell slot three levels higher than the spell’s actual level.",
                          summary: "When you cast an echoing spell, it does not disappear entirely from memory, and you can cast it one additional time during that day.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Eldritch Heritage",
                          featType: "General",
                          prerequisites: "Cha 13, Skill Focus with the class skill of bloodline selected for this feat (see below), character level 3rd.",
                          benefit: "Select one sorcerer bloodline. You must have Skill focus in the class skill that bloodline grants to a sorcerer at 1st level (for example, Heal for the celestial bloodline). This bloodline cannot be a bloodline you already have. You gain the first-level bloodline power for the selected bloodline. For purposes of using that power, treat your sorcerer level as equal to your character level – 2, even if you have levels in sorcerer. You do not gain any of the other bloodline abilities.",
                          summary: "Select one sorcerer bloodline. You must have Skill focus in the class skill that bloodline grants to a sorcerer at 1st level (for example, Heal for the celestial bloodline).",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ensemble (Teamwork)",
                          featType: "General",
                          prerequisites: "Perform 5 ranks",
                          benefit: "When you are performing, allies within 20 feet who also have this feat can aid you with your Perform checks (including those made as part of bardic performance) as if they were aiding another as an immediate action. The allies make their aid another rolls before you make your check. No more than four allies can grant you a bonus with aid another. Allies aiding you do not need to use the same category of the Perform skill that you are using in order to aid you.",
                          special: "If you possess one or more levels of the bard class, you can choose any one ally within 20 feet to be part of the ensemble. The ally is considered to have the ensemble teamwork feat for the purposes of aiding your performance.",
                          summary: "When you are performing, allies within 20 feet who also have this feat can aid you with your Perform checks (including those made as part of bardic performance) as if they were aiding another as an…",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Evolved Familiar",
                          featType: "General",
                          prerequisites: "Int 13, Cha 13, familiar class feature.",
                          benefit: "Select an evolution from the list of 1-point evolutions available to a summoner’s eidolon. Your familiar has this evolution. The familiar must conform to any limitations of the evolution. For instance, no familiars can benefit from the mount evolution and only familiars with wings can take the wing buffet evolution. If you gain a new familiar, your old familiar loses all evolutions, and you can select a new 1-point evolution for the new familiar.",
                          special: "You can gain this feat multiple times. Its effects stack, granting a new 1-point evolution to your familiar each time you gain this feat.",
                          summary: "Select an evolution from the list of 1-point evolutions available to a summoner’s eidolon. Your familiar has this evolution. The familiar must conform to any limitations of the evolution.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Experimental Spellcaster (Words of Power)",
                          featType: "General",
                          prerequisites: "Ability to cast spells.",
                          benefit: "Select one class that grants you the ability to cast spells. You can now use the slots from that class to cast a limited number of words of power spells. Add all of the target words to your spell list and your spellbook, familiar, or list of spells known. In addition, add the boost meta word and one effect word of any level you can cast in the chosen class.",
                          special: "You can take this feat multiple times. Each additional time you select this feat, add two effect or meta words to your spellbook, familiar, or list of spells known.",
                          summary: "Select one class that grants you the ability to cast spells. You can now use the slots from that class to cast a limited number of words of power spells.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Exploit Lore",
                          featType: "General",
                          prerequisites: "Monster lore class feature, base attack bonus +11.",
                          benefit: "Once per day, when you successfully identify all abilities and weaknesses of a creature using the appropriate Knowledge check, you gain a +2 bonus on attack and damage rolls against that creature for 1 minute. If you identify the abilities and weaknesses of numerous creatures, you must pick one creature to be the target of this effect.",
                          summary: "Once per day, when you successfully identify all abilities and weaknesses of a creature using the appropriate Knowledge check, you gain a +2 bonus on attack and damage rolls against that creature for…",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extended Bane",
                          featType: "General",
                          prerequisites: "Bane class feature.",
                          benefit: "Add your Wisdom bonus to the number of rounds per day that you can use your bane ability.",
                          summary: "Add your Wisdom bonus to the number of rounds per day that you can use your bane ability.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Arcana",
                          featType: "General",
                          prerequisites: "Magus arcana class feature.",
                          benefit: "You gain one additional magus arcana. You must meet all the prerequisites for this magus arcana.",
                          special: "You can gain this feat multiple times. Its effects stack, granting a new arcana each time you gain this feat.",
                          summary: "You gain one additional magus arcana. You must meet all the prerequisites for this magus arcana.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Arcane Pool",
                          featType: "General",
                          prerequisites: "Arcane pool class feature.",
                          benefit: "Your arcane pool increases by 2.",
                          special: "You can gain this feat multiple times. Its effects stack, granting you an increase to your arcane pool each time you take this feat.",
                          summary: "Your arcane pool increases by 2.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Cantrips or Orisons",
                          featType: "General",
                          prerequisites: "Ability to cast cantrips or orisons.",
                          benefit: "Add two cantrips to your cantrips known or two orisons to your orisons known.",
                          special: "You can take this feat multiple times. Each time you do, add two cantrips or orisons to your spells known.",
                          summary: "Add two cantrips to your cantrips known or two orisons to your orisons known.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Evolution",
                          featType: "General",
                          prerequisites: "Eidolon class feature.",
                          benefit: "Your eidolon’s evolution pool increases by 1.",
                          special: "This evolution can be taken once at 1st level, and again at 5th, 10th, 15th and 20th.",
                          summary: "Your eidolon’s evolution pool increases by 1.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Ranger Trap",
                          featType: "General",
                          prerequisites: "Trap class feature.",
                          benefit: "You can set ranger traps two additional times per day.",
                          summary: "You can set ranger traps two additional times per day.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Summons",
                          featType: "General",
                          prerequisites: "Ability to cast summon monster as a spell-like ability, summoner 1st.",
                          benefit: "You gain 1 additional use of your summon monster spell-like ability per day.",
                          special: "You can take this feat multiple times, but it can only be taken once for every five summoner levels you possess.",
                          summary: "You gain 1 additional use of your summon monster spell-like ability per day.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Word (Words of Power)",
                          featType: "General",
                          prerequisites: "Caster level 1st, ability to cast wordspells, see Special.",
                          benefit: "Add one effect word from your class’s word list to your list of words known. This is in addition to the number of words normally gained at each level in your class. You may instead add two words from your class’s word list to your list of words known, but both of these words must be at least one level lower than the highest-level wordspell you can cast in that class. Once made, these choices cannot be changed.",
                          special: "You can only take this feat if you possess levels in a class whose spellcasting relies on a limited list of words known, such as the bard, oracle, or sorcerer. You can take this feat multiple times.",
                          summary: "Add one effect word from your class’s word list to your list of words known. This is in addition to the number of words normally gained at each level in your class.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Eyes of Judgment",
                          featType: "General",
                          prerequisites: "Detect alignment class feature, caster level 6th.",
                          benefit: "When using your detect alignment class feature, you may spend 3 rounds studying a creature within 60 feet. You cannot take any other actions while doing this. After that time has passed, you learn the alignment of the creature.",
                          summary: "When using your detect alignment class feature, you may spend 3 rounds studying a creature within 60 feet. You cannot take any other actions while doing this.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fast Empathy",
                          featType: "General",
                          prerequisites: "Handle Animal 5 ranks, wild empathy class feature.",
                          benefit: "Using wild empathy is a standard action for you.",
                          normal: "Using wild empathy requires 1 minute.",
                          summary: "Using wild empathy is a standard action for you.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Favored Judgment",
                          featType: "General",
                          prerequisites: "Wis 13, judgment class feature.",
                          benefit: "Select a favored race from the ranger’s favored enemies chart. Any sacred or profane bonus you gain from a judgment is 1 higher for attacks you make against or take from creatures that match the selected favored enemy.",
                          special: "You can gain this feat multiple times. Its effects do not stack. Each time you take the feat, it applies to a different favored enemy.",
                          summary: "Select a favored race from the ranger’s favored enemies chart.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fearless Aura",
                          featType: "General",
                          prerequisites: "Aura of courage class feature, caster level 8th.",
                          benefit: "Your aura of courage expands to a 20-foot-radius emanation. Allies within the aura are immune to fear effects.",
                          normal: "The aura of courage affects each ally within 10 feet, and grants a +4 morale bonus on saving throws against fear effects.",
                          summary: "Your aura of courage expands to a 20-foot-radius emanation. Allies within the aura are immune to fear effects.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fire Music",
                          featType: "General",
                          prerequisites: "Spellcraft 5 ranks, ability to cast bard spells, ability to cast an arcane fire spell from some other spellcasting class.",
                          benefit: "When you cast a bard spell that deals damage, you may replace the spell’s normal damage with fire damage or split the spell’s damage so that half of it is the normal damage type and half is fire damage. If you cast a summon monster spell as a bard spell, you may choose to give the summoned creature a fiery appearance, which gives it fire resistance 5 and adds +1 fire damage to all of its natural attacks. The creature sheds dim light in a 5-foot radius. This aspect of the feat has no effect if the creature already has the fire subtype. When you use this feat, the affected spell gains the fire descriptor.",
                          summary: "When you cast a bard spell that deals damage, you may replace the spell’s normal damage with fire damage or split the spell’s damage so that half of it is the normal damage type and half is fire…",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Flaring Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "The electricity, fire, or light effects of the affected spell create a flaring that dazzles creatures that take damage from the spell. A flare spell causes a creature that takes fire or electricity damage from the affected spell to become dazzled for a number of rounds equal to the actual level of the spell. A flaring spell only affects spells with a fire, light, or electricity descriptor. A flaring spell uses up a spell slot one level higher than the spell’s actual level.",
                          summary: "The electricity, fire, or light effects of the affected spell create a flaring that dazzles creatures that take damage from the spell.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Focused Eidolon",
                          featType: "General",
                          prerequisites: "Shield ally class feature.",
                          benefit: "While you are adjacent to your eidolon, you receive a +4 bonus on concentration checks.",
                          summary: "While you are adjacent to your eidolon, you receive a +4 bonus on concentration checks.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Gliding Steps",
                          featType: "General",
                          prerequisites: "Dodge, Mobility, Nimble Moves, ki pool.",
                          benefit: "If you have at least one ki in your ki pool, when you move you do not provoke attacks of opportunity when leaving the first square of that movement. You can spend 1 ki point to avoid provoking attacks of opportunity during that entire move.",
                          summary: "If you have at least one ki in your ki pool, when you move you do not provoke attacks of opportunity when leaving the first square of that movement.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Grant Initiative",
                          featType: "General",
                          prerequisites: "Cunning initiative class feature.",
                          benefit: "At the start of each encounter, you can either choose to keep the bonus granted to you by your Wisdom modifier on initiative checks or choose to give that bonus to one of your allies that you can see. You must make this choice before you or the ally you are granting the bonus to makes the initiative check.",
                          summary: "At the start of each encounter, you can either choose to keep the bonus granted to you by your Wisdom modifier on initiative checks or choose to give that bonus to one of your allies that you can…",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Blighted Critical (Critical)",
                          featType: "General",
                          prerequisites: "Blighted Critical, caster level 12th.",
                          benefit: "Whenever you confirm a critical hit with a touch spell, ranged touch spell, or spell-like ability against an opponent, the victim gains a random major spellblight.",
                          special: "You can only apply the effects of one critical feat to a given critical hit unless you possess Critical Mastery.",
                          summary: "Whenever you confirm a critical hit with a touch spell, ranged touch spell, or spell-like ability against an opponent, the victim gains a random major spellblight.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Eldritch Heritage",
                          featType: "General",
                          prerequisites: "Cha 17, Eldritch Heritage, Improved Eldritch Heritage, character level 17th.",
                          benefit: "You gain an additional power from the bloodline you selected with the Eldritch Heritage feat. You gain a 15th-level (or lower) sorcerer bloodline power that you do not already have. For purposes of using that power, treat your character level as your sorcerer level for all your sorcerer bloodline powers granted by this feat, Eldritch Heritage, and Improved Eldritch Heritage.",
                          summary: "You gain an additional power from the bloodline you selected with the Eldritch Heritage feat. You gain a 15th-level (or lower) sorcerer bloodline power that you do not already have.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Mercy",
                          featType: "General",
                          prerequisites: "Cha 13, lay on hands class feature, mercy class feature.",
                          benefit: "When you use your lay on hands ability and the target of that ability does not have any conditions your mercies can remove, it instead heals an additional +1d6 points of damage.",
                          summary: "When you use your lay on hands ability and the target of that ability does not have any conditions your mercies can remove, it instead heals an additional +1d6 points of damage.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Spell Specialization",
                          featType: "General",
                          prerequisites: "Int 13, Spell Focus, Spell Specialization, able to prepare 5th-level spells.",
                          benefit: "By sacrificing a prepared spell of the same or higher level than your specialized spell, you may spontaneously cast your specialized spell. The specialized spell is treated as its normal level, regardless of the spell slot used to cast it. You may add a metamagic feat to the spell by increasing the spell slot and casting time, just like a cleric spontaneously casting a cure or inflict spell with a metamagic feat.",
                          summary: "By sacrificing a prepared spell of the same or higher level than your specialized spell, you may spontaneously cast your specialized spell.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Wild Empathy",
                          featType: "General",
                          prerequisites: "Knowledge (nature) 5 ranks, wild empathy class feature.",
                          benefit: "You gain a +2 insight bonus on wild empathy checks, and you may use wild empathy to duplicate an Intimidate check rather than a Diplomacy check. In addition, choose one of the following kinds of creatures: elementals, fey, lycanthropes, plants, or vermin. You may influence creatures of that type with wild empathy, if their Intelligence score is 1 or 2, or they do not possess an Intelligence score. Once you choose the type of creature, it cannot be changed.",
                          special: "You may select this feat more than once. Each time, you may choose an additional creature type to influence.",
                          summary: "You gain a +2 insight bonus on wild empathy checks, and you may use wild empathy to duplicate an Intimidate check rather than a Diplomacy check.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Implant Bomb",
                          featType: "General",
                          prerequisites: "Heal 5 ranks, delayed bomb alchemist discovery.",
                          benefit: "You may implant a bomb in a willing or helpless creature (a mindless creature under your control, such as a zombie, counts as willing for this purpose). This takes 1 hour and expends 1 use of your bomb ability for the day. When the implanted creature dies or is destroyed, the bomb detonates in the creature’s square as if it were a delayed bomb set by you (though you can set the bomb’s damage to less than your normal bomb damage). You can use any bomb-affecting discoveries on this implanted bomb (acid bomb, frost bomb, smoke bomb, and so on) as normal. The bomb automatically detonates 24 hours after you implant it in the creature. If you expend 150 gp worth of alchemical reagents per die of the bomb’s damage (for example, 750 gp for a 5d6 bomb), the bomb does not automatically detonate after 24 hours, and only detonates if the creature dies or is destroyed (24 hours after implantation, this bomb no longer counts toward your daily total). Implanting a bomb is as invasive as using the Heal skill to treat deadly wounds and leaves surgical scars unless the creature is healed by magic or abilities such as regeneration or fast healing. Some creatures (such as oozes, elementals, and creatures with the incorporeal quality) cannot have bombs implanted in them. Removing an implanted bomb requires a Heal check to treat deadly wounds, followed by a dispel magic spell or Disable Device check to neutralize the bomb (DC = 11 + alchemist’s caster level).",
                          summary: "You may implant a bomb in a willing or helpless creature (a mindless creature under your control, such as a zombie, counts as willing for this purpose).",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Eldritch Heritage",
                          featType: "General",
                          prerequisites: "Cha 15, Eldritch Heritage, character level 11th.",
                          benefit: "You gain either the 3rd-level or the 9th-level power (your choice) of the bloodline you selected with the Eldritch Heritage feat. For purposes of using that power, treat your sorcerer level as equal to your character level – 2, even if you have levels in sorcerer. You do not gain any of the other bloodline abilities.",
                          special: "You may select this feat multiple times. Its effects do not stack. Each time you select the feat, it applies to a different bloodline power for that bloodline available at sorcerer level 3 or 9.",
                          summary: "You gain either the 3rd-level or the 9th-level power (your choice) of the bloodline you selected with the Eldritch Heritage feat.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Monster Lore",
                          featType: "General",
                          prerequisites: "Monster lore class feature.",
                          benefit: "You gain a sacred bonus on all skill checks to identify the abilities and weaknesses of creatures equal to 1/2 your level in classes that grant you the monster lore class feature.",
                          summary: "You gain a sacred bonus on all skill checks to identify the abilities and weaknesses of creatures equal to 1/2 your level in classes that grant you the monster lore class feature.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Insightful Gaze",
                          featType: "General",
                          prerequisites: "Stern gaze class feature, Sense Motive 5 ranks.",
                          benefit: "Whenever you make a Sense Motive check to oppose someone’s Bluff check, you can roll two dice and take the higher result.",
                          summary: "Whenever you make a Sense Motive check to oppose someone’s Bluff check, you can roll two dice and take the higher result.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Intimidating Gaze",
                          featType: "General",
                          prerequisites: "Cha 13+, stern gaze class feature, Intimidate 5 ranks.",
                          benefit: "Once per day, as a free action, when making an Intimidate skill check, you can roll two dice and take the higher result.",
                          summary: "Once per day, as a free action, when making an Intimidate skill check, you can roll two dice and take the higher result.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Judgment Surge",
                          featType: "General",
                          prerequisites: "Judgment class feature.",
                          benefit: "Once per day, you can treat your class level for your judgment class feature as if it were 3 higher than normal. If you have multiple judgments active at the same time, this benefit applies to all of them.",
                          summary: "Once per day, you can treat your class level for your judgment class feature as if it were 3 higher than normal.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ki Stand",
                          featType: "General",
                          prerequisites: "Ki pool.",
                          benefit: "While you have at least 1 ki point in your ki pool, you can stand up as a swift action that provokes attacks of opportunity. You may spend 1 point of your ki pool to stand up as a swift action without provoking attacks of opportunity.",
                          summary: "While you have at least 1 ki point in your ki pool, you can stand up as a swift action that provokes attacks of opportunity.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Life Lure",
                          featType: "General",
                          prerequisites: "Channel positive energy class feature.",
                          benefit: "As a standard action, you can channel positive energy to fascinate all undead within 30 feet for a number of rounds equal to your Charisma modifier (minimum of 1). Undead that succeed at a Will save (DC 10 + 1/2 your cleric level + your Charisma modifier) are unaffected. Channeling energy for this purpose does not heal or harm creatures.",
                          summary: "As a standard action, you can channel positive energy to fascinate all undead within 30 feet for a number of rounds equal to your Charisma modifier (minimum of 1).",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Meta Word Mastery (Words of Power)",
                          featType: "General",
                          prerequisites: "Ability to cast wordspells.",
                          benefit: "You can use meta words three additional times per day. In addition, select one additional meta word and add it to your spellbook, familiar, or list of words known.",
                          summary: "You can use meta words three additional times per day. In addition, select one additional meta word and add it to your spellbook, familiar, or list of words known.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Moonlight Summons",
                          featType: "General",
                          prerequisites: "Spell Focus (conjuration), able to cast summon nature’s ally.",
                          benefit: "Creatures you summon shed light as a light spell. They are immune to confusion and sleep effects, and their natural weapons are treated as silver for the purposes of overcoming damage reduction.",
                          summary: "Creatures you summon shed light as a light spell. They are immune to confusion and sleep effects, and their natural weapons are treated as silver for the purposes of overcoming damage reduction.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Mystic Stride",
                          featType: "General",
                          prerequisites: "Dex 15, Nimble Moves, woodland stride class feature.",
                          benefit: "You can move at full speed even through thorns, briars, and overgrown areas that are enchanted or magically manipulated to impede motion, even if those areas confer the entangled condition.",
                          normal: "Woodland stride does not apply to thorns, briars, and overgrowth areas that are enchanted or magically manipulated.",
                          summary: "You can move at full speed even through thorns, briars, and overgrown areas that are enchanted or magically manipulated to impede motion, even if those areas confer the entangled condition.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Oracular Intuition",
                          featType: "General",
                          prerequisites: "Mystery class feature.",
                          benefit: "You get a +2 bonus on Sense Motive checks and Spellcraft checks. If you have 10 or more ranks in one of these skills, the bonus increases to +4 for that skill.",
                          summary: "You get a +2 bonus on Sense Motive checks and Spellcraft checks. If you have 10 or more ranks in one of these skills, the bonus increases to +4 for that skill.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Painful Anchor",
                          featType: "General",
                          prerequisites: "Anchoring aura class feature.",
                          benefit: "When an evil outsider uses a calling, summoning, or teleportation effect, or any ability that physically transports a creature to or from another plane (such as blink or etherealness) within your anchoring aura, it takes damage equal to 4d8 + your Charisma modifier. This damage comes from holy power and is not subject to damage reduction, energy immunities, or energy resistances.",
                          summary: "When an evil outsider uses a calling, summoning, or teleportation effect, or any ability that physically transports a creature to or from another plane (such as blink or etherealness) within your…",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Piercing Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When you cast a piercing spell against a target with spell resistance, it treats the spell resistance of the target as 5 lower than its actual SR. A piercing spell uses up a spell slot one level higher than the spell’s actual level.",
                          summary: "When you cast a piercing spell against a target with spell resistance, it treats the spell resistance of the target as 5 lower than its actual SR.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Planar Preservationist",
                          featType: "General",
                          prerequisites: "Preservationist alchemist archetype.",
                          benefit: "For every summon nature’s ally extract you know, you learn the equivalent summon monster spell as an extract. If you later learn other summon nature’s ally extracts, you automatically learn the equivalent summon monster spell as an extract.",
                          summary: "For every summon nature’s ally extract you know, you learn the equivalent summon monster spell as an extract.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Powerful Shape",
                          featType: "General",
                          prerequisites: "Wild shape class feature, druid level 8th.",
                          benefit: "When in wild shape, treat your size as one category larger for the purpose of calculating CMB, CMD, carrying capacity, and any size-based special attacks you use or that are used against you (such as grab, swallow whole, and trample).",
                          summary: "When in wild shape, treat your size as one category larger for the purpose of calculating CMB, CMD, carrying capacity, and any size-based special attacks you use or that are used against you (such as…",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Prodigy",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Choose two Craft, Perform, or Profession skills in any combination (two Craft skills, a Craft skill and a Perform skill, and so on). You receive a +2 bonus on checks with these skills. If you have 10 or more ranks in any one of these skills, the bonus increases to +4 for that skill.",
                          special: "You can gain this feat multiple times. Its effects do not stack. Each time you take the feat, it applies to two new skills.",
                          summary: "Choose two Craft, Perform, or Profession skills in any combination (two Craft skills, a Craft skill and a Perform skill, and so on). You receive a +2 bonus on checks with these skills.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Prophetic Visionary",
                          featType: "General",
                          prerequisites: "Mystery class feature.",
                          benefit: "Once per day, you can enter a deep trance to receive a vision of the future. The trance lasts for 10 minutes, during which time you can take no other actions. If you are interrupted, you must begin again. When you come out of the trance, you know whether a particular action in the immediate future will bring good or bad results, as an augury spell with a 70% chance of success.",
                          summary: "Once per day, you can enter a deep trance to receive a vision of the future. The trance lasts for 10 minutes, during which time you can take no other actions.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Pure Faith",
                          featType: "General",
                          prerequisites: "Divine health class feature.",
                          benefit: "You gain a +4 sacred bonus to saving throws against poison.",
                          summary: "You gain a +4 sacred bonus to saving throws against poison.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Quarterstaff Master (Combat)",
                          featType: "General",
                          prerequisites: "Weapon Focus (quarterstaff), base attack bonus +5.",
                          benefit: "By employing a number of different stances and techniques, you can wield a quarterstaff as a one-handed weapon. At the start of your turn, you decide whether or not you are going to wield the quarterstaff as a one-handed or two-handed weapon. When you wield it as a one-handed weapon, your other hand is free, and you cannot use the staff as a double weapon. You can take the feat Weapon Specialization in the quarterstaff even if you have no levels in fighter.",
                          summary: "By employing a number of different stances and techniques, you can wield a quarterstaff as a one-handed weapon.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Quick Channel",
                          featType: "General",
                          prerequisites: "Knowledge (religion) 5 ranks, channel energy class feature.",
                          benefit: "You may channel energy as a move action by spending 2 daily uses of that ability.",
                          summary: "You may channel energy as a move action by spending 2 daily uses of that ability.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Quick Wild Shape",
                          featType: "General",
                          prerequisites: "Wild shape class feature, caster level 8th.",
                          benefit: "You can wild shape as a move action or a swift action. However, you are limited to forms available to a druid two levels lower when changing form as a move action, or four levels lower as a swift action.",
                          summary: "You can wild shape as a move action or a swift action. However, you are limited to forms available to a druid two levels lower when changing form as a move action, or four levels lower as a swift…",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Radiant Charge",
                          featType: "General",
                          prerequisites: "Lay on hands class feature.",
                          benefit: "When you hit with a charge attack, you can expend all of your remaining uses of lay on hands to deal extra damage equal to 1d6 per use of lay on hands expended + your Charisma bonus. This damage comes from holy power and is not subject to damage reduction, energy immunities, or energy resistances.",
                          summary: "When you hit with a charge attack, you can expend all of your remaining uses of lay on hands to deal extra damage equal to 1d6 per use of lay on hands expended + your Charisma bonus.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Remote Bomb",
                          featType: "General",
                          prerequisites: "Delayed bomb discovery.",
                          benefit: "The maximum delay for your delayed bombs increases to a number of minutes equal to your level. If you have line of effect to your delayed bomb, you may detonate it earlier than its preset time by making a DC 20 Intelligence check; the DC increases by +1 for every 10 feet of distance between you and the bomb.",
                          summary: "The maximum delay for your delayed bombs increases to a number of minutes equal to your level.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Resilient Eidolon",
                          featType: "General",
                          prerequisites: "Eidolon class feature.",
                          benefit: "If you are knocked unconscious, fall asleep, or are killed, your eidolon remains for a number of rounds equal to your summoner level before it is banished. If you are brought back to consciousness before this duration expires, your eidolon is not banished. If the duration expires before you are brought back to consciousness, your eidolon is banished normally.",
                          normal: "An eidolon is immediately banished when its summoner is unconscious, asleep, or killed.",
                          summary: "If you are knocked unconscious, fall asleep, or are killed, your eidolon remains for a number of rounds equal to your summoner level before it is banished.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Reward of Grace",
                          featType: "General",
                          prerequisites: "Lay on hands class feature.",
                          benefit: "Each time you use your lay on hands ability, you gain a +1 sacred bonus on all attack rolls for 1 round.",
                          summary: "Each time you use your lay on hands ability, you gain a +1 sacred bonus on all attack rolls for 1 round.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Reward of Life",
                          featType: "General",
                          prerequisites: "Lay on hands class feature.",
                          benefit: "Each time you use your lay on hands ability to heal a creature other than yourself, you heal a number of hit points equal to your Charisma bonus. This ability has no effect if you use lay on hands to harm undead.",
                          summary: "Each time you use your lay on hands ability to heal a creature other than yourself, you heal a number of hit points equal to your Charisma bonus.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ricochet Splash Weapon",
                          featType: "General",
                          prerequisites: "Dex 13, Throw Anything.",
                          benefit: "Whenever your splash weapon misses and the misdirection roll indicates it lands in a square occupied by a creature, you may make an attack roll (at a –5 penalty) as if you had thrown the splash weapon at that creature. If this attack roll succeeds, the splash weapon hits and the creature takes full damage instead of splash damage. Squares adjacent to this creature still take splash damage as normal.",
                          normal: "A thrown splash weapon that misses deals splash damage in the square where it lands and in adjacent squares.",
                          summary: "Whenever your splash weapon misses and the misdirection roll indicates it lands in a square occupied by a creature, you may make an attack roll (at a –5 penalty) as if you had thrown the splash…",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Rime Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "The frost of your cold spell clings to the target, impeding it for a short time. A rime spell causes creatures that takes cold damage from the spell to become entangled for a number of rounds equal to the original level of the spell. This feat only affects spells with the cold descriptor. A rime spell uses up a spell slot one level higher than the spell’s actual level.",
                          summary: "The frost of your cold spell clings to the target, impeding it for a short time.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sacred Summons",
                          featType: "General",
                          prerequisites: "Aura class feature, ability to cast summon monster.",
                          benefit: "When using summon monster to summon creatures whose alignment subtype or subtypes exactly match your aura, you may cast the spell as a standard action instead of with a casting time of 1 round.",
                          summary: "When using summon monster to summon creatures whose alignment subtype or subtypes exactly match your aura, you may cast the spell as a standard action instead of with a casting time of 1 round.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sense Link",
                          featType: "General",
                          prerequisites: "Bond senses class feature.",
                          benefit: "When sharing the senses of your eidolon, you gain a +4 competence bonus on Perception checks for the duration of your bond senses ability.",
                          summary: "When sharing the senses of your eidolon, you gain a +4 competence bonus on Perception checks for the duration of your bond senses ability.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shaping Focus",
                          featType: "General",
                          prerequisites: "Wild shape class feature, Knowledge (nature) 5 ranks.",
                          benefit: "If you are a multiclassed druid, your wild shape ability is calculated as though your druid level were four higher, to a maximum level equal to your character level.",
                          special: "This feat has no effect if you are not a multiclassed druid.",
                          summary: "If you are a multiclassed druid, your wild shape ability is calculated as though your druid level were four higher, to a maximum level equal to your character level.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sin Seer",
                          featType: "General",
                          prerequisites: "Detect undead paladin class feature.",
                          benefit: "You gain the detect evil class feature. You may use it or the detect undead class feature, but not at the same time.",
                          summary: "You gain the detect evil class feature. You may use it or the detect undead class feature, but not at the same time.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Skeleton Summoner",
                          featType: "General",
                          prerequisites: "Spell Focus (necromancy), ability to cast summon monster.",
                          benefit: "Add “human skeleton” to the list of creatures you can summon with summon monster I and “human skeletal champion” to the list of creatures you can summon with summon monster III. Once per day, when you cast summon monster, you may summon a skeletal version of one of the creatures on that spell’s summoning list (apply the skeleton template to that creature to create this monster).",
                          summary: "Add “human skeleton” to the list of creatures you can summon with summon monster I and “human skeletal champion” to the list of creatures you can summon with summon monster III.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sorcerous Bloodstrike",
                          featType: "General",
                          prerequisites: "Cha 13, sorcerer bloodline class feature.",
                          benefit: "Once per day, as an immediate action upon reducing a creature to 0 or fewer hit points with one of your sorcerer spells, you can regain one usage of a sorcerer bloodline power that has a limited number of uses per day. The slain creature must have at least half as many Hit Dice as your sorcerer level. You cannot use this feat to gain another usage of a bloodline power that you have not yet used today.",
                          summary: "Once per day, as an immediate action upon reducing a creature to 0 or fewer hit points with one of your sorcerer spells, you can regain one usage of a sorcerer bloodline power that has a limited…",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spell Bluff (UM)",
                          featType: "General",
                          prerequisites: "Bluff 5 ranks, Spellcraft 5 ranks.",
                          benefit: "If another spellcaster tries to counterspell your casting, she adds +4 to her Spellcraft DC when trying to determine your spell. Because you have studied how to mask the recognizable elements of your spellcasting, you gain a +2 bonus on your Spellcraft checks to identify and counter an opponent’s spell if it is a spell you know or have in your spellbook.",
                          summary: "If another spellcaster tries to counterspell your casting, she adds +4 to her Spellcraft DC when trying to determine your spell.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spell Hex",
                          featType: "General",
                          prerequisites: "Major hex class feature.",
                          benefit: "Select one 1st-level spell in the class that grants you the major hex class feature. You can learn that spell as a hex, and can use that hex three times per day. This is a spell-like ability. You use your class level in the major-hex-granting class as your caster level for the spell hex. The spell hex uses your hex DC instead of its original spell DC. If the spell is a touch spell and you miss the creature, you cannot target the creature with that spell hex again for 24 hours. If the spell allows a saving throw to negate or take a partial effect from the spell, and the target succeeds at that saving throw, it cannot be affected by the spell hex for 24 hours, even if it is in the area of the spell hex.",
                          summary: "Select one 1st-level spell in the class that grants you the major hex class feature. You can learn that spell as a hex, and can use that hex three times per day. This is a spell-like ability.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spell Specialization",
                          featType: "General",
                          prerequisites: "Int 13, Spell Focus.",
                          benefit: "Select one spell of a school for which you have taken the Spell Focus feat. Treat your caster level as being two higher for all level-variable effects of the spell. Every time you gain an even level in the spellcasting class you chose your spell from, you can choose a new spell to replace the spell selected with this feat, and that spell becomes your specialized spell.",
                          special: "You can gain this feat multiple times. Its effects do not stack. Each time you take the feat, it applies to a different spell.",
                          summary: "Select one spell of a school for which you have taken the Spell Focus feat. Treat your caster level as being two higher for all level-variable effects of the spell.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spellsong",
                          featType: "General",
                          prerequisites: "Cha 13, bardic performance class ability, able to cast 1st-level spells.",
                          benefit: "You can combine your bardic performance and your spellcasting in two ways. First, you can conceal the activity of casting a bard spell by masking it in a performance. As a swift action, you may combine your casting time of a spell with a Perform check. Observers must make a Perception or Sense Motive check opposed by your Perform check to realize you are also casting a spell. This uses 1 round of your bardic performance ability, regardless of the spell’s casting time. Second, as a move action, you can use 1 round of bardic performance to maintain a bard spell with a duration of concentration. You can cast another spell in the same round you are using bardic magic to maintain concentration; if you do this, your concentration on the maintained spell ends when you end the bardic performance the spell is part of.",
                          summary: "You can combine your bardic performance and your spellcasting in two ways. First, you can conceal the activity of casting a bard spell by masking it in a performance.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Split Hex",
                          featType: "General",
                          prerequisites: "Witch level 10th.",
                          benefit: "When you use one of your hexes (not a major hex or a grand hex) that targets a single creature, you can choose another creature within 30 feet of the first target to also be targeted by the hex.",
                          summary: "When you use one of your hexes (not a major hex or a grand hex) that targets a single creature, you can choose another creature within 30 feet of the first target to also be targeted by the hex.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Split Major Hex",
                          featType: "General",
                          prerequisites: "Split hex, caster level 18th.",
                          benefit: "When you use one of your major hexes (not a grand hex) that targets a creature, you can choose another creature within 30 feet of the first target to also be targeted by the major hex.",
                          summary: "When you use one of your major hexes (not a grand hex) that targets a creature, you can choose another creature within 30 feet of the first target to also be targeted by the major hex.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spontaneous Metafocus",
                          featType: "General",
                          prerequisites: "Cha 13, one metamagic feat, able to spontaneously cast spells.",
                          benefit: "Pick a single spell that you are able to cast spontaneously. When you apply metamagic feats to that spell, you can cast the spell using the normal casting time instead of at the slower casting time.",
                          special: "You can take this feat multiple times. Each time you select this feat, choose a new spell that you can cast spontaneously; the feat applies to that spell.",
                          summary: "Pick a single spell that you are able to cast spontaneously. When you apply metamagic feats to that spell, you can cast the spell using the normal casting time instead of at the slower casting time.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Starlight Summons",
                          featType: "General",
                          prerequisites: "Spell Focus (conjuration), able to cast summon nature’s ally.",
                          benefit: "Creatures you summon gain the Blind-Fight feat, a +5 bonus to Perception and Stealth checks in dim light or darkness, and their natural weapons are treated as cold iron for overcoming damage reduction.",
                          summary: "Creatures you summon gain the Blind-Fight feat, a +5 bonus to Perception and Stealth checks in dim light or darkness, and their natural weapons are treated as cold iron for overcoming damage…",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sunlight Summons",
                          featType: "General",
                          prerequisites: "Spell Focus (conjuration), able to cast summon nature’s ally.",
                          benefit: "Creatures that you summon shed light as a light spell. They are immune to blinding or dazzling effects, and their natural weapons are treated as magical for overcoming damage reduction.",
                          summary: "Creatures that you summon shed light as a light spell. They are immune to blinding or dazzling effects, and their natural weapons are treated as magical for overcoming damage reduction.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Superior Summoning",
                          featType: "General",
                          prerequisites: "Augment Summoning, caster level 3rd.",
                          benefit: "Each time you cast a summoning spell that conjures more than one creature, add one to the total number of creatures summoned.",
                          summary: "Each time you cast a summoning spell that conjures more than one creature, add one to the total number of creatures summoned.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Theurgy",
                          featType: "General",
                          prerequisites: "Wis 13, Int or Cha 13, able to cast 1st-level arcane spells, able to cast 1st-level divine spells.",
                          benefit: "You can augment the power of your divine spells with arcane energy and augment your arcane spells with divine energy. When casting a divine spell, you may sacrifice an arcane spell slot or arcane prepared spell of that spell’s level or higher as a swift action. The caster level for that divine spell increases by +1. When casting an arcane spell, you may sacrifice a divine spell slot or prepared divine spell of the same or higher level as a swift action. Half the damage dealt by the arcane spell becomes holy (if you channel positive energy) or unholy (if you channel negative energy).",
                          summary: "You can augment the power of your divine spells with arcane energy and augment your arcane spells with divine energy.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Thoughtful Discernment",
                          featType: "General",
                          prerequisites: "Discern lies class feature.",
                          benefit: "Once per day as a free action, you can think back about a single statement you heard in the last day and determine if it was a lie. This acts like the discern lies spell, but instead of affecting a creature, it affects a single statement a creature has made. For example, if the king told you, “My daughter is in the monster’s dungeon” before you left to find her, as long as the king said that to you within the past day, you can use this feat to determine whether or not the king deliberately and knowingly lied to you when he made that statement.",
                          summary: "Once per day as a free action, you can think back about a single statement you heard in the last day and determine if it was a lie.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Toppling Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "The impact of your force spell is strong enough to knock the target prone. If the target takes damage, fails its saving throw, or is moved by your force spell, make a trip check against the target, using your caster level plus your casting ability score bonus (Wisdom for clerics, Intelligence for wizards, and so on). This does not provoke an attack of opportunity. If the check fails, the target cannot attempt to trip you or the force effect in response. A toppling spell only affects spells with the force descriptor. A toppling spell uses up a spell slot one level higher than the spell’s actual level.",
                          summary: "The impact of your force spell is strong enough to knock the target prone.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tripping Staff (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Improved Trip, Weapon Focus (quarterstaff), base attack bonus +6.",
                          benefit: "You treat quarterstaves as if they had the trip special feature.",
                          special: "If you are a magus with the staff magus archetype, you can use spellstrike on any trip combat maneuver you make with the staff.",
                          summary: "You treat quarterstaves as if they had the trip special feature.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tripping Twirl (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Improved Trip, Tripping Staff, Weapon Focus (quarterstaff), Weapon Specialization (quarterstaff), base attack bonus +12.",
                          benefit: "As a full-round action, while wielding a quarterstaff two-handed, you can attempt a trip combat maneuver against each enemy adjacent to you.",
                          special: "If you are a magus with the staff magus archetype, you can use spellstrike on any one trip combat maneuver you make with the staff.",
                          summary: "As a full-round action, while wielding a quarterstaff two-handed, you can attempt a trip combat maneuver against each enemy adjacent to you.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ultimate Mercy",
                          featType: "General",
                          prerequisites: "Cha 19, Greater Mercy, lay on hands, mercy class feature.",
                          benefit: "You can expend 10 uses of lay on hands to bring a single dead creature you touch back to life as a raise dead spell with a caster level equal to your paladin level. You must provide the material component for raise dead or choose to accept 1 temporary negative level; this level automatically goes away after 24 hours, never becomes a permanent negative level, and cannot be overcome in any way except by waiting for the duration to expire.",
                          summary: "You can expend 10 uses of lay on hands to bring a single dead creature you touch back to life as a raise dead spell with a caster level equal to your paladin level.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ultimate Resolve",
                          featType: "General",
                          prerequisites: "Aura of resolve class feature.",
                          benefit: "Your aura of resolve is a 20-foot emanation, and does not end if you fall unconscious.",
                          normal: "The aura of resolve affects each ally within 10 feet, and ends when you fall unconscious.",
                          summary: "Your aura of resolve is a 20-foot emanation, and does not end if you fall unconscious.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Uncanny Alertness",
                          featType: "General",
                          prerequisites: "Alertness.",
                          benefit: "This feat gives you an additional +1 bonus on Perception and Sense Motive checks, and you gain a +2 bonus on saving throws against sleep and charm effects.",
                          summary: "This feat gives you an additional +1 bonus on Perception and Sense Motive checks, and you gain a +2 bonus on saving throws against sleep and charm effects.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Uncanny Concentration",
                          featType: "General",
                          prerequisites: "Combat Casting.",
                          benefit: "You do not need to make concentration checks when affected by vigorous or violent motion or by violent weather. You gain a +2 bonus on all other concentration checks.",
                          summary: "You do not need to make concentration checks when affected by vigorous or violent motion or by violent weather. You gain a +2 bonus on all other concentration checks.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Undead Master",
                          featType: "General",
                          prerequisites: "Spell focus (necromancy), the ability to cast animate dead or command undead.",
                          benefit: "When you cast animate dead or use the Command Undead feat, you are considered to be four levels higher when determining the number of Hit Dice you animate. When you cast command undead, your duration is doubled.",
                          summary: "When you cast animate dead or use the Command Undead feat, you are considered to be four levels higher when determining the number of Hit Dice you animate.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Unsanctioned Detection",
                          featType: "General",
                          prerequisites: "Detect evil class feature.",
                          benefit: "As a swift action, you can focus the clarity granted by your detect evil ability to heighten your awareness of other things. This gives you a +10 sacred bonus on Perception and Sense Motive checks for one round. This expends your use of the detect evil class ability for the next 24 hours.",
                          summary: "As a swift action, you can focus the clarity granted by your detect evil ability to heighten your awareness of other things.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Unsanctioned Knowledge",
                          featType: "General",
                          prerequisites: "Int 13, ability to cast 1st-level paladin spells.",
                          benefit: "Pick one 1st-level spell, one 2nd-level spell, one 3rd-level spell, and one 4th-level spell from the bard, cleric, inquisitor, or oracle spell lists. Add these spells to your paladin spell list as paladin spells of the appropriate level. Once chosen, these spells cannot be changed.",
                          summary: "Pick one 1st-level spell, one 2nd-level spell, one 3rd-level spell, and one 4th-level spell from the bard, cleric, inquisitor, or oracle spell lists.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Versatile Channeler",
                          featType: "General",
                          prerequisites: "Channel energy class feature, necromancer or neutrally aligned cleric (see below).",
                          benefit: "You may make a choice whenever you use your channel energy class feature. If you normally channel positive energy, you may choose to channel negative energy as if your effective cleric level were 2 levels lower than normal. If you normally channel negative energy, you may choose to channel positive energy as if your effective cleric level were 2 levels lower than normal. Having this feat means you qualify for feats and abilities that have “channel positive energy” or “channel negative energy” as a prerequisite (for example, you qualify for the Command Undead feat and the Turn Undead feat).",
                          summary: "You may make a choice whenever you use your channel energy class feature.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Vigilant Eidolon",
                          featType: "General",
                          prerequisites: "Eidolon class feature.",
                          benefit: "While your eidolon is within your reach, you gain a +4 bonus on Perception checks. If you have 10 or more ranks in Perception, this bonus increases to +8. This does not apply if your eidolon is helpless or unconscious.",
                          summary: "While your eidolon is within your reach, you gain a +4 bonus on Perception checks. If you have 10 or more ranks in Perception, this bonus increases to +8.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Voice of the Sibyl",
                          featType: "General",
                          prerequisites: "Cha 15.",
                          benefit: "You get a +1 bonus on all Bluff, Diplomacy, and Perform (oratory) skill checks. If you have 10 or more ranks in one of these skills, the bonus increases to +3 for that skill. You do not get these bonuses if you do not use your voice when using the skill (such as using Bluff to feint in combat).",
                          summary: "You get a +1 bonus on all Bluff, Diplomacy, and Perform (oratory) skill checks. If you have 10 or more ranks in one of these skills, the bonus increases to +3 for that skill.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Warrior Priest",
                          featType: "General",
                          prerequisites: "Ability to cast divine spells, domain or mystery class feature.",
                          benefit: "You gain a +1 bonus on initiative checks and a +2 bonus on concentration checks made to cast a spell or use a spell-like ability when casting defensively or while grappled.",
                          summary: "You gain a +1 bonus on initiative checks and a +2 bonus on concentration checks made to cast a spell or use a spell-like ability when casting defensively or while grappled.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Wild Speech",
                          featType: "General",
                          prerequisites: "Druid level 6th, wild shape class feature.",
                          benefit: "When using wild shape to take the form in which you cannot speak (such as an animal), you are able to speak normally in any language you know. This allows you to cast spells with verbal components, speak command words, and activate spell completion and spell trigger items. However, it does not give you the ability to cast spells requiring somatic components unless you also have the Natural Spell feat, or cast spells with material components merged into your form. When using wild shape to take the form of an animal, you may use speak with animals to communicate with animals of your assumed form. This is a spell-like ability with a caster level equal to your druid level, and you may use it for a number of minutes per day equal to your druid level. These minutes do not have to be consecutive, but must be used in one-minute increments.",
                          summary: "When using wild shape to take the form in which you cannot speak (such as an animal), you are able to speak normally in any language you know.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Witch Knife",
                          featType: "General",
                          prerequisites: "Witch class.",
                          benefit: "Each day, when you prepare your spells, you can select a masterwork or magical dagger, transforming it into a witch knife, which serves as an additional focus component for witch patron spells. Add +1 to the DC of all your patron spells.",
                          summary: "Each day, when you prepare your spells, you can select a masterwork or magical dagger, transforming it into a witch knife, which serves as an additional focus component for witch patron spells.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Word of Healing",
                          featType: "General",
                          prerequisites: "Lay on hands class feature.",
                          benefit: "You may use your lay on hands to heal another creature at a range of 30 feet as a standard action that does not provoke an attack of opportunity. You must be able to speak and have a free hand to use this ability. The target heals half the amount they would have healed if you had touched them, but gains the benefits of your mercies as normal.",
                          summary: "You may use your lay on hands to heal another creature at a range of 30 feet as a standard action that does not provoke an attack of opportunity.",
                          source: "Ultimate Magic", isPremium: true),

                    // // MARK: - Ultimate Wilderness
        )
        try await db.insertFeat(
        .make("Advanced Gathlain Magic",
                          featType: "General",
                          prerequisites: "Cha 13, character level 3rd, gathlain.",
                          benefit: "You gain the following spells as spell-like abilities, each of which are usable 1/day: wood meld (as meld with stone, but only with wood), wood shape.",
                          summary: "You gain the following spells as spell-like abilities, each of which are usable 1/day: wood meld (as meld with stone, but only with wood), wood shape.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Animal Call",
                          featType: "General",
                          prerequisites: "Bluff 1 rank, Knowledge (nature) 1 rank.",
                          benefit: "Pick one of the ranger’s favored terrains. You can use your Bluff skill to mimic the calls of animals native to that terrain. Creatures with ranks in Knowledge (nature) can use that skill in place of Sense Motive to detect your mimicry and realize that the sound is false.",
                          special: "You can take this feat multiple times. Each time you do, select an additional favored terrain to which this feat applies.",
                          summary: "Pick one of the ranger’s favored terrains. You can use your Bluff skill to mimic the calls of animals native to that terrain.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Animal Disguise",
                          featType: "General",
                          prerequisites: "Disguise 6 ranks, Knowledge (nature) 6 ranks.",
                          benefit: "You can use Disguise to disguise yourself as an animal of your size category. You must have an appropriate pelt and any other animal parts needed to complete the disguise. You also gain a +2 bonus on Disguise checks when you disguise yourself as an animal. Creatures with ranks in Knowledge (nature) can use that skill in place of Sense Motive to detect this type of disguise.",
                          summary: "You can use Disguise to disguise yourself as an animal of your size category. You must have an appropriate pelt and any other animal parts needed to complete the disguise.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Animal Ferocity (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +3, ferocity racial ability.",
                          benefit: "When your hit points are reduced below 0, you can make attacks, but you take a –5 penalty on each attack roll.",
                          summary: "When your hit points are reduced below 0, you can make attacks, but you take a –5 penalty on each attack roll.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Arctic Adaptation",
                          featType: "General",
                          prerequisites: "Favored terrain (cold) class feature.",
                          benefit: "You treat cold environments (Core Rulebook 442) as though they were one step less severe than they normally are. Additionally, you gain a +2 bonus on Perception checks against creatures that gain a racial bonus on Stealth checks in snowy conditions, and you gain a +4 bonus on saving throws and checks to avoid becoming blinded or dazzled by ice or snow glare.",
                          summary: "You treat cold environments (Core Rulebook 442) as though they were one step less severe than they normally are.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Beast Hunter (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1; Knowledge (nature) or Survival 1 rank.",
                          benefit: "Pick one of the ranger’s favored terrains. You gain a +2 bonus on Survival checks to track animals native to that terrain. Additionally, against animals native to that terrain that are at least one size category larger than you, you gain a +1 dodge bonus to your AC and a +1 insight bonus on attack rolls.",
                          special: "You can take this feat multiple times. Each time you select this feat, you can choose an additional favored terrain to gain the listed benefits in.",
                          summary: "Pick one of the ranger’s favored terrains. You gain a +2 bonus on Survival checks to track animals native to that terrain.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Beastmaster Ire (Combat)",
                          featType: "General",
                          prerequisites: "Cha 13, Alertness, Beastmaster Salvation, Beastmaster Style, Handle Animal 9 ranks, Sense Motive 5 ranks.",
                          benefit: "When you activate Beastmaster Style’s benefit, you gain a +2 morale bonus on melee weapon attack rolls and +4 morale bonus on weapon damage rolls against the attacking creature. If the enemy attack dealt damage to your animal companion, these bonuses increase to +4 and +8, respectively. These bonuses last until the end of your next turn.",
                          summary: "When you activate Beastmaster Style’s benefit, you gain a +2 morale bonus on melee weapon attack rolls and +4 morale bonus on weapon damage rolls against the attacking creature.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Beastmaster Salvation (Combat)",
                          featType: "General",
                          prerequisites: "Cha 13, Alertness, Beastmaster Style, Handle Animal 5 ranks, Sense Motive 5 ranks.",
                          benefit: "If you are adjacent to your animal companion when it attempts a saving throw, you can attempt a Handle Animal check as an immediate action. Your animal companion does not attempt the saving throw, but instead uses your Handle Animal result as its result for the save.",
                          summary: "If you are adjacent to your animal companion when it attempts a saving throw, you can attempt a Handle Animal check as an immediate action.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Beastmaster Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Cha 13, Handle Animal 1 rank, must have an animal companion.",
                          benefit: "When you are adjacent to your animal companion and an attack is made against it, if you are also adjacent to the attacking creature, you can attempt a Handle Animal check as an immediate action to negate the hit. The hit is negated if your Handle Animal check result is greater than the attacker’s attack roll.",
                          special: "You cannot use this style if you are mounted on your animal companion.",
                          summary: "When you are adjacent to your animal companion and an attack is made against it, if you are also adjacent to the attacking creature, you can attempt a Handle Animal check as an immediate action to…",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Bristling Bull Rush (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Improved Bull Rush, Power Attack, base attack bonus +3.",
                          benefit: "When you successfully bull rush a creature, it takes 1d4 points of damage for every 5 feet it is pushed through naturally occurring difficult terrain. This damage is in addition to any damage the creature might normally take from moving through the difficult terrain. Creatures with the woodland stride special ability or who are otherwise unaffected by difficult terrain are immune to this extra damage.",
                          summary: "When you successfully bull rush a creature, it takes 1d4 points of damage for every 5 feet it is pushed through naturally occurring difficult terrain.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Bristling Drag (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Improved Drag, Power Attack, base attack bonus +3.",
                          benefit: "When you successfully drag a creature, it takes 1d4 points of damage for every 5 feet it is dragged through naturally occurring difficult terrain. This damage is in addition to any damage the creature might normally take from moving through the difficult terrain. Creatures with the woodland stride special ability or who are otherwise unaffected by difficult terrain are immune to this extra damage.",
                          summary: "When you successfully drag a creature, it takes 1d4 points of damage for every 5 feet it is dragged through naturally occurring difficult terrain.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Camouflaged Trap",
                          featType: "General",
                          prerequisites: "Craft (traps) 4 ranks, Survival 4 ranks.",
                          benefit: "When you craft and set a trap in a wilderness environment, you increase the DC of the Perception check required to find it by 5.",
                          summary: "When you craft and set a trap in a wilderness environment, you increase the DC of the Perception check required to find it by 5.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Climbing Vine",
                          featType: "General",
                          prerequisites: "Str 13, vine leshy.",
                          benefit: "You gain a climb speed of 10 feet. If you already have a natural climb speed, your climb speed increases by 10 feet. You can take this feat multiple times, but your climb speed can never exceed your base speed.",
                          summary: "You gain a climb speed of 10 feet. If you already have a natural climb speed, your climb speed increases by 10 feet.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Command Animals",
                          featType: "General",
                          prerequisites: "Animal domain, channel energy class feature.",
                          benefit: "As a standard action, you can use one of your daily uses of channel energy in an attempt to control animals within 30 feet. Animals can attempt a Will save (DC = 10 + half your class level + your Charisma modifier) to negate the effect. Animals that fail their saves fall under your control, obeying your commands to the best of their ability as if under the effects of a charm monster spell with a caster level equal to your class level. An affected animal can attempt a new saving throw each day to escape this effect. You can control any number of animals, so long as their total Hit Dice do not exceed your class level. If you use channel energy in this way, it has no other effect (it does not heal or harm nearby creatures). If an affected animal is controlled by or a companion of another creature, you must attempt an opposed Charisma check whenever your orders conflict.",
                          summary: "As a standard action, you can use one of your daily uses of channel energy in an attempt to control animals within 30 feet.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Command Plants",
                          featType: "General",
                          prerequisites: "Channel energy class feature, Plant domain.",
                          benefit: "As a standard action, you can use one of your daily uses of channel energy to command plants within 30 feet of you. Plants can attempt a Will save (DC = 10 + half your class level + your Charisma modifier) to negate the effect. This functions as the command plant spell with a caster level equal to your class level. Each affected plant can attempt a new saving throw each day to escape this effect. You can control any number of plants, so long as their total Hit Dice do not exceed your class level. If you use channel energy in this way, it has no other effect (it does not heal or harm nearby creatures). If an affected plant creature is controlled by or a companion of another creature, you must attempt an opposed Charisma check whenever your orders conflict.",
                          summary: "As a standard action, you can use one of your daily uses of channel energy to command plants within 30 feet of you.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await seedFeatsK()
    }
}
