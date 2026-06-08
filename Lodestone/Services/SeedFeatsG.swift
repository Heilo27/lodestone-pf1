import Foundation

extension SeedDataBuilder {
    func seedFeatsG() async throws {
        try await db.insertFeat(
        .make("Circling Mongoose (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Dodge, Mobility, Spring Attack, base attack bonus +6.",
                          benefit: "When you are adjacent to a foe, as a full-round action, you can take a full-attack action to make melee attacks against the foe, moving 5 feet before each attack. You must move 5 feet before each melee attack you make, and can’t exceed your maximum speed, exceed your maximum number of attacks in a round, or attack any other target until the beginning of your next turn. You must remain adjacent to the foe, and your movement provokes attacks of opportunity as normal unless you succeed at the appropriate Acrobatics checks. If your first attack against the foe hits, you are considered to be flanking the foe on your second attack. Subsequent attacks made as part of the full-attack action continue to be treated as if you were flanking the foe until one of your attacks misses, at which point your attacks are treated normally.",
                          normal: "A character without this feat is limited to only one 5-foot step during a full attack, taken before, after, or between attacks.",
                          summary: "When you are adjacent to a foe, as a full-round action, you can take a full-attack action to make melee attacks against the foe, moving 5 feet before each attack.",
                          source: "Melee Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cudgeler Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Bludgeoner UC .",
                          benefit: "When you hit with a charge attack to deal nonlethal damage while using this style, your weapon deals damage as if it were one size category larger than it actually is. If you have the ability to make more than one attack on a charge, this increase applies only to your first attack.",
                          summary: "When you hit with a charge attack to deal nonlethal damage while using this style, your weapon deals damage as if it were one size category larger than it actually is.",
                          source: "Melee Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cudgeler Sweep (Combat)",
                          featType: "General",
                          prerequisites: "Bludgeoner UC, Cudgeler Style, base attack bonus +5 or monk level 5th.",
                          benefit: "When you hit with a charge attack using the Cudgeler Style feat, you can immediately attempt a single trip combat maneuver check against the target with a +2 competence bonus as a free action. This provokes an attack of opportunity as normal for a trip combat maneuver.",
                          summary: "When you hit with a charge attack using the Cudgeler Style feat, you can immediately attempt a single trip combat maneuver check against the target with a +2 competence bonus as a free action.",
                          source: "Melee Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cudgeler Takedown (Combat)",
                          featType: "General",
                          prerequisites: "Bludgeoner UC, Cudgeler Style, Cudgeler Sweep, base attack bonus +9 or monk level 9th.",
                          benefit: "When you hit with a charge attack using the Cudgeler Style feat, your weapon deals damage as though it were one size category larger for 1 round or until it leaves your hand. When you successfully trip an opponent with the Cudgeler Sweep feat, your opponent must succeed at a Fortitude save (DC = 10 + your character level + your Strength modifier) or be stunned for 1 round.",
                          summary: "When you hit with a charge attack using the Cudgeler Style feat, your weapon deals damage as though it were one size category larger for 1 round or until it leaves your hand.",
                          source: "Melee Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Deadly Grappler (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Improved Grapple, Improved Unarmed Strike.",
                          benefit: "You have learned to leverage a grappling creature’s weight against it. While you’re grappled, attacks you make against the grappler using armor spikes, a light or one-handed weapon, a natural weapon, or an unarmed strike deal damage as if the strike or weapon were one size category larger than it actually is.",
                          summary: "You have learned to leverage a grappling creature’s weight against it.",
                          source: "Melee Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Explosive Escape (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Str 13, Improved Grapple, Improved Unarmed Strike.",
                          benefit: "When you succeed at a combat maneuver check to break a grapple, you can choose to throw back any enemies participating in the grapple who are up to one size category larger than you. Such foes are thrown 5 feet directly away from you and take an amount of nonlethal damage equal to that of your unarmed attack.",
                          summary: "When you succeed at a combat maneuver check to break a grapple, you can choose to throw back any enemies participating in the grapple who are up to one size category larger than you.",
                          source: "Melee Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Got Your Back (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise.",
                          benefit: "If you successfully use the aid another action to give an ally who also has this feat a +2 bonus to AC against an opponent’s next attack, the ally is also not considered flanked or flat-footed against that opponent until the beginning of your next turn.",
                          normal: "You can use aid another to grant an ally a +2 bonus to AC against the next attack from an adjacent foe.",
                          summary: "If you successfully use the aid another action to give an ally who also has this feat a +2 bonus to AC against an opponent’s next attack, the ally is also not considered flanked or flat-footed…",
                          source: "Melee Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Grappled Caster",
                          featType: "General",
                          prerequisites: "Combat Casting.",
                          benefit: "You gain a +4 bonus on concentration checks to cast spells while grappled. This bonus stacks with the bonus granted by Combat Casting.",
                          summary: "You gain a +4 bonus on concentration checks to cast spells while grappled. This bonus stacks with the bonus granted by Combat Casting.",
                          source: "Melee Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Harrying Partners (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Any teamwork feat, base attack bonus +6.",
                          benefit: "When you successfully use the aid another action to improve the Armor Class or attack roll of an ally who also has this feat, the benefit from aid another lasts until the beginning of your next turn.",
                          normal: "The bonus granted by aid another either grants your ally a +2 bonus on her next attack roll against an opponent or grants your ally a +2 bonus to AC against that opponent’s next attack made before the beginning of your next turn.",
                          summary: "When you successfully use the aid another action to improve the Armor Class or attack roll of an ally who also has this feat, the benefit from aid another lasts until the beginning of your next turn.",
                          source: "Melee Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Heroic Leader (Combat)",
                          featType: "General",
                          prerequisites: "Cha 13; any combat feat; ability to gain an animal companion, cohort, eidolon, familiar, or mount.",
                          benefit: "Your animal companion, cohort, eidolon, familiar, or mount doesn’t count as threatening your opponent for the purposes of feats that require you to be the only character threatening a target. Allies with Hit Dice equal to or less than 1/2 your own Hit Dice don’t count as threatening opponents for the purposes of such feats.",
                          summary: "Your animal companion, cohort, eidolon, familiar, or mount doesn’t count as threatening your opponent for the purposes of feats that require you to be the only character threatening a target.",
                          source: "Melee Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Juke (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Dodge, Mobility, Sidestep APG .",
                          benefit: "When an opponent charges you, you gain a +4 dodge bonus to your AC. If the charger’s attack roll misses you and his movement ends while he is adjacent to you, you can switch places with the opponent as an immediate action, and he is considered to be flanked by you until the end of your next turn. You can’t use the benefits of Juke if you ready an action to set a weapon with the brace special quality against a charging foe.",
                          summary: "When an opponent charges you, you gain a +4 dodge bonus to your AC.",
                          source: "Melee Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Just Out of Reach (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Dodge, Mobility.",
                          benefit: "When a foe more than 5 feet away from you makes a melee attack against you using reach, you gain a +4 dodge bonus to your AC against the attack.",
                          summary: "When a foe more than 5 feet away from you makes a melee attack against you using reach, you gain a +4 dodge bonus to your AC against the attack.",
                          source: "Melee Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Kraken Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Wis 13, Improved Grapple, Improved Unarmed Strike, base attack bonus +3 or monk level 3rd.",
                          benefit: "When you succeed at a grapple check while using this style, your opponent takes an amount of bludgeoning damage equal to your Wisdom modifier in addition to any damage your grapple deals, such as when you choose to harm your opponent as part of a successful check to maintain a grapple. In addition, you gain a +2 bonus on combat maneuver checks to maintain a grapple.",
                          summary: "When you succeed at a grapple check while using this style, your opponent takes an amount of bludgeoning damage equal to your Wisdom modifier in addition to any damage your grapple deals, such as…",
                          source: "Melee Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Kraken Throttle (Combat)",
                          featType: "General",
                          prerequisites: "Wis 13, Improved Grapple, Improved Unarmed Strike, Kraken Style, base attack bonus +5 or monk level 5th.",
                          benefit: "The damage that you deal with the Kraken Style feat on a successful grapple combat maneuver check increases to an amount equal to your Wisdom bonus + 2. While using this style, you can choke your opponent when you successfully maintain a grapple instead of choosing to damage, move, pin, or tie up your opponent. This suffocates your opponent (Pathfinder RPG Core Rulebook 445). The grappled opponent can take a breath during any round in which you do not maintain the grapple.",
                          summary: "The damage that you deal with the Kraken Style feat on a successful grapple combat maneuver check increases to an amount equal to your Wisdom bonus + 2.",
                          source: "Melee Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Kraken Wrack (Combat)",
                          featType: "General",
                          prerequisites: "Wis 13, Improved Grapple, Improved Unarmed Strike, Kraken Style, base attack bonus +7 or monk level 7th.",
                          benefit: "The damage you deal with the Kraken Style feat on a successful grapple combat maneuver check increases to an amount equal to your Wisdom modifier + 4. While using this style, you can crush your opponent when you successfully maintain a grapple instead of choking, damaging, moving, pinning, or tying up your opponent. When you do, you deal an amount of damage equal to that of your unarmed strike or one of your natural attacks to your foe’s armor or an item held in your foe’s hand. This crushing damage bypasses half of the hardness of the armor or item.",
                          summary: "The damage you deal with the Kraken Style feat on a successful grapple combat maneuver check increases to an amount equal to your Wisdom modifier + 4.",
                          source: "Melee Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Leaping Evasion (Combat)",
                          featType: "General",
                          prerequisites: "Lightning Reflexes, evasion class feature.",
                          benefit: "When you succeed at a Reflex save against a spell or effect that affects an area, as an immediate action you can attempt an Acrobatics check to jump out of the effect’s area. You must move to the nearest space you can see outside of the affected area. The DC for this Acrobatics check is equal to the number of feet you must move to escape the area, and you can’t travel farther than your normal movement. If you use this feat, you are staggered on your next turn. This movement doesn’t provoke attacks of opportunity from creatures in the area of the effect you are escaping.",
                          summary: "When you succeed at a Reflex save against a spell or effect that affects an area, as an immediate action you can attempt an Acrobatics check to jump out of the effect’s area.",
                          source: "Melee Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Mirror Move (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, base attack bonus +4.",
                          benefit: "If you are the only character threatening an opponent and that opponent uses a combat feat (including taking an action that benefits from a combat feat, or gaining any bonus to AC, attack rolls, damage rolls, or saving throws from a combat feat), you can take an immediate action to gain the benefit of that feat until the end of your next turn. You must meet all the feat’s prerequisites. If a feat has a daily use limitation, as does Stunning Fist, any uses of that feat while you’re using Mirror Move count toward that feat’s daily limit for you. You can use Mirror Move once per day for every 4 levels you have attained.",
                          summary: "If you are the only character threatening an opponent and that opponent uses a combat feat (including taking an action that benefits from a combat feat, or gaining any bonus to AC, attack rolls,…",
                          source: "Melee Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Open Up (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise.",
                          benefit: "When you successfully use the aid another action to improve the next attack roll against an opponent by an ally who also has this feat, that attack also ignores any Armor Class bonus granted by the opponent’s shield. This benefit affects only physical shields, not shield bonuses from spells or other sources.",
                          special: "If both you and your ally also have the Harrying Partners teamwork feat, all of your ally’s attacks made before your next turn ignore the opponent’s Armor Class bonus from a shield.",
                          summary: "When you successfully use the aid another action to improve the next attack roll against an opponent by an ally who also has this feat, that attack also ignores any Armor Class bonus granted by the…",
                          source: "Melee Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Phalanx Formation (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1.",
                          benefit: "When you wield a reach weapon with which you are proficient, allies don’t provide soft cover to opponents you attack with reach.",
                          normal: "Attacking a target that is beyond another creature, even an ally, can result in the target having soft cover from you.",
                          summary: "When you wield a reach weapon with which you are proficient, allies don’t provide soft cover to opponents you attack with reach.",
                          source: "Melee Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Press to the Wall (Combat)",
                          featType: "General",
                          prerequisites: "Step Up, base attack bonus +3.",
                          benefit: "If you are the only character threatening an opponent, you can treat solid, immovable objects that occupy a square (such as columns, tree trunks, and walls) and are adjacent to that opponent as allies threatening the opponent when determining whether you flank the foe.",
                          summary: "If you are the only character threatening an opponent, you can treat solid, immovable objects that occupy a square (such as columns, tree trunks, and walls) and are adjacent to that opponent as…",
                          source: "Melee Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Reactive Arcane Shield",
                          featType: "General",
                          prerequisites: "Arcane Shield APG, arcane spellcaster, caster level 12th.",
                          benefit: "If you are aware of an attack against you that has already been declared and you choose to use the Arcane ShieldAPG feat, the immediate action to activate the feat occurs before the attack roll against you is resolved. In addition, all adjacent allies also gain the feat’s deflection bonus to AC for 1 round.",
                          summary: "If you are aware of an attack against you that has already been declared and you choose to use the Arcane ShieldAPG feat, the immediate action to activate the feat occurs before the attack roll…",
                          source: "Melee Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Redirect Attack (Combat)",
                          featType: "General",
                          prerequisites: "Dex 15, Int 15, Dodge.",
                          benefit: "Once per turn, when an opponent only you threaten fails an attack against you, you can redirect the attack to target another foe. The new target must be adjacent to you and within reach of the opponent that missed you. Attempt a combat maneuver check; if the result exceeds both the Combat Maneuver Defense of the opponent who missed you and the Armor Class of the new target, the attack strikes and deals its normal damage.",
                          summary: "Once per turn, when an opponent only you threaten fails an attack against you, you can redirect the attack to target another foe.",
                          source: "Melee Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shrug On (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1, medium armor proficiency.",
                          benefit: "As a full-round action, you can shrug yourself into the largest and most protective section of a suit of armor with which you are proficient. The armor does not grant any magical benefits in this state, and its armor check penalty and maximum Dexterity bonus to AC are both 2 worse than normal. When donned using this feat, medium armor grants a +3 armor bonus, and heavy armor grants a +5 armor bonus. Light armor grants no armor bonus when donned using this feat.",
                          summary: "As a full-round action, you can shrug yourself into the largest and most protective section of a suit of armor with which you are proficient.",
                          source: "Melee Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Steadfast Slayer (Combat)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "If you are the only character threatening an opponent and you successfully attack the opponent with a two-handed melee weapon, for each size category larger than you that opponent is, you gain a +2 bonus on your melee damage roll.",
                          summary: "If you are the only character threatening an opponent and you successfully attack the opponent with a two-handed melee weapon, for each size category larger than you that opponent is, you gain a +2…",
                          source: "Melee Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stick Together (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When an adjacent ally with this feat moves, you can move up to your speed as an immediate action, as long as your movement ends adjacent to that ally. If you do so, you are staggered on your next turn. This movement provokes attacks of opportunity as normal.",
                          summary: "When an adjacent ally with this feat moves, you can move up to your speed as an immediate action, as long as your movement ends adjacent to that ally.",
                          source: "Melee Tactics Toolbox", isPremium: true),

                    // // MARK: - Monster Codex
        )
        try await db.insertFeat(
        .make("Ancestral Enmity (Combat)",
                          featType: "General",
                          prerequisites: "Giant subtype.",
                          benefit: "You gain a +2 bonus on melee attack rolls against dwarves and gnomes.",
                          special: "You may select this feat twice. Its effects stack.",
                          summary: "You gain a +2 bonus on melee attack rolls against dwarves and gnomes.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Angelbane Strike",
                          featType: "General",
                          prerequisites: "Channel Smite, divine caster level 5th, channel negative energy class feature, demon lord patron deity.",
                          benefit: "When you use Channel Smite against a living creature with a good alignment, you treat all 1s on the channel smite damage dice as 2s. If your target is either a good outsider or a divine caster who serves a good deity, you are considered 2 levels higher when determining how many channel energy damage dice you roll when using Channel Smite.",
                          summary: "When you use Channel Smite against a living creature with a good alignment, you treat all 1s on the channel smite damage dice as 2s.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Aquatic Adaption",
                          featType: "General",
                          prerequisites: "Hold breath.",
                          benefit: "You can breathe water as well as air.",
                          summary: "You can breathe water as well as air.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Aquatic Advantage",
                          featType: "General",
                          prerequisites: "Combat Reflexes, must have a natural swim speed.",
                          benefit: "A creature that lacks a swim speed provokes an attack of opportunity from you when it attacks you underwater. You don’t get an attack of opportunity if the attacker is under the effects of freedom of movement.",
                          summary: "A creature that lacks a swim speed provokes an attack of opportunity from you when it attacks you underwater.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Awesome Charge (Combat)",
                          featType: "General",
                          prerequisites: "Str 25, Awesome Blow, Improved Bull Rush, Power Attack.",
                          benefit: "When you hit your opponent with a charge attack, you can attempt an awesome blow combat maneuver against that opponent as a free action.",
                          summary: "When you hit your opponent with a charge attack, you can attempt an awesome blow combat maneuver against that opponent as a free action.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Bag of Bones",
                          featType: "General",
                          prerequisites: "Ghoul.",
                          benefit: "You are treated as one size smaller for the purpose of calculating penalties for squeezing, and gain a +5 competence bonus on Escape Artist checks. If you possess 10 or more Hit Dice, this bonus increases to +4.",
                          summary: "You are treated as one size smaller for the purpose of calculating penalties for squeezing, and gain a +5 competence bonus on Escape Artist checks.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Blood Tide",
                          featType: "General",
                          prerequisites: "Combat Expertise, Greater Blood Frenzy, base attack bonus +6, blood frenzy ability, sahuagin.",
                          benefit: "When you make a full attack while in a blood frenzy, you can give up your regular attacks to instead make one melee attack at your highest base attack bonus against each bleeding or wounded opponent within reach. You must use a natural weapon with these attacks, and you must make a separate attack roll against each opponent. You do not need to use the same natural weapon against each opponent. When you use Blood Tide, you also forfeit any extra attacks granted by other feats, spells, or abilities.",
                          summary: "When you make a full attack while in a blood frenzy, you can give up your regular attacks to instead make one melee attack at your highest base attack bonus against each bleeding or wounded opponent…",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Born of Frost",
                          featType: "General",
                          prerequisites: "Frost giant.",
                          benefit: "Your natural weapons and unarmed strikes deal an additional 1d6 points of cold damage. Creatures that strike you with natural weapons or unarmed strikes take 1 point of cold damage.",
                          summary: "Your natural weapons and unarmed strikes deal an additional 1d6 points of cold damage. Creatures that strike you with natural weapons or unarmed strikes take 1 point of cold damage.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Bred Commander",
                          featType: "General",
                          prerequisites: "Hobgoblin.",
                          benefit: "When serving as a commander using the mass combat rules presented in Chapter 4 of Ultimate Campaign, you can add your class level to your army’s Morale checks in place of your Charisma modifier.",
                          summary: "When serving as a commander using the mass combat rules presented in Chapter 4 of Ultimate Campaign, you can add your class level to your army’s Morale checks in place of your Charisma modifier.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Bushwhack (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Improved Grapple, Improved Unarmed Strike.",
                          benefit: "When a flat-footed creature is unaware of your presence and you successfully grapple it, you can attempt a second grapple combat maneuver check to pin the creature as a free action. If you have the Chokehold feat (Pathfinder RPG Ultimate Combat 92), you can instead use this second combat maneuver check to initiate a chokehold.",
                          summary: "When a flat-footed creature is unaware of your presence and you successfully grapple it, you can attempt a second grapple combat maneuver check to pin the creature as a free action.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Chain Challenge",
                          featType: "General",
                          prerequisites: "Challenge class feature, character level 7th.",
                          benefit: "When the target of your challenge ability is killed or knocked unconscious, you can declare a new challenge target within 30 feet as an immediate action. This action must be taken immediately upon your initial challenge target’s defeat, and you can’t take it later if you are unable to act at the time. If you declare a new challenge using this feat, it doesn’t count against your total daily uses of challenge. You can chain together a number of challenges beyond the first equal to your Charisma bonus (minimum 1).",
                          summary: "When the target of your challenge ability is killed or knocked unconscious, you can declare a new challenge target within 30 feet as an immediate action.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Chilled Rock",
                          featType: "General",
                          prerequisites: "Born of Frost, frost giant.",
                          benefit: "Any items you throw with your rock throwing ability are chilled by your touch, dealing an additional 1d6 points of cold damage.",
                          summary: "Any items you throw with your rock throwing ability are chilled by your touch, dealing an additional 1d6 points of cold damage.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cleaving Sweep (Combat)",
                          featType: "General",
                          prerequisites: "Str 15, Cleave, Improved Trip, Weapon Focus (greataxe), base attack bonus +11.",
                          benefit: "When using a full-attack action with a two-handed weapon, you can give up your regular attacks and instead attempt a trip combat maneuver at your highest base attack bonus against each opponent within reach. You must attempt a separate combat maneuver check against each opponent.",
                          summary: "When using a full-attack action with a two-handed weapon, you can give up your regular attacks and instead attempt a trip combat maneuver at your highest base attack bonus against each opponent…",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Commander of Goblinkind",
                          featType: "General",
                          prerequisites: "Cha 13, hobgoblin.",
                          benefit: "You receive a +5 competence bonus on Knowledge (local) checks and Charisma-based skill checks regarding other goblinoids. If you have the Leadership feat, treat your leadership score as 2 higher when taking followers or a cohort with the goblinoid subtype.",
                          summary: "You receive a +5 competence bonus on Knowledge (local) checks and Charisma-based skill checks regarding other goblinoids.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cooperative Rend (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Rend, troll.",
                          benefit: "Whenever you and an ally who has this feat are both threatening the same creature, you must hit the target with at least one of your claw attacks to use your rend ability.",
                          normal: "You must hit with two of your claw attacks to use your rend ability.",
                          summary: "Whenever you and an ally who has this feat are both threatening the same creature, you must hit the target with at least one of your claw attacks to use your rend ability.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Coordinated Reposition (Teamwork)",
                          featType: "General",
                          prerequisites: "Step-Up.",
                          benefit: "Whenever an ally with this feat who is threatening a creature you are threatening takes a 5-foot step, you can move 5 feet as an immediate action. This movement does not provoke attacks of opportunity.",
                          summary: "Whenever an ally with this feat who is threatening a creature you are threatening takes a 5-foot step, you can move 5 feet as an immediate action.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Corpse Companion",
                          featType: "General",
                          prerequisites: "Animal companion class feature, ghoul.",
                          benefit: "Your animal companion’s type changes to undead, but its Hit Dice, base attack bonus, saving throws, skills, and tricks are retained from the base creature. The creature loses its Constitution score and its Charisma score becomes 12. If your companion is destroyed, your new companion is undead as well, using these same modifications.",
                          summary: "Your animal companion’s type changes to undead, but its Hit Dice, base attack bonus, saving throws, skills, and tricks are retained from the base creature.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Corrupted Flesh",
                          featType: "General",
                          prerequisites: "Con 15, 6 HD, ogre.",
                          benefit: "You gain the stench special ability (DC 10 + 1/2 your HD + your Constitution modifier).",
                          summary: "You gain the stench special ability (DC 10 + 1/2 your HD + your Constitution modifier).",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dangerous Tail (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +5, Lizardfolk.",
                          benefit: "You gain a tail swipe attack. If used as part of a full-attack action, the attack is made at your full base attack bonus – 5. If the tail swipe hits, it deals 1d4 points of damage (assuming you are Medium) + 1/2 your Strength modifier. If you confirm a critical hit against a target with your tail swipe, as a free action you can attempt a trip combat maneuver against that target.",
                          summary: "You gain a tail swipe attack. If used as part of a full-attack action, the attack is made at your full base attack bonus – 5.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Disarm Partner (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1.",
                          benefit: "When an ally with this feat fails a disarm combat maneuver check made on his turn against an opponent within your melee reach, as an immediate action you can attempt a disarm combat maneuver check against that foe.",
                          summary: "When an ally with this feat fails a disarm combat maneuver check made on his turn against an opponent within your melee reach, as an immediate action you can attempt a disarm combat maneuver check…",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Draconic Magic",
                          featType: "General",
                          prerequisites: "Draconic Aspect ARG, kobold.",
                          benefit: "You gain a group of spell-like abilities based on the color of your dragon aspect. Each spell-like ability can be used once per day, and the DC of any of these spelllike abilities is 10 + 1/2 your Hit Dice + Charisma modifier. Black: Corrosive touchUM, †, darkness. Blue: Minor image, shocking grasp†. Green: Entangle†, gust of wind. Red: Burning hands†, pyrotechnics. White: Burning hands† (deals cold damage instead of fire), fog cloud.",
                          special: "You can use this feat instead of Draconic BreathARG or Draconic GlideARG to qualify for the Draconic ParagonARG feat. If you have this feat and Draconic Paragon, you can use the spell-like ability marked with a dagger (†) twice per day.",
                          summary: "You gain a group of spell-like abilities based on the color of your dragon aspect.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Croaking",
                          featType: "General",
                          prerequisites: "Boggard, terrifying croak.",
                          benefit: "You gain one extra use of terrifying croak per hour. If your recharge time is less than 1 hour, you instead gain an extra use each time the ability recharges.",
                          summary: "You gain one extra use of terrifying croak per hour. If your recharge time is less than 1 hour, you instead gain an extra use each time the ability recharges.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fetid Breath",
                          featType: "General",
                          prerequisites: "Con 15, Corrupted Flesh, 6 HD, ogre.",
                          benefit: "You can exhale a 30-foot cone of vile-smelling, moist air mixed with phlegm and remnants of old meals. Creatures in the area must succeed at a Fortitude save (DC = 10 + 1/2 your Hit Dice + your Constitution modifier) or they are nauseated for 1d6 minutes. Affected creatures that spend a full-round action gasping for fresh air and scraping off your oral debris may attempt another save to overcome the effect. You can use this breath weapon twice per day, plus one additional time per day for every 6 HD you possess beyond 6.",
                          summary: "You can exhale a 30-foot cone of vile-smelling, moist air mixed with phlegm and remnants of old meals.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Gluttonous Gobbler",
                          featType: "General",
                          prerequisites: "Both Improved Unarmed Strike and Improved Grapple or the grab ability, ogre, size Large or larger.",
                          benefit: "If you start your turn grappling another creature at least two size categories smaller than you, you can put the grappled creature in your mouth as a move action and attempt another grapple combat maneuver check (as though attempting to pin the opponent). If you succeed, you swallow the opponent as if you had the swallow whole special ability.",
                          summary: "If you start your turn grappling another creature at least two size categories smaller than you, you can put the grappled creature in your mouth as a move action and attempt another grapple combat…",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Gnawer",
                          featType: "General",
                          prerequisites: "Sharptooth, ratfolk.",
                          benefit: "Damage dealt by your bite attack ignores an amount of hardness equal to 3 plus half your character level. You can spend a full-round action to deal double your bite damage to an unattended, inanimate object.",
                          special: "If you have the Burrowing Teeth feat (Pathfinder RPG Advanced Race Guide 154), you can burrow through solid stone at a speed of 5 feet per 10 minutes.",
                          summary: "Damage dealt by your bite attack ignores an amount of hardness equal to 3 plus half your character level.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Gray Dwarf Magic",
                          featType: "General",
                          prerequisites: "Duergar.",
                          benefit: "Choose one spell-like ability that is usable once per day and is granted by a duergar racial trait you don’t have. You can use that spell-like ability once per day, with a caster level equal to your character level.",
                          special: "You can take this feat multiple times. Each time you do, you must select a spell-like ability that’s usable once per day from a different duergar racial trait.",
                          summary: "Choose one spell-like ability that is usable once per day and is granted by a duergar racial trait you don’t have.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Great Rend (Combat)",
                          featType: "General",
                          prerequisites: "Bite attack, rend, troll.",
                          benefit: "If you are able to use your rend ability on the same turn that you also succeed at a bite attack, your rend deals an amount of additional damage equal to half your Strength modifier.",
                          summary: "If you are able to use your rend ability on the same turn that you also succeed at a bite attack, your rend deals an amount of additional damage equal to half your Strength modifier.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Blood Frenzy",
                          featType: "General",
                          prerequisites: "Blood frenzy ability, sahuagin.",
                          benefit: "You no longer take a penalty to AC while in a blood frenzy. In addition, if you strike an enemy with both of your claw attacks—or two or more claw attacks if you have extra limbs—while in a blood frenzy, you can rend (as the special attack), dealing an amount of additional damage equal to your claw damage plus 1-1/2 times your Strength bonus (minimum 0).",
                          summary: "You no longer take a penalty to AC while in a blood frenzy. In addition, if you strike an enemy with both of your claw attacks—or two or more claw attacks if you have extra limbs—while in a blood…",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Horn Rider (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1.",
                          benefit: "You gain a +1 shield bonus to AC when lashed into a horn harness.",
                          special: "A creature with this feat can take the Mounted Archery feat without possessing 1 rank in the Ride skill or the Mounted Combat feat.",
                          summary: "You gain a +1 shield bonus to AC when lashed into a horn harness.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Horn Rider's Charge (Combat)",
                          featType: "General",
                          prerequisites: "Horn Rider, base attack bonus +1.",
                          benefit: "Whenever you’re lashed into a horn harness and you ready an action to make a melee attack against the target of a charge made by the creature you’re lashed to, you gain the attack bonus for charging and your attack deals double damage (or triple damage with a lance). This benefit does not stack with the benefit of Spirited Charge.",
                          summary: "Whenever you’re lashed into a horn harness and you ready an action to make a melee attack against the target of a charge made by the creature you’re lashed to, you gain the attack bonus for charging…",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Hurtful (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Power Attack.",
                          benefit: "When you successfully demoralize an opponent within your melee reach with an Intimidate check, you can make a single melee attack against that creature as a swift action. If your attack fails to damage the target, its shaken condition from being demoralized immediately ends.",
                          summary: "When you successfully demoralize an opponent within your melee reach with an Intimidate check, you can make a single melee attack against that creature as a swift action.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Icy Stare",
                          featType: "General",
                          prerequisites: "Born of Frost, frost giant.",
                          benefit: "As a standard action, you can direct your icy stare against a single creature or object within 10 feet. Targeted creatures must succeed at a Fortitude save (DC = 10 + 1/2 your Hit Dice + your Charisma modifier) or take 1d6 points of cold damage. Unattended objects cannot attempt a saving throw. Creatures damaged by the spell must succeed at a Fortitude save or take 1 point of Strength damage. This feat doesn’t grant an actual gaze attack—foes and allies are not in danger simply by meeting your gaze.",
                          summary: "As a standard action, you can direct your icy stare against a single creature or object within 10 feet.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Disarm Partner (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Disarm Partner, base attack bonus +5.",
                          benefit: "When an ally with this feat fails a disarm combat maneuver check made on his turn against a foe that’s within your melee reach, you can make an attack of opportunity against that foe. If that attack of opportunity hits the foe, you can also attempt a disarm combat maneuver check against that opponent as part of that attack of opportunity.",
                          summary: "When an ally with this feat fails a disarm combat maneuver check made on his turn against a foe that’s within your melee reach, you can make an attack of opportunity against that foe.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Innate Arcana",
                          featType: "General",
                          prerequisites: "Arcane spellcaster, caster level 4th, serpentfolk.",
                          benefit: "You can expend two arcane spell slots or prepared spells to cast one of your racial spell-like abilities. The level of each expended spell must be equal to or higher than the sorcerer/wizard spell level of the spell-like ability you want to cast.",
                          summary: "You can expend two arcane spell slots or prepared spells to cast one of your racial spell-like abilities.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Innate Flexibility",
                          featType: "General",
                          prerequisites: "Duergar, two racial spell-like abilities usable once per day.",
                          benefit: "You gain a number of additional uses of your once per day racial spell-like abilities equal to the number of such abilities you have. You can expend these additional uses in any combination. Normal duergar spell-like abilities and those granted by duergar racial traits both count for the purpose of this feat. For example, a normal duergar has two once per day spell-like abilities (enlarge person and invisibility), so taking this feat would grant her two additional uses of her once per day spell-like abilities; each day she can use either two additional uses of enlarge person, two additional uses of invisibility, or one additional use of each.",
                          special: "You can take this feat multiple times. Its effects stack.",
                          summary: "You gain a number of additional uses of your once per day racial spell-like abilities equal to the number of such abilities you have. You can expend these additional uses in any combination.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Mighty Bite (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +6, bite attack, rend, troll.",
                          benefit: "If you deal damage to a creature with your rend ability, the critical threat range of your bite attack becomes 18–20 until the start of your next turn. This increase does not stack with other effects that increase your bite’s critical threat range (such as the keen weapon special ability or the Improved Critical feat).",
                          summary: "If you deal damage to a creature with your rend ability, the critical threat range of your bite attack becomes 18–20 until the start of your next turn.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Motivated March",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When traveling overland, you and a number of allies equal to 10 times your character level reduce the amount of nonlethal damage taken as a result of a forced march by half. Creatures benefiting from this feat can delay the fatigued effect of a forced march for a number of hours equal to your Charisma modifier (minimum 1). A creature that delays this effect becomes exhausted instead of fatigued when the condition takes effect.",
                          summary: "When traveling overland, you and a number of allies equal to 10 times your character level reduce the amount of nonlethal damage taken as a result of a forced march by half.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Mutual Hatred (Combat)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You gain a +1 bonus on attack rolls and damage rolls against creatures whose hatred racial trait or favored enemy class feature applies to you. For instance, an orc would gain this bonus against all dwarves and against rangers who chose humanoid (orc) as a favored enemy.",
                          summary: "You gain a +1 bonus on attack rolls and damage rolls against creatures whose hatred racial trait or favored enemy class feature applies to you.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ogre Crush",
                          featType: "General",
                          prerequisites: "Str 25, Improved Grapple, Improved Unarmed Strike, ogre, size Large or larger.",
                          benefit: "Your unarmed strike damage increases by one step when you’re grappling creatures smaller than you. You gain the constrict monster special ability, dealing an amount of damage equal to either the slam damage for a creature of your size or your unarmed strike damage, whichever is greater.",
                          summary: "Your unarmed strike damage increases by one step when you’re grappling creatures smaller than you.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Old as Dust",
                          featType: "General",
                          prerequisites: "Sleeper, Warren Digger, creature has been a ghoul for at least 500 years.",
                          benefit: "When you are reduced to 0 hit points, you are not destroyed—you cannot be killed unless your body is completely destroyed with fire or doused in holy water, or you take damage from a cure spell or channeled positive energy after you’ve been reduced to 0 hit points. Anytime you are reduced to 0 hit points, you remain unconscious until you are healed or until the following midnight, at which time you regain 1 hit point per Hit Die and awaken.",
                          summary: "When you are reduced to 0 hit points, you are not destroyed—you cannot be killed unless your body is completely destroyed with fire or doused in holy water, or you take damage from a cure spell or…",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Pack Rat",
                          featType: "General",
                          prerequisites: "Ratfolk.",
                          benefit: "Once per day, when confronted with a situation that calls for a particular mundane item, you happen to have such an item on your person. The item must cost no more than 25 gp plus 5 gp per level, and you must pay its cost when you “find” it (in other words, the money you thought you had on your person was actually the item). The item must be something you can easily carry—for example, if you are on foot and have only a backpack, you could not have a large iron cauldron. You can’t find magical items using this feat, nor can you have specific items, such as the key to a particular door. If you are stripped of your equipment or possessions, you lose the benefits of this feat until you have at least a day to resupply and acquire new items.",
                          summary: "Once per day, when confronted with a situation that calls for a particular mundane item, you happen to have such an item on your person.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Pile On (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Hurtful, Power Attack.",
                          benefit: "Once per round when you damage a creature that is shaken, frightened, or panicked, you can choose to deal half your normal damage in order to extend the duration of its fear condition by 1 round.",
                          summary: "Once per round when you damage a creature that is shaken, frightened, or panicked, you can choose to deal half your normal damage in order to extend the duration of its fear condition by 1 round.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Powerful Tongue",
                          featType: "General",
                          prerequisites: "Str 17, sticky tongue.",
                          benefit: "Your tongue attack gains the pull special ability. At the start of your turn, if your tongue is attached to a target of your size or smaller and you succeed at a combat maneuver check, you can pull the target 5 feet closer to you as free action.",
                          summary: "Your tongue attack gains the pull special ability. At the start of your turn, if your tongue is attached to a target of your size or smaller and you succeed at a combat maneuver check, you can pull…",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Raging Brute",
                          featType: "General",
                          prerequisites: "Str 21, ogre.",
                          benefit: "Select one rage power. Once per day as a free action, you can enter a state of fury and gain the effects of this rage power for 1 minute. If the rage power normally ends a barbarian rage when used, the ability ends after it’s used and you immediately become fatigued. You don’t otherwise become fatigued at the end of this ability’s duration. Your effective barbarian level for the purpose of qualifying for and using rage powers is equal to your total Hit Dice – 3. This feat doesn’t grant any of the normal benefits or penalties of a barbarian’s rage.",
                          special: "You can take this feat multiple times. Each time you do, choose another rage power and gain one additional use per day of this feat. Each time you activate this feat, you can use any or all of your rage powers gained from this feat.",
                          summary: "Select one rage power. Once per day as a free action, you can enter a state of fury and gain the effects of this rage power for 1 minute.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Raging Regeneration (Combat)",
                          featType: "General",
                          prerequisites: "Rage class ability, regeneration, troll.",
                          benefit: "While you are raging, fire and acid damage don’t make your regeneration stop functioning on the round following the attack, and instead reduce the number of hit points regained by regeneration each round by 2 until the end of your next turn.",
                          normal: "Acid and fire damage cause your regeneration to stop functioning on the round following the attack.",
                          summary: "While you are raging, fire and acid damage don’t make your regeneration stop functioning on the round following the attack, and instead reduce the number of hit points regained by regeneration each…",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Regenerate Muscles",
                          featType: "General",
                          prerequisites: "Power Attack, regeneration, troll.",
                          benefit: "As a free action, you can make your regeneration stop working for 1 minute and gain a +2 enhancement bonus to your Strength. You lose your regeneration ability while you benefit from this bonus to Strength and for 1 minute afterward. You can end this ability early as a free action. You can activate this ability only if your regeneration is functioning.",
                          summary: "As a free action, you can make your regeneration stop working for 1 minute and gain a +2 enhancement bonus to your Strength.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Savage Critical",
                          featType: "General",
                          prerequisites: "Str 19, ogre, sneak attack +2d6.",
                          benefit: "When you hit a creature using the Vital Strike feat or confirm a critical hit against an opponent, add your sneak attack damage to the damage from the attack. This feat has no effect on attacks that already allow you to add sneak attack damage.",
                          summary: "When you hit a creature using the Vital Strike feat or confirm a critical hit against an opponent, add your sneak attack damage to the damage from the attack.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Scarred Legion (Teamwork)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You gain a +2 bonus on Intimidate checks. You also gain a +2 morale bonus on Will saving throws while adjacent to an ally with this feat. When you charge, if you started the charge adjacent to an ally with this feat, you retain the bonus on Will saves until the start of your next turn.",
                          summary: "You gain a +2 bonus on Intimidate checks. You also gain a +2 morale bonus on Will saving throws while adjacent to an ally with this feat.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Serpentine Compression",
                          featType: "General",
                          prerequisites: "Serpentfolk.",
                          benefit: "You gain the compression universal monster ability (Pathfinder RPG Bestiary 2 295), allowing you to move through an area as small as one-quarter your space without squeezing, or one-eighth your space when squeezing.",
                          summary: "You gain the compression universal monster ability (Pathfinder RPG Bestiary 2 295), allowing you to move through an area as small as one-quarter your space without squeezing, or one-eighth your space…",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shadow Shroud",
                          featType: "General",
                          prerequisites: "Combat Reflexes, darkness racial spell-like ability.",
                          benefit: "As an immediate action, you can create a shifting haze of darkness around yourself, granting you concealment against one attack. The haze dissipates after the attack is resolved. You can use this ability once per day, plus one additional time per day when your caster level for your racial darkness spell-like ability reaches 5th, 10th, 15th, and 20th.",
                          summary: "As an immediate action, you can create a shifting haze of darkness around yourself, granting you concealment against one attack. The haze dissipates after the attack is resolved.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shared Stash (Teamwork)",
                          featType: "General",
                          prerequisites: "Quick Draw, base attack bonus +1, Sleight of Hand 1 rank, swarming racial trait.",
                          benefit: "While you are in the same square as a willing ally who also has this feat, you can draw a weapon from that creature as a free action or draw a hidden weapon or any other object as a move action. You can also take a held object from a willing ally in the same square as you as a free action. Drawing or taking an object (but not a weapon) in this way provokes an attack of opportunity.",
                          summary: "While you are in the same square as a willing ally who also has this feat, you can draw a weapon from that creature as a free action or draw a hidden weapon or any other object as a move action.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sharptooth",
                          featType: "General",
                          prerequisites: "Ratfolk.",
                          benefit: "You gain a bite attack. This is a primary natural attack that deals 1d3 points of damage.",
                          summary: "You gain a bite attack. This is a primary natural attack that deals 1d3 points of damage.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shocking Bellow (Combat)",
                          featType: "General",
                          prerequisites: "Intimidating Prowess.",
                          benefit: "If you act in the surprise round of a combat, as a free action you can attempt a single Intimidate check to demoralize a creature within 30 feet that can clearly see or hear you.",
                          summary: "If you act in the surprise round of a combat, as a free action you can attempt a single Intimidate check to demoralize a creature within 30 feet that can clearly see or hear you.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sleeper",
                          featType: "General",
                          prerequisites: "Warren Digger, ghoul.",
                          benefit: "You heal 1 hit point per 10 minutes as long as you are surrounded by at least 5 feet of dirt or stone on all sides and take no actions.",
                          summary: "You heal 1 hit point per 10 minutes as long as you are surrounded by at least 5 feet of dirt or stone on all sides and take no actions.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Slurk Rider (Combat)",
                          featType: "General",
                          prerequisites: "Kobold.",
                          benefit: "You are able to control, guide, and communicate with slurks (Pathfinder RPG Bestiary 2 251), as if they understood Draconic. You can also spend a standard action to manipulate the nodules on the slurk’s back to activate its slime ability. Both you and the slurk can activate this ability during the same round.",
                          summary: "You are able to control, guide, and communicate with slurks (Pathfinder RPG Bestiary 2 251), as if they understood Draconic.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Snapping Flank (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Base attack bonus +9, bite attack.",
                          benefit: "Whenever you are flanking with an ally who also has this feat, as a swift action you can make a bite attack against the opponent you and your ally are flanking.",
                          summary: "Whenever you are flanking with an ally who also has this feat, as a swift action you can make a bite attack against the opponent you and your ally are flanking.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Snapping Jaws (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1, gnoll.",
                          benefit: "You can use your bite as a natural weapon. This is a primary attack that deals 1d6 points of damage.",
                          summary: "You can use your bite as a natural weapon. This is a primary attack that deals 1d6 points of damage.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sniper's Lantern",
                          featType: "General",
                          prerequisites: "Point-Blank Shot, dancing lights racial spell-like ability.",
                          benefit: "You can use your dancing lights racial spell-like ability to create one orb of penetrating light. This light grants you a +2 insight bonus on all ranged attacks made against targets within 5 feet of the light’s location. You can direct this light to a new location anywhere within the spell’s range as a move action, otherwise the effect functions exactly like dancing lights. You can use this ability once per day, plus an additional time per day when your caster level for your racial dancing lights spell-like ability reaches 5th, 10th, 15th, and 20th.",
                          summary: "You can use your dancing lights racial spell-like ability to create one orb of penetrating light.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sonic Croak",
                          featType: "General",
                          prerequisites: "Throat Pouch, boggard, terrifying croak.",
                          benefit: "When you use your terrifying croak ability, instead of it imparting its normal effect, you can choose to deal 1d4 points of sonic damage to creatures in a 15-foot cone (Fortitude half ). The DC of this Fortitude save is the same as that of your terrifying croak. For every 3 Hit Dice you possess, the damage dealt increases by 1d4.",
                          special: "The Throat Pouch feat increases the size of this feat’s cone by 5 feet for every 6 HD you have, not every 2 HD.",
                          summary: "When you use your terrifying croak ability, instead of it imparting its normal effect, you can choose to deal 1d4 points of sonic damage to creatures in a 15-foot cone (Fortitude half ).",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spirit of the Corps (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Whenever you are within 10 feet of an ally benefiting from a spell or effect that grants a morale bonus on a particular type of roll, once during that effect’s duration, you can apply that morale bonus on a roll you make of that type. For instance, if an ally with this feat is benefiting from heroism, once during the duration of the spell you could gain a +2 morale bonus on one saving throw, attack roll, or skill check. You can use this feat only once per round, and only once per spell or effect.",
                          summary: "Whenever you are within 10 feet of an ally benefiting from a spell or effect that grants a morale bonus on a particular type of roll, once during that effect’s duration, you can apply that morale…",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sprinting Troll",
                          featType: "General",
                          prerequisites: "Fleet, regeneration, troll.",
                          benefit: "As a free action, you can increase your land speed by 10 feet for 1 minute. You lose your regeneration ability while you benefit from this enhancement bonus to your land speed and for 1 minute afterward. You can end this ability early as a free action. You can activate this ability only if your regeneration is functioning.",
                          summary: "As a free action, you can increase your land speed by 10 feet for 1 minute.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Staggering Blow (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Power Attack, Vital Strike, base attack bonus +8.",
                          benefit: "When you attack a foe using Vital Strike, you can choose to take a –2 penalty on your attack roll to also make the attack a staggering strike. You must make this choice before making the attack roll. If your attack roll is successful, your target must succeed at a Fortitude saving throw (DC = 10 + 1/2 your character level + your Strength modifier) or be staggered until the start of your next turn. Once a creature that failed its save recovers from the effects of your staggering blow, it is immune to the effects of this feat for 24 hours. Constructs, oozes, plants, undead, incorporeal creatures, and creatures that are immune to critical hits are immune to this effect.",
                          summary: "When you attack a foe using Vital Strike, you can choose to take a –2 penalty on your attack roll to also make the attack a staggering strike. You must make this choice before making the attack roll.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Strangler (MC)",
                          featType: "General",
                          prerequisites: "Exotic Weapon Proficiency (lasso), Weapon Focus (lasso).",
                          benefit: "When you successfully entangle a creature with a lasso (Pathfinder RPG Advanced Player’s Guide 178) and beat the target’s CMD by 5 or more, the target cannot speak above a whisper and must succeed at a concentration check (DC = 20 + your CMB + the spell level) to cast a spell with a verbal component, use a command word item, or use any magic requiring speech. Additionally, the DC of an Escape Artist check to slip free of a lasso you are using equals 15 or your CMD, whichever is higher.",
                          summary: "When you successfully entangle a creature with a lasso (Pathfinder RPG Advanced Player’s Guide 178) and beat the target’s CMD by 5 or more, the target cannot speak above a whisper and must succeed at…",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stunning Croak",
                          featType: "General",
                          prerequisites: "Sonic Croak, Throat Pouch, boggard, terrifying croak.",
                          benefit: "When you use your terrifying croak ability, instead of imparting its normal effect you can choose to stun one creature within 30 feet for 1 round. If the target succeeds at a Fortitude save, it is instead staggered for 1 round. The DC of this Fortitude save is the same as that of your terrifying croak ability.",
                          summary: "When you use your terrifying croak ability, instead of imparting its normal effect you can choose to stun one creature within 30 feet for 1 round.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sure on Ice",
                          featType: "General",
                          prerequisites: "Frost giant.",
                          benefit: "You can move across icy and snowy surfaces without penalty, and don’t need to attempt Acrobatics checks to run or charge on ice. You gain a +4 bonus on Climb checks to climb ice.",
                          summary: "You can move across icy and snowy surfaces without penalty, and don’t need to attempt Acrobatics checks to run or charge on ice. You gain a +4 bonus on Climb checks to climb ice.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Swift Swimmer",
                          featType: "General",
                          prerequisites: "Lizardfolk, swim speed.",
                          benefit: "Your swim speed increases by 15 feet.",
                          summary: "Your swim speed increases by 15 feet.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tail Weapon (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1, serpentfolk.",
                          benefit: "You can make a tail slap attack with your tail. This is a secondary natural attack that deals 1d6 points of bludgeoning damage. You also gain a +2 racial bonus on Acrobatics checks to balance and to your CMD against maneuvers that attempt to move you from your square.",
                          summary: "You can make a tail slap attack with your tail. This is a secondary natural attack that deals 1d6 points of bludgeoning damage.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Telepathic Distraction",
                          featType: "General",
                          prerequisites: "Cha 15, serpentfolk.",
                          benefit: "As a standard action, you can focus your telepathy on one creature within range to weaken its resistance to mental attacks. The target must succeed at a Will save (DC = 10 + 1/2 your Hit Dice + your Charisma modifier) or take 1d6 points of nonlethal damage and take a –2 penalty against mind-affecting effects; the penalty lasts for 1d6 rounds. This is a mind-affecting effect. You can use this ability a number of times per day equal to 1/2 your Hit Dice.",
                          summary: "As a standard action, you can focus your telepathy on one creature within range to weaken its resistance to mental attacks.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Throat Pouch",
                          featType: "General",
                          prerequisites: "Boggard, terrifying croak.",
                          benefit: "The range of your terrifying croak ability increases by 5 feet for every 2 Hit Dice you have (maximum 30-foot increase). While speaking Boggard or wordlessly vocalizing, you can swell your throat pouch as a free action to reduce the Perception DC needed to hear your voice by an amount equal to your Hit Dice.",
                          special: "The benefits of Throat Pouch and any feats that use it as a prerequisite are available only while you’re wearing light, medium, or no armor.",
                          summary: "The range of your terrifying croak ability increases by 5 feet for every 2 Hit Dice you have (maximum 30-foot increase).",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tough as Iron",
                          featType: "General",
                          prerequisites: "Toughness, duergar.",
                          benefit: "When you gain an enhancement bonus to your natural armor, that bonus increases by 2. This has no effect if your natural armor bonus is +0 or you do not have an enhancement bonus increasing your natural armor bonus.",
                          summary: "When you gain an enhancement bonus to your natural armor, that bonus increases by 2.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Venomous Spray (Combat)",
                          featType: "General",
                          prerequisites: "Serpentfolk.",
                          benefit: "You can spit venom as a secondary ranged attack with a range of 5 feet. This is a natural attack and doesn’t provoke attacks of opportunity. A target struck by your venom must succeed at a Fortitude save (DC = your poison DC) or be blinded for 1d4 rounds and suffer the normal effects of your poison. You can’t use this attack during any round in which you make a bite attack (and vice versa). After spitting venom, you are unable to use your poisonous bite or to spit venom for 1d4 rounds.",
                          summary: "You can spit venom as a secondary ranged attack with a range of 5 feet. This is a natural attack and doesn’t provoke attacks of opportunity.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Vestigial Head",
                          featType: "General",
                          prerequisites: "Ogre.",
                          benefit: "Anytime you must attempt a Will save against a hostile effect, there is a 25% change that the effect targets your vestigial head instead. If this occurs, you are treated as if you had succeeded at your saving throw, and instead are sickened for 1d4 rounds or the duration of the effect (whichever is longer).",
                          special: "You can take this feat twice. The second time you do, the chance of a hostile Will effect targeting your vestigial head instead of your own increases to 50%. This doesn’t give you another vestigial head.",
                          summary: "Anytime you must attempt a Will save against a hostile effect, there is a 25% change that the effect targets your vestigial head instead.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Visceral Threat (Combat)",
                          featType: "General",
                          prerequisites: "Intimidating Prowess.",
                          benefit: "You may use Intimidate, rather than Bluff, to attempt a feint against a creature within your melee reach.",
                          summary: "You may use Intimidate, rather than Bluff, to attempt a feint against a creature within your melee reach.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Warmonger",
                          featType: "General",
                          prerequisites: "Cha 13, hobgoblin.",
                          benefit: "You gain Bluff and Diplomacy as class skills. In addition, you receive a +4 competence bonus on Bluff and Diplomacy skill checks when using either skill to convince another character to go to war against or attack another creature or group.",
                          summary: "You gain Bluff and Diplomacy as class skills. In addition, you receive a +4 competence bonus on Bluff and Diplomacy skill checks when using either skill to convince another character to go to war…",
                          source: "Monster Codex", isPremium: true),

                    // // MARK: - Monster Codex, Blood of the Night
        )
        try await db.insertFeat(
        .make("Aversion Tolerance",
                          featType: "General",
                          prerequisites: "Vampire.",
                          benefit: "You gain a +2 bonus on saves made to resist aversions to objects, sounds, and materials appropriate to your vampire type (such as garlic, holy symbols, and mirrors for a moroi). When confronted with such things, you can attempt a saving throw immediately instead of after 1 round.",
                          summary: "You gain a +2 bonus on saves made to resist aversions to objects, sounds, and materials appropriate to your vampire type (such as garlic, holy symbols, and mirrors for a moroi).",
                          source: "Monster Codex, Blood of the Night", isPremium: true)
        )
        try await db.insertFeat(
        .make("Vampiric Companion",
                          featType: "General",
                          prerequisites: "Dhampir or vampire, nongood alignment, 10th level in a class that grants a familiar or animal companion.",
                          benefit: "Your animal companion or familiar’s type changes to “undead.” The creature gains fast healing 5 as well as your vampire or dhampir weaknesses. If you are a vampire, the creature also gains the following abilities, depending on what type of vampire you are. Jiang-Shi: While the creature is adjacent to or in your square, it gains the benefit of your prayer scroll ability. The creature crumbles into dust if destroyed ( just like a jiang-shi), but is not permanently destroyed unless measures are taken that would destroy a jiang-shi. Moroi: If the creature is adjacent to or in your square when you assume gaseous form, it transforms with you and follows you; its transformation ends when yours does. If reduced to 0 hit points, it’s forced into gaseous form and must return to your coffin to reform (or the foot of your coffin if it cannot fit within it). Nosferatu: If the creature is adjacent to or in your square when you assume swarm form, it transforms with you and follows you; its transformation ends when yours does. The creature can climb as if using the spider climb vampire ability, even if its anatomy is not suitable for climbing (such as a horse).",
                          special: "If your animal companion or familiar is destroyed, dismissed, or lost, you can apply the effects of this feat to the replacement creature. If you are destroyed, the creature retains its undead type but loses all other special abilities from this feat. If you have more than one animal companion or familiar, choose one of them when you select this feat and apply its effects to that creature. You can select this feat more than once. Each time you select the feat, it applies to a different animal companion or familiar.",
                          summary: "Your animal companion or familiar’s type changes to “undead.” The creature gains fast healing 5 as well as your vampire or dhampir weaknesses.",
                          source: "Monster Codex, Blood of the Night", isPremium: true),

                    // // MARK: - Monster Codex, Classic Horrors Revisited
        )
        try await db.insertFeat(
        .make("Warren Digger",
                          featType: "General",
                          prerequisites: "Ghoul.",
                          benefit: "You gain a burrow speed of 10 feet through earth, sand, or soil.",
                          special: "You can gain this feat multiple times. Each time you take it, add 10 feet to your burrow speed, up to a maximum of your base land speed.",
                          summary: "You gain a burrow speed of 10 feet through earth, sand, or soil.",
                          source: "Monster Codex, Classic Horrors Revisited", isPremium: true),

                    // // MARK: - Monster Codex, Classic Monsters Revisited
        )
        try await db.insertFeat(
        .make("Night Stalker",
                          featType: "General",
                          prerequisites: "Skill Focus (Stealth), darkvision, half-ogre or ogre, size Large or larger.",
                          benefit: "While in areas of dim lighting or natural darkness, you ignore all size penalties on Stealth checks and gain a +2 bonus on attack rolls against flat-footed enemies.",
                          summary: "While in areas of dim lighting or natural darkness, you ignore all size penalties on Stealth checks and gain a +2 bonus on attack rolls against flat-footed enemies.",
                          source: "Monster Codex, Classic Monsters Revisited", isPremium: true),

                    // // MARK: - Monster Codex, Giants Revisited
        )
        try await db.insertFeat(
        .make("Smoking Boulder",
                          featType: "General",
                          prerequisites: "Base attack bonus +11, heated rock special ability.",
                          benefit: "When you throw a rock as part of an attack action and hit your target, you can cause the boulder to emit a 10-foot-radius spread of heavy smoke. The smoke lasts for 1d4 rounds. (See page 444 of the Pathfinder RPG Core Rulebook for rules on smoke effects.)",
                          summary: "When you throw a rock as part of an attack action and hit your target, you can cause the boulder to emit a 10-foot-radius spread of heavy smoke. The smoke lasts for 1d4 rounds.",
                          source: "Monster Codex, Giants Revisited", isPremium: true),

                    // // MARK: - Monster Hunter's Handbook
        )
        try await db.insertFeat(
        .make("Anatomical Savant (Combat)",
                          featType: "General",
                          prerequisites: "Weapon Focus, base attack bonus +12.",
                          benefit: "Choose one weapon with which you have the Weapon Focus feat. When you strike an opponent that has a chance of negating critical hits or sneak attacks, such as from the fortification armor special ability, reduce that chance by 25%. Treat creatures that are normally immune to critical hits and sneak attacks as instead having a 75% chance to negate the critical hit or sneak attack, taking only the attack’s normal damage.",
                          special: "You can take this feat multiple times. Each time you take the feat, it applies to a different weapon.",
                          summary: "Choose one weapon with which you have the Weapon Focus feat. When you strike an opponent that has a chance of negating critical hits or sneak attacks, such as from the fortification armor special…",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Baneful Judgment (Combat)",
                          featType: "General",
                          prerequisites: "BaneAPG class feature, judgmentAPG class feature, monster loreAPG class feature.",
                          benefit: "You can declare a specialized judgment against a creature as a swift action. When pronouncing this judgment, you attempt a Knowledge check to identify the creature, or refer to your previous result if you’ve already identified the creature. If you succeed at the check or have already identified the creature, you can spend 1 round of bane and choose one judgment other than the healing judgment. You gain the benefits of this judgment against that creature for only 1 round plus 1 additional round for every 5 by which you exceeded the DC to identify the target. Subsequent uses of this judgment do not stack with this ability. A creature cannot be the target of this ability again for 24 hours.",
                          summary: "You can declare a specialized judgment against a creature as a swift action.",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Bull-Catcher Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Dex 13, Improved Grapple, Improved Unarmed Strike.",
                          benefit: "As a standard action, you can ready yourself against oncoming foes. Until the start of your next turn, if a creature moves at least 10 feet in your direction and enters a square you threaten, you can attempt a grapple combat maneuver against that creature. If the creature is charging, you gain a +2 bonus on the check. A creature you grapple with this style can make only a single natural attack after its movement or charge, even if it has the pounce ability. You can make only one grapple attempt in this manner per round.",
                          summary: "As a standard action, you can ready yourself against oncoming foes.",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Bull-Catcher Toss (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Bull-Catcher Style, Improved Grapple, Improved Unarmed Strike; base attack bonus +8, brawlerACG level 4th, or monk level 4th.",
                          benefit: "When you successfully grapple a creature with the Bull-Catcher Style feat, you can immediately move that creature into any square you threaten. After it is placed, you can break your grapple as an immediate action to move the creature an additional 5 feet in any direction. You can’t use this maneuver to move a foe into a space that is intrinsically dangerous or unstable, such as a pit, wall of fire, or midair.",
                          summary: "When you successfully grapple a creature with the Bull-Catcher Style feat, you can immediately move that creature into any square you threaten.",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Bull-Catcher Wrangler (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Bull-Catcher Style, Bull-Catcher Toss, Improved Grapple, Improved Unarmed Strike; base attack bonus +12, brawlerACG level 8th, or monk level 8th.",
                          benefit: "When a creature is charging you, and you successfully grapple it with the Bull-Catcher Style feat, you can immediately move it as per the Bull-Catcher Toss feat. Once the creature is moved, you can break your grapple as an immediate action. If you do, select another creature in the repositioned target’s threatened area. That creature becomes the new target of the initial charge attack.",
                          summary: "When a creature is charging you, and you successfully grapple it with the Bull-Catcher Style feat, you can immediately move it as per the Bull-Catcher Toss feat.",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Claw Wrench (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Improved Grapple, Improved Unarmed Strike.",
                          benefit: "As a standard action, you can attempt a grapple combat maneuver with a –5 penalty against a creature that is currently grappling another creature via its grab special ability. If you succeed, you pry open the creature’s grasp, releasing any creatures it had grappled. Additionally, you can ready an action to trigger if a creature attempts a bite attack against you. When the readied action triggers, you can attempt a grapple combat maneuver with a +2 bonus. If you succeed, you grapple the creature and cause the bite attack to miss. As long as you maintain the grapple, the creature can’t use its bite attack.",
                          summary: "As a standard action, you can attempt a grapple combat maneuver with a –5 penalty against a creature that is currently grappling another creature via its grab special ability.",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Creature Focus",
                          featType: "General",
                          prerequisites: "No levels in a class that grants the favored enemy class feature.",
                          benefit: "Choose a creature type from the ranger favored enemies table (Pathfinder RPG Core Rulebook 64) except for humanoid or monstrous humanoid. You gain a +2 bonus on Perception checks, Survival checks, and weapon damage rolls against creatures of the selected type. You can attempt Knowledge skill checks untrained when attempting to identify such creatures.",
                          special: "This feat counts as the favored enemy class feature for the purpose of meeting feat prerequisites. If another ability references your favored enemy bonus for the creature type selected, you treat your favored enemy bonus as +2. If you later gain the favored enemy class feature, you can replace this feat with a different feat for which you qualify and whose prerequisites include the favored enemy class feature. You can gain this feat multiple times. Its effects do not stack. Each time you take the feat, it applies to a different creature type.",
                          summary: "Choose a creature type from the ranger favored enemies table (Pathfinder RPG Core Rulebook 64) except for humanoid or monstrous humanoid.",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dimensional Step Up",
                          featType: "General",
                          prerequisites: "Dimensional Agility UC, Step Up, base attack bonus +12, abundant step class feature or ability to cast dimension door.",
                          benefit: "Once per day, when an adjacent foe moves using a teleportation spell, spell-like ability, or similar ability (including effects like a shadowdancer’s shadow jump ability), you can follow the creature as an immediate action. This ability has no range limit; you simply appear adjacent to the target wherever its destination happens to be. You cannot use this ability to travel to another plane. This feat does not provide you any means of returning, nor does it grant you knowledge of where your foe is going.",
                          summary: "Once per day, when an adjacent foe moves using a teleportation spell, spell-like ability, or similar ability (including effects like a shadowdancer’s shadow jump ability), you can follow the creature…",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Expanded Hunter Tactics (Combat)",
                          featType: "General",
                          prerequisites: "Hunter tacticsACG class feature.",
                          benefit: "As a move action, you can grant a teamwork feat you know to a single ally within 30 feet who can see and hear you. The selected ally gains the benefits of this bonus feat for 1 round plus 1 additional round for every 2 character levels you have, but only while the ally is adjacent to you or your animal companion. A given ally can benefit from this feat only once per day.",
                          summary: "As a move action, you can grant a teamwork feat you know to a single ally within 30 feet who can see and hear you.",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Focused Aberration Expertise (Combat)",
                          featType: "General",
                          prerequisites: "Favored enemy (aberration) class feature.",
                          benefit: "Choose either Fortitude saves against transformation effects (including transmutation spells and spell-like abilities) or Will saves against mind-affecting effects. You gain a bonus on the selected saving throw equal to half your favored enemy (aberration) bonus. Against aberrations’ spells and abilities, you gain this bonus on Fortitude saves against transmutation effects and on Will saves against mind-affecting effects.",
                          summary: "Choose either Fortitude saves against transformation effects (including transmutation spells and spell-like abilities) or Will saves against mind-affecting effects.",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Focused Animal Expertise (Combat)",
                          featType: "General",
                          prerequisites: "Favored enemy (animal) class feature.",
                          benefit: "You gain a bonus on Stealth checks equal to half your favored enemy (animal) bonus. Against animals, this bonus is equal to your full favored enemy bonus.",
                          summary: "You gain a bonus on Stealth checks equal to half your favored enemy (animal) bonus. Against animals, this bonus is equal to your full favored enemy bonus.",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Focused Construct Expertise (Combat)",
                          featType: "General",
                          prerequisites: "Favored enemy (construct) class feature.",
                          benefit: "Your weapon attacks ignore a number of points of damage reduction or hardness equal to half your favored enemy (construct) bonus. This feat allows you to only ignore damage reduction that is normally bypassed by adamantine, bludgeoning, piercing, and slashing weapons. Against constructs, the amount of damage reduction and hardness you ignore is equal to your full favored enemy bonus.",
                          summary: "Your weapon attacks ignore a number of points of damage reduction or hardness equal to half your favored enemy (construct) bonus.",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Focused Dragon Expertise (Combat)",
                          featType: "General",
                          prerequisites: "Favored enemy (dragon) class feature.",
                          benefit: "You gain a bonus on saving throws against breath weapons and fear effects equal to half your favored enemy (dragon) bonus. Whenever you succeed at a Reflex saving throw against a dragon’s extraordinary or supernatural ability that would deal half damage, you instead take no damage. If you already have the evasion class feature, you instead gain an inquisitor’s stalwart ability (Pathfinder RPG Advanced Player’s Guide 41) against dragons’ extraordinary and supernatural abilities.",
                          summary: "You gain a bonus on saving throws against breath weapons and fear effects equal to half your favored enemy (dragon) bonus.",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Focused Fey Expertise (Combat)",
                          featType: "General",
                          prerequisites: "Favored enemy (fey) class feature.",
                          benefit: "You gain a bonus on attack rolls to confirm critical hits equal to half your favored enemy (fey) bonus. You treat your weapon attacks against fey as cold iron for the purpose of overcoming damage reduction and regeneration.",
                          summary: "You gain a bonus on attack rolls to confirm critical hits equal to half your favored enemy (fey) bonus.",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Focused Magical Beast Expertise (Combat)",
                          featType: "General",
                          prerequisites: "Favored enemy (magical beast) class feature.",
                          benefit: "If a creature makes three or more attacks with natural weapons against you during its turn, you gain partial cover against the third and subsequent natural attacks from that creature. If the creature makes five or more attacks against you with natural weapons, you gain cover (instead of partial cover) against the fifth and subsequent natural attacks. If the attacker is a magical beast, reduce by one the number of natural attacks it must make in order for you to gain cover or partial cover.",
                          summary: "If a creature makes three or more attacks with natural weapons against you during its turn, you gain partial cover against the third and subsequent natural attacks from that creature.",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Focused Ooze Expertise (Combat)",
                          featType: "General",
                          prerequisites: "Favored enemy (ooze) class feature.",
                          benefit: "You gain a bonus to your CMD equal to half your favored enemy (ooze) bonus. You also gain acid resistance equal to half your favored enemy (ooze) bonus. Against oozes, you instead apply your full favored enemy (ooze) bonus for both benefits.",
                          summary: "You gain a bonus to your CMD equal to half your favored enemy (ooze) bonus. You also gain acid resistance equal to half your favored enemy (ooze) bonus.",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Focused Outsider Expertise (Combat)",
                          featType: "General",
                          prerequisites: "Favored enemy (outsider) class feature.",
                          benefit: "Your weapon attacks ignore a number of points of damage reduction equal to half your favored enemy (outsider [any one]) bonus. This feat allows you to ignore only damage reduction that is normally bypassed by chaotic-, evil-, good-, or lawful-aligned weapons. Against outsiders that match your favored enemy subtype, the amount of damage reduction and hardness you ignore is equal to your full favored class bonus.",
                          summary: "Your weapon attacks ignore a number of points of damage reduction equal to half your favored enemy (outsider [any one]) bonus.",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Focused Plant Expertise (Combat)",
                          featType: "General",
                          prerequisites: "Favored enemy (plant) class feature.",
                          benefit: "You gain a bonus equal to half your favored enemy (plant) bonus on Reflex saves to avoid being entangled and to your CMD whenever an opponent attempts to grapple you. Your weapons’ critical hit multipliers increase by one against creatures with the plant type.",
                          summary: "You gain a bonus equal to half your favored enemy (plant) bonus on Reflex saves to avoid being entangled and to your CMD whenever an opponent attempts to grapple you.",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Focused Target (Combat)",
                          featType: "General",
                          prerequisites: "Studied targetACG class feature (second studied target).",
                          benefit: "When you study a target, you can reduce the number of additional targets you can maintain as a studied target. For each target reduced in this way, you increase your studied target bonus by 1 for either attack rolls, damage rolls, skill checks, or the DCs of your abilities. Each such increase must be applied to a different category (attack rolls, damage rolls, skill checks, or DCs). You can end the effects of this feat as a free action.",
                          summary: "When you study a target, you can reduce the number of additional targets you can maintain as a studied target.",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Focused Undead Expertise (Combat)",
                          featType: "General",
                          prerequisites: "Favored enemy (undead) class feature.",
                          benefit: "You gain a bonus equal to half your favored enemy (undead) bonus on saving throws against ability damage, ability drain, energy drain, and negative energy effects. Once per day, when an undead creature’s natural attack against you deals ability damage, deals ability drain, or bestows 1 or more negative levels, you can negate the damage, drain, or negative levels as an immediate action.",
                          summary: "You gain a bonus equal to half your favored enemy (undead) bonus on saving throws against ability damage, ability drain, energy drain, and negative energy effects.",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Focused Vermin Expertise (Combat)",
                          featType: "General",
                          prerequisites: "Favored enemy (vermin) class feature.",
                          benefit: "You gain DR/— equal to half your favored enemy (vermin) bonus against vermin and creatures with the swarm subtype. When attempting Fortitude saves against a swarm’s distraction ability, you gain a bonus on the save equal to the damage prevented by this feat. Against vermin with the swarm subtype, the amount of damage reduction is equal to your full favored enemy (vermin) bonus. This damage reduction does not stack with that from other sources.",
                          summary: "You gain DR/— equal to half your favored enemy (vermin) bonus against vermin and creatures with the swarm subtype.",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Grisly Ornament (Item Creation)",
                          featType: "General",
                          prerequisites: "Harvest Parts.",
                          benefit: "You can attempt a Craft or Heal check to craft a special type of trophy called an ornament from part of a creature that’s been dead for less than an hour. You take a –4 penalty on this check if you or an ally didn’t slay the creature. You can craft one ornament per character level per day. Each corpse provides enough material for one ornament plus one additional ornament per size category above Medium. You can wear one ornament in each magic item slot not already occupied by another item. When you craft an ornament, you choose whether it affects Armor Class, attack rolls, CMB, CMD, saving throws, or skill checks. The ornament provides a morale bonus equal to the monster’s CR divided by 4 (round down, minimum 1) to the selected statistic against creatures of the same creature type as the source of the ornament. This bonus increases by 1 against creatures of the exact same variety (so a red dragon’s talon provides the increased bonus against red dragons but not all dragons). An ornament remains effective for 1 day, plus 1 additional day for every 5 by which you exceed the DC to craft it. You can give ornaments to others, but gifted ornaments have a morale bonus equal to the monster’s CR divided by 6 (round down, minimum 0) and remain effective for only 24 hours.",
                          summary: "You can attempt a Craft or Heal check to craft a special type of trophy called an ornament from part of a creature that’s been dead for less than an hour.",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Harvest Parts (Item Creation)",
                          featType: "General",
                          prerequisites: "Craft (any) 1 rank or Heal 1 rank.",
                          benefit: "You can attempt a Craft or Heal check, as though making a trophy, to gain usable resources from a creature that has been dead for less than an hour. Only creatures with a CR of 1 or higher yield usable parts. The value of the parts you harvest is equal to the creature’s CR squared × 10 gp (increases to CR derived from class levels or templates do not contribute to this value). This value can be used only as raw materials for crafting alchemical, masterwork, mundane, or magic items. Items crafted using creature parts must be made of a suitable material—typically bone or hide, with metal only in extraordinary cases. No more than a quarter of a crafted item’s cost can be supplied with harvested parts. Harvested parts remain usable for 2 days before they rot (unless used to craft objects or somehow preserved). Creature parts that are harvested in this manner can’t be bought or sold in most settlements.",
                          summary: "You can attempt a Craft or Heal check, as though making a trophy, to gain usable resources from a creature that has been dead for less than an hour.",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Punishing Step (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Dodge, Punishing Step, base attack bonus +8.",
                          benefit: "Your bonus to AC from the Dodge feat increases to +2 against charge attacks. When a creature charges you and misses with its attack, it loses its Dexterity bonus to AC against the next melee attack you make against it before the end of your next turn. If a creature misses with multiple attacks (such as when using the pounce ability), you can make one such attack against the creature’s flat-footed AC before the end of your next turn for each of that creature’s attacks that missed you.",
                          summary: "Your bonus to AC from the Dodge feat increases to +2 against charge attacks.",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Knowledgeable Spellcaster",
                          featType: "General",
                          prerequisites: "Knowledge (arcana, dungeoneering, local, nature, planes, or religion) 5 ranks, caster level 7th.",
                          benefit: "When you select this feat, choose one Knowledge skill in which you have at least 5 ranks. When you succeed at a check with that Knowledge skill to identify a creature’s abilities and weaknesses, you can learn one less piece of information in order to gain a +3 bonus on caster level checks to overcome that creature’s spell resistance (if any). If you have 10 or more ranks in the selected Knowledge skill, you can learn two fewer pieces of information to increase this bonus to +5.",
                          normal: "You can take this feat multiple times. Each time you take this feat, you must select a different Knowledge skill.",
                          summary: "When you select this feat, choose one Knowledge skill in which you have at least 5 ranks.",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Maze Expert",
                          featType: "General",
                          prerequisites: "Skill Focus (Survival), Survival 5 ranks.",
                          benefit: "You gain a +4 bonus on Survival checks to avoid becoming lost and to determine whether you are lost. You also gain a +4 bonus on Intelligence checks to navigate mazes, including to escape a maze spell. Once per day, you can use your intuition to determine whether traveling a particular direction from a fork in the road (or other junction) might be productive or dangerous. This functions like the augury spell, except it provides weal or woe based on traveling in a particular direction.",
                          summary: "You gain a +4 bonus on Survival checks to avoid becoming lost and to determine whether you are lost.",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Monster Spotter",
                          featType: "General",
                          prerequisites: "Skill Focus (Knowledge [any]), Knowledge (any) 3 ranks.",
                          benefit: "You can substitute a Knowledge skill for opposed Perception checks against creatures’ Disguise and Stealth checks, and for Survival checks to track creatures. You must have 3 ranks in the Knowledge skill that corresponds to the creature’s type (Pathfinder RPG Core Rulebook 99–100).",
                          summary: "You can substitute a Knowledge skill for opposed Perception checks against creatures’ Disguise and Stealth checks, and for Survival checks to track creatures.",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Monstrous Crafter (Item Creation)",
                          featType: "General",
                          prerequisites: "Craft Wondrous Item, Grisly Ornament, Harvest Parts.",
                          benefit: "Whenever you use the Grisly Ornament feat, you are able to permanently integrate one ornament you have crafted using the harvested creature parts into a wondrous item. The ornament grants no ongoing benefits, but once per day you can activate an integrated ornament as a free action to gain its full benefits for 1 minute. You can integrate an ornament into a wondrous item (or replace an item’s existing ornament) by spending 8 hours of work and 100 gp × the creature’s CR.",
                          summary: "Whenever you use the Grisly Ornament feat, you are able to permanently integrate one ornament you have crafted using the harvested creature parts into a wondrous item.",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Monstrous Disguise",
                          featType: "General",
                          prerequisites: "Disguise 5 ranks, Knowledge (nature) 5 ranks.",
                          benefit: "You can use the Disguise skill to emulate creatures of the monstrous humanoid type, at a –5 penalty. Creating a monstrous humanoid disguise takes 1d3 hours.",
                          summary: "You can use the Disguise skill to emulate creatures of the monstrous humanoid type, at a –5 penalty. Creating a monstrous humanoid disguise takes 1d3 hours.",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Monstrous Masquerade",
                          featType: "General",
                          prerequisites: "Monstrous Disguise, Disguise 9 ranks, Knowledge (nature) 9 ranks.",
                          benefit: "When you use the Monstrous Disguise feat to assume the shape of a monstrous humanoid, you can gain a rudimentary version of one of that creature’s abilities selected from the following list: climb 10 feet, fly 20 feet (clumsy maneuverability), swim 20 feet, damage reduction 3/magic, or resistance 5 to one energy type. Preparing a disguise in this way takes 1 additional hour and costs an extra 500 gp. The bonus ability granted by this feat has a 25% chance to cease functioning every hour after you apply the disguise. This disguise automatically falls apart after 8 hours.",
                          summary: "When you use the Monstrous Disguise feat to assume the shape of a monstrous humanoid, you can gain a rudimentary version of one of that creature’s abilities selected from the following list: climb 10…",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Needle in a Haystack",
                          featType: "General",
                          prerequisites: "Skill Focus (Perception), Perception 3 ranks.",
                          benefit: "You can use Perception (rather than Survival) to follow tracks. After you track a creature using the Perception skill, you gain a +2 insight bonus on Perception checks to avoid being surprised by that creature for 1 hour. If you have 10 or more ranks in Perception, this bonus increases to +4.",
                          summary: "You can use Perception (rather than Survival) to follow tracks.",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Pacify Animal",
                          featType: "General",
                          prerequisites: "Wild empathy class feature.",
                          benefit: "As a full-round action, you attempt to mollify an animal or magical beast with an Intelligence score of 1 or 2 and an attitude of hostile toward you or your allies. You attempt a wild empathy check (DC = 10 + the target’s Hit Dice + the target’s Charisma modifier). If you succeed, the target’s attitude toward you and your allies becomes indifferent for 1 minute, and it does not attack during this time. If the target is attacked during this time or if the target can see you or your allies after 1 minute, it becomes hostile again. A creature can be affected by this pacification attempt only once in a 24-hour period.",
                          special: "Animal companions and creatures under magical compulsion are harder to pacify; the DC for such creatures equals 15 + the target’s Hit Dice + the target’s Charisma modifier. An animal companion also applies its bonus on Will saves from the devotion ability to this DC, and attacking the animal’s master also breaks this effect. An animal companion’s master can direct the animal to attack again, but the DC of this Handle Animal check is increased by your wild empathy modifier.",
                          summary: "As a full-round action, you attempt to mollify an animal or magical beast with an Intelligence score of 1 or 2 and an attitude of hostile toward you or your allies.",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Punishing Step (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Dodge.",
                          benefit: "Your bonus to AC from the Dodge feat increases to +2 when calculating your CMD. When a creature attempts a combat maneuver against you and fails, you gain a +2 circumstance bonus on attack rolls against that creature until the end of your next turn.",
                          summary: "Your bonus to AC from the Dodge feat increases to +2 when calculating your CMD.",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Resisting Grappler (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13.",
                          benefit: "When a creature hits you with a melee attack and attempts to use the grab ability, it provokes an attack of opportunity from you unless it has the Improved Grapple feat. If you hit the opponent with your attack, treat the damage you deal as 5 higher when calculating the penalty on the attacker’s combat maneuver check to grapple you.",
                          normal: "Creatures using the grab ability does not provoke attacks of opportunity.",
                          summary: "When a creature hits you with a melee attack and attempts to use the grab ability, it provokes an attack of opportunity from you unless it has the Improved Grapple feat.",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shared Quarry (Combat)",
                          featType: "General",
                          prerequisites: "Hunter’s bond class feature, quarry class feature.",
                          benefit: "Allies sharing your favored enemy bonuses from hunter’s bond gain an additional benefit against a creature you’ve denoted as your quarry. Affected allies gain a +1 insight bonus on attack rolls against your quarry; this bonus increases to +4 on attack rolls to confirm critical hits against your quarry. If your hunter’s bond is with an animal companion, your companion gains the full benefits of your quarry class feature. when you denote a quarry.",
                          summary: "Allies sharing your favored enemy bonuses from hunter’s bond gain an additional benefit against a creature you’ve denoted as your quarry.",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stone to Flesh Savant",
                          featType: "General",
                          prerequisites: "Paladin level 12th, lay on hands class feature, mercy class feature.",
                          benefit: "You gain a unique mercy, which aids victims of petrification. Whenever you use your lay on hands ability to heal damage, you can emulate stone to flesh on the target, using your paladin level as your caster level. This functions only on a creature that has been petrified, and it has no effect on other stone.",
                          summary: "You gain a unique mercy, which aids victims of petrification. Whenever you use your lay on hands ability to heal damage, you can emulate stone to flesh on the target, using your paladin level as your…",
                          source: "Monster Hunter's Handbook", isPremium: true),

                    // // MARK: - Monster Summoner's Handbook
        )
        try await db.insertFeat(
        .make("Augment Calling",
                          featType: "General",
                          prerequisites: "Spell Focus (conjuration); ability to cast lesser planar ally, lesser planar binding, or a higher-level version of these spells.",
                          benefit: "Choose a subtype of outsider, such as angel or elemental. When using the planar ally or planar binding spells, you can call 2 additional Hit Dice of outsiders with the chosen subtype. You also gain an additional benefit depending on what spell you are casting. When you call an outsider of the chosen subtype with planar ally spells, you reduce the price it demands for service by 25%, to a minimum of 1,000 gp. When you bind an outsider of the chosen subtype with planar binding spells and request a service of the outsider, you gain a +2 bonus on Charisma checks to do so.",
                          special: "You can gain this feat multiple times. Its effects do not stack. Each time you take the feat, it applies to a different subtype of outsider.",
                          summary: "Choose a subtype of outsider, such as angel or elemental. When using the planar ally or planar binding spells, you can call 2 additional Hit Dice of outsiders with the chosen subtype.",
                          source: "Monster Summoner's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dimensional Awareness (Combat)",
                          featType: "General",
                          prerequisites: "Arcane Strike or Disruptive; Banishing Critical; Combat Reflexes; Spellcraft 8 ranks; arcane pool class feature.",
                          benefit: "If a summoned or called creature materializes in a space you threaten, you can make an attack of opportunity against that creature before it acts, gaining a +2 circumstance bonus on the attack roll if you successfully identified the spell used to summon or call that creature.",
                          normal: "A summoned or called creature appears instantly when the spell used to conjure it is completed, allowing for no attack of opportunity against the creature.",
                          summary: "If a summoned or called creature materializes in a space you threaten, you can make an attack of opportunity against that creature before it acts, gaining a +2 circumstance bonus on the attack roll…",
                          source: "Monster Summoner's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dimensional Disruption (Combat)",
                          featType: "General",
                          prerequisites: "Arcane Strike or Disruptive; Banishing Critical; Combat Reflexes; Dimensional Awareness; Spellcraft 8 ranks; arcane pool class feature.",
                          benefit: "When you use Dimensional Awareness to make an attack of opportunity against a creature being summoned or called into a square you threaten, you can additionally use an immediate action to attempt to send the creature back to its home plane. Attempt a Spellcraft check (DC = 15 + the creature’s CR [minimum 1] + the spell level of the spell that summoned the creature). If you succeed, the creature does not get to act and is immediately sent back to its home plane.",
                          normal: "A summoning or calling spell can be disrupted only by a failed concentration check or by countering the spell.",
                          summary: "When you use Dimensional Awareness to make an attack of opportunity against a creature being summoned or called into a square you threaten, you can additionally use an immediate action to attempt to…",
                          source: "Monster Summoner's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dispel Focus",
                          featType: "General",
                          prerequisites: "Ability to cast dispel magic.",
                          benefit: "Whenever you attempt a dispel check based on your caster level, you gain a +2 bonus on the check.",
                          summary: "Whenever you attempt a dispel check based on your caster level, you gain a +2 bonus on the check.",
                          source: "Monster Summoner's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Expanded Summon Monster",
                          featType: "General",
                          prerequisites: "Ability to cast a summon monster spell.",
                          benefit: "For each spell level 1–9, select two creatures from Table 2 below. You then add these creatures to the summon monster table of the same level, allowing you to summon them with the appropriate summon monster spell. Once made, these choices can’t be changed.",
                          special: "You can take this feat multiple times. Each time you do, you can select two more monsters from the table below to add to the summon monster table of the same level. 1st Level Source Antelope* (herd animal) Bestiary 3 147 Baboon* (primate) Bestiary 2 212 Badger* Bestiary 2 40 Great horned owl* Bestiary 3 213 Kangaroo* (marsupial) Bestiary 3 191 Snapping turtle* Bestiary 2 273 Stingray* Bestiary 2 232 Thylacine* (marsupial) Bestiary 3 191 Trumpeter swan* Bestiary 4 257 Vulture* Bestiary 3 284 2nd Level Source Camel* (herd animal) Bestiary 2 154 Compsognathus* (dinosaur) Bestiary 2 90 Dimorphodon* (dinosaur) Bestiary 4 58 Gar* Bestiary 2 128 Giant gecko* (lizard) Bestiary 3 186 Giant tortoise* Bestiary 4 263 Giant weasel* Bestiary 4 275 Manta ray* Bestiary 2 232 Ram* (herd animal) Bestiary 2 154 Stag* (herd animal) Bestiary 4 150 3rd Level Source Arbiter (inevitable) Bestiary 2 162 Augur (kyton) Bestiary 3 171 Axe beak* Bestiary 3 29 Azer Bestiary 2 39 Bull shark* Bestiary 4 241 Cacodaemon (daemon) Bestiary 2 64 Cassisian (angel) Bestiary 2 26 Cythnigot (qlippoth) Bestiary 2 221 Dire badger* Bestiary 2 40 Doru (div) Bestiary 3 86 Foo dog Bestiary 3 120 Giant porcupine* Bestiary 3 222 Lyrakien (azata) Bestiary 2 38 Paracletus (aeon) Bestiary 2 11 Silvanshee (agathion) Bestiary 2 21 Thoqqua Bestiary 2 262 Tripurasura (asura) Bestiary 3 26 Velociraptor (dinosaur) Bestiary 4 59 Voidworm (protean) Bestiary 2 217 4th Level Source Crysmal Bestiary 2 61 Dimetrodon* (dinosaur) Bestiary 3 78 Dire weasel* Bestiary 4 275 D’ziriak Bestiary 2 113 Foo lion Bestiary 3 120 Giant seahorse* Bestiary 4 234 Giant skunk* Bestiary 3 247 Giant vulture* Bestiary 3 284 Giraffe* (herd animal) Bestiary 4 150 Great white shark* Bestiary 4 241 Howler Bestiary 2 159 Magmin Bestiary 3 189 Megaloceros* (megafauna) Bestiary 2 187 Pachycephalosaurus* (dinosaur) Bestiary 3 79 Parasaurolophus* (dinosaur) Bestiary 2 91 Schir (demon) Bestiary 3 74 Vulnudaemon (daemon) Bestiary 3 63 5th Level Source Achaierai Bestiary 2 7 Archelon (megafauna) Bestiary 3 192 Belker Bestiary 2 45 Cerberi Bestiary 3 51 Emperor cobra* (snake) Bestiary 2 252 Giant gar* Bestiary 2 128 Glyptodon* (megafauna) Bestiary 2 186 Hippopotamus* Bestiary 2 157 Host devil Bestiary 4 53 Hypnalis Bestiary 4 154 Iguanodon* (dinosaur) Bestiary 3 78 Incubus (demon) Bestiary 3 73 Ceustodaemon (daemon) Bestiary 2 65 Megatherium* (megafauna) Bestiary 2 187 Mudlord Bestiary 4 195 Ostiarius (kyton) Bestiary 4 176 Shadow mastiff Bestiary 3 241 Styracosaurus (dinosaur) Bestiary 4 59 Tojanida Bestiary 3 270 Vulpinal (agathion) Bestiary 2 22 6th Level Source Adhukait (asura) Bestiary 3 22 Allosaurus* (dinosaur) Bestiary 2 90 Animate dream Bestiary 2 29 Arsinoitherium* (megafauna) Bestiary 2 186 Axiomite Bestiary 2 36 Baluchitherium* (megafauna) Bestiary 3 192 Hellcat Bestiary 2 153 Hydrodaemon (daemon) Bestiary 2 67 Immense tortoise* Bestiary 4 263 Legion archon Bestiary 3 19 Megalania* (megafauna) Bestiary 3 193 Mihstu Bestiary 2 190 Naunet (protean) Bestiary 2 216 Pairaka (div) Bestiary 3 88 Shoggti (qlippoth) Bestiary 2 225 Theletos (aeon) Bestiary 2 14 Tylosaurus (dinosaur) Bestiary 2 91 7th Level Source Avoral (agathion) Bestiary 2 16 Behemoth hippopotamus* Bestiary 2 157 Contract devil Bestiary 3 76 Ghawwas (div) Bestiary 3 87 Giant anaconda* (snake) Bestiary 2 252 Giant snapping turtle* Bestiary 2 273 Kalavakus (demon) Bestiary 2 78 Leukodaemon (daemon) Bestiary 2 68 Movanic deva (angel) Bestiary 2 28 Nyogoth (qlippoth) Bestiary 2 224 Piscodaemon (daemon) Bestiary 2 72 Sacristan (kyton) Bestiary 4 177 Shield archon Bestiary 2 31 Upasunda (asura) Bestiary 3 27 Whale* Bestiary 2 282 8th Level Source Aghasura (asura) Bestiary 3 23 Baregara Bestiary 3 34 Basilosaurus* (megafauna) Bestiary 3 193 Chernobue (qlippoth) Bestiary 2 220 Coloxus (demon) Bestiary 3 72 Diplodocus* (dinosaur) Bestiary 4 58 Interlocutor (kyton) Bestiary 3 174 Kolyarut (inevitable) Bestiary 2 163 Leonal (agathion) Bestiary 2 20 Meladaemon (daemon) Bestiary 2 69 Monadic deva (angel) Bestiary 2 27 Omox (demon) Bestiary 2 79 Shira (div) Bestiary 3 90 Spinosaurus* (dinosaur) Bestiary 3 79 9th Level Source Augnagar (qlippoth) Bestiary 2 219 Couatl Bestiary 49 Great white whale* Bestiary 2 282 Sepid (div) Bestiary 3 89 Storm giant Bestiary 152 Tarry demodand Bestiary 3 71 Valkyrie Bestiary 3 277* This creature is summoned with the celestial template if you are good and the fiendish template if you are evil. If you are neutral, you can choose which template to apply to the creature. This summoned creature has an alignment that matches yours, regardless of its usual alignment. Summoning this creature makes the summoning spell’s type match your alignment.",
                          summary: "For each spell level 1–9, select two creatures from Table 2 below.",
                          source: "Monster Summoner's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Dispel Focus",
                          featType: "General",
                          prerequisites: "Dispel Focus, ability to cast dispel magic.",
                          benefit: "Whenever you attempt a dispel check based on your caster level, you gain a +2 bonus to the check. This stacks with the bonus from Dispel Focus.",
                          summary: "Whenever you attempt a dispel check based on your caster level, you gain a +2 bonus to the check. This stacks with the bonus from Dispel Focus.",
                          source: "Monster Summoner's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Planar Focus",
                          featType: "General",
                          prerequisites: "Knowledge (planes) 5 ranks, animal focusACG class feature.",
                          benefit: "When you use your animal focus class feature, you can choose any of the following new aspects unless they conflict with your alignment. Air: You gain a constant feather fall effect. At 10th level, you instead gain a constant levitate effect. Chaotic: Your form shifts subtly, making it difficult for others to aim precise attacks against you. You gain a 25% chance to negate extra damage from critical hits and precision damage from attacks made against you (such as from sneak attacks). Only chaotic characters can use this planar focus. Cold: Creatures that attack you with natural attacks or melee weapons take 1d4 points of cold damage for every 2 class levels you possess. Earth: You gain a burrow speed equal to your base land speed, and a +2 enhancement bonus to your natural armor. Evil: You gain a +1 profane bonus to AC and on saves against attacks made and effects created by good outsiders. This bonus increases to +2 at 10th level. Only evil characters can use this planar focus. Fire: Your natural attacks and melee weapons deal 1d6 points of fire damage for every 4 class levels you possess. Good: You gain a +1 sacred bonus to AC and on saves against attacks made or effects created by evil outsiders. This bonus increases to +2 at 10th level. Only good characters can use this planar focus. Lawful: You can automatically succeed at any saving throw against a polymorph spell or effect. Only lawful characters can use this planar focus. Shadow: You gain a +5 bonus on Stealth and Sleight of Hand checks. Water: You gain a 30-foot swim speed and can breathe water as well as air.",
                          summary: "When you use your animal focus class feature, you can choose any of the following new aspects unless they conflict with your alignment. Air: You gain a constant feather fall effect.",
                          source: "Monster Summoner's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Scouting Summons (Metamagic)",
                          featType: "General",
                          prerequisites: "Spell Focus (conjuration), ability to cast magic jar.",
                          benefit: "When casting a conjuration (summoning) spell that summons a single creature, you can possess the creature as per magic jar (but with no receptacle necessary). If the creature takes damage while you possess it, you must succeed at a concentration check (DC equal to the amount of damage taken) or be ejected from the creature immediately. If the creature takes enough damage to reduce it to 0 hit points or fewer, you are immediately ejected from the creature and take an amount of damage equal to double the level of the spell slot used to summon that creature. A scouting summons spell takes up a spell slot 2 levels higher than the spell’s actual level.",
                          summary: "When casting a conjuration (summoning) spell that summons a single creature, you can possess the creature as per magic jar (but with no receptacle necessary).",
                          source: "Monster Summoner's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Solid Shadows (Metamagic)",
                          featType: "General",
                          prerequisites: "Spell Focus (illusion).",
                          benefit: "When casting greater shadow conjuration, greater shadow evocation, shadow conjuration, or shadow evocation (and, at the GM’s discretion, any similar spell with the shadow descriptor that mimics a spell of another school), that spell is 20% more real then normal. A solid shadows spell takes up a spell slot 1 level higher than the spell’s actual level.",
                          summary: "When casting greater shadow conjuration, greater shadow evocation, shadow conjuration, or shadow evocation (and, at the GM’s discretion, any similar spell with the shadow descriptor that mimics a…",
                          source: "Monster Summoner's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Summon Guardian Spirit",
                          featType: "General",
                          prerequisites: "Ability to cast summon monster III or summon nature’s ally III.",
                          benefit: "Select one creature that qualifies to be an improved familiar, and apply the guardian spirit template (see below) to it. That creature is added to either your summon monster III or summon nature’s ally III list as a summonable creature. When you summon your guardian spirit, the duration of the spell you use to summon it is 1 minute per level. A guardian spirit is always exactly the same creature, with memory of all the events that occurred while previously summoned; multiple versions of it can’t be summoned. If it’s killed while summoned, it cannot be summoned again for 24 hours. If you’re capable of casting a higher-level summon monster or summon nature’s ally spell, you can perform a ritual to attune the guardian spirit to a higher-level version of the spell. This also allows you to change any selections made regarding the abilities the creature gains based on the level of spell used to conjure it (see the table on page 27). This ritual takes 24 hours, and once complete it moves the guardian spirit to the higherlevel list of creatures that can be summoned.",
                          summary: "Select one creature that qualifies to be an improved familiar, and apply the guardian spirit template (see below) to it.",
                          source: "Monster Summoner's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tattoo Attunement",
                          featType: "General",
                          prerequisites: "Inscribe Magical Tattoo ISM or Varisian Tattoo ISWG; Spellcraft 5 ranks.",
                          benefit: "As a standard action, you can touch a single creature that you’ve summoned, instantly transforming it into a magical tattoo on your body. This tattoo takes up one magic item slot if the summoned creature is Medium or smaller, and one additional adjacent slot for each size category larger than Medium (see page 16 of Pathfinder Campaign Setting: Inner Sea Magic for rules on magical tattoos). You can have only one such tattoo at a time. While in tattoo form, the summoned creature can’t take actions and doesn’t need to eat, sleep, or breathe; it retains the remaining duration of the summoning spell used to conjure it. The creature can stay in tattoo form for a number of hours equal to your caster level. If the creature is still in tattoo form at the end of that time, the tattoo disappears, the creature is sent back to the plane from which it was summoned, and the remaining duration of the summon is wasted. As a standard action that provokes attacks of opportunity, you can cause the creature to change from a tattoo back into creature form, and appear in a square adjacent to you. The remaining duration of the spell is then expended as normal. The creature is staggered for 1 round after emerging from tattoo form. This is a supernatural ability.",
                          summary: "As a standard action, you can touch a single creature that you’ve summoned, instantly transforming it into a magical tattoo on your body.",
                          source: "Monster Summoner's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tattoo Conversion",
                          featType: "General",
                          prerequisites: "Inscribe Magical Tattoo ISM or Varisian Tattoo ISWG; Tattoo Attunement; Spellcraft 15 ranks; ability to cast control summoned creatureUM.",
                          benefit: "Once per day as a standard action that provokes attacks of opportunity, you can make a melee touch attack against a summoned creature to transform it into a magical tattoo on your body as per Tattoo Attunement. When you later transform the creature from tattoo to creature form, you can attempt an opposed Spellcraft check against the creature’s original summoner; if that summoner is unconscious or dead, you automatically succeed at the check. If you succeed, the creature must succeed at a Will save (DC = 10 + your caster level) or treat you as the caster of the spell that originally summoned it for the remaining duration of the spell. This is a supernatural ability.",
                          summary: "Once per day as a standard action that provokes attacks of opportunity, you can make a melee touch attack against a summoned creature to transform it into a magical tattoo on your body as per Tattoo…",
                          source: "Monster Summoner's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tattoo Transformation",
                          featType: "General",
                          prerequisites: "Inscribe Magical Tattoo ISM or Varisian Tattoo ISWG; Tattoo Attunement; Spellcraft 9 ranks.",
                          benefit: "When you use Tattoo Attunement on a creature you’ve summoned, you can gain that creature’s elemental resistance as long as it is in tattoo form. If the creature has resistance to multiple elemental types, you gain only one of them. If the creature is immune to an elemental type, you gain resistance 20 to that type. For example, if the creature has resistance 10 to both fire and cold and immunity to electricity, you can gain resistance 10 to either fire or cold or resistance 20 to electricity as long as the creature is in tattoo form.",
                          summary: "When you use Tattoo Attunement on a creature you’ve summoned, you can gain that creature’s elemental resistance as long as it is in tattoo form.",
                          source: "Monster Summoner's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Versatile Summon Monster",
                          featType: "General",
                          prerequisites: "Knowledge (arcana) 1 rank, Knowledge (planes) 1 rank.",
                          benefit: "Pick any two templates from the following list (see Simple Summoning Templates below for details): aerial, aqueous, chthonic, dark, fiery, or primordial. When you summon one or more creatures that would normally be available with the celestial, entropic, fiendish, or resolute template using a summon monster spell (or an effect that mimics such a spell), you can instead apply one of the chosen templates to each creature. You can apply a different template to each creature you summon.",
                          special: "You can select this feat more than once. Each time you do, you can choose an additional two templates.",
                          summary: "Pick any two templates from the following list (see Simple Summoning Templates below for details): aerial, aqueous, chthonic, dark, fiery, or primordial.",
                          source: "Monster Summoner's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Versatile Summon Nature's Ally",
                          featType: "General",
                          prerequisites: "Augment Summoning, Spell Focus (conjuration), Knowledge (nature) 1 rank, Knowledge (planes) 1 rank.",
                          benefit: "When you summon one or more animals, humanoids, or vermin using a summon nature’s ally spell (or an effect that mimics such a spell), instead of granting them the benefit from Augment Summoning, you can instead apply one of the following templates to them: aerial, aqueous, chthonic, fiery, or primordial. If you summon multiple creatures with one casting, they must all have the same template.",
                          summary: "When you summon one or more animals, humanoids, or vermin using a summon nature’s ally spell (or an effect that mimics such a spell), instead of granting them the benefit from Augment Summoning, you…",
                          source: "Monster Summoner's Handbook", isPremium: true),

                    // // MARK: - Monster Summoner's Handbook, Blood of Angels
        )
        try await db.insertFeat(
        .make("Banishing Critical (Critical)",
                          featType: "General",
                          prerequisites: "Arcane Strike or Disruptive; Spellcraft 8 ranks; arcane pool class feature.",
                          benefit: "When you confirm a critical hit against a target while using Arcane Strike or with a weapon enhanced by your arcane pool, if the target was summoned by a spell you identified using a Spellcraft check, it must succeed at a Will save (DC = 10 + 1/2 your character level + your Intelligence modifier) or be sent back to its home plane as per the dismissal spell.",
                          summary: "When you confirm a critical hit against a target while using Arcane Strike or with a weapon enhanced by your arcane pool, if the target was summoned by a spell you identified using a Spellcraft…",
                          source: "Monster Summoner's Handbook, Blood of Angels", isPremium: true),

                    // // MARK: - Mystery Monsters Revisited
        )
        try await db.insertFeat(
        .make("Breach",
                          featType: "General",
                          prerequisites: "Str 15, bunyip.",
                          benefit: "While underwater, the bunyip can make a special charge attack against a creature on land. As long as the target is no farther away than half the bunyip’s swim speed (25 feet for most bunyips) from the body of water the bunyip is attacking from, the bunyip can break through the surface of the water and continue its charge as it soars through the air and toward the target of its attack. The bunyip can still only move up to twice its swim speed while making a breach attack. This attack otherwise follows all the normal rules for a charge attack.",
                          summary: "While underwater, the bunyip can make a special charge attack against a creature on land.",
                          source: "Mystery Monsters Revisited", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Roar",
                          featType: "General",
                          prerequisites: "Con 17, bunyip, roar special attack.",
                          benefit: "The bunyip’s roar ability is enhanced so that it affects all hearing creatures with 8 or fewer Hit Dice within a 200-foot spread. The ability is otherwise unchanged. A bunyip is immune to the effects of its own roar.",
                          normal: "A bunyip’s roar ability affects all hearing creatures with 4 or fewer Hit Dice within a 100-foot spread.",
                          summary: "The bunyip’s roar ability is enhanced so that it affects all hearing creatures with 8 or fewer Hit Dice within a 200-foot spread. The ability is otherwise unchanged.",
                          source: "Mystery Monsters Revisited", isPremium: true),

                    // // MARK: - Mythic Adventures
        )
        try await db.insertFeat(
        .make("Ascendant Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You can modify a spell to imitate the mythic version of that spell. An ascendant spell uses the mythic version of the spell, but doesn’t count as a mythic spell for the purposes of effects that interact with the spell, unless you are a mythic creature. You can’t use the augmented version of the mythic spell, or use spells effects that require you to expend uses of mythic power (even if you have uses of mythic power available). An ascendant spell uses up a spell slot 5 levels higher than the spell’s actual level.",
                          summary: "You can modify a spell to imitate the mythic version of that spell.",
                          source: "Mythic Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Marked for Glory",
                          featType: "General",
                          prerequisites: "Great Fortitude, Iron Will, or Lightning Reflexes.",
                          benefit: "You can use the surge ability (see page 12) once per day (adding 1d6). If you are or become mythic, you can use your surge one additional time per day.",
                          summary: "You can use the surge ability (see page 12) once per day (adding 1d6). If you are or become mythic, you can use your surge one additional time per day.",
                          source: "Mythic Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Mythic Companion",
                          featType: "General",
                          prerequisites: "You must be non-mythic.",
                          benefit: "You’re considered a mythic creature for the purposes of determining how mythic spells and effects affect you. If you ever become mythic, you gain a +1 bonus on all saves against mythic spells and effects.",
                          summary: "You’re considered a mythic creature for the purposes of determining how mythic spells and effects affect you.",
                          source: "Mythic Adventures", isPremium: true),

                    // // MARK: - Occult Adventures
        )
        try await db.insertFeat(
        .make("Alter Binary Mindscape",
                          featType: "General",
                          prerequisites: "Int 13, ability to cast instigate psychic duel.",
                          benefit: "When you cast instigate psychic duel and create a binary mindscape (see page 235), the arena you create puts your enemy at a disadvantage. Your opponent must spend 1 more manifestation point than normal when creating any defensive manifestations.",
                          summary: "When you cast instigate psychic duel and create a binary mindscape (see page 235), the arena you create puts your enemy at a disadvantage.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Bleeding Stare (Combat, Stare)",
                          featType: "General",
                          prerequisites: "Mesmerist level 5th, painful stare class feature.",
                          benefit: "When you trigger your painful stare, the target takes an amount of bleed damage equal to 1/3 your mesmerist level. Bleed damage from multiple uses of Bleeding Stare doesn’t stack.",
                          summary: "When you trigger your painful stare, the target takes an amount of bleed damage equal to 1/3 your mesmerist level. Bleed damage from multiple uses of Bleeding Stare doesn’t stack.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Chakra Adept",
                          featType: "General",
                          prerequisites: "Chakra Initiate, ability to awaken the heart chakra.",
                          benefit: "Your pool of serpent-fire ki increases to 4 points. When you maintain your chakras as a swift action without opening a new chakra, you can choose to attempt either the Fortitude save or the Will save instead of both. In addition, after you stop spending ki to maintain your chakras, the kundalini energy lingers in your body. On the first round during which you spend no ki to maintain your chakras, your highest chakra closes and you can spend a swift action to use any one of the abilities of your remaining open chakras. On the next round after that, all of your chakras close, and you must spend 1 point of ki and a swift action to start again from your root chakra.",
                          summary: "Your pool of serpent-fire ki increases to 4 points. When you maintain your chakras as a swift action without opening a new chakra, you can choose to attempt either the Fortitude save or the Will save…",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Chakra Initiate",
                          featType: "General",
                          prerequisites: "Ability to awaken the root chakra.",
                          benefit: "You gain a pool that holds 3 points of serpentfire ki, which you can use only to open or maintain chakras. These serpent-fire ki points are replenished at the same time you replenish the points in your regular ki pool.",
                          summary: "You gain a pool that holds 3 points of serpentfire ki, which you can use only to open or maintain chakras.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Chakra Master",
                          featType: "General",
                          prerequisites: "Chakra Adept, Chakra Initiate, ability to awaken the crown chakra.",
                          benefit: "Your pool of serpent-fire ki increases to 5 points. You can spend 3 ki points instead of 1 when you open or maintain a chakra to gain the benefits of two chakras instead of one in that round. If you are opening or maintaining your crown chakra, this stacks with the crown chakra’s special power, allowing you to gain the benefits of three chakras in a round.",
                          summary: "Your pool of serpent-fire ki increases to 5 points. You can spend 3 ki points instead of 1 when you open or maintain a chakra to gain the benefits of two chakras instead of one in that round.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Compounded Pain (Combat)",
                          featType: "General",
                          prerequisites: "Mesmerist level 13th, painful stare class feature.",
                          benefit: "You can apply the effects of two stare feats to your painful stares.",
                          normal: "You can apply the effects of only one stare feat to a given painful stare.",
                          summary: "You can apply the effects of two stare feats to your painful stares.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Delay Blast",
                          featType: "General",
                          prerequisites: "Base attack bonus +3, kinetic blast class feature.",
                          benefit: "When you use a kinetic blast, you can specify a number of rounds between 1 and 5. When that number of rounds has passed, the kinetic blast takes effect at the beginning of your turn. In the interim, you can take a standard action that provokes attacks of opportunity to cause the blast to take effect earlier than you initially selected. If you delay another blast while you already have a delayed blast pending, the previous delayed blast dissipates harmlessly. You must make any decisions you would make about the delayed blast—including designating target positions, choosing infusions, and determining or shaping the area—when you first use the blast. The blast originates from your position at the time you used the blast, not your current position when the blast takes effect, and it targets the position or area you had specified (which may or may not include any targets). A delayed blast radiates an aura of magic appropriate for its spell level even while it is delayed, and during that time, it can be dispelled by dispel magic.",
                          summary: "When you use a kinetic blast, you can specify a number of rounds between 1 and 5. When that number of rounds has passed, the kinetic blast takes effect at the beginning of your turn.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Demoralizing Stare (Combat, Stare)",
                          featType: "General",
                          prerequisites: "Mesmerist level 9th, painful stare class feature.",
                          benefit: "When you trigger your painful stare, the target must succeed at a Will Save (DC = 10 + 1/2 your mesmerist level + your Charisma modifier) or become shaken for 1 round. This can’t cause the target to become frightened, even if the target is already shaken.",
                          summary: "When you trigger your painful stare, the target must succeed at a Will Save (DC = 10 + 1/2 your mesmerist level + your Charisma modifier) or become shaken for 1 round.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Disciplinary Devotee",
                          featType: "General",
                          prerequisites: "Psychic discipline class feature.",
                          benefit: "You gain a +1 bonus on caster level checks and concentration checks when casting spells from your psychic discipline, and you gain a +1 insight bonus on saving throws against spells from your discipline.",
                          summary: "You gain a +1 bonus on caster level checks and concentration checks when casting spells from your psychic discipline, and you gain a +1 insight bonus on saving throws against spells from your…",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Distant Delivery",
                          featType: "General",
                          prerequisites: "Phantom class feature, phantom with the deliver touch spells ability.",
                          benefit: "The distance from you at which your phantom can deliver touch spells increases by 20 feet.",
                          summary: "The distance from you at which your phantom can deliver touch spells increases by 20 feet.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Efficient Focus Shift",
                          featType: "General",
                          prerequisites: "Occultist level 7th.",
                          benefit: "Twice per day when you shift mental focus from one implement to another, you can add the same number of points to the latter implement that you removed from the former.",
                          normal: "By removing points of mental focus from one implement, you can add the same amount – 1 to another.",
                          special: "You can take this feat multiple times. Its effects stack.",
                          summary: "Twice per day when you shift mental focus from one implement to another, you can add the same number of points to the latter implement that you removed from the former.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Elongated Cranium",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Your cranium has been tightly bound with boards and wrappings to change its shape and attune your mind to your psychic discipline. If you take this feat after 1st level, you must undergo a painful 6-month regimen of increased tightening and head binding, during which you take a –1 penalty on Intelligence, Wisdom, and Charisma checks and on Intelligence-, Wisdom-, and Charisma-based skill checks. Once the binding is completed, your skull takes on one of three shapes of your choosing, each with a specific benefit. Once chosen, this shape cannot be changed. Fronto-Occipital Elongation: Your head slopes severely in a high conical shape, tapering from your brow to the crown of your head. You take a –1 penalty on Intelligence and Wisdom checks and on Intelligence- and Wisdombased skill checks, but gain a +2 bonus on Charisma checks and Charisma-based skill checks. In addition, once per day, you can extend the duration of a psychic spell you cast by 50% (minimum 0 additional rounds). The increased duration doesn’t stack with the increase granted by the Extend Spell feat. Ovoid Compression: Your head takes on a larger, more bulbous appearance than normal. You take a –1 penalty on Charisma and Wisdom checks and on Wisdom- and Charisma-based skill checks, but gain a +2 bonus on Intelligence checks and Intelligence-based skill checks. In addition, once per day you can cast one psychic magic spell you know with a +1 bonus to its caster level. Sagittal Elongation: Your head slopes back in a gentle, elongated curve. You take a –1 penalty on Intelligence and Charisma checks and on Intelligence- and Charismabased skill checks, but gain a +2 bonus on Wisdom checks and Wisdom-based skill checks. In addition, once per day, you can increase the DC of a psychic spell you cast by 1.",
                          summary: "Your cranium has been tightly bound with boards and wrappings to change its shape and attune your mind to your psychic discipline.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Emotional Conduit",
                          featType: "General",
                          prerequisites: "Shared consciousness class feature.",
                          benefit: "You gain familiarity with a number of additional spells based on the emotional focus of your phantom. These spells are added to both your class spell list (if not already on that list) and your list of spells known; they are in addition to the normal number of spells known for your level. The spells you gain are as follows (spells marked with a dagger [†] can be found in Chapter 4: Psychic Magic): Anger: 1st—burst of adrenaline†, 2nd—rage, 3rd—howling agonyUM, 4th—telekinetic chargeUC, 5th—vengeful outrageUM, 6th—transformation. Despair: 1st—touch of gracelessnessAPG, 2nd—death knell, 3rd—ray of exhaustion, 4th—crushing despair, 5th— suffocationAPG, 6th—eyebite. Devotion: 1st—invisibility alarmACG, 2nd—spiritual weapon, 3rd—cure serious wounds, 4th—spell immunity, 5th—vampiric shadow shieldACG, 6th—greater heroism. Fear: 1st—heightened awarenessACG, 2nd—scare, 3rd—fear, 4th—feast on fearACG, 5th—nightmare, 6th—frightful aspectUC. Hatred: 1st—murderous commandUM, 2nd—disfiguring touchUM, 3rd—bestow curse, 4th—debilitating portentUC, 5th— foster hatred†, 6th—phantasmal revengeAPG. Jealousy: 1st—compel hostilityUC, 2nd—life pactACG, 3rd— ectoplasmic snare†, 4th—entrap spirit†, 5th—dominate person, 6th—unwilling shieldAPG. Zeal: 1st—delusional prideUM, 2nd—false life, 3rd—heroism, 4th—freedom of movement, 5th—joyful raptureUM, 6th—greater heroism.",
                          summary: "You gain familiarity with a number of additional spells based on the emotional focus of your phantom.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Empath",
                          featType: "General",
                          prerequisites: "Psychic Sensitivity or ability to cast psychic spells, Perception 1 rank or Sense Motive 1 rank.",
                          benefit: "You can use either Perception or Sense Motive when reading an emotion aura with the read aura occult skill unlock. Reading a creature’s emotion aura takes you only a full-round action instead of 10 minutes, and if you succeed at your check, you also determine whether that creature is currently affected by a fear or mind-affecting effect and the relative strength of that effect (minor, moderate, strong, as defined in detect magic). You don’t learn the source of the effect or the actual effect. You can also use the read aura occult skill unlock to read emotion auras more than once per day by opening your innate mental defenses. For 1 minute after you use this feat, you take a –4 penalty on saving throws against fear and mind-affecting effects (regardless of whether you succeeded at the check). During this time, you’re also unable to attempt to read emotion auras. Using this feat doesn’t use up your one daily use of the read aura unlock, which you can still use either to read another type of aura or to read an emotion aura without taking the penalty associated with this feat.",
                          summary: "You can use either Perception or Sense Motive when reading an emotion aura with the read aura occult skill unlock.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Excoriating Stare (Combat, Stare)",
                          featType: "General",
                          prerequisites: "Mesmerist level 11th, painful stare class feature.",
                          benefit: "Whenever you trigger a painful stare, the target must succeed at a Will saving throw (DC = 10 + 1/2 your mesmerist level + your Charisma modifier) or become sickened by the pain for 1 round.",
                          summary: "Whenever you trigger a painful stare, the target must succeed at a Will saving throw (DC = 10 + 1/2 your mesmerist level + your Charisma modifier) or become sickened by the pain for 1 round.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Expanded Phrenic Pool",
                          featType: "General",
                          prerequisites: "Phrenic pool class feature.",
                          benefit: "Your phrenic pool total increases by 2 points.",
                          summary: "Your phrenic pool total increases by 2 points.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extend Resonant Power",
                          featType: "General",
                          prerequisites: "Caster level 7th, mental focus class feature.",
                          benefit: "Select an implement school. When you place mental focus points into an implement of that school, you can choose to gain benefits from the resonant power as if you had placed only half as many points of mental focus into the implement. If you do, you can extend the same benefits to one additional ally within 30 feet at the time you invest mental focus. If the ally moves outside of the extended power’s range, the power is suppressed, but it resumes functioning once the ally moves within range again. You can spend 1 point of mental focus from your implement to pass the effect to a new target, so long as both the original target and the new one are within 30 feet. This feat can affect only one implement from a given school at a time, even if you have selected the same implement school more than once.",
                          special: "You can take this feat multiple times. Each time you take the feat, select a different implement school.",
                          summary: "Select an implement school. When you place mental focus points into an implement of that school, you can choose to gain benefits from the resonant power as if you had placed only half as many points…",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extended Stare",
                          featType: "General",
                          prerequisites: "Hypnotic stare class feature.",
                          benefit: "The range of your hypnotic stare increases by 10 feet.",
                          special: "You can take this feat multiple times. Its effects stack.",
                          summary: "The range of your hypnotic stare increases by 10 feet.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Amplification",
                          featType: "General",
                          prerequisites: "Phrenic amplification class feature.",
                          benefit: "You gain one additional phrenic amplification. This can’t be a major amplification.",
                          special: "You can take this feat multiple times. Each time you do, you gain another phrenic amplification.",
                          summary: "You gain one additional phrenic amplification. This can’t be a major amplification.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Focus Power",
                          featType: "General",
                          prerequisites: "Focus power class feature.",
                          benefit: "You gain one additional focus power from among those available from your chosen implement schools. You must select a power for which you normally qualify.",
                          special: "You can choose this feat once for every implement school you know, up to a maximum of seven times at 18th level. Each time you do, you must choose a different focus power. If you have selected the same implement school more than once, you can select a focus power from that school once for each time you selected that school.",
                          summary: "You gain one additional focus power from among those available from your chosen implement schools. You must select a power for which you normally qualify.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Mental Focus",
                          featType: "General",
                          prerequisites: "Mental focus class feature.",
                          benefit: "You gain 2 additional points of mental focus.",
                          summary: "You gain 2 additional points of mental focus.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Mesmerist Tricks",
                          featType: "General",
                          prerequisites: "Mesmerist trick class feature.",
                          benefit: "You can implant two additional mesmerist tricks per day.",
                          special: "You can gain Extra Mesmerist Tricks multiple times. Its effects stack.",
                          summary: "You can implant two additional mesmerist tricks per day.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Touch Treatment",
                          featType: "General",
                          prerequisites: "Touch treatment class feature.",
                          benefit: "You can use touch treatment two additional times per day.",
                          summary: "You can use touch treatment two additional times per day.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Wild Talent",
                          featType: "General",
                          prerequisites: "Kineticist level 6th.",
                          benefit: "You gain a wild talent that’s at least 2 levels lower than the highest-level wild talent you can currently use. You can select an infusion or a non-infusion wild talent, but not a blast or defense wild talent. If you have the expanded element class feature, you can select a wild talent from any of your elements that’s at least 2 levels lower than the highest-level wild talent from your primary element that you can currently use.",
                          special: "You can take this feat multiple times. Each time, you must choose a different wild talent.",
                          summary: "You gain a wild talent that’s at least 2 levels lower than the highest-level wild talent you can currently use.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fatiguing Stare (Combat, Stare)",
                          featType: "General",
                          prerequisites: "Mesmerist level 7th, painful stare class feature.",
                          benefit: "When a target takes damage from your painful stare, it must succeed at a Fortitude saving throw (DC = 10 + 1/2 your mesmerist level + your Charisma modifier) or become fatigued for 1 round. This can’t cause the target to become exhausted, even if the target is already fatigued.",
                          summary: "When a target takes damage from your painful stare, it must succeed at a Fortitude saving throw (DC = 10 + 1/2 your mesmerist level + your Charisma modifier) or become fatigued for 1 round.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fearsome Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When a creature takes damage from a fearsome spell, if that creature failed its save against the spell, it becomes shaken for a number of rounds equal to the spell’s original level. If the spell doesn’t allow a save, creatures harmed by it can attempt a Will save (against the same DC the spell would have if it did allow a save) to negate the shaken effect. If the spell effect already causes creatures to become shaken, on a failed save, add the duration of this metamagic effect to the duration of the shaken condition imposed by the spell. A fearsome spell can’t cause a creature to become frightened, even if that creature is already shaken. A fearsome spell uses up a spell slot 2 levels higher than the spell’s actual level.",
                          summary: "When a creature takes damage from a fearsome spell, if that creature failed its save against the spell, it becomes shaken for a number of rounds equal to the spell’s original level.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Focused Phantom",
                          featType: "General",
                          prerequisites: "Spiritual interference class feature.",
                          benefit: "While you are adjacent to your phantom or your phantom is within your consciousness, you receive a +4 bonus on concentration checks.",
                          summary: "While you are adjacent to your phantom or your phantom is within your consciousness, you receive a +4 bonus on concentration checks.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Furious Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "A furious spell that deals hit point damage adds twice the spell’s original level to the amount of damage dealt by the spell. Spells that affect multiple targets deal the extra damage once to each target, regardless of whether the spell deals its damage all at once or in multiple hits (in the latter case, add the extra damage to the first hit against each target). In addition, a furious spell can be cast while the caster is enraged, including during a barbarian rage or while affected by a rage spell. Even a furious spell that requires an emotion component can be cast while enraged. The caster gains a +2 circumstance bonus on concentration checks and caster level checks related to casting a furious spell if she is enraged. A furious spell uses up a spell slot 1 level higher than the spell’s actual level.",
                          summary: "A furious spell that deals hit point damage adds twice the spell’s original level to the amount of damage dealt by the spell.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Mesmerizing Feint (Combat)",
                          featType: "General",
                          prerequisites: "Mesmerizing Feint, Bluff 10 ranks, hypnotic stare class feature, psychic inception bold stare.",
                          benefit: "You can feint against mindless creatures at a –4 penalty. Such a creature must be a subject of your hypnotic stare, and the creature has a 50% chance of ignoring the effects of your feint.",
                          normal: "Feinting against a creature that is mindless is impossible.",
                          summary: "You can feint against mindless creatures at a –4 penalty. Such a creature must be a subject of your hypnotic stare, and the creature has a 50% chance of ignoring the effects of your feint.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Hidden Presence",
                          featType: "General",
                          prerequisites: "Int or Cha 17, ability to cast possession or greater possession.",
                          benefit: "While possessing another creature, you can hide yourself from divinations and pass through wards such as magic circle against evil or the effects of a forbiddance spell. You must attempt a Will save against the spell (even if it doesn’t normally allow a saving throw). If you succeed, the spell treats you as if you were your host (for instance, divinations would reveal only the host’s alignment, and forbiddance keyed to the host’s alignment wouldn’t damage you). If your saving throw fails, the spell functions against you as normal; if the spell normally allows a save, your previous failure doesn’t count as a failed save against the spell’s normal effects.",
                          summary: "While possessing another creature, you can hide yourself from divinations and pass through wards such as magic circle against evil or the effects of a forbiddance spell.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Implement Focus",
                          featType: "General",
                          prerequisites: "Occultist level 3rd.",
                          benefit: "Select one of your implement schools. When you spend generic focus to activate focus powers with one of that school’s implements, the focus powers cost their listed amount of mental focus.",
                          normal: "Any focus power activated with generic focus costs twice as much focus to use and maintain.",
                          special: "You can take this feat multiple times. Each time, you must select a different implement school.",
                          summary: "Select one of your implement schools. When you spend generic focus to activate focus powers with one of that school’s implements, the focus powers cost their listed amount of mental focus.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Intense Pain (Combat, Stare)",
                          featType: "General",
                          prerequisites: "Mesmerist level 7th, painful stare class feature.",
                          benefit: "When you use your painful stare ability to increase your own damage, you deal an additional 1d6 points of damage. This damage increases to 2d6 at mesmerist level 12th and to 3d6 at mesmerist level 18th. When you use painful stare to augment an ally’s damage, the target of the painful stare takes 1 additional point of damage for every 4 mesmerist levels you possess.",
                          summary: "When you use your painful stare ability to increase your own damage, you deal an additional 1d6 points of damage.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Interweave Composite Blast (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Kinetic blast class feature.",
                          benefit: "Whenever you are within 15 feet of another character who has this feat, you can ready an action to activate a simple blast of your choice. When that character unleashes a simple blast, yours is triggered, creating a composite blast for which the two simple blasts meet the prerequisites. The composite blast’s caster level is equal to the average of the caster levels of both participants and deals damage as the appropriate composite blast created by a kineticist of that level (for example, if a 10th-level pyrokineticist and a 6thlevel hydrokineticist worked together to create a steam blast, its base damage would be 4d6+4 points of fire damage and 4d6+4 points of bludgeoning damage). One participant can provide a form infusion appropriate for the composite blast, and the other can provide an appropriate substance infusion. Each participant accepts the burn cost for the infusion she provided. The participant who didn’t take the special ready action can apply a metakinesis to the blast, and she is the only one who can gather power to reduce the blast’s cost (since only she has a move action to take prior to the blast). However, whatever metakinesis she applies affects the entire composite blast. If the two participants aren’t adjacent to each other, the origin point of cones, lines, and other effects that normally originate from a character’s square instead originate from a point in the square located halfway between the two participants in a straight line (where the two simple blasts meet and form the composite blast). The blast uses the Constitution modifier of whoever provided the substance infusion and the Dexterity modifier of whoever provided the form infusion. If the blast includes only one infusion, the blast uses the Constitution or Dexterity modifier of the kineticist who supplied that infusion, as appropriate for the infusion provided. If no infusions are used, the two kineticists choose one of them to provide the Dexterity modifier, and the other provides the Constitution modifier.",
                          summary: "Whenever you are within 15 feet of another character who has this feat, you can ready an action to activate a simple blast of your choice.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Intimidating Glance (Combat)",
                          featType: "General",
                          prerequisites: "Hypnotic stare class feature.",
                          benefit: "You can attempt to demoralize the target of your hypnotic stare as a swift action.",
                          normal: "Attempting to demoralize an opponent is a standard action.",
                          summary: "You can attempt to demoralize the target of your hypnotic stare as a swift action.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Intrusive Presence",
                          featType: "General",
                          prerequisites: "Int or Cha 21, Hidden Presence, Manipulative Presence, ability to cast possession or greater possession.",
                          benefit: "You can use detect thoughts at will as a spell-like ability against a host creature you possess. The host receives no saving throw, and the effect functions as if you had concentrated for 3 rounds. You can also use seek thoughts on your host as a spell-like ability once during the possession. The host can attempt a Will save with a DC equal to the DC of the original possession effect. If the host succeeds, the effect fails and the host become aware of the possession if it wasn’t already.",
                          summary: "You can use detect thoughts at will as a spell-like ability against a host creature you possess. The host receives no saving throw, and the effect functions as if you had concentrated for 3 rounds.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Intuitive Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "An intuitive spell can be cast with no thought components. Spells without thought components are not affected. An intuitive spell uses up a spell slot 1 level higher than the spell’s actual level.",
                          summary: "An intuitive spell can be cast with no thought components. Spells without thought components are not affected. An intuitive spell uses up a spell slot 1 level higher than the spell’s actual level.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Kinetic Counter",
                          featType: "General",
                          prerequisites: "Cold simple blast, fire simple blast, or water simple blast; kinetic blast class feature.",
                          benefit: "You can ready an action to use your blast to counter an opponent’s elemental abilities. If you ready a fire simple blast, you can counter any spell or activated extraordinary, supernatural, or spell-like ability that has the water or ice descriptor, and if you ready a cold or water simple blast, you can counter any spell or activated extraordinary, supernatural, or spell-like ability that has the fire descriptor. In order to successfully counter the effect, you must succeed at a caster level check with a DC equal to either 11 + the opponent’s caster level (for spells and spell-like abilities) or 11 + the opponent’s Hit Dice (for extraordinary and supernatural abilities). Against spells and spell-like abilities, treat a success as if you had counterspelled the effect using dispel magic. Against activated supernatural and extraordinary abilities, a successful kinetic counter negates the ability’s effect entirely while still expending the ability. For example, if a pyrokineticist succeeds at her caster level check against a white dragon’s breath weapon, she negates the breath weapon’s effect in the entire area, and the dragon must wait 1d4 rounds to use its breath weapon again.",
                          summary: "You can ready an action to use your blast to counter an opponent’s elemental abilities.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Kinetic Leap",
                          featType: "General",
                          prerequisites: "Acrobatics 3 ranks, kinetic blast class feature.",
                          benefit: "Once per day as a swift action, you can conjure a burst of energy from your kinetic blast to help you jump a long distance, adding a +10 bonus on your Acrobatics check to jump; if you have at least 10 ranks in Acrobatics, the bonus increases to +20. By accepting 1 point of burn, you can use this ability at will until your burn is removed.",
                          summary: "Once per day as a swift action, you can conjure a burst of energy from your kinetic blast to help you jump a long distance, adding a +10 bonus on your Acrobatics check to jump; if you have at least…",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Logical Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "A logical spell can be cast without emotion components. Spells that don’t require emotion components are not affected. A logical spell uses up a spell slot 1 level higher than the spell’s actual level.",
                          summary: "A logical spell can be cast without emotion components. Spells that don’t require emotion components are not affected.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Lucid Dreamer",
                          featType: "General",
                          prerequisites: "Cha 13, Knowledge (planes) 3 ranks.",
                          benefit: "You have greater control of the highly morphic qualities and wild magic of the Dimension of Dreams. You gain a +4 bonus on Charisma checks to determine your initial condition when your lucid body (see page 242) enters a dream and when attempting impossible feats in a dreamscape, and a +2 bonus on caster level checks to prevent a spell or spell-like ability from going awry because of wild magic. If someone casts a dream council spell that includes you as a target while you are dreaming, you can enter a shared dreamscape as described in that spell without spending a casting of dream or dream council. If your lucid body dies while in a dreamscape, you wake up fatigued.",
                          summary: "You have greater control of the highly morphic qualities and wild magic of the Dimension of Dreams.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Manipulative Presence",
                          featType: "General",
                          prerequisites: "Int or Cha 19, Hidden Presence, ability to cast possession or greater possession.",
                          benefit: "Upon completion of your possession, you can alter up to 5 minutes of your host’s memories as you see fit. This functions as the modify memory spell. Your host’s awareness of the possession doesn’t impact this ability, and if your control of the host lasted less than 5 minutes, you can cause it to forget the possession entirely. The host can attempt a Will save with a DC equal to that of the original possession effect to resist this alteration.",
                          summary: "Upon completion of your possession, you can alter up to 5 minutes of your host’s memories as you see fit. This functions as the modify memory spell.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Mesmerizing Feint (Combat)",
                          featType: "General",
                          prerequisites: "Hypnotic stare class feature.",
                          benefit: "You take only a –2 penalty when feinting against a non-humanoid and a –4 penalty when feinting against creatures with animal intelligence, as long as the target is a subject of your hypnotic stare. If you have at least 10 ranks in Bluff, you instead take no penalty when feinting against non-humanoids and creatures of animal intelligence under your hypnotic stare.",
                          normal: "When feinting against a non-humanoid, you take a –4 penalty. Against a creature of animal intelligence, you take a –8 penalty.",
                          summary: "You take only a –2 penalty when feinting against a non-humanoid and a –4 penalty when feinting against creatures with animal intelligence, as long as the target is a subject of your hypnotic stare.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Parting Blast",
                          featType: "General",
                          prerequisites: "Kinetic blast class feature.",
                          benefit: "You can accept 1 point of burn to prepare a kinetic blast that automatically triggers upon your death. If you are killed at any point before your burn is removed, your body instantly erupts in an explosion that deals an amount of damage equal to that of your simple blast to all creatures in a 5-foot radius. A parting blast destroys your body, which might prevent any magic that requires an intact corpse.",
                          summary: "You can accept 1 point of burn to prepare a kinetic blast that automatically triggers upon your death.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Phantom Fighter",
                          featType: "General",
                          prerequisites: "Phantom class feature, phantom with the magic attacks ability.",
                          benefit: "Your phantom’s natural weapons are treated as having the ghost touch property. In addition, when you cast a touch spell to be delivered by your phantom, you can modify the spell as if you possessed the Ectoplasmic SpellAPG metamagic feat.",
                          summary: "Your phantom’s natural weapons are treated as having the ghost touch property.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Phantom Fortification",
                          featType: "General",
                          prerequisites: "Phantom class feature, phantom with the incorporeal flight ability.",
                          benefit: "Your phantom has a 50% chance of ignoring critical hits and precision-based damage when fully manifested in its ectoplasmic form, as if wearing armor with the moderate fortification special ability. This doesn’t stack with other similar effects, and doesn’t apply against attacks made with ghost touch weapons or weaponlike constructs made of force (such as a clenched fist, mage’s sword, or spiritual weapon).",
                          summary: "Your phantom has a 50% chance of ignoring critical hits and precision-based damage when fully manifested in its ectoplasmic form, as if wearing armor with the moderate fortification special ability.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Psychic Adept",
                          featType: "General",
                          prerequisites: "Int 11, Psychic Sensitivity.",
                          benefit: "You gain the ability to cast a 0-level knack from the psychic class’s spell list. You can cast this spell three times per day as a spell-like ability. The caster level for this ability is equal to your character level, and the save DC is equal to 10 + your Intelligence modifier.",
                          special: "You can choose this feat multiple times, choosing a different knack each time.",
                          summary: "You gain the ability to cast a 0-level knack from the psychic class’s spell list. You can cast this spell three times per day as a spell-like ability.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Psychic Combatant (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Psychic Sensitivity or the ability to cast psychic spells or use psychic spell-like abilities, character level 3rd.",
                          benefit: "You gain an extra pool of manifestation points with a number of points equal to 1/2 your character level. You can use these points at any time during a psychic duel. When you are not participating in a psychic duel, you can spend 1 of these extra manifestation points as a swift action to gain a +1 bonus on saving throws against psychic spells until the start of your next turn, or 3 points as a swift action to gain a +2 bonus on saving throws against psychic spells until the start of your next turn. This pool refreshes at the start of each day.",
                          summary: "You gain an extra pool of manifestation points with a number of points equal to 1/2 your character level. You can use these points at any time during a psychic duel.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Psychic Defender",
                          featType: "General",
                          prerequisites: "Int 13, Psychic Sensitivity or the ability to cast psychic spells or use psychic spell-like abilities, character level 3rd.",
                          benefit: "Each time you enter a psychic duel, you gain a number of temporary hit points equal to your manifesting level (see Psychic Duels on page 202). These temporary hit points last until the end of the psychic duel.",
                          summary: "Each time you enter a psychic duel, you gain a number of temporary hit points equal to your manifesting level (see Psychic Duels on page 202).",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Psychic Disciple",
                          featType: "General",
                          prerequisites: "Int 13, Psychic Adept, Psychic Sensitivity.",
                          benefit: "You gain the ability to cast a 1st-level psychic spell from the psychic class’s spell list. You can cast this spell twice per day as a spell-like ability. The caster level for this ability is equal to your character level, and the save DC is equal to 11 + your Intelligence modifier.",
                          special: "You can take this feat multiple times, choosing a different spell each time.",
                          summary: "You gain the ability to cast a 1st-level psychic spell from the psychic class’s spell list. You can cast this spell twice per day as a spell-like ability.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Psychic Healing",
                          featType: "General",
                          prerequisites: "Cha 11, Psychic Sensitivity or the ability to cast psychic spells, Heal 3 ranks.",
                          benefit: "As an additional use of the faith healing skill unlock, you can attempt to manipulate a creature’s psychic form to heal damage to its physical form. This works as the treat deadly wounds use of the Heal skill, but also grants the creature a number of temporary hit points equal to the amount of damage healed. These temporary hit points last for 1 hour. Psychic healing doesn’t require a healer’s kit. A creature can benefit from psychic healing only once per day, and can’t benefit from both this ability and treat deadly wounds in the same day.",
                          summary: "As an additional use of the faith healing skill unlock, you can attempt to manipulate a creature’s psychic form to heal damage to its physical form.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Psychic Maestro",
                          featType: "General",
                          prerequisites: "Psychic Sensitivity or the ability to cast psychic spells.",
                          benefit: "Choose two occult skill unlocks. You can use each of those one additional time per day (or per week, in the case of automatic writing). You must have at least 1 rank in the skills associated with the chosen occult skill unlocks.",
                          summary: "Choose two occult skill unlocks. You can use each of those one additional time per day (or per week, in the case of automatic writing).",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Psychic Sensitivity",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You gain access to occult skill unlocks (see page 194) for any skills in which you have ranks. If you have no ranks in the appropriate skill, you can’t use the occult skill unlock, even if that skill can be used untrained.",
                          normal: "You must have the ability to cast psychic spells in order to use occult skill unlocks.",
                          summary: "You gain access to occult skill unlocks (see page 194) for any skills in which you have ranks.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Psychic Virtuoso",
                          featType: "General",
                          prerequisites: "Psychic Sensitivity or ability to cast psychic spells.",
                          benefit: "You gain a +2 bonus on checks to use occult skill unlocks. If you have more than 10 ranks in the base skill, this bonus increases to +4. This bonus doesn’t apply on other checks using the base skills—only on checks for occult skill unlocks.",
                          summary: "You gain a +2 bonus on checks to use occult skill unlocks. If you have more than 10 ranks in the base skill, this bonus increases to +4.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Rapid Focus Shift",
                          featType: "General",
                          prerequisites: "Caster level 5th, mental focus class ability.",
                          benefit: "Once per day, you can take a full-round action to shift mental focus from one implement to another. You must be undisturbed and able to concentrate. If you take any damage during the transfer, you must succeed at a concentration check (DC = 10 + the number of points of damage taken) to complete the transfer. If you fail this check, you lose the points of mental focus instead of moving them from one implement to the other.",
                          normal: "Shifting focus between two implements takes 1 minute of quiet contemplation.",
                          special: "You can take this feat multiple times. Each time you do, you gain an additional daily use of Rapid Focus Shift.",
                          summary: "Once per day, you can take a full-round action to shift mental focus from one implement to another. You must be undisturbed and able to concentrate.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ready for Battle",
                          featType: "General",
                          prerequisites: "Mesmerist trick class feature.",
                          benefit: "When you implant a trick, the subject gains a +2 morale bonus on initiative checks until the trick is triggered or its duration ends.",
                          summary: "When you implant a trick, the subject gains a +2 morale bonus on initiative checks until the trick is triggered or its duration ends.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ready for Pain",
                          featType: "General",
                          prerequisites: "Mesmerist trick class feature.",
                          benefit: "When you implant a trick, you can grant the subject DR 1/— against nonlethal damage until the trick is triggered or its duration ends. This DR increases by 1 for every 5 mesmerist levels you possess.",
                          summary: "When you implant a trick, you can grant the subject DR 1/— against nonlethal damage until the trick is triggered or its duration ends. This DR increases by 1 for every 5 mesmerist levels you possess.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Scarring Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When a creature fails a saving throw against a scarring spell, for the next 24 hours that creature takes a –2 penalty on saving throws against emotion and fear effects you create, and a –1 penalty on saving throws against other emotion and fear effects. Penalties from multiple scarring spells don’t stack. This metamagic feat can be applied only to spells with the emotion or fear descriptor. A scarring spell uses up a spell slot 1 level higher than the spell’s actual level.",
                          summary: "When a creature fails a saving throw against a scarring spell, for the next 24 hours that creature takes a –2 penalty on saving throws against emotion and fear effects you create, and a –1 penalty on…",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shared Soul",
                          featType: "General",
                          prerequisites: "Shared consciousness class feature.",
                          benefit: "While your phantom is confined within your consciousness, you gain a +2 bonus on saving throws against death effects, energy drain, and possession. In addition, once per day when you fail a saving throw against a death effect or possession effect or gain a negative level, as an immediate action you can shunt that effect into the phantom’s section of your soul instead. When you do so, you are not affected by that effect, but you also don’t gain any of the normal benefits of your shared consciousness ability and can’t manifest your phantom in any way for the normal duration of the spell or effect shunted into the phantom’s consciousness. The phantom suffers the full effect you transferred, and as long as your phantom continues to suffer from the effect, you cannot shunt a death or possession effect or negative level onto your phantom.",
                          summary: "While your phantom is confined within your consciousness, you gain a +2 bonus on saving throws against death effects, energy drain, and possession.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shatter Mental Mask (Combat)",
                          featType: "General",
                          prerequisites: "Psychic Sensitivity or ability to cast psychic spells or use psychic spell-like abilities, character level 2nd.",
                          benefit: "While in a psychic duel, when you create an offensive manifestation that can be negated or halved only with a successful Will saving throw, if your opponent fails that Will saving throw, its mental mask is shattered, revealing the opponent’s true form.",
                          special: "If you possess the Third Eye feat, your opponent’s mental mask is shattered even on a successful Will saving throw.",
                          summary: "While in a psychic duel, when you create an offensive manifestation that can be negated or halved only with a successful Will saving throw, if your opponent fails that Will saving throw, its mental…",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spirit Focus",
                          featType: "General",
                          prerequisites: "Spirit bonus class feature.",
                          benefit: "Select a legend of spirits. Your spirit bonus from spirits of that legend increases by 1.",
                          summary: "Select a legend of spirits. Your spirit bonus from spirits of that legend increases by 1.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spirit Sense",
                          featType: "General",
                          prerequisites: "Psychic Sensitivity or ability to cast psychic spells.",
                          benefit: "You gain a +5 bonus on checks to notice haunts. In addition, when you target an incorporeal creature with a corporeal spell or effect that doesn’t deal damage, you have a 75% chance of affecting the target.",
                          normal: "Corporeal spells and effects that don’t deal damage have only a 50% chance of affecting an incorporeal creature.",
                          summary: "You gain a +5 bonus on checks to notice haunts. In addition, when you target an incorporeal creature with a corporeal spell or effect that doesn’t deal damage, you have a 75% chance of affecting the…",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spiritual Balance",
                          featType: "General",
                          prerequisites: "Ki pool class feature, still mind class feature.",
                          benefit: "The saving throw bonus from your still mind class feature applies against possession effects, and as an immediate action you can spend 1 point from your ki pool to double the saving throw bonus provided by still mind.",
                          normal: "Your still mind class feature applies only against enchantment spells and effects.",
                          summary: "The saving throw bonus from your still mind class feature applies against possession effects, and as an immediate action you can spend 1 point from your ki pool to double the saving throw bonus…",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spiritualist's Call",
                          featType: "General",
                          prerequisites: "Phantom class feature.",
                          benefit: "Whenever you summon your phantom, you can give it a +2 enhancement bonus to its Strength, Dexterity, or Charisma. This bonus lasts for 10 minutes after the summoning ritual is complete.",
                          summary: "Whenever you summon your phantom, you can give it a +2 enhancement bonus to its Strength, Dexterity, or Charisma. This bonus lasts for 10 minutes after the summoning ritual is complete.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Strong Implement Link",
                          featType: "General",
                          prerequisites: "Implements class feature.",
                          benefit: "When you are within 30 feet of your implement, you don’t need to attempt a concentration check to cast spells associated with that implement. When you are at a greater distance, the DC for the concentration check is equal to 15 + the spell’s level.",
                          normal: "Anytime you attempt to cast a spell using an implement that’s not in your possession, you must succeed at a concentration check with a DC equal to 20 + the spell’s level in order to cast the spell.",
                          special: "You can take this feat multiple times. Its effects don’t stack. Each time you take the feat, you gain the benefits for a different school of implements. If you have more than one implement of a single school, you can select that school multiple times and apply the benefits to another one of those implements each time you take this feat and select that school.",
                          summary: "When you are within 30 feet of your implement, you don’t need to attempt a concentration check to cast spells associated with that implement.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Third Eye",
                          featType: "General",
                          prerequisites: "Psychic Sensitivity or ability to cast psychic spells.",
                          benefit: "Once per day as a standard action, you can open a spiritual third eye positioned on your forehead between and above your normal eyes. You can keep this eye open for up to 1 minute per character level you possess. This duration doesn’t have to be consecutive, but it must be used in 1-minute increments. Once per day while your third eye is open, you can use the read aura occult skill unlock after 1 minute of intense concentration. This is in addition to the normal daily use of read aura (which still takes 10 minutes). While your third eye is open, you gain a +4 bonus on Perception checks to read auras, as well as a +8 bonus on Perception checks to detect invisible creatures or objects or see through magical disguises (both illusory ones and those provided by the change shape ability or polymorph magic). When you close your third eye, either voluntarily or at the end of the time limit, you are fatigued for an amount of time equal to the length of time you kept your third eye open.",
                          normal: "Without this feat, you must spend 10 minutes in intense concentration to read one of a creature or item’s four auras, and you can do so only once per day.",
                          special: "You can take this feat multiple times. Its effects don’t stack. Each time you take the feat, you increase the number of times per day you can open your third eye (and read an aura) by one.",
                          summary: "Once per day as a standard action, you can open a spiritual third eye positioned on your forehead between and above your normal eyes.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Traumatic Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "A traumatic spell causes lingering memories of pain and suffering in creatures harmed by it. When a creature fails a saving throw against a traumatic spell, the next time it sleeps it must succeed at a Will save with a DC equal to the original spell’s DC or be affected as if by nightmare. Each time the target fails its save, it must save again the following night or be affected by another nightmare, though the save DC decreases by 2 each night after the first. This metamagic feat can be applied only to spells with the emotion or fear descriptor. A traumatic spell uses up a spell slot 2 levels higher than the spell’s actual level.",
                          summary: "A traumatic spell causes lingering memories of pain and suffering in creatures harmed by it.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Vigilant Phantom",
                          featType: "General",
                          prerequisites: "Phantom class feature.",
                          benefit: "While your phantom is within your reach, you gain a +4 bonus on Perception checks. If you have 10 or more ranks in Perception, this bonus increases to +8. This doesn’t apply if your phantom is helpless or unconscious.",
                          summary: "While your phantom is within your reach, you gain a +4 bonus on Perception checks. If you have 10 or more ranks in Perception, this bonus increases to +8.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Xenoglossy",
                          featType: "General",
                          prerequisites: "Int 13, Linguistics 3 ranks.",
                          benefit: "With a successful DC 25 Linguistics check, you can speak with a single individual with whom you share no common languages. You cannot take 10 on this check, nor can anyone aid you. You believe you are speaking your native language, and the listener believes you are speaking its native language; however, to everyone else able to hear you, you sound like you are speaking gibberish. Creatures that have truespeech or that are under the effects of tongues can understand Xenoglossy, and other creatures who succeed at a DC 25 Linguistics check can pick up the gist of what you are saying. Xenoglossy lasts for the length of the conversation or for 1 minute per level, whichever is shorter. You can use Xenoglossy again to continue a longer conversation, and you gain a +2 on Linguistics checks to use Xenoglossy to communicate with someone with whom you previously communicated using this feat. If you fail a Xenoglossy check, you can’t use the Xenoglossy feat to attempt further communication with that creature until you gain additional ranks in Linguistics.",
                          summary: "With a successful DC 25 Linguistics check, you can speak with a single individual with whom you share no common languages. You cannot take 10 on this check, nor can anyone aid you.",
                          source: "Occult Adventures", isPremium: true),

                    // // MARK: - Orcs of Golarion
        )
        try await db.insertFeat(
        .make("Adept Channel",
                          featType: "General",
                          prerequisites: "Ability to cast divine spells, summon familiar class ability, caster level 4th, Cha 13.",
                          benefit: "You gain the channel energy class feature, as a cleric, usable 2 times per day. This ability otherwise functions like the cleric’s channel energy ability, except that your effective cleric level is equal to your divine spellcasting class level –3. Unlike a cleric, however, the number of times per day you may channel energy is not affected by your Charisma modifier.",
                          summary: "You gain the channel energy class feature, as a cleric, usable 2 times per day.",
                          source: "Orcs of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Amplified Rage (Teamwork)",
                          featType: "General",
                          prerequisites: "Half-orc or orc, rage class feature.",
                          benefit: "Whenever you are raging and adjacent to a raging ally who also has this feat or flanking the same opponent as a raging ally with this feat, your morale bonuses to Strength and Constitution increase by +4. This feat does not stack with itself (you only gain this bonus from one qualifying ally, regardless of how many are adjacent to you).",
                          summary: "Whenever you are raging and adjacent to a raging ally who also has this feat or flanking the same opponent as a raging ally with this feat, your morale bonuses to Strength and Constitution increase…",
                          source: "Orcs of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Brutal Grappler (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Half-orc or orc.",
                          benefit: "When you and an ally with this feat have grappled the same creature, you may attempt to damage the opponent on your turn (whether you were the one who first initiated the grapple or were assisting your ally in doing so). You and the ally are treated as aiding each other in the grapple (+2 bonus on your grapple combat maneuver) as long as you both decide to maintain the grapple.",
                          normal: "When multiple creatures grapple one target, the creature that first initiates the grapple is the only one that makes a check to damage a grappled opponent, with a +2 bonus for each creature that assists the grapple using the Aid Another action.",
                          summary: "When you and an ally with this feat have grappled the same creature, you may attempt to damage the opponent on your turn (whether you were the one who first initiated the grapple or were assisting…",
                          source: "Orcs of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fire God's Blessing",
                          featType: "General",
                          prerequisites: "Half-orc or orc, worshiper of the Fire God.",
                          benefit: "When in combat, if you deal fire damage to an enemy, you heal 1 hit point. You can only benefit from this healing once per round. Attacks that cause a target to catch on fire heal you each round the target takes fire damage.",
                          summary: "When in combat, if you deal fire damage to an enemy, you heal 1 hit point. You can only benefit from this healing once per round.",
                          source: "Orcs of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Warleader's Rage",
                          featType: "General",
                          prerequisites: "Cha 13, half-orc or orc, non-lawful.",
                          benefit: "Feats and abilities that allow an ally to rage or enhance a rage if adjacent to you (such as Amplified Rage and Sympathetic Rage) persist as long as your ally is within 30 feet of you and can see you. The conditions to activate the rage effect remain unchanged. For example, an ally with Sympathetic Rage must be adjacent to you to enter his own rage, but once his rage begins, he can continue raging as long as he can see you and you are within 30 feet.",
                          summary: "Feats and abilities that allow an ally to rage or enhance a rage if adjacent to you (such as Amplified Rage and Sympathetic Rage) persist as long as your ally is within 30 feet of you and can see…",
                          source: "Orcs of Golarion", isPremium: true),

                    // // MARK: - Pathfinder #105: The Inferno Gate
        )
        try await db.insertFeat(
        .make("Planar Sensitivity",
                          featType: "General",
                          prerequisites: "Knowledge (planes) 3 ranks.",
                          benefit: "You gain access to the gatefinder and gatekeeper skill unlocks (see below).",
                          special: "Sentient outsiders who have one or more ranks in Knowledge (planes) and who lack the native subtype are treated as having this feat.",
                          summary: "You gain access to the gatefinder and gatekeeper skill unlocks (see below).",
                          source: "Pathfinder #105: The Inferno Gate", isPremium: true)
        )
        try await db.insertFeat(
        .make("Thrune Trusted Agent (Teamwork)",
                          featType: "General",
                          prerequisites: "Thrune Loyal Agent trait.",
                          benefit: "Whenever you are within 30 feet of an ally who also has this feat, you gain a +1 profane bonus on Reflex and Will saving throws. In addition, once per day as a swift action, you can forfeit the saving throw bonuses granted by this feat to increase the effectiveness of the aid another action. For a number of rounds equal to your Charisma modifier (minimum 1), when you use the aid another action to aid an ally who also has this feat, the bonus you grant to an ally’s AC, attack roll, or skill check is increased to +4 instead of the usual +2. You don’t benefit from the feat’s saving throw bonuses for 24 hours, though you still qualify as having this feat for the purpose of other characters gaining the bonuses.",
                          summary: "Whenever you are within 30 feet of an ally who also has this feat, you gain a +1 profane bonus on Reflex and Will saving throws.",
                          source: "Pathfinder #105: The Inferno Gate", isPremium: true),

                    // // MARK: - Pathfinder #115: Trail of the Hunted
        )
        try await db.insertFeat(
        .make("Distracting Explosion",
                          featType: "General",
                          prerequisites: "Bomb class feature, hobgoblin.",
                          benefit: "You can reduce your bomb damage by one die to give it the ability to distract the creature it strikes. If a creature takes a direct hit from your bomb, it must succeed at a Reflex saving throw against the bomb’s DC or be unable to make attacks of opportunity for 1 round. This is in addition to any other effects the bomb would normally have.",
                          normal: "The target of a bomb does not get a saving throw to avoid the bomb’s effects.",
                          summary: "You can reduce your bomb damage by one die to give it the ability to distract the creature it strikes.",
                          source: "Pathfinder #115: Trail of the Hunted", isPremium: true)
        )
        try await db.insertFeat(
        .make("Elf-Magic Defense",
                          featType: "General",
                          prerequisites: "Favored enemy class feature, hobgoblin.",
                          benefit: "In addition to the normal benefits against your favored enemies, you add half your favored enemy bonus on saving throws made against arcane spells, spell-like abilities, and supernatural abilities of your favored enemies.",
                          summary: "In addition to the normal benefits against your favored enemies, you add half your favored enemy bonus on saving throws made against arcane spells, spell-like abilities, and supernatural abilities of…",
                          source: "Pathfinder #115: Trail of the Hunted", isPremium: true)
        )
        try await db.insertFeat(
        .make("Grenade Expert",
                          featType: "General",
                          prerequisites: "Throw Anything.",
                          benefit: "When you light an alchemical grenade (such as a fuse grenade, pellet grenade, or sting grenade) you select how many rounds later the grenade explodes (minimum 1 round, maximum 3 rounds). In addition, you gain a +4 bonus on Craft (alchemy) checks to craft grenades.",
                          normal: "Alchemical grenades explode 1d3 rounds after the fuse is lit.",
                          summary: "When you light an alchemical grenade (such as a fuse grenade, pellet grenade, or sting grenade) you select how many rounds later the grenade explodes (minimum 1 round, maximum 3 rounds).",
                          source: "Pathfinder #115: Trail of the Hunted", isPremium: true)
        )
        try await db.insertFeat(
        .make("Recalcitrant",
                          featType: "General",
                          prerequisites: "Iron Will, hobgoblin.",
                          benefit: "Add 2 to the DCs of checks to intimidate you. While you are subject to a charm person, dominate person, or other charm or compulsion effect, orders to perform normal or benign actions are treated as actions you wouldn’t normally do. Orders to perform actions you wouldn’t normally do are treated as obviously harmful or self-destructive.",
                          normal: "While you are under certain charm or compulsion spell effects, commands to perform actions you wouldn’t ordinarily do, including obviously harmful or self-destructive acts, allow a new saving throw or end the effect entirely, as described in the spell.",
                          summary: "Add 2 to the DCs of checks to intimidate you. While you are subject to a charm person, dominate person, or other charm or compulsion effect, orders to perform normal or benign actions are treated as…",
                          source: "Pathfinder #115: Trail of the Hunted", isPremium: true),

                    // // MARK: - Pathfinder #116: Fangs of War
        )
        try await db.insertFeat(
        .make("Delayed Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "A delayed spell can be activated as a standard action anytime within 1 minute per spell level of being cast. Only spells that target one or more squares or grid intersections can be affected by Delayed Spell, and the target (as well as any other variables determined at the time of casting) cannot be changed once the delayed spell is cast. You can have as many delayed spells as you wish at any given time, but only one spell can be triggered in a single standard action. Though a delayed spell does not manifest until it is triggered, it emits a magical aura as normal and can be identified with Knowledge (arcana) as a spell effect in place. A delayed spell uses up a spell slot 1 level higher than the spell’s actual level.",
                          summary: "A delayed spell can be activated as a standard action anytime within 1 minute per spell level of being cast.",
                          source: "Pathfinder #116: Fangs of War", isPremium: true)
        )
        try await db.insertFeat(
        .make("Quick Trapper",
                          featType: "General",
                          prerequisites: "Learn Ranger Trap or trap class feature, Survival 5 ranks.",
                          benefit: "When setting a ranger trap (Pathfinder RPG Ultimate Magic 64), you can do so as a standard action rather than a full-round action. If you do so, the trap DC is reduced by 5.",
                          summary: "When setting a ranger trap (Pathfinder RPG Ultimate Magic 64), you can do so as a standard action rather than a full-round action. If you do so, the trap DC is reduced by 5.",
                          source: "Pathfinder #116: Fangs of War", isPremium: true),

                    // // MARK: - Pathfinder #119: Prisoners of the Blight
        )
        try await db.insertFeat(
        .make("Blight Guide",
                          featType: "General",
                          prerequisites: "Blight Survivalist, Skill Focus (Survival).",
                          benefit: "Your bonus on saving throws gained from the Blight Survivalist feat extends to your allies within 30 feet. Furthermore, once per day, if you would fail a saving throw against an environmental hazard or weather effect, you can reroll that save, but you must use the second result, even if it is lower.",
                          summary: "Your bonus on saving throws gained from the Blight Survivalist feat extends to your allies within 30 feet.",
                          source: "Pathfinder #119: Prisoners of the Blight", isPremium: true)
        )
        try await db.insertFeat(
        .make("Blight Survivalist",
                          featType: "General",
                          prerequisites: "Skill Focus (Survival).",
                          benefit: "You gain a +3 bonus on saving throws against environmental hazards and weather effects.",
                          special: "If you have the favored terrain class feature and the blighted land being explored matches one of those terrains, you can choose to use your favored terrain bonus in place of the +3 bonus granted by this feat.",
                          summary: "You gain a +3 bonus on saving throws against environmental hazards and weather effects.",
                          source: "Pathfinder #119: Prisoners of the Blight", isPremium: true)
        )
        try await db.insertFeat(
        .make("Suppress Blight",
                          featType: "General",
                          prerequisites: "Great Fortitude, Iron Will.",
                          benefit: "Once per day as a standard action, when you are suffering from a curse or disease effect, you can suppress the effects (as delay poison) for 1 hour per 3 character levels (minimum 1 hour). While the affliction is suppressed, you gain a number of temporary hit points equal to the suppressed affliction’s save DC, which last as long as the affliction’s effects are suppressed. At the end of this duration, the effects return and all subsequent saving throw DCs against the affliction (including the DC to permanently end the effect) are increased by 2, to a maximum increase of half your Hit Dice; you can’t suppress an affliction whose save DC has already been increased to its maximum.",
                          summary: "Once per day as a standard action, when you are suffering from a curse or disease effect, you can suppress the effects (as delay poison) for 1 hour per 3 character levels (minimum 1 hour).",
                          source: "Pathfinder #119: Prisoners of the Blight", isPremium: true),

                    // // MARK: - Pathfinder #124: City in the Deep
        )
        try await db.insertFeat(
        .make("Barracuda Dash (Combat)",
                          featType: "General",
                          prerequisites: "Wis 13, Barracuda Slam, Barracuda Style, Improved Unarmed Strike, Acrobatics 7 ranks, Swim 7 ranks.",
                          benefit: "You gain a swim speed equal to your base speed. When you attack on a charge in water or on land and the attack hits, you can immediately make a second charge attack against a second opponent. All the normal requirements for making a charge, such as moving at least 10 feet and moving in a straight line, apply to this second attack. The total distance of the two charge attacks cannot exceed the normal maximum distance for a charge (usually double your speed). The movement, including leaving the first target’s threatened area, provokes attacks of opportunity as normally. You cannot use pounce or other abilities that grant extra attacks on your turn if you use Barracuda Dash to make a second attack.",
                          summary: "You gain a swim speed equal to your base speed. When you attack on a charge in water or on land and the attack hits, you can immediately make a second charge attack against a second opponent.",
                          source: "Pathfinder #124: City in the Deep", isPremium: true)
        )
        try await db.insertFeat(
        .make("Barracuda Slam (Combat)",
                          featType: "General",
                          prerequisites: "Wis 13, Barracuda Style, Improved Unarmed Strike, Acrobatics 5 ranks, Swim 5 ranks.",
                          benefit: "With a successful Swim check, you can move half your speed as a move action or your full speed as a full-round action. You can run and charge underwater, though the maximum distance you can move while doing so is half the normal maximum distance. Further, while making a charge attack in water or on land, you can add twice your Strength bonus on the damage roll for your first unarmed strike on your turn.",
                          normal: "You cannot charge or run underwater unless you have a swim speed. With an unarmed strike, you usually add your Strength bonus on damage rolls.",
                          summary: "With a successful Swim check, you can move half your speed as a move action or your full speed as a full-round action.",
                          source: "Pathfinder #124: City in the Deep", isPremium: true)
        )
        try await db.insertFeat(
        .make("Barracuda Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Wis 13, Improved Unarmed Strike, Acrobatics 3 ranks, Swim 3 ranks.",
                          benefit: "Your unarmed strikes deal normal damage underwater, and you don’t take penalties on attack rolls with unarmed strikes made underwater. You add your Wisdom modifier in addition to your Strength modifier on Swim checks.",
                          normal: "Attacks with bludgeoning weapons (such as unarmed strikes) deal half damage and take a –2 penalty on attack rolls underwater.",
                          summary: "Your unarmed strikes deal normal damage underwater, and you don’t take penalties on attack rolls with unarmed strikes made underwater.",
                          source: "Pathfinder #124: City in the Deep", isPremium: true),

                    // // MARK: - Pathfinder #131: The Reaper's Right Hand
        )
        try await db.insertFeat(
        .make("Forward from Beneath (Story)",
                          featType: "General",
                          prerequisites: "Be a member of House Kastner, be a good-aligned member of a family or organization whose secret evil has been publicly revealed, or have the Dishonored Family or Betrayal backgrounds.",
                          benefit: "Your experience with infiltrating your own family or organization gives you a +2 bonus on Disguise checks. If you have 10 or more ranks in Disguise, this bonus increases to +4. If you are not evil, as a standard action you can choose to radiate a faint aura of evil for the purposes of spells such as detect evil. You can dismiss this ersatz aura as a standard action.Goal: Redeem your family or organization.Completion Benefit: You gain the benefit of undetectable alignment as a constant spell-like ability. You can suppress or resume this ability as a standard action.",
                          summary: "Your experience with infiltrating your own family or organization gives you a +2 bonus on Disguise checks. If you have 10 or more ranks in Disguise, this bonus increases to +4.",
                          source: "Pathfinder #131: The Reaper's Right Hand", isPremium: true)
        )
        try await db.insertFeat(
        .make("Lighting the Way (Story)",
                          featType: "General",
                          prerequisites: "Be a member of House Zespire, or have the Devoted, Exemplar, Marked by the Gods, or Righteous Mentor background.",
                          benefit: "Once per day as a standard action, you can give all allies within 30 feet who can hear you a +1 bonus on attack rolls and on saving throws against mind-affecting effects for 1 minute.Goal: Establish your religion in an existing settlement where it isn’t present. You can do this by having a settlement gain the Holy Site or Pious quality for devotion to your deity, or change its government to a theocracy based on your religion.Completion Benefit: You can spontaneously convert any 2nd-level or higher divine spell into enthrall and can spontaneously convert any 3rd-level or higher divine spell into suggestion.",
                          summary: "Once per day as a standard action, you can give all allies within 30 feet who can hear you a +1 bonus on attack rolls and on saving throws against mind-affecting effects for 1 minute.Goal: Establish…",
                          source: "Pathfinder #131: The Reaper's Right Hand", isPremium: true)
        )
        try await db.insertFeat(
        .make("Never Conquered, Forever Feared (Story)",
                          featType: "General",
                          prerequisites: "Be a member of House Heskillar, or have the Adopted by Dragons, Path of Righteous Rage, or Proud Heritage background.",
                          benefit: "Your stern demeanor gives you a +2 bonus on Intimidate checks. If you have 10 or more ranks in Intimidate, this bonus increases to +4. You also gain a +2 bonus on saves against paralysis and sleep effects.Goal: You must individually slay an appropriate number of significant foes in succession, without retreating or withdrawing from a fight.Completion Benefit: You can display your imposing presence as a free action when you take an offensive action, such as an attack or a charge. Opponents within 30 feet of you must succeed at a Will save or become shaken for 3d6 rounds. The DC of this save is equal to 10 + 1/2 your character level + your Charisma modifier. This ability does not cause opponents that are already shaken to become frightened, and opponents with more Hit Dice than your character level are immune to the effect. This is a mind-affecting fear effect.",
                          summary: "Your stern demeanor gives you a +2 bonus on Intimidate checks. If you have 10 or more ranks in Intimidate, this bonus increases to +4.",
                          source: "Pathfinder #131: The Reaper's Right Hand", isPremium: true)
        )
        try await db.insertFeat(
        .make("Our Bounty, Our Glory (Story)",
                          featType: "General",
                          prerequisites: "Be a member of House Denzarni, or have the Bloodthirsty, Omen, Tree Tender, or Unsuspecting Master background.",
                          benefit: "You add 1 day to the time you can go without food or water before making Constitution checks and you add +4 to Constitution checks to stave off the effects of starvation and thirst.Goal: You must succumb to your emotions and be victorious. Thwart an appropriate number of foes while you are subject to an effect with the emotion descriptor, such as rage.Completion Benefit: Once per day, you can use heroes' feast as a spell-like ability with a caster level equal to your character level, although your feast does not grant the effects of neutralize poison or remove disease.",
                          summary: "You add 1 day to the time you can go without food or water before making Constitution checks and you add +4 to Constitution checks to stave off the effects of starvation and thirst.Goal: You must…",
                          source: "Pathfinder #131: The Reaper's Right Hand", isPremium: true)
        )
        try await db.insertFeat(
        .make("Prosperity and Pride (Story)",
                          featType: "General",
                          prerequisites: "Be a member of House Corcina, or have the Craftsperson, Inheritance, Well-Connected Friend, or Worldshaker background.",
                          benefit: "When in a settlement the size of a large city or smaller, you receive a +2 bonus on Appraise checks and Diplomacy checks. If you have 10 or more ranks in one of these skills, the bonus on that skill increases to +4.Goal: Your actions must spur a settlement to grow to the next size category; this usually involves decisively defeating a challenging foe or an appropriate number of foes preying upon or impeding the settlement’s citizenry.Completion Benefit: You teach others how to get the most out of their equipment. Three times per day as a standard action, you can increase the armor bonus provided by a suit of nonmagical armor, the circumstance bonus to a skill provided by a tool or skill kit, or the shield bonus provided by a nonmagical shield by 1. This bonus lasts for 1 hour and doesn’t stack with other uses of this ability.",
                          summary: "When in a settlement the size of a large city or smaller, you receive a +2 bonus on Appraise checks and Diplomacy checks.",
                          source: "Pathfinder #131: The Reaper's Right Hand", isPremium: true)
        )
        try await db.insertFeat(
        .make("Standing Tall (Story)",
                          featType: "General",
                          prerequisites: "Be a member of House Fahlspar, or have the Hunter, Nature, or Tree Tender background.",
                          benefit: "Once per day as a move action, you gain a +2 bonus on saving throws against mind-affecting effects for 1 minute.Goal: Swear to protect a natural site and defend it for at least a year, including decisively defeating an appropriate number of invaders or despoilers.Completion Benefit: You may now use the above benefit three times per day, and the benefit also applies on saving throws against paralysis, poison, polymorph, sleep, and stunning effects.",
                          summary: "Once per day as a move action, you gain a +2 bonus on saving throws against mind-affecting effects for 1 minute.Goal: Swear to protect a natural site and defend it for at least a year, including…",
                          source: "Pathfinder #131: The Reaper's Right Hand", isPremium: true)
        )
        try await db.insertFeat(
        .make("Victory Through Unity (Story)",
                          featType: "General",
                          prerequisites: "You must have a familiar, and you must either be a member of House Merrosett or have the Initiated or Storied Lineage background.",
                          benefit: "When you gain this feat, choose an animal aspect granted by the hunter’s animal focus class ability and apply it to your familiar. Your hunter level for this ability is 1st, and you cannot change this ability once you have selected it. If your familiar dies, it loses its aspect and you may choose a new aspect if you take a new familiar. Your familiar’s form is altered by superficial changes appropriate to its aspect.Goal: You must breed a new magical creature.Completion Benefit: You may either choose and apply a second animal aspect to your familiar or apply an evolution from the 1-point evolutions available to a summoner’s eidolon. The familiar must conform to any limitations of the evolution (such as being one size category larger than its rider to serve as a mount). Once selected, this decision cannot be changed, but if your familiar dies it loses these abilities and you may choose new abilities if you take a new familiar. If your familiar breeds with its original kind, it has the potential to pass on these extra abilities as permanent traits.",
                          summary: "When you gain this feat, choose an animal aspect granted by the hunter’s animal focus class ability and apply it to your familiar.",
                          source: "Pathfinder #131: The Reaper's Right Hand", isPremium: true)
        )
        try await db.insertFeat(
        .make("We are the Wall (Story)",
                          featType: "General",
                          prerequisites: "Be a member of House Darahan, or have the Champion of the People, Duty, or Raider background.",
                          benefit: "Three times per day as a move action, you can declare a single dragon, magical beast, or monstrous humanoid within 50 feet and in line of sight to be your mark. You gain a +1 bonus on attack rolls and on Bluff, Knowledge, Perception, Sense Motive, and Survival checks against your mark. These bonuses last for 1 minute, until you designate a new mark, or until the mark is dead. After you have declared a creature as your mark, it can’t be your mark again for another 24 hours.Goal: Protect a settlement you have lived in for at least a year from an invading force consisting of an appropriate number of dragons, magical beasts, or monstrous humanoids.Completion Benefit: The bonus provided by your mark becomes +1 for every 4 character levels you have, to a maximum of +5.",
                          summary: "Three times per day as a move action, you can declare a single dragon, magical beast, or monstrous humanoid within 50 feet and in line of sight to be your mark.",
                          source: "Pathfinder #131: The Reaper's Right Hand", isPremium: true),

                    // // MARK: - Pathfinder #132: The Six-Legend Soul
        )
        try await db.insertFeat(
        .make("Blade of the Purge",
                          featType: "General",
                          prerequisites: "Bane class feature.",
                          benefit: "When you activate your bane class feature, you can select a deity or religion other than your own. Your bane effect applies only to followers of that deity or religion.",
                          summary: "When you activate your bane class feature, you can select a deity or religion other than your own. Your bane effect applies only to followers of that deity or religion.",
                          source: "Pathfinder #132: The Six-Legend Soul", isPremium: true)
        )
        try await db.insertFeat(
        .make("Blood for the Empire (Teamwork)",
                          featType: "General",
                          prerequisites: "Base attack bonus +4.",
                          benefit: "You gain a +2 morale bonus on attack and damage rolls against a target that was damaged by an ally with this feat within the last round. When an ally with this feat dies within 30 feet of you, you gain the effects of haste for 1 round.",
                          summary: "You gain a +2 morale bonus on attack and damage rolls against a target that was damaged by an ally with this feat within the last round.",
                          source: "Pathfinder #132: The Six-Legend Soul", isPremium: true)
        )
        try await db.insertFeat(
        .make("Brash Stride",
                          featType: "General",
                          prerequisites: "Dex 15, Acrobatic Steps, Nimble Moves.",
                          benefit: "When you charge or run, you treat difficult terrain as normal terrain.",
                          summary: "When you charge or run, you treat difficult terrain as normal terrain.",
                          source: "Pathfinder #132: The Six-Legend Soul", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dragon Gold Crown",
                          featType: "General",
                          prerequisites: "Knowledge (arcana) 5 ranks, Survival 5 ranks.",
                          benefit: "You can use the remains of a dragon or magical beast that you helped to defeat to craft a crown, as if you were harvesting and creating a trophy (Pathfinder RPG Ultimate Wilderness 162). If you successfully create the trophy, it has no monetary value but it functions for you as a headband of alluring charisma. The bonus the trophy provides to you is based on the creature’s base CR (not including class levels) or your character level at the time the crown was created, whichever is lower: +2 at CR 5 or 5th level, +4 at CR 10 or 10th level, and +6 at CR 15 or 15th level.",
                          summary: "You can use the remains of a dragon or magical beast that you helped to defeat to craft a crown, as if you were harvesting and creating a trophy (Pathfinder RPG Ultimate Wilderness 162).",
                          source: "Pathfinder #132: The Six-Legend Soul", isPremium: true)
        )
        try await db.insertFeat(
        .make("Eyes of the Purge",
                          featType: "General",
                          prerequisites: "Ability to cast detect magic as a spell or spell-like ability.",
                          benefit: "When you use detect magic to determine the strength and location of the aura of a functioning spell, if that spell’s caster used a holy symbol as a divine focus to cast the spell, you see a ghostly image of the deity’s holy symbol as part of the spell’s aura. Effects that block divination spells or effects also block the effects of this feat.",
                          summary: "When you use detect magic to determine the strength and location of the aura of a functioning spell, if that spell’s caster used a holy symbol as a divine focus to cast the spell, you see a ghostly…",
                          source: "Pathfinder #132: The Six-Legend Soul", isPremium: true)
        )
        try await db.insertFeat(
        .make("Heaven's Step (Combat)",
                          featType: "General",
                          prerequisites: "Dex 15, Following Step, Step Up, Step Up and Strike, Two-Weapon Fighting, base attack bonus +10.",
                          benefit: "When you make an attack using Step Up and Strike, you can also make an extra attack with your offhand weapon using your highest base attack bonus. Both attacks take the normal penalties for two-weapon fighting.",
                          summary: "When you make an attack using Step Up and Strike, you can also make an extra attack with your offhand weapon using your highest base attack bonus.",
                          source: "Pathfinder #132: The Six-Legend Soul", isPremium: true)
        )
        try await db.insertFeat(
        .make("Horse Sense",
                          featType: "General",
                          prerequisites: "Wis 15, Iron Will.",
                          benefit: "When you attempt a saving throw against an enchantment effect that cannot affect an animal (such as charm person), you can roll the saving throw twice and take the better result.",
                          summary: "When you attempt a saving throw against an enchantment effect that cannot affect an animal (such as charm person), you can roll the saving throw twice and take the better result.",
                          source: "Pathfinder #132: The Six-Legend Soul", isPremium: true)
        )
        try await db.insertFeat(
        .make("Imperial Prankster",
                          featType: "General",
                          prerequisites: "Bluff 5 ranks, any chaotic alignment.",
                          benefit: "You gain a +2 bonus on Bluff checks and combat maneuver checks against lawful creatures. Against creatures with the lawful subtype, this bonus increases to +4.",
                          summary: "You gain a +2 bonus on Bluff checks and combat maneuver checks against lawful creatures. Against creatures with the lawful subtype, this bonus increases to +4.",
                          source: "Pathfinder #132: The Six-Legend Soul", isPremium: true)
        )
        try await db.insertFeat(
        .make("Lion's Heart",
                          featType: "General",
                          prerequisites: "Wis 15, Great Fortitude.",
                          benefit: "Choose one ability. You ignore penalties from ability damage to that ability until you have taken an amount of ability damage equal to your score in that ability.",
                          normal: "You can take this feat multiple times. Each time, choose a different ability to which its benefits apply.",
                          summary: "Choose one ability. You ignore penalties from ability damage to that ability until you have taken an amount of ability damage equal to your score in that ability.",
                          source: "Pathfinder #132: The Six-Legend Soul", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ursurping Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "A creature that fails its saving throw against a usurping spell counts as your ally rather than your enemy for the purpose of flanking other creatures and cannot make attacks of opportunity against you. This effect lasts for the duration of the spell or for 1 round, whichever is longer. A usurping spell uses up a spell slot 1 level higher than the spell’s actual level.",
                          summary: "A creature that fails its saving throw against a usurping spell counts as your ally rather than your enemy for the purpose of flanking other creatures and cannot make attacks of opportunity against…",
                          source: "Pathfinder #132: The Six-Legend Soul", isPremium: true)
        )
        try await db.insertFeat(
        .make("Usurper's Guard (Teamwork)",
                          featType: "General",
                          prerequisites: "Base attack bonus +3 or ability to cast 2nd-level spells.",
                          benefit: "When an adjacent ally with this feat attempts a concentration check to cast a spell or use a spell-like ability defensively, you can attempt a combat maneuver check as an immediate action to guard that ally. Your ally can use either the result of her own concentration check or the result of your combat maneuver check to determine whether she succeeds at casting the spell or using the spell-like ability.",
                          summary: "When an adjacent ally with this feat attempts a concentration check to cast a spell or use a spell-like ability defensively, you can attempt a combat maneuver check as an immediate action to guard…",
                          source: "Pathfinder #132: The Six-Legend Soul", isPremium: true),

                    // // MARK: - Pathfinder #139: The Dead Road
        )
        try await db.insertFeat(
        .make("Fan-Bearer at the King's Right Hand (Origin)",
                          featType: "General",
                          prerequisites: "Shabti.",
                          benefit: "As a swift action, you can designate an adjacent ally as your charge. So long as you remain adjacent to that character, he benefits from your resistance to level drain and immunity to undeath racial traits. This ability applies even if one of you is killed, so long as you remain adjacent.",
                          summary: "As a swift action, you can designate an adjacent ally as your charge.",
                          source: "Pathfinder #139: The Dead Road", isPremium: true)
        )
        try await db.insertFeat(
        .make("First General of the East (Origin)",
                          featType: "General",
                          prerequisites: "Character level 5th, shabti.",
                          benefit: "Once per day, you can cast greater magic weapon as a spell-like ability. You gain a second daily use at 9th level, and a third at 15th level. Only you can benefit from this spell-like ability; anyone else who wields the enchanted weapon gains no benefit from the spell. The caster level for this ability is equal to your character level.",
                          summary: "Once per day, you can cast greater magic weapon as a spell-like ability. You gain a second daily use at 9th level, and a third at 15th level.",
                          source: "Pathfinder #139: The Dead Road", isPremium: true)
        )
        try await db.insertFeat(
        .make("Lector Priest (Origin)",
                          featType: "General",
                          prerequisites: "Shabti.",
                          benefit: "You gain Spellcraft as a class skill. Whenever you attempt a Spellcraft check, you can roll twice and take the better of the two results.",
                          summary: "You gain Spellcraft as a class skill. Whenever you attempt a Spellcraft check, you can roll twice and take the better of the two results.",
                          source: "Pathfinder #139: The Dead Road", isPremium: true)
        )
        try await db.insertFeat(
        .make("Majesty of the Yamaraj",
                          featType: "General",
                          prerequisites: "Channel energy 5d6, duskwalker, ghost hunter racial trait.",
                          benefit: "When you channel positive energy to harm undead, you can expend your ghost hunter racial ability as a free action. Your channeled energy takes the form of spectral beetles and other insectile scavengers, dealing 50% more damage to the undead. You also gain an additional daily use of ghost hunter.",
                          summary: "When you channel positive energy to harm undead, you can expend your ghost hunter racial ability as a free action.",
                          source: "Pathfinder #139: The Dead Road", isPremium: true)
        )
        try await seedFeatsH()
    }
}
