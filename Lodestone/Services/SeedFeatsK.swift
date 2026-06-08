import Foundation

extension SeedDataBuilder {
    func seedFeatsK() async throws {
        try await db.insertFeat(
        .make("Cover Tracks",
                          featType: "General",
                          prerequisites: "Survival 3 ranks.",
                          benefit: "You increase the DC of Survival checks to track you by 5 when moving at full speed and by 10 when moving at half speed. You can cover the tracks of a number of allies within 30 feet equal to your Wisdom modifier plus half your character level, increasing the DC to track them by 2 if they are moving at full speed or by 5 if they are moving at half speed.",
                          special: "If you have the favored terrain class feature and you are in that terrain, you also add your favored terrain bonus to the DC to track you or your allies.",
                          summary: "You increase the DC of Survival checks to track you by 5 when moving at full speed and by 10 when moving at half speed.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Crashing Wave Buffet (Combat)",
                          featType: "General",
                          prerequisites: "Wis 15, Crashing Wave Style, Improved Drag, Improved Reposition, Improved Unarmed Strike, base attack bonus +6.",
                          benefit: "When dragging or repositioning an opponent, you use your full body to knock your opponent around like a constant wave. At the end of the drag or reposition maneuver, your opponent must succeed at a Fortitude save (DC = 10 + half your character level + your Wisdom modifier + 2 for every 5 feet you drag or reposition your opponent). On a failed save, your opponent becomes disorientated from the movement and takes a –2 penalty on attack rolls, combat maneuver checks, and Dexterity-based skill checks until the end of its next turn.",
                          summary: "When dragging or repositioning an opponent, you use your full body to knock your opponent around like a constant wave.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Crashing Wave Fist (Combat)",
                          featType: "General",
                          prerequisites: "Wis 15, Crashing Wave Buffet, Crashing Wave Style, Improved Drag, Improved Reposition, Improved Unarmed Strike, base attack bonus +9.",
                          benefit: "When dragging or repositioning an opponent, at any point during the movement, you can make one unarmed attack against the opponent using your highest attack bonus. You can make one additional attack for every 5 feet you drag or reposition the opponent beyond the first 5 feet. You take a cumulative –5 penalty on each additional attack made in this way.",
                          summary: "When dragging or repositioning an opponent, at any point during the movement, you can make one unarmed attack against the opponent using your highest attack bonus.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Crashing Wave Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Wis 13, Improved Drag, Improved Reposition, Improved Unarmed Strike.",
                          benefit: "When you successfully drag or reposition an opponent while using this style, at any point during the dragging or repositioning of the opponent, you can move 5 feet as an immediate action, including moving into a square previously occupied by the opponent, even if you have already taken a move action this round. This movement does not provoke attacks of opportunity.",
                          summary: "When you successfully drag or reposition an opponent while using this style, at any point during the dragging or repositioning of the opponent, you can move 5 feet as an immediate action, including…",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cultivate Magic Plants (Item Creation)",
                          featType: "General",
                          prerequisites: "Brew Potion, Craft Wondrous Item, Knowledge (nature) 1 rank.",
                          benefit: "You can cultivate magic plants. Cultivating a magic plant takes 1 week per 1,000 gp in its base price. When you create a magic plant, you make the same choices that you would normally make when casting the spell. Whoever consumes the fruit of the magic plant is the target of the spell.",
                          summary: "You can cultivate magic plants. Cultivating a magic plant takes 1 week per 1,000 gp in its base price.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Deadly Trap",
                          featType: "General",
                          prerequisites: "Craft (traps) 8 ranks, Survival 8 ranks.",
                          benefit: "If you craft a trap that requires an attack roll to hit, you can either increase the threat multiplier of the trap by 1 (×2 becomes ×3, and so on) or grant the trap’s attack a +4 bonus to confirm a critical hit.",
                          summary: "If you craft a trap that requires an attack roll to hit, you can either increase the threat multiplier of the trap by 1 (×2 becomes ×3, and so on) or grant the trap’s attack a +4 bonus to confirm a…",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Deep Diver",
                          featType: "General",
                          prerequisites: "Endurance.",
                          benefit: "You gain a +4 bonus on Acrobatics checks to reduce falling damage when diving into water and on Perception checks in dim light or darkness underwater. When attempting a Swim check to swim downward (at least 45 degrees down from the horizontal), on a successful check you can swim half your speed as a move action, or your speed as a full-round action. If you have a swim speed, it increases by 10 feet when you spend a move action to swim only downward. In addition, you can hold your breath for a number of rounds equal to three times your Constitution score, and you gain a +4 bonus on Constitution checks to continue holding your breath after this time and to resist the effects of the cold environment underwater. Pressure damage you take from deep water is halved.",
                          summary: "You gain a +4 bonus on Acrobatics checks to reduce falling damage when diving into water and on Perception checks in dim light or darkness underwater.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Delectable Feint",
                          featType: "General",
                          prerequisites: "Con 15, delicious racial trait, ghoran.",
                          benefit: "Other creatures find you so tasty that they become distracted in combat, allowing you to exploit their momentary lapses in concentration. You gain a +2 bonus on Bluff checks to feint living herbivorous or omnivorous creatures. In addition, whenever you successfully feint such an opponent, in addition to the normal effects of being feinted in combat, that opponent takes a –2 penalty on Perception checks and concentration checks until the start of your next turn.",
                          summary: "Other creatures find you so tasty that they become distracted in combat, allowing you to exploit their momentary lapses in concentration.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Devotion against the Unnatural",
                          featType: "General",
                          prerequisites: "Animal companion, devotion special ability.",
                          benefit: "The animal companion gains a +2 morale bonus on saving throws against spells, spell-like abilities, and supernatural abilities of aberrations, outsiders, and undead. The animal companion is immune to the unnatural aura ability that some undead creatures (such as wraiths) have.",
                          summary: "The animal companion gains a +2 morale bonus on saving throws against spells, spell-like abilities, and supernatural abilities of aberrations, outsiders, and undead.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Disruptive Companion (Combat)",
                          featType: "General",
                          prerequisites: "Animal companion.",
                          benefit: "The animal companion is trained to interfere with its opponent’s concentration, making even rote tasks difficult. Increase the concentration check DC of spells and spell-like abilities that opponents cast while within the animal companion’s reach by +2. Additionally, opponents can’t take 10 on d20 rolls or checks while within the animal companion’s reach. If an opponent has an ability that allows it to always take 10 on certain skill checks while distracted (such as the skill mastery advanced talent), it gains the benefit of such abilities only if its number of skill ranks is at least 4 higher than the animal companion’s Hit Dice. In addition, the animal companion counts as a fighter with a number of class levels equal to its Hit Dice for the purposes of qualifying for the Disruptive feat, as well as for any feat that lists the Disruptive feat as a prerequisite. The animal companion also adds those feats to the list of animal feats that it can choose from when gaining a new feat.",
                          summary: "The animal companion is trained to interfere with its opponent’s concentration, making even rote tasks difficult.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Eagle-Eyed",
                          featType: "General",
                          prerequisites: "Perception 3 ranks.",
                          benefit: "Your distance modifier to the DC of vision-based Perception checks is decreased to +1 per 50 feet in bright light or normal light, or +1 per 20 feet in dim light. You also gain a +2 circumstance bonus on ranged attacks against targets that are more than 100 feet away.",
                          summary: "Your distance modifier to the DC of vision-based Perception checks is decreased to +1 per 50 feet in bright light or normal light, or +1 per 20 feet in dim light.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Eidolon Mount (Combat)",
                          featType: "General",
                          prerequisites: "Eidolon able to choose quadruped or serpentine as a base form.",
                          benefit: "Your eidolon is capable of serving you as a combat-trained mount. If the eidolon’s base form is not quadruped or serpentine, it also gains the ability to transmute its physical body into a form suitable for you to ride. This functions as the change shape ability, except the eidolon’s base form changes to either quadruped or serpentine and its size changes to be one size category larger than its summoner’s base size. Unlike other changes to size, this ability doesn’t increase the eidolon’s ability scores, reach, or weapon damage beyond that of its true form. (However, if the eidolon’s size is reduced by this ability, its reach and weapon damage are adjusted accordingly.) If the eidolon’s base form is not quadruped or serpentine when it gains this feat, it chooses which base form (quadruped or serpentine) to assume when using this ability. The eidolon cannot choose a base form that is not available to its subtype with this ability. If both base forms are available to the eidolon’s subtype, it can change which base form it assumes when using this ability whenever it gains a new Hit Die. The eidolon can select evolutions that have either base form as a requirement, but any evolutions that require one of the base forms (but not the other) provide no benefit while the eidolon is assuming the shape of its other base form.",
                          summary: "Your eidolon is capable of serving you as a combat-trained mount.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Energized Wild Shape",
                          featType: "General",
                          prerequisites: "Wis 19, base attack bonus +6, wild shape class feature.",
                          benefit: "When you assume a wild shape form, choose one of the following energy types: acid, cold, electricity, or fire. You gain resistance 10 to that energy type. Also, one of your natural attacks deals an additional 1d6 points of damage of the chosen energy type. If you choose a wild shape form that already has energy resistance of the same type you choose, it increases by 5 instead. If you choose a wild shape form that deals damage of the same energy type you choose, increase the energy damage you deal by one die size (1d6 becomes 1d8, and so on).",
                          special: "You can take this feat more than once. Each time you take this feat, choose a different energy type.",
                          summary: "When you assume a wild shape form, choose one of the following energy types: acid, cold, electricity, or fire. You gain resistance 10 to that energy type.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Enhanced Gnome Magic",
                          featType: "General",
                          prerequisites: "Cha 13, Knowledge (nature) 3 ranks, gnome, gnome magic racial trait.",
                          benefit: "Add one of the following to your gnome magic spell-like abilities: burning hands, corrosive touch, gentle breeze, icicle dagger, or shocking grasp. You can use this spell-like ability once per day.",
                          summary: "Add one of the following to your gnome magic spell-like abilities: burning hands, corrosive touch, gentle breeze, icicle dagger, or shocking grasp. You can use this spell-like ability once per day.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Exotic Heritage",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Choose a skill. You gain a +2 bonus on skill checks with that skill. If you have 10 or more ranks in the chosen skill, this bonus increases to +4. This bonus does not stack with that granted by Skill Focus. This feat counts as Skill Focus with the chosen skill for the purpose of meeting the prerequisites of the Eldritch Heritage feat. When you select Eldritch Heritage, if you use this feat as a prerequisite, you can choose a mutated version of your chosen bloodline as though you were a sorcerer with the wildblooded archetype. All other restrictions and requirements of Eldritch Heritage still apply.",
                          summary: "Choose a skill. You gain a +2 bonus on skill checks with that skill. If you have 10 or more ranks in the chosen skill, this bonus increases to +4.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Expert Cartographer",
                          featType: "General",
                          prerequisites: "Craft (maps) 3 ranks.",
                          benefit: "You gain a +4 bonus on Craft (maps) checks when creating a map, as well as 1 additional Discovery Point (see page 124 for more information about Discovery Points). If you succeed at the check by 5 or more, the list price of the map increases by 20%.",
                          summary: "You gain a +4 bonus on Craft (maps) checks when creating a map, as well as 1 additional Discovery Point (see page 124 for more information about Discovery Points).",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Expert Explorer",
                          featType: "General",
                          prerequisites: "Knowledge (nature) or Survival 5 ranks.",
                          benefit: "You gain a +2 bonus on skill checks when using the exploration rules presented on pages 124–125 to detect features in a territory. If you succeed at such a skill check by 5 or more, you gain an additional 1d4 Discovery Points.",
                          summary: "You gain a +2 bonus on skill checks when using the exploration rules presented on pages 124–125 to detect features in a territory.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Expert Salvager",
                          featType: "General",
                          prerequisites: "Craft (any) 2 ranks, Spellcraft 2 ranks.",
                          benefit: "You gain a +4 bonus on Craft checks for Craft skills in which you have at least 2 ranks and Spellcraft checks when crafting items by foraging alchemical supplies and material components, salvaging raw crafting materials, and salvaging raw magical item materials.",
                          summary: "You gain a +4 bonus on Craft checks for Craft skills in which you have at least 2 ranks and Spellcraft checks when crafting items by foraging alchemical supplies and material components, salvaging…",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extended Aspects",
                          featType: "General",
                          prerequisites: "Shifter aspect class feature.",
                          benefit: "Add your Wisdom bonus (minimum 1) to the number of minutes per day that you can use your shifter aspect ability to assume a minor form.",
                          summary: "Add your Wisdom bonus (minimum 1) to the number of minutes per day that you can use your shifter aspect ability to assume a minor form.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("False Trail",
                          featType: "General",
                          prerequisites: "Survival 3 ranks.",
                          benefit: "You can create a false trail in the wilderness via a combination of misleading footprints, discarded items, torn scraps of clothing, and other signs. When you create a false trail, you determine the direction it leads. A creature tracking you must succeed at a Perception or Survival check (DC = 10 + half your character level + your Wisdom modifier) to determine the trail is fake when first encountering it. On a success, the creature can continue to track you as normal. The effect of a failure to identify the trail as false depends on the time and effort spent making it. Quick: A quick false trail takes 10 minutes to complete. A creature that fails to identify the trail as false follows it for 1d4×1,000 feet. Normal: A normal false trail takes 1 hour to complete. A creature that fails to identify the trail as false follows it for 1d4 miles. Elaborate: An elaborate false trail takes 4 hours to complete. A creature that fails to identify the trail as false follows it for 2d6 miles. After a creature that fails to identify a false trail follows it for the determined distance, it can attempt another Perception or Survival check with a +5 bonus. On a success, the creature realizes it’s following a false trail and can continue to track you as normal after backtracking to the start of the false trail (or wherever you diverged from the false trail). On a failure, the creature continues to move in the direction of the false trail for an additional mile. After each mile, it can attempt a new check with a cumulative +5 bonus.",
                          summary: "You can create a false trail in the wilderness via a combination of misleading footprints, discarded items, torn scraps of clothing, and other signs.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Feral Grace (Combat)",
                          featType: "General",
                          prerequisites: "Weapon Finesse, base attack bonus +3, animal companion.",
                          benefit: "Choose one of the animal companion’s natural attack. When the animal companion makes a melee attack with the chosen natural attack using its Dexterity bonus on attack rolls and its Strength bonus on damage rolls, it adds 1/4 of its Hit Dice as a bonus on damage rolls. This bonus damage doesn’t increase or decrease based upon whether the natural attack is a primary or secondary natural attack.",
                          special: "You can select this feat multiple times. Its effects don’t stack. Each time you select this feat, choose a different natural attack to apply its benefit to.",
                          summary: "Choose one of the animal companion’s natural attack. When the animal companion makes a melee attack with the chosen natural attack using its Dexterity bonus on attack rolls and its Strength bonus on…",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ferocious Beast (Combat)",
                          featType: "General",
                          prerequisites: "Intimidate 1 rank, animal companion.",
                          benefit: "The animal companion uses half its master’s class level (minimum 1) in place of its Charisma bonus on Intimidate checks to demoralize an opponent, as well as on Intimidate checks to use the Antagonize feat. In addition, the animal companion can use Intimidate to demoralize an opponent as a move action.",
                          special: "An animal companion can’t take both Ferocious Beast and Intimidating Prowess.",
                          summary: "The animal companion uses half its master’s class level (minimum 1) in place of its Charisma bonus on Intimidate checks to demoralize an opponent, as well as on Intimidate checks to use the…",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ferocious Feint (Combat)",
                          featType: "General",
                          prerequisites: "Bluff 1 rank, animal companion.",
                          benefit: "The animal companion uses half its master’s class level (minimum 1) in place of its Charisma bonus on Bluff checks to feint an opponent. In addition, the animal companion can use Bluff to feint an opponent as a move action.",
                          summary: "The animal companion uses half its master’s class level (minimum 1) in place of its Charisma bonus on Bluff checks to feint an opponent.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fey Insight",
                          featType: "General",
                          prerequisites: "Wis 13; Knowledge (nature) or Knowledge (planes) 2 ranks.",
                          benefit: "You gain a +2 bonus on Bluff, Diplomacy, and Sense Motive skill checks when interacting with creatures of the fey type. If you have 10 or more ranks in one of these skills, the bonus gained when interacting with creatures of the fey type increases to +4 for that skill.",
                          summary: "You gain a +2 bonus on Bluff, Diplomacy, and Sense Motive skill checks when interacting with creatures of the fey type.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fey-Guarded",
                          featType: "General",
                          prerequisites: "Knowledge (nature) or Knowledge (planes) 3 ranks.",
                          benefit: "You gain a +2 morale bonus on saving throws against enchantment and illusion spells and spell-like abilities cast by creatures of the fey type.",
                          summary: "You gain a +2 morale bonus on saving throws against enchantment and illusion spells and spell-like abilities cast by creatures of the fey type.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Flinging Charge (Combat)",
                          featType: "General",
                          prerequisites: "Quick Draw, base attack bonus +6.",
                          benefit: "If you have a thrown weapon in hand when you begin charging, you can make a ranged attack with that weapon against the target of your charge at any point during your charge. You gain the +2 bonus for charging on the attack roll for this ranged attack. You can then immediately draw a melee weapon during your charge. You take a –5 penalty on the melee attack made at the end of the charge. When charging this way, you cannot use any effect that would grant you more than one attack at the end of your charge (such as pounce), nor can you use abilities that grant you other ranged attacks on a charge, such as the hurling charge rage power.",
                          summary: "If you have a thrown weapon in hand when you begin charging, you can make a ranged attack with that weapon against the target of your charge at any point during your charge.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Forester",
                          featType: "General",
                          prerequisites: "Favored terrain (forest) class feature.",
                          benefit: "You ignore difficult terrain created by light or heavy undergrowth, and you ignore increased DCs for Acrobatics and Stealth checks in light or heavy undergrowth. In addition, you can use trees to shield yourself from attacks, gaining a +1 cover bonus to your AC whenever you are adjacent to a tree (including while climbing). If you are adjacent to two or more trees simultaneously, you gain a +2 cover bonus to your AC and a +1 bonus on Reflex saving throws.",
                          summary: "You ignore difficult terrain created by light or heavy undergrowth, and you ignore increased DCs for Acrobatics and Stealth checks in light or heavy undergrowth.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Frightful Shape",
                          featType: "General",
                          prerequisites: "Wis 19, base attack bonus +9, wild shape class feature.",
                          benefit: "When you use wild shape, it is supernaturally ferocious and disquieting in appearance, such that when you attack a creature, you can use this ferocity to frighten observers. Opponents within 30 feet of you when you attack must succeed at a Will save (DC = 10 + half your character level + your Charisma modifier) to resist being affected by your frightful shape. On a failed save, creatures with fewer Hit Dice than you become shaken, or panicked if they have 4 Hit Dice or fewer; in either case, the effect lasts for a number of rounds equal to your character level. An opponent that succeeds at its saving throw is immune to your frightful shape for 24 hours. This is a mind-affecting fear effect.",
                          summary: "When you use wild shape, it is supernaturally ferocious and disquieting in appearance, such that when you attack a creature, you can use this ferocity to frighten observers.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Beast Hunter (Combat)",
                          featType: "General",
                          prerequisites: "Beast Hunter; Improved Beast Hunter; base attack bonus +6; Knowledge (nature) or Survival 6 ranks.",
                          benefit: "If you are surprised by an animal native to the terrain you have chosen for Beast Hunter, you can act normally in the surprise round, though you are still considered flat-footed until it is your turn to act. You also gain a +4 bonus to confirm critical threats against animals native to the terrain you have chosen.",
                          special: "If you have selected Beast Hunter multiple times, you gain the benefits of this feat for all of the terrains you have chosen for those feats.",
                          summary: "If you are surprised by an animal native to the terrain you have chosen for Beast Hunter, you can act normally in the surprise round, though you are still considered flat-footed until it is your turn…",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Gathlain Magic",
                          featType: "General",
                          prerequisites: "Cha 15, Advanced Gathlain Magic, character level 9th, gathlain.",
                          benefit: "You gain the following spells as spell-like abilities, each of which are usable 1/day: command plants, thorny entanglement.",
                          summary: "You gain the following spells as spell-like abilities, each of which are usable 1/day: command plants, thorny entanglement.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Hunter's Bond (Combat)",
                          featType: "General",
                          prerequisites: "Improved Hunter’s Bond, hunter’s bond (hunting companions) class feature, ranger level 12th.",
                          benefit: "When you activate hunter’s bond, you can select a number of targets equal to your Wisdom modifier as long as they all count as your favored enemy.",
                          normal: "You select one target against which your allies receive your favored enemy bonus.",
                          summary: "When you activate hunter’s bond, you can select a number of targets equal to your Wisdom modifier as long as they all count as your favored enemy.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Spring Attack (Combat)",
                          featType: "General",
                          prerequisites: "Dex 17, Acrobatic Steps, Dodge, Improved Spring Attack, Mobility, Nimble Moves, Spring Attack, base attack bonus +16.",
                          benefit: "When you use Spring Attack, you can select three targets to attack during your movement instead of one. The second attack made this way is made at your full base attack bonus – 5, and the third attack made this way is made at your full base attack bonus – 10. All restrictions of Spring Attack apply to each target, and your movement does not provoke attacks of opportunity from any of your targets. You can’t target the same creature more than once.",
                          special: "A monk of at least 18th level can select this feat as a monk bonus feat, but only if he has Improved Spring attack and Spring Attack.",
                          summary: "When you use Spring Attack, you can select three targets to attack during your movement instead of one.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Tenacious Hunter",
                          featType: "General",
                          prerequisites: "Combat Reflexes, Tenacious Hunter, Perception 3 ranks, Stealth 3 ranks, animal companion.",
                          benefit: "The animal companion can attempt a Perception check as a swift action to intentionally search for a stimulus. When using Perception to attempt to pinpoint an invisible foe, the animal companion’s bonus from the Tenacious Hunter feat increases to +20. In addition, whenever the animal companion successfully uses Perception to oppose a Stealth check or to pinpoint an invisible creature’s location, that foe is denied its Dexterity bonus to AC against all attacks that the animal companion makes before the start of the animal companion’s next turn.",
                          normal: "Using Perception to intentionally search for a stimulus is a move action.",
                          summary: "The animal companion can attempt a Perception check as a swift action to intentionally search for a stimulus.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Wilding Strike (Combat)",
                          featType: "General",
                          prerequisites: "Str 18, Improved Unarmed Strike, Improved Wilding Strike, Wilding, Wilding Strike, base attack bonus +16.",
                          benefit: "The damage die of your unarmed strikes increases to 1d10 (or 1d8 if you are Small). This does not stack with any other effects that increase the damage die of your unarmed strikes, including levels in classes such as monk. Increases to your actual size category (such as enlarge person) still increase your damage die as normal.",
                          summary: "The damage die of your unarmed strikes increases to 1d10 (or 1d8 if you are Small).",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Green Tongue",
                          featType: "General",
                          prerequisites: "Cha 13, character level 5th, gathlain.",
                          benefit: "You can cast speak with plants once per day, as a spell-like ability. At 10th level and every 5 levels thereafter, you can cast speak with plants an additional time per day.",
                          summary: "You can cast speak with plants once per day, as a spell-like ability. At 10th level and every 5 levels thereafter, you can cast speak with plants an additional time per day.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Hide Worker",
                          featType: "General",
                          prerequisites: "Craft (armor) 3 ranks, Knowledge (nature) 3 ranks.",
                          benefit: "You gain a +4 bonus on Craft (armor) checks to create armor or shields from the hides of living creatures (such as dragonhide). If you succeed at a Craft (armor) check to create armor or shields from the hides of living creatures by 5 or more, you also decrease the cost to make the item by 10%.",
                          summary: "You gain a +4 bonus on Craft (armor) checks to create armor or shields from the hides of living creatures (such as dragonhide).",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ice Climber",
                          featType: "General",
                          prerequisites: "Arctic Adaptation or Mountaineer; Climb 2 ranks.",
                          benefit: "When moving across a slippery surface (including but not limited to icy surfaces), you gain a +5 bonus on Climb checks and on Acrobatics checks to maintain your balance. If you fail a Climb check, you fall only if you fail the check by 10 or more. You also gain a +5 bonus on Perception checks to notice an avalanche and a +2 circumstance bonus on Reflex saves to avoid an avalanche.",
                          summary: "When moving across a slippery surface (including but not limited to icy surfaces), you gain a +5 bonus on Climb checks and on Acrobatics checks to maintain your balance.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Beast Hunter (Combat)",
                          featType: "General",
                          prerequisites: "Beast Hunter; base attack bonus +3; Knowledge (nature) or Survival 3 ranks.",
                          benefit: "When fighting animals that are at least one size category larger than you and that are native to the terrain you have chosen with Beast Hunter, you gain a +4 bonus on combat maneuver checks and a +4 to your CMD against such animals’ attempts to use combat maneuvers against you. Additionally, you gain a +2 bonus on Reflex saves against attacks by the animal that allow a Reflex save (such as attempting to avoid a trample attack).",
                          special: "If you have selected Beast Hunter multiple times, you gain this benefit for all of the terrains you have chosen for those feats.",
                          summary: "When fighting animals that are at least one size category larger than you and that are native to the terrain you have chosen with Beast Hunter, you gain a +4 bonus on combat maneuver checks and a +4…",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Hunter's Bond (Combat)",
                          featType: "General",
                          prerequisites: "Hunter’s bond (hunting companions) class feature, ranger level 9th.",
                          benefit: "When you activate hunter’s bond, you can grant your allies your full favored enemy bonus against a single target.",
                          normal: "Your allies receive half your favored enemy bonus against a single target.",
                          summary: "When you activate hunter’s bond, you can grant your allies your full favored enemy bonus against a single target.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Intercept Blow (Combat)",
                          featType: "General",
                          prerequisites: "Intercept Blow, base attack bonus +6, animal companion.",
                          benefit: "When the animal companion uses Intercept Blow to intercept an opponent’s melee attack and succeeds, it can take all the damage from the intercepted attack, in which case its master takes no damage from the intercepted attack and doesn’t suffer effects that trigger on a hit.",
                          summary: "When the animal companion uses Intercept Blow to intercept an opponent’s melee attack and succeeds, it can take all the damage from the intercepted attack, in which case its master takes no damage…",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Natural Poison Harvester",
                          featType: "General",
                          prerequisites: "Natural Poison Harvester, Craft (alchemy) 9 ranks, Survival 9 ranks.",
                          benefit: "When you successfully harvest poison from a hazard or dead creature, you gain an additional 1d4 doses of poison.",
                          summary: "When you successfully harvest poison from a hazard or dead creature, you gain an additional 1d4 doses of poison.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Spring Attack (Combat)",
                          featType: "General",
                          prerequisites: "Dex 15, Dodge, Mobility, Nimble Moves, Spring Attack, base attack bonus +9.",
                          benefit: "When you use Spring Attack, you can select two targets to attack during your movement instead of one. The second attack made this way is made at your full base attack bonus – 5. All restrictions of Spring Attack apply to both targets, and your movement does not provoke attacks of opportunity from either target. You can’t target the same creature twice.",
                          special: "A monk of at least 14th level can select this feat as a monk bonus feat, but only if he has Spring Attack.",
                          summary: "When you use Spring Attack, you can select two targets to attack during your movement instead of one. The second attack made this way is made at your full base attack bonus – 5.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Wilding Strike (Combat)",
                          featType: "General",
                          prerequisites: "Str 16, Improved Unarmed Strike, Wilding, Wilding Strike, base attack bonus +11.",
                          benefit: "The damage die of your unarmed strikes increases to 1d8 (or 1d6 if you are Small). This does not stack with any other effects that increase the damage die of your unarmed strikes, including levels in classes such as monk. Increases to your actual size category (such as enlarge person) still increase your damage die as normal.",
                          summary: "The damage die of your unarmed strikes increases to 1d8 (or 1d6 if you are Small).",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Indomitable Mountain Avalanche (Combat)",
                          featType: "General",
                          prerequisites: "Wis 15, Combat Reflexes, Improved Unarmed Strike, Indomitable Mountain Peak, Indomitable Mountain Style, base attack bonus +9.",
                          benefit: "If an opponent fails at a combat maneuver against you, you can use an attack of opportunity to make a melee attack against the opponent using your highest attack bonus. If the attack hits, instead of dealing damage, you can push the opponent back 5 feet for every 5 by which it failed its combat maneuver check (minimum 5 feet). Additionally, when you hit with an unarmed melee attack against an opponent who provoked an attack of opportunity by failing its Acrobatics check to move through a space you threaten, you can push the opponent back 5 feet instead of dealing damage. The opponent moves back in a straight line, but stops before hitting any obstacle or hazard.",
                          summary: "If an opponent fails at a combat maneuver against you, you can use an attack of opportunity to make a melee attack against the opponent using your highest attack bonus.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Indomitable Mountain Peak (Combat)",
                          featType: "General",
                          prerequisites: "Wis 15, Combat Reflexes, Improved Unarmed Strike, Indomitable Mountain Style, base attack bonus +6.",
                          benefit: "Whenever an opponent succeeds at a combat maneuver against you or at an Acrobatics check to avoid provoking an attack of opportunity when moving through a square you threaten, you immediately gain a +2 morale bonus to your CMD against the next combat maneuver against you or to the DC of the next Acrobatics check to avoid an attack of opportunity when moving through a square you threaten. This bonus stacks until either attempt fails against you.",
                          summary: "Whenever an opponent succeeds at a combat maneuver against you or at an Acrobatics check to avoid provoking an attack of opportunity when moving through a square you threaten, you immediately gain a…",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Indomitable Mountain Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Wis 13, Combat Reflexes, Improved Unarmed Strike, base attack bonus +4.",
                          benefit: "As long as you do not take a move action, you gain a +4 morale bonus to your CMD and to the DC of Bluff checks used for feint attempts against you. Additionally, you are considered to be one size category larger for the purpose of calculating your CMD when creatures attempt Acrobatics checks to move through spaces you threaten without provoking attacks of opportunity.",
                          summary: "As long as you do not take a move action, you gain a +4 morale bonus to your CMD and to the DC of Bluff checks used for feint attempts against you.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Inner Light (UW)",
                          featType: "General",
                          prerequisites: "Wis 13, ghoran.",
                          benefit: "Once per day, you can cast daylight as a spell-like ability with a caster level equal to your character level. If you have the light dependent racial trait, you can instead cast this spell without the usual effect, but you are considered to be exposed to sunlight for that day.",
                          summary: "Once per day, you can cast daylight as a spell-like ability with a caster level equal to your character level.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Intercept Blow (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1, animal companion.",
                          benefit: "Whenever the animal companion is adjacent to its master and its master is the target of a melee attack, the animal companion can expend an attack of opportunity as a free action, even if it isn’t its turn, to attempt to intercept the attack. The animal companion makes an attack roll at its highest attack bonus with one of its natural attacks, as if it were making an attack of opportunity, with a –2 penalty for each size category the attacking creature is larger than the animal companion. If the result of this attack roll is greater than the attacking creature’s attack roll result, the animal companion’s master takes only half damage from the attack, and the other half of the damage is dealt to the animal companion. Effects that trigger on every successful hit (such as bleed or the trip special ability) affect both the animal companion and the master, as if both were hit by the attack; however, if it matters (such as for a touch spell that expires after a single hit), treat the animal companion as if it had been hit first. If the animal companion knows the defend trick, the animal companion can use Intercept Blow and any feat that lists it as a prerequisite to protect any ally that it is adjacent to and defending (as per the defend trick).",
                          summary: "Whenever the animal companion is adjacent to its master and its master is the target of a melee attack, the animal companion can expend an attack of opportunity as a free action, even if it isn’t its…",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Intimidate Animals (Combat)",
                          featType: "General",
                          prerequisites: "Greater Wild Empathy, Intimidate 5 ranks, Knowledge (nature) 5 ranks, wild empathy class feature.",
                          benefit: "You add your Wisdom modifier on Intimidate checks against animals in addition to your Charisma modifier. An animal with 4 or fewer Hit Dice is frightened instead of shaken on a successful Intimidate check to demoralize it.",
                          summary: "You add your Wisdom modifier on Intimidate checks against animals in addition to your Charisma modifier.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Jungle Survivalist",
                          featType: "General",
                          prerequisites: "Favored terrain ( jungle) class feature.",
                          benefit: "You gain a +2 bonus on saving throws against diseases, poisons, and the distraction ability of creatures with the swarm subtype. You also gain a +2 bonus on Acrobatics and Climb checks when climbing trees and a +2 bonus on Perception checks against creatures that gain a racial bonus on Stealth checks in vegetation.",
                          summary: "You gain a +2 bonus on saving throws against diseases, poisons, and the distraction ability of creatures with the swarm subtype.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Kudzu Grappler",
                          featType: "General",
                          prerequisites: "Dex 13, Improved Grapple, Improved Unarmed Strike, Greater Grapple, base attack bonus +6, vine leshy.",
                          benefit: "You add an option to blind the grappled creature for 1 round to the list of actions you can take when you succeed at a check to maintain a grapple.",
                          summary: "You add an option to blind the grappled creature for 1 round to the list of actions you can take when you succeed at a check to maintain a grapple.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Live off the Land",
                          featType: "General",
                          prerequisites: "Favored terrain class feature.",
                          benefit: "You (and any allies whom you assist with the Survival skill) can move at full speed while using Survival to gather food and water, and you gain a +4 bonus on Survival checks to do so. If you cast create food and drink, create water, or any similar spell that creates edible and potable provisions while you are in your favored terrain, your caster level increases by an amount equal to half your favored terrain bonus.",
                          summary: "You (and any allies whom you assist with the Survival skill) can move at full speed while using Survival to gather food and water, and you gain a +4 bonus on Survival checks to do so.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Moontouched",
                          featType: "General",
                          prerequisites: "",
                          benefit: "At night when at least part of the moon is showing and you can see it, you gain a +2 bonus on Fortitude and Reflex saves but take a –2 penalty on Will saves.",
                          summary: "At night when at least part of the moon is showing and you can see it, you gain a +2 bonus on Fortitude and Reflex saves but take a –2 penalty on Will saves.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Mountaineer",
                          featType: "General",
                          prerequisites: "Favored terrain (mountains) class feature.",
                          benefit: "You gain a +2 bonus on Climb checks on natural stone surfaces and a +4 bonus on Fortitude saves to avoid high-altitude fatigue and altitude sickness. If you spend 24 hours at a dangerous altitude, you treat that altitude as if it were one category lower. If you spend at least 1 week at that altitude, you are immune to altitude fatigue or sickness. If you go to a lower altitude for more than 1 week, you lose this acclimation.",
                          summary: "You gain a +2 bonus on Climb checks on natural stone surfaces and a +4 bonus on Fortitude saves to avoid high-altitude fatigue and altitude sickness.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Mutated Shape",
                          featType: "General",
                          prerequisites: "Wis 19, base attack bonus +6, wild shape class feature.",
                          benefit: "When you use wild shape, you grow an additional appendage of your choice that can be used to make one of the following attacks: bite, claw, gore, slam, sting, or talons. The appendage can be used as part of a full attack using your highest base attack bonus, and it deals damage as described in Table 3–2: Mutated Shape Appendage Attacks. This appendage lasts for as long as you stay in the same form with this use of wild shape.Attack Fine Diminutive Tiny Small Medium Large Huge Gargantuan Collosal Damage Type Attack Type Bite 1 1d2 1d3 1d4 1d6 1d8 2d6 2d8 4d6 B/P/S Primary Claw - 1 1d2 1d3 1d4 1d6 1d8 2d6 2d8 B/S Primary Gore 1 1d2 1d3 1d4 1d6 1d8 2d6 2d8 4d6 P Primary Slam - 1 1d2 1d3 1d4 1d6 1d8 2d6 2d8 B Primary Sting - 1 1d2 1d3 1d4 1d6 1d8 2d6 2d8 P Primary Talons - 1 1d2 1d3 1d4 1d6 1d8 2d6 2d8 S Primary",
                          summary: "When you use wild shape, you grow an additional appendage of your choice that can be used to make one of the following attacks: bite, claw, gore, slam, sting, or talons.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Natural Poison Antitoxin",
                          featType: "General",
                          prerequisites: "Natural Poison Harvester, Craft (alchemy) 8 ranks, Survival 8 ranks.",
                          benefit: "When you succeed at a Craft (alchemy) check to create an antitoxin using a dose of a natural poison you harvested, you increase the duration of the antitoxin to an amount equal to 4 hours plus an additional hour for every 5 by which your result exceeds the DC.",
                          summary: "When you succeed at a Craft (alchemy) check to create an antitoxin using a dose of a natural poison you harvested, you increase the duration of the antitoxin to an amount equal to 4 hours plus an…",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Natural Poison Harvester",
                          featType: "General",
                          prerequisites: "Craft (alchemy) 6 ranks, Survival 6 ranks.",
                          benefit: "You gain a +2 bonus on Craft (alchemy) checks when creating poison harvested from poisonous monsters. When you successfully craft such poisons, the DC of the poison increases by 2.",
                          summary: "You gain a +2 bonus on Craft (alchemy) checks when creating poison harvested from poisonous monsters. When you successfully craft such poisons, the DC of the poison increases by 2.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Nature's Freedom",
                          featType: "General",
                          prerequisites: "Animal or Plant domain; channel energy class feature.",
                          benefit: "When you expend one additional use when you channel energy, you enable affected creatures to move freely through undergrowth as per the druid’s woodland stride class feature. This effect lasts a for number of minutes equal to your Charisma modifier (minimum 1). Multiple uses of this feat extend the duration of the woodland stride effect.",
                          summary: "When you expend one additional use when you channel energy, you enable affected creatures to move freely through undergrowth as per the druid’s woodland stride class feature.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Nature's Weapons",
                          featType: "General",
                          prerequisites: "Catch Off-Guard; base attack bonus +2; Knowledge (nature) or Survival 2 ranks.",
                          benefit: "You can turn nearly anything you might find in the wilderness into an improvised melee weapon. This improvised melee weapon is one-handed and deals 1d6 points of damage for Medium creatures and 1d4 for Small creatures. Depending on the weapon, it deals bludgeoning, piercing, or slashing damage (at the GM’s discretion). Grabbing an object to use as a weapon is the same action as drawing a weapon. The weapon must be of a material that is naturally occurring in that terrain.",
                          summary: "You can turn nearly anything you might find in the wilderness into an improvised melee weapon.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Night Sky Hex",
                          featType: "General",
                          prerequisites: "Hex class feature; moon, stars, or winter patron.",
                          benefit: "When you gain this feat, choose one hex that you can use to affect no more than one opponent. When you are in view of the night sky and use that hex, increase the save DC of that hex by 2.",
                          summary: "When you gain this feat, choose one hex that you can use to affect no more than one opponent. When you are in view of the night sky and use that hex, increase the save DC of that hex by 2.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("One with the Land",
                          featType: "General",
                          prerequisites: "Favored terrain class feature.",
                          benefit: "In your favored terrain, you require only half the normal amount of food, water, and sleep, and your rate of natural healing is doubled. You add half your favored terrain bonus as a bonus on saving throws and Constitution checks to stave off the effects of cold exposure, heat exposure, starvation, and thirst in your favored terrain.",
                          summary: "In your favored terrain, you require only half the normal amount of food, water, and sleep, and your rate of natural healing is doubled.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Photosynthetic Healing",
                          featType: "General",
                          prerequisites: "Con 15, change shape ability, leshy subtype.",
                          benefit: "You can temporarily draw energy from the sun to heal your wounds. Once per day while you are using change shape to assume a plant form, you can activate this ability as a free action to gain fast healing 1 for a number of rounds equal to your Hit Dice, as long as you are in an area of bright, natural sunlight. When you rest in plant form in bright, natural sunlight, you are healed of twice the normal amount of hit point damage and ability score damage.",
                          summary: "You can temporarily draw energy from the sun to heal your wounds.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Plains Nomad",
                          featType: "General",
                          prerequisites: "Favored terrain (plains) class feature.",
                          benefit: "You and a mount you are riding gain a +2 bonus on Constitution checks to avoid damage and fatigue from hustling or a forced march. In plains terrain, this bonus is doubled and also applies on Survival checks to avoid getting lost, to find food and water, to protect yourself from severe weather, and to predict the weather.",
                          summary: "You and a mount you are riding gain a +2 bonus on Constitution checks to avoid damage and fatigue from hustling or a forced march.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Reactive Reversion",
                          featType: "General",
                          prerequisites: "Dex 13, change shape ability, leshy subtype.",
                          benefit: "You can shift from your alternate form to your natural form as an immediate action using change shape.",
                          normal: "Leshys can shift between forms as a swift action using change shape.",
                          summary: "You can shift from your alternate form to your natural form as an immediate action using change shape.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Reflexive Interception (Combat)",
                          featType: "General",
                          prerequisites: "Intercept Blow, base attack bonus +3, animal companion, evasion.",
                          benefit: "Whenever the animal companion is adjacent to its master and its master is attempts a Reflex save, the animal companion can expend an attack of opportunity as a free action, even if it isn’t its turn, to attempt a Reflex save to intervene. When using this ability, the animal companion loses the benefits of evasion (and improved evasion if it has it), but if the animal companion succeeds at its saving throw, its master gains the benefit of the animal companion’s evasion (or improved evasion if it has it).",
                          summary: "Whenever the animal companion is adjacent to its master and its master is attempts a Reflex save, the animal companion can expend an attack of opportunity as a free action, even if it isn’t its turn,…",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Rubble Skirmisher (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Nimble Moves, base attack bonus +2.",
                          benefit: "When you are in a square that has naturally occurring difficult terrain (bushes, rubble, undergrowth, and so forth), you gain a +2 circumstance bonus on combat maneuver checks and to your CMD.",
                          summary: "When you are in a square that has naturally occurring difficult terrain (bushes, rubble, undergrowth, and so forth), you gain a +2 circumstance bonus on combat maneuver checks and to your CMD.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Seasoned Flier",
                          featType: "General",
                          prerequisites: "Dex 15, Fly 5 ranks, fly speed, gathlain.",
                          benefit: "Your maneuverability while flying improves to average.",
                          summary: "Your maneuverability while flying improves to average.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Share Feature",
                          featType: "General",
                          prerequisites: "Animal companion, master must have the chosen class feature.",
                          benefit: "Choose one of the following class features: bravery, camouflage, favored terrain, hide in plain sight, resist nature’s lure, track, trackless step, venom immunity, and woodland stride. The animal companion gains the benefits of the selected class feature, using its Hit Dice as its level in its master’s class for the purpose of this ability; the animal companion gains the benefits of the base class feature, even if the master alters the class feature via an archetype or other means, though the animal companion doesn’t count as having the class feature for the purpose of fulfilling prerequisites.",
                          summary: "Choose one of the following class features: bravery, camouflage, favored terrain, hide in plain sight, resist nature’s lure, track, trackless step, venom immunity, and woodland stride.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shifter's Edge",
                          featType: "General",
                          prerequisites: "Dex 13, Weapon Finesse, shifter claws class feature.",
                          benefit: "Whenever you use Weapon Finesse to make a melee attack with your claws or a natural attack augmented by your claws, and you use your Dexterity bonus on attack rolls and your Strength modifier on damage rolls, you also add half your shifter level to the damage.",
                          summary: "Whenever you use Weapon Finesse to make a melee attack with your claws or a natural attack augmented by your claws, and you use your Dexterity bonus on attack rolls and your Strength modifier on…",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shifter's Rush",
                          featType: "General",
                          prerequisites: "Wild shape class feature, shifter level 4th",
                          benefit: "When you use a move action to move 10 feet or more or when you charge, you can use wild shape as a free action during that movement.",
                          summary: "When you use a move action to move 10 feet or more or when you charge, you can use wild shape as a free action during that movement.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sproutling",
                          featType: "General",
                          prerequisites: "Cha 15, seed racial trait, ghoran.",
                          benefit: "Whenever you use your seed ability to grow a new body, you can choose to sprout in half the normal amount of time (1d6 days instead of 2d6 days). If you do, your new body is Small instead of Medium, your natural armor bonus from racial traits (if any) is reduced by half, and you take a –2 penalty to Strength, Dexterity, and Constitution. These modifications last 1d3 weeks, after which your body matures to its proper size and loses all penalties associated with sprouting early.",
                          summary: "Whenever you use your seed ability to grow a new body, you can choose to sprout in half the normal amount of time (1d6 days instead of 2d6 days).",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Storm Survivor",
                          featType: "General",
                          prerequisites: "Knowledge (nature) 2 ranks, Survival 2 ranks.",
                          benefit: "When you are in a storm of any type, you gain a +2 circumstance bonus on Perception checks, Survival checks, and saving throws regarding adverse effects from the storm itself. If you have 10 or more ranks in one of these skills, this bonus increases to +4.",
                          summary: "When you are in a storm of any type, you gain a +2 circumstance bonus on Perception checks, Survival checks, and saving throws regarding adverse effects from the storm itself.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Superior Gathlain Magic",
                          featType: "General",
                          prerequisites: "Cha 17, Advanced Gathlain Magic, Greater Gathlain Magic, character level 15th, gathlain.",
                          benefit: "You gain the following spells as spell-like abilities, each usable 1/day: liveoak, tree stride.",
                          summary: "You gain the following spells as spell-like abilities, each usable 1/day: liveoak, tree stride.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Swamper",
                          featType: "General",
                          prerequisites: "Favored terrain (swamp) class feature.",
                          benefit: "You gain a +2 bonus on Climb checks, Swim checks, and Acrobatics checks to maintain your balance when moving across a slippery surface, and you can move at full speed through shallow and deep bog terrain. You can see twice as far as normal in fog, mist, murky water, vegetation, and similarly obscuring conditions, and creatures adjacent to you never gain concealment from fog, mist, murky water, or vegetation.",
                          summary: "You gain a +2 bonus on Climb checks, Swim checks, and Acrobatics checks to maintain your balance when moving across a slippery surface, and you can move at full speed through shallow and deep bog…",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Symbiotic Resilience",
                          featType: "General",
                          prerequisites: "Con 13, gathlain.",
                          benefit: "When you are paralyzed, magically put to sleep, or stunned, you ignore the effects of that condition, but you are instead staggered for the same duration as the ignored condition. Removing the ignored condition also removes this staggered condition, but you can’t otherwise remove the staggered condition, nor can immunity to being staggered protect against it.",
                          summary: "When you are paralyzed, magically put to sleep, or stunned, you ignore the effects of that condition, but you are instead staggered for the same duration as the ignored condition.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tenacious Hunter",
                          featType: "General",
                          prerequisites: "Perception 3 ranks, Stealth 3 ranks, animal companion.",
                          benefit: "The animal companion gains a +2 bonus on Perception checks to oppose Stealth checks. When using Perception to pinpoint an invisible creature’s location, this bonus increases to +10. In addition, whenever the animal companion successfully uses Perception to notice a creature using Stealth or to pinpoint an invisible creature’s location, that foe is denied its Dexterity bonus to AC against the next attack the animal companion makes on or before the animal companion’s next turn.",
                          summary: "The animal companion gains a +2 bonus on Perception checks to oppose Stealth checks. When using Perception to pinpoint an invisible creature’s location, this bonus increases to +10.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Thrill of the Hunt (Combat)",
                          featType: "General",
                          prerequisites: "Survival 1 rank; base attack bonus +4 or track class feature.",
                          benefit: "Once per day, when you succeed at a Survival check to find or follow a creature’s tracks, you can designate that creature to be your prize for a number of hours equal to 4 + your ranks in Survival. You gain a +2 morale bonus on Survival checks to follow your prize’s tracks and on weapon damage rolls against your prize. If you find and subsequently render your prize dead or helpless, you gain a +2 morale bonus on attack rolls, saves, and skill checks for a number of hours equal to your ranks in Survival.",
                          special: "An animal companion can choose this feat as if it were an animal feat (Core Rulebook 53).",
                          summary: "Once per day, when you succeed at a Survival check to find or follow a creature’s tracks, you can designate that creature to be your prize for a number of hours equal to 4 + your ranks in Survival.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Torrid Tolerance",
                          featType: "General",
                          prerequisites: "Desert Dweller or Jungle Survivalist.",
                          benefit: "You treat hot environments (Core Rulebook 444) as though they were one step less severe; if you have a similar ability from another feat (like Desert Dweller), the benefits stack and you treat hot conditions as if they were two steps less severe. You do not take a penalty on Constitution checks for wearing armor in hot climates.",
                          summary: "You treat hot environments (Core Rulebook 444) as though they were one step less severe; if you have a similar ability from another feat (like Desert Dweller), the benefits stack and you treat hot…",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Totemic Disciple",
                          featType: "General",
                          prerequisites: "Str 15; Dex 13; Athletic, Totemic Initiate; base attack bonus +9; no barbarian totem rage powers except those chosen with this feat or Totemic Initiate; nonlawful alignment.",
                          benefit: "Choose one barbarian totem rage power that requires that you have the totem rage power you selected with Totemic Initiate. While gaining the benefits of Totemic Initiate, you also gain the benefits of this new rage power.",
                          summary: "Choose one barbarian totem rage power that requires that you have the totem rage power you selected with Totemic Initiate.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Totemic Initiate",
                          featType: "General",
                          prerequisites: "Str 13; Dex 13; Athletic; base attack bonus +5; no barbarian totem rage powers except the one you choose with this feat; nonlawful alignment.",
                          benefit: "Choose one barbarian lesser totem rage power (such as lesser beast totem). As a swift action, you can gain the benefits of that rage power as though you were raging. For the purpose of determining that rage power’s effects, your barbarian level is equal to your base attack bonus. You do not gain any other benefits or penalties of rage. You can gain these benefits for a number of rounds per day equal to your base attack bonus plus your Constitution modifier; these rounds do not need to be consecutive.",
                          summary: "Choose one barbarian lesser totem rage power (such as lesser beast totem). As a swift action, you can gain the benefits of that rage power as though you were raging.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Totemic Master",
                          featType: "General",
                          prerequisites: "Str 17; Dex 13; Wis 13; Athletic; Totemic Disciple; Totemic Initiate; base attack bonus +13; no barbarian totem rage powers except those chosen with this feat, Totemic Disciple, or Totemic Initiate; nonlawful alignment.",
                          benefit: "Choose one greater totem rage power that requires the totem rage power you chose with Totemic Disciple. While gaining the benefits of Totemic Initiate, you also gain the benefits of this new rage power as well as the one you chose with Totemic Disciple. If you gain the pounce ability this way, you can make only natural attacks using your pounce ability.",
                          summary: "Choose one greater totem rage power that requires the totem rage power you chose with Totemic Disciple.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tree Leaper",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When you are in a tree, you count as having a running start when you jump.",
                          normal: "You must have at least 10 feet of space for a running start.",
                          summary: "When you are in a tree, you count as having a running start when you jump.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Vigilant Charger (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Dex 13, Combat Reflexes.",
                          benefit: "You can ready an action to charge when an enemy enters a specific space you designate. You must be able to charge the square both when you ready the charge and when the readied action triggers, or you cannot attempt the readied action. When you make a readied charge, you can move only up to your speed.",
                          normal: "You can’t ready an action to charge. Charging allows you to move up to twice your speed.",
                          summary: "You can ready an action to charge when an enemy enters a specific space you designate.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Voice of Beasts",
                          featType: "General",
                          prerequisites: "Wild shape class feature.",
                          benefit: "While you are using wild shape, you gain the ability to communicate with all animals. This acts as speak with animals, though the effect is supernatural in nature and can’t be dispelled.",
                          summary: "While you are using wild shape, you gain the ability to communicate with all animals. This acts as speak with animals, though the effect is supernatural in nature and can’t be dispelled.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Wandering Mind",
                          featType: "General",
                          prerequisites: "Character level 9th, gathlain.",
                          benefit: "When you fail a Will save against a mind-affecting effect that lasts more than 1 round, you can attempt another Will save on the round after your failed save. If you succeed, you gain the normal benefits of succeeding at a Will save against the effect. This feat offers only one additional saving throw against each effect.",
                          summary: "When you fail a Will save against a mind-affecting effect that lasts more than 1 round, you can attempt another Will save on the round after your failed save.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Wild Growth Channel",
                          featType: "General",
                          prerequisites: "Channel positive energy class feature, Plant domain.",
                          benefit: "By expending two additional uses when you channel energy, you cause the ground in the area of effect to erupt in a growth of vines. You create a number of vine growths (AC 10, 5 hp) equal to your Charisma modifier (minimum 1). Each growth of vines occupies 1 5-foot square of your choosing. As an immediate action when you use this ability, and again as a free action at the start of your turn, you can command the vines to wrap around the legs of a creature occupying the square. The creature must succeed at a Reflex save (DC = 10 + half your class level + your Charisma modifier) or become rooted to the spot. The vines last a number of rounds equal to your Charisma modifier (minimum 1). The ground must be composed of a material able to support plant life (such as soil).",
                          summary: "By expending two additional uses when you channel energy, you cause the ground in the area of effect to erupt in a growth of vines.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Wild Growth Hex",
                          featType: "General",
                          prerequisites: "Hex class feature; summer, thorns, or woodlands patron.",
                          benefit: "When you gain this feat, choose one hex that you can use to affect no more than one opponent. If the target of your hex fails its saving throw to resist your hex, the square it occupies becomes overgrown with thorny plants that count as difficult terrain. A creature moving in or out of the square must succeed at a Reflex save or Acrobatics check (DC = 10 + half your level + your Charisma modifier) or take 1d6 points of piercing damage and immediately end its movement. For every 5 by which the target fails its save against your hex, you can create 1 additional square of difficult terrain adjacent to any square the target occupies. The difficult terrain lasts a number of rounds equal to your Charisma modifier (minimum 1). The ground must be composed of a material able to support plant life (such as soil).",
                          summary: "When you gain this feat, choose one hex that you can use to affect no more than one opponent.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Wild Vigor",
                          featType: "General",
                          prerequisites: "Wild shape class feature.",
                          benefit: "A number of times per day equal to your Wisdom bonus (minimum 1), when you use wild shape, you can gain a number of temporary hit points equal to your base attack bonus. These temporary hit points last for the duration of the wild shape or until they are lost.",
                          summary: "A number of times per day equal to your Wisdom bonus (minimum 1), when you use wild shape, you can gain a number of temporary hit points equal to your base attack bonus.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Wilding",
                          featType: "General",
                          prerequisites: "Any neutral alignment, must be taken at 1st level.",
                          benefit: "You gain the druid’s wild empathy ability, using your character level as your druid level. If you have one or more levels in a class that grants wild empathy, you gain an additional +3 bonus on wild empathy checks. You are treated as an animal for the purpose of harmful mind-affecting effects that target animals (such as charm animal).",
                          special: "A character who has this feat can select the Animal Soul or Aspect of the Beast feats without meeting the prerequisites.",
                          summary: "You gain the druid’s wild empathy ability, using your character level as your druid level.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Wilding Mind",
                          featType: "General",
                          prerequisites: "Wis 13, Wilding.",
                          benefit: "Whenever you fail a saving throw against a fear or mind-affecting effect, you can take 1d3 points of Intelligence damage as an immediate action and reroll the saving throw. This damage cannot be reduced or avoided in any way. You must take the new result, even if it is worse.",
                          summary: "Whenever you fail a saving throw against a fear or mind-affecting effect, you can take 1d3 points of Intelligence damage as an immediate action and reroll the saving throw.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Wilding Senses",
                          featType: "General",
                          prerequisites: "Wis 13, Wilding.",
                          benefit: "You gain a +2 bonus on Perception checks; this bonus increases to +4 when determining if you can act during a surprise round. If you have 10 or more ranks in Perception, this bonus increases to +4 (or +8 when determining whether you can act during a surprise round). This bonus does not stack with that granted by the Alertness feat, though Wilding Senses counts as the Alertness feat for the purpose of fulfilling feat prerequisites and prestige class requirements.",
                          summary: "You gain a +2 bonus on Perception checks; this bonus increases to +4 when determining if you can act during a surprise round.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Wilding Stride",
                          featType: "General",
                          prerequisites: "Con 13, Wilding.",
                          benefit: "Your base speed increases by 10 feet. This does not stack with the fast movement class feature or similar effects, unless that class feature or effect provides an enhancement bonus.",
                          summary: "Your base speed increases by 10 feet. This does not stack with the fast movement class feature or similar effects, unless that class feature or effect provides an enhancement bonus.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Wilding Strike (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Improved Unarmed Strike, Wilding.",
                          benefit: "The damage die of your unarmed strikes increases to 1d6 (or 1d4 if you are Small). This does not stack with any other effects that increase the damage die of your unarmed strikes, including levels in classes such as monk. Increases to your actual size category (such as enlarge person) still increase your damage die as normal.",
                          summary: "The damage die of your unarmed strikes increases to 1d6 (or 1d4 if you are Small).",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Wolf Rider",
                          featType: "General",
                          prerequisites: "Undersized Mount or effective level 7th in the class that grants the mount or divine bond (mount) class feature; Knowledge (nature) 1 rank; mount or divine bond (mount) class feature.",
                          benefit: "You can select a wolf in place of the normal mount available via your mount or divine bond (mount) class feature. In addition, Knowledge (nature) is always a class skill for you.",
                          summary: "You can select a wolf in place of the normal mount available via your mount or divine bond (mount) class feature. In addition, Knowledge (nature) is always a class skill for you.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Wood Crafter",
                          featType: "General",
                          prerequisites: "Craft (armor) 3 ranks, Knowledge (nature) 3 ranks.",
                          benefit: "You gain a +4 bonus on Craft (armor) checks to create armor and shields from wood or special materials containing wood (such as darkwood). If you succeed at the check by 5 or more, you decrease the cost to make the item by 10%.",
                          summary: "You gain a +4 bonus on Craft (armor) checks to create armor and shields from wood or special materials containing wood (such as darkwood).",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertFeat(
        .make("Woodland Wraith (Combat)",
                          featType: "General",
                          prerequisites: "Dex 15, Dodge, base attack bonus +6.",
                          benefit: "If you take two actions to move or a withdrawal action in a turn while starting or ending your movement in either naturally occurring difficult terrain (bushes, brambles, etc.) or a space with a natural object providing at least partial cover (a tree, rock, etc.), you gain concealment until you attack, until you move out of that space, or until the end of your next turn, whichever occurs first.",
                          summary: "If you take two actions to move or a withdrawal action in a turn while starting or ending your movement in either naturally occurring difficult terrain (bushes, brambles, etc.) or a space with a…",
                          source: "Ultimate Wilderness", isPremium: true),

                    // // MARK: - Ultimate Wilderness, Advanced Class Guide
        )
        try await db.insertFeat(
        .make("Extended Animal Focus",
                          featType: "General",
                          prerequisites: "Animal focus class feature.",
                          benefit: "Add your Wisdom bonus (minimum 1) to the number of minutes per day that you can use your animal focus ability to assume the aspects of an animal.",
                          summary: "Add your Wisdom bonus (minimum 1) to the number of minutes per day that you can use your animal focus ability to assume the aspects of an animal.",
                          source: "Ultimate Wilderness, Advanced Class Guide", isPremium: true),

                    // // MARK: - Ultimate Wilderness, Dirty Tactics Toolbox
        )
        try await db.insertFeat(
        .make("Ambush Awareness",
                          featType: "General",
                          prerequisites: "Alertness.",
                          benefit: "If you are unable to act in the surprise round because you failed a Perception check, you can still act on your initiative count in the surprise round, but only to take the total defense action.",
                          normal: "If you are unable to act in the surprise round because you failed a Perception check, you can’t take any actions during the surprise round.",
                          summary: "If you are unable to act in the surprise round because you failed a Perception check, you can still act on your initiative count in the surprise round, but only to take the total defense action.",
                          source: "Ultimate Wilderness, Dirty Tactics Toolbox", isPremium: true),

                    // // MARK: - Ultimate Wilderness, Giant Hunter's Handbook
        )
        try await db.insertFeat(
        .make("Harder They Fall (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Str 13, Int 13, Combat Expertise, Power Attack.",
                          benefit: "When you use the aid another action to grant an ally who also has this feat a +2 bonus on a bull rush or trip combat maneuver check, the ally can attempt that maneuver even against foes two or more size categories larger than herself.",
                          summary: "When you use the aid another action to grant an ally who also has this feat a +2 bonus on a bull rush or trip combat maneuver check, the ally can attempt that maneuver even against foes two or more…",
                          source: "Ultimate Wilderness, Giant Hunter's Handbook", isPremium: true),

                    // // MARK: - Ultimate Wilderness, Heroes of the Wild
        )
        try await db.insertFeat(
        .make("Branch Pounce (Combat)",
                          featType: "General",
                          prerequisites: "Climb 3 ranks, Stealth 3 ranks.",
                          benefit: "When charging a target by jumping down from above (such as when jumping out of a tree), you can soften your fall with a melee attack. If the attack at the end of your charge hits, the attack deals damage as normal and you also deal the amount of falling damage appropriate to your fall to the target (1d6 points for a 10-foot fall, 2d6 points for a 20-foot fall, and so on). This falling damage is not multiplied on a critical hit. You land in an unoccupied square of your choosing adjacent to the target, and you take falling damage as if your fall had been 10 feet shorter. You can attempt an Acrobatics check as normal to treat the fall as an additional 10 feet shorter for the purpose of determining the damage you take from the fall. If your attack misses, you land prone in a random square adjacent to the target and automatically take the full amount of falling damage.",
                          summary: "When charging a target by jumping down from above (such as when jumping out of a tree), you can soften your fall with a melee attack.",
                          source: "Ultimate Wilderness, Heroes of the Wild", isPremium: true)
        )
        try await db.insertFeat(
        .make("Earth Magic",
                          featType: "General",
                          prerequisites: "Ability to cast 1st-level spells, favored terrain class feature.",
                          benefit: "While you’re in your favored terrain, your effective caster level increases by 1 for the purpose of improving spell effects dependent on caster level. This increase in effective caster level doesn’t grant you access to more spells.",
                          summary: "While you’re in your favored terrain, your effective caster level increases by 1 for the purpose of improving spell effects dependent on caster level.",
                          source: "Ultimate Wilderness, Heroes of the Wild", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fey Performance",
                          featType: "General",
                          prerequisites: "Bardic performance class ability.",
                          benefit: "You can enhance your performance with nature’s sights and sounds by expending an extra round of bardic performance at the start of the performance. The range of the performance increases by 30 feet. Furthermore, for the purposes of affecting blind and deaf creatures, this performance counts as having both audible and visible components. This feat doesn’t function in environments devoid of animal and plant life.",
                          summary: "You can enhance your performance with nature’s sights and sounds by expending an extra round of bardic performance at the start of the performance. The range of the performance increases by 30 feet.",
                          source: "Ultimate Wilderness, Heroes of the Wild", isPremium: true)
        )
        try await db.insertFeat(
        .make("Foebane Magic",
                          featType: "General",
                          prerequisites: "Ability to cast 1st-level spells, favored enemy class feature.",
                          benefit: "Your favored enemies take a –1 penalty on saving throws against spells you cast. Furthermore, you gain your favored enemy bonus on Spellcraft checks to identify spells cast by favored enemies.",
                          summary: "Your favored enemies take a –1 penalty on saving throws against spells you cast. Furthermore, you gain your favored enemy bonus on Spellcraft checks to identify spells cast by favored enemies.",
                          source: "Ultimate Wilderness, Heroes of the Wild", isPremium: true)
        )
        try await db.insertFeat(
        .make("Scion of the Land (Teamwork)",
                          featType: "General",
                          prerequisites: "Survival 1 rank.",
                          benefit: "When traveling through terrain in which you can leave no trail and be impossible to track (as a result of favored terrain, trackless step, or a similar class feature), you grant that ability to allies within 60 feet who also have this feat. If an ally within 60 feet who has this feat is also able to move normally through the current terrain without leaving tracks, you gain a +1 bonus on Knowledge (nature), Perception, and Survival checks while in that terrain.",
                          summary: "When traveling through terrain in which you can leave no trail and be impossible to track (as a result of favored terrain, trackless step, or a similar class feature), you grant that ability to…",
                          source: "Ultimate Wilderness, Heroes of the Wild", isPremium: true)
        )
        try await db.insertFeat(
        .make("Verdant Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "Spell Focus (enchantment), Knowledge (nature) 6 ranks.",
                          benefit: "A verdant spell affects plant creatures (even mindless plant creatures) as if they weren’t immune to mind-affecting effects, but it has no effect on other types of creatures. A verdant spell uses up a spell slot 2 levels higher than the spell’s actual level. This feat works only on mind-affecting spells.",
                          normal: "Creatures of the plant type are immune to mind-affecting effects.",
                          summary: "A verdant spell affects plant creatures (even mindless plant creatures) as if they weren’t immune to mind-affecting effects, but it has no effect on other types of creatures.",
                          source: "Ultimate Wilderness, Heroes of the Wild", isPremium: true),

                    // // MARK: - Ultimate Wilderness, Heroes of the Wild, Adventurer's Guide
        )
        try await db.insertFeat(
        .make("Tribal Hunter (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Animal Affinity.",
                          benefit: "When either you or an ally with this feat is adjacent to and flanking an opponent that is larger than either of you, you both are considered to be flanking the opponent as long as you remain adjacent to it.",
                          normal: "You must be positioned opposite an ally to flank an opponent.",
                          summary: "When either you or an ally with this feat is adjacent to and flanking an opponent that is larger than either of you, you both are considered to be flanking the opponent as long as you remain adjacent…",
                          source: "Ultimate Wilderness, Heroes of the Wild, Adventurer's Guide", isPremium: true),

                    // // MARK: - Ultimate Wilderness, Melee Tactics Toolbox
        )
        try await db.insertFeat(
        .make("Aquatic Combatant (Combat)",
                          featType: "General",
                          prerequisites: "Swim 1 rank.",
                          benefit: "You gain a +2 bonus on Swim checks and don’t take the usual penalties on melee attack rolls made underwater. Your slashing melee attacks and unarmed bludgeoning attacks deal full damage underwater.",
                          normal: "When you’re underwater, most of your melee attacks take a –2 penalty and deal only half damage.",
                          summary: "You gain a +2 bonus on Swim checks and don’t take the usual penalties on melee attack rolls made underwater. Your slashing melee attacks and unarmed bludgeoning attacks deal full damage underwater.",
                          source: "Ultimate Wilderness, Melee Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Aquatic Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "An aquatic spell functions normally underwater and requires no caster level check to cast, even if it has the fire descriptor. In addition, the spell can be cast from the surface into water and still be effective. An aquatic spell uses up a spell slot 1 level higher than the spell’s actual level.",
                          summary: "An aquatic spell functions normally underwater and requires no caster level check to cast, even if it has the fire descriptor.",
                          source: "Ultimate Wilderness, Melee Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("One Eye Open",
                          featType: "General",
                          prerequisites: "Wis 13, Alertness.",
                          benefit: "The DCs of your Perception checks don’t increase when you are asleep. If you succeed at a Perception check to notice something dangerous while asleep, you can wake up to confront the danger.",
                          normal: "The DC for a Perception check attempted by a sleeping creature increases by 10.",
                          summary: "The DCs of your Perception checks don’t increase when you are asleep. If you succeed at a Perception check to notice something dangerous while asleep, you can wake up to confront the danger.",
                          source: "Ultimate Wilderness, Melee Tactics Toolbox", isPremium: true),

                    // // MARK: - Ultimate Wilderness, Pathfinder Campaign Setting, Inner Sea World Guide
        )
        try await db.insertFeat(
        .make("Desert Dweller",
                          featType: "General",
                          prerequisites: "Favored terrain (desert) class feature.",
                          benefit: "You treat hot environments (Core Rulebook 444) as though they were one step less severe; if you have a similar ability from another feat, such as Torrid Tolerance, the benefits stack and you treat hot conditions as if they were two steps less severe. You need to consume only half the normal amount of water for a creature of your size, and you gain a +4 bonus on Constitution checks to resist the effects of thirst. You also gain a +4 bonus on saving throws and checks to avoid becoming blinded or dazzled by glare or being deceived by a desert mirage.",
                          summary: "You treat hot environments (Core Rulebook 444) as though they were one step less severe; if you have a similar ability from another feat, such as Torrid Tolerance, the benefits stack and you treat…",
                          source: "Ultimate Wilderness, Pathfinder Campaign Setting, Inner Sea World Guide", isPremium: true),

                    // // MARK: - Ultimate Wilderness, People of the North
        )
        try await db.insertFeat(
        .make("Witchbreaker (Combat)",
                          featType: "General",
                          prerequisites: "Iron Will.",
                          benefit: "You gain a +2 bonus on saving throws against the hexes, spells, spell-like abilities, and supernatural abilities of hags and witches. In addition, whenever you confirm a critical hit against a hag or a witch, any of your allies affected by a mind-affecting effect from that creature can attempt a new saving throw against the effect as an immediate action.",
                          summary: "You gain a +2 bonus on saving throws against the hexes, spells, spell-like abilities, and supernatural abilities of hags and witches.",
                          source: "Ultimate Wilderness, People of the North", isPremium: true),

                    // // MARK: - Ultimate Wilderness, People of the River
        )
        try await db.insertFeat(
        .make("River Raider (Combat)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You gain a +2 bonus on Swim and Stealth checks while swimming in calm or rough water (but not while swimming in stormy water). In addition, if you’re able to act in a surprise round and you start the surprise round in water, you can take both a move and a standard action. You still cannot take a full-round action during the surprise round.",
                          normal: "You can take only a move or a standard action if you can act in the surprise round.",
                          summary: "You gain a +2 bonus on Swim and Stealth checks while swimming in calm or rough water (but not while swimming in stormy water).",
                          source: "Ultimate Wilderness, People of the River", isPremium: true)
        )
        try await db.insertFeat(
        .make("Waterway Caster",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You automatically succeed at concentration checks required to cast a spell while being subjected to vigorous or violent motion while either swimming or on a ship. You gain a +4 bonus on concentration checks to cast spells underwater.",
                          summary: "You automatically succeed at concentration checks required to cast a spell while being subjected to vigorous or violent motion while either swimming or on a ship.",
                          source: "Ultimate Wilderness, People of the River", isPremium: true),

                    // // MARK: - Ultimate Wilderness, People of the Sands
        )
        try await db.insertFeat(
        .make("Out of the Sun (Teamwork)",
                          featType: "General",
                          prerequisites: "Bluff 3 ranks, Stealth 3 ranks.",
                          benefit: "When you hit with a melee attack, you can attempt a Bluff check as a move action to feint. You do not gain the benefits of this feint; instead, if you succeed at your Bluff check, an ally with this feat who is adjacent to you or your opponent gains the benefits, such that the opponent is denied its Dexterity bonus to AC (if any) against your ally’s next melee attack against that opponent. This attack must be made before the end of your ally’s next turn. You gain a +2 circumstance bonus on your Bluff check in bright light. This bonus increases to +4 in natural sunlight. You cannot use this feat in dim light or darkness.",
                          special: "If you have the Improved Feint feat, you can feint with Out of the Sun as a swift action after you hit with a melee attack.",
                          summary: "When you hit with a melee attack, you can attempt a Bluff check as a move action to feint.",
                          source: "Ultimate Wilderness, People of the Sands", isPremium: true),

                    // // MARK: - Ultimate Wilderness, Ranged Tactics Toolbox
        )
        try await db.insertFeat(
        .make("Clinging Climber (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Climb 3 ranks.",
                          benefit: "As a move action while climbing, you can cling to your climbing surface with your legs by succeeding at a Climb check with the same DC as that of climbing the surface as a move action. If successful, you can make attacks with a two-handed ranged weapon and reload ranged weapons until you resume climbing. The GM can rule that this feat doesn’t work on certain climbing surfaces.",
                          summary: "As a move action while climbing, you can cling to your climbing surface with your legs by succeeding at a Climb check with the same DC as that of climbing the surface as a move action.",
                          source: "Ultimate Wilderness, Ranged Tactics Toolbox", isPremium: true),

                    // // MARK: - Undead Slayer's Handbook
        )
        try await db.insertFeat(
        .make("Align Equipment",
                          featType: "General",
                          prerequisites: "Alignment Channel, Bless Equipment, caster level 3rd, channel energy class feature.",
                          benefit: "In addition to the blessings provided by Bless Equipment, you can imbue weapons, shields, and suits of armor with the special abilities listed in the following table. If a special ability is followed by an alignment set in parentheses, you must be able to channel energy capable of healing or harming outsiders of that alignment subtype with Alignment Channel. For example, a cleric must have Alignment Channel (good) to bless a weapon with the holy special ability, Alignment Channel (law) to bless a shield with the vigilant special ability, and so on. Aligned equipment blessings otherwise follow all the same rules as the equipment blessings granted by Bless Equipment.",
                          summary: "In addition to the blessings provided by Bless Equipment, you can imbue weapons, shields, and suits of armor with the special abilities listed in the following table.",
                          source: "Undead Slayer's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Bless Equipment",
                          featType: "General",
                          prerequisites: "Caster level 3rd, channel energy class feature.",
                          benefit: "As a standard action, you may expend uses of your channel energy ability to touch a single weapon, suit of armor, or shield and temporarily grant it one weapon, armor, or shield special ability. To bless a piece of equipment with a particular blessing, you must expend a number of uses of channel energy equal to the number listed in the table above, and your caster level must be equal to or greater than that listed for the selected blessing. This blessing lasts for a number of rounds equal to the number of damage dice you are capable of dealing or healing with your channel energy ability (for example, the blessing of a cleric capable of channeling 3d6 points of damage would last for 3 rounds), during which time the item is treated as though it possessed the selected special ability. If the piece of equipment belongs to an unwilling creature, that creature may attempt a Will save to prevent the blessing, as if attempting a saving throw against your channel energy ability (so bonuses from channel resistance and similar effects apply); if the creature succeeds at its save, the channeled energy is expended to no effect. Only magical and masterwork weapons, armor, and shields may be blessed with this feat. When you bless a masterwork item, you must expend one additional use of your channel energy ability beyond those normally expended to grant the selected blessing. In addition to the selected blessing, the masterwork item gains a temporary +1 enhancement bonus for the blessing’s duration. You can grant a piece of equipment only one blessing at a time. Blessing an item that has already been blessed by you or another character replaces the preexisting blessing with the new one and resets the duration.",
                          summary: "As a standard action, you may expend uses of your channel energy ability to touch a single weapon, suit of armor, or shield and temporarily grant it one weapon, armor, or shield special ability.",
                          source: "Undead Slayer's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Bless Equipment",
                          featType: "General",
                          prerequisites: "Bless Equipment, Improved Bless Equipment, caster level 12th, channel energy class feature.",
                          benefit: "The duration of your equipment blessings doubles. In addition, as a standard action you may bless up to two pieces of equipment within range with a single blessing, expending uses of channeled energy as if you had only blessed one item.",
                          summary: "The duration of your equipment blessings doubles. In addition, as a standard action you may bless up to two pieces of equipment within range with a single blessing, expending uses of channeled energy…",
                          source: "Undead Slayer's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Holy Water Assault (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1, Knowledge (religion) 3 ranks.",
                          benefit: "In addition to holy water’s normal uses, you can use holy water to create a variety of other effects, which are listed below. To use holy water in a particular way, you must meet the additional requirements of that effect, such as a particular feat, ranks in a specific skill, or the ability to cast a certain spell (specified after the effect’s name). Unless otherwise specified, using any of these abilities consumes one vial of holy water. Blinding Water (Improved Precise Shot): By uttering a short prayer as swift action, you can empower a vial of holy water with blinding light. If you successfully throw that vial of holy water and land a direct hit against an undead creature by the end of your next turn, the target takes damage from the holy water as normal and also becomes blinded (Reflex DC 13 negates blindness). This even affects creatures that do not have eyes such as skeletons, but not creatures that don’t rely on vision. Concentrate Holy Water (Craft [alchemy] 4 ranks): Through alchemical processes, you can refine multiple doses of holy water into a single hyperpotent dose. To do so, you must possess two or more flasks of holy water and you must succeed at a Craft (alchemy) check that takes 10 minutes of uninterrupted time. The DC of the Craft (alchemy) check is equal to 15 + 2 × the number of doses of holy water you are combining. For example, combining three flasks of holy water would require a successful DC 21 Craft (alchemy) check. Success means you combine all of the doses into a single concentrated flask of holy water. If you fail the check by 4 or less, the distillation process failed and must be tried again. If you fail the check by 5 or more, the distillation process failed and all of the doses of holy water are wasted. The maximum number of doses of holy water you can combine is equal to half the number of ranks you possess in Craft (alchemy). A direct hit with a flask of concentrated holy water deals 2d4 points of damage + 2 points of damage × the number of doses of holy water used to an undead creature or an evil outsider. Undead creatures and evil outsiders within 5 feet of where the flask hits take 1 point of damage + 1 point of damage × the number of doses of holy water used. For example, a flask of concentrated holy water made of 3 doses of holy water would deal 2d4+6 points of damage on a direct hit, and 4 points of damage to undead creatures and evil outsiders within 5 feet of the target. Healing Glyph (ability to cast glyph of warding): You can replace the diamond material component in a glyph of warding spell with a vial of holy water. When you do so, you must place a spell glyph containing a conjuration (healing) spell of 3rd level or lower, which can be designed to benefit allies or harm undead. Healing Water (Heal 5 ranks): You can use holy water for curative purposes. When you pour a vial of holy water over your hands, you gain a +4 bonus on Heal checks to perform first aid, treat wounds, treat poison, or treat disease in the next hour. Additionally, once per day you can drink a vial of holy water to heal yourself of 1d8 points of damage. Holy Circle (ability to cast magic circle against evil): You can replace the silver material component of a magic circle against evil spell with a vial of holy water. When you do so, the duration of the spell increases 20 minutes per level instead of 10 minutes, and the Spellcraft DC to add a special diagram to the circle is 15 instead of 20. Holy Water Splash (Point-Blank Shot): When you throw a flask of holy water, creatures in the area of the holy water’s splash radius take 1 additional point of damage as long as they are within 30 feet of you. This ability does not stack with other effects that increase the damage dealt to creatures within the splash radius of holy water, such as the concentrate holy water ability of this feat or the empower holy water spell on page 26.",
                          summary: "In addition to holy water’s normal uses, you can use holy water to create a variety of other effects, which are listed below.",
                          source: "Undead Slayer's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Bless Equipment",
                          featType: "General",
                          prerequisites: "Bless Equipment, caster level 9th, channel energy class feature.",
                          benefit: "The number of uses of channeled energy you must expend to bless a piece of equipment using Bless Equipment and Align Equipment decreases by one (to a minimum of one use of channel energy per blessing). You can also bless a piece of equipment with up to two blessings at a time. Each blessing provides a different special ability drawn from the Bless Equipment list (and the Align Equipment list if you possess that feat). You must still have a high enough caster level to bless a piece of equipment with each of the selected blessings. You expend the appropriate number of uses of channeled energy required for each blessing, taking into account the reduction granted by this feat (and the increase for blessing a masterwork item, if needed). For example, a cleric with this feat would need to expend two uses of channeled energy to bless a weapon with the undead-bane and ghost touch special abilities (one use for bane plus one use for ghost touch). If a given piece of equipment already has a blessing on it, you can give it a second blessing. When another blessing is applied to a piece of equipment that currently has a blessing active on it, the durations for the two blessings are tracked separately.",
                          summary: "The number of uses of channeled energy you must expend to bless a piece of equipment using Bless Equipment and Align Equipment decreases by one (to a minimum of one use of channel energy per…",
                          source: "Undead Slayer's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Lingering Smite",
                          featType: "General",
                          prerequisites: "Channel Smite, channel energy 3d6.",
                          benefit: "When you use Channel Smite against a living creature (if you channel negative energy) or an undead creature (if you channel positive energy), you can damage your target slowly over a longer duration, rather than inflicting the normal effects of Channel Smite. Instead of the normal effects of successfully hitting with Channel Smite, you may choose the following effect. Starting on your target’s next turn, it takes 1d8 points of damage each round at the beginning of its turn. This effect lasts for a number of rounds equal to the number of damage dice you use to roll your channel energy ability. Your target can attempt a Will save each round, as if saving against your channeled energy, to negate the damage dealt to it by this feat on that round. If your initial attack misses, the use of channel energy is still expended with no effect. Multiple uses of Lingering Smite (including those from multiple sources) do not stack, and instead reset the duration of the effect.",
                          summary: "When you use Channel Smite against a living creature (if you channel negative energy) or an undead creature (if you channel positive energy), you can damage your target slowly over a longer duration,…",
                          source: "Undead Slayer's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Weapon Versatility (Combat)",
                          featType: "General",
                          prerequisites: "Weapon Focus, base attack bonus +1.",
                          benefit: "When wielding a weapon with which you have Weapon Focus, you can shift your grip as a swift action so that your weapon deals bludgeoning, piercing, or slashing damage instead of the damage type normally dealt by that weapon. You may switch back to the weapon’s normal damage type or another damage type as a swift action. If your base attack bonus is +5 or higher, using this feat is a free action instead.",
                          summary: "When wielding a weapon with which you have Weapon Focus, you can shift your grip as a swift action so that your weapon deals bludgeoning, piercing, or slashing damage instead of the damage type…",
                          source: "Undead Slayer's Handbook", isPremium: true),

                    // // MARK: - Varisia, Birthplace of Legends, Pathfinder #10: A History of Ashes
        )
        try await db.insertFeat(
        .make("Thunder and Fang (Combat)",
                          featType: "General",
                          prerequisites: "Str 15, Two-Weapon Fighting, Weapon Focus (earth breaker), Weapon Focus (klar)",
                          benefit: "You can use an earth breaker as though it were a one-handed weapon. When using an earth breaker in one hand and a klar in your off hand, you retain the shield bonus your klar grants to your Armor Class even when you use it to attack. Treat your klar as a light weapon for the purposes of determining your two-weapon fighting penalty.",
                          normal: "An earth breaker is a two-handed weapon, preventing the use of a klar in one hand without imposing penalties for using the earth breaker one-handed. A klar can be used either as a one-handed weapon or a shield; it does not grant a bonus to AC during rounds in which it is used as a weapon.",
                          special: "This is a combat feat, and may be selected with class features that grant bonus combat feats.",
                          summary: "You can use an earth breaker as though it were a one-handed weapon.",
                          source: "Varisia, Birthplace of Legends, Pathfinder #10: A History of Ashes", isPremium: true),

                    // // MARK: - Villain Codex
        )
        try await db.insertFeat(
        .make("Balor Whip (Combat)",
                          featType: "General",
                          prerequisites: "Weapon Focus (whip), Whip Mastery UC, base attack bonus +8.",
                          benefit: "When you perform a dragAPG combat maneuver with your whip, you can choose not to move with your target, instead bringing your target closer to you. If you do this, you can’t drag the target any farther than the distance it takes to move it adjacent to you, even if your result was high enough to drag the target farther. You gain a +2 bonus on drag combat maneuver checks when using a whip to drag, but this bonus doesn’t stack with the bonus from Improved Drag.",
                          special: "Balor Whip counts as Improved DragAPG for the purpose of qualifying for Quick DragUC.",
                          summary: "When you perform a dragAPG combat maneuver with your whip, you can choose not to move with your target, instead bringing your target closer to you.",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Coordinated Capture (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1.",
                          benefit: "Whenever you and one or more allies with this feat threaten the same enemy, the enemy takes a penalty on Acrobatics checks and concentration checks to avoid provoking attacks of opportunity equal to the number of creatures with this feat that are threatening him (maximum +5).",
                          summary: "Whenever you and one or more allies with this feat threaten the same enemy, the enemy takes a penalty on Acrobatics checks and concentration checks to avoid provoking attacks of opportunity equal to…",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Covering Fire (VC) (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Exotic Weapon Proficiency (firearms) UC, Weapon Focus (at least one firearm).",
                          benefit: "When you hit a foe with a firearm for which you have Weapon Focus, that creature takes a –2 penalty on attack rolls for 1 round against any other ally that also has this feat; this changes to a –4 penalty on attacks of opportunity. The penalty applied by this feat does not stack with itself. However, if both you and an ally with this feat attack the same foe, you can cover each other (since a penalty you impose with this feat doesn’t apply to attacks against you).",
                          summary: "When you hit a foe with a firearm for which you have Weapon Focus, that creature takes a –2 penalty on attack rolls for 1 round against any other ally that also has this feat; this changes to a –4…",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Craft Shoddy Item",
                          featType: "General",
                          prerequisites: "1 rank in appropriate Craft skill.",
                          benefit: "When you craft an item using your Craft skill, you can pay 1/5 of the item’s price for the raw material cost and craft a shoddy item (see page 116). You must still succeed at the appropriate DC check, and the work takes the same amount of time as a normal item. If you fail the Craft check by 5 or more, you ruin all the raw materials and must begin again. If you attempt to craft an item of even lower quality, the item’s poor quality is immediately apparent.",
                          normal: "You pay 1/3 of the item’s price for the raw material cost. If you fail the Craft check by 5 or more, you ruin half the raw materials and must pay half the original raw material cost again.",
                          summary: "When you craft an item using your Craft skill, you can pay 1/5 of the item’s price for the raw material cost and craft a shoddy item (see page 116).",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cunning",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You gain 1 additional skill point per Hit Die. When you take this feat, you gain a number of skill points equal to your Hit Dice right away, and every time your Hit Dice increase in the future, you will gain an additional skill point as well.",
                          summary: "You gain 1 additional skill point per Hit Die. When you take this feat, you gain a number of skill points equal to your Hit Dice right away, and every time your Hit Dice increase in the future, you…",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Deadly Kiss",
                          featType: "General",
                          prerequisites: "Toxic racial traitARG, vishkanyaARG.",
                          benefit: "As a swift action when applying your venom to a weapon or object, you can alter it to become a contact poison for 1d4 rounds. In its contact form, your venom has an onset time of 1 minute, and remains indistinguishable from your saliva or blood. In addition, you can use your toxic racial trait one additional time per day.",
                          normal: "Vishkanya venom is an injury poison.",
                          summary: "As a swift action when applying your venom to a weapon or object, you can alter it to become a contact poison for 1d4 rounds.",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Favored Community",
                          featType: "General",
                          prerequisites: "Knowledge (local) 2 ranks, must have lived in the settlement for at least 1 year.",
                          benefit: "Select a permanent, stationary settlement. While in that settlement, you gain a +2 bonus on initiative checks and Knowledge (geography), Perception, Stealth, and Survival checks, as per the ranger’s favored terrain class feature. If you already have that class feature and apply its bonuses in your favored community, increase the bonus provided by favored terrain by 2. The bonuses from this feat do not stack with other effects that provide or augment favored terrain bonuses, such as boots of friendly terrain (Advanced Player’s Guide 301).",
                          summary: "Select a permanent, stationary settlement. While in that settlement, you gain a +2 bonus on initiative checks and Knowledge (geography), Perception, Stealth, and Survival checks, as per the ranger’s…",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Balor Whip (Combat)",
                          featType: "General",
                          prerequisites: "Balor Whip, Improved Balor Whip, Weapon Focus (whip), Whip Mastery UC, base attack bonus +16.",
                          benefit: "When you use Improved Balor Whip to make a single attack at your highest attack bonus, your critical threat range increases to 19–20 and you gain a +4 bonus on critical confirmation rolls if you threaten a critical hit with that attack.",
                          summary: "When you use Improved Balor Whip to make a single attack at your highest attack bonus, your critical threat range increases to 19–20 and you gain a +4 bonus on critical confirmation rolls if you…",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Balor Whip (Combat)",
                          featType: "General",
                          prerequisites: "Balor Whip, Weapon Focus (whip), Whip Mastery UC, base attack bonus +12.",
                          benefit: "When you succeed at a drag attempt with your whip against a non-adjacent target and the target ends the drag adjacent to you, as a free action you can make a single attack against the target at your highest attack bonus using the melee weapon held in your other hand. You gain an additional +2 bonus on drag combat maneuver checks when using a whip to drag, but this bonus does not stack with the bonus from Greater Drag.",
                          summary: "When you succeed at a drag attempt with your whip against a non-adjacent target and the target ends the drag adjacent to you, as a free action you can make a single attack against the target at your…",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Position of Strength (Combat)",
                          featType: "General",
                          prerequisites: "Position of Strength; Two-Weapon Fighting or Multiattack; Intimidate 5 ranks.",
                          benefit: "As long as you are wielding one or more weapons with which you are proficient, you gain the bonus on Intimidate checks from Position of Strength against creatures that are armed with fewer weapons than you are wielding.",
                          summary: "As long as you are wielding one or more weapons with which you are proficient, you gain the bonus on Intimidate checks from Position of Strength against creatures that are armed with fewer weapons…",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Musketeer's Daring (Combat, Panache)",
                          featType: "General",
                          prerequisites: "Dex 15, derring-do deed, swashbuckler level 6th.",
                          benefit: "If the result of your d6 roll is a natural 5 or 6 when using the derring-do deed, you can roll another d6 and add it to the Acrobatics, Climb, Escape Artist, Fly, Ride, or Swim check that the deed modifies. The number of d6s you roll is still limited to a number equal to your Dexterity modifier (minimum 1), and you can roll another d6 after a natural roll of 5 or 6 only once per use of derring-do.",
                          normal: "You can roll further derring-do d6s only if you roll a natural 6 on the die.",
                          summary: "If the result of your d6 roll is a natural 5 or 6 when using the derring-do deed, you can roll another d6 and add it to the Acrobatics, Climb, Escape Artist, Fly, Ride, or Swim check that the deed…",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Musketeer's Dodge (Combat, Grit)",
                          featType: "General",
                          prerequisites: "Exotic Weapon Proficiency (firearms) UC, gunslinger level 3rd, gunslinger’s dodge deed.",
                          benefit: "When you use the gunslinger’s dodge deed to move, the movement granted by that deed does not provoke attacks of opportunity, and you gain a +4 dodge bonus to your Armor Class.",
                          summary: "When you use the gunslinger’s dodge deed to move, the movement granted by that deed does not provoke attacks of opportunity, and you gain a +4 dodge bonus to your Armor Class.",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Musketeer's Reposition (Combat, Grit)",
                          featType: "General",
                          prerequisites: "Exotic Weapon Proficiency (firearms) UC, gunslinger level 6th, pistol-whip deed.",
                          benefit: "When you hit an opponent with a two-handed firearm while using the pistol-whip deed, you can perform a repositionAPG combat maneuver instead of knocking the target prone. However, you can’t reposition the foe closer to you. This combat maneuver does not provoke attacks of opportunity.",
                          summary: "When you hit an opponent with a two-handed firearm while using the pistol-whip deed, you can perform a repositionAPG combat maneuver instead of knocking the target prone.",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Musketeer's Sidestep (Combat, Panache)",
                          featType: "General",
                          prerequisites: "Dodging panache deed, swashbuckler level 3rd.",
                          benefit: "When you use the dodging panache deed, the movement granted by that deed does not provoke attacks of opportunity from any creature, and you gain a +2 dodge bonus to your Armor Class.",
                          summary: "When you use the dodging panache deed, the movement granted by that deed does not provoke attacks of opportunity from any creature, and you gain a +2 dodge bonus to your Armor Class.",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Nature's Wrath",
                          featType: "General",
                          prerequisites: "Int 1, any nongood alignment, plant type.",
                          benefit: "You are no longer immune to effects that cause morale bonuses or effects with the emotion descriptor, and you take a –1 penalty on saves against anger or rage emotion effects. You gain a +1 bonus on attack rolls against humanoid creatures.",
                          summary: "You are no longer immune to effects that cause morale bonuses or effects with the emotion descriptor, and you take a –1 penalty on saves against anger or rage emotion effects.",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Plague Resistance",
                          featType: "General",
                          prerequisites: "Constitution 13.",
                          benefit: "When you take damage or drain to your ability scores as the result of a disease, roll damage and drain to each ability score twice and take the lower result. You suffer any other effects of the disease as normal.",
                          summary: "When you take damage or drain to your ability scores as the result of a disease, roll damage and drain to each ability score twice and take the lower result.",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Position of Strength (Combat)",
                          featType: "General",
                          prerequisites: "Intimidate 5 ranks.",
                          benefit: "As long as you are wielding one or more weapons with which you are proficient, you gain a +4 bonus on Intimidate checks against unarmed creatures, which doesn’t stack with Intimidating Prowess. Additionally, if you successfully use Intimidate to demoralize an unarmed creature, that creature becomes shaken for as long as you continue to be armed and they continue not to be, to a maximum of 1 minute. Creatures with natural attacks, or whose unarmed strikes deal lethal damage, are considered to be armed for the purposes of this feat.",
                          summary: "As long as you are wielding one or more weapons with which you are proficient, you gain a +4 bonus on Intimidate checks against unarmed creatures, which doesn’t stack with Intimidating Prowess.",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Protective Line (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Exotic Weapon Proficiency (firearms) UC .",
                          benefit: "When you are adjacent to an ally who also has this feat, you do not provoke attacks of opportunity while loading a firearm.",
                          summary: "When you are adjacent to an ally who also has this feat, you do not provoke attacks of opportunity while loading a firearm.",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Quick Stow (Combat)",
                          featType: "General",
                          prerequisites: "Quick Draw, base attack bonus +1.",
                          benefit: "You do not provoke an attack of opportunity when sheathing a weapon, and you can combine a move action to sheathe a weapon with a regular move action. (You can both stow and draw a weapon as part of the same move action in this way.) If you have the Two-Weapon Fighting feat, you can sheathe two light or one-handed weapons in the time it would normally take to sheathe one. You can also quickly stow items in a backpack or other container that you are wearing or carrying. When you successfully use an action to pick up an item (including when you steal an item with a successful Sleight of Hand check or steal combat maneuver check), you can stow the item as part of the same action used to acquire it. You can try to hide this object by attempting a Sleight of Hand check with a –20 penalty, opposed by the Perception check results of all opponents.",
                          summary: "You do not provoke an attack of opportunity when sheathing a weapon, and you can combine a move action to sheathe a weapon with a regular move action.",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Reap the Infirm (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +3.",
                          benefit: "When you hit a diseased creature with a weapon attack, you deal an additional 1d6 points of damage. This is precision damage. Additionally, you gain a +2 bonus on combat maneuver checks against diseased creatures.",
                          summary: "When you hit a diseased creature with a weapon attack, you deal an additional 1d6 points of damage. This is precision damage.",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Terrifying Assassination",
                          featType: "General",
                          prerequisites: "AssassinateUC ninja master trick, assassinate slayerACG advanced talent, or death attack.",
                          benefit: "If you attempt to instantly kill a foe with a death attack, or with the assassinate master trick or advanced talent, and the target doesn’t die, the target is shaken for 2d4 rounds.",
                          summary: "If you attempt to instantly kill a foe with a death attack, or with the assassinate master trick or advanced talent, and the target doesn’t die, the target is shaken for 2d4 rounds.",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Twin Fang Lunge (Combat)",
                          featType: "General",
                          prerequisites: "Dex 15; Quick Draw; Twin Fang Strike; Twin Fang Style; Two-Weapon Fighting; Acrobatics 8 ranks; base attack bonus +8 or monk level 8th.",
                          benefit: "While using Twin Fang Style, you can spend a full-round action to move up to twice your speed and then use Twin Fang Strike as if you were taking the attack action.",
                          summary: "While using Twin Fang Style, you can spend a full-round action to move up to twice your speed and then use Twin Fang Strike as if you were taking the attack action.",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Twin Fang Strike (Combat)",
                          featType: "General",
                          prerequisites: "Dex 15; Quick Draw; Twin Fang Style; Two- Weapon Fighting; Acrobatics 6 ranks; base attack bonus +6 or monk level 6th.",
                          benefit: "While using Twin Fang Style, when you take an attack action while wielding two daggers or two kama, you can strike with both your primary and off-hand weapons. If you do so, both attacks take a –4 penalty and you apply precision damage and effects that occur when you hit only once, even if you hit with both attacks.",
                          summary: "While using Twin Fang Style, when you take an attack action while wielding two daggers or two kama, you can strike with both your primary and off-hand weapons.",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Twin Fang Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Dex 15, Quick Draw, Two-Weapon Fighting, base attack bonus +1, Acrobatics 1 rank.",
                          benefit: "Each time you make a full attack wielding a pair of daggers or a pair of kama and hit a creature with both weapons, you reduce its armor bonus to AC by 1 until the beginning of your next turn. This reduction stacks to a minimum armor bonus of +0. For example, if you hit a creature wearing a chain shirt with two primary attacks and two off-hand attacks, you would reduce its armor bonus to AC from +4 to +2.",
                          summary: "Each time you make a full attack wielding a pair of daggers or a pair of kama and hit a creature with both weapons, you reduce its armor bonus to AC by 1 until the beginning of your next turn.",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Two-Weapon Grace (Combat)",
                          featType: "General",
                          prerequisites: "Dex 15; Fencing GraceUI, Slashing Grace ACG, or Starry GraceUI; Two-Weapon Fighting; Weapon Finesse.",
                          benefit: "You can gain the benefit of the Fencing GraceUI, Slashing GraceACG, or Starry GraceUI feats while fighting with two weapons. Your penalties from two-weapon fighting increase by 2 on all attack rolls you make when doing so, and you can’t decrease the penalties to less than –2 even if other abilities would reduce the penalties further. Add 1/2 your Dexterity bonus to damage with your off-hand weapon instead of 1/2 your Strength modifier. If you attack without using your off-hand weapon, you can use the aforementioned feats despite your other hand being occupied. In addition, Two-Weapon Grace counts as Double Slice for the purposes of qualifying for the Two-Weapon Rend feat.",
                          normal: "You gain no benefit from the listed feats if you don’t have a free hand.",
                          summary: "You can gain the benefit of the Fencing GraceUI, Slashing GraceACG, or Starry GraceUI feats while fighting with two weapons.",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Vishkanya Perfume",
                          featType: "General",
                          prerequisites: "Deadly Kiss, toxic racial traitARG, vishkanyaARG.",
                          benefit: "As a swift action, you can expend one use of your toxic racial trait to alter your venom into an inhaled poison for 1d4 rounds. At one point within this duration, you can select one adjacent enemy to be exposed. In its inhaled form, your venom is an invisible, perfumed gas, and its DC is 2 lower. In addition, you can use your toxic racial trait one additional time per day.",
                          normal: "Vishkanya venom is an injury poison",
                          summary: "As a swift action, you can expend one use of your toxic racial trait to alter your venom into an inhaled poison for 1d4 rounds.",
                          source: "Villain Codex", isPremium: true),

                    // // MARK: - War for the Crown Player's Guide
        )
        try await db.insertFeat(
        .make("Noble Scion (Taldor Variant)",
                          featType: "General",
                          prerequisites: "Charisma 13 or Child of Oppara trait, must be taken at 1st level.",
                          benefit: "You gain a +2 bonus on all Knowledge (nobility) checks, and Knowledge (nobility) is always a class skill for you. You also gain an additional benefit depending on which family you belong to. Basri: You come from the long line of ambassadors, diplomats, and travelers that make up the Basri, and your family maintains the strongest ties to the elven nation of Kyonin of any Taldan humans. Select one of the following as a bonus starting language: Celestial, Elven, Gnome, Sylvan. You gain proficiency in one of the following weapons: longbow (including composite), longsword, rapier, or shortbow (including composite). If you gain proficiency in all martial weapons at 1st level, you can instead select elven curve blade. Clement: Your Garundi and Mwangi ancestors served Taldor proudly during the Sixth Army of Exploration and were awarded titles for their service. Your family, which has maintained their noble titles to this day, is known for keen insights and biting observations. You can substitute your Wisdom modifier for your Charisma modifier when attempting Diplomacy skill checks. Corcina: Your family came to prominence during the Second Army of Exploration, and maintains a legacy as explorers and sailors. You gain a +1 bonus on Climb and Escape Artist checks, and a +2 bonus on Survival checks to navigate. Karthis: Yours is a family of distinguished military veterans, charismatic demagogues, and xenophobic zealots. As the rest of the family becomes increasingly Imperialist, you have made no effort to remain in their good graces, but you retain the skills they taught you during a childhood of rigorous training. You can apply your Charisma modifier instead of your Dexterity modifier to Initiative checks. Kastner: Your stalwart family defines itself by opposing your devil-worshiping Chelish cousins, a grudge that inspired some of Taldor’s greatest healers, priests, and negotiators. You gain one additional use per day of channel energy, lay on hands, or mesmerist tricks, or 3 additional rounds of bardic music per day. You gain only one of these benefits, even if you later acquire a second class that provides one of the other class features listed. Lotheed: Your family ranks include the greatest wizards and arcane scholars in Taldor, and schooling in some of the most comprehensive arcane libraries in the Inner Sea was your birthright. If your Intelligence is 11 or higher, you gain the following spell-like abilities: 1/day—dancing lights, prestidigitation, read magic, unseen servant. The caster level for these effects is equal to one-half your class level. Merosett: The cunning members of your large family, a longtime fixture in Oppara’s bureaucracy, specialize in tracking lineages and sidestepping red tape. You gain a +5 bonus on Bluff checks to send secret messages and Sense Motive checks to discern secret messages. You halve the time required to search through archives, navigate government offices, review contracts, or otherwise work with the complex bureaucracies your family has mastered for generations. Stavian: As a close relative of the Grand Prince, yours has been a life of material comfort and indulgence, colored by constant threats and direct influence. You gain a +2 bonus on Fortitude saves against poison and on Will saves against enchantment spells of the charm and compulsion subschools. Talbot: Your starkly conservative family are merchants and entrepreneurs first and aristocrats second, willing to forgo duty if they can instead pursue profit. They condemn would-be adventurers and readily oust them from the family ranks, leaving you an outcast. You gain a +2 bonus on one Profession skill of your choice. Once per day, you can use this Profession skill in place of a single Knowledge skill check. Varima: Your family immigrated to Taldor from Vudra hundreds of years ago, and thanks to noble roots, extensive trade contacts, and an unparalleled skill in negotiation, soon developed into a steadfast fixture of Oppara’s social scene. Whenever you use Diplomacy to influence a crowd or a room (but not individuals), you can roll twice and use the better result. Vernisant: Your family is descended from the great general Arnisant, who commanded Taldan forces during the Shining Crusade... and they will never let anyone forget it! Their fierce Imperialist support and nationalist fervor has left you alienated from your relatives now, but their emphasis on scholarship left a mark nonetheless. You gain a +1 bonus on all Knowledge skills in which you have at least 1 rank. Vinmark: Newcomers and outsiders, your Ulfen family was exalted to nobility 19 years ago, when Stavian III promoted your family patriarch to Baron of Oppara as a reward for service in the Ulfen Guard. Established aristocrats consider your family crude, choosing to leave them on the margins of Taldan politics unless a noble thinks they could use you to curry favor with the Grand Prince, but hard-won practicality and newborn cynicism grant you insight most Taldan nobles lack. Once per day when rolling a Sense Motive check, you may roll two dice and use the better result. Zespire: Your family runs charities and lobbies heavily for social reform, leaving them with few friends among their Opparan peers but heartfelt support from the common folk and lesser nobility. You gain a +2 bonus on Diplomacy and Perform checks when dealing with common citizens and with nobles whose titles are limited to Lord, Lady, Knight, or Dame.",
                          special: "This is a variant of the Noble Scion feat presented in Pathfinder Campaign Setting: The Inner Sea World Guide. If you take this version of the feat, you cannot also take the version presented in that book.",
                          summary: "You gain a +2 bonus on all Knowledge (nobility) checks, and Knowledge (nobility) is always a class skill for you. You also gain an additional benefit depending on which family you belong to.",
                          source: "War for the Crown Player's Guide", isPremium: true),

                    // // MARK: - Weapon Master's Handbook
        )
        try await db.insertFeat(
        .make("Ace Disarm (Targeting, Weapon Mastery)",
                          featType: "General",
                          prerequisites: "Dex 13, Deadly Aim, Ranged Disarm ( Ranged Tactics Toolbox 8), base attack bonus +6, weapon training class feature with a ranged weapon.",
                          benefit: "You don’t take the –2 penalty for attempting disarm combat maneuver checks with a ranged weapon using Ranged Disarm, and you can attempt a stealAPG combat maneuver check instead of a disarm combat maneuver check when using Ranged Disarm. In addition, when you successfully disarm or steal an item from an opponent, that item is deposited in that opponent’s square. For every 5 by which your attack exceeds the target’s CMD, you can deposit the item 5 feet away from the target (to a maximum of the attack’s maximum range or until your projectile strikes an object that it cannot penetrate). If you use this ability with a thrown weapon and have the Ricochet Toss feat, both the weapon and the item return to you.",
                          summary: "You don’t take the –2 penalty for attempting disarm combat maneuver checks with a ranged weapon using Ranged Disarm, and you can attempt a stealAPG combat maneuver check instead of a disarm combat…",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ace Trip (Targeting, Weapon Mastery)",
                          featType: "General",
                          prerequisites: "Dex 13, Deadly Aim, Ranged Trip ( Ranged Tactics Toolbox 9), base attack bonus +6, weapon training class feature with a ranged weapon.",
                          benefit: "You don’t take the –2 penalty for making trip attempts with a ranged weapon using Ranged Trip, and you can attempt special ranged trip combat maneuver checks against flying creatures. If the combat maneuver succeeds, the target falls at a rate of up to 100 feet per round (assuming it is conscious and attempting to remain airborne; otherwise, it falls at a rate of 500 feet per round) until it hits the ground. Upon impact, it falls prone and takes falling damage (half the normal damage if it fell 100 feet per round; otherwise, normal damage for the distance fallen). A falling creature is considered entangled until it hits the ground, but it can attempt a Fly check at the start of its turn to stop falling before it hits the ground (DC = 15 + your base attack bonus); otherwise, it is unable to move (other than falling) but can act normally.",
                          summary: "You don’t take the –2 penalty for making trip attempts with a ranged weapon using Ranged Trip, and you can attempt special ranged trip combat maneuver checks against flying creatures.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Advanced Weapon Training (Combat)",
                          featType: "General",
                          prerequisites: "Fighter level 5th, weapon training class feature.",
                          benefit: "Select one advanced weapon training option, applying it to one fighter weapon group you have already selected with the weapon training class feature.",
                          special: "This feat can be taken more than once, but at most once per 5 fighter levels.Special: Fighters that have the weapon master archetype can select this feat beginning at 4th level. The benefits of a weapon master's advanced weapon training options apply only to his selected weapon rather than all weapons in the same fighter weapon group, and he can't select the weapon specialist advanced weapon training option. A weapon master can select this feat as a bonus feat; if he does so, it doesn't count for the purpose of the requirement that it can be taken at most once per 5 fighter levels.",
                          summary: "Select one advanced weapon training option, applying it to one fighter weapon group you have already selected with the weapon training class feature.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ascetic Form (Combat)",
                          featType: "General",
                          prerequisites: "Ascetic Style; Weapon Focus with the chosen melee weapon; base attack bonus +5 or monk level 5th.",
                          benefit: "You can use the chosen melee weapon with any class ability that can be used with an unarmed strike, such as an unchained monk’s style strike ability. In addition, you are treated as a monk with a level equal to your character level for the purpose of determining the number of times per day that you can use feats with uses per day that depend upon your monk level, such as the Stunning Fist or Perfect Strike feats.",
                          summary: "You can use the chosen melee weapon with any class ability that can be used with an unarmed strike, such as an unchained monk’s style strike ability.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ascetic Strike (Combat)",
                          featType: "General",
                          prerequisites: "Ascetic Form; Ascetic Style; Weapon Focus with the chosen weapon; base attack bonus +7 or monk level 7th.",
                          benefit: "You can use the unarmed strike damage of a monk 4 levels lower than your character level (minimum 1st) instead of the base damage for the chosen weapon. Ascetic Strike functions in all other ways as the brawler’s close weapon masteryACG class feature. In addition, you ignore the still mind class feature prerequisite for the Monastic LegacyUC feat.",
                          summary: "You can use the unarmed strike damage of a monk 4 levels lower than your character level (minimum 1st) instead of the base damage for the chosen weapon.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ascetic Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Weapon Focus with the chosen melee weapon; base attack bonus +1 or monk level 1st.",
                          benefit: "Choose one weapon from the monk fighter weapon group. While using this style and wielding the chosen weapon, you can apply the effects of feats that have Improved Unarmed Strike as a prerequisite, as well as effects that augment an unarmed strike, as if attacks with the weapon were unarmed attacks.",
                          special: "A 5th-level monk or character with the weapon training (monk) class feature can use Ascetic Style with any monk weapon, in addition to the chosen melee weapon.",
                          summary: "Choose one weapon from the monk fighter weapon group. While using this style and wielding the chosen weapon, you can apply the effects of feats that have Improved Unarmed Strike as a prerequisite, as…",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Burrowing Shot (Weapon Mastery)",
                          featType: "General",
                          prerequisites: "Dex 13, Deadly Aim, base attack bonus +9, weapon training class feature with a ranged weapon.",
                          benefit: "When you successfully hit a creature with a ranged attack, as a swift action, you can have the weapon (or its ammunition, for projectile weapons) lodge itself within the creature’s body, causing the creature to take a –2 penalty on ability checks, attack rolls, saving throws, and skill checks as a result of the intense pain. Penalties from multiple lodged weapons do not stack. If the creature is a spellcaster, it gains a 25% spell failure chance with all spells it casts that include somatic components. This penalty can be removed with the treat deadly wounds use of the Heal skill or by removing the lodged weapon as a standard action, which ends the penalties and causes the creature to take an amount of damage equal to the weapon’s base damage (without any bonuses).",
                          summary: "When you successfully hit a creature with a ranged attack, as a swift action, you can have the weapon (or its ammunition, for projectile weapons) lodge itself within the creature’s body, causing the…",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Compulsion Mastery (Item Mastery)",
                          featType: "General",
                          prerequisites: "Use Magic Device 3 ranks, base Fortitude save bonus +6.",
                          benefit: "You can cast suggestion as per the spell by using an item that has an enchantment spell of 3rd level or higher in its construction requirements. You can use this feat once per day, plus an additional time per day at base Fortitude save bonus +9 and +12.",
                          summary: "You can cast suggestion as per the spell by using an item that has an enchantment spell of 3rd level or higher in its construction requirements.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Curse Mastery (Item Mastery)",
                          featType: "General",
                          prerequisites: "Use Magic Device 3 ranks, base Fortitude save bonus +6.",
                          benefit: "You can cause an item that has a necromancy spell of 3rd level or higher in its construction requirements to cast bestow curse. You can use this feat once per day, plus an additional time per day at base Fortitude save bonus +9 and +12.",
                          summary: "You can cause an item that has a necromancy spell of 3rd level or higher in its construction requirements to cast bestow curse.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cut from the Air (Weapon Mastery)",
                          featType: "General",
                          prerequisites: "Str 13, Power Attack, base attack bonus +5, weapon training class feature with a melee weapon.",
                          benefit: "When a ranged attack is made against you or a target adjacent to you, you can cut the weapon (or ammunition) out of the air, deflecting the attack so the target takes no damage. As an attack of opportunity, make a melee attack roll at your highest bonus. If the result is greater than the attack roll total of the ranged attack, the attack is deflected. You must be aware of the attack and not flat-footed. Unusually massive ranged weapons (such as boulders or ballista bolts) and ranged attacks generated by spell effects cannot be deflected.",
                          summary: "When a ranged attack is made against you or a target adjacent to you, you can cut the weapon (or ammunition) out of the air, deflecting the attack so the target takes no damage.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Devastating Assault (Weapon Mastery)",
                          featType: "General",
                          prerequisites: "Base attack bonus +9, weapon training class feature with a melee weapon.",
                          benefit: "As a full-round action, you can bat aside all of your foe’s defenses to ensure you make a single, especially effective melee attack. You make a single melee attack using an appropriate weapon against a single target, but make as many attack rolls as you could in a full-attack action using that weapon. You make the attack rolls in order from highest bonus to lowest, as if you were making a full attack. If any of the attack rolls hit the target, your single attack is considered to have hit and you roll damage normally. If one or more rolls are critical threats, you confirm the critical hit only once using your highest base attack bonus. If you hit with two or more attacks, the target must succeed at a Fortitude save (DC = 10 + 1/2 your base attack bonus + your Strength modifier) or suffer a condition for 1d4 rounds. If at least two attacks hit, you can choose from deafened, entangled, or shaken. If at least three attacks hit, you can also choose from blinded or staggered. If at least four attacks hit, you can also choose the dazed condition. Once you have forced a foe to attempt a saving throw to avoid suffering a condition via this feat, you cannot attempt to inflict that condition on it again with Devastating Assault for 24 hours.",
                          summary: "As a full-round action, you can bat aside all of your foe’s defenses to ensure you make a single, especially effective melee attack.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Difficult Swings (Weapon Mastery)",
                          featType: "General",
                          prerequisites: "Base attack bonus +5, weapon training class feature with a melee weapon.",
                          benefit: "When you make a full attack with an appropriate melee weapon, you can force creatures to treat squares adjacent to you as difficult terrain until the beginning of your next turn. You can choose to allow any creature you are aware of to ignore the difficult terrain you effectively create with this feat.",
                          summary: "When you make a full attack with an appropriate melee weapon, you can force creatures to treat squares adjacent to you as difficult terrain until the beginning of your next turn.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dispel Mastery (Item Mastery)",
                          featType: "General",
                          prerequisites: "Use Magic Device 3 ranks, base Fortitude save bonus +6.",
                          benefit: "You can cause an item that has an abjuration spell of 2nd level or higher in its construction requirements to cast dispel magic, but only to perform a targeted dispel. You can use this feat once per day, plus an additional time per day at base Fortitude save bonus +9 and +12.",
                          summary: "You can cause an item that has an abjuration spell of 2nd level or higher in its construction requirements to cast dispel magic, but only to perform a targeted dispel.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dwarven Fury (Combat)",
                          featType: "General",
                          prerequisites: "Dwarven Hatred Style, Dwarven Seething, base attack bonus +7, defensive training and hatred racial traits, Medium size.",
                          benefit: "When using Dwarven Seething, you can maintain bonuses from both your defensive training racial trait and hatred racial trait’s against any number of opponents.",
                          summary: "When using Dwarven Seething, you can maintain bonuses from both your defensive training racial trait and hatred racial trait’s against any number of opponents.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dwarven Hatred Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1, defensive training and hatred racial traits, Medium size.",
                          benefit: "You apply your hatred racial trait’s bonus on both attack rolls and weapon damage rolls against creatures of the appropriate type or subtype and increase the bonus to +2.",
                          summary: "You apply your hatred racial trait’s bonus on both attack rolls and weapon damage rolls against creatures of the appropriate type or subtype and increase the bonus to +2.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dwarven Seething (Combat)",
                          featType: "General",
                          prerequisites: "Dwarven Hatred Style, base attack bonus +5, defensive training and hatred racial traits, Medium size.",
                          benefit: "While using Dwarven Hatred Style, when an opponent hits you with an attack (including a spell that requires an attack roll), you can apply your defensive training or your hatred racial trait bonus (your choice) against that target, regardless of the opponent’s type or subtype, as an immediate action. This ability lasts until the opponent dies, the combat ends, you change styles, or you designate a different opponent with this ability, whichever occurs first.",
                          summary: "While using Dwarven Hatred Style, when an opponent hits you with an attack (including a spell that requires an attack roll), you can apply your defensive training or your hatred racial trait bonus…",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Elven Battle Focus (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Elven Battle Style, Elven Battle Training ARG, Weapon Finesse, base attack bonus +4, weapon familiarity racial trait.",
                          benefit: "While using Elven Battle Style, you can add your Intelligence modifier to that weapon’s damage (instead of any other ability bonus or modifier you can add to your weapon damage). The weapon must be one appropriate for your size.",
                          summary: "While using Elven Battle Style, you can add your Intelligence modifier to that weapon’s damage (instead of any other ability bonus or modifier you can add to your weapon damage).",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Elven Battle Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Elven Battle Training ARG, Weapon Finesse, base attack bonus +1, weapon familiarity racial trait.",
                          benefit: "While wielding a longsword, a rapier, or any melee weapon that has “elven” in its name, combat maneuver checks attempted with that weapon as attacks of opportunity don’t themselves provoke attacks of opportunity.",
                          summary: "While wielding a longsword, a rapier, or any melee weapon that has “elven” in its name, combat maneuver checks attempted with that weapon as attacks of opportunity don’t themselves provoke attacks of…",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Elven Battle Torrent (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Elven Battle Focus, Elven Battle Style, Elven Battle Training ARG, Weapon Finesse, base attack bonus +10, weapon familiarity racial trait.",
                          benefit: "While using Elven Battle Style, any opponent that makes an attack against you and misses while you are fighting defensively or using total defense or the Combat Expertise feat provokes an attack of opportunity from you. Even if you have Combat Reflexes, you can’t benefit from this feat more than once per round.",
                          summary: "While using Elven Battle Style, any opponent that makes an attack against you and misses while you are fighting defensively or using total defense or the Combat Expertise feat provokes an attack of…",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Empty Quiver Flexibility (Combat)",
                          featType: "General",
                          prerequisites: "Empty Quiver Style, Rapid Shot, Stabbing Shot APG, Weapon Focus with the chosen weapon.",
                          benefit: "While using Empty Quiver Style, you can apply any feats and class abilities you possess that modify your ranged attack rolls and damage rolls with the chosen weapon to melee attack rolls and damage rolls made with that weapon. Additionally, you are considered to be threatening the area around you as if you were wielding a melee weapon.",
                          summary: "While using Empty Quiver Style, you can apply any feats and class abilities you possess that modify your ranged attack rolls and damage rolls with the chosen weapon to melee attack rolls and damage…",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Empty Quiver Flurry (Combat)",
                          featType: "General",
                          prerequisites: "Empty Quiver Flexibility, Empty Quiver Style, Rapid Shot, Stabbing Shot APG, Weapon Focus with the chosen weapon.",
                          benefit: "While using Empty Quiver Style or Stabbing Shot to make melee attacks with a ranged weapon, if you successfully hit a foe, any ranged attacks you make with the same weapon until the beginning of your next turn do not provoke attacks of opportunity from that foe.",
                          special: "If you have the Rapid Reload feat in addition to this feat, your chosen weapon is a crossbow or firearm, that weapon is unloaded, and you successfully hit a foe in melee with it, you can automatically load it as a free action.",
                          summary: "While using Empty Quiver Style or Stabbing Shot to make melee attacks with a ranged weapon, if you successfully hit a foe, any ranged attacks you make with the same weapon until the beginning of your…",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Empty Quiver Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Weapon Focus with the chosen weapon.",
                          benefit: "While using this style, you can make melee attacks with the chosen weapon as if it were a heavy mace (or a light mace for melee attack made with a hand crossbow or one-handed firearm), though you don’t automatically threaten the area around you as if you were wielding a melee weapon. You can switch between melee and ranged attacks with this weapon without penalty, even during the same round. In addition, you ignore the elf prerequisite for the Stabbing Shot featAPG. If you have the Stabbing Shot feat, you can use it with a crossbow or firearm, substituting a loaded bolt or firearm ammunition for an arrow.",
                          special: "In addition to the chosen weapon, a character with this feat and the weapon training (bows, crossbows, or firearms) class feature can use Empty Quiver Style with any bow, crossbow, or firearm, respectively.",
                          summary: "While using this style, you can make melee attacks with the chosen weapon as if it were a heavy mace (or a light mace for melee attack made with a hand crossbow or one-handed firearm), though you…",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Energy Mastery (Item Mastery)",
                          featType: "General",
                          prerequisites: "Use Magic Device 1 rank, base Fortitude save bonus +4.",
                          benefit: "You can cause an item that has a 1st level or higher evocation spell with the acid, cold, electricity, or fire descriptor in its construction requirements to cast burning hands. The spell has the energy descriptor from the appropriate requirement spell and deals that type of damage instead of fire damage. You can use this feat once per day, plus an additional time per day at base Fortitude save bonus +6, +8, +10, and +12. You can spend two daily uses of this feat to cast lightning bolt this way if the spell listed in the item’s construction requirements is at least 3rd level (still dealing a type of energy damage appropriate to that spell).",
                          summary: "You can cause an item that has a 1st level or higher evocation spell with the acid, cold, electricity, or fire descriptor in its construction requirements to cast burning hands.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Finesse Shot (Weapon Mastery)",
                          featType: "General",
                          prerequisites: "Marksman’s Utility, base attack bonus +7, weapon training class feature with a ranged weapon.",
                          benefit: "In addition to the options allowed by the utility shotUC gunslinger deed, you gain access to the following utility shots. Open/Close Object: You can use a ranged attack to open or close an object as a standard action. You make an attack roll against an unattended and unlocked door, window, or container within the first range increment of your weapon. Such an object has an AC equal to 3 + the object’s size modifier (minimum +0) + its hardness. If you hit, the object opens if it is closed or closes if it is open. Otherwise, this ability functions as the open/close spell. Triggering Shot: You can use a ranged attack to trigger a trap. You make a ranged attack against a trap you are aware of that is within your weapon’s first range increment. The trap’s AC is equal to 10 + its Disable Device DC. If you hit, the trap automatically triggers as if its trigger condition had been met. Use Object: You can attempt to use a simple object by shooting it as a standard action. This ability functions as the scoot unattended object use of the utility shot deed, except you pull or push the object in such a way that it activates. For example, you can shoot an unattended lever, causing it to activate and lower a drawbridge.",
                          summary: "In addition to the options allowed by the utility shotUC gunslinger deed, you gain access to the following utility shots.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Flight Mastery (Item Mastery)",
                          featType: "General",
                          prerequisites: "Use Magic Device 3 ranks, base Fortitude save bonus +6.",
                          benefit: "You can cause an item that has a transmutation spell of 2nd level or higher listed in its construction requirements to cast fly. If the item is a suit of armor you are wearing, you can use the item’s enhancement bonus in place of your Dexterity modifier on Fly skill checks while the spell lasts. You can use this feat once per day, plus an additional time per day at base Fortitude save bonus +9 and +12.",
                          summary: "You can cause an item that has a transmutation spell of 2nd level or higher listed in its construction requirements to cast fly.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Illusion Mastery (Item Mastery)",
                          featType: "General",
                          prerequisites: "Use Magic Device 2 ranks, base Fortitude save bonus +4.",
                          benefit: "You can cause an item that has an illusion spell of 1st level or higher in its construction requirements to cast minor image. You can use this feat once per day, plus an additional time per day at base Fortitude save bonus +6, +8, +10, and +12.",
                          summary: "You can cause an item that has an illusion spell of 1st level or higher in its construction requirements to cast minor image.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Illusive Gnome Bewilderment (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Gnome Weapon Focus ARG, Illusive Gnome Style, Illusive Gnome Surprise, Improved Feint, gnome magic and weapon familiarity racial traits.",
                          benefit: "While using Illusive Gnome Style, when you successfully use Bluff to feint against an opponent, you can pick one special weapon feature from among those listed by Illusive Gnome Surprise and deny the opponent its Dexterity modifier to AC, as normal for feinting; alternatively, you can pick two special weapon features instead of one.",
                          summary: "While using Illusive Gnome Style, when you successfully use Bluff to feint against an opponent, you can pick one special weapon feature from among those listed by Illusive Gnome Surprise and deny the…",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Illusive Gnome Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Gnome Weapon Focus ARG, Improved Feint, base attack bonus +1, gnome magic and weapon familiarity racial traits.",
                          benefit: "While feinting with a melee weapon that has “gnome” in its name, you can sacrifice a spell slot, a spell of the illusion school, or a spell from the gnome magic racial trait to gain a bonus on the skill check attempted to feint. This bonus is equal to 1 + the level of the spell sacrificed. If you sacrifice a 0-level spell, you cannot cast or sacrifice that spell again for 24 hours.",
                          summary: "While feinting with a melee weapon that has “gnome” in its name, you can sacrifice a spell slot, a spell of the illusion school, or a spell from the gnome magic racial trait to gain a bonus on the…",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Illusive Gnome Surprise (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Gnome Weapon Focus ARG, Illusive Gnome Style, Improved Feint.",
                          benefit: "While using Illusive Gnome Style, you gain a +2 bonus on combat maneuver checks to perform dirty tricksAPG and on Bluff checks to feint. In addition, when you successfully use Bluff to feint against a foe, instead of denying that foe its Dexterity bonus to AC, you can treat one “gnome” weapon that you are wielding as if it had one of the following weapon special features: blockingUC, brace, disarm, distractingUC, performanceUC, sunder, or trip. This benefit applies only against that foe and lasts for a number of rounds equal to your Charisma modifier (minimum 1).",
                          summary: "While using Illusive Gnome Style, you gain a +2 bonus on combat maneuver checks to perform dirty tricksAPG and on Bluff checks to feint.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Impressive Grit (Weapon Mastery)",
                          featType: "General",
                          prerequisites: "Base attack bonus +11, weapon training class feature with a ranged weapon.",
                          benefit: "Select one of the following gunslinger deedsUC: dead shot, startling shot, or targeting. You can perform the selected deed a number of times per day equal to your highest mental ability score modifier (Intelligence, Wisdom, or Charisma; minimum 1). You can use this deed with an appropriate ranged weapon. If you also have the selected deed as a class feature, reduce the number of grit points that you need to use it by 1, as per the Signature DeedUC feat.",
                          special: "You can select Impressive Grit up to three times. Each time you select it, choose a different gunslinger deed. A gunslingerUC can ignore the weapon training class feature prerequisite of Impressive Grit.",
                          summary: "Select one of the following gunslinger deedsUC: dead shot, startling shot, or targeting.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Liberating Shot (Weapon Mastery)",
                          featType: "General",
                          prerequisites: "Dex 13, Deadly Aim, base attack bonus +7, weapon training class feature with a ranged weapon.",
                          benefit: "When you hit an opponent with a ranged attack as part of an attack action and that opponent is grappling an ally, your grappled ally can use your attack roll result in place of her combat maneuver check result, whichever is higher, to escape from the grapple during her next turn.",
                          summary: "When you hit an opponent with a ranged attack as part of an attack action and that opponent is grappling an ally, your grappled ally can use your attack roll result in place of her combat maneuver…",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Marksman's Utility (Weapon Mastery)",
                          featType: "General",
                          prerequisites: "Base attack bonus +6, weapon training class feature with a ranged weapon.",
                          benefit: "You can perform the utility shotUC gunslinger deed with an appropriate ranged weapon with which you are proficient. If you have both the utility shot deed and this feat, you gain a +4 bonus on attack rolls made as part of a utility shot and you can use the utility shot deed while you have no grit points.",
                          special: "A gunslingerUC can ignore the weapon training class feature prerequisite of Marksman’s Deed.",
                          summary: "You can perform the utility shotUC gunslinger deed with an appropriate ranged weapon with which you are proficient.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Martial Focus (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +5.",
                          benefit: "Choose one fighter weapon group. While wielding a weapon from this group with which you are proficient, you gain a +1 bonus on damage rolls.",
                          special: "The Martial Focus feat counts as the weapon training class feature with the chosen fighter weapon group for the purpose of weapon mastery feat prerequisites and what weapons you can use with weapon mastery feats.",
                          summary: "Choose one fighter weapon group. While wielding a weapon from this group with which you are proficient, you gain a +1 bonus on damage rolls.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Orc Fury Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Bullying Blow ARG, Intimidating Prowess, Intimidate 3 ranks, weapon familiarity racial trait.",
                          benefit: "While wielding a greataxe, a falchion, or any melee weapon that has “orc” in its name, you can use the Bullying Blow feat with the first attack of a full-attack action or as part of a standard action to make one or more attacks (such as with the Cleave feat).",
                          summary: "While wielding a greataxe, a falchion, or any melee weapon that has “orc” in its name, you can use the Bullying Blow feat with the first attack of a full-attack action or as part of a standard action…",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Orc Rampage (Combat)",
                          featType: "General",
                          prerequisites: "Bullying Blow ARG, Intimidating Prowess, Orc Fury Style, Intimidate 5 ranks, weapon familiarity racial trait.",
                          benefit: "While using Orc Fury Style, you gain a +1 bonus on attack rolls and damage rolls against shaken opponents, and you don’t take an attack penalty when using the Bullying Blow feat.",
                          summary: "While using Orc Fury Style, you gain a +1 bonus on attack rolls and damage rolls against shaken opponents, and you don’t take an attack penalty when using the Bullying Blow feat.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Orc Snarl (Combat)",
                          featType: "General",
                          prerequisites: "Bullying Blow ARG, Intimidating Prowess, Orc Fury Style, Orc Rampage, Intimidate 7 ranks, weapon familiarity racial trait.",
                          benefit: "While using Orc Fury Style, you gain a +4 bonus on saving throws against effects created by shaken foes.",
                          summary: "While using Orc Fury Style, you gain a +4 bonus on saving throws against effects created by shaken foes.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Outslug Sprint (Combat)",
                          featType: "General",
                          prerequisites: "Int 13; Combat Expertise or brawler’s cunningACG class feature; Lunge; Outslug Style; Outslug Weave; Weapon Focus with the chosen weapon.",
                          benefit: "While using Outslug Style, you can move an additional 5 feet when making a 5-foot step.",
                          summary: "While using Outslug Style, you can move an additional 5 feet when making a 5-foot step.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Outslug Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Int 13; Combat Expertise or brawler’s cunningACG class feature; Weapon Focus with the chosen weapon.",
                          benefit: "Choose one weapon from the close fighter weapon group. While using this style, when you take a 5-foot step, you gain a +1 dodge bonus to AC and a +1 bonus on weapon damage rolls with the chosen weapon until the beginning of your next turn.",
                          special: "In addition to the chosen weapon, a character with the weapon training (close) or the brawler’s close weapon masteryACG class feature can use Outslug Style with any close weapon.",
                          summary: "Choose one weapon from the close fighter weapon group. While using this style, when you take a 5-foot step, you gain a +1 dodge bonus to AC and a +1 bonus on weapon damage rolls with the chosen…",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Outslug Weave (Combat)",
                          featType: "General",
                          prerequisites: "Int 13; Combat Expertise or brawler’s cunningACG class feature; Lunge; Outslug Style; Weapon Focus with the chosen weapon.",
                          benefit: "While using Outslug Style, you don’t take a –2 penalty to your AC when using the Lunge feat. The bonuses to AC and on weapon damage rolls that you gain from Outslug Style increase to +2.",
                          summary: "While using Outslug Style, you don’t take a –2 penalty to your AC when using the Lunge feat. The bonuses to AC and on weapon damage rolls that you gain from Outslug Style increase to +2.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Overwatch Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Precise Shot, Rapid Shot, Weapon Focus with the chosen weapon.",
                          benefit: "While using this style, as a full-round action you can ready two ranged attacks with the chosen weapon, each with its own triggering event. You take a –2 penalty on attack rolls made with these readied actions.",
                          special: "A character with this feat and the weapon training (bows, crossbows, or firearms) class feature can use Overwatch Style with any bow, crossbow, or firearm, respectively, in addition to the chosen weapon.",
                          summary: "While using this style, as a full-round action you can ready two ranged attacks with the chosen weapon, each with its own triggering event.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Overwatch Tactician (Combat)",
                          featType: "General",
                          prerequisites: "Overwatch Style, Precise Shot, Rapid Shot, Weapon Focus with the chosen weapon.",
                          benefit: "While using Overwatch Style, you can ready two ranged attacks as a standard action, rather than a full-round action.",
                          summary: "While using Overwatch Style, you can ready two ranged attacks as a standard action, rather than a full-round action.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Overwatch Vortex (Combat)",
                          featType: "General",
                          prerequisites: "Overwatch Style, Overwatch Tactician, Precise Shot, Rapid Shot, Weapon Focus with the chosen weapon, base attack bonus +11.",
                          benefit: "While using the Overwatch Style, as a full-round action you can ready up to four ranged attacks, each with its own triggering event. You take a –2 penalty on attack rolls made with these readied actions.",
                          summary: "While using the Overwatch Style, as a full-round action you can ready up to four ranged attacks, each with its own triggering event.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Retributive Kick (Weapon Mastery)",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike, base attack bonus +5, weapon training class feature with a melee weapon.",
                          benefit: "When you make a full attack with an appropriate melee weapon and your first attack misses or is blocked, deflected, parried, or otherwise caused to not hit the target, you can immediately make an unarmed attack against the same target with the same attack bonus. You then cannot make any more attacks as part of that full attack.",
                          summary: "When you make a full attack with an appropriate melee weapon and your first attack misses or is blocked, deflected, parried, or otherwise caused to not hit the target, you can immediately make an…",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ricochet Toss (Weapon Mastery)",
                          featType: "General",
                          prerequisites: "Quick Draw, base attack bonus +6, weapon training class feature with a ranged weapon.",
                          benefit: "When you make a ranged attack with an appropriate thrown weapon, the weapon returns to your hand immediately after the attack is resolved. This ability does not allow bullets, thrown ammunition such as darts or shuriken, or thrown splash weapons to return to you. Improvised thrown weapons don’t return to you unless you have the Throw Anything feat.",
                          summary: "When you make a ranged attack with an appropriate thrown weapon, the weapon returns to your hand immediately after the attack is resolved.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Slipslinger Bombardment (Combat)",
                          featType: "General",
                          prerequisites: "Quick Draw, Slipslinger Grenadier, Slipslinger Style, Throw Anything, Weapon Focus (sling) or weapon training (thrown) class feature, warslinger racial traitARG.",
                          benefit: "You can use a sling to hurl alchemical splash weapons as ammunition with Slipslinger Grenadier during an attack action or a full-attack action, loading your sling with such weapons as a free action.",
                          special: "This feat can’t be used with alchemists’ bombs.",
                          summary: "You can use a sling to hurl alchemical splash weapons as ammunition with Slipslinger Grenadier during an attack action or a full-attack action, loading your sling with such weapons as a free action.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Slipslinger Grenadier (Combat)",
                          featType: "General",
                          prerequisites: "Slipslinger Style, Throw Anything, Weapon Focus (sling) or weapon training (thrown) class feature, warslinger racial traitARG.",
                          benefit: "While using Slipslinger Style, as a standard action you can use a sling to hurl an alchemical splash weapon, treating it as a sling bullet for the purpose of drawing and loading it into your sling. Your sling deals its normal weapon damage, plus the loaded splash weapon’s effect or damage. This extra damage is not multiplied on a critical hit.",
                          special: "This feat cannot be used with alchemists’ bombs.",
                          summary: "While using Slipslinger Style, as a standard action you can use a sling to hurl an alchemical splash weapon, treating it as a sling bullet for the purpose of drawing and loading it into your sling.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Slipslinger Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Weapon Focus (sling) or weapon training (thrown) class feature, warslinger racial traitARG.",
                          benefit: "You gain a +1 bonus on damage rolls made with all types of slings, and don’t provoke attacks of opportunity when reloading a sling. In addition, you treat all ranged and thrown weapons that have “sling” in their name as if they were slings for all feats and class abilities that require such weapons, as well as the warslinger racial trait.",
                          summary: "You gain a +1 bonus on damage rolls made with all types of slings, and don’t provoke attacks of opportunity when reloading a sling.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Smash from the Air (Weapon Mastery)",
                          featType: "General",
                          prerequisites: "Str 13, Cut from the Air, Power Attack, base attack bonus +9, weapon training class feature with a melee weapon.",
                          benefit: "You can use Cut from the Air against unusually massive ranged weapons (such as boulders or ballista bolts) and ranged attacks generated by spell effects. Spell effects that do not require attack rolls cannot be deflected.",
                          summary: "You can use Cut from the Air against unusually massive ranged weapons (such as boulders or ballista bolts) and ranged attacks generated by spell effects.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Smashing Crush (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Improved Sunder, Smashing Style, Weapon Focus with the chosen weapon.",
                          benefit: "While using Smashing Style, if you successfully damage an object with the sunder combat maneuver, you reduce its hardness by 1. An object can’t have its hardness reduced to less than 50% of its normal hardness, and its hardness is restored when the damage dealt by the sunder attack is repaired.",
                          summary: "While using Smashing Style, if you successfully damage an object with the sunder combat maneuver, you reduce its hardness by 1.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Smashing Dent (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Improved Sunder, Smashing Crush, Smashing Style, Weapon Focus with the chosen weapon, base attack bonus +6.",
                          benefit: "While using Smashing Style, each time you damage a suit of armor with a sunder combat maneuver, you reduce its armor bonus to its Armor Class by 1 and increase its armor check penalty by 1. Armor cannot have its armor bonus to AC reduced to less than 50% of its normal bonus or its armor check penalty more than doubled. These reductions and increases both end when the damage dealt by the sunder is repaired.",
                          summary: "While using Smashing Style, each time you damage a suit of armor with a sunder combat maneuver, you reduce its armor bonus to its Armor Class by 1 and increase its armor check penalty by 1.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Smashing Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Str 13, Improved Sunder, Power Attack, Weapon Focus with the chosen weapon.",
                          benefit: "Choose one weapon from the axes, hammers, or flails fighter weapon group. While using this style, when you succeed at a sunder combat maneuver check against a suit of armor worn by an opponent, you can immediately attempt a bull rush or trip combat maneuver against that target with the same combat maneuver bonus. This maneuver does not provoke attacks of opportunity.",
                          special: "A character with the weapon training (axes, hammers, or flails) class feature can use Smashing Style with any axe, flail, or hammer, respectively, in addition to the chosen weapon.",
                          summary: "Choose one weapon from the axes, hammers, or flails fighter weapon group.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spear Dancing Reach (Combat)",
                          featType: "General",
                          prerequisites: "Dex 17, Spear Dancing Spiral, Spear Dancing Style, Two-Weapon Fighting, Weapon Finesse, Weapon Focus with the chosen weapon.",
                          benefit: "While using Spear Dancing Style and making a full attack using the chosen weapon as a double weapon, you can grant the reach special weapon feature to one or both of the weapon’s ends until the end of your turn as a swift action.",
                          summary: "While using Spear Dancing Style and making a full attack using the chosen weapon as a double weapon, you can grant the reach special weapon feature to one or both of the weapon’s ends until the end…",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spear Dancing Spiral (Combat)",
                          featType: "General",
                          prerequisites: "Dex 15, Spear Dancing Style, Two-Weapon Fighting, Weapon Finesse, Weapon Focus with the chosen weapon.",
                          benefit: "While using Spear Dancing Style, you gain the benefit of Weapon Finesse with the chosen weapon if it is appropriately sized for a creature of your size category. In addition, you can use any feat or ability that functions with a quarterstaff with your chosen weapon.",
                          summary: "While using Spear Dancing Style, you gain the benefit of Weapon Finesse with the chosen weapon if it is appropriately sized for a creature of your size category.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spear Dancing Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Dex 13, Two-Weapon Fighting, Weapon Focus with the chosen weapon.",
                          benefit: "Choose one weapon from the polearm or spear fighter weapon groups. While using this style, you grant the chosen weapon the double special weapon feature, using the weapon’s normal statistics for its main-hand end and the statistics of a light mace for its off-hand end. A weapon wielded in this way loses the brace and reach special weapon features.",
                          special: "A character with the weapon training (polearms or spears) class feature can use Spear Dancing Style with any polearm or spear, respectively, in addition to the chosen weapon.",
                          summary: "Choose one weapon from the polearm or spear fighter weapon groups.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spellcut (Weapon Mastery)",
                          featType: "General",
                          prerequisites: "Str 13, Cut from the Air, Power Attack, base attack bonus +9, Spellcraft 1 rank, weapon training class feature with a melee weapon.",
                          benefit: "Once per round, you can use your base attack bonus in place of your total saving throw bonus for a spell, spell-like ability, or supernatural ability that either allows a Reflex save or is not a melee attack and targets only you.",
                          summary: "Once per round, you can use your base attack bonus in place of your total saving throw bonus for a spell, spell-like ability, or supernatural ability that either allows a Reflex save or is not a…",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Startoss Comet (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Point-Blank Shot, Startoss Style, Weapon Focus with the chosen weapon.",
                          benefit: "As a standard action, you can make a single ranged thrown weapon attack at your full attack bonus with the chosen weapon. If you hit, you deal damage normally and can make a second attack (at your full attack bonus) against a target within one range increment of the first. You determine cover for this attack from the first target’s space instead of your space. You can make only one additional attack per round with this feat. If you have Vital Strike, Improved Vital Strike, or Greater Vital Strike, you can add the additional damage from those feats to the initial ranged attack (but not the second attack).",
                          summary: "As a standard action, you can make a single ranged thrown weapon attack at your full attack bonus with the chosen weapon.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Startoss Shower (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Point-Blank Shot, Startoss Comet, Startoss Style, Weapon Focus with the chosen weapon, base attack bonus +4.",
                          benefit: "When you hit an opponent while using the Startoss Comet feat, you can continue to make attacks against foes that are within one range increment of all previous opponents. You determine cover for each attack from the most recently hit foe’s space instead of your space, and you cannot attack an individual foe more than once during this attack action. You can make a maximum number of attacks equal to 1 + 1 per 5 points of base attack bonus you possess. If you have Vital Strike, Improved Vital Strike, or Greater Vital Strike, you can add the additional damage from those feats to the initial ranged attack (but not any subsequent attacks).",
                          summary: "When you hit an opponent while using the Startoss Comet feat, you can continue to make attacks against foes that are within one range increment of all previous opponents.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Startoss Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Dex 13, Point-Blank Shot, Weapon Focus with the chosen weapon.",
                          benefit: "Choose one weapon from the thrown fighter weapon group. While using this style and the chosen weapon, you gain a bonus on damage rolls made with the weapon equal to 2 + 2 per style feat you possess that lists Startoss Style as a prerequisite (maximum +6 damage). You cannot use this ability if you are carrying a weapon or a shield in your off hand (except for a buckler).",
                          special: "In addition to the chosen weapon, a character with this feat and the weapon training (thrown) class feature can use Startoss Style with any thrown weapons that she wields in one hand.",
                          summary: "Choose one weapon from the thrown fighter weapon group. While using this style and the chosen weapon, you gain a bonus on damage rolls made with the weapon equal to 2 + 2 per style feat you possess…",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Swordplay Deflection (Combat)",
                          featType: "General",
                          prerequisites: "Combat Expertise, Improved Feint, Swordplay Style, Swordplay Upset, Weapon Focus with the chosen weapon, base attack bonus +7.",
                          benefit: "While using Swordplay Style, when you make one or more melee attacks, you can forgo a single melee attack to prepare an action to disrupt an opponent’s attack. This functions as a swashbuckler’s opportune parry and riposteACG deed, except that if your result is greater than your opponent’s, you gain a +4 shield bonus to your Armor Class against attacks made by your opponent until the start of your next turn instead of preventing the hit, and you cannot attempt to riposte. If you have the opportune parry and riposte deed, you gain this Armor Class bonus anytime you successfully parry an opponent’s attack.",
                          summary: "While using Swordplay Style, when you make one or more melee attacks, you can forgo a single melee attack to prepare an action to disrupt an opponent’s attack.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Swordplay Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Combat Expertise, Weapon Focus with the chosen weapon, base attack bonus +3.",
                          benefit: "Choose one weapon from the heavy blades or light blades fighter weapon group. While using this style, wielding the chosen weapon, and fighting defensively or using either the total defense action or the Combat Expertise feat, you gain a +1 shield bonus to your Armor Class. In addition, you do not take the penalty on melee attacks from Combat Expertise on the first attack roll you make each turn. You still take the penalty on additional attacks, including attacks of opportunity.",
                          special: "A character with the swashbuckler weapon trainingACG or weapon training (heavy blades or light blades) class feature can use Swordplay Style with any light or one-handed piercing melee weapon, heavy blade, or light blade, respectively, in addition to the chosen weapon.",
                          summary: "Choose one weapon from the heavy blades or light blades fighter weapon group.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Swordplay Upset (Combat)",
                          featType: "General",
                          prerequisites: "Combat Expertise, Improved Feint, Swordplay Style, Weapon Focus with the chosen weapon, base attack bonus +5.",
                          benefit: "While using Swordplay Style, as an immediate action, you can attempt a feint against an opponent that makes a melee attack against you and misses.",
                          summary: "While using Swordplay Style, as an immediate action, you can attempt a feint against an opponent that makes a melee attack against you and misses.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Targeted Blow (Weapon Mastery)",
                          featType: "General",
                          prerequisites: "Str 13, Power Attack, base attack bonus +9, weapon training class feature with a melee weapon.",
                          benefit: "As a standard action, you can make a single melee attack with an appropriate weapon while targeting a specific body part of your foe. On a successful attack, you affect the target as if you had used the targetingUC gunslinger deed. You can use this ability two times per day, plus one additional time per day when your base attack bonus reaches +10, +15, and +20.",
                          summary: "As a standard action, you can make a single melee attack with an appropriate weapon while targeting a specific body part of your foe.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Telekinetic Mastery (Combat, Item Mastery)",
                          featType: "General",
                          prerequisites: "Use Magic Device 5 ranks, base Fortitude save bonus +7.",
                          benefit: "You can cause an item that has a transmutation spell of 4th level or higher in its construction requirements to cast telekinesis. You can use this feat once per day, plus an additional time per day at base Fortitude save bonus +9 and +11.",
                          summary: "You can cause an item that has a transmutation spell of 4th level or higher in its construction requirements to cast telekinesis.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Teleportation Mastery (Item Mastery)",
                          featType: "General",
                          prerequisites: "Use Magic Device 4 ranks, base Fortitude save bonus +6.",
                          benefit: "You can cause an item that has a conjuration spell of 3rd level or higher in its construction requirements to cast dimension door. You can use this ability once per day, plus an additional time per day at base Fortitude save bonus +9 and +12.",
                          summary: "You can cause an item that has a conjuration spell of 3rd level or higher in its construction requirements to cast dimension door.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Vision Mastery (Item Mastery)",
                          featType: "General",
                          prerequisites: "Use Magic Device 2 ranks, base Fortitude save bonus +4.",
                          benefit: "You can cause an item that has a divination spell of 1st level or higher in its construction requirements to cast either darkvision or see invisibility. You can use this feat once per day, plus an additional time per day at base Fortitude save bonus +6, +8, +10, and +12.",
                          summary: "You can cause an item that has a divination spell of 1st level or higher in its construction requirements to cast either darkvision or see invisibility.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Weapon Material Mastery (Weapon Mastery)",
                          featType: "General",
                          prerequisites: "Base attack bonus +7, weapon training class feature with a melee weapon.",
                          benefit: "While wielding an appropriate melee weapon, you gain the following special abilities, based on which special material the weapon is primarily constructed of (if any). Adamantine: Your critical hits ignore the target's DR. Alchemical Silver, Mithral, or Silversheen: When you successfully deal damage to a creature that is under the effects of an illusion or polymorph effect (such as disguise self or the change shape special ability), its wound fizzles and boils loudly, revealing the presence of such effects. If the effect is a racial ability, anyone that sees you attack the creature gains a +4 bonus on Knowledge checks to identify the creature. In addition, you immediately receive a Will save to disbelieve any illusion effect on the creature that allows disbelief. Cold Iron: When you score a critical hit against a target benefiting from spells that grant temporary hit points or bonuses to AC, ability scores, attack rolls, damage rolls, or saving throws, you must immediately attempt a special dispel check (1d20 + your base attack bonus) as a targeted dispel as per the dispel magic spell, but targeting only those spells. Once a creature has been the target of this effect, you can't affect it in this way again for 24 hours. Elysium BronzeUE: When you damage a magical beast or monstrous humanoid, the creature must succeed at a Fortitude save (DC = 10 + 1/2 your base attack bonus + your Strength modifier) or lose access to a randomly selected supernatural or spell-like ability (if any). Once a creature has been the target of this effect, you can't affect it in this way again for 24 hours. Fire-Forged SteelUE or Frost-Forged SteelUE: When your weapon is exposed to 10 points or more of energy damage (fire for fire-forged steel or cold for frost-forged steel), the weapon adds +1d6 points of energy damage to its attacks instead of +1d4 points of energy damage. Additionally, the duration of this effect increases by 1 round for every 5 points of the appropriate type of energy damage to which the weapon is exposed beyond 10. GreenwoodUE or Living SteelUE: When you score a critical hit, the target must succeed at a Fortitude save (DC = 10 + 1/2 your base attack bonus + your Strength modifier) or lose its fast healing and regeneration (if any) for 1d3 rounds. ViridiumUE: You add your Strength modifier and the weapon's enhancement bonus (if any) to the Fortitude DC to determine if a foe struck by the weapon contracts leprosy. WhipwoodUE: The weapon gains the trip special weapon feature, and you gain a +2 bonus on trip combat maneuvers made with it. WyrootUE: Once per turn, you can absorb life points from the weapon as a free action instead of a swift action. You can never absorb life points from wyroot weapons or equipment more than once per turn.",
                          summary: "While wielding an appropriate melee weapon, you gain the following special abilities, based on which special material the weapon is primarily constructed of (if any).",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Weapon Style Mastery (Style, Weapon Mastery)",
                          featType: "General",
                          prerequisites: "Any two style feats from different styles, base attack bonus +6, weapon training class feature with a melee weapon.",
                          benefit: "Choose one weapon style (a style feat that lists Weapon Focus as a prerequisite) that you have. You can have the chosen style and a second style active at once. Starting a stance provided by a style feat is still a swift action, but you can assume both the chosen weapon style’s stance and another style’s stance simultaneously using this action. This ability doesn’t stack with other abilities that allow you to have multiple styles active at the same time.",
                          normal: "You can have only one style active at once.",
                          summary: "Choose one weapon style (a style feat that lists Weapon Focus as a prerequisite) that you have. You can have the chosen style and a second style active at once.",
                          source: "Weapon Master's Handbook", isPremium: true)
        )
    }
}
