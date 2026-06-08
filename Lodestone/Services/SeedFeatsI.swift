import Foundation

extension SeedDataBuilder {
    func seedFeatsI() async throws {
        try await db.insertFeat(
        .make("Vampiric Animal Companion",
                          featType: "General",
                          prerequisites: "Vampire, Charisma 18, animal companion class ability, sufficiently high level (see below).",
                          benefit: "Vampire, Charisma 18, animal companion class ability, sufficiently high level (see below). Benefit: A vampire with this feat can elect to use its create spawn ability on an animal summoned using the child of the night ability (such as a dire bat, dire rat, or wolf ) to create a vampiric animal companion. This decision must be made as a free action as the vampire slays the animal with its blood drain or energy drain ability. The animal rises from death in 1d4 days as a vampiric animal bonded with the vampire who spawned it. Thereafter, the vampiric animal advances in abilities like a normal animal companion as the vampire gains further class levels in the class that granted the animal companion. In order to gain a dire rat as a vampiric companion, a vampire's effective druid level must be 4th. To gain a wolf as an vampiric companion, the vampire's effective druid level must be 6th. To gain a dire bat vampiric companion, the vampire's effective druid level must be 9th. At your option, additional animals could be added to this list—use these examples as guides to set minimum levels. Vampiric animal companions count toward the total number of Hit Dice a vampire may enslave, as well as toward the limit of animal companions the character may have at any one time. Any vampiric animal companion the vampire creates that would exceed such limits becomes a free-willed undead. A vampire may also free a vampiric companion in order to enslave a new one, but once freed, the vampiric animal cannot be enslaved again. A vampiric animal's statistics are identical to those of the original animal, save for the following changes. Its type changes to undead with the augmented animal subtype. It gains a +4 natural armor bonus. It gains the blood drain vampire special attack. It gains an energy drain attack (1 level, DC equal to 10 + 1/2 the animal companion's racial HD + the animal companion's Charisma modifier). It gains the dominate vampire special attack with respect to animals of its type. It gains channel resistance +2, DR 5/silver, resist cold and electricity 10, fast healing 2, and the vampire qualities of gaseous form and shadowless. It gains all of the standard vampire weaknesses. It gains Str +2, Dex +2, and Cha +4. It does not gain the vampire's children of the night or create spawn abilities.",
                          summary: "Vampire, Charisma 18, animal companion class ability, sufficiently high level (see below).",
                          source: "Rival Guide", isPremium: true),

                    // // MARK: - Rival Guide, Osirion, Land of the Pharaohs
        )
        try await db.insertFeat(
        .make("Serpent Lash (Combat)",
                          featType: "General",
                          prerequisites: "Weapon Finesse, proficient in whip.",
                          benefit: "As a standard action, you can make a disarm or trip maneuver with your whip. If it succeeds, you can make an additional disarm or trip maneuver with the same bonus against a target adjacent to the first and also within your whip’s reach.In addition, you can use your whip to perform reposition maneuvers, though you take a –4 penalty on your CMB and you may only move the target toward you from its original position.This feat originally appeared in Pathfinder Campaign Setting: Osirion, Land of the Pharaohs.",
                          summary: "As a standard action, you can make a disarm or trip maneuver with your whip.",
                          source: "Rival Guide, Osirion, Land of the Pharaohs", isPremium: true),

                    // // MARK: - Spymaster's Handbook
        )
        try await db.insertFeat(
        .make("Ascendant (Story)",
                          featType: "General",
                          prerequisites: "You must have the Secret Shame drawback (page 7) or the Bastard-Born backgroundUCA, and you must also have no publicly known faults or made any indisputable mistakes that could humiliate or cast down a figure of high station .",
                          benefit: "You and your apparent allies gain a +2 bonus on skill checks to gain influence (Ultimate Intrigue 102) or request a favor. This bonus no longer applies on checks against a person or organization once you fail a skill check to gain influence over or request a favor from that person or organization. Additionally, the DC of Sense Motive checks to get hunches about you and your apparent allies increases by 2. Goal: Achieve a position in a high social class (such as the nobility) or an esteemed military position (such as general) without any substantiated rumors impugning your reputation. If your secret is exposed, you can replace this feat with RedemptionUCA after 1 month without meeting that feat’s prerequisite. Completion Benefit: You no longer lose this feat’s bonus for failing a skill check. Your Bluff checks to maintain a good reputation are always at worst unlikely (if not believable), and Bluff checks attempted by others to spoil your reputation are always at best unlikely (if not harder to believe).",
                          summary: "You and your apparent allies gain a +2 bonus on skill checks to gain influence (Ultimate Intrigue 102) or request a favor.",
                          source: "Spymaster's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Concilator (Story)",
                          featType: "General",
                          prerequisites: "Must have successfully requested that the opposing sides of a violent encounter pause for parley.",
                          benefit: "You can attempt a Diplomacy check to make a request of an enemy even if he is unfriendly or hostile, but only to request a pause in combat (which requires you and your apparent allies to take no attacks or hostile actions for 1 round prior to the request) or to request that he uses only nonlethal attacks (which requires you and your apparent allies to have made no attacks or used only nonlethal attacks against him for the past 24 hours). The DC is equal to 15 + the target’s CR + the target’s Wisdom modifier; it is modified by any other factors that would impact a Diplomacy check to make a request. Additionally, your allies within 30 feet who can see or hear you gain a +2 bonus on skill checks to analyze individuals while attempting to gain influence (Ultimate Intrigue 102) or assess an audience before a verbal duel (Ultimate Intrigue 176). Once an ally benefits from this feat, that ally can’t do so again for 1 day. Goal: Thwart an appropriate number of challenging foes with dialogue, nonviolent favors, and verbal duels. Completion Benefit: Your allies can benefit from this feat any number of times per day.",
                          summary: "You can attempt a Diplomacy check to make a request of an enemy even if he is unfriendly or hostile, but only to request a pause in combat (which requires you and your apparent allies to take no…",
                          source: "Spymaster's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Golden League Tattoos",
                          featType: "General",
                          prerequisites: "Regional trait associated with one of the Dragon Empires nations (Pathfinder Player Companion: Dragon Empires Primer).",
                          benefit: "You have an impressive collection of tattoos, which are visible unless you wear concealing clothing or succeed at a DC 10 Disguise check. You can take 10 on Intimidate checks against creatures able to see your tattoos, even when stress or distractions would normally prevent you from doing so. You add Knowledge (local) to the skills associated with the presence tactic for verbal duels (Pathfinder RPG Ultimate Intrigue), and the first time you win an exchange with that tactic you do not take a penalty on associated skill checks if you repeat the tactic in the same duel.",
                          summary: "You have an impressive collection of tattoos, which are visible unless you wear concealing clothing or succeed at a DC 10 Disguise check.",
                          source: "Spymaster's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Inerrant Justice (Story)",
                          featType: "General",
                          prerequisites: "Must have witnessed or suffered a grave injustice that went unpunished, or have the An Eye for an EyeUCA or the RaidersUCA background. If the offender is not a challenging foe, it either advances to become one or allies with one or more creatures who are.",
                          benefit: "Once per day, you can choose to take the maximum possible weapon damage die roll rather than rolling when you hit a foe that is unaware of you or considers you an ally. Bonus dice, including from sneak attack, surprise attack, and Vital Strike, are rolled normally. Goal: Decisively defeat or slay the offender without killing any innocents in the process. You can complete the goal after killing innocents if you receive an atonement spell. Completion Benefit: You can use this feat’s benefit once per combat.",
                          summary: "Once per day, you can choose to take the maximum possible weapon damage die roll rather than rolling when you hit a foe that is unaware of you or considers you an ally.",
                          source: "Spymaster's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Infiltrator (Story)",
                          featType: "General",
                          prerequisites: "Must have adopted an assumed or secret identity associated with an enemy organization.",
                          benefit: "Once per day when you succeed at a saving throw to negate a divination, you learn what the divination would have revealed and can spend an immediate action to cause the divination to return appropriate false information you imagine that would fit with your cover identity. Goal: Thwart the organization you have infiltrated, defeating or turning to your cause an appropriate number of challenging foes in the process .Completion Benefit: Whenever a spell or spell-like ability would reveal information about you, you can attempt a Will saving throw. If your saving throw is successful, the spell reveals nothing about you. You can use this feat’s benefits to instead give false information, as detailed above.",
                          summary: "Once per day when you succeed at a saving throw to negate a divination, you learn what the divination would have revealed and can spend an immediate action to cause the divination to return…",
                          source: "Spymaster's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Magical Enigma (Story)",
                          featType: "General",
                          prerequisites: "Bloodline, eidolon, mystery, phantom, spirit animal, or witch’s familiar class feature and you must have an unknown secret about your magic or family history (even if you do not yet know the topic of the secret) or have the One of a KindUCA, the Outsider’s LineageUCA, or the UnknownUCA background.",
                          benefit: "Select a class feature from the following list: one bloodline power, eidolon evolutions, one revelation, phantom abilities, spirit animal, or witch’s familiar. The feature must be from a class you have at least 1 level in, and you must have the class feature. You can treat either your class level as being 1 higher, or your Intelligence, Wisdom, or Charisma score as 2 higher, for the purpose of calculating the effect of the selected power. This impacts only the calculations of your existing powers that are based on class level or the appropriate ability score. It does not grant you early access to abilities gained at higher levels.Goal: Learn and verify the chosen magic secret for your family, defeating a challenging foe in the process.Completion Benefit: Select one Knowledge skill or the Use Magic Device skill. This is now a class skill for you.",
                          summary: "Select a class feature from the following list: one bloodline power, eidolon evolutions, one revelation, phantom abilities, spirit animal, or witch’s familiar.",
                          source: "Spymaster's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Oblivating Stare (Stare)",
                          featType: "General",
                          prerequisites: "Allure bold stare improvement (Pathfinder RPG Occult Adventures 42), hypnotic stare class feature (Occult Adventures 39), Mesmerist level 5th.",
                          benefit: "You can cause a target of your hypnotic stare to lose track of creatures other than yourself. If the target of your hypnotic stare is in an environment that would allow the target to take 10 on skill checks (if not in immediate danger or distracted), creatures can attempt Stealth checks opposed by the target’s Perception check even if they lack cover or concealment. If the target of your hypnotic stare fails an opposed Perception check by 5 or more, it forgets the creature attempting the Stealth check was ever present, and acts as if it had failed a Will saving throw against a hidden presence UI spell cast by the creature using Stealth. If your hypnotic stare ends, the target takes damage, a creature using Stealth takes an action that would end a hidden presence spell, or the target’s circumstances change so it would be unable to take 10 on a skill check, all effects of Obliviating Stare end and the target is immune to your Obliviating Stare for 24 hours.",
                          summary: "You can cause a target of your hypnotic stare to lose track of creatures other than yourself.",
                          source: "Spymaster's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Puppet Master (Story)",
                          featType: "General",
                          prerequisites: "You must have survived an encounter with a challenging foe without suffering significant harm by striking a deal (regardless of whether the deal was with the challenging foe or not), or have the BossUCA, the Liege LordUCA, or the Well-Connected FriendUCA background.",
                          benefit: "If you succeed at a Diplomacy check to make a request of a creature by 5 or more, the DCs of additional requests you attempt increase by 1 per request, rather than 5. Goal: Either thwart or decisively defeat an appropriate number of challenging foes as a direct result of bargains you have struck or control at least three leaders of settlements of at least 2,000 residents or similarly influential administrators for at least 6 months without being publicly exposed. Completion Benefit: If you succeed at a Diplomacy check to make a request of a creature, the DCs of additional requests you attempt increase by 1 per request, rather than 5.",
                          summary: "If you succeed at a Diplomacy check to make a request of a creature by 5 or more, the DCs of additional requests you attempt increase by 1 per request, rather than 5.",
                          source: "Spymaster's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Pure Legion Assault (Combat)",
                          featType: "General",
                          prerequisites: "Bluff 1 rank, Knowledge (religion) 1 rank, Pure Legion Recruit trait (Pathfinder Player Companion: People of the Sands 21) .",
                          benefit: "You gain a +2 bonus on saving throws against divine spells and effects and abilities from outsiders. If you must attempt a saving throw against a divine spell, you gain a +1 bonus on attack rolls against the creature that cast the spell",
                          summary: "You gain a +2 bonus on saving throws against divine spells and effects and abilities from outsiders.",
                          source: "Spymaster's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Rival (Story)",
                          featType: "General",
                          prerequisites: "You must have at least one enemy who wishes to outdo you. If you have multiple rivals, the GM may keep the specific rival secret, or have many of your enemies work together against you. If your rival is not already a challenging foe, it either advances to become one or allies itself with others one or more creatures who are .",
                          benefit: "Your striving pushes you to become ever more skillful. When you gain this feat, and every 2 character levels thereafter, either you gain 1 skill point or your Fame score increases by 1 (if your game uses the reputation and Fame system from Ultimate Campaign). Goal: Thwart your rival without anyone else directly interfering. Achieving your rival’s goal before her in a manner that humiliates her or completely steals her glory through your direct actions also qualifies. Completion Benefit: Once per day, you can take 20 on a single skill check as a standard action if the skill check is one that would allow you to take 20.",
                          summary: "Your striving pushes you to become ever more skillful. When you gain this feat, and every 2 character levels thereafter, either you gain 1 skill point or your Fame score increases by 1 (if your game…",
                          source: "Spymaster's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sense Loyalties",
                          featType: "General",
                          prerequisites: "Knowledge (nobility) 1 rank, Knowledge (religion) 1 rank.",
                          benefit: "After 1 hour or more of interaction, you can attempt a DC 20 Sense Motive check to get a hunch in order to intuit what god, government, leader, or patron a creature is loyal to or worships. You must understand the language the creature is speaking, and if it’s of a different type than you, you take a –5 penalty on the check. If the creature is attempting to conceal its loyalties, it attempts a Bluff check. If the result of the Bluff check is higher than 20, that result becomes the DC of your Sense Motive check. On a success, you learn whether the creature has a patron god, a witch patron, or a government to which it is strongly loyal. You can attempt to name one specific god, patron, or government for every 2 ranks you have in Sense Motive by introducing them into the conversation as subjects, as noted below. You can use this ability only if you observe the creature in an environment where loyalty to a god, government, leader, or patron is being discussed. If this isn’t already occurring, you can introduce the topic, but doing so may expose your interest. In this case, the creature you are observing and any other creatures able to hear you bring up the topic of loyalty to a god, government, leader, or patron can attempt Sense Motive checks (opposed by a Bluff check from you, which the GM rolls in secret). On a success, the creature realizes you are interested in determining the observed creature’s specific loyalty. If you are attempting to determine whether the observed creature’s loyalty is to a specific god, government, or leader as noted above, creatures who succeed at the Sense Motive check are aware of the specific god, government, leader, or patron about which you are interesting in learning.",
                          summary: "After 1 hour or more of interaction, you can attempt a DC 20 Sense Motive check to get a hunch in order to intuit what god, government, leader, or patron a creature is loyal to or worships.",
                          source: "Spymaster's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Supernatural Spy (Story)",
                          featType: "General",
                          prerequisites: "Alchemist discovery, arcane discovery, arcanist exploit, or magus arcana class feature and you must either have observed a created magical effect you could not understand or have the Master CraftsmanUCA or the Unquenchable Hunger for KnowledgeUCA background.",
                          benefit: "Treat your Intelligence, Wisdom, or Charisma score as 2 higher for the purpose of calculating the effects and save DCs of one of the following class features: alchemist discoveries, arcane discoveries, arcanist exploits, or magus arcana. You select both the ability score and class feature to be affected when you select this feat, and the choice cannot be changed. This increases the potency of the abilities but does not grant access to additional abilities.Goal: Learn a great supernatural secret, connected in some manner to an aspect of the class feature you selected with this story feat. You must evade or thwart a challenging foe in the process.Completion Benefit: When calculating the effect of the class feature selected with this feat, you treat your class level for the relevant class as 2 higher. This does not impact when you gain access to additional abilities tied to that class feature, only the effectiveness of abilities from the feature you already have.",
                          summary: "Treat your Intelligence, Wisdom, or Charisma score as 2 higher for the purpose of calculating the effects and save DCs of one of the following class features: alchemist discoveries, arcane…",
                          source: "Spymaster's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Wily Warrior (Story)",
                          featType: "General",
                          prerequisites: "Bluff 1 rank, Sense Motive 1 rank, base attack bonus +1, or you must have the Military Strategist background (page 5).",
                          benefit: "Once per day, you can use your ranks in Sense Motive in place of your total Will saving throw modifier when attempting a Will save. You must decide to use this ability prior to attempting the saving throw.Goal: Thwart an appropriate number of challenging foes after getting a negative hunch about them when they attempted to deceive you or after ambushing them.Completion Benefit: The DC of Bluff and Intimidate checks attempted against you increase by 5.",
                          summary: "Once per day, you can use your ranks in Sense Motive in place of your total Will saving throw modifier when attempting a Will save.",
                          source: "Spymaster's Handbook", isPremium: true),

                    // // MARK: - Technology Guide
        )
        try await db.insertFeat(
        .make("Craft Cybernetics",
                          featType: "General",
                          prerequisites: "Technologist, Heal 9 ranks, Knowledge (engineering) 9 ranks",
                          benefit: "You can create cybernetic items. Creating a cybernetic item takes 1 day for every 1,000 gp in the item’s price. To create the object, you must use up raw materials costing half of this total price. See Crafting High-Tech Items on page 16 for more information. You can repair a broken cybernetic item if it is one that you could make. Doing so costs half the raw materials and half the time it would take to craft that item from scratch. You can also install a cybernetic item in a creature’s body. See the Cybertech section on page 35 for more information on installing cyberware.",
                          summary: "You can create cybernetic items. Creating a cybernetic item takes 1 day for every 1,000 gp in the item’s price. To create the object, you must use up raw materials costing half of this total price.",
                          source: "Technology Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Craft Pharmaceutical",
                          featType: "General",
                          prerequisites: "Technologist, Heal 9 ranks, Knowledge (nature) 9 ranks",
                          benefit: "You can create any pharmaceutical or poison. Creating a pharmaceutical takes 2 hours if its base price is 250 gp or less; otherwise, the creation of the pharmaceutical takes 1 day for every 1,000 gp in its price. To create the pharmaceutical or poison, you must use up raw materials costing half of this total price. See Crafting High-Tech Items on page 16 for more information.",
                          summary: "You can create any pharmaceutical or poison. Creating a pharmaceutical takes 2 hours if its base price is 250 gp or less; otherwise, the creation of the pharmaceutical takes 1 day for every 1,000 gp…",
                          source: "Technology Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Craft Technological Arms and Armor",
                          featType: "General",
                          prerequisites: "Technologist, Craft (mechanical) 7 ranks, Knowledge (engineering) 7 ranks",
                          benefit: "You can create technological weapons or armor. Creating a technological weapon or suit of armor takes 1 day for every 1,000 gp in the item’s price. To create the object, you must use up raw materials costing half of this total price. See Crafting High-Tech Items on page 16 for more information. You can also repair a broken technological weapon or suit of armor if it is one that you could make. Doing so costs half the raw materials and half the time it would take to craft that item from scratch.",
                          summary: "You can create technological weapons or armor. Creating a technological weapon or suit of armor takes 1 day for every 1,000 gp in the item’s price.",
                          source: "Technology Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Craft Technological Item",
                          featType: "General",
                          prerequisites: "Technologist, Craft (mechanical) 5 ranks, Knowledge (engineering) 5 ranks",
                          benefit: "You can create technological gear. Creating a piece of technological gear takes 1 day for every 1,000 gp in the item’s price. To create the object, you must use up raw materials costing half of this total price. See Crafting High- Tech Items on page 16 for more information. You can also repair a broken technological item if it is one that you could make. Doing so costs half the raw materials and half the time it would take to craft that item from scratch.",
                          summary: "You can create technological gear. Creating a piece of technological gear takes 1 day for every 1,000 gp in the item’s price.",
                          source: "Technology Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Robot's Bane",
                          featType: "General",
                          prerequisites: "Knowledge (engineering) 5 ranks",
                          benefit: "You gain a +1 bonus on attack and damage rolls against creatures with the robot subtype. Additionally, you gain a +1 dodge bonus to your AC and a +1 bonus on saving throws against attacks and effects from robots. If you have at least 11 ranks in Knowledge (engineering), these bonuses increase to +2. If you have at least 17 ranks in Knowledge (engineering), these bonuses increase to +3.",
                          special: "If you have constructs as a favored enemy, you can use your favored enemy bonus toward constructs in place of the bonus granted by this feat if it’s larger. These bonuses do not stack with those granted by other abilities that allow you to add your favored enemy bonus to AC or on saving throws.",
                          summary: "You gain a +1 bonus on attack and damage rolls against creatures with the robot subtype.",
                          source: "Technology Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Scavenger's Luck",
                          featType: "General",
                          prerequisites: "Knowledge (engineering) 1 rank",
                          benefit: "When your check for using a piece of timeworn technology results in a glitch, you can roll again. You must choose to reroll before determining the specific glitch, and must take the second result, even if it’s worse. When you use timeworn technology, it doesn’t automatically glitch on a natural 1.",
                          summary: "When your check for using a piece of timeworn technology results in a glitch, you can roll again.",
                          source: "Technology Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Technology Adept (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Exotic Weapon Proficiency (firearms), Point-Blank Shot",
                          benefit: "When you attack with a technological firearm that consumes charges, the save DC of any effect caused by that firearm increases by 1. If your bonuses from Point-Blank Shot apply, it increases by 2 instead.",
                          summary: "When you attack with a technological firearm that consumes charges, the save DC of any effect caused by that firearm increases by 1.",
                          source: "Technology Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Technophobe",
                          featType: "General",
                          prerequisites: "Improved Sunder",
                          benefit: "When you reduce a robot to 0 hit points or destroy a technological item possessed by an enemy, you receive a +2 morale bonus on ability checks, attack rolls, saving throws, and skill checks for a number of rounds equal to your Wisdom bonus (minimum 1 round). You receive this bonus for destroying an unattended object so long as it was in the possession of an enemy within the last round.",
                          summary: "When you reduce a robot to 0 hit points or destroy a technological item possessed by an enemy, you receive a +2 morale bonus on ability checks, attack rolls, saving throws, and skill checks for a…",
                          source: "Technology Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Wrest Charge",
                          featType: "General",
                          prerequisites: "Disable Device 5 ranks, Knowledge (engineering) 5 ranks",
                          benefit: "With a successful DC 20 Disable Device check, you can jury-rig a depleted (but not destroyed) battery so it provides 1 more charge. Using this charge or failing your check by 5 or more permanently depletes the battery. You can attempt the same check to add 1 last charge to a discharged piece of timeworn technology. Regardless of the outcome, no other attempts can be made, even by another person. Using this feat takes 1 minute. You can attempt to wrest a charge as a move action by taking a –10 penalty on your check. This feat does not stack with the charge cycling deed.",
                          summary: "With a successful DC 20 Disable Device check, you can jury-rig a depleted (but not destroyed) battery so it provides 1 more charge.",
                          source: "Technology Guide", isPremium: true),

                    // // MARK: - The Harrow Handbook
        )
        try await db.insertFeat(
        .make("All-Consuming Swing (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Power Attack, Cleave, Vital Strike, base attack bonus +8.",
                          benefit: "Whenever you use Cleave or Great Cleave, you can apply the additional damage you would gain from Vital Strike, Improved Vital Strike, or Greater Vital Strike to the initial target of your attack. When you do so, the strain on your body causes you to take an amount of damage equal to the extra damage dealt by your Vital Strike feat. This self-inflicted damage is not reduced by damage reduction.",
                          summary: "Whenever you use Cleave or Great Cleave, you can apply the additional damage you would gain from Vital Strike, Improved Vital Strike, or Greater Vital Strike to the initial target of your attack.",
                          source: "The Harrow Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Bear's Balance (Combat)",
                          featType: "General",
                          prerequisites: "Iron Will, rage class feature.",
                          benefit: "You gain a +2 bonus on Intimidate checks when not raging. When you fail a saving throw against a fear effect, you can choose to enter your rage rather than succumb to fear. You can not voluntarily end your rage until the fear effect expires or is ended in some other way (such as due to the death of the fear-inducing creature) or you exhaust your rounds of rage for the day. This feat has no effect if you are already raging when exposed to a fear effect.",
                          summary: "You gain a +2 bonus on Intimidate checks when not raging. When you fail a saving throw against a fear effect, you can choose to enter your rage rather than succumb to fear.",
                          source: "The Harrow Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Harrowed Summoning",
                          featType: "General",
                          prerequisites: "Harrowed ( Pathfinder Campaign Setting: The Inner Sea World Guide 287).",
                          benefit: "When you cast a conjuration (summoning) spell or use a spell-like ability to summon one or more creatures, you can draw two random cards from a complete harrow deck you own. Doing so adds both a somatic component (if the spell does not already have one) and a focus component (the harrow deck) to the spell, but does not increase the spell’s casting time. For the duration of the spell, each summoned creature gains a +4 enhancement bonus to the corresponding ability scores of the drawn card’s suits. If both cards are the same suit, each summoned creature gains a +6 bonus to that ability score instead. If either card’s alignment is a true match for the summoned creatures’ alignment, the duration of the spell is doubled, while drawing an opposite match halves the duration of the spell. If both a true match and an opposite match are drawn, the spell’s duration is unchanged. A creature summoned in this way is distinctly altered by the cards drawn. Its physical appearance reflects the visual elements of the cards (for example, a creature summoned with The Publican might have only one eye). The creature’s personality is also influenced by the cards, but not so much as to alter its alignment (for example, The Snakebite might summon a creature that likes to gossip).",
                          summary: "When you cast a conjuration (summoning) spell or use a spell-like ability to summon one or more creatures, you can draw two random cards from a complete harrow deck you own.",
                          source: "The Harrow Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Merciless Beating (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Gang Up APG .",
                          benefit: "Whenever you and two or more allies threaten an opponent, you can choose to forgo your flanking bonus to grant each of your allies a +1 flanking bonus on their attack rolls against the threatened creature. This bonus stacks with any flanking bonuses your allies might already have.",
                          summary: "Whenever you and two or more allies threaten an opponent, you can choose to forgo your flanking bonus to grant each of your allies a +1 flanking bonus on their attack rolls against the threatened…",
                          source: "The Harrow Handbook", isPremium: true),

                    // // MARK: - The Harrow Handbook, Varisia, Birthplace of Legends
        )
        try await db.insertFeat(
        .make("Deadly Dealer",
                          featType: "General",
                          prerequisites: "Arcane Strike, Sleight of Hand 5 ranks.",
                          benefit: "You can throw a card as though it were a dart, with the same damage, range, and other features. You must use the Arcane Strike feat when throwing a card in this way, or else the card lacks the magical force and precision to deal lethal damage. A card is destroyed when thrown in this way. Harrow cards are treated as masterwork weapons when thrown using this feat, but are still destroyed after they are thrown. A harrow deck can no longer be used as a fortune-telling device after even a single card is thrown. A spellcaster with this feat can enhance a deck of cards as though it were a ranged weapon with 54 pieces of ammunition. This enhancement functions only when used in tandem with this feat, and has no affect on any other way the cards might be used. Only a character who possesses this feat can use an enhanced deck of cards; she must still use the Arcane Strike feat to activate the cards’ enhancement.",
                          summary: "You can throw a card as though it were a dart, with the same damage, range, and other features.",
                          source: "The Harrow Handbook, Varisia, Birthplace of Legends", isPremium: true),

                    // // MARK: - Tombs of Golarion
        )
        try await db.insertFeat(
        .make("Polytheistic Blessing",
                          featType: "General",
                          prerequisites: "Wis 13, must worship a pantheon.",
                          benefit: "When you take this feat, select a pantheon from the list below. You gain the listed spell-like ability for your selected pantheon, usable once per day. If the granted spell allows a saving throw, the DC is equal to 10 + 1/2 your character level + your Charisma modifier.",
                          special: "If you act out of line with the tenets of your pantheon’s beliefs, you lose the ability to cast the granted spell-like ability until you have received an atonement for your transgression (as a cleric attempting to regain lost class abilities).",
                          summary: "When you take this feat, select a pantheon from the list below. You gain the listed spell-like ability for your selected pantheon, usable once per day.",
                          source: "Tombs of Golarion", isPremium: true),

                    // // MARK: - Ultimate Campaign
        )
        try await db.insertFeat(
        .make("Accursed (Story)",
                          featType: "General",
                          prerequisites: "You must carry a curse that can be lifted only by a quest or similar great undertaking, or have the Cursed Birth background.",
                          benefit: "You gain spell resistance equal to 5 + your character level, as the curse interferes with all magic. Unlike most spell resistance, it can’t voluntarily be lowered, though your own spells and magic items still automatically affect you. Goal: Your curse is lifted or you are able to purge the corruption of your fiendish blood (the circumstances of either vary widely based on the nature of the curse, and are up to the GM).Completion Benefit: You lose the spell resistance described above. You gain spell resistance equal to 11 + your character level, but only against harmful enchantment, necromancy, and transmutation spells and spell-like abilities—your aura resists further attempts to curse you. Harmless spells automatically bypass this spell resistance whether you desire it or not. This spell resistance can be voluntarily lowered.",
                          summary: "You gain spell resistance equal to 5 + your character level, as the curse interferes with all magic.",
                          source: "Ultimate Campaign", isPremium: true)
        )
        try await db.insertFeat(
        .make("Arisen (Story)",
                          featType: "General",
                          prerequisites: "You must have been slain and brought back from the dead, or have the Left to Die or Cursed Birth background.",
                          benefit: "You don’t die until your negative hit point total is equal to or greater than 4 + your Constitution score. Once per day as a standard action, you can force yourself to carry on by strength of will alone, gaining 1 temporary hit point per hit die. These temporary hit points last for 10 minutes.",
                          normal: "You die when your negative hit point total is equal to or greater than your Constitution score. Goal: You meet in person and hear the words of your deity or your deity’s chosen herald. If you worship a pantheon of deities, you must meet and hear a member of that pantheon—a herald does not suffice in this case. If you worship no specific deity, you must hear the words of an appropriate entity of the GM’s choice.Completion Benefit: You gain a +2 bonus on saving throws against death effects and fear effects. In addition, the caster level of any conjuration (healing) spell that is cast on you increases by 1 for the purposes of its effects on you alone.",
                          summary: "You don’t die until your negative hit point total is equal to or greater than 4 + your Constitution score.",
                          source: "Ultimate Campaign", isPremium: true)
        )
        try await db.insertFeat(
        .make("Battlefield Healer (Story)",
                          featType: "General",
                          prerequisites: "You must successfully cast a conjuration (healing) spell on an ally after being hit by an attack of opportunity, or have the Battle, Chaplain, or Healed background.",
                          benefit: "When attempting a concentration check caused by receiving damage (including ongoing damage), you reduce the damage taken by 50% for the purposes of determining the concentration check DC.Goal: Over time, provoke at least 20 attacks of opportunity for casting conjuration (healing) spells on allies. These spells don’t have to succeed to count. Completion Benefit: You automatically succeed at concentration checks for conjuration (healing) spells caused by taking damage.",
                          summary: "When attempting a concentration check caused by receiving damage (including ongoing damage), you reduce the damage taken by 50% for the purposes of determining the concentration check DC.Goal: Over…",
                          source: "Ultimate Campaign", isPremium: true)
        )
        try await db.insertFeat(
        .make("Champion (Story)",
                          featType: "General",
                          prerequisites: "You must have defeated a single challenging foe without any aid from another, or have the Champion of a God, Champion of the People, Competition Champion, or Gladiator background.",
                          benefit: "As a swift action, you can declare a single combat challenge to one foe within 50 feet and in line of sight. Upon doing so, you gain a +1 bonus on attack rolls and a +1 dodge bonus to AC against that foe as long as no one else threatens that opponent or until the single combat challenge ends. If another combatant attacks you or your foe, the challenge ends and you take a –2 penalty on attack rolls and to AC for 1 round. Though you can declare a single combat challenge at will, once you declare it on a foe you can’t declare it on the same foe for another 24 hours. Goal: Defeat an appropriate number of challenging foes in single combat. These combats must not be interrupted by other creatures, and the foes must not have already been substantially injured or impaired prior to combat with you. Completion Benefit: Your bonuses for single combat increase to +2. In addition, any confirmed critical hits you make against such a foe deal an additional 1d6 points of damage.",
                          summary: "As a swift action, you can declare a single combat challenge to one foe within 50 feet and in line of sight.",
                          source: "Ultimate Campaign", isPremium: true)
        )
        try await db.insertFeat(
        .make("Deny the Reaper (Story)",
                          featType: "General",
                          prerequisites: "You must have witnessed the death of a close companion in battle—a death that could have been prevented, such as from bleeding, failure to stabilize, or ongoing poison damage—or have the Death in the Family or The War background.",
                          benefit: "You gain a +2 bonus on Heal checks. If you have 10 or more ranks in Heal, this bonus increases to +4. You can apply first aid as a move action and don’t take a penalty when treating deadly wounds without a healing kit. Goal: Bring an ally back from the dead, including by using breath of life or reincarnate. Completion Benefit: You and each ally within 10 feet of you gain a +2 bonus on saves against death effects. In addition, once per day you can spontaneously convert any 5th-level or higher conjuration (healing) spell into breath of life.",
                          summary: "You gain a +2 bonus on Heal checks. If you have 10 or more ranks in Heal, this bonus increases to +4.",
                          source: "Ultimate Campaign", isPremium: true)
        )
        try await db.insertFeat(
        .make("Eldritch Researcher (Story)",
                          featType: "General",
                          prerequisites: "You must have created a new spell, or have The Way Things Work background.",
                          benefit: "When casting a spell you’ve created, add 1 to your caster level. In addition, you gain a +2 bonus on Spellcraft checks. If you have 10 or more ranks in Spellcraft, this bonus increases to +4. Goal: Create a new spell of at least 6th level. Completion Benefit: The save DCs for any spells you create increase by 1 when you cast them. In addition, when applying metamagic feats to self-created spells, reduce the total level adjustment by 1. You can’t reduce metamagic costs to lower than the spell’s original level in this manner.",
                          special: "For a self-created spell to benefit from this feat, it must be a truly novel spell. Spells slightly altered from the original (for example, delayed blast fireball as compared to fireball) gain no benefit. Alchemists can benefit from this feat as though their formulae and extracts were spells.",
                          summary: "When casting a spell you’ve created, add 1 to your caster level. In addition, you gain a +2 bonus on Spellcraft checks. If you have 10 or more ranks in Spellcraft, this bonus increases to +4.",
                          source: "Ultimate Campaign", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fearless Zeal (Story)",
                          featType: "General",
                          prerequisites: "You must be ordained as a sacred (or profane) champion of your faith by a high-ranking member of its clergy, or have the Devoted, Faith-Bringer, or Moral Debt background. Such an honor goes above and beyond the normal oaths required of a cleric or paladin.",
                          benefit: "Once per day, you can add a +2 bonus on any single attack roll, caster level check, saving throw, or skill check. You must choose to add this bonus after the die has been rolled and success or failure determined, but before any results (such as damage) are rolled and applied. If you have 10 or more levels or hit dice, this bonus increases to +4. Goal: Die in pursuit of your faith’s goals and be brought back to life. If you die in circumstances that don’t involve your faith, you gain no benefit. If your GM permits, you can instead remain dead and create a new PC inspired by your heroic sacrifice. Completion Benefit: If you died and came back, you become a living symbol of faith. Once per day as a standard action, you can inspire those who share your faith to great effort, granting them a +2 morale bonus on attack rolls and saving throws for 1 minute. This is a mind-affecting, language-dependent effect. If you create a new character inspired by your previous character, the new PC receives a +2 bonus to a single ability score. This ability score can’t be one that already has a racial bonus. The new PC can later take this feat if he meets the prerequisite.",
                          summary: "Once per day, you can add a +2 bonus on any single attack roll, caster level check, saving throw, or skill check.",
                          source: "Ultimate Campaign", isPremium: true)
        )
        try await db.insertFeat(
        .make("Feral Heart (Story)",
                          featType: "General",
                          prerequisites: "You must have reverted to savage behavior through a traumatic event or extended period in the wilderness, or have the Raised by Beasts background.",
                          benefit: "Whenever you receive a morale bonus on Strength or attack rolls (such as from heroism or the barbarian rage class feature), you receive a +2 bonus on Dexterity- and Strength-based ability and skill checks and a +1 bonus on Reflex saves until the morale bonus effect ends. Goal: Woo and then marry or otherwise enter into a committed relationship with a person from a civilized culture. This relationship must be forged in love, not bought or coerced. Completion Benefit: Delay the penalties for the exhausted, fatigued, shaken, and sickened conditions for 1 round after first receiving them. If you already have the condition in question and it is applied again, this feat provides no benefit. Despite ignoring the penalties you do still have the condition. For example, if you become shaken again while benefiting from this feat, you become frightened as normal.",
                          summary: "Whenever you receive a morale bonus on Strength or attack rolls (such as from heroism or the barbarian rage class feature), you receive a +2 bonus on Dexterity- and Strength-based ability and skill…",
                          source: "Ultimate Campaign", isPremium: true)
        )
        try await db.insertFeat(
        .make("Forgotten Past (Story)",
                          featType: "General",
                          prerequisites: "You must have suffered permanent memory loss or have the Reincarnated background.",
                          benefit: "The duration of mind-affecting spells (even beneficial ones) is halved for you, to a minimum of 1 round. Your inquisitive nature gives you a +2 bonus on Perception checks. If you have 10 or more ranks in Perception, this bonus increases to +4. Goal: Regain a major portion of your lost memories. The exact means varies, possibly requiring a wish, assistance from a divine being, reliving a past life, or confronting the situation that led to your memory loss. This process must involve encountering a challenging foe, though possibly in ways other than direct confrontation. Completion Benefit: You roll twice whenever you attempt a saving throw against a mind-affecting effect, keeping the better result.",
                          special: "Restoration of memories by means less significant than miracle or wish does not qualify for the prerequisite.",
                          summary: "The duration of mind-affecting spells (even beneficial ones) is halved for you, to a minimum of 1 round. Your inquisitive nature gives you a +2 bonus on Perception checks.",
                          source: "Ultimate Campaign", isPremium: true)
        )
        try await db.insertFeat(
        .make("Glimpse Beyond (Story)",
                          featType: "General",
                          prerequisites: "You must have faced an undead, evil outsider, or aberration with a CR greater than your level +4, or have the Raised Among the Dead or The Dead One background.",
                          benefit: "You gain a +2 bonus on Knowledge (dungeoneering) checks to identify the vulnerabilities and powers of aberrations, Knowledge (planes) checks to identify the vulnerabilities and powers of evil outsiders, and Knowledge (religion) checks to identify the vulnerabilities and powers of undead, and you can make such checks untrained. If you have 10 or more ranks in any of these Knowledge skills, the bonus increases to +4 for the appropriate skill. In addition, you gain a +2 bonus on saves against fear effects. Goal: Be killed or driven insane (as determined by the GM) by an aberration, evil outsider, or undead. This leaves your mind permanently marked. Completion Benefit: Any sane creature that attempts to read your thoughts takes 1d6 points of Wisdom damage (Will DC 10 + 1/2 your level + your Charisma modified negates). In addition, the effect of any ability damage, ability drain, or penalty to your Intelligence, Wisdom, or Charisma is halved (minimum 1). You take a –2 penalty on Will saving throws. Whenever you roll a save against a mind-affecting effect, roll twice and keep the better result.",
                          summary: "You gain a +2 bonus on Knowledge (dungeoneering) checks to identify the vulnerabilities and powers of aberrations, Knowledge (planes) checks to identify the vulnerabilities and powers of evil…",
                          source: "Ultimate Campaign", isPremium: true)
        )
        try await db.insertFeat(
        .make("Innocent Blood (Story)",
                          featType: "General",
                          prerequisites: "You must slay at least 50 intelligent noncombatants for either your own personal gain or for no cause at all, or have the Bloodthirsty, First Kill, or The Kill background.",
                          benefit: "You gain a +2 bonus on Intimidate checks. If you have 10 or more ranks in Intimidate, this bonus increases to +4. Each time you slay an intelligent creature, you gain a +1 bonus on attack rolls and caster level checks for 1 minute (this bonus does not stack with itself ). Goal: Slay at least 200 more intelligent noncombatants, then slay a challenging foe that seeks to either bring you to justice for your crimes or usurp your position. Completion Benefit: Any shaken creature takes double the normal penalties when attacking you, making saves against your abilities, or resolving skill checks with you as a target.",
                          summary: "You gain a +2 bonus on Intimidate checks. If you have 10 or more ranks in Intimidate, this bonus increases to +4.",
                          source: "Ultimate Campaign", isPremium: true)
        )
        try await db.insertFeat(
        .make("Lost Legacy (Story)",
                          featType: "General",
                          prerequisites: "Your family must have claim to an inherited title or position that no longer belongs to them, or have the Dishonored Family background. You can take this feat even if you have no knowledge of this lost family title.",
                          benefit: "You gain a +1 bonus on Charisma-based ability checks and skill checks. Goal: Regain your family’s lost claim, either for yourself or another in your family. In the process of completing this claim, you must decisively defeat a challenging foe that seeks to deny your birthright. Completion Benefit: You gain a +1 bonus on Wisdom ability checks, Wisdom-based skill checks, and Will saving throws.",
                          special: "If you manage to regain your position without defeating a challenging foe, you may still complete this story feat at a later date if a suitable challenging foe attempts to steal your birthright again.",
                          summary: "You gain a +1 bonus on Charisma-based ability checks and skill checks. Goal: Regain your family’s lost claim, either for yourself or another in your family.",
                          source: "Ultimate Campaign", isPremium: true)
        )
        try await db.insertFeat(
        .make("Magnum Opus (Story)",
                          featType: "General",
                          prerequisites: "You must either have sold five or more self-created works of art worth a total of at least 5, 000 gp, have performed at least five performances for audiences of 50 or more while achieving a great performance result or better on your Perform check, or have the Virtuoso background.",
                          benefit: "Choose a single Craft or Perform skill. Whenever you take 10 with this skill, treat your die result as a 15 instead. Goal: Either sell a single self-created work of art for at least 25,000 gp, perform at least 10 performances for audiences of 100 or more while achieving an extraordinary result or better, or win the artistic patronage of the ruler of a country or city of at least 100,000 people. In each case, you must achieve this using the skill chosen above. Completion Benefit: You gain a +5 bonus on skill checks made with your chosen skill, and a +2 bonus on all other Craft and Perform checks for which you have at least 1 rank.",
                          summary: "Choose a single Craft or Perform skill. Whenever you take 10 with this skill, treat your die result as a 15 instead.",
                          source: "Ultimate Campaign", isPremium: true)
        )
        try await db.insertFeat(
        .make("Monument Builder (Story)",
                          featType: "General",
                          prerequisites: "Knowledge (engineering) 1 rank, and you must have built a structure worth at least 5, 000 gp.",
                          benefit: "When you supervise a construction project or do the construction yourself, reduce your raw material costs by 10%. You gain a +2 bonus on Knowledge (engineering) checks. If you have 10 or more ranks in Knowledge (engineering), this bonus increases to +4. Goal: Design and construct a building worth at least 100,000 gp with great personal significance to you. For example, you might construct a new temple for your god on the site where an old temple was destroyed, or an academy for students to unlock the secrets of the universe. Completion Benefit: The value of any past and future buildings you construct (including the building constructed to achieve your goal) increases by 10% as your reputation spreads. In addition, you and your workers complete double the normal amount of work in a given time interval when you supervise a construction project.",
                          summary: "When you supervise a construction project or do the construction yourself, reduce your raw material costs by 10%. You gain a +2 bonus on Knowledge (engineering) checks.",
                          source: "Ultimate Campaign", isPremium: true)
        )
        try await db.insertFeat(
        .make("Nation Builder (Story)",
                          featType: "General",
                          prerequisites: "You must have explored and claimed an area of at least 100 square miles.",
                          benefit: "When in either unclaimed wilderness or land under your own control, you receive a +2 bonus on Perception checks, Stealth checks, and Survival checks. If you have 10 or more ranks in one of these skills, the bonus on that skill increases to +4. Goal: Explore and conquer an area of at least 1,000 square miles, in the process decisively defeating a challenging foe. You must also lay claim to the land either in your own name or in the name of a leader you directly report to, and establish a stronghold or other fortification to defend it. Completion Benefit: You gain a +2 bonus on initiative checks, attack rolls, and saving throws while in the area you have claimed.",
                          summary: "When in either unclaimed wilderness or land under your own control, you receive a +2 bonus on Perception checks, Stealth checks, and Survival checks.",
                          source: "Ultimate Campaign", isPremium: true)
        )
        try await db.insertFeat(
        .make("Nemesis (Story)",
                          featType: "General",
                          prerequisites: "You must have at least one enemy who wishes to cause you great harm. If you have multiple enemies, the GM may keep the specific nemesis secret, or have many of your enemies work together against you. If your nemesis is not already a challenging foe, it either advances in strength to become a challenging foe or allies with others to achieve a higher challenge rating.",
                          benefit: "Having a nemesis drives you to excel in training. For each new level you gain in a favored class, including the level you gained when you chose this feat, you can choose two benefits instead of one. One of these benefits must be either a bonus hit point or a bonus skill point, even if other options are available. Goal: Slay your nemesis. Causing your nemesis’s death through your direct actions qualifies even if you do not strike the fatal blow, but another killing your nemesis without your involvement doesn’t count. Completion Benefit: You gain a +2 inherent bonus to an ability score of your choice. In addition, you may retroactively apply your extra favored class benefit to the favored class levels you gained before taking this feat.",
                          special: "Thwarting your plans becomes an all-consuming goal for your nemesis. Your nemesis gains a +2 bonus on attack rolls and damage rolls against you. Whatever you try to achieve, your nemesis seeks to tear down.",
                          summary: "Having a nemesis drives you to excel in training. For each new level you gain in a favored class, including the level you gained when you chose this feat, you can choose two benefits instead of one.",
                          source: "Ultimate Campaign", isPremium: true)
        )
        try await db.insertFeat(
        .make("Redemption (Story)",
                          featType: "General",
                          prerequisites: "You must have lost class features by violating the code of conduct of a class that possesses such a code, or have the Dishonored Family background.",
                          benefit: "As an immediate action, you can add a +1 bonus to the result of an ability check, attack roll, saving throw, or skill check you have just rolled by becoming shaken for 1 minute. You must choose before the result is revealed. Goal: Regain any lost class features and complete a quest to prove your worth. In the course of completing this quest, you must decisively defeat a challenging foe. The quest should relate in some fashion to the transgression that removed your class abilities or led to you being disgraced. Completion Benefit: You gain the ability to reroll a failed saving throw once per day. You must keep the result of the second roll, even if it is lower.",
                          summary: "As an immediate action, you can add a +1 bonus to the result of an ability check, attack roll, saving throw, or skill check you have just rolled by becoming shaken for 1 minute.",
                          source: "Ultimate Campaign", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shamed (Story)",
                          featType: "General",
                          prerequisites: "You must have been publicly embarrassed, or must have the Bastard Born background. If the embarrassment didn’t cause significant harm to your personal honor or social standing, it does not qualify for the feat prerequisites. The humiliation doesn’t need to have been unjustified.",
                          benefit: "Being observed drives you to excel. When you’re in a conflict that is being observed by others not involved in the conflict, you gain a +1 bonus on attack rolls and skill checks. Goal: You can complete this goal in one of two fashions. First, thwart a chosen foe in a fashion that clearly establishes your superiority to the general public. Second, prove your worth another way, like gaining a title or becoming the chosen hero of a region. Completion Benefit: Your newfound confidence gives you temporary hit points equal to your character level. These temporary hit points last until lost and refresh any time you rest long enough for natural healing to occur (Core Rulebook 191), whether or not any healing actually occurs.",
                          summary: "Being observed drives you to excel. When you’re in a conflict that is being observed by others not involved in the conflict, you gain a +1 bonus on attack rolls and skill checks.",
                          source: "Ultimate Campaign", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stronghold (Story)",
                          featType: "General",
                          prerequisites: "You must have the Leadership feat and must lead at least 10 combat-capable followers (such as fighters or rangers).",
                          benefit: "You can spend a move action to give battle orders to your troops, granting creatures under your command within 60 feet your choice of a +1 morale bonus on attack rolls, a +1 dodge bonus to AC, or a +1 bonus on a single type of saving throw. All creatures must receive the same benefit. You can’t use this benefit on allies not under your command. This is a language-dependent, mind-affecting effect. Goal: Build or capture a stronghold capable of housing a force of at least 200 troops, and staff it with at least 100 combat-capable soldiers (or the equivalent) under your command. You must also provide food and water sufficient to survive at least a 6-month siege and a gold reserve sufficient for at least 6 months of wages if your troops require pay. Completion Benefit: Your battle order bonuses improve to +2, and the range of your orders increases to 120 feet. In addition, you can give two different orders to your troops. For example, you could grant your archers +2 on attack rolls while your front line gains a +2 bonus to AC.",
                          summary: "You can spend a move action to give battle orders to your troops, granting creatures under your command within 60 feet your choice of a +1 morale bonus on attack rolls, a +1 dodge bonus to AC, or a…",
                          source: "Ultimate Campaign", isPremium: true)
        )
        try await db.insertFeat(
        .make("Thief of Legend (Story)",
                          featType: "General",
                          prerequisites: "You must have stolen at least 1, 000 gp worth of treasure without being caught and kept mementos of these thefts worth at least 500 gp, or have the Greed background.",
                          benefit: "Once per day when you attempt a Disable Device check to open a lock or Sleight of Hand check to pick a pocket, you can roll twice and take the better result. Goal: Steal a famous and well-guarded treasure worth at least 50,000 gp while leaving no evidence of your involvement behind. The treasure must be protected by a mix of at least 8 traps or challenging foes. Any guardians need not be defeated, merely bypassed. You don’t need to keep the treasure, and you can boast of the theft afterward. Completion Benefit: You gain the ability to reactively disarm a trap. When you trigger a trap, you can attempt a Disable Device check with a –5 penalty to interrupt the trap’s function, leaving it still armed but effectively preventing it from activating. You can use this ability a number of times per day equal to 3 + your Intelligence modifier. Since the trap is still armed, it might activate again if you don’t immediately back away or otherwise avoid repeating the act that set it off the first time.",
                          summary: "Once per day when you attempt a Disable Device check to open a lock or Sleight of Hand check to pick a pocket, you can roll twice and take the better result.",
                          source: "Ultimate Campaign", isPremium: true)
        )
        try await db.insertFeat(
        .make("Town Tamer (Story)",
                          featType: "General",
                          prerequisites: "You must have 5 ranks in Intimidate and a personal motivation to clean up a particular town (such as an old friend calling in a favor, or seeking a place to settle down), or you must have the Bounty Hunter or Champion of the People background.",
                          benefit: "Choose a particular settlement. When you’re in your chosen settlement, the DC of Intimidate checks made against you increases by 10. You gain a +1 bonus on attack rolls and a +1 dodge bonus to AC against undesirable elements like criminals or ruffians in your chosen settlement. This bonus increases to +2 for combat maneuver checks. Goal: Defeat 10 more troublemakers in your chosen settlement with a CR equal to your character level or higher, and in the process eliminate a serious criminal threat or otherwise clean up the streets. Completion Benefit: You gain the ability to designate a new chosen settlement as often as you wish. You must first live in a settlement for 1 week to make it your chosen settlement. In addition, you gain a +2 bonus on initiative checks and a +1 bonus on saving throws when in your chosen settlement.",
                          summary: "Choose a particular settlement. When you’re in your chosen settlement, the DC of Intimidate checks made against you increases by 10.",
                          source: "Ultimate Campaign", isPremium: true)
        )
        try await db.insertFeat(
        .make("True Love (Story)",
                          featType: "General",
                          prerequisites: "You must have found love with a person you can’t be with, have a current lover, or have the Current Lover, For Love, or The Lover background. Possible complications include distance, your love being with another, your feelings being unrequited, or your relationship being forbidden.",
                          benefit: "You add 1 to the save DC and caster level of your spells and spell-like abilities with the emotion descriptor. In addition, you gain a +2 bonus on Sense Motive checks. If you have 10 or more ranks in Sense Motive, this bonus increases to +4. Goal: Find a way to be with your true love (even if you can’t formally wed). Completion Benefit: The inspiration of knowing your love waits for your return gives you a +2 bonus on attack rolls, saving throws, and skill checks whenever you are below a quarter of your total hit points (not counting any temporary hit points). You lose this completion benefit if your relationship with your true love comes to an end for any reason, including death.",
                          special: "At the GM’s discretion, you can find true love with a person other than the one you designated when you chose this feat. In this case, the love you initially chose was wrong for you, but this became obvious only when you found the one truly meant for you.",
                          summary: "You add 1 to the save DC and caster level of your spells and spell-like abilities with the emotion descriptor. In addition, you gain a +2 bonus on Sense Motive checks.",
                          source: "Ultimate Campaign", isPremium: true)
        )
        try await db.insertFeat(
        .make("Unforgotten (Story)",
                          featType: "General",
                          prerequisites: "You must have a close relative, spouse, or other person dear to your heart who never returned from a journey, was captured, or otherwise vanished with little trace, or you have the Major Disaster background.",
                          benefit: "Your dogged determination reduces any nonlethal damage you take by 1 point, to a minimum of 1 point of nonlethal damage. You also gain a +1 bonus on Will saves. Goal: Find your lost loved one alive, and in the process, decisively defeat a challenging foe who kept you apart. Completion Benefit: You gain a +1 bonus on all saving throws, replacing the +1 bonus on Will saves. If you find your loved one dead, you lose all benefits from this feat until you put the body and possibly soul to proper rest. Putting the body to rest restores the completion benefit, but you don’t regain the ability to reduce nonlethal damage.",
                          summary: "Your dogged determination reduces any nonlethal damage you take by 1 point, to a minimum of 1 point of nonlethal damage. You also gain a +1 bonus on Will saves.",
                          source: "Ultimate Campaign", isPremium: true)
        )
        try await db.insertFeat(
        .make("Vengeance (Story)",
                          featType: "General",
                          prerequisites: "You must have a close family member or other loved one slain by a specific challenging foe or that foe’s minions, or have the Raiders or Vengeance background.",
                          benefit: "You gain a +1 bonus on saving throws, attack rolls, and weapon damage rolls against your chosen foe and known minions of that foe. Goal: Thwart your chosen foe. Completion Benefit: You gain a +1 bonus on all saving throws. This bonus stacks with this feats’s bonus against your foe and its minions, should they survive.",
                          summary: "You gain a +1 bonus on saving throws, attack rolls, and weapon damage rolls against your chosen foe and known minions of that foe. Goal: Thwart your chosen foe.",
                          source: "Ultimate Campaign", isPremium: true),

                    // // MARK: - Ultimate Combat
        )
        try await db.insertFeat(
        .make("Adder Strike (Combat)",
                          featType: "General",
                          prerequisites: "Poison use class feature, Craft (alchemy) 1 rank, Improved Unarmed Strike.",
                          benefit: "As a swift action, you can apply one dose of contact or injury poison to two body parts that you use for unarmed strikes. You must still protect yourself against exposure to contact poisons you apply in this way.",
                          normal: "Applying poison to a weapon or single piece of ammunition is a standard action.",
                          summary: "As a swift action, you can apply one dose of contact or injury poison to two body parts that you use for unarmed strikes.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Adept Champion",
                          featType: "General",
                          prerequisites: "Smite evil class feature, base attack bonus +5.",
                          benefit: "While using your smite evil class feature, as a swift action at the start of your turn, you can forgo the bonus on damage rolls and instead gain half that bonus as a bonus on combat maneuver checks against the target of your smite. The effects of your smite evil feature return to normal at the start of your next turn.",
                          summary: "While using your smite evil class feature, as a swift action at the start of your turn, you can forgo the bonus on damage rolls and instead gain half that bonus as a bonus on combat maneuver checks…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Amateur Gunslinger (Combat)",
                          featType: "General",
                          prerequisites: "You have no levels in a class that has the grit class feature.",
                          benefit: "You gain a small amount of grit and the ability to perform a single 1st-level deed from the gunslinger deed class feature. At the start of the day, you gain 1 grit point, though throughout the day you can gain grit points up to a maximum of your Wisdom modifier (minimum 1). You can regain grit using the rules for the gunslinger’s grit class feature (see page 9). You can spend this grit to perform the 1st-level deed you chose upon taking this feat, and any other deed you have gained through feats or magic items.",
                          special: "If you gain levels in a class that grants the grit class feature, you can immediately trade this feat for the Extra Grit feat.",
                          summary: "You gain a small amount of grit and the ability to perform a single 1st-level deed from the gunslinger deed class feature.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Arc Slinger (Combat)",
                          featType: "General",
                          prerequisites: "Point-Blank Shot, proficient with sling or halfling sling staff.",
                          benefit: "When using a sling or sling staff, you reduce your penalty on ranged attack rolls due to range by 2. Point-Blank Shot’s damage bonus applies within the first normal range increment of your sling (50 feet) or sling staff (80 feet).",
                          summary: "When using a sling or sling staff, you reduce your penalty on ranged attack rolls due to range by 2.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Back to Back (Teamwork)",
                          featType: "General",
                          prerequisites: "Perception 3 ranks.",
                          benefit: "While you are flanked and adjacent to an ally with this feat, you receive a +2 circumstance bonus to AC against attacks from opponents flanking you.",
                          summary: "While you are flanked and adjacent to an ally with this feat, you receive a +2 circumstance bonus to AC against attacks from opponents flanking you.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Betrayer",
                          featType: "General",
                          prerequisites: "Quick Draw, Persuasive, base attack bonus +3.",
                          benefit: "When you succeed at a Diplomacy check to change a creature’s attitude, you can draw a weapon and make a single melee attack against that creature as an immediate action. If you changed your target’s attitude to friendly or better, your target is considered flat-footed against this attack. If the target survives, it takes a –2 penalty on its initiative check for this combat. Once you attack a creature, its attitude becomes hostile.",
                          summary: "When you succeed at a Diplomacy check to change a creature’s attitude, you can draw a weapon and make a single melee attack against that creature as an immediate action.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Binding Throw (Combat)",
                          featType: "General",
                          prerequisites: "Improved Grapple, Improved Trip, Improved Unarmed Strike, Ki Throw.",
                          benefit: "After you successfully use the Ki Throw feat on an opponent, you can use a swift action to attempt a grapple combat maneuver against that opponent.",
                          normal: "The grapple combat maneuver is a standard action.",
                          special: "A monk can gain Binding Throw as a bonus feat starting at 14th level.",
                          summary: "After you successfully use the Ki Throw feat on an opponent, you can use a swift action to attempt a grapple combat maneuver against that opponent.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Bludgeoner (Combat)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You take no penalty on attack rolls for using a lethal bludgeoning weapon to deal nonlethal damage.",
                          normal: "You take a –4 penalty on attack rolls when using a lethal weapon to deal nonlethal damage. You cannot use a lethal weapon to deal nonlethal damage in a sneak attack.",
                          special: "A rogue with this feat can use a lethal bludgeoning weapon to deal nonlethal damage with a sneak attack.",
                          summary: "You take no penalty on attack rolls for using a lethal bludgeoning weapon to deal nonlethal damage.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Boar Ferocity (Combat)",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike, Boar Style, Intimidate 6 ranks.",
                          benefit: "You add piercing damage to the damage types you can deal with your unarmed strikes. Further, you gain a +2 bonus on Intimidate checks to demoralize opponents. While using Boar Style, whenever you tear an opponent’s flesh, you can spend a free action to make an Intimidate check to demoralize that opponent.",
                          summary: "You add piercing damage to the damage types you can deal with your unarmed strikes. Further, you gain a +2 bonus on Intimidate checks to demoralize opponents.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Boar Shred (Combat)",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike, Boar Ferocity, Boar Style, Intimidate 9 ranks.",
                          benefit: "You can make an Intimidate check to demoralize an opponent as a move action. While using Boar Style, whenever you tear an opponent’s flesh, once per round at the start of that opponent’s turn he takes 1d6 bleed damage. The bleed damage dealt while using Boar Style persist even if you later switch to a different style.",
                          summary: "You can make an Intimidate check to demoralize an opponent as a move action.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Boar Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike, Intimidate 3 ranks.",
                          benefit: "You can deal bludgeoning damage or slashing damage with your unarmed strikes—changing damage type is a free action. While using this style, once per round when you hit a single foe with two or more unarmed strikes, you can tear flesh. When you do, you deal 2d6 extra points of damage with the attack.",
                          summary: "You can deal bludgeoning damage or slashing damage with your unarmed strikes—changing damage type is a free action.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Body Shield (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Improved Grapple, Improved Unarmed Strike, base attack bonus +6.",
                          benefit: "As an immediate action while you are grappling an adjacent creature, you can make a grapple combat maneuver check against that creature to gain cover against a single attack. If you are successful and the attack misses you, that attack targets the creature you used as cover, using the same attack roll. You cannot use this feat against a creature grappling you, and the cover you gain ends after the attack you gained cover against is resolved.",
                          summary: "As an immediate action while you are grappling an adjacent creature, you can make a grapple combat maneuver check against that creature to gain cover against a single attack.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Bolstered Resilience",
                          featType: "General",
                          prerequisites: "Damage reduction.",
                          benefit: "As an immediate action, you can double your DR against a single attack, to a maximum of DR 20. The type of the DR remains unchanged. If the attack you are guarding against is not successful, the increased damage reduction persists until you are hit with an attack or until the start of your next turn, whichever happens first. At the start of your next turn, you become fatigued. You cannot use this feat while you are fatigued.",
                          summary: "As an immediate action, you can double your DR against a single attack, to a maximum of DR 20. The type of the DR remains unchanged.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Bonebreaker (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Improved Grapple, Improved Unarmed Strike, Jawbreaker, Stunning Fist, Heal 9 ranks.",
                          benefit: "When you make a successful Stunning Fist attempt against an opponent that is grappled, helpless, or stunned, you can forgo any other Stunning Fist effect to deal 1d6 Strength or Dexterity damage to that opponent.",
                          summary: "When you make a successful Stunning Fist attempt against an opponent that is grappled, helpless, or stunned, you can forgo any other Stunning Fist effect to deal 1d6 Strength or Dexterity damage to…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Branded for Retribution",
                          featType: "General",
                          prerequisites: "Bane class feature.",
                          benefit: "As a standard action, expend 3 rounds of your bane class feature and make a melee touch attack with the weapon affected by bane. If you hit, your target takes no damage but is branded until the start of your next turn. While this brand remains, your allies’ weapons are considered to have the bane ability with which your weapon is imbued when they attack the branded creature.",
                          summary: "As a standard action, expend 3 rounds of your bane class feature and make a melee touch attack with the weapon affected by bane.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Break Guard (Combat)",
                          featType: "General",
                          prerequisites: "Dex 15, Int 13, Combat Expertise, Improved Disarm, Two-Weapon Fighting.",
                          benefit: "While wielding two weapons, whenever you successfully use one weapon to disarm an opponent, you can spend a swift action to attack the opponent you attempted to disarm using your other weapon.",
                          summary: "While wielding two weapons, whenever you successfully use one weapon to disarm an opponent, you can spend a swift action to attack the opponent you attempted to disarm using your other weapon.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Broken Wing Gambit (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Bluff 5 ranks.",
                          benefit: "Whenever you make a melee attack and hit your opponent, you can use a free action to grant that opponent a +2 bonus on attack and damage rolls against you until the end of your next turn or until your opponent attacks you, whichever happens first. If that opponent attacks you with this bonus, it provokes attacks of opportunity from your allies who have this feat.",
                          summary: "Whenever you make a melee attack and hit your opponent, you can use a free action to grant that opponent a +2 bonus on attack and damage rolls against you until the end of your next turn or until…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cartwheel Dodge",
                          featType: "General",
                          prerequisites: "Evasion class feature, improved evasion class feature, acrobatics 12 ranks.",
                          benefit: "When you successfully use improved evasion to avoid taking damage, you can move up to half your speed as an immediate action. This movement provokes attacks of opportunity as normal.",
                          summary: "When you successfully use improved evasion to avoid taking damage, you can move up to half your speed as an immediate action. This movement provokes attacks of opportunity as normal.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cavalry Formation (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Mounted Combat.",
                          benefit: "You and your mount can overlap the space of mounts whose riders have this feat, although no more than two creatures can share any one square. Further, you can charge through a space containing an allied mount if that mount’s rider has this feat, although the space from which you make your charge attack must comply with this feat’s other benefit or be unoccupied.",
                          summary: "You and your mount can overlap the space of mounts whose riders have this feat, although no more than two creatures can share any one square.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Channeled Revival",
                          featType: "General",
                          prerequisites: "Channel energy 6d6 (positive energy).",
                          benefit: "As a full-round action that provokes attacks of opportunity, you can expend three uses of your channel energy class feature to restore a dead creature to life as if you had cast the breath of life spell (Core Rulebook 251).",
                          summary: "As a full-round action that provokes attacks of opportunity, you can expend three uses of your channel energy class feature to restore a dead creature to life as if you had cast the breath of life…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Channeling Scourge",
                          featType: "General",
                          prerequisites: "Channel energy class feature, inquisitor level 1st.",
                          benefit: "When you use channel energy to deal damage, your inquisitor levels count as cleric levels for determining the number of damage dice and the saving throw DC.",
                          summary: "When you use channel energy to deal damage, your inquisitor levels count as cleric levels for determining the number of damage dice and the saving throw DC.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Charging Hurler (Combat)",
                          featType: "General",
                          prerequisites: "Point-Blank Shot.",
                          benefit: "You can use the charge rules to make a thrown weapon attack. All the parameters of a charge apply, except that you must only move closer to your opponent, and you must end your movement within 30 feet of that opponent. If you do, you can make a single thrown weapon attack against that opponent, gaining the +2 bonus on the attack roll and taking a –2 penalty to your AC until the start of your next turn.",
                          summary: "You can use the charge rules to make a thrown weapon attack. All the parameters of a charge apply, except that you must only move closer to your opponent, and you must end your movement within 30…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Chokehold (Combat)",
                          featType: "General",
                          prerequisites: "Improved Grapple, Improved Unarmed Strike, base attack bonus +6 or monk level 5th.",
                          benefit: "While you have an opponent up to one size category larger than you grappled, you can attempt a grapple combat maneuver with a –5 penalty on the check. If you succeed, you have pinned your opponent and hold the opponent in a chokehold. When you maintain the grapple, you also maintain the chokehold. A creature in a chokehold cannot breathe or speak, and thus cannot cast spells that have a verbal component. An opponent you have in a chokehold has to hold his breath or begin suffocating. Any creature that does not breathe, is immune to bleed damage, or is immune to critical hits is immune to the effects of your chokehold. When the grapple is ended, so is the chokehold.",
                          summary: "While you have an opponent up to one size category larger than you grappled, you can attempt a grapple combat maneuver with a –5 penalty on the check.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cleaving Finish (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Cleave, Power Attack.",
                          benefit: "If you make a melee attack, and your target drops to 0 or fewer hit points as a result of your attack, you can make another melee attack using your highest base attack bonus against another opponent within reach. You can make only one extra attack per round with this feat.",
                          summary: "If you make a melee attack, and your target drops to 0 or fewer hit points as a result of your attack, you can make another melee attack using your highest base attack bonus against another opponent…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Close-Quarters Thrower (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Dodge, Weapon Focus with selected thrown weapon.",
                          benefit: "Choose a type of thrown weapon. You do not provoke attacks of opportunity for making ranged attacks using the selected weapon. If you are an alchemist, and you select this feat and choose alchemist bombs, you do not provoke attacks of opportunity for the process of drawing components of, creating, and throwing a bomb.",
                          normal: "Making a ranged attack provokes attacks of opportunity.",
                          summary: "Choose a type of thrown weapon. You do not provoke attacks of opportunity for making ranged attacks using the selected weapon.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Clustered Shots (Combat)",
                          featType: "General",
                          prerequisites: "Point-Blank Shot, Precise Shot, base attack bonus +6.",
                          benefit: "When you use a full-attack action to make multiple ranged weapon attacks against the same opponent, total the damage from all hits before applying that opponent’s damage reduction.",
                          special: "If the massive damage optional rule is being used (Core Rulebook 189), that rule applies if the total damage you deal with this feat is equal to or exceeds half the opponent’s full normal hit points (minimum 50 points of damage).",
                          summary: "When you use a full-attack action to make multiple ranged weapon attacks against the same opponent, total the damage from all hits before applying that opponent’s damage reduction.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Combat Medic (Teamwork)",
                          featType: "General",
                          prerequisites: "Heal 5 ranks.",
                          benefit: "Whenever you use Heal to provide first aid, treat caltrop wounds, or treat poison on an ally who also has this feat, you provoke no attacks of opportunity, and can take 10 on the check. Unlike with other teamwork feats, allies that are paralyzed, stunned, unconscious, or cannot otherwise act still count for the purposes of this feat.",
                          summary: "Whenever you use Heal to provide first aid, treat caltrop wounds, or treat poison on an ally who also has this feat, you provoke no attacks of opportunity, and can take 10 on the check.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Combat Style Master (Combat)",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike, two or more style feats, base attack bonus +6 or monk level 5th.",
                          benefit: "You can switch your style as a free action. At the start of combat, pick one of your styles. You start the combat in that style, even in the surprise round.",
                          normal: "It takes a swift action to begin or switch your styles.",
                          summary: "You can switch your style as a free action. At the start of combat, pick one of your styles. You start the combat in that style, even in the surprise round.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Contingent Channeling",
                          featType: "General",
                          prerequisites: "True healer class feature, Selective Channeling.",
                          benefit: "You can use a standard action to touch an ally and expend one of your daily uses of channel energy to create a repository of positive energy within that ally. This repository contains the same number and type of dice as normal for your channel energy feature, and it lasts for 1 minute. An ally who has such a repository can use an immediate action to roll the repository’s dice and regain a number of hit points equal to the result. If an ally who has such a repository is reduced to negative hit points, the repository triggers, allowing the ally to heal without using an action.",
                          summary: "You can use a standard action to touch an ally and expend one of your daily uses of channel energy to create a repository of positive energy within that ally.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Coordinated Charge (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "You have at least two other teamwork feats, base attack bonus +10.",
                          benefit: "When an ally with this feat charges a creature that is no further away from you than your speed, you can, as an immediate action, charge that creature. You must be able to follow all of the normal charge rules.",
                          summary: "When an ally with this feat charges a creature that is no further away from you than your speed, you can, as an immediate action, charge that creature.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Crane Riposte (Combat)",
                          featType: "General",
                          prerequisites: "Crane Style, Crane Wing, Dodge, Improved Unarmed Strike, base attack bonus +8 or monk level 7th.",
                          benefit: "You take only a –1 penalty on attack rolls for fighting defensively. Whenever you deflect an opponent’s attack using Crane Wing or lose the dodge bonus from Crane Wing because an attack missed you by 4 or less, you can make an attack of opportunity against the attacker after the attack misses.",
                          summary: "You take only a –1 penalty on attack rolls for fighting defensively.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Crane Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Dodge, Improved Unarmed Strike, base attack bonus +2 or monk level 1st.",
                          benefit: "You take only a –2 penalty on attack rolls for fighting defensively. While using this style and fighting defensively or using the total defense action, you gain an additional +1 dodge bonus to your Armor Class.",
                          summary: "You take only a –2 penalty on attack rolls for fighting defensively.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Crane Wing (Combat)",
                          featType: "General",
                          prerequisites: "Crane Style, Dodge, Improved Unarmed Strike, base attack bonus +5 or monk level 5th.",
                          benefit: "When fighting defensively with at least one hand free, you gain a +4 dodge bonus to AC against melee attacks. If a melee attack misses you by 4 or less, you lose this dodge bonus until the beginning of your next turn. If you are using the total defense action instead, you can deflect one melee attack that would normally hit you. An attack so deflected deals no damage and has no other effect (instead treat it as a miss). You do not expend an action when using this feat, but you must be aware of the attack and not flat-footed.",
                          summary: "When fighting defensively with at least one hand free, you gain a +4 dodge bonus to AC against melee attacks.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Crusader's Fist (Combat)",
                          featType: "General",
                          prerequisites: "Lay on hands class feature or touch of corruption class feature, Improved Unarmed Strike, base attack bonus +6.",
                          benefit: "When you attack with an unarmed strike and hit a creature that you can harm with your lay on hands or touch of corruption feature, you can use a swift action to expend a daily use of that feature to deal its normal damage as if you had hit with the feature’s normal touch attack. This extra damage is not multiplied if you scored a critical hit.",
                          summary: "When you attack with an unarmed strike and hit a creature that you can harm with your lay on hands or touch of corruption feature, you can use a swift action to expend a daily use of that feature to…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Crusader's Flurry",
                          featType: "General",
                          prerequisites: "Channel energy class feature, flurry of blows class feature, Weapon Focus with your deity’s favored melee weapon.",
                          benefit: "You can use your deity’s favored weapon as if it were a monk weapon.",
                          summary: "You can use your deity’s favored weapon as if it were a monk weapon.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Crushing Blow (Combat)",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike, Stunning Fist.",
                          benefit: "You can make a Stunning Fist attempt as a full-round action. If successful, instead of stunning your target, you reduce the target’s AC by an amount equal to your Wisdom modifier for 1 minute. This penalty does not stack with other penalties applied due to Crushing Blow.",
                          summary: "You can make a Stunning Fist attempt as a full-round action. If successful, instead of stunning your target, you reduce the target’s AC by an amount equal to your Wisdom modifier for 1 minute.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Deadly Finish (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +11.",
                          benefit: "When you hit with a melee attack and reduce your opponent to –1 or fewer hit points, you can force that opponent to succeed at a Fortitude save (DC 15 + the damage your attack dealt) or die.",
                          summary: "When you hit with a melee attack and reduce your opponent to –1 or fewer hit points, you can force that opponent to succeed at a Fortitude save (DC 15 + the damage your attack dealt) or die.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Death from Above (Combat)",
                          featType: "General",
                          prerequisites: "Death from Above UC .",
                          benefit: "Whenever you charge an opponent from higher ground, or from above while flying, you gain a +5 bonus on attack rolls in place of the bonuses from charging and being on higher ground.",
                          summary: "Whenever you charge an opponent from higher ground, or from above while flying, you gain a +5 bonus on attack rolls in place of the bonuses from charging and being on higher ground.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Death or Glory (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Power Attack, base attack bonus +6.",
                          benefit: "Against a creature of size Large or larger, you can make a single melee attack as a full-round action, gaining a +4 bonus on the attack roll, damage roll, and critical confirmation roll. You gain an additional +1 on this bonus at base attack bonus +11, +16, and +20 (for a maximum of +7 at base attack +20). After you resolve your attack, the opponent you attack can spend an immediate action to make a single melee attack against you with the same bonuses.",
                          special: "You can combine the full-round action attack this feat allows with the benefit of Vital Strike, Improved Vital Strike, or Greater Vital Strike.",
                          summary: "Against a creature of size Large or larger, you can make a single melee attack as a full-round action, gaining a +4 bonus on the attack roll, damage roll, and critical confirmation roll.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Deathless Initiate (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Con 13, orc or half-orc, Diehard, Endurance, base attack bonus +6.",
                          benefit: "You are not staggered while using the Diehard feat, but if you take a move and a standard action or a full-round action while you are at 0 or fewer hit points you take 1 point of damage. Further, while using the Diehard feat, you gain a +2 bonus on melee attacks and damage rolls.",
                          summary: "You are not staggered while using the Diehard feat, but if you take a move and a standard action or a full-round action while you are at 0 or fewer hit points you take 1 point of damage.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Deathless Master (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Con 15, orc or half-orc, Deathless Initiate, Diehard, Endurance, Ironhide, base attack bonus +9.",
                          benefit: "When you are at 0 or fewer hit points, you do not lose 1 hit point when you take an action.",
                          summary: "When you are at 0 or fewer hit points, you do not lose 1 hit point when you take an action.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Deathless Zealot (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Con 17, orc or half-orc, Deathless Initiate, Deathless Master, Diehard, Endurance, Ironhide, base attack bonus +12.",
                          benefit: "Whenever a creature rolls to confirm a critical hit against you, it must roll twice and take the lowest result.",
                          summary: "Whenever a creature rolls to confirm a critical hit against you, it must roll twice and take the lowest result.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Deceptive Exchange",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Improved Feint.",
                          benefit: "If you successfully feint an opponent, you can trick that opponent into accepting a one-handed object you are holding instead of denying that opponent its Dexterity bonus to AC against your next attack. The opponent must have appendages capable of holding the object you offer, and it must have one such appendage free to take the object.",
                          special: "An alchemist who has the delayed bomb alchemist discovery can use this feat to hand an enemy a delayed bomb. Such a delayed bomb detonates at the end of the alchemist’s turn. If the bomb is in a creature’s square at the end of the alchemist’s turn, the bomb deals that creature a direct hit.",
                          summary: "If you successfully feint an opponent, you can trick that opponent into accepting a one-handed object you are holding instead of denying that opponent its Dexterity bonus to AC against your next…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Defensive Weapon Training (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, base attack bonus +5.",
                          benefit: "Choose a weapon group from the fighter’s weapon training class ability list (except natural weapons). You gain a +2 dodge bonus on AC when an opponent attacks you using a weapon from that group. If you also have the weapon training class feature in the selected group, your dodge bonus from this feat increases to +3.",
                          special: "You can select this feat more than once. Its effects do not stack. Each time you select this feat, it applies to a different weapon group.",
                          summary: "Choose a weapon group from the fighter’s weapon training class ability list (except natural weapons). You gain a +2 dodge bonus on AC when an opponent attacks you using a weapon from that group.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Deft Shootist (Grit)",
                          featType: "General",
                          prerequisites: "Grit class feature or Amateur Gunslinger feat, Dodge, Mobility.",
                          benefit: "As long as you have at least 1 grit point, you do not provoke attacks of opportunity when shooting or reloading a firearm.",
                          summary: "As long as you have at least 1 grit point, you do not provoke attacks of opportunity when shooting or reloading a firearm.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Destructive Dispel",
                          featType: "General",
                          prerequisites: "Ability to cast dispel magic or greater dispel magic, caster level 11th.",
                          benefit: "When you successfully make a targeted dispel check against an opponent, that opponent must succeed at a Fortitude save (DC equals the DC of the spell used to dispel) or be stunned until the start of your next turn. If the save succeeds, the opponent is instead sickened until the start of your next turn.",
                          summary: "When you successfully make a targeted dispel check against an opponent, that opponent must succeed at a Fortitude save (DC equals the DC of the spell used to dispel) or be stunned until the start of…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Devastating Strike (Combat)",
                          featType: "General",
                          prerequisites: "Vital Strike, base attack bonus +9.",
                          benefit: "Whenever you use Vital Strike, Improved Vital Strike, or Greater Vital Strike, you gain a +2 bonus on each extra weapon damage dice roll those feats grant (+6 maximum). This bonus damage is multiplied on a critical hit.",
                          summary: "Whenever you use Vital Strike, Improved Vital Strike, or Greater Vital Strike, you gain a +2 bonus on each extra weapon damage dice roll those feats grant (+6 maximum).",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dimensional Agility",
                          featType: "General",
                          prerequisites: "Ability to use the abundant step class feature or cast dimension door.",
                          benefit: "After using abundant step or casting dimension door, you can take any actions you still have remaining on your turn. You also gain a +4 bonus on Concentration checks when casting teleportation spells.",
                          summary: "After using abundant step or casting dimension door, you can take any actions you still have remaining on your turn. You also gain a +4 bonus on Concentration checks when casting teleportation spells.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dimensional Assault",
                          featType: "General",
                          prerequisites: "Ability to use the abundant step class feature or cast dimension door, Dimensional Agility.",
                          benefit: "As a full-round action, you use abundant step or cast dimension door as a special charge. Doing so allows you to teleport up to double your current speed (up to the maximum distance allowed by the spell or ability) and to make the attack normally allowed on a charge.",
                          summary: "As a full-round action, you use abundant step or cast dimension door as a special charge.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dimensional Dervish",
                          featType: "General",
                          prerequisites: "Ability to use the abundant step class feature or cast dimension door, Dimensional Agility, Dimensional Assault, base attack bonus +6.",
                          benefit: "You can take a full-attack action, activating abundant step or casting dimension door as a swift action. If your do, you can teleport up to twice your speed (up to the maximum distance allowed by the spell or ability), dividing this teleportation into increments you use before your first attack, between each attack, and after your last attack. You must teleport at least 5 feet each time you teleport.",
                          special: "A monk can use additional points from his ki pool to increase his speed before determining the total speed for this teleportation.",
                          summary: "You can take a full-attack action, activating abundant step or casting dimension door as a swift action.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dimensional Maneuvers",
                          featType: "General",
                          prerequisites: "Ability to use the abundant step class feature or cast dimension door, Dimensional Agility, Dimensional Assault, Dimensional Dervish, base attack bonus +9.",
                          benefit: "While using the Dimensional Dervish feat, you gain a +4 bonus on combat maneuver checks to bull rush, disarm, reposition, or trip an opponent.",
                          summary: "While using the Dimensional Dervish feat, you gain a +4 bonus on combat maneuver checks to bull rush, disarm, reposition, or trip an opponent.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dimensional Savant",
                          featType: "General",
                          prerequisites: "Dimensional Agility, Dimensional Assault, Dimensional Dervish, ability to use the abundant step class feature or cast dimension door, base attack bonus +9.",
                          benefit: "While using the Dimensional Dervish feat, you provide flanking from all squares you attack from. Flanking starts from the moment you make an attack until the start of your next turn. You can effectively flank with yourself and with multiple allies when using this feat.",
                          summary: "While using the Dimensional Dervish feat, you provide flanking from all squares you attack from. Flanking starts from the moment you make an attack until the start of your next turn.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Discordant Voice",
                          featType: "General",
                          prerequisites: "Bardic performance class feature, Perform (oratory or sing) 10 ranks.",
                          benefit: "Whenever you are using bardic performance to create a spell-like or supernatural effect, allies within 30 feet of you deal an extra 1d6 points of sonic damage with successful weapon attacks. This damage stacks with other energy damage a weapon might deal. Projectile weapons bestow this extra damage on their ammunition, but the extra damage is dealt only if the projectile hits a target within 30 feet of you.",
                          summary: "Whenever you are using bardic performance to create a spell-like or supernatural effect, allies within 30 feet of you deal an extra 1d6 points of sonic damage with successful weapon attacks.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Disengaging Feint (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Improved Feint.",
                          benefit: "As a standard action, use Bluff to feint against an opponent. Instead of denying that opponent his Dexterity bonus to AC, a successful feint allows you to move up to your speed without provoking an attack of opportunity from the opponent you feinted for leaving the square you start in.",
                          summary: "As a standard action, use Bluff to feint against an opponent. Instead of denying that opponent his Dexterity bonus to AC, a successful feint allows you to move up to your speed without provoking an…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Disengaging Flourish (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Disengaging Feint, Improved Feint.",
                          benefit: "As a standard action, make a Bluff check against each opponent that currently threatens you. If you succeed against at least one opponent, you can move up to your speed. This movement does not provoke attacks of opportunity from any opponent you succeeded at feinting against.",
                          summary: "As a standard action, make a Bluff check against each opponent that currently threatens you. If you succeed against at least one opponent, you can move up to your speed.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Disengaging Shot (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Disengaging Feint, Dodge, Improved Feint, Mobility.",
                          benefit: "Whenever you use Disengaging Feint or Disengaging Flourish, you can make a single melee attack against one opponent you succeeded at feinting against. That opponent is denied his Dexterity bonus to AC against this attack.",
                          summary: "Whenever you use Disengaging Feint or Disengaging Flourish, you can make a single melee attack against one opponent you succeeded at feinting against.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Disorienting Maneuver",
                          featType: "General",
                          prerequisites: "Dodge, Acrobatics 5 ranks.",
                          benefit: "If you successfully use Acrobatics to tumble through an opponent’s space, you gain a +2 circumstance bonus on attack rolls against that opponent until the start of your next turn. If you choose to make a trip attempt against that opponent, you gain a +4 circumstance bonus on your combat maneuver check. This bonus on trip also lasts until the start of your next turn.",
                          summary: "If you successfully use Acrobatics to tumble through an opponent’s space, you gain a +2 circumstance bonus on attack rolls against that opponent until the start of your next turn.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dispel Synergy",
                          featType: "General",
                          prerequisites: "Spellcraft 5 ranks.",
                          benefit: "If you successfully dispel an ongoing magical effect on an opponent, that opponent takes a –2 penalty on saving throws against your spells until the end of your next turn.",
                          summary: "If you successfully dispel an ongoing magical effect on an opponent, that opponent takes a –2 penalty on saving throws against your spells until the end of your next turn.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dispelling Critical (Critical)",
                          featType: "General",
                          prerequisites: "Arcane Strike, base attack bonus +11, ability to cast dispel magic.",
                          benefit: "If you have dispel magic prepared or can cast it spontaneously, when you score a critical hit against an opponent, you may use a swift action to cast dispel magic to make a targeted dispel against that opponent.",
                          summary: "If you have dispel magic prepared or can cast it spontaneously, when you score a critical hit against an opponent, you may use a swift action to cast dispel magic to make a targeted dispel against…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dispelling Fist",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike, base attack bonus +11, ability to cast dispel magic, caster level 7th.",
                          benefit: "If you have dispel magic prepared or can cast it spontaneously, you can cast it as a swift action after hitting an opponent with an unarmed strike. Treat this as a targeted dispel against the opponent you hit.",
                          summary: "If you have dispel magic prepared or can cast it spontaneously, you can cast it as a swift action after hitting an opponent with an unarmed strike.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Disposable Weapon",
                          featType: "General",
                          prerequisites: "Base attack bonus +1, proficient with weapon.",
                          benefit: "Whenever you use a melee or thrown weapon with the fragile weapon special quality to score a critical threat against an opponent, you can give your weapon the broken condition to automatically confirm the critical hit.",
                          summary: "Whenever you use a melee or thrown weapon with the fragile weapon special quality to score a critical threat against an opponent, you can give your weapon the broken condition to automatically…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Disruptive Recall",
                          featType: "General",
                          prerequisites: "Spell recall class feature, Spellcraft 5 ranks.",
                          benefit: "When you use a melee attack to successfully disrupt an arcane spellcaster’s spell, you can immediately use your spell recall class feature to regain a magus spell you have already cast. This ability functions as if you had expended a number of points from your arcane pool equal to the level of the spell you disrupted, up to the maximum level spell you can cast.",
                          summary: "When you use a melee attack to successfully disrupt an arcane spellcaster’s spell, you can immediately use your spell recall class feature to regain a magus spell you have already cast.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Distance Thrower (Combat)",
                          featType: "General",
                          prerequisites: "Str 13.",
                          benefit: "With a thrown weapon, you reduce your penalty on ranged attack rolls due to range by 2.",
                          summary: "With a thrown weapon, you reduce your penalty on ranged attack rolls due to range by 2.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Djinni Spin (Combat)",
                          featType: "General",
                          prerequisites: "Con 15, Wis 17, Djinni Style, Djinni Spirit, Elemental Fist, Improved Unarmed Strike, base attack bonus +13 or monk level 11th.",
                          benefit: "While using Djinni Style, as a standard action you can spend two Elemental Fist (Advanced Player’s Guide 158) attempts to surround yourself with a whirlwind of electrified air. Creatures adjacent to you take your unarmed strike damage plus the electricity damage from your Elemental Fist and are deafened for 1d4 rounds. A successful Fortitude save (DC 10 + 1/2 your character level + your Wis modifier) reduces the damage by half and prevents a target from being deafened.",
                          summary: "While using Djinni Style, as a standard action you can spend two Elemental Fist (Advanced Player’s Guide 158) attempts to surround yourself with a whirlwind of electrified air.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Djinni Spirit (Combat)",
                          featType: "General",
                          prerequisites: "Con 15, Wis 15, Djinni Style, Elemental Fist, Improved Unarmed Strike, base attack bonus +11 or monk level 9th.",
                          benefit: "You gain one additional Elemental Fist (Advanced Player’s Guide 158) attempt per day. While using Djinni Style, you gain electricity resistance equal to your base attack bonus or monk level, whichever is higher. While denied your Dexterity bonus to AC you are also denied this resistance. Creatures that take electricity damage from your Elemental Fist attack must succeed at a Fortitude save (DC 10 + 1/2 your character level + your Wis modifier) or be deafened for 1d4 rounds. Those who take damage from your Djinni Spin are deafened, even on a successful saving throw.",
                          summary: "You gain one additional Elemental Fist (Advanced Player’s Guide 158) attempt per day.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Djinni Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Con 13, Wis 15, Elemental Fist, Improved Unarmed Strike, base attack bonus +9 or monk level 5th.",
                          benefit: "You gain one additional Elemental Fist (Advanced Player’s Guide 158) attempt per day. While you are in this style you must use Elemental Fist to deal electricity damage and you gain a bonus on electricity damage rolls equal to your Wisdom bonus. Further, while you are using this style and have remaining Elemental Fist attempts, you also gain a +2 dodge bonus to Armor Class against attacks of opportunity. A condition that makes you lose your Dexterity bonus to AC also makes you lose this dodge bonus.",
                          summary: "You gain one additional Elemental Fist (Advanced Player’s Guide 158) attempt per day.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Domain Strike (Combat)",
                          featType: "General",
                          prerequisites: "Domain class feature, Improved Unarmed Strike.",
                          benefit: "When you gain this feat, choose one domain-granted power that you can use to affect no more than one opponent. If you make a successful unarmed strike against an opponent, in addition to dealing your unarmed strike damage, you can use a swift action to deliver the effects of the chosen granted power to that opponent. Doing so provokes no attacks of opportunity.",
                          special: "You can take this feat multiple times. Each time you take it, you apply it to a different qualifying domain power.",
                          summary: "When you gain this feat, choose one domain-granted power that you can use to affect no more than one opponent.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Double Bane",
                          featType: "General",
                          prerequisites: "Bane class feature, Two-Weapon Fighting.",
                          benefit: "You can apply your bane to a second weapon you are wielding. While your bane class feature is active, at the start of each of your turns as a free action, you choose whether to apply the ability to one weapon or the other, or both. For each round you apply your bane class feature to two weapons, you expend 2 rounds of that feature.",
                          summary: "You can apply your bane to a second weapon you are wielding. While your bane class feature is active, at the start of each of your turns as a free action, you choose whether to apply the ability to…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Drag Down (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Improved Trip.",
                          benefit: "Whenever an opponent successfully trips you, you can attempt to trip that opponent as an immediate action.",
                          summary: "Whenever an opponent successfully trips you, you can attempt to trip that opponent as an immediate action.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dragon Ferocity (Combat)",
                          featType: "General",
                          prerequisites: "Str 15, Improved Unarmed Strike, Dragon Style, Stunning Fist, Acrobatics 5 ranks.",
                          benefit: "While using Dragon Style, increase your Strength bonus on unarmed strike damage rolls by an additional one-half your Strength bonus, to a total of double your Strength bonus on the first attack and 1-1/2 times your Strength bonus on the other attacks. When you score a critical hit or a successful Stunning Fist attempt against an opponent while using this style, that opponent is also shaken for a number of rounds equal to 1d4 + your Strength bonus.",
                          special: "Taking this feat allows you to qualify for the Elemental Fist feat (Advanced Player’s Guide 158) even if you do not meet that feat’s prerequisites. If you do not meet that feat’s prerequisites, you must choose one of the damage types that feat offers, and you can use only that damage type with your Elemental Fist attacks until you meet the feat’s normal prerequisites. A monk with this feat can use Elemental Fist as if he were a monk of the four winds (Advanced Player’s Guide 112).",
                          summary: "While using Dragon Style, increase your Strength bonus on unarmed strike damage rolls by an additional one-half your Strength bonus, to a total of double your Strength bonus on the first attack and…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dragon Roar (Combat)",
                          featType: "General",
                          prerequisites: "Str 15, Improved Unarmed Strike, Dragon Style, Stunning Fist, Acrobatics 8 ranks.",
                          benefit: "You gain one additional Stunning Fist attempt per day. While using Dragon Style, as a standard action you can expend two Stunning Fist attempts to unleash a concussive roar in a 15-foot cone. Creatures caught in the cone take your unarmed strike damage and become shaken for 1d4 rounds. A successful Will save (DC 10 + 1/2 your character level + your Wis modifier) reduces the damage by half and prevents a target from being shaken.",
                          special: "If you have the Elemental Fist feat (Advanced Player’s Guide 158), you can expend a daily use of that feat to deal your Elemental Fist damage to those caught in the cone. This damage is not halved even on a save.",
                          summary: "You gain one additional Stunning Fist attempt per day. While using Dragon Style, as a standard action you can expend two Stunning Fist attempts to unleash a concussive roar in a 15-foot cone.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dragon Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Str 15, Improved Unarmed Strike, Acrobatics 3 ranks.",
                          benefit: "While using this style, you gain a +2 bonus on saving throws against sleep effects, paralysis effects, and stunning effects. You ignore difficult terrain when you charge, run, or withdraw. You can also charge through squares that contain allies. Further, you can add 1-1/2 times your Strength bonus on the damage roll for your first unarmed strike on a given round.",
                          normal: "You cannot charge or run through difficult terrain, and you cannot charge through a square that contains an ally. With an unarmed strike, you usually add your Strength bonus on damage rolls.",
                          summary: "While using this style, you gain a +2 bonus on saving throws against sleep effects, paralysis effects, and stunning effects. You ignore difficult terrain when you charge, run, or withdraw.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dramatic Display (Combat, Performance)",
                          featType: "General",
                          prerequisites: "Dazzling Display.",
                          benefit: "When you spend a swift action to make a performance check, you exude an aura of awe-inspiring skill. You gain a +2 bonus on your performance check, and gain a +2 bonus on all attack rolls and combat maneuver checks until the end of your next turn.",
                          summary: "When you spend a swift action to make a performance check, you exude an aura of awe-inspiring skill.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Earth Child Binder (Combat)",
                          featType: "General",
                          prerequisites: "Wis 13, dwarf or gnome, defensive training racial trait, Earth Child Style, Earth Child Topple, Greater Trip, Improved Trip, Improved Unarmed Strike, Stunning Fist, Acrobatics 9 ranks.",
                          benefit: "You can trip a creature of the giant subtype no matter its size. While you are using Earth Child Style, when a prone creature of the giant subtype stands up and provokes an attack of opportunity from you, if you make an unarmed strike, you can declare you are making a Stunning Fist attempt after the attack hits. You gain a +4 bonus to the DC of any Stunning Fist effect you deliver in this way.",
                          normal: "You can only trip opponents who are one size category larger than you.",
                          summary: "You can trip a creature of the giant subtype no matter its size.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Earth Child Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Wis 13, dwarf or gnome, defensive training racial trait, Improved Unarmed Strike, Acrobatics 3 ranks.",
                          benefit: "While using this style, your defensive training dodge bonus to AC increases to +6. Further, against creatures of the giant subtype, you can add your Wisdom bonus on your unarmed strike damage rolls.",
                          summary: "While using this style, your defensive training dodge bonus to AC increases to +6. Further, against creatures of the giant subtype, you can add your Wisdom bonus on your unarmed strike damage rolls.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Earth Child Topple (Combat)",
                          featType: "General",
                          prerequisites: "Wis 13, dwarf or gnome, defensive training racial trait, Earth Child Style, Improved Trip, Improved Unarmed Strike, Acrobatics 6 ranks.",
                          benefit: "You can trip a creature of the giant subtype of up to Huge size. While using Earth Child Style, you add your Wisdom bonus on combat maneuver checks made to trip a creature of the giant subtype, as well as on attack rolls to confirm a critical hit against such a creature.",
                          normal: "You can trip only those opponents that are one size category larger than you.",
                          summary: "You can trip a creature of the giant subtype of up to Huge size.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Efreeti Stance (Combat)",
                          featType: "General",
                          prerequisites: "Con 15, Wis 15, Efreeti Style, Elemental Fist, Improved Unarmed Strike, base attack bonus +11 or monk level 9th.",
                          benefit: "You gain one additional Elemental Fist (Advanced Player’s Guide 158) attempt per day. While using Efreeti Style, you gain fire resistance equal to your base attack bonus or your monk level plus any base attack bonus gained from levels in classes other than monk, whichever is higher. While denied your Dexterity bonus to AC you are also denied this resistance. Creatures that take fire damage from your Elemental Fist attack must succeed at a Reflex save (DC 10 + 1/2 your character level + your Wis modifier) or catch on fire.",
                          summary: "You gain one additional Elemental Fist (Advanced Player’s Guide 158) attempt per day.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Efreeti Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Con 13, Wis 15, Elemental Fist, Improved Unarmed Strike, base attack bonus +9 or monk level 5th.",
                          benefit: "You gain one additional Elemental Fist (Advanced Player’s Guide 158) attempt per day. While using this style and Elemental Fist to deal fire damage, you gain a bonus on fire damage rolls equal to your Wisdom bonus. Further, if your Elemental Fist melee attack misses while you are using it to deal fire damage, you still deal 1d6 points of fire damage to your target.",
                          summary: "You gain one additional Elemental Fist (Advanced Player’s Guide 158) attempt per day.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Efreeti Touch (Combat)",
                          featType: "General",
                          prerequisites: "Con 15, Wis 17, Efreeti Style, Efreeti Stance, Elemental Fist, Improved Unarmed Strike, base attack bonus +13 or monk level 11th.",
                          benefit: "While using Efreeti Style, as a standard action, you can spend two Elemental Fist (Advanced Player’s Guide 158) attempts to unleash a 15-foot cone-shaped burst of flame. Creatures caught in the cone take your unarmed strike damage plus the fire damage from your Elemental Fist and catch on fire. A successful Reflex save (DC 10 + 1/2 your character level + your Wis modifier) reduces the damage by half and prevents a target from catching on fire.",
                          summary: "While using Efreeti Style, as a standard action, you can spend two Elemental Fist (Advanced Player’s Guide 158) attempts to unleash a 15-foot cone-shaped burst of flame.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Elusive Redirection",
                          featType: "General",
                          prerequisites: "Elusive target class feature, Combat Expertise, Improved Unarmed Strike, flowing monk level 12th.",
                          benefit: "When you successfully use your elusive target class feature to avoid taking damage, you can spend an immediate action and an additional point from your ki pool to redirect that attack back at your attacker or toward any other opponent adjacent to you and your attacker. This attack uses the same attack roll as the original attack, but it targets the opponent you choose.",
                          summary: "When you successfully use your elusive target class feature to avoid taking damage, you can spend an immediate action and an additional point from your ki pool to redirect that attack back at your…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Enfilading Fire (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Point-Blank Shot, Precise Shot, one other teamwork feat.",
                          benefit: "You receive a +2 bonus on ranged attacks made against a foe flanked by 1 or more allies with this feat.",
                          summary: "You receive a +2 bonus on ranged attacks made against a foe flanked by 1 or more allies with this feat.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Escape Route (Teamwork)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "An ally who also has this feat provokes no attacks of opportunity for moving through squares adjacent to you or within your space.",
                          summary: "An ally who also has this feat provokes no attacks of opportunity for moving through squares adjacent to you or within your space.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Expert Driver",
                          featType: "General",
                          prerequisites: "Skilled Driver with the selected vehicle type.",
                          benefit: "You can make an accelerate, decelerate, or turn action as a move action instead of a standard action. Furthermore, when stopping a vehicle, you subtract 10 feet from the roll to determine how many feet the vehicle moves forward before it stops.",
                          summary: "You can make an accelerate, decelerate, or turn action as a move action instead of a standard action.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Bane",
                          featType: "General",
                          prerequisites: "Bane class feature.",
                          benefit: "You can use your bane ability for 3 additional rounds per day.",
                          summary: "You can use your bane ability for 3 additional rounds per day.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Grit (Grit)",
                          featType: "General",
                          prerequisites: "Grit class feature or the Amateur Gunslinger feat.",
                          benefit: "You gain 2 extra grit points at the start of each day, and your maximum grit increases by 2.",
                          normal: "If you are a gunslinger, you gain your Wisdom modifier in grit points at the start of each day, which is also your maximum grit. If you have the Amateur Gunslinger feat, you gain 1 grit point at the start of each day, and your maximum grit is equal to your Wisdom modifier.",
                          special: "If you possess levels in the gunslinger class, you can take this feat multiple times.",
                          summary: "You gain 2 extra grit points at the start of each day, and your maximum grit increases by 2.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("False Opening (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Dodge, Close Quarters Thrower or Point-Blank Master, Weapon Focus with selected ranged weapon.",
                          benefit: "Choose a ranged weapon or a thrown weapon. When you make a ranged attack using that weapon, you can choose to provoke an attack of opportunity from one or more opponents who threaten you. You gain a +4 dodge bonus against such attacks. An opponent that makes such an attack and misses you loses his Dexterity bonus to AC against you until the end of your turn.",
                          summary: "Choose a ranged weapon or a thrown weapon. When you make a ranged attack using that weapon, you can choose to provoke an attack of opportunity from one or more opponents who threaten you.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Feint Partner (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Bluff 1 rank.",
                          benefit: "Whenever an ally who also has this feat successfully feints an opponent, that opponent also loses his Dexterity bonus to AC against the next attack you make against him before the end of the feinting ally’s next turn.",
                          summary: "Whenever an ally who also has this feat successfully feints an opponent, that opponent also loses his Dexterity bonus to AC against the next attack you make against him before the end of the feinting…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Felling Escape (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Improved Trip.",
                          benefit: "When you break an opponent’s grapple with a combat maneuver check or Escape Artist check, you can spend a swift action to make a trip attempt against that opponent.",
                          summary: "When you break an opponent’s grapple with a combat maneuver check or Escape Artist check, you can spend a swift action to make a trip attempt against that opponent.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Felling Smash (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Str 13, Combat Expertise, Improved Trip, Power Attack, base attack bonus +6.",
                          benefit: "If you use the attack action to make a single melee attack at your highest base attack bonus while using Power Attack and you hit an opponent, you can spend a swift action to attempt a trip combat maneuver against that opponent.",
                          summary: "If you use the attack action to make a single melee attack at your highest base attack bonus while using Power Attack and you hit an opponent, you can spend a swift action to attempt a trip combat…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Feral Combat Training (Combat)",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike, Weapon Focus with selected natural weapon.",
                          benefit: "Choose one of your natural weapons. While using the selected natural weapon, you can apply the effects of feats that have Improved Unarmed Strike as a prerequisite.",
                          special: "If you are a monk, you can use the selected natural weapon with your flurry of blows class feature.",
                          summary: "Choose one of your natural weapons. While using the selected natural weapon, you can apply the effects of feats that have Improved Unarmed Strike as a prerequisite.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Field Repair",
                          featType: "General",
                          prerequisites: "Craft 4 ranks.",
                          benefit: "If you are trained in a Craft skill appropriate to a broken item, you can repair that item with no raw material cost and no penalty on your Craft skill check for using improvised tools. If you spend a day, the item regains 1 hit point plus one-quarter of its original hit points. Alternatively, if the item gained the broken condition because it is a firearm that has misfired or a siege engine that suffered a mishap, or has the broken condition because it has the fragile weapon quality (or some similar quality), you can make a Craft check with the DC it takes to craft that item (see Table 2–2, below). If the check succeeds, the item loses the broken condition.",
                          normal: "Improvised tools impose a –2 penalty on Craft checks. Items require raw materials to repair. Item Craft Skill Craft DC A weapon with the fragile special quality Weapon or Bow Normal DC –5 One-handed firearm Firearm 20 Two-handed firearm Firearm 20 Siege firearm, heavy Firearm 25 Siege firearm, medium Firearm 30 Siege firearm, light Firearm 35 Ranged siege engine, heavy Siege Engine 20 Ranged siege engine, medium Siege Engine 25",
                          summary: "If you are trained in a Craft skill appropriate to a broken item, you can repair that item with no raw material cost and no penalty on your Craft skill check for using improvised tools.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Final Embrace (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Int 3; naga, serpentfolk, or creature that has the constrict special attack as a racial ability; base attack bonus +3.",
                          benefit: "You gain the constrict and grab special attacks. Your constrict attack deals damage equal to your unarmed strike or primary natural weapon melee attack. Further, you can grab and constrict opponents up to your size.",
                          normal: "You can grab and constrict creatures one size smaller than you.",
                          summary: "You gain the constrict and grab special attacks. Your constrict attack deals damage equal to your unarmed strike or primary natural weapon melee attack.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Final Embrace Horror (Combat)",
                          featType: "General",
                          prerequisites: "Str 15, Int 3; naga, serpentfolk, or creature that has the constrict special attack; Final Embrace; base attack bonus +6.",
                          benefit: "A creature that takes damage from your constrict attack is also shaken until the start of your next turn.",
                          summary: "A creature that takes damage from your constrict attack is also shaken until the start of your next turn.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Final Embrace Master (Combat)",
                          featType: "General",
                          prerequisites: "Str 17, Int 3; naga, serpentfolk, or creature that has the constrict special attack; Final Embrace; Final Embrace Horror; base attack bonus +9.",
                          benefit: "Double the number of damage dice for your constrict special attack.",
                          summary: "Double the number of damage dice for your constrict special attack.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Flanking Foil (Combat)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Whenever you hit an adjacent opponent with a melee attack, until the start of your next turn, that opponent does not gain any flanking bonus on attack rolls while it is flanking you and cannot deal sneak attack damage to you. It can still provide a flank for its allies.",
                          summary: "Whenever you hit an adjacent opponent with a melee attack, until the start of your next turn, that opponent does not gain any flanking bonus on attack rolls while it is flanking you and cannot deal…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fortified Armor Training (Combat)",
                          featType: "General",
                          prerequisites: "Proficient with armor or shield.",
                          benefit: "If an opponent scores a critical hit against you, you can turn the critical hit into a normal hit. If you do, either your armor or your shield gains the broken condition (your choice).",
                          summary: "If an opponent scores a critical hit against you, you can turn the critical hit into a normal hit. If you do, either your armor or your shield gains the broken condition (your choice).",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Furious Finish",
                          featType: "General",
                          prerequisites: "Rage class feature, Vital Strike, base attack bonus +6.",
                          benefit: "While raging, when you use the Vital Strike feat, you can choose not to roll your damage dice and instead deal damage equal to the maximum roll possible on those damage dice. If you do, your rage immediately ends, and you are fatigued (even if you would not normally be).",
                          summary: "While raging, when you use the Vital Strike feat, you can choose not to roll your damage dice and instead deal damage equal to the maximum roll possible on those damage dice.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Gory Finish (Combat)",
                          featType: "General",
                          prerequisites: "Dazzling Display, Weapon Focus.",
                          benefit: "When you use the attack action, you can use a weapon with which you have Weapon Focus to make a single attack at your highest base attack bonus. If you reduce your target to negative hit points, you can spend a swift action to make an Intimidate check to demoralize all foes within 30 feet who could see your attack.",
                          summary: "When you use the attack action, you can use a weapon with which you have Weapon Focus to make a single attack at your highest base attack bonus.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Called Shot (Called Shot)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Improved Called Shot, base attack bonus +6.",
                          benefit: "Whenever you make an attack, you can choose to replace that attack with a called shot. You can make multiple called shots in a single round. Each additional called shot after the first made in the same round takes a –5 penalty. In addition, a called shot that deals half the creature’s hit points of damage (minimum 40) is a debilitating blow.",
                          normal: "You can make only one called shot in a round as a full-round action. A called shot that deals 50 points of damage is a debilitating blow.",
                          summary: "Whenever you make an attack, you can choose to replace that attack with a called shot. You can make multiple called shots in a single round.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Channel Smite",
                          featType: "General",
                          prerequisites: "Channel energy class feature, Channel Smite, base attack bonus +8.",
                          benefit: "Before making any melee attacks on your turn, you can use a swift action to expend one daily use of your channel energy class feature. The dice from your channel energy feature form a pool of damage dice you can access to further damage creatures normally harmed by the energy you are channeling—undead for positive energy, living creatures for negative energy. Prior to making each melee attack, allocate dice from the pool to be used as extra damage dice if you hit. Your target can make a Will save, as normal, to halve this extra damage. This extra damage is not multiplied when you score a critical hit. If you miss, the extra damage dice remain in your pool, but any dice left unexpended at the end of your turn are wasted.",
                          summary: "Before making any melee attacks on your turn, you can use a swift action to expend one daily use of your channel energy class feature.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Rending Fury (Combat)",
                          featType: "General",
                          prerequisites: "Improved Rending Fury, Rending Fury, base attack bonus +12, rend special attack.",
                          benefit: "Whenever you rend an opponent, you deal 1d6 bleed damage to that opponent. This is an addition to the effects of the rend.",
                          summary: "Whenever you rend an opponent, you deal 1d6 bleed damage to that opponent. This is an addition to the effects of the rend.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Snap Shot (Combat)",
                          featType: "General",
                          prerequisites: "Dex 17, Improved Snap Shot, Point-Blank Shot, Rapid Shot, Snap Shot, base attack bonus +12.",
                          benefit: "Whenever you make an attack of opportunity using a ranged weapon and hit, you gain a +2 bonus on the damage roll and a +2 bonus on rolls to confirm a critical hit with that attack. These bonuses increase to +4 when you have base attack bonus +16, and to +6 when you have base attack bonus +20.",
                          summary: "Whenever you make an attack of opportunity using a ranged weapon and hit, you gain a +2 bonus on the damage roll and a +2 bonus on rolls to confirm a critical hit with that attack.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Whip Mastery (Combat)",
                          featType: "General",
                          prerequisites: "Improved Whip Mastery, Weapon Focus (whip), Whip Mastery, base attack bonus +8.",
                          benefit: "You are so quick with your whip that you never drop it due to a failed disarm or trip combat maneuver attempt. Further, you gain the ability to grapple using your whip. To do so, use the normal grapple rules with the following changes. Attack: You cannot use your whip to attack while you are using it to grapple an opponent. Damage: When dealing damage to your grappled opponent, you deal your whip’s weapon damage rather than your unarmed strike damage. Free Hands: You take no penalty on your combat maneuver check for having fewer than two hands free when you use your whip to grapple. Reach: Rather than pulling your grappled opponent adjacent to you when you successfully grapple and when you move the grapple, you must keep him within your whip’s reach minus his own reach to maintain the grapple. If the difference in reach is less than 0, such as is the case for a Medium whip wielder and a Gargantuan creature, you cannot grapple that opponent with your whip. If you have to pull a creature adjacent to you to grapple it with your whip, you still provoke an attack of opportunity from that opponent unless you have the Improved Grapple feat. Tie Up: While adjacent to your opponent, you can attempt to use your whip to tie him up. If you do so to an opponent you have grappled rather than pinned, you take only a –5 penalty on the combat maneuver check rather than the normal –10.",
                          summary: "You are so quick with your whip that you never drop it due to a failed disarm or trip combat maneuver attempt. Further, you gain the ability to grapple using your whip.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Guided Hand",
                          featType: "General",
                          prerequisites: "Channel energy class feature, Channel Smite, proficiency with your deity’s favored weapon.",
                          benefit: "With your deity’s favored weapon, you can use your Wisdom modifier instead of your Strength or Dexterity modifier on attack rolls.",
                          summary: "With your deity’s favored weapon, you can use your Wisdom modifier instead of your Strength or Dexterity modifier on attack rolls.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Gunsmithing",
                          featType: "General",
                          prerequisites: "",
                          benefit: "If you have access to a gunsmith’s kit, you can create and restore firearms, craft bullets, and mix black powder for all types of firearms. You do not need to make a Craft check to create firearms and ammunition or to restore firearms. Crafting Firearms: You can craft any early firearm for a cost in raw materials equal to half the price of the firearm. At your GM’s discretion, you can craft advanced firearms for a cost in raw materials equal to half the price of the firearm. Crafting a firearm in this way takes 1 day of work for every 1,000 gp of the firearm’s price (minimum 1 day). Crafting Ammunition: You can craft bullets, pellets, and black powder for a cost in raw materials equal to 10% of the price. If you have at least 1 rank in Craft (alchemy), you can craft alchemical cartridges for a cost in raw materials equal to half the price of the cartridge. At your GM’s discretion, you can craft metal cartridges for a cost in raw materials equal to half the cost of the cartridge. Crafting bullets, black powder, or cartridges takes 1 day of work for every 1,000 gp of ammunition (minimum 1 day). Restoring a Broken Firearm: Each day, with an hour’s worth of work, you can use this feat to repair a single firearm with the broken condition. You can take time during a rest period to restore a broken firearm with this feat.",
                          special: "If you are a gunslinger, this feat grants the following additional benefit. You can use this feat to repair and restore your initial, battered weapon. It costs 300 gp and 1 day of work to upgrade it to a masterwork firearm of its type.",
                          summary: "If you have access to a gunsmith’s kit, you can create and restore firearms, craft bullets, and mix black powder for all types of firearms.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Hammer the Gap (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +6.",
                          benefit: "When you take a full-attack action, each consecutive hit against the same opponent deals extra damage equal to the number of previous consecutive hits you have made against that opponent this turn. This damage is multiplied on a critical hit.",
                          summary: "When you take a full-attack action, each consecutive hit against the same opponent deals extra damage equal to the number of previous consecutive hits you have made against that opponent this turn.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Harmonic Sage",
                          featType: "General",
                          prerequisites: "Bardic performance class feature, Knowledge (engineering) 5 ranks.",
                          benefit: "While inside an artificial structure, you can spend a free action to make a DC 15 Knowledge (engineering) check when you begin your bardic performance. Success on this check allows you to do one of the following. Self-Harmonize: By performing over the acoustic reverberations of your performance, you increase the DC of your bardic performance effects +1. Reverberation: You can choose to have the effect of your current bardic performance continue for 1 round after you cease maintaining it, regardless of why you cease maintaining it. You can still have no more than one bardic performance in effect at one time.",
                          normal: "A bardic performance lasts only as long as you maintain it.",
                          summary: "While inside an artificial structure, you can spend a free action to make a DC 15 Knowledge (engineering) check when you begin your bardic performance.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Haunted Gnome (Combat)",
                          featType: "General",
                          prerequisites: "Cha 13, gnome magic racial trait, Knowledge (arcana) 1 rank.",
                          benefit: "You add haunted fey aspect (page 230) to your list of gnome magic spell-like abilities, and you can use this spell-like ability twice per day.",
                          summary: "You add haunted fey aspect (page 230) to your list of gnome magic spell-like abilities, and you can use this spell-like ability twice per day.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Haunted Gnome Assault (Combat)",
                          featType: "General",
                          prerequisites: "Cha 13, gnome magic racial trait, Haunted Gnome, Knowledge (arcana) 3 ranks.",
                          benefit: "You gain one use of your gnome magic that is independent of your gnome magic spell-like abilities. When you wish to cast a gnome magic spell-like ability for which you have no daily uses remaining, you can expend this independent use to do so. Further, while you are under the effect of haunted fey aspect (page 230), you can discharge that spell as a free action after you hit an opponent with a charge attack or score a critical hit against an opponent. If you do, that opponent becomes shaken for 1 round.",
                          summary: "You gain one use of your gnome magic that is independent of your gnome magic spell-like abilities.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Haunted Gnome Shroud (Combat)",
                          featType: "General",
                          prerequisites: "Cha 13, gnome magic racial trait, Haunted Gnome, Haunted Gnome Assault, Knowledge (arcana) 6 ranks.",
                          benefit: "You gain another independent use of your gnome magic like that which Haunted Gnome Assault grants. Further, while you are under the effect of haunted fey aspect, you also have concealment (20% miss chance) against an opponent until that opponent deals you damage.",
                          summary: "You gain another independent use of your gnome magic like that which Haunted Gnome Assault grants.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Hero's Display (Combat, Performance)",
                          featType: "General",
                          prerequisites: "Dazzling Display, Weapon Focus, and proficiency with the selected weapon.",
                          benefit: "When you spend a swift action to make a performance combat check, you present the weapon in which you have Weapon Focus in a triumphant display. You gain a +2 bonus on the performance combat check and make an Intimidate check to demoralize all foes within 30 feet who can see your display.",
                          summary: "When you spend a swift action to make a performance combat check, you present the weapon in which you have Weapon Focus in a triumphant display.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Hex Strike (Combat)",
                          featType: "General",
                          prerequisites: "Hex class feature, Improved Unarmed Strike.",
                          benefit: "When you gain this feat, choose one hex that you can use to affect no more than one opponent. If you make a successful unarmed strike against an opponent, in addition to dealing your unarmed strike damage, you can use a swift action to deliver the effects of the chosen hex to that opponent. Doing so does not provoke attacks of opportunity.",
                          special: "You can take this feat multiple times. Each time you take it, you apply it to a different qualifying hex.",
                          summary: "When you gain this feat, choose one hex that you can use to affect no more than one opponent.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Horse Master (Combat)",
                          featType: "General",
                          prerequisites: "Expert trainer class feature (Advanced Player’s Guide 33), Ride 6 ranks.",
                          benefit: "Use your character level to determine your effective druid level for determining the powers and abilities of your mount.",
                          normal: "You use your cavalier level to determine your effective druid level for determining the powers and abilities of your mount.",
                          summary: "Use your character level to determine your effective druid level for determining the powers and abilities of your mount.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Impact Critical Shot (Combat, Critical)",
                          featType: "General",
                          prerequisites: "Dex 13, Point-Blank Shot, base attack bonus +9.",
                          benefit: "Whenever you score a critical hit with a ranged attack, in addition to the normal damage your attack deals, if your confirmation roll exceeds your opponent’s CMD, you can push your opponent back as if from the bull rush combat maneuver or knock that target prone as if from a trip combat maneuver. If you choose to bull rush, you cannot move with the target. Your maneuver does not provoke an attack of opportunity.",
                          normal: "You must perform a bull rush combat maneuver to bull rush an opponent, and you must perform a trip combat maneuver to trip an opponent.",
                          summary: "Whenever you score a critical hit with a ranged attack, in addition to the normal damage your attack deals, if your confirmation roll exceeds your opponent’s CMD, you can push your opponent back as…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Impaling Critical (Combat, Critical)",
                          featType: "General",
                          prerequisites: "Critical Focus, Weapon Specialization with selected piercing melee weapon, base attack bonus +11.",
                          benefit: "Whenever you score a critical hit with the selected piercing melee weapon, you can impale your opponent on your weapon. While your opponent is impaled in this way, each time he starts his turn, you deal damage equal to your weapon’s damage dice plus the extra damage dice from your weapon’s properties. As an immediate action, you can pull your weapon out of your opponent. If your opponent is ever outside your reach, you must spend a free action to let go of your weapon or pull it out of him. Your opponent can also spend a move action to pull your weapon out. When the weapon comes out, your opponent takes damage as if starting his turn impaled. While you impale your opponent with your weapon, you cannot use it to attack, and you must hold on to it.",
                          summary: "Whenever you score a critical hit with the selected piercing melee weapon, you can impale your opponent on your weapon.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Back to Back (Teamwork)",
                          featType: "General",
                          prerequisites: "Back to Back, Perception 5 ranks.",
                          benefit: "While you are adjacent to an ally who is flanked and also has this feat, you can spend a swift action to gain a +2 bonus to AC against all flankers until the start of your next turn.",
                          summary: "While you are adjacent to an ally who is flanked and also has this feat, you can spend a swift action to gain a +2 bonus to AC against all flankers until the start of your next turn.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Called Shot (Called Shot)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise.",
                          benefit: "You receive a +2 bonus on attack rolls when making a called shot. When taking a full-round or standard action that gives you multiple attacks, you can replace a single attack with a called shot. You may only attempt one called shot per round.",
                          normal: "You can make one called shot per round as a full-round action.",
                          summary: "You receive a +2 bonus on attack rolls when making a called shot. When taking a full-round or standard action that gives you multiple attacks, you can replace a single attack with a called shot.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Charging Hurler (Combat)",
                          featType: "General",
                          prerequisites: "Charging Hurler, Point-Blank Shot.",
                          benefit: "When you use Charging Hurler, your target can be at any range up to your weapon’s maximum range. If your target is within 30 feet, you gain a +2 bonus on damage rolls.",
                          normal: "Using Charging Hurler requires you to end your movement within 30 feet of your opponent.",
                          summary: "When you use Charging Hurler, your target can be at any range up to your weapon’s maximum range. If your target is within 30 feet, you gain a +2 bonus on damage rolls.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Cleaving Finish (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Cleave, Cleaving Finish, Great Cleave, Power Attack, base attack bonus +6.",
                          benefit: "You can use Cleaving Finish any number of times per round.",
                          summary: "You can use Cleaving Finish any number of times per round.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Devastating Strike (Combat)",
                          featType: "General",
                          prerequisites: "Devastating Strike, Vital Strike, base attack bonus +13.",
                          benefit: "Whenever you use Vital Strike, Improved Vital Strike, or Greater Vital Strike, you gain a bonus on attack rolls to confirm a critical hit equal to the bonus on damage rolls you gain from Devastating Strike.",
                          summary: "Whenever you use Vital Strike, Improved Vital Strike, or Greater Vital Strike, you gain a bonus on attack rolls to confirm a critical hit equal to the bonus on damage rolls you gain from Devastating…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Feint Partner (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Bluff 1 rank, Combat Reflexes, Feint Partner, base attack bonus +6.",
                          benefit: "Whenever an ally who also has this feat successfully feints against an opponent, that opponent provokes an attack of opportunity from you.",
                          summary: "Whenever an ally who also has this feat successfully feints against an opponent, that opponent provokes an attack of opportunity from you.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Impaling Critical (Combat, Critical)",
                          featType: "General",
                          prerequisites: "Impaling Critical, Critical Focus, Weapon Specialization with selected piercing melee weapon, base attack bonus +13.",
                          benefit: "While you are using Impaling Critical to impale an opponent, and you are still holding onto that weapon, that opponent must succeed at a grapple combat maneuver check against you to pull your weapon out. If you have let go of your weapon, the impaled opponent must spend a standard action to remove the weapon. Until the opponent pulls the weapon out, his speed in all modes is halved and his maneuverability, if any, is reduced by one step. When the weapon comes out, instead of dealing the damage normal for Impaling Critical, you can deal bleed damage equal to your weapon’s damage dice result once per round at the start of that opponent’s turn.",
                          summary: "While you are using Impaling Critical to impale an opponent, and you are still holding onto that weapon, that opponent must succeed at a grapple combat maneuver check against you to pull your weapon…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Rending Fury (Combat)",
                          featType: "General",
                          prerequisites: "Rending Fury, base attack bonus +9, rend special attack.",
                          benefit: "Whenever you successfully rend an opponent, you deal an extra 1d6 damage. This damage is not multiplied on a critical hit.",
                          summary: "Whenever you successfully rend an opponent, you deal an extra 1d6 damage. This damage is not multiplied on a critical hit.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Snap Shot (Combat)",
                          featType: "General",
                          prerequisites: "Dex 15, Point-Blank Shot, Rapid Shot, Snap Shot, Weapon Focus, base attack bonus +9.",
                          benefit: "You threaten an additional 5 feet with Snap Shot.",
                          normal: "Making a ranged attack provokes attacks of opportunity.",
                          summary: "You threaten an additional 5 feet with Snap Shot.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Stalwart",
                          featType: "General",
                          prerequisites: "Diehard, Endurance, Stalwart, base attack bonus +11.",
                          benefit: "Double the DR you gain from Stalwart, to a maximum of DR 10/—.",
                          summary: "Double the DR you gain from Stalwart, to a maximum of DR 10/—.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Two-Weapon Feint (Combat)",
                          featType: "General",
                          prerequisites: "Dex 17, Int 13, Combat Expertise, Improved Two-Weapon Fighting, Two-Weapon Feint, Two-Weapon Fighting, base attack bonus +6.",
                          benefit: "While using Two-Weapon Fighting to make melee attacks, you can forgo your first primary-hand melee attack to make a Bluff check to feint an opponent. If you successfully feint, that opponent is denied his Dexterity bonus to AC until the end of your turn.",
                          summary: "While using Two-Weapon Fighting to make melee attacks, you can forgo your first primary-hand melee attack to make a Bluff check to feint an opponent.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Whip Mastery (Combat)",
                          featType: "General",
                          prerequisites: "Weapon Focus (whip), Whip Mastery, base attack bonus +5.",
                          benefit: "While wielding a whip, you threaten the area of your natural reach plus 5 feet. You can also use a whip to grasp an unattended Small or Tiny object within your whip’s reach and pull that object into your square. To do so, you must hit AC 10 with a melee touch attack. Further, you can use the whip to grasp onto an object within your whip’s reach, using 5 feet of your whip as if it were a grappling hook, allowing you to use the rest of your whip to swing on like a rope. As a free action, you can release the object your whip is grasping, but you cannot use the whip to attack while the whip is grasping an object.",
                          summary: "While wielding a whip, you threaten the area of your natural reach plus 5 feet.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Instant Judgment",
                          featType: "General",
                          prerequisites: "Second judgment class feature.",
                          benefit: "You can spend an immediate action to pronounce a judgment or change an active judgment.",
                          normal: "Pronouncing or changing a judgment requires a swift action.",
                          summary: "You can spend an immediate action to pronounce a judgment or change an active judgment.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Intimidating Bane",
                          featType: "General",
                          prerequisites: "Bane class feature, Dazzling Display, Weapon Focus, character level 8th.",
                          benefit: "Whenever you use Dazzling Display while your bane feature is active, you gain a +2 bonus on the Intimidate check that Dazzling Display allows against creatures of the type your bane weapon currently affects. Such creatures remain shaken while your bane feature is still active and effective against their creature type.",
                          summary: "Whenever you use Dazzling Display while your bane feature is active, you gain a +2 bonus on the Intimidate check that Dazzling Display allows against creatures of the type your bane weapon currently…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Janni Rush (Combat)",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike, Janni Style, Janni Tempest, Acrobatics 8 ranks, Perform (dance) 8 ranks.",
                          benefit: "While using Janni Style, you are always considered to have a running start when jumping. Further, if you jump as part of a charge and make an unarmed strike against the designated opponent, a hit allows you to roll the unarmed strike’s damage dice twice and add the results together before adding modifiers (such as from Strength) or extra dice (such as precision-based damage or dice from weapon abilities). The extra damage dice are not multiplied on a successful critical hit.",
                          summary: "While using Janni Style, you are always considered to have a running start when jumping.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Janni Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike, Acrobatics 3 ranks, Perform (dance) 3 ranks.",
                          benefit: "While using this style, you take only a –1 penalty to AC for charging. Further, opponents that flank you gain only a +1 bonus on attack rolls against you.",
                          summary: "While using this style, you take only a –1 penalty to AC for charging. Further, opponents that flank you gain only a +1 bonus on attack rolls against you.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Janni Tempest (Combat)",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike, Janni Style, Acrobatics 5 ranks, Perform (dance) 5 ranks.",
                          benefit: "While you are using the Janni Style feat, whenever you make an unarmed attack and hit an opponent, you gain a +4 bonus on checks made to bull rush or trip that opponent, as long as the combat maneuver is your next attack by the end of your turn. You do not provoke an attack of opportunity from the target of the maneuver.",
                          summary: "While you are using the Janni Style feat, whenever you make an unarmed attack and hit an opponent, you gain a +4 bonus on checks made to bull rush or trip that opponent, as long as the combat…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Jawbreaker (Combat)",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike, Stunning Fist, Heal 6 ranks.",
                          benefit: "When you make a successful Stunning Fist attempt against an opponent that is grappled, helpless, or stunned, instead of imparting any other Stunning Fist effect, you can cripple that opponent’s mouth, dealing normal unarmed strike damage and 1d4 points of bleed damage. Until the bleed damage ends, the target is unable to use its mouth to attack, speak clearly, and employ verbal spell components. A creature that is immune to critical hits or that has no discernible mouth is immune to the effects of this feat.",
                          summary: "When you make a successful Stunning Fist attempt against an opponent that is grappled, helpless, or stunned, instead of imparting any other Stunning Fist effect, you can cripple that opponent’s…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Kirin Path (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Kirin Strike, Kirin Style, Improved Unarmed Strike, Knowledge (arcana) 12 ranks, Knowledge (dungeoneering, local, nature, planes, or religion) 5 ranks.",
                          benefit: "Whenever you make a Knowledge check to identify a creature, even when using Kirin Style, you can take 10 even if stress and distractions would normally prevent you from doing so. While using Kirin Style against a creature you have identified using that feat, if the creature ends its turn within your threatened area, you can spend a use of your attacks of opportunity that round to move up to 5 feet times your Intelligence modifier (minimum 1). You must end your move in a square threatened by the creature. This move does not provoke attacks of opportunity.",
                          summary: "Whenever you make a Knowledge check to identify a creature, even when using Kirin Style, you can take 10 even if stress and distractions would normally prevent you from doing so.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Kirin Strike (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Kirin Style, Improved Unarmed Strike, Knowledge (arcana) 9 ranks, Knowledge (dungeoneering, local, nature, planes, or religion) 3 ranks.",
                          benefit: "You gain a +2 insight bonus on Knowledge checks made to identify creatures, including the one Kirin Style allows. While using Kirin Style against a creature you have identified using that feat, as a swift action after you have hit a creature with a melee or ranged attack, you can add twice your Intelligence modifier in damage (minimum 2).",
                          summary: "You gain a +2 insight bonus on Knowledge checks made to identify creatures, including the one Kirin Style allows.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Kirin Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike, Knowledge (arcana) 6 ranks, Knowledge (dungeoneering, local, nature, planes, or religion) 1 rank.",
                          benefit: "While using this style, you can spend a swift action to make a Knowledge check to identify a single creature (DC 15 + the creature’s CR for this purpose). If you succeed at the check, while using this style, you gain a +2 bonus on saving throws against that creature’s attacks, as well as a +2 dodge bonus to AC against that creature’s attacks of opportunity. These bonuses last for as long as you use this style. If you cease combat with the creature during this time and resume it later, you can attempt the check again.",
                          summary: "While using this style, you can spend a swift action to make a Knowledge check to identify a single creature (DC 15 + the creature’s CR for this purpose).",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Knockout Artist",
                          featType: "General",
                          prerequisites: "Sneak attack class feature, Improved Unarmed Strike.",
                          benefit: "When you use your unarmed strike to deal nonlethal damage and sneak attack damage to an opponent denied his Dexterity bonus to AC, you gain a +1 bonus on the damage roll per each sneak attack damage die you roll.",
                          summary: "When you use your unarmed strike to deal nonlethal damage and sneak attack damage to an opponent denied his Dexterity bonus to AC, you gain a +1 bonus on the damage roll per each sneak attack damage…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Landing Roll (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Dodge, Mobility.",
                          benefit: "If you are tripped, you can spend an immediate action to move 5 feet without provoking an attack of opportunity. This does not count as taking a 5-foot step. You fall prone after this movement.",
                          summary: "If you are tripped, you can spend an immediate action to move 5 feet without provoking an attack of opportunity. This does not count as taking a 5-foot step. You fall prone after this movement.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Leaping Shot (Grit)",
                          featType: "General",
                          prerequisites: "Dex 13, grit class feature or Amateur Gunslinger feat, Dodge, Mobility, base attack bonus +4.",
                          benefit: "You gain a +2 bonus on Acrobatics checks made to jump. As a full-round action, you can move up to your speed and make firearm attacks at your highest base attack bonus with each loaded firearm you are wielding. You can make these attacks at any point during your movement, and if you are wielding two firearms, you can make the attacks at different points during the movement. At the end of this movement, you fall prone. This deed costs 1 grit point to perform.",
                          summary: "You gain a +2 bonus on Acrobatics checks made to jump. As a full-round action, you can move up to your speed and make firearm attacks at your highest base attack bonus with each loaded firearm you…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Mantis Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike, Stunning Fist, Heal 3 ranks.",
                          benefit: "You gain one additional Stunning Fist attempt per day. While using this style, you gain a +2 bonus to the DC of effects you deliver with your Stunning Fist.",
                          summary: "You gain one additional Stunning Fist attempt per day. While using this style, you gain a +2 bonus to the DC of effects you deliver with your Stunning Fist.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Mantis Torment (Combat)",
                          featType: "General",
                          prerequisites: "Heal 9 ranks, Improved Unarmed Strike, Mantis Style, Mantis Wisdom, Stunning Fist.",
                          benefit: "You gain one additional Stunning Fist attempt per day. While using Mantis Style, you make an unarmed attack that expends two daily attempts of your Stunning Fist. If you hit, your opponent must succeed at a saving throw against your Stunning Fist or become dazzled and staggered with crippling pain until the start of your next turn, and at that point the opponent becomes fatigued.",
                          summary: "You gain one additional Stunning Fist attempt per day. While using Mantis Style, you make an unarmed attack that expends two daily attempts of your Stunning Fist.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Mantis Wisdom (Combat)",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike, Mantis Style, Stunning Fist, Heal 6 ranks.",
                          benefit: "Treat half your levels in classes other than monk as monk levels for determining effects you can apply to a target of your Stunning Fist per the Stunning Fist monk class feature. You can also use a standard action and a successful melee touch attack to remove any Stunning Fist effect you have applied to a target. While using Mantis Style, you gain a +2 bonus on unarmed attack rolls with which you are using Stunning Fist attempts.",
                          summary: "Treat half your levels in classes other than monk as monk levels for determining effects you can apply to a target of your Stunning Fist per the Stunning Fist monk class feature.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Marid Coldsnap (Combat)",
                          featType: "General",
                          prerequisites: "Con 15, Wis 17, Elemental Fist, Marid Spirit, Marid Style, Improved Unarmed Strike, base attack bonus +13 or monk level 11th.",
                          benefit: "While using Marid Style, as a standard action, you can spend two Elemental Fist (Advanced Player’s Guide 158) attempts to unleash a 30-foot line of frigid water. Creatures caught in the line take your unarmed strike damage plus the cold damage from your Elemental Fist attack and are entangled in ice as per the Marid Spirit feat. A successful Reflex save (DC 10 + 1/2 your character level + your Wis modifier) reduces the damage by half and prevents a target from becoming entangled.",
                          summary: "While using Marid Style, as a standard action, you can spend two Elemental Fist (Advanced Player’s Guide 158) attempts to unleash a 30-foot line of frigid water.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Marid Spirit (Combat)",
                          featType: "General",
                          prerequisites: "Con 15, Wis 15, Elemental Fist, Marid Style, Improved Unarmed Strike, base attack bonus +11 or monk level 9th.",
                          benefit: "You gain one additional Elemental Fist (Advanced Player’s Guide 158) attempt per day. While using Marid Style, you gain cold resistance equal to your base attack bonus, or monk level plus base attack bonus gained from levels in classes other than monk, whichever is higher. While denied your Dexterity bonus to AC you are also denied this resistance. Creatures that take cold damage from your Elemental Fist attack must succeed at a Fortitude save (DC 10 + 1/2 your character level + your Wis modifier) or become entangled in ice for 1d4 rounds. The ice has hit points equal to three times your base attack bonus or monk level, whichever is higher, and a break DC of 15 + your base attack bonus or monk level, whichever is higher. Destroying or breaking the ice ends the entangled condition.",
                          summary: "You gain one additional Elemental Fist (Advanced Player’s Guide 158) attempt per day.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Marid Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Con 13, Wis 15, Elemental Fist, Improved Unarmed Strike, base attack bonus +9 or monk level 5th.",
                          benefit: "You gain one additional Elemental Fist (Advanced Player’s Guide 158) attempt per day. While using this style and Elemental Fist to deal cold damage, you gain a bonus on cold damage rolls equal to your Wisdom modifier, and your reach with your unarmed strike increases by 5 feet.",
                          summary: "You gain one additional Elemental Fist (Advanced Player’s Guide 158) attempt per day.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Master Combat Performer (Combat)",
                          featType: "General",
                          prerequisites: "Performing Combatant or at least three performance feats, base attack bonus +6.",
                          benefit: "You can make performance combat checks as a free action. You are proficient in all weapons with the performance special quality.",
                          summary: "You can make performance combat checks as a free action. You are proficient in all weapons with the performance special quality.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Master Siege Engineer (Combat)",
                          featType: "General",
                          prerequisites: "Siege Weapon Engineer, Knowledge (engineering) 10 ranks.",
                          benefit: "If you are the crew lead on a siege engine, your crew can use move actions to load a siege engine. When you spend actions to aim a siege engine, you and your crew can use move actions instead of full-round actions to aim the siege engine (page 160).",
                          normal: "Full-round actions are required to load and aim siege engines.",
                          summary: "If you are the crew lead on a siege engine, your crew can use move actions to load a siege engine.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Masterful Display (Combat, Performance)",
                          featType: "General",
                          prerequisites: "Dazzling Display, any two performance feats.",
                          benefit: "Choose the effects of any two performance feats you have. When you make a performance combat check, you gain the benefits of those two feats, but you only gain a +2 bonus on the performance combat check.",
                          summary: "Choose the effects of any two performance feats you have. When you make a performance combat check, you gain the benefits of those two feats, but you only gain a +2 bonus on the performance combat…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Maximized Spellstrike",
                          featType: "General",
                          prerequisites: "Maximized magic magus arcana, weapon expertise class feature or Quick Draw.",
                          benefit: "When you make a melee attack and successfully use your spellstrike ability against an opponent denied his Dexterity bonus to AC, you can spend 3 points from your arcane pool to maximize the spell delivered through your spellstrike as if using the Maximize Spell metamagic feat.",
                          summary: "When you make a melee attack and successfully use your spellstrike ability against an opponent denied his Dexterity bonus to AC, you can spend 3 points from your arcane pool to maximize the spell…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Menacing Bane",
                          featType: "General",
                          prerequisites: "Bane class feature.",
                          benefit: "You can use your bane class feature to imbue a melee weapon with the menacing special weapon ability (Advanced Player’s Guide 288) instead of bane. You can spend a swift action to switch between the two special weapon abilities. Doing so otherwise works according to your bane class feature.",
                          special: "If you have the Double Bane feat, you can imbue each weapon you wield with either bane or menacing. No single weapon can have both.",
                          summary: "You can use your bane class feature to imbue a melee weapon with the menacing special weapon ability (Advanced Player’s Guide 288) instead of bane.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Merciful Bane",
                          featType: "General",
                          prerequisites: "Bane class feature.",
                          benefit: "While a weapon you wield is under the effect of your bane class feature, you can spend a swift action to switch between dealing lethal or nonlethal damage with bane. While your bane effect allows you to deal nonlethal damage in this way, you take no penalty on your attack roll for using a lethal weapon to deal nonlethal damage.",
                          normal: "When using a lethal weapon to deal nonlethal damage, you take a –4 penalty on attack rolls.",
                          summary: "While a weapon you wield is under the effect of your bane class feature, you can spend a swift action to switch between dealing lethal or nonlethal damage with bane.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Mocking Dance (Combat, Performance)",
                          featType: "General",
                          prerequisites: "Acrobatics 4 ranks or Perform (dance) 4 ranks.",
                          benefit: "When you spend a swift action to make a performance combat check, before making that check you can either move 5 feet without provoking attacks of opportunity, or you can move your speed and provoke attacks of opportunity. You cannot end this move in a space where you threaten an enemy. If you do move at least 5 feet, you gain a +2 bonus on the performance combat check.",
                          summary: "When you spend a swift action to make a performance combat check, before making that check you can either move 5 feet without provoking attacks of opportunity, or you can move your speed and provoke…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Monastic Legacy (Combat)",
                          featType: "General",
                          prerequisites: "Still mind class feature, Improved Unarmed Strike.",
                          benefit: "Add half the levels you have in classes other than monk to your monk level to determine your effective monk level for your base unarmed strike damage. This feat does not make levels in classes other than monk count toward any other monk class features.",
                          summary: "Add half the levels you have in classes other than monk to your monk level to determine your effective monk level for your base unarmed strike damage.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Monkey Moves (Combat)",
                          featType: "General",
                          prerequisites: "Wis 13, Improved Unarmed Strike, Monkey Style, Acrobatics 8 ranks, Climb 8 ranks.",
                          benefit: "While using Monkey Style, you gain a Wisdom bonus on Climb checks. You can also can climb and crawl at half your speed; you can take a 5-foot step by jumping, crawling, or climbing; and you retain your Dexterity bonus to AC while climbing. Further, while using Monkey Style, when you use your unarmed strike to hit an opponent twice or more on your turn, you can spend a swift action to take a 5-foot step even if you have moved this round.",
                          normal: "You climb at one-quarter your speed, and you lose your Dexterity bonus to AC while doing so. A 5-foot step is made using your normal movement modes, and you can take one only if you have not otherwise moved this round.",
                          summary: "While using Monkey Style, you gain a Wisdom bonus on Climb checks.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Monkey Shine (Combat)",
                          featType: "General",
                          prerequisites: "Wis 13, Improved Unarmed Strike, Monkey Moves, Monkey Style, Stunning Fist, Acrobatics 11 ranks, Climb 11 ranks.",
                          benefit: "While using Monkey Style, if you successfully deliver a Stunning Fist attempt, in addition to the normal effect of Stunning Fist, you can spend a free action to enter a square adjacent to you that is within your opponent’s space. This movement does not provoke attacks of opportunity. While you are in your opponent’s space, you gain a +4 dodge bonus to AC and a +4 bonus on melee attack rolls against that opponent. If otherwise unhindered, the opponent can move away from you, but if he does, he provokes an attack of opportunity from you even if his choice of movement does not normally do so.",
                          normal: "You cannot enter an opponent’s space.",
                          summary: "While using Monkey Style, if you successfully deliver a Stunning Fist attempt, in addition to the normal effect of Stunning Fist, you can spend a free action to enter a square adjacent to you that is…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Monkey Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Wis 13, Improved Unarmed Strike, Acrobatics 5 ranks, Climb 5 ranks.",
                          benefit: "You add your Wisdom bonus on Acrobatics checks. While using this style, you take no penalty on melee attack rolls or to AC while prone. Further, you can crawl and stand up from lying prone without provoking attacks of opportunity, and you can stand up as a swift action if you succeed at a DC 20 Acrobatics check.",
                          normal: "You take a –4 penalty on attack rolls and AC against melee attacks while prone. Standing up is a move action that provokes attacks of opportunity.",
                          summary: "You add your Wisdom bonus on Acrobatics checks. While using this style, you take no penalty on melee attack rolls or to AC while prone.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Moonlight Stalker (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Blind-Fight, Combat Expertise, Bluff 3 ranks, darkvision or low-light vision racial trait.",
                          benefit: "While you have concealment from an opponent, you gain a +2 bonus on attack and damage rolls against that opponent.",
                          summary: "While you have concealment from an opponent, you gain a +2 bonus on attack and damage rolls against that opponent.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Moonlight Stalker Feint (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Blind-Fight, Combat Expertise, Improved Feint, Moonlight Stalker, Bluff 6 ranks, darkvision or low-light vision racial trait.",
                          benefit: "Once per round, against an opponent from whom you have concealment, you can spend a swift action to make a Bluff check to feint.",
                          normal: "Feinting is a standard action.",
                          summary: "Once per round, against an opponent from whom you have concealment, you can spend a swift action to make a Bluff check to feint.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Moonlight Stalker Master (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Blind-Fight, Combat Expertise, Improved Feint, Moonlight Stalker, Moonlight Stalker Feint, Bluff 9 ranks, darkvision or low-light vision racial trait.",
                          benefit: "While you have concealment, your opponents’ miss chance against you increases by 10%. If an opponent misses you due to your concealment, you can spend an immediate action to move 5 feet, this movement does not provoke attacks of opportunity and does not count as a 5-foot step.",
                          summary: "While you have concealment, your opponents’ miss chance against you increases by 10%.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Murderer's Circle (Combat, Performance)",
                          featType: "General",
                          prerequisites: "Dodge, Acrobatics 4 ranks.",
                          benefit: "When you spend a swift action to make a performance combat check after scoring a critical hit or performing a combat maneuver, and you are adjacent to the target of the critical hit or combat maneuver, you can move to any other space that is adjacent to the target without provoking attacks of opportunity. You must have a clear path to that space and the ability to reach it by spending a move action. If you end this move in any space other than the one where you started, you gain a +2 bonus on the performance combat check.",
                          summary: "When you spend a swift action to make a performance combat check after scoring a critical hit or performing a combat maneuver, and you are adjacent to the target of the critical hit or combat…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Neckbreaker (Combat)",
                          featType: "General",
                          prerequisites: "Bonebreaker, Greater Grapple, Improved Grapple, Improved Unarmed Strike, Jawbreaker, Stunning Fist, Heal 12 ranks.",
                          benefit: "If you have an opponent your size or smaller helpless or pinned, after you initiate or maintain a grapple, you can make a Stunning Fist attempt at a –5 penalty on the attack roll. If you succeed, you wrench that opponent’s neck, dealing 2d6 Strength or Dexterity damage. If the targeted ability score is reduced to 0, any remaining damage is dealt to that opponent’s Constitution score. A creature that is immune to critical hits or that has no discernible head and neck is immune to the effects of this feat.",
                          summary: "If you have an opponent your size or smaller helpless or pinned, after you initiate or maintain a grapple, you can make a Stunning Fist attempt at a –5 penalty on the attack roll.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Net Adept (Combat)",
                          featType: "General",
                          prerequisites: "Exotic Weapon Proficiency (net), base attack bonus +1.",
                          benefit: "You can treat a net as a one-handed melee reach weapon with a 10-foot reach. Further, you take no penalty on melee attack rolls for using an unfolded net, and you can use one full-round action or two move actions to fold a net.",
                          normal: "A net is a ranged weapon that imposes a –4 penalty on ranged attack rolls if it is unfolded. Folding a net takes a proficient user 2 rounds.",
                          summary: "You can treat a net as a one-handed melee reach weapon with a 10-foot reach.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Net Maneuvering (Combat)",
                          featType: "General",
                          prerequisites: "Exotic Weapon Proficiency (net), Net Adept, base attack bonus +3.",
                          benefit: "In melee, you can use a net to trip or disarm opponents instead of entangling them. You gain a +2 bonus on disarm checks made to use a net in this way. Further, if you have an opponent entangled in your net, you can attempt to drag or reposition that opponent as long as he is within your net’s reach or you control the trailing rope on your net.",
                          summary: "In melee, you can use a net to trip or disarm opponents instead of entangling them. You gain a +2 bonus on disarm checks made to use a net in this way.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Net Trickery (Combat)",
                          featType: "General",
                          prerequisites: "Exotic Weapon Proficiency (net), Net Adept, Net Maneuvering, base attack bonus +6.",
                          benefit: "In place of one of your melee attacks, you can use your net to attempt a dirty trick combat maneuver to blind an opponent (Advanced Player’s Guide 320). If you have an opponent entangled in your net, you can attempt to trip that opponent as long as he is within your net’s reach or you control the trailing rope on your net. You also gain a +2 bonus on drag and reposition combat maneuver checks you make using your net.",
                          summary: "In place of one of your melee attacks, you can use your net to attempt a dirty trick combat maneuver to blind an opponent (Advanced Player’s Guide 320).",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Net and Trident (Combat)",
                          featType: "General",
                          prerequisites: "Dex 15, Exotic Weapon Proficiency (net), Net Adept, Two-Weapon Fighting.",
                          benefit: "You can treat a net as a one-handed ranged weapon, allowing you to wield a light or one-handed melee weapon and still make ranged attacks with your net. When you use your light or one-handed melee weapon to attack an entangled opponent, you gain a +2 bonus on damage rolls and on attack rolls to confirm a critical hit.",
                          normal: "A net is a two-handed ranged weapon.",
                          summary: "You can treat a net as a one-handed ranged weapon, allowing you to wield a light or one-handed melee weapon and still make ranged attacks with your net.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Nightmare Fist (Combat)",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike, Intimidate 1 rank, ability to create magical darkness.",
                          benefit: "While fighting within an area of magical darkness, you gain a +2 bonus on damage rolls with unarmed strikes, or a +4 bonus against opponents that are shaken, frightened, or panicked. You also gain a +2 morale bonus on Acrobatics and Intimidate checks.",
                          summary: "While fighting within an area of magical darkness, you gain a +2 bonus on damage rolls with unarmed strikes, or a +4 bonus against opponents that are shaken, frightened, or panicked.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Nightmare Striker (Combat)",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike, Nightmare Fist, Nightmare Weaver, Stunning Fist, Heal 5 ranks, ability to cast faerie fire.",
                          benefit: "While a faerie fire you have cast (not one cast from a spell completion or spell trigger item) outlines an opponent, the DC for that opponent to resist your Stunning Fist attempts increases by +2. If you hit an opponent with a Stunning Fist attempt, and that opponent fails her saving throw, you can render the target shaken for 1d2 rounds plus 1 round for every 5 by which the opponent failed her save.",
                          summary: "While a faerie fire you have cast (not one cast from a spell completion or spell trigger item) outlines an opponent, the DC for that opponent to resist your Stunning Fist attempts increases by +2.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Nightmare Weaver (Combat)",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike, Nightmare Fist, Intimidate 2 ranks, ability to cast darkness.",
                          benefit: "By spending a full-round action to cast darkness, you can also make Intimidate checks to demoralize all foes in the spell’s initial area.",
                          special: "This feat counts as Dazzling Display for purposes of qualifying for Deadly Stroke and Shatter Defenses.",
                          summary: "By spending a full-round action to cast darkness, you can also make Intimidate checks to demoralize all foes in the spell’s initial area.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("No Name (Grit)",
                          featType: "General",
                          prerequisites: "Grit class feature or Amateur Gunslinger feat, Bluff 4 ranks.",
                          benefit: "You often rely on surprise and misdirection in your social dealings. You gain a +2 bonus on Bluff checks, and you can spend 1 grit point to gain a +10 bonus on Disguise checks for 10 minutes per your gunslinger level (minimum 10 minutes). This deed does not actually change your appearance, but rather allows you to hide your identity in other ways.",
                          summary: "You often rely on surprise and misdirection in your social dealings.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Opening Volley (Combat)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Whenever you deal damage with a ranged attack, you gain a +4 circumstance bonus on the next melee attack roll you make against the opponent. This attack must occur before the end of your next turn.",
                          summary: "Whenever you deal damage with a ranged attack, you gain a +4 circumstance bonus on the next melee attack roll you make against the opponent. This attack must occur before the end of your next turn.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Pack Attack (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1.",
                          benefit: "When you are adjacent to an ally with this feat, the first time you melee attack an opponent, you can spend an immediate action to take a 5-foot step, even if you have otherwise moved this round.",
                          normal: "You can take a 5-foot step only if you have not otherwise moved in a round.",
                          summary: "When you are adjacent to an ally with this feat, the first time you melee attack an opponent, you can spend an immediate action to take a 5-foot step, even if you have otherwise moved this round.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Panther Claw (Combat)",
                          featType: "General",
                          prerequisites: "Wis 15, Combat Reflexes, Improved Unarmed Strike, Panther Style.",
                          benefit: "While using Panther Style, you can spend a free action, instead of spending a swift action, to make a retaliatory unarmed strike. You can make a number of retaliatory unarmed strikes on your turn equal to your Wisdom modifier.",
                          summary: "While using Panther Style, you can spend a free action, instead of spending a swift action, to make a retaliatory unarmed strike.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Panther Parry (Combat)",
                          featType: "General",
                          prerequisites: "Wis 15, Combat Reflexes, Improved Unarmed Strike, Panther Claw, Panther Style.",
                          benefit: "While using Panther Style, your retaliatory unarmed strikes are resolved before the triggering attacks. If your retaliatory unarmed strike deals damage to an opponent, that opponent takes a –2 penalty on attack and damage rolls with the triggering attack of opportunity.",
                          summary: "While using Panther Style, your retaliatory unarmed strikes are resolved before the triggering attacks.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Panther Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Wis 13, Combat Reflexes, Improved Unarmed Strike.",
                          benefit: "While using this style, when an opponent makes an attack of opportunity against you for moving through a threatened square, you can spend a swift action to make a retaliatory unarmed strike attack against that opponent. Your attack is resolved after the triggering attack of opportunity.",
                          summary: "While using this style, when an opponent makes an attack of opportunity against you for moving through a threatened square, you can spend a swift action to make a retaliatory unarmed strike attack…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Passing Trick (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Dodge, Improved Feint, Mobility, size Small or smaller.",
                          benefit: "Whenever you make a successful Acrobatics check to move through an opponent’s space, you can spend a swift action to make a Bluff check against that opponent to feint in combat.",
                          special: "If you have the Underfoot feat and the opponent is larger than you, you gain a +2 bonus on the Bluff check this feat allows.",
                          summary: "Whenever you make a successful Acrobatics check to move through an opponent’s space, you can spend a swift action to make a Bluff check against that opponent to feint in combat.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Performance Weapon Mastery (Combat)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You treat all weapons you are proficient in as if they had the performance weapon quality (page 144).",
                          summary: "You treat all weapons you are proficient in as if they had the performance weapon quality (page 144).",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Performing Combatant (Combat)",
                          featType: "General",
                          prerequisites: "Dazzling Display, any one performance feat.",
                          benefit: "You can make performance combat checks in any combat. When making a performance check outside of performance combat, you can pick a single performance feat to use. You automatically gain any bonus on the performance combat check the feat grants, and then you make a DC 20 performance combat check. On a success, you gain the full effect of the performance feat you chose.",
                          summary: "You can make performance combat checks in any combat. When making a performance check outside of performance combat, you can pick a single performance feat to use.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Pin Down (Combat)",
                          featType: "General",
                          prerequisites: "Combat Reflexes, fighter level 11th.",
                          benefit: "Whenever an opponent you threaten takes a 5-foot step or uses the withdraw action, that opponent provokes an attack of opportunity from you. If the attack hits, you deal no damage, but the targeted creature is prevented from making the move action that granted a 5-foot step or the withdraw action and does not move.",
                          summary: "Whenever an opponent you threaten takes a 5-foot step or uses the withdraw action, that opponent provokes an attack of opportunity from you.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Pinning Knockout (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Greater Grapple, Improved Grapple, Improved Unarmed Strike, base attack bonus +9 or monk level 9th.",
                          benefit: "While you have an opponent pinned, when you succeed at a grapple combat maneuver check to deal an opponent nonlethal damage using an unarmed strike or a light or one-handed weapon, double your damage result. Any creature that is immune to critical hits is immune to the effects of this feat.",
                          summary: "While you have an opponent pinned, when you succeed at a grapple combat maneuver check to deal an opponent nonlethal damage using an unarmed strike or a light or one-handed weapon, double your damage…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Pinning Rend (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Greater Grapple, Improved Grapple, Improved Unarmed Strike, base attack bonus +9 or monk level 9th.",
                          benefit: "While you have an opponent pinned, when you succeed at a grapple combat maneuver check to deal an opponent damage using an unarmed strike or a light or one-handed weapon, that opponent also takes bleed damage equal to your unarmed strike or weapon damage dice. Any creature that is immune to critical hits is immune to the effects of this feat.",
                          summary: "While you have an opponent pinned, when you succeed at a grapple combat maneuver check to deal an opponent damage using an unarmed strike or a light or one-handed weapon, that opponent also takes…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Pinpoint Poisoner (Combat)",
                          featType: "General",
                          prerequisites: "Poison use class feature, Craft (alchemy) 6 ranks, Adder Strike, Improved Unarmed Strike, Two-Weapon Fighting or flurry of blows class feature.",
                          benefit: "When you use Adder Strike, you can instead poison up to two blowgun darts that you can then use to strike your opponent in melee. (Drawing such darts is a free action.) While holding these darts, you can spend a standard action to attack with one or a full-attack action to attack with both. Such attacks are considered melee touch attacks that deal 1d2 damage plus any bonuses you gain on your normal unarmed strike damage, and they deliver the poison. You can instead throw such darts as if they were shuriken, making your ranged attack rolls against the target’s AC.",
                          normal: "Applying poison to a weapon or single piece of ammunition is a standard action.",
                          summary: "When you use Adder Strike, you can instead poison up to two blowgun darts that you can then use to strike your opponent in melee.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Planar Wild Shape",
                          featType: "General",
                          prerequisites: "Wild shape class feature, Knowledge (planes) 5 ranks.",
                          benefit: "When you use wild shape to take the form of an animal, you can expend an additional daily use of your wild shape class feature to add the celestial template or fiendish template to your animal form. (Good druids must use the celestial template, while evil druids must use the fiendish template.) If your form has the celestial template and you score a critical threat against an evil creature while using your form’s natural weapons, you gain a +2 bonus on the attack roll to confirm the critical hit. The same bonus applies if your form has the fiendish template and you score a critical threat against a good creature.",
                          summary: "When you use wild shape to take the form of an animal, you can expend an additional daily use of your wild shape class feature to add the celestial template or fiendish template to your animal form.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Prone Shooter (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1.",
                          benefit: "If you have been prone since the end of your last turn, the penalty to your Armor Class against melee attacks made against you is reduced to –2. In addition, the bonus to your Armor Class against ranged attacks made against you is increased to +6.",
                          summary: "If you have been prone since the end of your last turn, the penalty to your Armor Class against melee attacks made against you is reduced to –2.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Prone Slinger (Combat)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "While prone, you can use a sling to make ranged attacks.",
                          normal: "Crossbows and firearms are the only ranged weapons that can be used while prone.",
                          summary: "While prone, you can use a sling to make ranged attacks.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Quick Bull Rush (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Improved Bull Rush, Power Attack, base attack bonus +6.",
                          benefit: "On your turn, you can perform a single bull rush combat maneuver in place of one of your melee attacks. You must choose the melee attack with the highest base attack bonus to make the bull rush.",
                          normal: "A bull rush combat maneuver is a standard action.",
                          summary: "On your turn, you can perform a single bull rush combat maneuver in place of one of your melee attacks. You must choose the melee attack with the highest base attack bonus to make the bull rush.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Quick Dirty Trick (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Improved Dirty Trick, base attack bonus +6.",
                          benefit: "On your turn, you can perform a single dirty trick combat maneuver (Advanced Players Guide 320) in place of one of your melee attacks. You must choose the melee attack with the highest base attack bonus to make the dirty trick combat maneuver.",
                          normal: "A dirty trick combat maneuver is a standard action.",
                          summary: "On your turn, you can perform a single dirty trick combat maneuver (Advanced Players Guide 320) in place of one of your melee attacks.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Quick Drag (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Improved Drag, Power Attack, base attack bonus +6.",
                          benefit: "On your turn, you can perform a single drag combat maneuver (Advanced Players Guide 320) in place of one of your melee attacks. You must choose the melee attack with the highest base attack bonus to make the drag.",
                          normal: "A drag combat maneuver is a standard action.",
                          summary: "On your turn, you can perform a single drag combat maneuver (Advanced Players Guide 320) in place of one of your melee attacks.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Quick Reposition (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Improved Reposition, base attack bonus +6.",
                          benefit: "On your turn, you can perform a single reposition combat maneuver (Advanced Players Guide 320) in place of one of your melee attacks. You must choose the melee attack with the highest base attack bonus to make the reposition.",
                          normal: "A reposition combat maneuver is a standard action.",
                          summary: "On your turn, you can perform a single reposition combat maneuver (Advanced Players Guide 320) in place of one of your melee attacks.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Quick Steal (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Improved Steal, base attack bonus +6.",
                          benefit: "On your turn, you can perform a single steal combat maneuver (Advanced Players Guide 320) in place of one of your melee attacks. You must choose the melee attack with the highest base attack bonus to make the steal.",
                          normal: "A steal combat maneuver is a standard action.",
                          summary: "On your turn, you can perform a single steal combat maneuver (Advanced Players Guide 320) in place of one of your melee attacks.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Raging Brutality",
                          featType: "General",
                          prerequisites: "Str 13, rage class feature, Power Attack, base attack bonus +12.",
                          benefit: "While raging and using Power Attack, you can spend 3 additional rounds of your rage as a swift action to add your Constitution bonus on damage rolls for melee attacks or thrown weapon attacks you make on your turn. If you are using the weapon two-handed, instead add 1-1/2 times your Constitution bonus. This bonus damage is not multiplied on a critical hit.",
                          summary: "While raging and using Power Attack, you can spend 3 additional rounds of your rage as a swift action to add your Constitution bonus on damage rolls for melee attacks or thrown weapon attacks you…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Raging Deathblow",
                          featType: "General",
                          prerequisites: "Greater rage class feature.",
                          benefit: "While raging, whenever your attack reduces an opponent of a CR greater than or equal to your character level to –1 or fewer hit points, you gain 1 extra round of rage for that day. If that attack was a critical hit, you gain 1 additional extra round of rage for that day. Whenever you rest to renew your total number of rounds of rage per day, any extra rounds you still have from this feat are lost.",
                          summary: "While raging, whenever your attack reduces an opponent of a CR greater than or equal to your character level to –1 or fewer hit points, you gain 1 extra round of rage for that day.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Raging Hurler",
                          featType: "General",
                          prerequisites: "Rage class feature, Throw Anything.",
                          benefit: "While raging, you can throw a two-handed weapon as a standard action, and you double the range increment for weapons you throw. If you also have the Quick Draw feat, you can throw two-handed weapons at your full normal rate of attacks. Further, you can pick up an unattended object that you can use as a improvised weapon within your reach as part of the attack action to throw that item.",
                          summary: "While raging, you can throw a two-handed weapon as a standard action, and you double the range increment for weapons you throw.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Raging Throw",
                          featType: "General",
                          prerequisites: "Str 13, Con 13, rage class feature, Improved Bull Rush, Power Attack, base attack bonus +6.",
                          benefit: "While raging, when you attempt a bull rush combat maneuver, you can spend 1 additional round of your rage as a swift action to add your Constitution bonus on your combat maneuver check to the bull rush. Further, if you bull rush an opponent into a square another creature occupies or into a solid object, the opponent and the creature or object take bludgeoning damage equal to your Strength modifier + your Constitution modifier.",
                          summary: "While raging, when you attempt a bull rush combat maneuver, you can spend 1 additional round of your rage as a swift action to add your Constitution bonus on your combat maneuver check to the bull…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Rapid Grappler (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Greater Grapple, Improved Grapple, Improved Unarmed Strike, base attack bonus +9 or monk level 9th.",
                          benefit: "Whenever you use Greater Grapple to successfully maintain a grapple as a move action, you can then spend a swift action to make a grapple combat maneuver check at a -5 penalty.",
                          summary: "Whenever you use Greater Grapple to successfully maintain a grapple as a move action, you can then spend a swift action to make a grapple combat maneuver check at a -5 penalty.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Rebounding Leap (Combat)",
                          featType: "General",
                          prerequisites: "Leaping lance class feature, Acrobatics 5 ranks, Ride 11 ranks.",
                          benefit: "When you succeed at the Acrobatics check to jump as part of your leaping lance class feature, you can remount your steed as a swift action.",
                          summary: "When you succeed at the Acrobatics check to jump as part of your leaping lance class feature, you can remount your steed as a swift action.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Rebuffing Reduction (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, damage reduction, Improved Bull Rush, Power Attack, base attack bonus +1.",
                          benefit: "Whenever an opponent that is adjacent to you fails to penetrate your DR with a melee attack, you can spend an immediate action to attempt a bull rush combat maneuver against that opponent. If you succeed, you cannot move with the opponent.",
                          normal: "A bull rush combat maneuver is a standard action.",
                          summary: "Whenever an opponent that is adjacent to you fails to penetrate your DR with a melee attack, you can spend an immediate action to attempt a bull rush combat maneuver against that opponent.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Rending Fury (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +6, rend special attack.",
                          benefit: "You deal rend damage if you hit with half the normal natural attacks your rend requires. For example, a troll that has this feat can rend when it hits with one claw attack, while a girallon that has this feat must hit one target with two claw attacks to rend. You can only make this rend attack once per round.",
                          summary: "You deal rend damage if you hit with half the normal natural attacks your rend requires.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Revelation Strike (Combat)",
                          featType: "General",
                          prerequisites: "Revelation class feature, Improved Unarmed Strike.",
                          benefit: "When you gain this feat, choose one revelation that you can use to affect no more than one opponent. If you make a successful unarmed strike against an opponent, in addition to dealing your unarmed strike damage, you can use a swift action to deliver the effects of the chosen revelation to that opponent. Doing so provokes no attacks of opportunity.",
                          special: "You can take this feat multiple times. Each time you take it, you apply it to a different qualifying revelation.",
                          summary: "When you gain this feat, choose one revelation that you can use to affect no more than one opponent.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Rhetorical Flourish",
                          featType: "General",
                          prerequisites: "Cha 13, Persuasive.",
                          benefit: "When using the Diplomacy skill to make a request or change a creature’s attitude, you can use verbal misdirection. To do so, make a Bluff check against that creature. If you succeed, you gain a +4 bonus on your next Diplomacy check against that creature if the check is made within the next minute. If you fail by 5 or more, you instead take a –2 penalty on your next Diplomacy check against that creature. Alternatively, you can use this feat to retry a single failed Diplomacy check against a creature. You take a –4 penalty on your Bluff check when using Rhetorical Flourish in this way. If you succeed, rather than gaining this feat’s normal bonus, you can retry your last Diplomacy check against the creature if that check was made in the past minute.",
                          summary: "When using the Diplomacy skill to make a request or change a creature’s attitude, you can use verbal misdirection. To do so, make a Bluff check against that creature.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ricochet Shot Deed (Grit)",
                          featType: "General",
                          prerequisites: "Grit class feature or Amateur Gunslinger feat, Blind-Fight.",
                          benefit: "You can fire a shot at a wall or piece of solid terrain, and have it ricochet off. When you do, use the square immediately in front of the wall or piece of solid terrain to determine line of sight to a target, and this square is considered the new origin square of the attack. Use that square to determine the effects of cover, and your own square to determine the effects of concealment. You can make this shot as long as you have at least 1 grit point. When making this shot, you can spend 1 grit point to ignore the effects of all cover or concealment. You must choose to spend the grit point before you make the attack roll.",
                          summary: "You can fire a shot at a wall or piece of solid terrain, and have it ricochet off.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Righteous Healing",
                          featType: "General",
                          prerequisites: "Judgment class feature.",
                          benefit: "If you cast a cure spell while you have a judgment active, each target regains 1 extra hit point from the cure spell + 1 hit point per three inquisitor levels you possess.",
                          summary: "If you cast a cure spell while you have a judgment active, each target regains 1 extra hit point from the cure spell + 1 hit point per three inquisitor levels you possess.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sap Adept (Combat)",
                          featType: "General",
                          prerequisites: "Sneak attack +1d6.",
                          benefit: "Whenever you use a bludgeoning weapon to deal nonlethal sneak attack damage, you gain a bonus on your damage roll equal to the number of sneak attack damage dice you rolled.",
                          summary: "Whenever you use a bludgeoning weapon to deal nonlethal sneak attack damage, you gain a bonus on your damage roll equal to the number of sneak attack damage dice you rolled.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sap Master (Combat)",
                          featType: "General",
                          prerequisites: "Sneak attack +3d6, Sap Adept.",
                          benefit: "Whenever you use a bludgeoning weapon to deal nonlethal sneak attack damage to a flat-footed opponent, roll your sneak attack dice twice, totaling the results as your nonlethal sneak attack damage for that attack.",
                          summary: "Whenever you use a bludgeoning weapon to deal nonlethal sneak attack damage to a flat-footed opponent, roll your sneak attack dice twice, totaling the results as your nonlethal sneak attack damage…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Savage Display (Combat, Performance)",
                          featType: "General",
                          prerequisites: "Dazzling Display.",
                          benefit: "When you spend a swift action to make a performance combat check, you gain a +2 bonus on your performance combat check and gain a +1d6 bonus on damage rolls until the end of your next turn. This extra damage is not precision damage.",
                          summary: "When you spend a swift action to make a performance combat check, you gain a +2 bonus on your performance combat check and gain a +1d6 bonus on damage rolls until the end of your next turn.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("School Strike (Combat)",
                          featType: "General",
                          prerequisites: "Wizard school class feature, Improved Unarmed Strike.",
                          benefit: "When you gain this feat, choose one arcane school power that you can use to affect no more than one opponent. If you make a successful unarmed strike against an opponent, in addition to dealing your unarmed strike damage, you can use a swift action to deliver the effects of the chosen school power to that opponent. Doing so provokes no attacks of opportunity.",
                          special: "You can take this feat multiple times. Each time you take it, you apply it to a different qualifying arcane school power.",
                          summary: "When you gain this feat, choose one arcane school power that you can use to affect no more than one opponent.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sea Legs",
                          featType: "General",
                          prerequisites: "Profession (sailor) 5 ranks.",
                          benefit: "You gain a +2 bonus on Acrobatics, Climb, and Swim checks.",
                          summary: "You gain a +2 bonus on Acrobatics, Climb, and Swim checks.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Secret Stash Deed (Grit)",
                          featType: "General",
                          prerequisites: "Grit class feature or Amateur Gunslinger feat, Sleight of Hand 1 rank.",
                          benefit: "Spend 1 grit point while in combat to recover either 1 bullet and 1 dose of black powder or 1 alchemical cartridge from a hidden stash on your person that you had, until now, forgotten about. If the bullet and black powder or the alchemical cartridges are normal shot, you do not need to pay for the ammunition. If you want to recover any other kind of ammunition, you must pay for it with gold pieces from your character’s wealth. The grit cost of this deed cannot be decreased by the Signature Deed feat, the true grit class feature, or any other similar effect that reduces the number of grit points you spend to use a deed. You also gain a +4 bonus on any Sleight of Hand checks made while gambling.",
                          summary: "Spend 1 grit point while in combat to recover either 1 bullet and 1 dose of black powder or 1 alchemical cartridge from a hidden stash on your person that you had, until now, forgotten about.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Seize the Moment (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Combat Reflexes, Improved Critical.",
                          benefit: "When an ally who also has this feat confirms a critical hit against an opponent that you also threaten, you can make an attack of opportunity against that opponent.",
                          summary: "When an ally who also has this feat confirms a critical hit against an opponent that you also threaten, you can make an attack of opportunity against that opponent.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shaitan Earthblast (Combat)",
                          featType: "General",
                          prerequisites: "Con 15, Wis 17, Elemental Fist, Improved Unarmed Strike, Shaitan Skin, Shaitan Style, base attack bonus +13 or monk level 11th.",
                          benefit: "While using the Shaitan Style feat, as a standard action, you can spend two Elemental Fist (Advanced Player’s Guide 158) attempts to unleash a 20-foot column of acid that has a 5-foot radius and erupts from a point of origin within 30 feet of you. Creatures caught in the column take your unarmed strike damage plus the acid damage from your Elemental Fist and are staggered for 1 round. A successful Reflex save (DC 10 + 1/2 your character level + your Wis modifier) reduces the damage by half and prevents a target from being staggered.",
                          summary: "While using the Shaitan Style feat, as a standard action, you can spend two Elemental Fist (Advanced Player’s Guide 158) attempts to unleash a 20-foot column of acid that has a 5-foot radius and…",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shaitan Skin (Combat)",
                          featType: "General",
                          prerequisites: "Con 15, Wis 15, Elemental Fist, Improved Unarmed Strike, Shaitan Style, base attack bonus +11 or monk level 9th.",
                          benefit: "You gain one additional Elemental Fist (Advanced Player’s Guide 158) attempt per day. While using the Shaitan Style feat, you gain acid resistance equal to your base attack bonus, or your monk level plus BAB gained from levels in classes other than monk, whichever is higher. While denied your Dexterity bonus to AC you are also denied this resistance. Creatures that take acid damage from your Elemental Fist attack must succeed at a Reflex save (DC 10 + 1/2 your character level + your Wis modifier) or be staggered for 1 round.",
                          summary: "You gain one additional Elemental Fist (Advanced Player’s Guide 158) attempt per day.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shaitan Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Con 13, Wis 15, Elemental Fist, Improved Unarmed Strike, base attack bonus +9 or monk level 5th.",
                          benefit: "You gain one additional Elemental Fist (Advanced Player’s Guide 158) attempt per day. While using the Shaitan Style and Elemental Fist feats to deal acid damage, you gain a bonus on acid damage rolls equal to your Wisdom bonus. Further, if your Elemental Fist melee attack misses while you are using it to deal acid damage, you still deal 1d6 points of acid damage to your target.",
                          summary: "You gain one additional Elemental Fist (Advanced Player’s Guide 158) attempt per day.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shake It Off (Teamwork)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When you are adjacent to one or more allies who also have this feat, you gain a +1 bonus on saving throws per such ally (maximum +4).",
                          summary: "When you are adjacent to one or more allies who also have this feat, you gain a +1 bonus on saving throws per such ally (maximum +4).",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shapeshifter Foil",
                          featType: "General",
                          prerequisites: "Knowledge (arcana) 5 ranks or Knowledge (nature) 5 ranks, ability to use any polymorph effect.",
                          benefit: "A creature you deal damage to has difficulty using or maintaining polymorph effects until the end your next turn. To use a polymorph effect it must make a concentration check (DC 15 + twice the level of the effect). If you deal damage to an opponent under a polymorph effect, that opponent must succeed at a Will saving throw (DC 10 + 1/2 your character level + your Wisdom modifier) or be forced back to its original form. If you score a critical hit against such an opponent, no saving throw is allowed.",
                          summary: "A creature you deal damage to has difficulty using or maintaining polymorph effects until the end your next turn.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shapeshifting Hunter",
                          featType: "General",
                          prerequisites: "Favored enemy class feature, wild shape class feature.",
                          benefit: "Your levels of druid stack with your ranger levels for determining when you select your next favored enemy. Also, your ranger levels stack with your druid levels in determining the number of times per day you can use your wild shape class feature, up to a maximum of eight times per day.",
                          summary: "Your levels of druid stack with your ranger levels for determining when you select your next favored enemy.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shared Judgment",
                          featType: "General",
                          prerequisites: "Second judgment class feature.",
                          benefit: "You can pronounce a single judgment and extend its effects to one adjacent ally instead of pronouncing a second judgment. Similarly, once you have the third judgment class feature, you can pronounce a single judgment and extend its effects to two adjacent allies instead of pronouncing a second and third judgment. Alternatively, once you have the third judgment class feature, you can pronounce two judgments and extend the effects of one judgment to one adjacent ally instead of pronouncing a third judgment. Once an ally has gained the effects of your judgment, he need not remain adjacent to you to continue gaining that benefit. You can spend a free action to end this benefit for one or both allies. If your judgment bonus is suspended for you, it is suspended for all allies, but when it resumes, it does so for all allies.",
                          summary: "You can pronounce a single judgment and extend its effects to one adjacent ally instead of pronouncing a second judgment.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Siege Commander (Combat)",
                          featType: "General",
                          prerequisites: "Craft (siege weapon) 5 ranks, Knowledge (engineering) 5 ranks or Profession (siege engineer) 1 rank.",
                          benefit: "When you lead a siege engine assembly crew, you grant all of its members a +4 competence bonus on checks to assemble or move the weapon. You also halve the time required to assemble a siege engine.",
                          summary: "When you lead a siege engine assembly crew, you grant all of its members a +4 competence bonus on checks to assemble or move the weapon. You also halve the time required to assemble a siege engine.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Siege Engineer (Combat)",
                          featType: "General",
                          prerequisites: "Knowledge (engineering) 5 ranks or Profession (siege engineer) 5 ranks, proficiency with one siege engine.",
                          benefit: "You are considered to be proficient with all siege weapons. Also, when you are crew lead for a siege engine, you do not generate mishaps on the roll of a natural 1.",
                          normal: "Each siege engine is an exotic weapon.",
                          summary: "You are considered to be proficient with all siege weapons. Also, when you are crew lead for a siege engine, you do not generate mishaps on the roll of a natural 1.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Siege Gunner (Combat)",
                          featType: "General",
                          prerequisites: "Siege Engineer, Profession (siege engineer) 5 ranks.",
                          benefit: "You take no size penalty for aiming a direct-fire siege weapon larger than yourself. If you operate an indirect-fire siege weapon and miss, you misdirect fire by 1 square per range increment.",
                          normal: "Direct-fire weapons impose a –2 attack roll penalty per size category by which the weapon is larger than the creature aiming it. An indirect-fire weapon that misses misdirects fire by 1d4 squares per range increment.",
                          summary: "You take no size penalty for aiming a direct-fire siege weapon larger than yourself. If you operate an indirect-fire siege weapon and miss, you misdirect fire by 1 square per range increment.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Signature Deed (Grit)",
                          featType: "General",
                          prerequisites: "Grit class feature, gunslinger level 11th.",
                          benefit: "Pick a deed that you have access to and that you must spend grit to perform. Once per round, you can perform this deed for 1 fewer grit point (minimum 0). You can reduce the cost of a deed in this way only if you have at least 1 grit point.",
                          summary: "Pick a deed that you have access to and that you must spend grit to perform. Once per round, you can perform this deed for 1 fewer grit point (minimum 0).",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Skilled Driver",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You gain a +4 bonus on driving checks with your chosen vehicle.",
                          summary: "You gain a +4 bonus on driving checks with your chosen vehicle.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await seedFeatsJ()
    }
}
