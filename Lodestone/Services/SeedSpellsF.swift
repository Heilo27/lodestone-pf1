import Foundation

extension SeedDataBuilder {
    func seedSpellsF() async throws {
        try await db.insertSpell(
        .make("Unfetter", school: "Transmutation", levels: "summoner 1, summoner (unchained) 1",
                          castingTime: "1 standard action", components: "V, S, M (a broken chain)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "your eidolon",
                          duration: "10 minutes/level",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "This spell breaks the life link between you and your eidolon. This spell allows your eidolon to venture more than 100 feet away from you without penalty.",
                          desc: "This spell breaks the life link between you and your eidolon. This spell allows your eidolon to venture more than 100 feet away from you without penalty. It can travel any distance while this spell is in effect without penalty, but if the spell expires while the eidolon is farther than 100 feet away, it immediately loses hit points as normal for distance and is possibly sent back to its home plane. While this spell is in effect, you cannot sacrifice hit points to prevent damage to your eidolon. Damage that would be transferred due to the life bond ability is not transferred. If you attempt to use the transposition ability while this spell is in effect, you must roll on the teleport mishap table, using the “studied carefully” row.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Universal Formula", school: "Transmutation", levels: "alchemist 4, investigator 4",
                          castingTime: "1 standard action", components: "V, S, M (quicksilver and powdered platinum worth 100 gp)",
                          range: "personal", area: "", targets: "you",
                          duration: "instantaneous",
                          savingThrow: "None", sr: false,
                          summary: "As you ingest this extract, it transforms into the appropriate extract for any formula you know of 3rd level or lower and takes effect immediately.",
                          desc: "As you ingest this extract, it transforms into the appropriate extract for any formula you know of 3rd level or lower and takes effect immediately. If the chosen formula has an expensive material component, it must be provided along with the component for this formula. You may not create an infused extract with this formula.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Unravel Destiny", school: "Divination", levels: "arcanist 3, cleric 3, oracle 3, sorcerer 3, warpriest 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "short (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You utter a dire portent, causing destiny and fate to unravel around the target.",
                          desc: "You utter a dire portent, causing destiny and fate to unravel around the target. This profoundly disturbing effect causes the target to suffer a cumulative –2 penalty on all ability checks, attack rolls, saving throws, and skill checks for every hero point it possesses. The target can reduce this penalty by spending hero points normally, but it takes 2d6 points of damage for each hero point spent while this spell is in effect.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Unwilling Shield", school: "Necromancy", levels: "arcanist 6, bard 5, inquisitor 5, mesmerist 5, occultist 5, psychic 6, skald 5, sorcerer 6, spiritualist 6, witch 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S, M (ruby dust worth 250 gp)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "Like shield other ,",
                          desc: "Like shield other ,",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Unwitting Ally", school: "Enchantment (Charm)", levels: "bard 0, mesmerist 0, psychic 1, skald 0",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "1 round",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You befuddle the target’s mind. The target has difficulty telling friend from foe for a short period of time.",
                          desc: "You befuddle the target’s mind. The target has difficulty telling friend from foe for a short period of time. The subject is considered your ally and not your enemies’ ally while determining flanking. The subject takes no other hostile action against your enemies due to this spell’s effect.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Vanish", school: "Illusion (Glamer)", levels: "arcanist 1, bard 1, magus 1, mesmerist 1, occultist 1, psychic 1, redmantisassassin 1, skald 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 round/level (up to 5 rounds) (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions like invisibility , except the effect only lasts for 1 round per caster level (maximum of 5 rounds). Like",
                          desc: "This spell functions like invisibility , except the effect only lasts for 1 round per caster level (maximum of 5 rounds). Like",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Veil of Positive Energy", school: "Abjuration", levels: "paladin 1",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "personal or 5 ft.; see text", area: "", targets: "you or all creatures within 5 ft.; see text",
                          duration: "10 minutes/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "You surround yourself with a veil of positive energy, making it harder for undead creatures to harm you.",
                          desc: "You surround yourself with a veil of positive energy, making it harder for undead creatures to harm you. When under the effect of this spell, you gain a +2 sacred bonus to AC and a +2 sacred bonus on saves. Both of these bonuses apply only against attacks or effects created by undead creatures. You can dismiss this spell before its normal duration as a swift action on your turn to deal a number of points of positive energy damage equal to your level to all undead creatures within 5 feet of you.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Venomous Bolt", school: "Necromancy", levels: "hunter 3, ranger 3",
                          castingTime: "1 swift action", components: "V, S",
                          range: "0 ft.", area: "", targets: "one arrow or bolt",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates, see text;", sr: true,
                          summary: "You infuse a single arrow or crossbow bolt with natural venom as you fire it. In addition to its normal damage, anyone struck by this arrow or bolt is affected as if by the poison spell.",
                          desc: "You infuse a single arrow or crossbow bolt with natural venom as you fire it. In addition to its normal damage, anyone struck by this arrow or bolt is affected as if by the poison spell. If the arrow is not fired immediately, the spell ends with no effect.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Versatile Weapon", school: "Transmutation", levels: "arcanist 3, bard 2, bloodrager 3, hunter 2, magus 3, occultist 2, psychic 3, ranger 2, redmantisassassin 3, skald 2, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (iron filings)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one weapon or 50 projectiles, all of which must be together at the time of casting",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "You transform the physical makeup of a weapon as you desire. This spell functions like greater magic weapon , except that it subtly alters the physical properties of a weapon, enabling it to bypass…",
                          desc: "You transform the physical makeup of a weapon as you desire. This spell functions like greater magic weapon , except that it subtly alters the physical properties of a weapon, enabling it to bypass damage reduction of one the following types: bludgeoning, cold iron, piercing, silver, or slashing. The affected weapon still inflicts damage of its normal type and its hardness and hit points are unchanged. This spell can be cast on a natural weapon or unarmed strike.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Vomit Swarm", school: "Conjuration (Summoning)", levels: "alchemist 2, investigator 2, witch 2",
                          castingTime: "1 standard action", components: "S",
                          range: "personal", area: "one swarm of spiders", targets: "",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "You vomit forth a swarm of spiders that attacks all other creatures within its area.",
                          desc: "You vomit forth a swarm of spiders that attacks all other creatures within its area. The swarm begins adjacent to you, but if no living creatures are within its area, it moves in one direction of your choosing at its normal speed. You can move the swarm or change the swarm’s direction by spending a standard action to concentrate on the swarm, otherwise it continues moving in its current direction. If your caster level is at least 7th, you can vomit forth a swarm of wasps instead. Finally, if your caster level is at least 13th, you can vomit forth a swarm of army ants.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Vortex", school: "Evocation", levels: "arcanist 7, druid 7, shaman 7, sorcerer 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S, M/DF (a stirring spoon)",
                          range: "long (400 ft. + 40 ft./level)", area: "whirlpool 50 ft. deep, 30 ft. wide at top, and 5 ft. wide at base", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "Reflex negates, see text;", sr: true,
                          summary: "You create a powerful and immobile whirlpool in any body of liquid large enough to contain the spell’s effect.",
                          desc: "You create a powerful and immobile whirlpool in any body of liquid large enough to contain the spell’s effect. Any Large or smaller creature that comes in contact with the spell effect must succeed on a Reflex save or take 3d6 points of bludgeoning damage. A Medium or smaller creature that fails its first save must succeed on a second one or be pulled into the whirlpool and held suspended in its powerful currents, taking 1d8 points of damage each round on your turn with no save allowed. You may direct the whirlpool to eject any carried creatures whenever you wish. A boat that is equal in length or shorter than the vortex’s width that passes through a vortex takes 6d6 points of damage and is caught up by the current. If the boat’s captain makes a DC 25 Profession (sailor) check (or if the boat is longer than the vortex’s width), the boat takes only half damage and is not caught up by the vortex.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Wake of Light", school: "Evocation", levels: "paladin 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "120 ft.", area: "a 10-ft.-wide path in a straight line, up to 120 ft. long", targets: "",
                          duration: "1 round/level",
                          savingThrow: "none;", sr: true,
                          summary: "You and your mount lay down a trail of glowing, heavenly mist behind you as you move that makes passage easier for good creatures but more difficult for evil creatures.",
                          desc: "You and your mount lay down a trail of glowing, heavenly mist behind you as you move that makes passage easier for good creatures but more difficult for evil creatures. This glowing trail of mist appears behind your mount in a straight line starting where you cast the spell and ending where your mount ends its movement. The mist takes the form of a path 10 feet wide and up to 120 feet long and always floats just above the ground, up to a height of 1 foot. Thereafter, the mist persists for 1 round per level. Good creatures may walk along the top of the mist as if it were solid, treating squares of difficult terrain containing the mist as normal terrain. Evil creatures find the mist thick and cloying, and treat squares of normal terrain containing the mist as difficult terrain instead. Neutral creatures pass through the mist with no effect. The mist has no effect on obstacles or otherwise impassable terrain, and does not block sight or provide concealment. Except for very special circumstances (such as a celestial or fiendish mount), mounts use the alignment of their rider when determining how this spell affects them. You must be mounted to enjoy the benefits of this spell. If you dismount, get knocked off, or take any other action that separates you from your mount, the spell immediately ends, although the mist remains for the spell’s normal duration. A wake of light cannot follow across water, underwater, or through the air in the case of a mount capable of walking on water, swimming, or flight.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Walk the Plank", school: "Conjuration (Creation)", levels: "arcanist 2, sorcerer 2, summoner 2, summoner (unchained) 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, F (miniature shovel costing 10 gp)",
                          range: "medium (100 ft. + 10 ft./level)", area: "10-ft.-by-10-ft. hole, 10 ft. deep/2 levels", targets: "",
                          duration: "1 round + 1 round/level",
                          savingThrow: "Reflex negates;", sr: false,
                          summary: "This spell functions as per create pit APG , except as noted here.",
                          desc: "This spell functions as per create pit APG , except as noted here. All but the top 10 feet of the hole is filled with saltwater, reducing the fall damage for anyone falling into the pit to 1d3 points of nonlethal damage and allowing Huge or larger creatures at the water’s surface to simply pull themselves out of the pit as part of a normal move action, without a Climb check. Additionally, the pit contains a single advanced shark (",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Wall of Lava", school: "Conjuration (Creation)", levels: "arcanist 8, druid 8, sorcerer 8, wizard 8",
                          castingTime: "1 standard action", components: "V, S, M/DF (a chunk of dried lava)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "lava wall whose area is up to one 5-ft. square/level (S)",
                          duration: "1 round/level (D)",
                          savingThrow: "see text;", sr: false,
                          summary: "This spell creates a vertical wall of lava that is 1 inch thick for every 4 caster levels and composed of up to one 5-foot square per level. A",
                          desc: "This spell creates a vertical wall of lava that is 1 inch thick for every 4 caster levels and composed of up to one 5-foot square per level. A",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Wall of Suppression", school: "Abjuration", levels: "arcanist 9, psychic 9, sorcerer 9, wizard 9",
                          castingTime: "1 standard action", components: "V, S, M (powdered adamantine worth 1,000 gp)",
                          range: "medium (100 ft. + 10 ft./level)", area: "anti-magic wall occupying up to two 5 ft. cubes/level (S)", targets: "",
                          duration: "10 minutes/level; see text",
                          savingThrow: "none;", sr: false,
                          summary: "You create a wall of glittering motes that suppresses or even negates any magical effect passing through it.",
                          desc: "You create a wall of glittering motes that suppresses or even negates any magical effect passing through it. The wall appears to have no actual substance and does not physically obstruct or impede anything attempting to move through it. However, the wall exerts a powerful anti-magical effect. Any magic item or magical spell or effect of your caster level or lower that passes through the wall is suppressed for 1 round per level. Spells or effects with durations expire normally, even while thus suppressed. A spell or effect with a duration greater than that of the suppression effect resumes functioning normally when the suppression ends. The wall affects all magical effects, including spells, spell-like abilities, magical items, and any effects stemming from them that pass through the wall. The wall does not suppress a creature’s ability to cast spells, use spell-like abilities, or any other sort of limited-use abilities even if the wall suppresses a particular application of those abilities. However, if a creature with magical abilities that are constant or otherwise always active passes through the wall, those abilities are suppressed for the normal duration. The wall blocks line of effect, so no spell or effect can pass through the wall, but it does not block line of sight. Magic items or spell effects with a higher caster level than yours are unaffected by the wall of suppression . The wall does not affect artifacts, anything stemming from the direct action of a deity, or similarly powerful sorts of magic.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Wandering Star Motes", school: "Illusion (Pattern)", levels: "arcanist 4, bard 4, occultist 4, psychic 4, redmantisassassin 4, shaman 4, skald 4, sorcerer 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (a sprinkle of flash powder)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature and special; see text",
                          duration: "1 round/level",
                          savingThrow: "Will negates, see text;", sr: true,
                          summary: "You create sparkling motes of bright light that shoot toward the target and swirl around it in a complex pattern.",
                          desc: "You create sparkling motes of bright light that shoot toward the target and swirl around it in a complex pattern. The pattern clearly outlines the target and radiates light as if it were a sunrod, negating any concealment for the target. The target must make a successful Will save. If the target fails its save, it is dazed for 1 round and must make another save on its next turn or be dazed again for 1 round. The target must continue making Will saves each round. If a target makes its Will save, the wandering star motes jump to the nearest enemy within 30 feet, who must now make Will saves every round or be dazed. Any time a target makes its Will save, the",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ward the Faithful", school: "Abjuration", levels: "inquisitor 3",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "10-ft.-radius emanation from touched creature", targets: "",
                          duration: "10 minutes/level",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "All creatures within the area who worship the same god as you gain a +2 deflection bonus to AC and a +2 resistance bonus on all saves. At 12th level, these bonuses increase to +3.",
                          desc: "All creatures within the area who worship the same god as you gain a +2 deflection bonus to AC and a +2 resistance bonus on all saves. At 12th level, these bonuses increase to +3. At 18th level, the bonuses increase to +4. If you do not worship a specific deity, the bonuses apply to those who share your faith. If you do not have a specific faith or religion, the spell provides benefits only to yourself. Enemies gain the benefits of this spell if they worship the same god or share the same faith as you, even if you view them as heretical.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Weapon of Awe", school: "Transmutation", levels: "cleric 2, inquisitor 2, occultist 2, oracle 2, paladin 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "weapon touched",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "You transform a single weapon into an awe-inspiring instrument.",
                          desc: "You transform a single weapon into an awe-inspiring instrument. The weapon gains a +2 sacred bonus on damage rolls, and if the weapon scores a critical hit, the target of that critical hit becomes shaken for 1 round with no saving throw. This is a mind-affecting fear effect. A ranged weapon affected by this spell applies these effects to its ammunition. You can’t cast this spell on a natural weapon, but you can cast it on an unarmed strike.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Winds of Vengeance", school: "Evocation", levels: "arcanist 9, cleric 9, druid 9, oracle 9, shaman 9, sorcerer 9, wizard 9",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "You surround yourself with a buffeting shroud of supernatural, tornado-force winds. These winds grant you a fly speed of 60 feet with perfect maneuverability.",
                          desc: "You surround yourself with a buffeting shroud of supernatural, tornado-force winds. These winds grant you a fly speed of 60 feet with perfect maneuverability. Neither your armor nor your load affects this fly speed. The winds shield you from any other wind effects, and form a shell of breathable air around you, allowing you to fly and breathe underwater or in outer space. Ranged weapons (including giant-thrown boulders, siege weapon projectiles, and other massive ranged weapons) passing through the winds are deflected by the winds and automatically miss you. Gases and most gaseous breath weapons cannot pass though the winds. In addition, when a creature hits you with a melee attack, you can shape your winds so they lash out at that creature as an immediate action. The creature must make a Fortitude saving throw or take 5d8 points of bludgeoning damage and be knocked prone (if on the ground). On a failed save, Huge flying creatures are checked and Large-sized or smaller flying creatures are blown away instead of knocked prone. On a successful save, the damage is halved and the creature is not knocked prone (or checked or blown away).",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("World Wave", school: "Transmutation", levels: "arcanist 9, druid 9, sorcerer 9, wizard 9",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "see text", area: "see text", targets: "",
                          duration: "1 round/level or 1 hour/level; see text (D)",
                          savingThrow: "none;", sr: true,
                          summary: "You cause any sort of natural terrain (including water, forest, desert, tundra, and so on) to surge beneath your feet and safely propel you with devastating force over great distances.",
                          desc: "You cause any sort of natural terrain (including water, forest, desert, tundra, and so on) to surge beneath your feet and safely propel you with devastating force over great distances. This wave of terrain undulates as it passes over the world, harmlessly lifting or stretching objects, creatures, and phenomena with a connection to nature but tearing through and damaging anything else it encounters. When you cast the spell you must choose the wave’s type, either a tsunami or a swell. If you choose a tsunami, you create a 30-foot-high tidal wave of earth or water hurtling across the landscape that lasts for 1 round per level. If you choose a swell, you create a more controlled and gentle 5-foot-high wave that lasts for 1 hour per level. Regardless of its form or composition, the crest of the wave extends 10 feet in front of and behind you, and 5 feet per level to both your left and right. You can stand or sit on the crest of this wave without any fear of falling off it and can even lie down and sleep (or take any other actions you could take if standing on solid ground) as it travels. You can grant up to one additional creature per level the ability to safely accompany you on this wave. When you first create the wave, you must choose its path by facing the direction you wish it to travel. Once you make this decision, you cannot change it. The wave, in either version, moves at eight times your base land speed. Any object, creature, or phenomena strongly connected to, or a part of, the natural world simply rises up and down with the wave as it passes, taking no damage or injury. However, anything else coming into contact with the wave takes either 6d6 points of bludgeoning damage (if the tsunami) or 1d6 points of bludgeoning damage (if the swell). The wave damages any manufactured object or structure. On the Material Plane, it also damages any creature of the aberration, construct, outsider, or undead type, or with the extraplanar subtype. Creatures with the construct or undead type take double damage from the wave. Other creatures, or creatures with even one druid class level (regardless of their type), are considered a part of the natural world and are unaffected by the wave. Note that on other planes of existence, what is considered to be a part of the natural world may vary at the GM’s discretion. The wave can travel up or down the sides of natural features so long as it does not exceed a 45-degree angle. You cannot alter the dimensions of the wave as it travels. If the wave encounters terrain that it cannot incorporate into itself, the wave simply flows over or around the obstacle (creatures riding the wave are harmlessly displaced to the side to avoid the obstacle) unless the terrain occupies one-half or more of the area of the wave’s crest. In such cases the spell ends in 1d6 rounds as the wave falters and collapses, unless its duration would normally cause it to expire prior to that. The momentum of the wave carries you forward through this new terrain without any injury until it collapses, at which point you suffer the normal effects of the terrain in which you are deposited. Terrain the wave cannot incorporate includes anything primarily made from fire (such as lava), air (such as an open cliff face), or something man-made (such as a city). You can only create the wave if standing on the ground. You cannot create it when underground or on terrain that it cannot incorporate.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Wrath", school: "Enchantment (Compulsion)", levels: "inquisitor 1",
                          castingTime: "1 standard action", components: "V, S, M (a thorny vine)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You focus your anger against an enemy. Choose one enemy creature that you can see.",
                          desc: "You focus your anger against an enemy. Choose one enemy creature that you can see. You gain a +1 morale bonus on attack rolls and weapon damage rolls against that designated creature for every three caster levels you have (at least +1, maximum +3). You also receive this bonus on caster level checks made to overcome the creature’s spell resistance, if any. At 12th level, you gain the benefits of the Improved Critical feat on attack rolls made against the designated creature. This effect doesn’t stack with any other effect that expands the threat range of a weapon. Shared Wrath",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Wrathful Mantle", school: "Evocation", levels: "cleric 3, oracle 3, paladin 3, warpriest 3",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch or 5 ft.; see text", area: "", targets: "creature touched or all creatures within 5 ft.; see text",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "A shimmering mantle of light shrouds the subject, casting light like a torch.",
                          desc: "A shimmering mantle of light shrouds the subject, casting light like a torch. The subject of the spell gains a +1 resistance bonus on all saving throws per four caster levels (maximum +5 at 20th level). The subject can end the wrathful mantle at any time as a swift action to deal 2d8 points of force damage to all creatures within 5 feet.",
                          source: "Advanced Player's Guide", isPremium: true),

                    // // MARK: - Advanced Race Guide
        )
        try await db.insertSpell(
        .make("Aboleth's Lung", school: "Transmutation", levels: "arcanist 2, cleric 2, druid 2, hunter 2, oracle 2, redmantisassassin 2, sorcerer 2, warpriest 2, witch 2, wizard 2 (gillman)",
                          castingTime: "1 standard action", components: "V, S, M/DF (piece of seaweed)",
                          range: "touch", area: "", targets: "living creatures touched",
                          duration: "1 hour/level; see text",
                          savingThrow: "Will negates;", sr: true,
                          summary: "The targets are able to breathe water, freely. However, they can no longer breathe air. Divide the duration evenly among all the creatures you touch.",
                          desc: "The targets are able to breathe water, freely. However, they can no longer breathe air. Divide the duration evenly among all the creatures you touch. This spell has no effect on creatures that can already breathe water.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Absorbing Inhalation", school: "Transmutation", levels: "alchemist 4, arcanist 4, bloodrager 4, druid 4, hunter 4, investigator 4, redmantisassassin 4, sahirafiyun 4, sorcerer 4, wizard 4 (sylph)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one cloud-like effect, up to one 10-ft. cube/level",
                          duration: "1 round/level; see text",
                          savingThrow: "see text;", sr: false,
                          summary: "You grant your lungs inhuman strength and capacity, allowing you to harmlessly and completely inhale one gas, fog, smoke, mist, or similar cloud-like effect.",
                          desc: "You grant your lungs inhuman strength and capacity, allowing you to harmlessly and completely inhale one gas, fog, smoke, mist, or similar cloud-like effect. If the targeted cloud is a magical effect, you must succeed at a caster level check (DC 11 + the effect’s caster level) to inhale it. Inhaling the cloud removes it from the area, leaving normal air in its place. If the cloud is too large for you to affect with a single casting of this spell, you may instead inhale a portion of the cloud, but you must inhale the portion of the cloud closest to you. This spell has no effect on gaseous creatures. It can only affect an instantaneous-duration cloud (such as a breath weapon) if you ready an action to cast the spell in response. While inhaled, the cloud does not harm you. You may keep the cloud harmlessly contained within you for up to 1 round per level, but you must hold your breath to do so (even if you do not normally have to breathe). If the cloud has a duration, the time the cloud is contained within you counts toward that duration. As a standard action, you may release the stored cloud as a breath weapon, filling a 60-foot cone (or the cloud’s original area, if smaller than a 60-foot cone). Any creature in the breath’s area is subject to its normal effects, making saving throws and spell resistance checks as appropriate against the cloud’s original DC. The exhaled cloud resumes its duration, if any. Exhaling the stored cloud ends this spell. If you do not exhale the cloud before this spell’s duration expires, you suffer the cloud’s effects and automatically fail any saving throw to resist it.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Agonizing Rebuke", school: "Illusion (Phantasm)", levels: "antipaladin 2, cleric 3, inquisitor 3, mesmerist 3, oracle 3, psychic 3, warpriest 3, witch 3 (hobgoblin)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "With a word and a gesture, you instill such apprehension about attacking you in your target that doing so causes it mental distress and pain.",
                          desc: "With a word and a gesture, you instill such apprehension about attacking you in your target that doing so causes it mental distress and pain. Each time the target makes an attack against you, targets you with a harmful spell, or otherwise takes and action that would harm you, it takes 2d6 points of nonlethal damage.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Alchemical Tinkering", school: "Transmutation", levels: "arcanist 1, cleric 2, oracle 2, redmantisassassin 1, sorcerer 1, warpriest 2, witch 1, wizard 1 (ratfolk)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "firearm or alchemical item touched",
                          duration: "1 minute/level",
                          savingThrow: "Fortitude negates (object);", sr: true,
                          summary: "You transform one alchemical item or firearm into another alchemical item or firearm of the same or lesser cost. Magic items are unaffected by this spell.",
                          desc: "You transform one alchemical item or firearm into another alchemical item or firearm of the same or lesser cost. Magic items are unaffected by this spell. At the end of the spell’s duration, alchemical items used while transformed are destroyed and do not return to a usable state and firearms transformed revert back to their original type.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ancestral Regression", school: "Transmutation (Polymorph)", levels: "alchemist 2, antipaladin 3, arcanist 3, cleric 2, investigator 2, oracle 2, psychic 2, redmantisassassin 3, sorcerer 3, warpriest 2, witch 2, wizard 3 (drow)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "willing drow touched",
                          duration: "24 hours (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The target drow transforms into a surface elf. The drow loses her darkvision and light-blindness racial traits and gains the low-light vision racial trait in their place.",
                          desc: "The target drow transforms into a surface elf. The drow loses her darkvision and light-blindness racial traits and gains the low-light vision racial trait in their place. The alignment and personality of the drow are not affected by the transformation, but the spell conceals her alignment as an undetectable alignment spell. The spell grants the target a +10 bonus on Disguise checks to pass as an elf, though she appears to be an elven analog of herself and can be recognized as such by other drow who know her.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Battle Trance", school: "Enchantment (Compulsion)", levels: "alchemist 3, antipaladin 3, cleric 4, hunter 3, inquisitor 3, investigator 3, oracle 4, ranger 3, warpriest 4, witch 4 (half-orc)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "You are transformed into a single-minded force of destruction.",
                          desc: "You are transformed into a single-minded force of destruction. You gain the ferocity monster special ability, a number of temporary hit points equal to 1d6 + your caster level (maximum +10), and a +4 morale bonus on saving throws against mind-affecting effects. You cannot use the withdraw action or willingly move away from a creature that has attacked you. When you use this spell, you immediately take 4 points of Intelligence damage. You must make a DC 20 concentration check to cast spells, and all other concentration checks to cast spells have a –5 penalty.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Bestow Insight", school: "Enchantment (Compulsion)", levels: "arcanist 2, bard 2, cleric 3, inquisitor 2, medium 2, mesmerist 2, oracle 3, psychic 2, skald 2, sorcerer 2, warpriest 3, witch 2, wizard 2 (human)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "one creature touched",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "When casting this spell, choose a single skill that you have at least one rank in. The target gains a +2 insight bonus on skill checks with this skill and is considered trained in that skill.",
                          desc: "When casting this spell, choose a single skill that you have at least one rank in. The target gains a +2 insight bonus on skill checks with this skill and is considered trained in that skill. The insight bonus increases by 1 for every four levels of the caster (maximum +6). Furthermore, once before the spell’s duration, the target can choose to roll two checks and take the greater result. Doing so ends the spell’s other effects.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Binding Earth", school: "Transmutation", levels: "druid 2, hunter 2, witch 2 (oread)",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature or unattended object (see text)",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "If the target of this spell fails its Fortitude save, areas of earth and stone floor act as a snapping quagmire that pulls the target down and damages it if it attempts to move through such terrain.",
                          desc: "If the target of this spell fails its Fortitude save, areas of earth and stone floor act as a snapping quagmire that pulls the target down and damages it if it attempts to move through such terrain. If the target is a creature, it treats all areas of earth and stone it moves through as difficult terrain. Furthermore, for each 5 feet a creature moves through such areas, it takes 1d6 points of damage. Creatures with a burrow speed or the earth glide ability are unaffected by binding earth . If cast on an unattended object resting on an area of stone or earth, the stone or earth warps and wraps around it, pulling it firmly to the ground. A DC 15 Strength check is required to pull the object free from snapping earth or stone. Binding Earth, Mass",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Binding Earth, Mass", school: "Transmutation", levels: "druid 2, hunter 2, witch 2 (oread)",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature or unattended object (see text)",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "This spell functions as binding earth , except as noted above.",
                          desc: "This spell functions as binding earth , except as noted above.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Black Mark", school: "Necromancy", levels: "druid 7, witch 7 (human)",
                          castingTime: "1 standard action", components: "V, S, M (a flask of seawater)",
                          range: "touch", area: "", targets: "one creature",
                          duration: "permanent",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You mark the target with a black marking on its skin; the mark’s exact appearance determined by you, but can be no larger than your hand. The black mark functions as a",
                          desc: "You mark the target with a black marking on its skin; the mark’s exact appearance determined by you, but can be no larger than your hand. The black mark functions as a",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Blend", school: "Illusion (Glamer)", levels: "alchemist 1, arcanist 1, druid 1, hunter 1, investigator 1, magus 1, mesmerist 1, psychic 1, ranger 1, redmantisassassin 1, shaman 1, sorcerer 1, witch 1, wizard 1 (elf)",
                          castingTime: "1 standard action", components: "S",
                          range: "personal", area: "", targets: "you",
                          duration: "10 minutes/level",
                          savingThrow: "None", sr: false,
                          summary: "You draw upon your elven link to the wilderness to change the coloration of yourself and your equipment to match that of your surroundings.",
                          desc: "You draw upon your elven link to the wilderness to change the coloration of yourself and your equipment to match that of your surroundings. This grants you a +4 circumstance bonus on Stealth checks and allows you to make Stealth checks without cover or concealment, but only while you move no more than half your base speed or less. If you move more than half your base speed on your turn, you gain no benefit from this spell until the start of your next turn. If you make an attack, this spell ends (as invisibility).",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Blessing of Luck and Resolve", school: "Enchantment (Compulsion)", levels: "cleric 2, inquisitor 2, oracle 2, paladin 2, warpriest 2 (halfling)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "one living creature touched",
                          duration: "1 minute/level (D), special see below",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "A favored blessing of halfling clerics, this spell grants its target a +2 morale bonus on saving throws against fear effects.",
                          desc: "A favored blessing of halfling clerics, this spell grants its target a +2 morale bonus on saving throws against fear effects. If the target has the fearless racial trait, it is immune to fear instead. If the target fails a saving throw against fear, it can end the spell as an immediate action to reroll the save with a +4 morale bonus, and must take the new result, even if it is worse. Blessing of Luck and Resolve, Mass",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Blessing of Luck and Resolve, Mass", school: "Enchantment (Compulsion)", levels: "cleric 2, inquisitor 2, oracle 2, paladin 2, warpriest 2 (halfling)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "one living creature touched",
                          duration: "1 minute/level (D), special see below",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions like blessing of luck and resolve , except that it affects multiple creatures.",
                          desc: "This spell functions like blessing of luck and resolve , except that it affects multiple creatures.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Blinding Ray", school: "Evocation", levels: "cleric 2, inquisitor 3, oracle 2, paladin 2, warpriest 2 (dhampir)",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one or more rays of light", targets: "",
                          duration: "instantaneous (see text)",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "You blast your enemies with blinding rays of sunlight. You may fire one ray, plus one additional ray for every four levels beyond 3rd (to a maximum of three rays at 11th level).",
                          desc: "You blast your enemies with blinding rays of sunlight. You may fire one ray, plus one additional ray for every four levels beyond 3rd (to a maximum of three rays at 11th level). Each ray requires a ranged touch attack to hit. If a ray hits, it explodes into powerful motes of light, and the target must save or be blinded for 1 round. If the target has light blindness, light sensitivity, or is otherwise vulnerable to bright light, it instead must save or be blinded for 1d4 rounds and take 1d4 points of damage per two caster levels (maximum 5d4). Any creature blinded by a ray sheds light as a sunrod for the duration of its blindness. The rays may be fired at the same or different targets, but all rays must be aimed at targets within 30 feet of each other and fired simultaneously.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Blood Blaze", school: "Transmutation", levels: "alchemist 2, antipaladin 1, arcanist 2, bloodrager 2, cleric 2, investigator 2, magus 2, oracle 2, psychic 2, redmantisassassin 2, sorcerer 2, warpriest 2, witch 2, wizard 2 (orc)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 round/level (D)",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "The target gains a 5-foot-radius aura that causes the blood of creatures in that area to ignite upon contact with air.",
                          desc: "The target gains a 5-foot-radius aura that causes the blood of creatures in that area to ignite upon contact with air. Any creature (including the spell’s target) within the aura that takes at least 5 points of piercing, slashing, or bleed damage from a single attack automatically creates a spray of burning blood. The spray strikes a creature in a randomly determined square adjacent to the injured creature. The spray deals 1d6 points of fire damage to any creature in that square, and 1 point of splash damage to all creatures within 5 feet of the spray’s target, including the target of this spell. A creature can only create one spray of burning blood per round. Creatures that do not have blood (including oozes and most constructs and undead) do not create blood sprays when attacked.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Blood Scent", school: "Transmutation", levels: "alchemist 3, antipaladin 2, arcanist 3, bloodrager 3, cleric 3, druid 3, hunter 2, inquisitor 3, investigator 3, oracle 3, psychic 3, ranger 2, redmantisassassin 3, sorcerer 3, warpriest 3, witch 3, wizard 3 (orc)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature/2 levels, no two of which can be more than 30 ft. apart",
                          duration: "1 minute/level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You greatly magnify the target’s ability to smell the presence of blood.",
                          desc: "You greatly magnify the target’s ability to smell the presence of blood. The target is considered to have the scent universal monster ability, but only for purposes of detecting and pinpointing injured creatures (below full hit points). Creatures below half their full hit points or suffering bleed damage are considered strong scents for this ability. Orcs and any creature under the effects of rage gain a +2 morale bonus on attack and damage rolls against creatures they can smell with this spell, or a +4 morale bonus if the target’s blood counts as a strong scent.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Chains of Fire", school: "Evocation", levels: "arcanist 6, magus 6, sorcerer 6, wizard 6 (ifrit)",
                          castingTime: "1 standard action", components: "V, S, F (a drop of oil and a small piece of flint)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one primary target, plus one secondary target/level (each of which must be within 30 ft. of the primary target)",
                          duration: "instantaneous",
                          savingThrow: "Reflex half;", sr: true,
                          summary: "This spell functions like chain lightning , except as noted above, and the spell deals fire damage instead of electricity damage.",
                          desc: "This spell functions like chain lightning , except as noted above, and the spell deals fire damage instead of electricity damage.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Cloud Shape", school: "Transmutation", levels: "arcanist 4, druid 4, hunter 4, ranger 4, redmantisassassin 4, sorcerer 4, wizard 4 (sylph)",
                          castingTime: "1 standard action", components: "S, M/DF (a bit of gauze and a wisp of smoke)",
                          range: "personal", area: "", targets: "you",
                          duration: "10 min./level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like gaseous form , except you assume the shape of a Colossal cloud with a space of 30 feet.",
                          desc: "This spell functions like gaseous form , except you assume the shape of a Colossal cloud with a space of 30 feet. You choose the general appearance of the cloud (white, stormy, fluffy, flat, and so on), after which your appearance cannot be changed. Even the closest inspection cannot reveal that the cloud in question is actually a magically concealed creature. To all normal tests you are, in fact, a cloud, although a",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Commune with Birds", school: "Divination", levels: "arcanist 2, bard 2, druid 1, hunter 1, mesmerist 2, psychic 2, ranger 1, shaman 2, skald 2, sorcerer 2, witch 2, wizard 2 (tengu)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "10 minutes; see text",
                          savingThrow: "None", sr: false,
                          summary: "You utter a question in the form of a low-pitched bird call that can be heard up to a mile away, and can understand the responses given by birds in the area.",
                          desc: "You utter a question in the form of a low-pitched bird call that can be heard up to a mile away, and can understand the responses given by birds in the area. Over the next 10 minutes, the birds reply as if you had asked them the question using speak with animals , giving you a general consensus answer to the question based on their knowledge. For example, you could ask if there is drinkable water in the area, the location of predators or other creatures, directions to a mountaintop or other natural feature, and so on, and the local bird communities would answer to the best of their ability. If there are no birds in range, the spell has no effect and you do not get a response. Any creature using",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Damnation Stride", school: "Conjuration (Teleportation)", levels: "arcanist 5, sorcerer 5, summoner 4, summoner (unchained) 4, witch 5, wizard 5 (tiefling)",
                          castingTime: "1 standard action", components: "V",
                          range: "long (400 ft. + 40 ft./level)", area: "", targets: "you (teleportation) and creatures within a 10-foot-radius burst (burst of flame) (see text)",
                          duration: "instantaneous",
                          savingThrow: "Reflex half, see text;", sr: false,
                          summary: "This spell functions like dimension door , except you leave behind a burst of fire. Choose one corner of your starting square.",
                          desc: "This spell functions like dimension door , except you leave behind a burst of fire. Choose one corner of your starting square. A 10-foot-radius burst of flame explodes from that corner the moment you leave, dealing 4d6 points of fire damage.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Death Candle", school: "Necromancy", levels: "antipaladin 1, cleric 2, inquisitor 2, oracle 2, warpriest 2, witch 2 (ifrit)",
                          castingTime: "1 round", components: "V, S",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "instantaneous/1 round per HD of subject; see text",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "This spell functions like death knell , except instead of using the slain target’s life energy to enhance yourself, you use it to summon a Small fire elemental resembling a burning, howling version…",
                          desc: "This spell functions like death knell , except instead of using the slain target’s life energy to enhance yourself, you use it to summon a Small fire elemental resembling a burning, howling version of the slain creature. The elemental acts immediately on your turn and otherwise behaves as if you had summoned it with",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Death from Below", school: "Abjuration", levels: "arcanist 2, bard 3, bloodrager 2, skald 3, sorcerer 2, wizard 2 (gnome)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "You grant the target a dodge bonus to its Armor Class against attacks from larger creatures.",
                          desc: "You grant the target a dodge bonus to its Armor Class against attacks from larger creatures. The bonus is equal to +1 for every size category the attacker is larger than the target of the spell, to a maximum of +1 per 3 caster levels. If the spell’s target is a gnome, the maximum bonus is equal to +1 per 2 caster levels.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Delay Disease", school: "Conjuration (Healing)", levels: "alchemist 2, cleric 2, druid 2, hunter 2, inquisitor 2, investigator 2, mesmerist 2, oracle 2, paladin 2, ranger 2, warpriest 2, witch 1 (ratfolk)",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 day",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "The target becomes temporarily immune to disease. Any disease to which it is exposed during the spell’s duration does not affect the target until the spell’s duration has expired.",
                          desc: "The target becomes temporarily immune to disease. Any disease to which it is exposed during the spell’s duration does not affect the target until the spell’s duration has expired. If the target is currently infected with a disease, you must make a caster level check against the disease’s DC to suspend it for the duration of the spell; otherwise, that disease affects the target normally. Delay disease does not cure any damage a disease may have already done.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Earth Glide", school: "Transmutation", levels: "alchemist 4, arcanist 4, bloodrager 4, druid 4, hunter 4, investigator 4, redmantisassassin 4, shaman 4, sorcerer 4, wizard 4 (svirfneblin)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 round/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The target can pass through stone, dirt, or almost any other sort of earth except metal as easily as a fish swims through water, traveling at a speed of 5 feet.",
                          desc: "The target can pass through stone, dirt, or almost any other sort of earth except metal as easily as a fish swims through water, traveling at a speed of 5 feet. If protected against fire damage, it can move through lava. This movement leaves behind no tunnel or hole, nor does it create any ripple or other sign of its presence. It requires as much concentration as walking, so the subject can attack or cast spells normally, but cannot charge or run. Casting move earth on an area containing the target flings the target back 30 feet, stunning it for 1 round (DC 15 Fortitude negates). This spell does not give the target the ability to breathe underground, so when passing through solid material, the creature must hold its breath.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Escaping Ward", school: "Abjuration", levels: "arcanist 2, bard 2, hunter 2, inquisitor 2, magus 2, ranger 2, skald 2, sorcerer 2, wizard 2 (halfling)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "This ward grants you extra maneuverability when you avoid attacks against larger foes.",
                          desc: "This ward grants you extra maneuverability when you avoid attacks against larger foes. While affected by this spell, when you are attacked and missed by a creature that is at least one size category larger than you, you can, as an immediate action, move up to 5 feet away from the attacking creature. You can increase this movement by 5 feet for every 5 caster levels. This movement does not provoke attacks of opportunity.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Fearsome Duplicate", school: "Illusion (Figment)", levels: "arcanist 3, bard 3, inquisitor 3, mesmerist 3, psychic 3, redmantisassassin 3, skald 3, sorcerer 3, witch 3, wizard 3 (halfling)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "monstrously distorted duplicate of you", targets: "",
                          duration: "1 minute/level (D)",
                          savingThrow: "Will disbelief (if interacted with);", sr: false,
                          summary: "You create a larger and far more menacing version of yourself that you can send forth, manipulate like a puppet, and use to interact with others.",
                          desc: "You create a larger and far more menacing version of yourself that you can send forth, manipulate like a puppet, and use to interact with others. You can make the duplicate up to two size categories larger than you are and determine a theme as to how it alters your original appearance. However, this duplicate always retains some vestiges of your actual appearance. Creatures who already know you gain a +2 bonus on saving throws made to disbelieve this spell. Your duplicate has no actual substance, and you cannot use it to alter its surroundings or to attack or otherwise harm creatures it encounters. You can use the duplicate to speak, and interact verbally with creatures using the Bluff, Diplomacy, and Intimidate skills, and you gain a +2 competence bonus on Intimidate checks when using that skill through the duplicate. You can see, hear, taste, and smell your duplicate’s surroundings as if you are actually present using your Perception skill. While you also remain aware of your own immediate surroundings when controlling your duplicate, controlling it does take a toll on your senses. You take a –4 penalty on Perception checks while you control your duplicate. The duplicate moves under your mental command, and while you need not act out its movements, you must take a standard action to control your duplicate for 1 round (concentrating on the spell) or it winks out of existence. You can maintain control of your duplicate even if you have no line of sight or line of effect to it. The duplicate immediately winks out of existence if it is hit by an attack or in the area of a damaging effect, or if it moves beyond the maximum range of the spell.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Fins to Feet", school: "Transmutation (Polymorph)", levels: "arcanist 3, druid 3, hunter 3, redmantisassassin 3, shaman 3, sorcerer 3, witch 3, wizard 3 (merfolk)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "willing creature touched",
                          duration: "1 hour/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "You transform the target’s fins, flippers, or tail into legs and feet, allowing it to walk on land.",
                          desc: "You transform the target’s fins, flippers, or tail into legs and feet, allowing it to walk on land. The target loses its swim speed but gains a base speed appropriate for a humanoid of its size (speed 30 if a Medium or larger creature, speed 20 if Small). If the creature is immersed in water for 1 round, the transformation reverts, allowing it to swim normally. One round after leaving the water, the transformation occurs again, allowing it to walk. This spell only works on merfolk, tritons, seals, fish, and other creatures whose bodies or limbs are used mainly for swimming and are not suitable for walking. It does not give the target the ability to breathe air.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Fire Trail", school: "Transmutation", levels: "alchemist 3, arcanist 3, bloodrager 3, investigator 3, magus 3, redmantisassassin 3, sorcerer 3, wizard 3 (goblin)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "trail of flame that follows the caster’s movements; see text", targets: "",
                          duration: "1 round/level",
                          savingThrow: "none;", sr: true,
                          summary: "When you cast this spell, flammable liquid oozes from your pores, dripping onto the ground and spontaneously combusting. The flame does not harm you.",
                          desc: "When you cast this spell, flammable liquid oozes from your pores, dripping onto the ground and spontaneously combusting. The flame does not harm you. During this spell’s duration, each time you leave your space, you create a trail of fire that burns within the spaces you move through for 1 round before it burns out. You can leave up to 60 feet of flame trail each round, assuming you are Small or Medium. If you are larger than Medium, the maximum trail length is reduced based on your size. If you are Large, you can leave a trail up to 30 feet long (and 10 feet wide), and if you are Huge, you can leave a trail up to 15 feet long (and 15 feet wide); even larger casters can only leave a trail up to 10 feet long (and as wide as your space) each round. You choose where to leave a flame trail. Creatures that start their turn adjacent to the flame trail take 1d6 points of fire damage. Creatures that start their turn within the flame trail or that enter an area of flame take a number of points of fire damage equal to 1d6 + 1 per caster level (maximum +10). If a creature moves into an area of the flame trail multiple times in a round, it takes this damage each time it enters the area of the flame trail. Flammable objects in or adjacent to the fire trail catch fire.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Firestream", school: "Evocation", levels: "arcanist 3, bloodrager 3, magus 3, sorcerer 3, wizard 3 (ifrit)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "20 ft.", area: "20-ft. line", targets: "",
                          duration: "concentration, up to 1 round/level; see text",
                          savingThrow: "Reflex half;", sr: true,
                          summary: "A rushing stream of fire sprays from your outstretched hand, dealing 2d6 points of fire damage to every creature in the area.",
                          desc: "A rushing stream of fire sprays from your outstretched hand, dealing 2d6 points of fire damage to every creature in the area. Each round you continue to concentrate on the spell, you can select a new area for it to affect. Firestream sets fire to combustibles and damages objects in the area. It can melt metals with low melting points, such as lead, gold, copper, silver, and bronze. If the damage caused to an interposing barrier shatters or breaks through it, the firestream may continue beyond the barrier if the area permits; otherwise it stops at the barrier just as any other spell effect does.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Forgetful Slumber", school: "Enchantment (Compulsion)", levels: "arcanist 4, bard 4, mesmerist 4, psychic 4, skald 4, sorcerer 4, witch 4, wizard 4 (half-elf)",
                          castingTime: "1 round", components: "V, S, M (a few drops of river water)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "1 minute/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell acts as the deeper slumber spell, but only affects one creature of 10 Hit Dice or fewer.",
                          desc: "This spell acts as the deeper slumber spell, but only affects one creature of 10 Hit Dice or fewer. In addition, a creature affected by this spell awakens with no knowledge of the events that led to the spell’s casting. The target loses all memory from the 5 minutes prior to falling asleep. No effect short of a",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Fury of the Sun", school: "Transmutation", levels: "druid 2, hunter 2, witch 2 (ifrit)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "10 minutes/level",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "You curse the target to suffer unbearable heat. On a failed saving throw, the target is immediately subjected to severe heat , takes 1d4 points of nonlethal damage, and is suffering from heatstroke…",
                          desc: "You curse the target to suffer unbearable heat. On a failed saving throw, the target is immediately subjected to severe heat , takes 1d4 points of nonlethal damage, and is suffering from heatstroke (fatigued). The target must save every 10 minutes as normal for severe heat (starting at DC 15 rather than the DC of this spell). Because this heat is internal, the target cannot avoid it using the normal methods for escaping heat dangers such as Survival checks or finding shade.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Gloomblind Bolts", school: "Conjuration (Creation)", levels: "arcanist 3, bloodrager 3, magus 3, sorcerer 3, witch 3, wizard 3 (fetchling)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "one or more bolts of energy", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Reflex negates, see text;", sr: true,
                          summary: "You create one or more bolts of negative energy infused with shadow pulled from the Shadow Plane.",
                          desc: "You create one or more bolts of negative energy infused with shadow pulled from the Shadow Plane. You can fire one bolt, plus one for every four levels beyond 5th (to a maximum of three bolts at 13th level) at the same or different targets, but all bolts must be aimed at targets within 30 feet of each other and require a ranged touch attack to hit. Each bolt deals 4d6 points of damage to a living creature or heals 4d6 points of damage to an undead creature. Furthermore, the bolt’s energy spreads over the skin of creature, possibly blinding it for a short time. Any creature struck by a bolt must succeed at a Reflex saving throw or become blinded for 1 round.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Groundswell", school: "Transmutation", levels: "cleric 2, druid 2, hunter 2, magus 2, oracle 2, ranger 2, warpriest 2 (dwarf)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "This spell allows the target to cause the ground to rise up beneath him. As a swift action, the target can cause the ground to rise 5 feet, while all adjacent squares are treated as steep slopes.",
                          desc: "This spell allows the target to cause the ground to rise up beneath him. As a swift action, the target can cause the ground to rise 5 feet, while all adjacent squares are treated as steep slopes. The groundswell precludes flanking from creatures standing at lower elevations than the target. If the target moves after creating a",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Gusting Sphere", school: "Evocation", levels: "arcanist 2, bloodrager 2, druid 2, hunter 2, magus 2, sorcerer 2, wizard 2 (sylph)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "5-ft.-diameter sphere of air", targets: "",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates (object) or Reflex negates, see text;", sr: true,
                          summary: "A swirling ball of wind rolls in whichever direction you point, hurling those it strikes with great force.",
                          desc: "A swirling ball of wind rolls in whichever direction you point, hurling those it strikes with great force. The sphere is treated in all ways as an area of severe wind , applying a –4 penalty on ranged weapon attacks that pass through it. The sphere moves 30 feet per round. As part of this movement, it can ascend or jump up to 30 feet to strike a target. If it enters a space containing a Medium or smaller creature, it stops moving for that round and generates a sharp thrust of wind to bull rush the creature. The sphere’s CMB for bull rush combat maneuvers uses your caster level in place of its base attack bonus, with a +2 bonus for its Strength score (14). Whether or not the bull rush is successful, the creature takes 1d6 points of nonlethal bludgeoning damage from the attack. If the bull rush fails, the creature is still subject to the severe winds from the sphere as long as they remain in the same square as it. A gusting sphere rolls over objects or barriers that are less than 4 feet tall. The sphere moves as long as you actively direct it (a move action for you); otherwise, it merely stays at rest. A",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Half-Blood Extraction", school: "Transmutation", levels: "alchemist 5, arcanist 5, cleric 5, druid 5, hunter 5, investigator 5, oracle 5, psychic 5, sorcerer 5, warpriest 5, witch 5, wizard 5 (half-orc)",
                          castingTime: "1 hour", components: "V, S, M/DF (oils and poisons worth 3,000 gp)",
                          range: "touch", area: "", targets: "willing half-orc touched",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "You transform the target half-orc into a full-blooded orc. The target loses all of its half-orc racial traits and gains the orc racial traits.",
                          desc: "You transform the target half-orc into a full-blooded orc. The target loses all of its half-orc racial traits and gains the orc racial traits.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Healing Warmth", school: "Abjuration", levels: "alchemist 4, cleric 4, druid 4, hunter 4, inquisitor 4, investigator 4, oracle 4, psychic 4, warpriest 4 (ifrit)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "This spell grants you temporary immunity to fire damage as protection from energy .",
                          desc: "This spell grants you temporary immunity to fire damage as protection from energy . As a standard action, you may sacrifice 12 points of remaining energy absorption from the spell to heal a touched creature of 1d8 points of damage. Healing a creature provokes an attack of opportunity. When the spell has absorbed 12 points of fire damage per caster level (to a maximum of 120 points at 10th level), it is discharged.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hellmouth Lash", school: "Transmutation", levels: "arcanist 4, bloodrager 4, redmantisassassin 4, sorcerer 4, witch 4, wizard 4 (tiefling)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "Upon casting this spell, your tongue transforms into an energy whip weapon that can deal acid, electricity, or fire damage. You choose what type of energy damage the spell deals when you cast it.",
                          desc: "Upon casting this spell, your tongue transforms into an energy whip weapon that can deal acid, electricity, or fire damage. You choose what type of energy damage the spell deals when you cast it. You attack with your tongue as if it were a whip, except you make touch attacks with it and it can harm creatures with armor or natural armor bonuses. You are considered proficient with this weapon. A successful touch attack with the tongue deals 1d8 points of energy damage per two caster levels (maximum of 5d8 points of damage at 10th level). While the spell is in effect, you cannot speak, cast spells requiring verbal components, or activate items requiring command words. The spell has the acid, electricity, or fire descriptor, depending on what type of energy damage you chose when you cast it.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Imbue with Elemental Might", school: "Evocation", levels: "arcanist 2, bloodrager 2, cleric 2, magus 2, oracle 2, shaman 2, sorcerer 2, warpriest 2, wizard 2",
                          castingTime: "10 minutes", components: "V, S",
                          range: "touch", area: "", targets: "creature touched; see text",
                          duration: "24 hours or until discharged (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions like imbue with spell ability , except you transfer the use of your elemental assault ability to the target.",
                          desc: "This spell functions like imbue with spell ability , except you transfer the use of your elemental assault ability to the target. The target must have an Intelligence score of at least 5 to use the ability. The imbued elemental assault functions exactly like yours, except the ability’s duration is based on the target’s level or Hit Dice. Once you cast this spell, you cannot use your elemental assault ability until the duration of the spell is over.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Improve Trap", school: "Transmutation", levels: "antipaladin 2, arcanist 3, druid 3, hunter 2, inquisitor 3, ranger 2, redmantisassassin 3, sorcerer 3, witch 3, wizard 3 (kobold)",
                          castingTime: "1 minute", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one trap",
                          duration: "instantaneous",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "When this spell is cast upon a trap, it improves one specific element of the trap chosen at the time of casting.",
                          desc: "When this spell is cast upon a trap, it improves one specific element of the trap chosen at the time of casting. The caster can improve the trap in any of the following ways (each one raises the trap’s CR by +1). Increase DC of the Perception check required to locate the trap by +5. Increase DC of the Disable Device check required to disarm trap by +5. Increase the trap’s attack bonus or saving throw by +2. To cast this on a trap, you must know that the trap exists and its precise location. A trap can only have one improvement from this spell at a time. A second casting changes the improvement on the trap, but does not add another improvement.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ironbeard", school: "Transmutation", levels: "antipaladin 1, cleric 1, hunter 1, magus 1, oracle 1, paladin 1, ranger 1, warpriest 1 (dwarf)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "This spell causes a brushy beard of stiff iron to erupt from the face of a willing target. The ironbeard grants a +1 armor bonus to AC, and this bonus stacks with any armor worn by the creature. The",
                          desc: "This spell causes a brushy beard of stiff iron to erupt from the face of a willing target. The ironbeard grants a +1 armor bonus to AC, and this bonus stacks with any armor worn by the creature. The",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Jitterbugs", school: "Illusion (Figment)", levels: "arcanist 2, bard 1, mesmerist 1, psychic 2, redmantisassassin 2, skald 1, sorcerer 2, wizard 2 (gnome)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "short (25 ft. +5 ft. 2/levels)", area: "", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "You cause the target to perceive itself as being covered in creeping, crawling, stinging bugs.",
                          desc: "You cause the target to perceive itself as being covered in creeping, crawling, stinging bugs. This causes the target to become jittery and unable to stay still, forcing it to constantly move and twitch. The target takes a –4 penalty on all Dexterity checks and Dexterity-based skill checks, and cannot take the delay, ready, or total defense actions.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Karmic Blessing", school: "Divination", levels: "cleric 1, oracle 1, warpriest 1, witch 1 (samsaran)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "The target treats one skill of your choice as a class skill.",
                          desc: "The target treats one skill of your choice as a class skill.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Life Channel", school: "Transmutation", levels: "cleric 2, oracle 2, warpriest 2 (dhampir)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "one touched creature with negative energy affinity",
                          duration: "1 minute/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "When cast on a creature with negative energy affinity, the target is able to convert channeled positive energy into temporary hit points.",
                          desc: "When cast on a creature with negative energy affinity, the target is able to convert channeled positive energy into temporary hit points. When subject to an effect that heals hit points only to living creatures (such as cure light wounds or channel positive energy), the target gains a number of temporary hit points equal to half the number of hit points that the positive energy would normally heal. These temporary hit points go away at the end of this spell’s duration.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Linebreaker", school: "Transmutation", levels: "alchemist 1, antipaladin 1, hunter 1, inquisitor 1, investigator 1, magus 1, paladin 1, ranger 1 (half-orc)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "You gain a +20 foot bonus to your base speed when charging and a +2 bonus on combat maneuver checks made to bull rush or overrun.",
                          desc: "You gain a +20 foot bonus to your base speed when charging and a +2 bonus on combat maneuver checks made to bull rush or overrun.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Major Phantom Object", school: "Illusion (Shadow)", levels: "arcanist 5, mesmerist 5, psychic 5, sorcerer 5, wizard 5 (gnome)",
                          castingTime: "10 minutes", components: "V, S, M (a tiny piece of matter of the same sort of item you plan to create with major phantom object)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "illusory, unattended, nonmagical object, up to 1 cu. ft./level", targets: "",
                          duration: "10 minutes/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as the major creation spell, except as noted above and the object created is a semi-real illusion.",
                          desc: "This spell functions as the major creation spell, except as noted above and the object created is a semi-real illusion. Any creature that interacts with the object may make a Will save, with success causing the object to cease to exist. A gnome casting this spell may make a Spellcraft check in place of any Craft check required to make a complex item.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Marid's Mastery", school: "Transmutation", levels: "arcanist 1, bloodrager 1, cleric 1, druid 1, hunter 1, oracle 1, ranger 1, redmantisassassin 1, sorcerer 1, warpriest 1, witch 1, wizard 1 (undine)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "willing creature touched",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The target gains a +1 bonus on attack and damage rolls if it and its opponent are touching water.",
                          desc: "The target gains a +1 bonus on attack and damage rolls if it and its opponent are touching water. If the opponent or the target is touching the ground, the target takes a –4 penalty on attack and damage rolls.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Miasmatic Form", school: "Transmutation", levels: "alchemist 4, arcanist 4, investigator 4, redmantisassassin 4, sorcerer 4, wizard 4 (sylph)",
                          castingTime: "1 standard action", components: "S, M (contact or inhaled poison worth 100 gp)",
                          range: "touch", area: "", targets: "willing corporeal creature touched",
                          duration: "1 minute/level",
                          savingThrow: "none, see text;", sr: false,
                          summary: "This spell functions like gaseous form , except the target’s vaporous body is dangerous to creatures that touch it.",
                          desc: "This spell functions like gaseous form , except the target’s vaporous body is dangerous to creatures that touch it. A creature can make a Fortitude save (DC 14 + your Intelligence modifier) on its turn to resist the vapors. When you cast this spell, you select one of the following options.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mighty Fist of the Earth", school: "Conjuration (Creation)", levels: "cleric 1, druid 1, hunter 1, oracle 1, warpriest 1 (oread)",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: true,
                          summary: "You create a fist-sized rock that flies toward one enemy. Make an unarmed strike attack roll against the target as if it were in your threatened area.",
                          desc: "You create a fist-sized rock that flies toward one enemy. Make an unarmed strike attack roll against the target as if it were in your threatened area. If the attack is successful, the rock deals bludgeoning damage to the target as if you had hit the target with your unarmed strike. If you have a ki pool, as long as you have at least 1 point in your",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Minor Dream", school: "Illusion (Figment)", levels: "alchemist 2, arcanist 3, bard 3, investigator 2, medium 2, mesmerist 3, psychic 3, redmantisassassin 3, skald 3, sorcerer 3, witch 2, wizard 3 (gnome)",
                          castingTime: "1 minute", components: "V, S",
                          range: "unlimited", area: "", targets: "you or one gnome touched",
                          duration: "see text",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as the dream spell, except as follows. The messenger must be yourself or a gnome touched. The message can be no longer than 20 words.",
                          desc: "This spell functions as the dream spell, except as follows. The messenger must be yourself or a gnome touched. The message can be no longer than 20 words. If the recipient of the message is not asleep when the spell is cast, the spell automatically fails.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Minor Phantom Object", school: "Illusion (Shadow)", levels: "arcanist 4, mesmerist 4, psychic 4, redmantisassassin 4, sorcerer 4, wizard 4 (gnome)",
                          castingTime: "1 minute", components: "V, S",
                          range: "0 ft.", area: "illusory, unattended, nonmagical object of nonliving plant matter, up to 1 cu. ft./level", targets: "",
                          duration: "10 minutes/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as the minor creation spell, except the object created is a semi-real illusion.",
                          desc: "This spell functions as the minor creation spell, except the object created is a semi-real illusion. Any creature that interacts with the object may make a Will save, with success causing the object to cease to exist. A gnome casting this spell may make a Spellcraft check in place of any Craft check required to make a complex item.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mudball", school: "Conjuration (Creation)", levels: "arcanist 1, bloodrager 1, druid 1, hunter 1, magus 1, sorcerer 1, witch 1, wizard 1 (goblin)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "single fist-sized blob of sticky mud", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Reflex negates, see text;", sr: false,
                          summary: "When you cast this spell, you conjure a single ball of sticky mud and launch it at an enemy’s face as a ranged touch attack. If the mudball hits, the target is blinded.",
                          desc: "When you cast this spell, you conjure a single ball of sticky mud and launch it at an enemy’s face as a ranged touch attack. If the mudball hits, the target is blinded. Each round at the beginning of its turn, a creature blinded by this spell can attempt a Reflex saving throw to shake off the mud, ending the effect. The mudball can also be wiped off by the creature affected by it or by a creature adjacent to the creature affected by it as a standard action.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Nereid's Grace", school: "Abjuration", levels: "druid 1, hunter 1, witch 1 (undine)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "You radiate the unearthly grace of a nereid. If you’re not wearing armor, you gain a deflection bonus to your AC and CMD equal to your Charisma bonus (maximum +3).",
                          desc: "You radiate the unearthly grace of a nereid. If you’re not wearing armor, you gain a deflection bonus to your AC and CMD equal to your Charisma bonus (maximum +3). The maximum increases by 1 for every 6 levels you possess (maximum +6 at 18th level).",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Nine Lives", school: "Abjuration", levels: "cleric 8, oracle 8, witch 8 (catfolk)",
                          castingTime: "1 standard action", components: "V, S, M/DF (a cat's whisker)",
                          range: "touch", area: "", targets: "one creature touched",
                          duration: "1 hour/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "Despite its name, this powerful ward does not grant the target multiple lives, but rather gives the target the ability to get out of trouble and relieves harmful effects and conditions.",
                          desc: "Despite its name, this powerful ward does not grant the target multiple lives, but rather gives the target the ability to get out of trouble and relieves harmful effects and conditions. For the spell’s duration, the target can use any of the following abilities as an immediate action, but only up to a total of nine times, at which point the spell ends. Cat’s Luck : The target can use this ability when it fails a saving throw. The target can reroll the failed saving throw, but must take the new result even if it is worse.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Nixie's Lure", school: "Enchantment (Charm)", levels: "arcanist 4, bard 3, druid 4, hunter 4, mesmerist 3, psychic 3, skald 3, sorcerer 4, summoner 4, summoner (unchained) 4, witch 4, wizard 4 (undine)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "300 ft.", area: "", targets: "all creatures within a 300-ft.-radius burst centered on you",
                          duration: "concentration + 1 round/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell creates an unearthly and infectious song that seductively summons all who hear it. Nixie’s lure affects a maximum of 24 Hit Dice of creatures.",
                          desc: "This spell creates an unearthly and infectious song that seductively summons all who hear it. Nixie’s lure affects a maximum of 24 Hit Dice of creatures. Creatures in the area who fail their saves are lured by the song and move toward you using the most direct means available. If the path leads them into a dangerous area such as through fire or off a cliff, the creatures each receive a second saving throw to end the effect before moving into peril. Creatures lured by the spell’s song can take no actions other than to defend themselves. A victim within 5 feet of you simply stands still and for the duration of the spell remains fascinated.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Old Salt's Curse", school: "Necromancy", levels: "druid 5, hunter 5, mesmerist 4, witch 5 (human)",
                          castingTime: "1 standard action", components: "V, S, M (a flask of seawater)",
                          range: "touch", area: "", targets: "one creature",
                          duration: "permanent",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You inflict a curse of the roiling sea upon the target, making it permanently sickened.",
                          desc: "You inflict a curse of the roiling sea upon the target, making it permanently sickened. Anytime the target is on or in the water more than a mile from shore, it also becomes staggered with seasickness. This curse cannot be dispelled, though remove curse or",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Paragon Surge", school: "Transmutation (Polymorph)", levels: "alchemist 3, arcanist 3, bloodrager 3, cleric 3, investigator 3, magus 4, medium 3, oracle 3, paladin 4, redmantisassassin 3, sorcerer 3, warpriest 3, witch 3, wizard 3 (half-elf)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal (half-elf only)", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "You surge with ancestral power, temporarily embodying all the strengths of both elvenkind and humankind simultaneously, and transforming into a paragon of both races, something greater than elf or…",
                          desc: "You surge with ancestral power, temporarily embodying all the strengths of both elvenkind and humankind simultaneously, and transforming into a paragon of both races, something greater than elf or human alone. Unlike with most polymorph effects, your basic form does not change, so you keep all extraordinary and supernatural abilities of your half-elven form as well as all of your gear. For the duration of the spell, you receive a +2 enhancement bonus to Dexterity and Intelligence and are treated as if you possessed any one feat for which you meet the prerequisites, chosen when you cast this spell. The first time each day that you cast this spell, you must select a feat and make all the associated choices that come with it. Once that choice is made, it is set for the day and additional castings must make the exact same decisions.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Path of the Winds", school: "Evocation", levels: "arcanist 6, druid 6, hunter 6, sorcerer 6, wizard 6 (sylph)",
                          castingTime: "1 standard action", components: "V, S,",
                          range: "100 ft.", area: "40-ft.-high downdraft of wind in a 100-foot line", targets: "",
                          duration: "concentration + 1 round",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "With a sweeping gesture, you call forth mighty winds to clear a path ahead of you. The winds are the equivalent of a windstorm.",
                          desc: "With a sweeping gesture, you call forth mighty winds to clear a path ahead of you. The winds are the equivalent of a windstorm. During the first round of the spell, the winds sweep the designated area clear of anything of Small or smaller size, blowing it outward to the sides of the spell’s effect (50% chance of landing on either side). You may move within the effect without penalty, though all other creatures are subject to the wind’s effects. On the second and all later rounds of the spell, the edges of the effect are treated as a wind wall. If the effect includes a body of water or other liquid, the winds create a channel up to 40 feet deep into the surface of the liquid. On your turn as a move action, you can move the effect of this spell, either rotating it at one of its ends up to 45 degrees, or moving it up to 50 feet in line with its current orientation (toward you or away from you).",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Prehensile Pilfer", school: "Transmutation", levels: "alchemist 3, arcanist 3, bard 3, investigator 3, magus 3, redmantisassassin 3, skald 3, sorcerer 3, wizard 3 (vanara)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 round/level (D)",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "The target’s tail moves and acts more quickly, almost with a mind of its own.",
                          desc: "The target’s tail moves and acts more quickly, almost with a mind of its own. When making a full-attack action, the target may use its tail to make a dirty trick or steal combat maneuver as a swift action. For the purpose of this attack, the target’s tail is a natural weapon with a reach of 5 feet. This spell has no effect on creatures lacking a prehensile tail. If the target already has an extra attack from haste or a similar effect, this spell only allows the tail to make dirty trick and steal combat maneuvers, but does not grant an extra attack.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Raging Rubble", school: "Transmutation", levels: "arcanist 3, bard 3, bloodrager 3, cleric 3, druid 3, hunter 3, oracle 3, redmantisassassin 3, skald 3, sorcerer 3, warpriest 3, witch 3, wizard 3 (oread)",
                          castingTime: "1 round", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one swarm of stones", targets: "",
                          duration: "concentration + 2 rounds",
                          savingThrow: "none;", sr: true,
                          summary: "You animate an area of rubble, gravel, or other small stones, creating a dangerous, rolling area of debris.",
                          desc: "You animate an area of rubble, gravel, or other small stones, creating a dangerous, rolling area of debris. The animated rubble has a space of 10 feet and acts like a swarm, damaging (1d6 hit points) and distracting (DC 12) anything within it. As a move action, you can direct the rubble to move up to 10 feet. If the rubble is attacked, treat it as a Medium animated object with the young creature simple template and the swarm subtype.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Recharge Innate Magic", school: "Transmutation", levels: "alchemist 1, arcanist 1, bard 1, cleric 1, druid 1, hunter 1, inquisitor 1, investigator 1, magus 1, mesmerist 1, oracle 1, psychic 1, redmantisassassin 1, skald 1, sorcerer 1, warpriest 1, witch 1, wizard 1 (gnome)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "instantaneous",
                          savingThrow: "None", sr: false,
                          summary: "You channel magic energy into your own aura, recharging your innate magic abilities. You regain one use of all 0-level and 1st-level spell-like abilities you can use as a result of a racial trait.",
                          desc: "You channel magic energy into your own aura, recharging your innate magic abilities. You regain one use of all 0-level and 1st-level spell-like abilities you can use as a result of a racial trait.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Resilient Reservoir", school: "Transmutation", levels: "arcanist 4, magus 3, mesmerist 3, paladin 3, psychic 4, redmantisassassin 4, sorcerer 4, witch 4, wizard 4 (half-elf)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "special, see text", targets: "",
                          duration: "1 round/ level",
                          savingThrow: "none (see below);", sr: true,
                          summary: "Upon casting this spell, damage from melee attacks and touch spells gets transferred into a special pool that you then redirect before the spell’s duration expires.",
                          desc: "Upon casting this spell, damage from melee attacks and touch spells gets transferred into a special pool that you then redirect before the spell’s duration expires. Each time you are struck by a melee attack or touch spell that deals hit point damage, 1 point of damage is negated and transferred into the reservoir created by this spell. The total number of points in the reservoir cannot exceed your caster level (to a maximum of 20 points at 20th level). As an immediate action, anytime before the spell’s duration expires, you can expend a number of points of energy from the reservoir, granting yourself an insight bonus on one skill check, attack roll, damage roll, or combat maneuver check, but you must do so before the roll is made. This bonus is equal to the number of points spent. For every five caster levels, you may call upon the reservoir one additional time (maximum of four times at 15th level). If you are reduced to negative hit points while you are under the effect of this spell, the spell automatically release the remaining magic of the reservoir in a concussive blast of force. All creatures within a 15-foot radius take 1d6 points of force damage per 2 points remaining in the reserve (maximum of 10d6). A successful Reflex save halves this damage, and spell resistance applies to this effect.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sacred Space", school: "Evocation", levels: "cleric 2, oracle 2, paladin 2, warpriest 2 (aasimar)",
                          castingTime: "1 standard action", components: "V, S, M (a vial of ambrosia)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "20-ft.-radius emanation", targets: "",
                          duration: "2 hours/level",
                          savingThrow: "none;", sr: false,
                          summary: "This spell sanctifies an area with heavenly power. The DC to resist spells or spell-like abilities with the good descriptor or channeled energy that damages evil outsiders (as when using Alignment…",
                          desc: "This spell sanctifies an area with heavenly power. The DC to resist spells or spell-like abilities with the good descriptor or channeled energy that damages evil outsiders (as when using Alignment Channel) increases by +2. In addition, evil outsiders take a –1 penalty on attack rolls, damage rolls, and saving throws, and they cannot be called or summoned into a sacred space . If the",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Savage Maw", school: "Transmutation", levels: "antipaladin 1, cleric 2, druid 2, hunter 1, inquisitor 2, magus 2, oracle 2, psychic 2, ranger 1, warpriest 2 (half-orc)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D), special (see below)",
                          savingThrow: "None", sr: false,
                          summary: "Your teeth extend and sharpen, transforming your mouth into a maw of razor-sharp fangs. You gain a bite attack that deals 1d4 points of damage plus your Strength modifier.",
                          desc: "Your teeth extend and sharpen, transforming your mouth into a maw of razor-sharp fangs. You gain a bite attack that deals 1d4 points of damage plus your Strength modifier. If you confirm a critical hit with this attack, it also deals 1 point of bleed damage. If you already have a bite attack, your bite deals 2 points of bleed damage on a critical hit. You are considered proficient with this attack. If used as part of a full-attack action, the bite is considered a secondary attack, is made at your full base attack bonus –5, and adds half your Strength modifier to its damage. You can end this spell before its normal duration by making a bestial roar as a swift action. When you do, you can make an Intimidate check to demoralize all foes within a 30-foot radius that can hear the roar.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Scorching Ash Form", school: "Transmutation", levels: "alchemist 4, arcanist 4, investigator 4, redmantisassassin 4, sorcerer 4, wizard 4 (ifrit)",
                          castingTime: "1 standard action", components: "S, M (a bit of gauze and a handful of ashes)",
                          range: "touch", area: "", targets: "willing corporeal creature touched",
                          duration: "1 minute/level",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like gaseous form , except the target becomes a visible swirl of hot ash and smoke instead of harmless translucent gas. The target gains the fire subtype.",
                          desc: "This spell functions like gaseous form , except the target becomes a visible swirl of hot ash and smoke instead of harmless translucent gas. The target gains the fire subtype. Any creature that begins its turn sharing a space with the target takes 2d6 points of fire damage and must make a Fortitude save (DC 15, + 1 per previous check) or suffer the effects of smoke inhalation.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sentry Skull", school: "Necromancy", levels: "antipaladin 1, arcanist 2, cleric 2, oracle 2, sorcerer 2, warpriest 2, witch 2, wizard 2 (orc)",
                          castingTime: "1 hour", components: "V, S, M (an onyx gem worth at least 10 gp)",
                          range: "touch", area: "", targets: "severed head touched",
                          duration: "permanent (D); see text",
                          savingThrow: "none;", sr: false,
                          summary: "You restore the senses to the severed head of a humanoid or monstrous humanoid killed within the past 24 hours, creating a grisly sentinel.",
                          desc: "You restore the senses to the severed head of a humanoid or monstrous humanoid killed within the past 24 hours, creating a grisly sentinel. The head must be affixed to a pole, spear, tree branch, or other stable object, and the spell ends if the head or its object is moved. The head has darkvision 60 feet and low-light vision, can swivel in place to look in any direction, and has a +5 bonus on Perception checks. If you are within 30 feet of the head, as a standard action you can shift your senses to it, seeing and hearing from its location and gaining the benefit of its darkvision and low-light vision, and you may use its Perception skill instead of your own. While your senses are in the severed head, your body is blind and deaf until you spend a free action to shift your senses back to your own body. When you create the head, you can imprint it with a single triggering condition, similar to",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Shadow Anchor", school: "Illusion (Shadow)", levels: "arcanist 2, bard 2, mesmerist 2, psychic 2, redmantisassassin 2, skald 2, sorcerer 2, witch 2, wizard 2 (wayang)",
                          castingTime: "1 standard action", components: "S",
                          range: "touch", area: "a shadowy shadow tether", targets: "creature touched",
                          duration: "1 round/level (D); see text",
                          savingThrow: "Will negates;", sr: true,
                          summary: "The target’s shadow becomes a flexible tether to its current square. The creature can move up to 5 feet from that square without penalty.",
                          desc: "The target’s shadow becomes a flexible tether to its current square. The creature can move up to 5 feet from that square without penalty. Moving farther than 5 feet from the tether point requires the target to make a bull rush combat maneuver check against a CMB of 10 + 1/2 your caster level + your Intelligence modifier (if a witch or wizard) or Charisma modifier (if a bard or sorcerer). The target takes a –1 penalty for every 5 feet of distance between it and its tethered square. Failing this check means the target’s move is wasted and it cannot move farther away. If it fails this check by 10 or more, it is pulled 5 feet toward the tether square and is knocked prone. If it beats the check by 10 or more, the spell ends. This spell does not work on creatures that do not cast shadows or reflections. If the target uses a teleportation effect or leaves the current plane, the spell ends.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Shadowy Haven", school: "Transmutation", levels: "arcanist 4, psychic 4, redmantisassassin 4, sorcerer 4, wizard 4 (fetchling)",
                          castingTime: "1 standard action", components: "V, S, M (a small black silk bag)",
                          range: "touch", area: "", targets: "one 5-foot square of floor touched",
                          duration: "2 hours/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like rope trick , except the point of entry is through a 5-foot-square instead of a rope. The space holds as many as 10 creatures of any size.",
                          desc: "This spell functions like rope trick , except the point of entry is through a 5-foot-square instead of a rope. The space holds as many as 10 creatures of any size. When this spell is cast upon a 5-foot-square part of a wall, it creates an extradimensional space adjacent to the Plane of Shadow. Creatures in the extradimensional space are hidden beyond the reach of spells (including divinations) unless those spells work across planes. The space holds as many as 10 creatures (of any size). The entrance to the extradimensional space remains visible as an area that is darker than the ambient illumination. Spells cannot be cast across the extradimensional interface, nor can area effects cross it. Those in the extradimensional space can see out of it as if a 5-foot-by-5-foot door or window were centered on the affected surface. The window is invisible (though it is within the shadowed entrance to the spell, which is visible), and even creatures that can see the window from the outside can’t see through it. Anything inside the extradimensional space is ejected when the spell ends. Only one creature may enter or exit the extradimensional space at a time. The entrance is only open when the area around it is in dim light. Any other level of light (brighter or darker) closes the entrance, trapping creatures inside the extradimensional space. If the entrance is closed when the spell expires, there is a 50% chance that creatures in it are ejected into the Shadow Plane instead of the location of the entrance. If this occurs, the creatures appear on the Shadow Plane 1d10 miles in a random direction from their corresponding location on the Material Plane. The spell has no effect if cast on a plane that is not adjacent to the Shadow Plane. Because the extradimensional space is adjacent to the Shadow Plane, any",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sickening Strikes", school: "Transmutation", levels: "alchemist 2, antipaladin 2, druid 2, hunter 2, investigator 2, magus 3, ranger 4, witch 2 (ratfolk)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates, see text;", sr: true,
                          summary: "You are imbued with disease, and any creature you strike with a melee attack must make a Fortitude save or be sickened for 1 minute.",
                          desc: "You are imbued with disease, and any creature you strike with a melee attack must make a Fortitude save or be sickened for 1 minute. Creatures that are immune to disease are immune to this sickened effect.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sow Thought", school: "Enchantment (Compulsion)", levels: "arcanist 1, bard 1, mesmerist 1, psychic 1, skald 1, sorcerer 1, witch 1, wizard 1 (changeling)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "permanent",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You plant an idea, concept, or suspicion in the mind of the subject. The target genuinely believes that the idea is his own, but is not required to act upon it.",
                          desc: "You plant an idea, concept, or suspicion in the mind of the subject. The target genuinely believes that the idea is his own, but is not required to act upon it. If the idea is contrary to the target’s normal thoughts (such as making a paladin think, \"I should murder my friends\") the target may suspect mind-altering magic is at play. The idea must be fairly clear, enough so that it can be conveyed in one or two sentences. You do not need to share a common language for the spell to succeed, but without a common language you can only sow the most basic rudimentary ideas.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Spawn Ward", school: "Necromancy", levels: "cleric 5, inquisitor 5, oracle 5, warpriest 5 (dhampir)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 minutes/level",
                          savingThrow: "None", sr: false,
                          summary: "The target becomes resistant to the effects of energy drain and blood drain attacks made by undead creatures, and cannot be made into undead spawn if killed while the spell is in effect.",
                          desc: "The target becomes resistant to the effects of energy drain and blood drain attacks made by undead creatures, and cannot be made into undead spawn if killed while the spell is in effect. If the attacking undead’s Hit Dice is less than or equal to your caster level, the blood drain or energy drain has no effect. If the attacking undead’s Hit Dice are greater than your caster level, the undead must make a Fortitude save (against the DC of the spell) with each attack for those special abilities to have any effect. The spell only prevents the Constitution damage from blood drain and negative levels from energy drain, but not any other effects of these attacks.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Squeeze", school: "Transmutation (Polymorph)", levels: "alchemist 2, arcanist 2, investigator 2, redmantisassassin 2, sorcerer 2, witch 2, wizard 2 (vishkanya)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 minute/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "The target becomes flexible regardless of its actual size and mass. It can move through areas at least half its size with no penalty for squeezing.",
                          desc: "The target becomes flexible regardless of its actual size and mass. It can move through areas at least half its size with no penalty for squeezing. It can move through a space at least one-quarter its width using the penalties for squeezing through a space at least half its width.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Steal Breath", school: "Transmutation", levels: "arcanist 2, bard 2, bloodrager 2, druid 2, hunter 2, mesmerist 2, psychic 2, redmantisassassin 2, skald 2, sorcerer 2, witch 2, wizard 2 (catfolk)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "1 round (see text)",
                          savingThrow: "Fortitude negates, see text;", sr: true,
                          summary: "You pull the breath from a creature’s lungs, dealing damage and leaving it unable to speak, use breath weapons, or cast spells with verbal components.",
                          desc: "You pull the breath from a creature’s lungs, dealing damage and leaving it unable to speak, use breath weapons, or cast spells with verbal components. If the target fails its saving throw, it takes 2d6 points of damage, and it cannot speak, use breath weapons, or anything else requiring breathing, and a visible line of swirling air leaves the target’s mouth and enters your mouth. If, during the duration, the target moves out of range or line of effect to you, the spell immediately ends. This spell has no effect on creatures that do not need to breathe air.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Stone Shield", school: "Conjuration (Creation)", levels: "arcanist 1, bloodrager 1, cleric 1, druid 1, hunter 1, magus 2, oracle 1, shaman 1, sorcerer 1, summoner 1, summoner (unchained) 1, warpriest 1, wizard 1 (oread)",
                          castingTime: "1 immediate action", components: "V, S, DF",
                          range: "0 ft.", area: "stone wall whose area is one 5-ft. square", targets: "",
                          duration: "1 round",
                          savingThrow: "none;", sr: false,
                          summary: "A 1-inch-thick slab of stone springs up from the ground, interposing itself between you and an opponent of your choice.",
                          desc: "A 1-inch-thick slab of stone springs up from the ground, interposing itself between you and an opponent of your choice. The stone shield provides you with cover from that enemy until the beginning of your next turn, granting you a +4 bonus to Armor Class and a +2 bonus on Reflex saving throws. If the opponent’s attack misses you by 4 or less, the attack strikes the shield instead. The",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Strong Wings", school: "Transmutation", levels: "arcanist 1, bloodrager 1, druid 1, hunter 1, ranger 1, redmantisassassin 1, sorcerer 1, witch 1, wizard 1 (strix)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 minute/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "The target’s wings grow more powerful, causing its fly speed to increase by +10 feet and its maneuverability to improve by one category (to a maximum of good).",
                          desc: "The target’s wings grow more powerful, causing its fly speed to increase by +10 feet and its maneuverability to improve by one category (to a maximum of good). This increase counts as an enhancement bonus. This spell has no effect on wingless creatures or winged creatures that cannot fly.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Theft Ward", school: "Abjuration", levels: "arcanist 1, cleric 1, inquisitor 1, mesmerist 1, oracle 1, sorcerer 1, warpriest 1, witch 1, wizard 1 (tengu)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "one object",
                          duration: "1 day",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "You ward a single object in your possession against theft. You gain a +10 bonus on Perception checks to notice someone trying to take the object from you.",
                          desc: "You ward a single object in your possession against theft. You gain a +10 bonus on Perception checks to notice someone trying to take the object from you.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Toilsome Chant", school: "Enchantment (Compulsion)", levels: "bard 1, skald 1 (dwarf)",
                          castingTime: "see text", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "see text",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You can cast this spell as part of the action to begin an inspire competence bardic performance.",
                          desc: "You can cast this spell as part of the action to begin an inspire competence bardic performance. The benefit of inspire competence persists for as long as is necessary to complete the target’s next skill check using the chosen skill (up to a maximum of 1 hour per caster level), even if you cease your bardic performance.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Touch of Combustion", school: "Evocation", levels: "arcanist 1, bloodrager 1, druid 1, hunter 1, inquisitor 1, magus 1, psychic 1, sorcerer 1, witch 1, wizard 1 (ifrit)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature or object touched",
                          duration: "instantaneous",
                          savingThrow: "Reflex negates, see text;", sr: true,
                          summary: "Your successful melee touch attack causes the target to ignite in a violent burst of flame, dealing 1d6 points of fire damage. If it fails its saving throw, the target also catches on fire .",
                          desc: "Your successful melee touch attack causes the target to ignite in a violent burst of flame, dealing 1d6 points of fire damage. If it fails its saving throw, the target also catches on fire . If the target catches fire, on the first round thereafter, creatures adjacent to it (including you) must each succeed at a Reflex save or take 1d4 points of fire damage.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Truespeak", school: "Divination", levels: "arcanist 5, bard 4, cleric 6, mesmerist 4, oracle 6, psychic 5, skald 4, sorcerer 5, warpriest 6, witch 5, wizard 5 (aasimar)",
                          castingTime: "1 standard action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "You can communicate with any creature that is not mindless. As long as you can be heard, your speech is understandable to all creatures, each of which hears you as though you were conversing in its…",
                          desc: "You can communicate with any creature that is not mindless. As long as you can be heard, your speech is understandable to all creatures, each of which hears you as though you were conversing in its language or other natural mode of communication, and you hear their responses as though in your own native language. You may ask questions and receive answers, though this spell does not make creatures more friendly or cooperative than normal, and non-sentient creatures may give limited responses. While using truespeak, your language-dependent effects can affect any creature that is not mindless.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Undine's Curse", school: "Necromancy", levels: "arcanist 1, sorcerer 1, witch 1, wizard 1 (undine)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 hour/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "The target loses its body’s natural ability to breathe automatically. As long as it remains conscious and is able to take physical actions, it keeps breathing and is able to function normally.",
                          desc: "The target loses its body’s natural ability to breathe automatically. As long as it remains conscious and is able to take physical actions, it keeps breathing and is able to function normally. If it is ever unconscious (including sleeping) or unable to take physical actions, it stops breathing, must hold its breath, and might begin to suffocate. Creatures that do not have to breathe are immune to this spell.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Urban Grace", school: "Transmutation", levels: "alchemist 1, arcanist 1, bard 1, hunter 1, investigator 1, ranger 1, redmantisassassin 1, skald 1, sorcerer 1, witch 1, wizard 1 (half-elf)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "You become one with the city around you, allowing you to move more easily through its crowds and buildings. For the duration of this spell, your base land speed increases by 10 feet.",
                          desc: "You become one with the city around you, allowing you to move more easily through its crowds and buildings. For the duration of this spell, your base land speed increases by 10 feet. In addition, it does not cost you 2 squares of movement to enter a square with crowds, though the crowd still provides cover to you. This ability does not allow you to enter the space of enemy creatures without making the appropriate Acrobatics check. In addition, you receive a +4 circumstance bonus on Acrobatics checks made to move across uneven urban surfaces, such as roofs and broken pavement, and on Climb checks made to scale walls and other artificial surfaces. Whenever you make an Acrobatics check to make a long jump between two buildings or artificial structures, you are always treated as if you had a running start, regardless of the actual distance traveled.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Veil of Heaven", school: "Abjuration", levels: "paladin 1 (aasimar)",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "personal or 5 ft.; see text", area: "", targets: "you or all creatures within 5 ft.; see text",
                          duration: "10 minutes/level (D)",
                          savingThrow: "Will half;", sr: false,
                          summary: "You surround yourself with a veil of positive energy, making it harder for evil outsiders to harm you. For the duration of this spell, you gain a +2 sacred bonus to AC and on saves.",
                          desc: "You surround yourself with a veil of positive energy, making it harder for evil outsiders to harm you. For the duration of this spell, you gain a +2 sacred bonus to AC and on saves. Both of these bonuses apply only against attacks or effects created by outsiders with the evil subtype. You can dismiss this spell as a swift action to deal 1d8 points of damage + 1 point per paladin level to all such outsiders within 5 feet. A Will save halves this damage.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Village Veil", school: "Illusion (Figment)", levels: "arcanist 5, bard 5, cleric 5, mesmerist 5, oracle 5, psychic 5, skald 5, sorcerer 5, warpriest 5, witch 5, wizard 5 (halfling)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "long (400 ft. + 40 ft./level)", area: "one 10-ft. cube per level", targets: "",
                          duration: "1 day/level",
                          savingThrow: "Will disbelief;", sr: false,
                          summary: "You throw an illusion over an area to make creatures that view or interact with it believe it has suffered some great catastrophe or calamity that renders it utterly worthless for their needs.",
                          desc: "You throw an illusion over an area to make creatures that view or interact with it believe it has suffered some great catastrophe or calamity that renders it utterly worthless for their needs. You must set a few general guidelines when casting the spell as to the nature of this disaster (fire, tornado, bandit raid, plague, etc.), after which the illusion fills in the remaining details to make it seem realistic. When casting the spell, you can grant creatures with particular, clearly identifiable physical traits (race, gender, age category, etc.) immunity to this spell. This allows all such eligible creatures to perceive the true nature of the affected area instead of its illusory appearance. Creatures without this immunity that fail their saving throws always perceive the affected area as having absolutely nothing of interest or worth to them. Unless they have reason for suspicion, they always move on without closely investigating the area. Creatures with sufficient reasons for suspicion who do choose to investigate the area gain another saving throw, this one with a +2 bonus, as they enter the village and directly interact with the illusion. You can expand the area of this spell by casting it multiple times. Each time you do, you must effectively \"attach\" the spell to the existing area by using the same disaster and granting the same sorts of creatures immunity to its effects. If you fail to do this, the entire illusion, no matter how large, disappears.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Vomit Twin", school: "Conjuration (Creation, Teleportation)", levels: "alchemist 3, arcanist 4, investigator 3, magus 3, psychic 4, sorcerer 4, summoner 3, summoner (unchained) 3, wizard 4 (goblin)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "creates one ooze duplicate of the caster", targets: "",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "Upon casting this spell, you vomit forth a disgusting ooze copy of yourself into a single adjacent square.",
                          desc: "Upon casting this spell, you vomit forth a disgusting ooze copy of yourself into a single adjacent square. As long as the twin exists, whenever you take a move action to move, the twin can move as well, although it does not need to follow you and cannot take any other actions. On subsequent rounds, at the start of your turn, you can instantaneously exchange places with your twin, as if using teleport . This is not an action and does not provoke an attack of opportunity. The twin has a speed of 30 feet and provokes attacks of opportunity from movement as normal. It has an AC equal to 10 + 1/2 your caster level and a number of hit points equal to your caster level. If the twin is reduced to 0 hit points, it is destroyed, although you can create a new one on your turn as a standard action as long as the duration persists. You cannot have more than one vomit twin at a time.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ward of the Season", school: "Abjuration", levels: "cleric 4, druid 3, hunter 3, oracle 4, ranger 3, shaman 3, warpriest 4, witch 3 (elf)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "one creature",
                          duration: "1 hour/level",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "This spell harnesses the power of the seasons to protect the target and grant a number of bonuses. This spell has one of four different effects.",
                          desc: "This spell harnesses the power of the seasons to protect the target and grant a number of bonuses. This spell has one of four different effects. The caster of the spell can select any one of the following four effects, but can change the effect as a standard action that reduces the total remaining duration by 1 hour. Spring : The target is wrapped in light vines, culminating in a crown of bright, beautiful flowers. While the spell remains in effect, the target is immune to bleed effects and regains 1 hit point per round whenever below 0 hit points, as long as the target is still alive. This stabilizes the target. For each hit point restored in this way, the spell’s total remaining duration is reduced by 1 hour.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Web Bolt", school: "Conjuration (Creation)", levels: "arcanist 1, bloodrager 1, magus 1, sorcerer 1, witch 1, wizard 1 (drow)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "fist-sized blob of webbing", targets: "",
                          duration: "1 min./level",
                          savingThrow: "Reflex negates, see text;", sr: false,
                          summary: "You launch a ball of webbing at a target, which must make a save or be affected as if by a web spell occupying only the creature’s space.",
                          desc: "You launch a ball of webbing at a target, which must make a save or be affected as if by a web spell occupying only the creature’s space. If the creature saves or breaks free of the webbing, the remaining webs dissolve and the square is not considered difficult terrain. The spell has no effect if the target is not on or adjacent to a solid surface that can support the webbing.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Web Cloud", school: "Conjuration (Creation)", levels: "arcanist 4, sorcerer 4, witch 4, wizard 4 (drow)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "cloud spreads in 20-ft. radius, 20 ft. high", targets: "",
                          duration: "1 minute/level",
                          savingThrow: "Reflex partial, see text;", sr: false,
                          summary: "You create a cloud of flame-resistant strands of adhesive webbing that billows and flows much like a cloudkill spell.",
                          desc: "You create a cloud of flame-resistant strands of adhesive webbing that billows and flows much like a cloudkill spell. The cloud moves away from you at a rate of 10 feet per round, rolling along the surface of the ground. Figure out the cloud’s new spread each round based on its new point of origin, which is 10 feet farther away from the point of origin where the caster cast the spell. Creatures trapped in the webbing remain trapped even after the cloud passes, but the area the cloud leaves behind does not count as difficult terrain. Because the webbing is heavier than air, it sinks to the lowest level of the land, even pouring down den or sinkhole openings. The cloud of webbing cannot penetrate liquids, nor can it be cast underwater. The cloud otherwise acts like a",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Whispering Lore", school: "Divination", levels: "cleric 2, druid 1, hunter 1, medium 1, oracle 2, psychic 1, ranger 1, warpriest 2, witch 1 (elf)",
                          castingTime: "1 full-round action", components: "V, S, M/DF (an owl’s beak)",
                          range: "personal", area: "", targets: "you",
                          duration: "10 minutes/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "Upon casting this spell, you are able to gain knowledge from the land itself.",
                          desc: "Upon casting this spell, you are able to gain knowledge from the land itself. As you walk through the terrain, it whisper information in a language you understand, though the whispering is so rambling it is hard to distinguish useful information. This whispering grants you a +4 insight bonus on a single Knowledge skill type appropriate to the type of terrain you are in. If you are within a cold, desert, forest, jungle, mountain, plains, swamp, or water environment, you gain the bonus on Knowledge (nature) checks. If you are within an underground environment, you gain the bonus on Knowledge (dungeoneering) checks. If you are within an urban environment, you gain the bonus on Knowledge (local) checks. If you are on a plane other than the Material Plane, you gain the bonus on Knowledge (planes) checks. If you enter a new terrain, you lose the previous terrain’s skill bonus and gain the new bonus.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Wind Blades", school: "Transmutation", levels: "arcanist 5, druid 5, hunter 5, magus 5, sorcerer 5, witch 5, wizard 5 (sylph)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You harden the air around the target into jagged invisible blades that deal damage based on how fast the target moves.",
                          desc: "You harden the air around the target into jagged invisible blades that deal damage based on how fast the target moves. On its turn, the target takes 1d6 points of slashing damage if it moves at least 5 feet, plus 1d6 points of slashing damage for each additional 10 feet of movement. Movement that doesn’t pass through air (such as burrowing, swimming, or teleportation) doesn’t cause this damage. In areas of strong wind , the target takes damage on its turn, even if it doesn’t move. The wind deals 1d8 points of slashing damage for strong wind, plus 1d8 for every wind category above strong. This extra damage does not occur from instantaneous wind effects (such as gust of wind ), only from wind effects that last at least 1 round.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Windy Escape", school: "Transmutation", levels: "arcanist 1, bard 1, bloodrager 1, druid 1, hunter 1, magus 1, redmantisassassin 1, skald 1, sorcerer 1, wizard 1 (sylph)",
                          castingTime: "1 immediate action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "instantaneous",
                          savingThrow: "None", sr: false,
                          summary: "You respond to an attack by briefly becoming vaporous and insubstantial, allowing the attack to pass harmlessly through you.",
                          desc: "You respond to an attack by briefly becoming vaporous and insubstantial, allowing the attack to pass harmlessly through you. You gain DR 10/magic against this attack and are immune to any poison, sneak attacks, or critical hit effect from that attack. You cannot use windy escape against an attack of opportunity you provoked by casting a spell, using a spell-like ability, or using any other magical ability that provokes an attack of opportunity when used.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Winter Feathers", school: "Abjuration", levels: "arcanist 1, bloodrager 1, cleric 1, druid 1, hunter 1, inquisitor 1, oracle 1, ranger 1, sorcerer 1, warpriest 1, wizard 1 (tengu)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "feathered creature touched",
                          duration: "24 hours",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The target’s feathers thicken and fluff up to ward against winter’s chill.",
                          desc: "The target’s feathers thicken and fluff up to ward against winter’s chill. The target suffers no harm from being in a cold environment, and can exist comfortably in conditions as low as –50 degrees Fahrenheit without having to make Fortitude saves. The creature’s equipment is likewise protected. This spell doesn’t provide any protection from cold damage, nor does it protect against other environmental hazards associated with cold weather (such as slipping on ice, blindness from snow, and so on). When you cast this spell, you may have the target’s feathers turn white for the duration, granting it a +4 circumstance bonus on Stealth checks to hide in ice and snow.",
                          source: "Advanced Race Guide", isPremium: true),

                    // // MARK: - Advanced Race Guide, Orcs of Golarion
        )
        try await db.insertSpell(
        .make("Enemy's Heart", school: "Necromancy", levels: "adept 2, antipaladin 2, cleric 2, oracle 2, warpriest 2, witch 2 (orc)",
                          castingTime: "1 full-round action, special see below", components: "V, S, M (target creature’s heart)",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "concentration/1 minute per HD of the subject; see text",
                          savingThrow: "none;", sr: true,
                          summary: "You cut out an enemy’s heart and consume it, absorbing that enemy’s power as your own.",
                          desc: "You cut out an enemy’s heart and consume it, absorbing that enemy’s power as your own. As part of casting this spell, you perform a coup de grace with a slashing weapon on a helpless, living adjacent target. If the target dies, you eat its heart to gain the spell’s benefits. If the target survives, the spell is not wasted and you can try again as long as you continue concentrating on the spell. When you consume the heart, you gain the benefits of a death knell spell, except you gain 1d8 temporary hit points +1 per Hit Die of the target, and the bonus to Strength is a profane bonus.",
                          source: "Advanced Race Guide, Orcs of Golarion", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ghost Wolf", school: "Conjuration (Creation)", levels: "arcanist 4, bloodrager 4, psychic 4, sorcerer 4, summoner 2, summoner (unchained) 2, wizard 4 (half-orc)",
                          castingTime: "10 minutes", components: "V, S, F (dire wolf tooth)",
                          range: "0 ft.", area: "", targets: "one quasi-real wolflike creature",
                          duration: "1 hour/level (D) or 1 round/level; see text",
                          savingThrow: "none (see description);", sr: false,
                          summary: "This spell conjures a Large, quasi-real, wolflike creature made of roiling black smoke. It functions as phantom steed , except as noted above. In addition, the creature radiates an aura of fear.",
                          desc: "This spell conjures a Large, quasi-real, wolflike creature made of roiling black smoke. It functions as phantom steed , except as noted above. In addition, the creature radiates an aura of fear. Any creature with fewer than 6 Hit Dice within 30 feet (except the ghost wolf‘s rider) must make a Will save or become shaken for 1d4 rounds (this is a mind-affecting fear effect). A creature that makes its Will save is unaffected by the steed’s fear aura for 24 hours. The ghost wolf may also be used in combat. Once per round, the rider may direct the ghost wolf to attack in battle as a free action (bite +10, 1d8+6 points of damage); unlike an animal mount, this does not require a Ride check or any training. Once the ghost wolf attacks, it lasts for only 1 round per level thereafter.",
                          source: "Advanced Race Guide, Orcs of Golarion", isPremium: true),

                    // // MARK: - Adventurer's Armory 2
        )
        try await db.insertSpell(
        .make("Allied Cloak", school: "Abjuration", levels: "arcanist 3, bard 3, bloodrager 3, magus 3, occultist 2, skald 3, sorcerer 3, summoner 3, summoner (unchained) 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, F (cloak or outer garment)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "You cause a cloak, shawl, poncho, or other outer garment you are wearing to animate to aid and defend you. The cloak provides a +2 shield bonus to your AC.",
                          desc: "You cause a cloak, shawl, poncho, or other outer garment you are wearing to animate to aid and defend you. The cloak provides a +2 shield bonus to your AC. In addition, once each round during your turn, you can take a free action to direct your cloak to use the aid another action to assist your skill check, attack roll, or AC. The cloak has an attack bonus or a total skill bonus equal to your caster level plus your key spellcasting ability score modifier (Charisma for bards, Intelligence for wizards, and so on). If another creature dons the cloak during the duration, the cloak provides its protection and aid to the wearer, but it still uses the same bonus on the aid another actions as if you were the wearer. The cloak cannot take any other type of action.",
                          source: "Adventurer's Armory 2", isPremium: true)
        )
        try await db.insertSpell(
        .make("Billowing Skirt", school: "Transmutation", levels: "arcanist 2, bard 2, inquisitor 2, occultist 2, shaman 2, skald 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, F (a skirt, kilt, or gown)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "A skirt, kilt, or gown you are wearing enables you to control your falls through the air.",
                          desc: "A skirt, kilt, or gown you are wearing enables you to control your falls through the air. A creature wearing the enchanted item of clothing falls slowly as if affected by feather fall and can attempt a DC 15 Fly skill check as a move action to hover in place for 1 round.",
                          source: "Adventurer's Armory 2", isPremium: true)
        )
        try await db.insertSpell(
        .make("Grappling Scarf", school: "Transmutation", levels: "arcanist 1, bard 1, inquisitor 1, occultist 1, skald 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, F (a scarf)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "A scarf you are wearing frays at the end into hook-like shapes and can extend to incredible lengths.",
                          desc: "A scarf you are wearing frays at the end into hook-like shapes and can extend to incredible lengths. Although your scarf retains its weight, its frayed ends function as a grappling hook that can be thrown with a range increment of 20 feet. Your scarf elongates to 100 feet the first time it is thrown during the spell duration. Regardless of its apparent material, the scarf is as strong and easy to climb as a knotted silk rope. At the end of the duration, the scarf detaches and returns to its former shape, fluttering down from its position if you haven’t already retrieved it.",
                          source: "Adventurer's Armory 2", isPremium: true)
        )
        try await db.insertSpell(
        .make("Restful Cloak", school: "Conjuration (Healing)", levels: "cleric 2, druid 2, hunter 2, occultist 2, oracle 2, paladin 2, ranger 2, shaman 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S, F (cloak)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 hour/level",
                          savingThrow: "None", sr: false,
                          summary: "A cloak you are wearing transforms into a canvas tent large enough to hold four Medium creatures, firmly pitched in a flat area adjacent to you (if there is no such area, this spell simply fails).",
                          desc: "A cloak you are wearing transforms into a canvas tent large enough to hold four Medium creatures, firmly pitched in a flat area adjacent to you (if there is no such area, this spell simply fails). A creature regains 1 hit point for each hour it rests in the tent, in addition to any other benefits of resting. Additionally, a fatigued creature resting within the tent for 1 hour loses the fatigued condition, but a creature cannot recover from being fatigued more than once per casting of restful tent . At the end of the spell’s duration, the tent transforms back into a cloak. If the tent is moved prior to the expiration of the spell’s duration, the spell immediately ends.",
                          source: "Adventurer's Armory 2", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sculpted Cape", school: "Transmutation", levels: "arcanist 1, bard 1, hunter 1, occultist 1, ranger 1, shaman 1, skald 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, F (cape or loose outer garment)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "Your cape, cloak, or shawl stiffens and maintains its shape even if removed.",
                          desc: "Your cape, cloak, or shawl stiffens and maintains its shape even if removed. A sculpted cape has hardness 2 and a number of hit points equal to your caster level, and it can support 1 pound of weight per caster level. An unworn",
                          source: "Adventurer's Armory 2", isPremium: true)
        )
        try await db.insertSpell(
        .make("Surefoot Boots", school: "Transmutation", levels: "druid 2, hunter 2, occultist 2, ranger 2, shaman 2",
                          castingTime: "1 standard action", components: "V, S, F (footwear)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "You touch your boots, shoes, or other footwear and imbue them with the ability to find purchase on even the most treacherous ground.",
                          desc: "You touch your boots, shoes, or other footwear and imbue them with the ability to find purchase on even the most treacherous ground. While the spell is in effect, the footwear’s wearer treats any Acrobatics skill check to balance as though the wearer had rolled a 20.",
                          source: "Adventurer's Armory 2", isPremium: true),

                    // // MARK: - Adventurer's Guide
        )
        try await db.insertSpell(
        .make("Absorb Rune I", school: "Abjuration", levels: "arcanist 4, bard 4, cleric 4, magus 4, occultist 4, oracle 4, skald 4, sorcerer 4, warpriest 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (a white silk glove worth 25 gp)",
                          range: "touch", area: "", targets: "one spell effect",
                          duration: "instantaneous plus 1 minute/level (see text)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell allows you to lay your hand upon a magical glyph, symbol, or other magical spell effect (referred to in this spell description as a “rune”) and attempt to absorb the essence of its effect.",
                          desc: "This spell allows you to lay your hand upon a magical glyph, symbol, or other magical spell effect (referred to in this spell description as a “rune”) and attempt to absorb the essence of its effect. To absorb a rune, you must be aware of the rune’s existence (but need not know the details of what it actually does) and then succeed at a caster level check (DC = 10 + the caster level of the spell affect being absorbed) as you touch the rune in question. If you fail this caster level check, the magical rune is not triggered unless you fail the roll by 5 or more. If you succeed at the caster level check, the rune is removed from the surface it was originally placed upon and duplicated on the cloth of a silk glove worn on your hand. The rune remains located on the glove’s palm in an inert state for up to 1 minute per caster level. As a standard action taken at any time during that duration, you can transfer the rune to another surface similar to the one it was originally placed upon, at which point the rune’s function either returns to normal or dissipates harmlessly as if successfully dispelled (your choice). If the spell’s duration expires before you place the rune on a new surface, the absorbed rune dissipates harmlessly. Absorb rune I affects only runes whose effects are equivalent to a spell of 3rd level or lower. An attempt to use",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Absorb Rune II", school: "Abjuration", levels: "arcanist 4, bard 4, cleric 4, magus 4, occultist 4, oracle 4, skald 4, sorcerer 4, warpriest 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (a white silk glove worth 25 gp)",
                          range: "touch", area: "", targets: "one spell effect",
                          duration: "instantaneous plus 1 minute/level (see text)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions like absorb rune I , but it can affect runes equivalent to a spell of 5th level or lower.",
                          desc: "This spell functions like absorb rune I , but it can affect runes equivalent to a spell of 5th level or lower.",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Absorb Rune III", school: "Abjuration", levels: "arcanist 4, bard 4, cleric 4, magus 4, occultist 4, oracle 4, skald 4, sorcerer 4, warpriest 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (a white silk glove worth 25 gp)",
                          range: "touch", area: "", targets: "one spell effect",
                          duration: "instantaneous plus 1 minute/level (see text)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions like absorb rune I , but it can affect runes equivalent to a spell of 8th level or lower.",
                          desc: "This spell functions like absorb rune I , but it can affect runes equivalent to a spell of 8th level or lower.",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Aldori Alacrity", school: "Transmutation", levels: "alchemist 2, bard 2, investigator 2, magus 2, skald 2",
                          castingTime: "1 standard action", components: "V, S, M (ginger root shavings)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "This spell’s energy quickens your steps, allowing fancy footwork. You gain a +10-foot enhancement bonus to your speed and a +1 dodge bonus to your AC.",
                          desc: "This spell’s energy quickens your steps, allowing fancy footwork. You gain a +10-foot enhancement bonus to your speed and a +1 dodge bonus to your AC. These bonuses do not stack with those granted by haste or similar effects. While under the effects of",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Blade of Light", school: "Transmutation", levels: "cleric 4, inquisitor 4, oracle 4, paladin 4, warpriest 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "one melee weapon",
                          duration: "1 round/level",
                          savingThrow: "none;", sr: false,
                          summary: "This spell infuses a weapon with pure sunlight (the weapon need not be a bladed weapon). A weapon enhanced by this spell sheds light as if daylight had been cast on it.",
                          desc: "This spell infuses a weapon with pure sunlight (the weapon need not be a bladed weapon). A weapon enhanced by this spell sheds light as if daylight had been cast on it. It functions as a magic and good weapon for the purposes of overcoming damage reduction. The weapon grants a +2 sacred bonus on attack rolls against undead and deals +1d6 points of damage on a successful hit against such foes; against incorporeal undead, it functions as if it had the ghost touch weapon special ability. The weapon automatically confirms critical hits against foes that are vulnerable to sunlight.",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Bone Flense", school: "Transmutation", levels: "arcanist 3, bloodrager 2, cleric 3, druid 3, hunter 3, inquisitor 3, magus 3, oracle 3, sorcerer 3, warpriest 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "M/F (a jagged shard of bone from a humanoid creature)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates;", sr: false,
                          summary: "Choose a creature that you can see. When that creature is struck by a weapon wielded by a member of the Red Mantis, a sawtooth sabre, or by the claw of a giant mantis, the bone nearest to the wound…",
                          desc: "Choose a creature that you can see. When that creature is struck by a weapon wielded by a member of the Red Mantis, a sawtooth sabre, or by the claw of a giant mantis, the bone nearest to the wound instantly sprouts jagged, razor-sharp spurs that flense the muscle and flesh from the inside out unless the target succeeds at a Fortitude save. The creature takes 1d6 points of piercing damage per caster level. While the bone returns to normal immediately after dealing damage, the creature takes 1d4 points of bleed damage for 1 round per 2 caster levels. The victim is sickened by the pain for the duration of the bleeding. If the target creature has no bones, this spell has no effect.",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Burning Sands", school: "Conjuration (Creation)", levels: "arcanist 1, druid 1, hunter 1, ranger 1, shaman 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M (a handful of sand)/DF",
                          range: "medium (100 ft. + 10 ft./level)", area: "20-ft. radius", targets: "",
                          duration: "1 round/level",
                          savingThrow: "none;", sr: false,
                          summary: "You cause sheets of hot sand to spread over the ground in the area of effect.",
                          desc: "You cause sheets of hot sand to spread over the ground in the area of effect. This layer of sand is 1 foot deep and constantly shifts and churns, transforming the ground in the area into difficult terrain. The sand itself burns, and periodic flames rise from the grit. While these flames cannot ignite objects, they deal 1d4 points of fire damage to any creature that ends its turn in contact with the ground within the area of effect. At the end of the duration, the sand vanishes, leaving no aftereffects (other than damage dealt).",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Cleansing Fire", school: "Evocation", levels: "cleric 5, inquisitor 4, oracle 5, paladin 4, warpriest 5",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "30-ft. rdius emanating from the touched point", targets: "",
                          duration: "concentration, up to 1 round/level",
                          savingThrow: "none;", sr: true,
                          summary: "A ring of fire surrounds the area affected by the spell. The flames radiate heat, but not enough to damage adjacent creatures.",
                          desc: "A ring of fire surrounds the area affected by the spell. The flames radiate heat, but not enough to damage adjacent creatures. The flames deal 2d6 points of fire damage to any creatures that pass through them (or 4d6 points of damage to undead creatures). If you manifest a portion of the ring in a square that contains a creature, that creature takes damage as if it passed through the ring. The ring of flames attempts to dispel all ongoing spell effects with the evil descriptor within it, targeting each spell effect once per round as per dispel magic . Any attempt to cast a spell with the evil descriptor inside the ring of flames is targeted by a",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Contest of Skill", school: "Transmutation", levels: "bard 2, cleric 3, magus 2, oracle 3, paladin 2, skald 2, warpriest 3",
                          castingTime: "1 standard action", components: "V, S, M (a tiny gong)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 minute/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "The randomness of critical hits has long vexed certain duelists in the Aldori school who consider luck to be an unwelcome addition to duels, which they view as contests of skill rather than chance.",
                          desc: "The randomness of critical hits has long vexed certain duelists in the Aldori school who consider luck to be an unwelcome addition to duels, which they view as contests of skill rather than chance. The creature targeted by this spell is infused with magical power, altering the odds of combat to weaken lucky strikes. Critical threats made by the affected creature automatically fail to confirm. Critical threats that automatically confirm due to class features or feats, such as the fighter’s weapon mastery, are unaffected by this spell. In addition, when the initial target of this spell fails its Will save to resist contest of skill , it can select one additional creature within range of the spell to suffer the effects of the spell as well (Will negates). If this secondary target negates this spell with a successful save, the duration of",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Crimson Breath", school: "Transmutation", levels: "alchemist 4, arcanist 4, cleric 4, druid 4, hunter 4, investigator 4, oracle 4, sorcerer 4, warpriest 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates;", sr: false,
                          summary: "When you cast this spell, your salivary glands transform and instantly fill with potent venom.",
                          desc: "When you cast this spell, your salivary glands transform and instantly fill with potent venom. Make a ranged touch attack against a single target in range; if you hit, the target is affected by a dose of breath of the mantis god (see page 158). The Fortitude save DC for this poison is the same as the spell’s DC, not the standard save DC for the poison.",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Deceptive Redundancy", school: "Illusion (Glamer)", levels: "arcanist 5, bard 5, mesmerist 5, psychic 5, skald 5, sorcerer 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "10 minutes/level or until triggered, then 1 round/level",
                          savingThrow: "none;", sr: false,
                          summary: "You create a contingent ward that defies those who would dispel your magic, convincing them that their spell worked.",
                          desc: "You create a contingent ward that defies those who would dispel your magic, convincing them that their spell worked. When a spell such as dispel magic would end one of your spells that’s affecting you, you can dismiss",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Deivon's Parry", school: "Transmutation", levels: "bard 1, magus 1, skald 1",
                          castingTime: "1 immediate action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "instantaneous",
                          savingThrow: "None", sr: false,
                          summary: "Originally designed by an Aldori magus who had long admired swashbucklers for their ability to deflect blows, Deivon’s parry has swiftly gained popularity among bards and magi alike.",
                          desc: "Originally designed by an Aldori magus who had long admired swashbucklers for their ability to deflect blows, Deivon’s parry has swiftly gained popularity among bards and magi alike. Your reflexes snap into action, allowing you to deflect a blow. This spell can be cast only when an opponent makes a melee attack against you, and only before the attack roll has been made. Make a parry attempt with a light or one-handed weapon you’re wielding, as if using the swashbuckler’s opportune parry and riposte deed (except that this does not require panache). You cannot riposte as part of this spell’s effect.",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Detoxify", school: "Transmutation", levels: "cleric 3, druid 3, hunter 2, inquisitor 3, oracle 3, paladin 3, ranger 2, shaman 3, warpriest 3, witch 3",
                          castingTime: "1 standard action", components: "V, S, M (a dandelion stem)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "10 minutes/level",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "You remove a creature’s ability to poison others, whether inherent or via poisoned weapons.",
                          desc: "You remove a creature’s ability to poison others, whether inherent or via poisoned weapons. Whenever an affected creature would inflict poison with an attack, spell, or other method (including auras and other constant methods), that poison is automatically neutralized. This does not grant the subject of the spell any resistance to poison itself.",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Haunting Reminder", school: "Enchantment", levels: "antipaladin 1, arcanist 2, bard 2, inquisitor 2, mesmerist 2, psychic 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "12 hours + 2 hours/level or until triggered, then 1 day/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "As part of casting this spell, you can attempt a single Intimidate check to make the target act friendly to you.",
                          desc: "As part of casting this spell, you can attempt a single Intimidate check to make the target act friendly to you. If you succeed, the target assists you normally, but it remains fearful of your retribution even after its attitude shifts to unfriendly. If the creature reports your coercion to authorities, attacks you, or otherwise acts in a purposeful way that threatens you or your objectives (at the GM’s discretion), the spell triggers, inflicting the creature with the unshakable certainty that you will find and punish it. This imposes the shaken condition on the creature for 1 day per caster level; during this time, the creature takes a –2 penalty on saving throws against spells you cast with the fear descriptor.",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Instant Portrait", school: "Conjuration (Creation)", levels: "arcanist 1, bard 1, cleric 1, inquisitor 1, mesmerist 1, occultist 1, oracle 1, psychic 1, skald 1, sorcerer 1, summoner 1, summoner (unchained) 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "a monochromatic illustration up to 1 square foot in area", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "You touch a surface and produce a painted portrait of either yourself or a creature you can see without needing to attempt a Craft (painting) check.",
                          desc: "You touch a surface and produce a painted portrait of either yourself or a creature you can see without needing to attempt a Craft (painting) check. The surface to be affected must be relatively flat, such as a piece of paper or a wall. The image can be any color of your choice, but is monochromatic. While it is of too poor a quality to sell, it is otherwise accurate enough to recognize the subject or to serve as a target for the enter image spell. The portrait reflects your perception of the creature depicted, including any disguises, magical or mundane, that the subject is wearing at the time of the painting’s creation. The portrait is only as durable as normal paint and can be removed by mundane means.",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Invoke Primal Power", school: "Transmutation", levels: "druid 5, hunter 5",
                          castingTime: "1 swift action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "This spell must be cast as you activate wild shape to assume the form of an animal of at least Large size.",
                          desc: "This spell must be cast as you activate wild shape to assume the form of an animal of at least Large size. When you assume the animal form, it takes on many of the primal characteristics of the savage, prehistoric creatures that dwell in the Realm of the Mammoth Lords. When this spell’s duration expires, you return to your natural form automatically—in effect, you shorten the duration of that use of wild shape to the duration of this spell when you cast invoke primal power . In addition to the normal effects you gain upon assuming the wild shape, you also gain a +4 size bonus to your Constitution score and increase the natural armor bonus granted by the effect by 2 (thus, if you assume the size of a Large animal as if via",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mirror Mantis", school: "Illusion (Phantasm)", levels: "arcanist 1, bard 1, cleric 1, mesmerist 1, occultist 1, oracle 1, psychic 1, skald 1, sorcerer 1, warpriest 1, wizard 1",
                          castingTime: "1 standard action", components: "S, F (a hand mirror stained with a dried drop of blood)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one living creature",
                          duration: "1 hour/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "Whenever the target of this spell looks into a mirror or other reflective surface where it can see its own visage clearly, it sees a Red Mantis assassin (in full armor, face hidden by a mantis mask)…",
                          desc: "Whenever the target of this spell looks into a mirror or other reflective surface where it can see its own visage clearly, it sees a Red Mantis assassin (in full armor, face hidden by a mantis mask) looking back at it. The reflection is harmless and mimics the target’s motions perfectly; no one else can see this illusion. The first time the target sees the Red Mantis reflection, it must succeed at a Will save be or shaken and take a –2 penalty on saves against fear effects for as long as it can see the altered image and for 3 rounds thereafter. A new save must be attempted each time the creature views its reflection during the spell’s duration. Once a creature successfully saves, it becomes immune to being shaken by the caster’s mirror mantis spell for 24 hours, though it will still see the Red Mantis reflection until the spell ends.",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Obscured Script", school: "Illusion (Phantasm)", levels: "arcanist 2, bard 2, mesmerist 2, occultist 2, psychic 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a scrap of paper bearing a simple sentence written in at least five languages)",
                          range: "touch", area: "", targets: "one touched page, scroll, inscription, book, or other document no more than 3 feet in any dimension",
                          duration: "24 hours (D)",
                          savingThrow: "none; see text;", sr: false,
                          summary: "You create a latent illusion that clouds the judgment and reading ability of any creature that examines a targeted text.",
                          desc: "You create a latent illusion that clouds the judgment and reading ability of any creature that examines a targeted text. While casting the spell, you can designate up to one creature other than yourself per level to be immune to the effects. All other creatures that read the text must succeed at a Will save or find it difficult to properly parse and decipher the contents. This increases the DC of Linguistics checks to decipher the text by an amount equal to your caster level (maximum +10), and it increases the DC of the Wisdom check to avoid drawing a false conclusion by an equal amount. Unaffected creatures gain a circumstance bonus equal to your caster level (maximum +10) on Bluff checks to deceive affected creatures about the text’s contents. The spell obscures any magical glyphs, runes, or symbols within the text, increasing the Perception DC to find such traps by an amount equal to half your caster level (maximum +5). Obscured script can be made permanent with a",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Preserve Grace", school: "Divination", levels: "cleric 2, inquisitor 1, oracle 2, paladin 1, warpriest 2",
                          castingTime: "1 minute", components: "V, S, F (a silver hand mirror worth 50 gp)",
                          range: "touch", area: "", targets: "one good-aligned creature",
                          duration: "1 day",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "The Lantern Bearers must often make difficult decisions during their missions, such as determining what to do with captured enemies—should they be executed, imprisoned, set free, or given a chance to…",
                          desc: "The Lantern Bearers must often make difficult decisions during their missions, such as determining what to do with captured enemies—should they be executed, imprisoned, set free, or given a chance to mend their ways? With this spell, you grant a creature the ability to foresee moral consequences, as if the creature were wearing a phylactery of faithfulness . The spell’s guidance focuses on the protection of beauty and encourages peaceful resolution and mercy.",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Rune Trace", school: "Divination", levels: "arcanist 1, bard 1, cleric 1, occultist 1, oracle 1, psychic 1, skald 1, sorcerer 1, warpriest 1, wizard 1",
                          castingTime: "1 minute", components: "V, S, M (pinch of powdered gemstones worth 25 gp)",
                          range: "touch", area: "", targets: "rune touched",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "By immersing yourself fully in the intricacies of a carved or written rune of any kind, you can divine the elements of that rune’s nature.",
                          desc: "By immersing yourself fully in the intricacies of a carved or written rune of any kind, you can divine the elements of that rune’s nature. While casting rune trace , you must run your fingers (which cannot be gloved at the time) over the rune, glyph, symbol, or other marking you want to examine (hereafter referred to as the “rune”). This does not trigger any effects that touching the rune would normally trigger. Runes, symbols, and other effects that trigger when read still trigger as normal if you do so— but note that this spell does not require you to view and read the rune that you’re targeting. When the spell’s casting time ends, you instantly receive flashes of insight regarding the rune’s nature, history, and purpose, including the following information.",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Rune of Rule", school: "Transmutation", levels: "arcanist 2, bard 2, occultist 2, skald 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 minute", components: "V, S, M (vial of paint worth 25 gp)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "1 day or until activated (see description)",
                          savingThrow: "Will (harmless);", sr: true,
                          summary: "Investigations into the ancient and mysterious traditions of the seven virtues of rule of the lost human empire of Azlant, which were later corrupted by the runelords into the more familiar seven…",
                          desc: "Investigations into the ancient and mysterious traditions of the seven virtues of rule of the lost human empire of Azlant, which were later corrupted by the runelords into the more familiar seven deadly sins, inspired the Cyphermages to develop the runes of rule. This spell allows you to place a rune upon another creature that can then be used to aid it at a later time. You determine the spell’s effect at the time of casting by using your finger to paint a specific rune on the recipient’s body with a dose of specially prepared paint worth 25 gp. The inscribed rune lasts for 24 hours or until the spell is activated. Unless otherwise noted, the creature upon which the rune of rule has been inscribed can activate it at any time as a swift action. If the spell effect isn’t used, all markings associated with the rune disappear and the effect fades. You can never place the spell upon yourself—it must be bestowed on someone else. The seven runes of rule, along with their specific effects when the user activates them, are listed below. A creature can bear only one",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sarzari Shadow Memory", school: "Divination", levels: "arcanist 6, bard 6, cleric 6, inquisitor 6, oracle 6, psychic 6, skald 6, sorcerer 6, warpriest 6, witch 6, wizard 6",
                          castingTime: "1 hour", components: "V, S, M (a work of art bearing your target's likeness worth at least 1,500 gp)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 month",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "While casting this spell, you slowly destroy a piece of art bearing your victim’s likeness and beseech Achaekek to grant you access to the knowledge and lore contained within the innermost sanctum of…",
                          desc: "While casting this spell, you slowly destroy a piece of art bearing your victim’s likeness and beseech Achaekek to grant you access to the knowledge and lore contained within the innermost sanctum of the Crimson Citadel, the Sarzari Library. This endows you with information that could facilitate the target’s assassination by your hands. This information must be chosen from one of the three following categories—back doors, character, or weakness. “Back doors” informs you of hidden passages and other means of navigation within your target’s home. While inside your target’s home, you gain a +10 insight bonus on Perception checks and gain the constant benefits of detect secret doors and find traps. You automatically see through any illusory walls in the target’s home. “Character” lets you know of a compromising detail about your target’s personal life, giving you a +10 bonus on Bluff, Diplomacy, and Intimidate checks when attempting to gather information about your contracted victim from other people. Your target takes a –2 penalty on all saving throws against mind-affecting effects you generate, and you gain a +4 bonus on caster level checks you attempt to overcome the target's spell resistance. “Weakness” grants you knowledge of physical vulnerabilities your target has, as well as information about the target’s damage reduction, immunities, and other defensive abilities. If these vulnerabilities and defenses change during the spell’s duration, you immediately know. You automatically confirm all critical threats against the target. Once your victim is slain or a month has passed (whichever comes first), the information you gained from the spell fades. While you can recall certain elements of these memories, you no longer gain any of the benefits associated with the spell. You can only have one target affected by",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sawtooth Terrain", school: "Transmutation", levels: "arcanist 5, cleric 5, druid 5, hunter 5, oracle 5, sorcerer 5, warpriest 5, witch 5, wizard 5",
                          castingTime: "1 round", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one 10-foot square of difficult and damaging terrain", targets: "",
                          duration: "1 round/level",
                          savingThrow: "Reflex negates;", sr: true,
                          summary: "This spell targets an area of earth, metal, stone, or wood, causing long, serrated blades to shoot out from random points within the area of effect.",
                          desc: "This spell targets an area of earth, metal, stone, or wood, causing long, serrated blades to shoot out from random points within the area of effect. Any creature in the area when the spell is first cast must attempt a Reflex save to avoid taking 3d8 points of piercing damage from the blades and an additional 2d6 points of bleed damage. A creature that fails the save also has its speed reduced by half for 24 hours or until the injured creature benefits from a “cure” spell (which restores lost hit points as normal). Another creature can remove the penalty by succeeding on a Heal check against the spell’s save DC as a standard action. The lashing limbs remain active in the area for the remainder of the spell’s duration, during which time the area is treated as difficult terrain, and any creature that moves into or through the area takes 1d8 points of piercing damage. The transformed area can be located on any visible surface within range, including floors, walls, doors, ceilings, or other generally flat surfaces.",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Slave to Sin", school: "Enchantment (Compulsion)", levels: "arcanist 3, bard 2, cleric 3, inquisitor 3, mesmerist 2, oracle 3, paladin 2, skald 2, sorcerer 3, warpriest 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M/DF (a scrap of paper inscribed with the Sihedron rune)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "1 round/level",
                          savingThrow: "Will negates (see below);", sr: true,
                          summary: "This spell allows you to reach into an evil creature’s mind to expose and exploit its susceptibility to whichever of the seven so-called “deadly sins” it is most susceptible to.",
                          desc: "This spell allows you to reach into an evil creature’s mind to expose and exploit its susceptibility to whichever of the seven so-called “deadly sins” it is most susceptible to. The targeted creature must succeed at a Will save or it is overwhelmed with an inability to repress urges to indulge in whatever sin most closely mirrors its personality, and a glowing rune appears upon the creature’s body (usually the brow), identifying the sin. (The GM adjudicates which rune manifests on the creature’s body, as appropriate.) Each round, at the start of its turn, the target must attempt a new Will saving throw against the spell’s DC to resist the sin’s enslavement. If the target succeeds at this saving throw, it is sickened for that round by the distractions of its sin. If it fails, it is sickened and staggered as it spends part of its action wallowing in its targeted sin (a wrathful victim might waste time spouting threats and profanity, while a slothful victim might merely be slow and hesitant, and a lustful victim could well spend precious moments ogling or fawning over something of beauty).",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Storm Sight", school: "Divination (Scrying)", levels: "arcanist 2, cleric 2, druid 2, hunter 2, oracle 2, shaman 2, sorcerer 2, warpriest 2, witch 2, wizard 2",
                          castingTime: "1 round", components: "V, S, F (a storm, either natural or magical)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You step into any magical or naturally occurring storm and commune directly with the power of the wind and rain.",
                          desc: "You step into any magical or naturally occurring storm and commune directly with the power of the wind and rain. This spell allows the storm’s power to fill you, granting you knowledge and images of what else lies within its reach. As long as you remain within the storm, you can concentrate on it for 1 minute to determine whether or not other living creatures with an Intelligence score of 3 or higher are caught in the storm within 400 feet of you. Due to the nature of the spell, you do not need to attempt concentration checks against violent wind or storms when casting the spell, but other elements that might disrupt spellcasting require checks as normal. While the spell is in effect, you no longer need to attempt concentration checks as a result of wind or storms for spells you cast or concentrate on. Once you’ve sensed creatures with this spell by concentrating for 1 minute, you can continue concentrating to learn more. After you concentrate for 1 additional round, the spell reveals to you via winds and rain the presence of any Small or larger living creature with an Intelligence of 3 or higher within 400 feet of you. After 2 consecutive rounds of concentration, you learn the approximate distance to the detected life forms from your current location. After 3 rounds of concentration, the rain and winds allow you to determine the approximate direction of each life form. Once you’ve concentrated in this way for 3 rounds, you gain a bonus equal to half your caster level on your next initiative check during the spell’s duration.",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sun's Disdain", school: "Transmutation", levels: "arcanist 2, bloodrager 2, cleric 2, inquisitor 2, oracle 2, shaman 2, sorcerer 2, warpriest 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a piece of glass)/DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "permanent",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You alter a creature so the touch of the sun is hostile to it. The cursed creature gains light blindness and is blinded for 1 round if exposed to bright light, such as sunlight or the daylight spell.",
                          desc: "You alter a creature so the touch of the sun is hostile to it. The cursed creature gains light blindness and is blinded for 1 round if exposed to bright light, such as sunlight or the daylight spell. The cursed creature is dazzled as long as it remains in areas of bright light, and it is treated as being particularly susceptible to sunlight for the purposes of resolving spells like",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sun's Disdain, Mass", school: "Transmutation", levels: "arcanist 2, bloodrager 2, cleric 2, inquisitor 2, oracle 2, shaman 2, sorcerer 2, warpriest 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a piece of glass)/DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "permanent",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions like sun’s disdain , except that it can affect multiple creatures.",
                          desc: "This spell functions like sun’s disdain , except that it can affect multiple creatures.",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sunstalker", school: "Illusion (Glamer)", levels: "arcanist 3, bard 3, hunter 3, ranger 3, skald 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M/DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 round/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "A touched creature becomes invisible (as per invisibility ) as long as it is in direct sunlight (or bright light shed by a",
                          desc: "A touched creature becomes invisible (as per invisibility ) as long as it is in direct sunlight (or bright light shed by a",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Tactical Adaptation", school: "Transmutation", levels: "magus 3",
                          castingTime: "1 standard action", components: "V, S, F (a gold and sapphire ring worth 500 gp, which the caster must wear for the spell's duration)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "This spell was developed by an Aldori Academy student after several weeks of observing (and occasionally joining) Restov barroom brawls.",
                          desc: "This spell was developed by an Aldori Academy student after several weeks of observing (and occasionally joining) Restov barroom brawls. You draw on your mind’s hidden reserves, instantaneously mastering advanced combat techniques. When you cast this spell, choose a combat feat. You must meet all prerequisites for this feat, treating your magus level as your base attack bonus for this purpose. For the duration of this spell, you are treated as if you had the chosen feat. Once you cast this spell, you cannot change the chosen feat (or any decisions related to that feat) for additional castings of this spell on the same day. A creature can benefit from only one tactical adaptation spell at a time.",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Tieldlara's Feint", school: "Enchantment (Charm)", levels: "bard 2, skald 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "20 ft.", area: "", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "With a lascivious wink and a sensuous sway, you flood a foe’s mind with lustful thoughts of you, distracting your target and rendering that creature vulnerable to your attacks.",
                          desc: "With a lascivious wink and a sensuous sway, you flood a foe’s mind with lustful thoughts of you, distracting your target and rendering that creature vulnerable to your attacks. An affected creature takes a penalty equal to half your caster level on concentration checks and to its CMD against dirty trick APG , grapple, and steal",
                          source: "Adventurer's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Wall of Silver", school: "Abjuration", levels: "arcanist 6, bard 5, cleric 6, inquisitor 5, oracle 6, skald 5, sorcerer 6, warpriest 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "transparent wall 20 ft. high by up to 20 ft. long/level", targets: "",
                          duration: "1 round/leve",
                          savingThrow: "see text;", sr: true,
                          summary: "You create a wall of translucent silver energy that hums and vibrates at the slightest touch. Objects and nonevil creatures can pass through this wall without difficulty.",
                          desc: "You create a wall of translucent silver energy that hums and vibrates at the slightest touch. Objects and nonevil creatures can pass through this wall without difficulty. However, spells and effects with the evil descriptor treat this barrier as a wall of force , which blocks line of effect. Evil creatures that pass through the wall take 3d6 points of damage + 1 point of damage per caster level (maximum 3d6+20) and are blinded for 1 round. Creatures of any alignment that are particularly vulnerable to silver (such as those with damage reduction bypassed by silver, like devils or lycanthropes) instead take 1d6 points of damage per caster level (maximum 15d6), are staggered for 1 round, and are permanently blinded. A creature that succeeds at a Will save reduces the damage by half and negates the blinding and staggering effects.",
                          source: "Adventurer's Guide", isPremium: true),

                    // // MARK: - Adventurer's Guide, Andoran, Spirit of Liberty
        )
        try await db.insertSpell(
        .make("Detect Charm", school: "Divination", levels: "arcanist 1, bard 1, cleric 1, inquisitor 1, medium 1, mesmerist 1, occultist 1, oracle 1, paladin 1, psychic 1, shaman 1, skald 1, sorcerer 1, spiritualist 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "60 ft.", area: "cone-shaped emanation", targets: "",
                          duration: "concentration, up to 1 minute/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as per detect magic , except that it detects only charm, compulsion, and possession effects.",
                          desc: "This spell functions as per detect magic , except that it detects only charm, compulsion, and possession effects. You immediately detect the strength and location of each such aura on all creatures in the area. You can attempt to identify the properties of each aura (see Spellcraft on page 106 the",
                          source: "Adventurer's Guide, Andoran, Spirit of Liberty", isPremium: true)
        )
        try await db.insertSpell(
        .make("Summon Flight of Eagles", school: "Conjuration (Summoning)", levels: "arcanist 6, bloodrager 4, druid 6, hunter 4, ranger 4, shaman 6, sorcerer 6, summoner 6, summoner (unchained) 6, witch 6, wizard 6",
                          castingTime: "1 round", components: "V, S, F (a gold feather worth 100 gp)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "1d4+1 summoned creatures", targets: "",
                          duration: "10 minutes/level",
                          savingThrow: "none;", sr: false,
                          summary: "You summon 1d4+1 giant eagles to serve as you designate. The summoned birds can fight if you wish, but can also serve as mounts.",
                          desc: "You summon 1d4+1 giant eagles to serve as you designate. The summoned birds can fight if you wish, but can also serve as mounts.",
                          source: "Adventurer's Guide, Andoran, Spirit of Liberty", isPremium: true)
        )
        try await db.insertSpell(
        .make("Suppress Charms and Compulsions", school: "Abjuration", levels: "arcanist 2, bard 2, cleric 2, mesmerist 2, oracle 2, paladin 2, psychic 2, shaman 2, skald 2, sorcerer 2, warpriest 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature plus one additional creature per 4 levels, no two of which can be more than 30 ft. apart",
                          duration: "10 minutes or concentration (up to 1 round/level); see text",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You bolster the subject’s sense of willpower and self-worth when you cast this spell.",
                          desc: "You bolster the subject’s sense of willpower and self-worth when you cast this spell. As you cast it, you must decide if you want to grant a bonus to saving throws against charms and compulsions or suppress charms and compulsions. If you grant a bonus to saving throws, you grant all affected creatures a +4 morale bonus on saving throws against charm and compulsion effects for 10 minutes. If instead you suppress charms and compulsions, the spell’s duration drops to concentration, to a maximum duration of 1 round per level. As long as you continue to concentrate, the spell suppresses all existing charm and compulsion effects affecting the targets, regardless of whether the effect is beneficial or harmful. New charm or compulsion effects that successfully target such a protected creature are automatically suppressed as long as you continue concentrating. If you cease concentrating, the spell effect immediately ends, and remaining charm or compulsion effects resume for the rest of their remaining durations as normal.",
                          source: "Adventurer's Guide, Andoran, Spirit of Liberty", isPremium: true),

                    // // MARK: - Adventurer's Guide, Arcane Anthology
        )
        try await db.insertSpell(
        .make("Mask from Divination", school: "Divination", levels: "alchemist 5, arcanist 5, bloodrager 4, investigator 5, magus 5, shaman 5, sorcerer 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, F (an eyeless mask), M (diamond dust worth 200 gp)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "24 hours",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "As part of the action used to cast this spell, you place the mask used as the focus component on the target’s face, after which it adheres tightly to the target for the spell’s duration and cannot be…",
                          desc: "As part of the action used to cast this spell, you place the mask used as the focus component on the target’s face, after which it adheres tightly to the target for the spell’s duration and cannot be removed by physical force. Despite lacking eyes, this mask does not impair its wearer’s vision in any way. While in effect, this spell functions like nondetection , except it also foils divination spells that attempt to gather information about the creature, even if they don’t target it specifically. In the case of divination spells that would normally reveal the wearer’s presence, such as",
                          source: "Adventurer's Guide, Arcane Anthology", isPremium: true),

                    // // MARK: - Adventurer's Guide, Faction Guide
        )
        try await db.insertSpell(
        .make("Mark of Blood", school: "Transmutation", levels: "arcanist 2, bloodrager 2, inquisitor 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a drop of your blood)",
                          range: "touch", area: "", targets: "one weapon touched",
                          duration: "1 minute and permanent (see text)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You place a drop of your blood on a weapon and charge it with magic so that you transfer a small amount of your life essence to the next living creature you strike with the weapon.",
                          desc: "You place a drop of your blood on a weapon and charge it with magic so that you transfer a small amount of your life essence to the next living creature you strike with the weapon. Thereafter, you can spend a move action to know the direction and general distance of that creature. The target can negate this effect with a successful Will save. You must strike a creature within 1 minute of casting this spell or the magic is wasted, but once the mark of blood takes effect it is permanent until dispelled or removed via an effect like remove curse .",
                          source: "Adventurer's Guide, Faction Guide", isPremium: true),

                    // // MARK: - Adventurer's Guide, Inner Sea World Guide, Cheliax, Empire of Devils
        )
        try await db.insertSpell(
        .make("Dirge of the Victorious Knights", school: "Illusion (Shadow)", levels: "bard 6, skald 6",
                          castingTime: "1 round", components: "V, S, F (a medal from a dead Hellknight or a copy a Chelish opera script, either worth at least 100 gp)",
                          range: "120 ft.", area: "120-ft. line, 10 ft. wide", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Reflex half;", sr: true,
                          summary: "By performing part of the Chelish opera Victory of the Hellknights , you call forth spectral illusions of mounted Hellknights to trample your foes under the hooves of their glorious steeds.",
                          desc: "By performing part of the Chelish opera Victory of the Hellknights , you call forth spectral illusions of mounted Hellknights to trample your foes under the hooves of their glorious steeds. The shadowy knights appear in an adjacent 10-foot square and ride forward in the direction you indicate, dealing 1d6 points of damage per caster level (maximum 20d6) to all creatures in their path. Half of this damage is cold damage, while half results directly from arcane power and is not subject to cold resistance or immunity. The knights cannot pass through force effects or barriers that block incorporeal creatures or undead.",
                          source: "Adventurer's Guide, Inner Sea World Guide, Cheliax, Empire of Devils", isPremium: true),

                    // // MARK: - Adventurer's Guide, Path of the Hellknight
        )
        try await db.insertSpell(
        .make("Brand of Conformity", school: "Transmutation", levels: "inquisitor 1",
                          castingTime: "1 round", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 day/level",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "This spell etches the symbol of a nation, organization, or order on the target, dealing 1 point of damage.",
                          desc: "This spell etches the symbol of a nation, organization, or order on the target, dealing 1 point of damage. The mark can be placed on any exposed portion of the creature, typically the head or forearm. While branded in this way, the recipient loses the ability to speak or understand its racial language and the language of its homeland or primary culture (if these are different). For example, an elf raised among the Shoanti would lose Elven and Shoanti (if she knew both those languages), while a halfling raised among dwarves would lose both Halfling and Dwarven (if she knew both those languages). A gnome raised among gnomes would lose Gnome, but no other language. This spell never suppresses Common or Undercommon, nor does it prevent spellcasting, though it may prevent a target from speaking intelligibly if it suppresses all of the target’s languages. A brand of conformity can be hidden beneath clothing or removed by scraping it away (the latter deals 1d6 points of damage, though the brand returns if that damage is healed). In any event, the language-suppression element of a brand of conformity continues to function even when hidden or scraped away.",
                          source: "Adventurer's Guide, Path of the Hellknight", isPremium: true)
        )
        try await db.insertSpell(
        .make("Brand of Hobbling", school: "Transmutation", levels: "inquisitor 2",
                          castingTime: "1 round", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 day/level",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "This spell etches a symbol of chains, a particular prison, or a lawful institution on the target, dealing 1d6 points of damage.",
                          desc: "This spell etches a symbol of chains, a particular prison, or a lawful institution on the target, dealing 1d6 points of damage. The mark can be placed on any exposed portion of the creature, typically on the head or forearm. While the recipient is branded in this way, all of its movement speeds are reduced by half (rounded down to the next 5-foot increment). A brand of hobbling can be hidden by clothing or removed by scraping the brand away (the latter deals 1d6 points of damage, though the brand returns if that damage is healed), but in either case the effects of a brand of hobbling continue to function.",
                          source: "Adventurer's Guide, Path of the Hellknight", isPremium: true)
        )
        try await db.insertSpell(
        .make("Brand of Tracking", school: "Transmutation", levels: "inquisitor 4",
                          castingTime: "1 round", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "permanent",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "This spell etches the symbol of an eye or a lawful institution on the target, dealing 1d6 points of damage.",
                          desc: "This spell etches the symbol of an eye or a lawful institution on the target, dealing 1d6 points of damage. The mark can be placed on any exposed portion of the creature, typically the head or forearm. While the target is branded in this way, twice per day as a standard action, you can instantly determine in what direction and how far away the target is, as long as it is within a range equal to 1 mile per your caster level. If the target travels beyond this range or to another plane, you cannot gain information about the recipient’s location. Similarly, if the target becomes warded by a spell or effect that thwarts divination spells (such as nondetection ) or moves into such an area (such as one created by",
                          source: "Adventurer's Guide, Path of the Hellknight", isPremium: true)
        )
        try await db.insertSpell(
        .make("Infernal Challenger", school: "Conjuration (Calling)", levels: "arcanist 3, cleric 3, oracle 3, sorcerer 3, summoner 3, summoner (unchained) 3, warpriest 3, wizard 3",
                          castingTime: "1 round", components: "V, S, F/DF (an iron badge or medallion)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one called bearded devil and testing ground; see text", targets: "",
                          duration: "1 minute/level",
                          savingThrow: "none;", sr: false,
                          summary: "This spell summons a bearded devil, causing it to appear where you designate. The area within a 50-foot radius of where the devil appears is ringed with a smoldering, red glow.",
                          desc: "This spell summons a bearded devil, causing it to appear where you designate. The area within a 50-foot radius of where the devil appears is ringed with a smoldering, red glow. This area is the testing ground. To successfully cast this spell, no creature other than the devil’s challenger (see below) can be within this area while the spell is being cast. On the round it appears, the devil identifies itself (typically by name and with a brief recitation of honors) and states it is prepared to do battle with a sole mortal champion. In the same round, either you or a creature you designate while casting the spell must identify the devil’s challenger. For the duration of the spell, the devil does everything in its power to kill the challenger. You do not control the devil or have any influence over how it conducts itself in battle, but the devil cannot leave the testing ground. Unlike with summon monster and similar spells, you cannot dismiss the devil. Rather, the conjured devil remains until any one of the following criteria is met: it is reduced below 0 hit points or otherwise defeated, its challenger is slain, its challenger leaves the testing ground, or it takes damage from any source other than its challenger. Upon any of these occurrences, the devil vanishes. Conjuring a devil is typically an evil act. If cast for any purpose besides the administering of a Hellknight test, this spell has the evil descriptor.",
                          source: "Adventurer's Guide, Path of the Hellknight", isPremium: true)
        )
        try await db.insertSpell(
        .make("Shackle", school: "Conjuration (Creation)", levels: "arcanist 2, cleric 2, hunter 2, inquisitor 2, oracle 2, ranger 2, sorcerer 2, warpriest 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "one set of restraints; see text", targets: "",
                          duration: "1 hour/level",
                          savingThrow: "Reflex negates; see text;", sr: false,
                          summary: "You summon a set of Small or Medium masterwork restraints into being.",
                          desc: "You summon a set of Small or Medium masterwork restraints into being. When you cast this spell, you can choose whether the restraints are manacles or fetters (manacles specifically designed to fit around the ankles). You also summon the restraints’ key to your person; the Disable Device DC to open the locked restraints is equal to 15 + your caster level + the modifier of your primary casting ability score. Typically, the restraints appear in your hands. However, as part of the spell’s casting, you can make a melee touch attack against a creature; if you succeed and the creature then fails a Reflex saving throw against the spell’s DC, the locked fetters appear clasped on the creature or locked manacles clasp you and the creature together. You can instead have manacles restrain the target’s limbs in front of or behind it. If you cast the spell as a full-round action, you can make melee touch attacks against two creatures you can reach. If you succeed at both attacks and both creatures fail their Reflex saving throws, you can cause the set of manacles to bind the targets together. As you increase in level, the restraints become stronger and you gain more control over them. If you are 6th level or higher, you can make the restraints mithral, or you can summon Tiny or Large restraints. If you are 12th level or higher, you can summon Diminutive or Huge restraints. If you use an emerald worth at least 1,000 gp as a material component while casting this spell, as a standard action once during its duration, you can affect any creature bound by these restraints as per dimensional anchor with a duration of 1 minute per caster level. If you are 18th level or higher and use an emerald worth at least 1,000 gp as a material component while casting this spell, the restraints’ hardness increases to 30, they have 60 hit points, and they can’t be broken with a successful Strength check. (The emerald must be worth at least 2,000 gp if you also wish to use the",
                          source: "Adventurer's Guide, Path of the Hellknight", isPremium: true),

                    // // MARK: - Adventurer's Guide, People of the North
        )
        try await db.insertSpell(
        .make("Frost Mammoth", school: "Conjuration (Creation)", levels: "arcanist 7, cleric 7, druid 7, oracle 7, shaman 7, sorcerer 7, summoner 6, summoner (unchained) 6, wizard 7",
                          castingTime: "1 round", components: "V, S, M (a fragment of mammoth tusk)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one frost mammoth", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "A blast of snow suddenly fills an area with a space of 15 feet, immediately taking the shape of a woolly mammoth made of snow with tusks of solid ice.",
                          desc: "A blast of snow suddenly fills an area with a space of 15 feet, immediately taking the shape of a woolly mammoth made of snow with tusks of solid ice. The mammoth has statistics identical to those of a mastodon ( Pathfinder RPG Bestiary 128), except it also has the cold subtype (and thus gains immunity to cold and vulnerability to fire). The frost mammoth obeys your telepathic commands. It allows you or anyone you designate to ride it, and it is treated as if combat trained. At 17th level, a frost mammoth you conjure deals an additional 1d6 points of cold damage with each physical attack.",
                          source: "Adventurer's Guide, People of the North", isPremium: true),

                    // // MARK: - Adventurer's Guide, Second Darkness Player's Guide
        )
        try await db.insertSpell(
        .make("Hidden Knowledge", school: "Transmutation", levels: "arcanist 2, bard 2, medium 2, mesmerist 2, occultist 2, psychic 2, skald 2, sorcerer 2, wizard 2",
                          castingTime: "1 round", components: "V, S, M (a drop of ink)",
                          range: "personal", area: "", targets: "you",
                          duration: "up to 1 day/level (see text)",
                          savingThrow: "None", sr: false,
                          summary: "This subtle but useful spell allows you to safeguard important knowledge—even from yourself. While casting this spell, you recite one piece of knowledge (up to a maximum of 50 words).",
                          desc: "This subtle but useful spell allows you to safeguard important knowledge—even from yourself. While casting this spell, you recite one piece of knowledge (up to a maximum of 50 words). Upon completion of the spell’s casting, you transfer the knowledge from your mind to your skin in the form of an intricate, runic tattoo placed anywhere you choose on your body. The knowledge disappears utterly from your mind, and you might not realize you forgot something. The magic of the spell patches over gaps in your memory with recollections from the past. Until the spell’s duration ends, the knowledge is lost to you. When you cast this spell, you decide how long you wish the spell’s duration to be, up to a maximum duration of 1 day per level. Many Cyphermages commission nonmagical tattoos to disguise the effects of this spell. A detect magic spell or a successful Linguistics or Spellcraft check (DC 20 + your Intelligence modifier) reveals an enchanted tattoo, but not its contents. The effects of",
                          source: "Adventurer's Guide, Second Darkness Player's Guide", isPremium: true),

                    // // MARK: - Animal Archive
        )
        try await db.insertSpell(
        .make("Familiar Figment", school: "Illusion (Figment)", levels: "arcanist 2, redmantisassassin 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "your familiar",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You create an illusory duplicate of your familiar that moves erratically around your familiar’s space, frequently moving through the familiar’s body with a blurring effect that makes it…",
                          desc: "You create an illusory duplicate of your familiar that moves erratically around your familiar’s space, frequently moving through the familiar’s body with a blurring effect that makes it indistinguishable from the real creature. Attacks against the familiar have a 50% miss chance; attacks that miss instead target the familiar figment, which reacts as if damaged as appropriate to the attack but unlike a mirror image is not destroyed when struck. This spell does not grant your familiar concealment or prevent it from being targeted by spell effects that do not require an attack roll. In addition, as a swift action, your familiar can direct the familiar figment to attempt a melee touch attack, using your base attack bonus and the familiar’s Dexterity modifier. If this attack hits, your familiar (but not other creatures) treats that target as flanked until the end of its turn.",
                          source: "Animal Archive", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hunter's Friend", school: "Transmutation", levels: "druid 3, hunter 2, ranger 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "your animal companion",
                          duration: "1 hour/level (D)",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "Your animal companion works in perfect harmony with your mastery of nature.",
                          desc: "Your animal companion works in perfect harmony with your mastery of nature. You share one of the following class abilities with your companion for every 4 caster levels you possess: camouflage, favored enemy, favored terrain, hide in plain sight, resist nature’s lure, swift tracker, trackless step, venom immunity, and woodland stride. You must have the ability in question to share it with your companion, and it functions for your companion just as it functions for you, save that each favored enemy or favored terrain you share counts as a separate class ability for the purpose of this spell. At the GM’s discretion, you may instead share an ability granted by an archetype that substitutes for one of the above abilities, such as the arctic endurance, arctic native, icewalking, and snowcaster abilities of an arctic druid APG .",
                          source: "Animal Archive", isPremium: true),

                    // // MARK: - Armor Master's Handbook
        )
        try await db.insertSpell(
        .make("Guardian Armor", school: "Conjuration (Teleportation)", levels: "antipaladin 1, arcanist 1, bloodrager 1, cleric 1, inquisitor 1, magus 1, occultist 1, oracle 1, paladin 1, sorcerer 1, warpriest 1, wizard 1",
                          castingTime: "1 immediate action", components: "V, S, F (armor worn)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one willing creature; see below",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: true,
                          summary: "This spell teleports the suit of armor you are wearing off of your body and onto an ally within range; the target must be the same size and general shape as you.",
                          desc: "This spell teleports the suit of armor you are wearing off of your body and onto an ally within range; the target must be the same size and general shape as you. This armor appears on the target’s body fully formed and properly donned, granting the creature the immediate benefit of its protection. If the target of guardian armor was already wearing armor, the armor wearing it is removed from the target’s body and falls undamaged into an adjacent square.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Revenant Armor", school: "Transmutation", levels: "antipaladin 3, arcanist 4, cleric 4, magus 4, medium 4, occultist 4, oracle 4, paladin 3, shaman 3, sorcerer 4, spiritualist 3, warpriest 4, witch 3, wizard 4",
                          castingTime: "1 standard action", components: "V, S, F (one suit of armor)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one suit of armor",
                          duration: "1 day/level or 1 hour/level; see below",
                          savingThrow: "none;", sr: false,
                          summary: "This spell endows a suit of armor with a singular purpose realized only after its wearer goes unconscious or is killed; whenever the wearer of a suit of armor warded by revenant armor is brought…",
                          desc: "This spell endows a suit of armor with a singular purpose realized only after its wearer goes unconscious or is killed; whenever the wearer of a suit of armor warded by revenant armor is brought below 0 hit points or otherwise rendered unconscious (but not paralyzed or held) in combat, the armor is immediately brought to life as a Medium animated object. This animated suit of armor still contains the unconscious (or dead) body of its former wearer and moves with a shambling gait at a speed of 20 feet. This animated object has average hit points and, if the armor is made from metal, it has the metal animated object extraordinary ability (plus additional abilities based on the type of metal, as indicated on page 14 of the",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Shield Of Shards", school: "Transmutation", levels: "bloodrager 1, cleric 2, inquisitor 2, magus 2, medium 2, oracle 2, paladin 1, shaman 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S, F (a shield)",
                          range: "personal", area: "", targets: "one shield you wield",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "This defensive spell must be cast on a shield you are currently wielding, and fractures the shield into two shards, plus one additional shard per 2 caster levels (to a maximum of 12 shards at 20th…",
                          desc: "This defensive spell must be cast on a shield you are currently wielding, and fractures the shield into two shards, plus one additional shard per 2 caster levels (to a maximum of 12 shards at 20th level). While shield of shards is active, you lose your shield’s bonus to AC as its broken pieces orbit you. On your turn, you can direct the shards to attack an adjacent opponent as a move action. The shards’ attack bonus is equal to your caster level + the modifier for the ability score that determines your spell save DCs. The shards deal an amount of slashing and piercing damage equal to 1d4 points + 1 point per shard beyond the first, and have a threat range of 19–20. They are considered magic weapons for the purpose of bypassing damage reduction. Additionally, if your shield is made from a special material (such as adamantine), the shards penetrate damage reduction and hardness as if they were weapons made from the same material. At the end of this spell’s duration, the shards reform into their original shield form. You regain its shield bonus to AC, provided you still have a free hand in which to wield it. Otherwise, the shield falls at your feet in your square.",
                          source: "Armor Master's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Spiritual Squire", school: "Evocation", levels: "antipaladin 2, cleric 2, inquisitor 2, oracle 2, paladin 2, shaman 2, spiritualist 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "",
                          duration: "1 minute/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell causes an ally made of pure force to appear in a single 5-foot square within range. The ally takes the form of a servant of your god (if any) or an ancestor.",
                          desc: "This spell causes an ally made of pure force to appear in a single 5-foot square within range. The ally takes the form of a servant of your god (if any) or an ancestor. The spiritual squire occupies its space, though you and your allies can move through it, since it is your ally. While the spiritual squire appears to wear armor and carry a weapon, it cannot make attacks and does not threaten any spaces. On your turn, the spiritual squire can do one of the following: retrieve one stowed item from your possessions, carry an object weighing no more than 10 pounds per caster level, hand you an object it is carrying, perform the aid another action on your behalf or for one of your allies, or help one creature of your choice don armor (which then takes half the normal time). When the spiritual squire attempts the aid another action in combat, its attack bonus is equal to your base attack bonus + your Wisdom modifier. Each round after the first as a swift action, you can order the spiritual squire to move. It has a speed of 30 feet. Being a construct of force, the spiritual squire cannot be harmed by any physical attacks, but disintegrate, dispel magic , a",
                          source: "Armor Master's Handbook", isPremium: true),

                    // // MARK: - Black Markets, Dark Markets - A Guide to Katapesh
        )
        try await db.insertSpell(
        .make("Night Blindness", school: "Necromancy", levels: "antipaladin 1, arcanist 1, bard 1, bloodrager 1, cleric 2, oracle 2, sahirafiyun 1, shaman 2, skald 1, sorcerer 1, warpriest 2, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one living creature",
                          duration: "1 day/level (D)",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "Your target’s vision becomes impaired as if the light level were one step lower, treating bright light as normal light, normal light as dim light, and dim light as darkness.",
                          desc: "Your target’s vision becomes impaired as if the light level were one step lower, treating bright light as normal light, normal light as dim light, and dim light as darkness. In addition, the subject gains no benefit from darkvision, low-light vision, or the see in darkness ability. The subject gains a +4 bonus on saving throws to resist the blind or dazzled condition caused by bright light (such as flare). Remove blindness/deafness dispels",
                          source: "Black Markets, Dark Markets - A Guide to Katapesh", isPremium: true)
        )
        try await db.insertSpell(
        .make("Pesh Vigor", school: "Transmutation", levels: "alchemist 1, antipaladin 1, arcanist 1, bloodrager 1, cleric 1, druid 1, hunter 1, investigator 1, magus 1, oracle 1, sahirafiyun 1, shaman 1, sorcerer 1, summoner 1, warpriest 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M (a dose of pesh worth 15 gp)",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "1 round/level; see text",
                          savingThrow: "Will negates;", sr: true,
                          summary: "The target gains a +2 enhancement bonus to its Strength. Once per round as a free action, the target can choose to increase the enhancement bonus by 2 for 1 round; if it does so, it takes 1d6 points…",
                          desc: "The target gains a +2 enhancement bonus to its Strength. Once per round as a free action, the target can choose to increase the enhancement bonus by 2 for 1 round; if it does so, it takes 1d6 points of nonlethal damage and the spell’s duration decreases by 1 additional round. For every 5 caster levels you have, the target can choose to increase the enhancement bonus by an additional 2, taking an additional 1d6 points of nonlethal damage and decreasing the duration by 1 additional round per increase to the Strength bonus, to a maximum enhancement bonus of +10 and 4d6 points of nonlethal damage at caster level 15th. The subject can’t spend more rounds than remain in the duration. When the spell ends, the subject becomes fatigued.",
                          source: "Black Markets, Dark Markets - A Guide to Katapesh", isPremium: true),

                    // // MARK: - Blood of the Elements
        )
        try await db.insertSpell(
        .make("Storm Step", school: "Conjuration (Teleportation)", levels: "arcanist 3, magus 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "you",
                          duration: "instantaneous",
                          savingThrow: "Reflex halves;", sr: true,
                          summary: "You are able to harness the power of the storm to transport yourself a short distance, by taking the form of a furious, sizzling bolt of elemental electricity.",
                          desc: "You are able to harness the power of the storm to transport yourself a short distance, by taking the form of a furious, sizzling bolt of elemental electricity. You must either have line of sight to your destination or you must specify a direction and distance within range. Creatures and objects in the path of your passage take 1d8 points of electricity damage per 2 caster levels (maximum 5d8). A successful Reflex save halves the damage. If your path intersects with a solid object, you damage the barrier accordingly. If the damage is enough to break through the barrier, you continue beyond the barrier as long as the spell’s range permits; otherwise, your movement stops in the square adjacent to the barrier and the effect ends.",
                          source: "Blood of the Elements", isPremium: true),

                    // // MARK: - Blood of the Moon
        )
        try await db.insertSpell(
        .make("Accursed Glare", school: "Necromancy", levels: "antipaladin 3, arcanist 3, sorcerer 3, witch 3, wizard 3 (werebat)",
                          castingTime: "1 round", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 day/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You channel a fell curse through your glare. If the target fails its saving throw, it begins to obsessively secondguess its actions and attract bad luck.",
                          desc: "You channel a fell curse through your glare. If the target fails its saving throw, it begins to obsessively secondguess its actions and attract bad luck. Whenever the target attempts an attack roll or saving throw while the curse lasts, it must roll twice and take the lower result. While you cast this spell, an ally within range of the subject can attempt an Intimidate check as a move action (DC = save DC of this spell); on a success, the ally adds its own glare to yours, granting you a +2 bonus on your caster level check to overcome spell resistance (if any). Multiple allies can attempt Intimidate checks; this bonus stacks.",
                          source: "Blood of the Moon", isPremium: true)
        )
        try await db.insertSpell(
        .make("Share Skin", school: "Necromancy", levels: "druid 6, hunter 6, witch 6 (werebear)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "one animal touched",
                          duration: "1 minute/level or until you return to your body",
                          savingThrow: "None", sr: false,
                          summary: "You can possess an animal’s body in a manner that functions like magic jar , except as noted here. Your body vanishes while the effect lasts and you don’t require a receptacle. Share Skin, Greater",
                          desc: "You can possess an animal’s body in a manner that functions like magic jar , except as noted here. Your body vanishes while the effect lasts and you don’t require a receptacle. Share Skin, Greater",
                          source: "Blood of the Moon", isPremium: true)
        )
        try await db.insertSpell(
        .make("Share Skin, Greater", school: "Necromancy", levels: "druid 6, hunter 6, witch 6 (werebear)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "one animal touched",
                          duration: "1 minute/level or until you return to your body",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions like share skin , except as noted here.",
                          desc: "This spell functions like share skin , except as noted here.",
                          source: "Blood of the Moon", isPremium: true),

                    // // MARK: - Blood of the Night
        )
        try await db.insertSpell(
        .make("Display Aversion", school: "Illusion (Shadow)", levels: "arcanist 3, bard 2, cleric 2, inquisitor 2, oracle 2, redmantisassassin 3, skald 2, sorcerer 3, warpriest 2, witch 2, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a drop of holy water)",
                          range: "long (400 ft. + 40 ft./level)", area: "visual figment that cannot extend beyond four 10-ft. cubes + one 10-ft. cube/level (S)", targets: "",
                          duration: "concentration + 1d4 rounds",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions like minor image , except it always creates an animated illusion of you presenting to a vampire a material, object, or sound that it is averse to, such as garlic, a holy symbol,…",
                          desc: "This spell functions like minor image , except it always creates an animated illusion of you presenting to a vampire a material, object, or sound that it is averse to, such as garlic, a holy symbol, or bells ringing. You specify what aversion the illusion depicts when you cast the spell. The vampire reacts to the illusion as if it were real; it can overcome the effect by succeeding at a disbelief save or a normal Will save against the illusion’s DC (instead of the normal DC 25 to overcome its revulsion). The illusion is only quasireal and cannot otherwise affect creatures.",
                          source: "Blood of the Night", isPremium: true)
        )
        try await db.insertSpell(
        .make("Domination Link", school: "Divination", levels: "arcanist 3, bard 3, inquisitor 3, skald 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, F/DF (a copper piece)",
                          range: "60 ft.", area: "cone-shaped emanation", targets: "",
                          duration: "concentration, up to 1 min./level (D)",
                          savingThrow: "Will negates, see text;", sr: false,
                          summary: "This spell functions like detect thoughts , with the additional ability to find echoes of the thoughts of a creature mentally controlling the target.",
                          desc: "This spell functions like detect thoughts , with the additional ability to find echoes of the thoughts of a creature mentally controlling the target. For example, if the target has been dominated by a vampire, you can use evidence left in the target’s mind to learn about that vampire. Each minute you concentrate on the spell, you can learn your choice of one of the following pieces of information.",
                          source: "Blood of the Night", isPremium: true)
        )
        try await db.insertSpell(
        .make("Project Weakness", school: "Necromancy", levels: "arcanist 4, cleric 3, oracle 3, sorcerer 4, warpriest 3, witch 3, wizard 4 (vampire)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "permanent",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You curse the target with the weaknesses of your kind of vampirism. The creature reacts to garlic, mirrors, ringing bells, sunlight, and so on as if it were a vampire of the same type as you.",
                          desc: "You curse the target with the weaknesses of your kind of vampirism. The creature reacts to garlic, mirrors, ringing bells, sunlight, and so on as if it were a vampire of the same type as you. This cannot kill the target; anything that would kill it (such as a lengthy exposure to sunlight if you are a moroi vampire) renders it helpless until the curse or the harmful effect is removed. The target gains none of the benefits of being a vampire (such as fast healing or requiring special ways to be permanently killed), only the penalties.",
                          source: "Blood of the Night", isPremium: true)
        )
        try await db.insertSpell(
        .make("Steal Years", school: "Transmutation", levels: "arcanist 3, cleric 3, druid 3, hunter 3, oracle 3, redmantisassassin 3, sorcerer 3, warpriest 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a handful of ash)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "24 hours",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "You temporarily drain youth and vitality from the target and channel it into yourself.",
                          desc: "You temporarily drain youth and vitality from the target and channel it into yourself. If the target fails its Fortitude save, it physically ages 1d4 years per two caster levels (maximum 5d4), and you decrease your age by the same number of years. If this changes the age category of you or the target, only adjust physical ability scores. This effect cannot bring your age to lower than the minimum age of adulthood for your race (see page 169 of the Core Rulebook ). This stolen youth does not actually change your age or prolong your life; you will still die at your allotted time, no matter how youthful you appear. Likewise, the spell does not add to the target’s true age, and cannot make the target die of old age. When the spell ends, the sudden weight of aging makes you fatigued for 1d4 hours. Steal Years, Greater",
                          source: "Blood of the Night", isPremium: true)
        )
        try await db.insertSpell(
        .make("Steal Years, Greater", school: "Transmutation", levels: "arcanist 3, cleric 3, druid 3, hunter 3, oracle 3, redmantisassassin 3, sorcerer 3, warpriest 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a handful of ash)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "24 hours",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "This spell functions like steal years , except you drain 1d6 years per two caster levels (maximum 10d6).",
                          desc: "This spell functions like steal years , except you drain 1d6 years per two caster levels (maximum 10d6).",
                          source: "Blood of the Night", isPremium: true)
        )
        try await db.insertSpell(
        .make("Transmute Wine to Blood", school: "Transmutation", levels: "arcanist 2, cleric 2, oracle 2, redmantisassassin 2, sorcerer 2, warpriest 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (drop of animal blood)",
                          range: "touch", area: "", targets: "bottle of wine worth at least 10 gp",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates (object);", sr: true,
                          summary: "You transform one bottle of fine wine into 1 pint of animal blood, sufficient for a creature with the blood drain ability to feed upon as if it came from a Medium animal with 1 Hit Die.",
                          desc: "You transform one bottle of fine wine into 1 pint of animal blood, sufficient for a creature with the blood drain ability to feed upon as if it came from a Medium animal with 1 Hit Die. If you are using the optional hunger rules (see page 22), this blood satiates an undead creature’s hunger, negating any withdrawal effects, but does not grant the creature a feeding bonus. The blood coagulates and spoils at the normal rate.",
                          source: "Blood of the Night", isPremium: true),

                    // // MARK: - Blood of the Sea
        )
        try await db.insertSpell(
        .make("Arid Refuge", school: "Conjuration (Creation)", levels: "arcanist 5, bard 5, skald 5, sorcerer 5, witch 5, wizard 5",
                          castingTime: "10 minutes", components: "V, S, M (a chip of stone wrapped in cloth)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "20-ft.-square structure", targets: "",
                          duration: "2 hours/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You conjure a small stone building on any relatively flat nonliving surface at least 20 feet square that can support its weight (such as the ocean floor or an underwater ridge).",
                          desc: "You conjure a small stone building on any relatively flat nonliving surface at least 20 feet square that can support its weight (such as the ocean floor or an underwater ridge). The outline of a door is marked on one wall of your choice or on the roof. You and anyone you designate as the spell is cast can pass through the door, which is actually an opaque membrane of force that keeps the surrounding atmosphere from entering the structure. Creatures you have not designated can force their way through the door with a successful DC 28 Strength check. The shelter is as strong as a normal stone building, resists flames and fire as if it were stone, and is impervious to normal missiles (but not the sort cast by siege engines or giants). The shelter contains eight bunks, a trestle table, eight stools, and a writing desk. These furnishings disappear if removed from the shelter. The shelter contains fresh, breathable air that replenishes within the shelter but does not pass through the membrane of force. The shelter’s interior maintains a temperature of 70° F regardless of the temperature outside the shelter. This spell can be cast only underwater.",
                          source: "Blood of the Sea", isPremium: true)
        )
        try await db.insertSpell(
        .make("Instant Clot", school: "Conjuration (Healing)", levels: "alchemist 1, bard 1, cleric 1, druid 1, hunter 1, inquisitor 1, investigator 1, oracle 1, paladin 1, ranger 1, shaman 1, skald 1, warpriest 1, witch 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "1 round/level (D)",
                          savingThrow: "none (harmless);", sr: true,
                          summary: "Bleed effects on the target immediately end when this spell is cast, and no blood flows out when the target is damaged by a slashing or piercing weapon.",
                          desc: "Bleed effects on the target immediately end when this spell is cast, and no blood flows out when the target is damaged by a slashing or piercing weapon. The target takes the full amount of damage from attacks, but because the wounds produce no blood, they do not attract creatures with the ability to sense blood, such as sharks. If the target suffers another bleed effect while this spell is in effect, the bleed effect ends and the spell is immediately dismissed.",
                          source: "Blood of the Sea", isPremium: true)
        )
        try await db.insertSpell(
        .make("Silt Sphere", school: "Illusion (Glamer)", levels: "arcanist 3, bard 3, skald 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a smooth stone)",
                          range: "20 ft.", area: "20-ft.-radius centered on you", targets: "",
                          duration: "1 minute/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell generates an illusory silt cloud that drifts around you and moves with you. The cloud provides total concealment to creatures within it (including you) when the spell is cast.",
                          desc: "This spell generates an illusory silt cloud that drifts around you and moves with you. The cloud provides total concealment to creatures within it (including you) when the spell is cast. Creatures moving into the cloud after the spell is cast gain concealment (but not total concealment) due to the illusion. Any creatures within the cloud can see each other normally and can see out from within the cloud as though it were transparent. If a creature other than you that has total concealment due to the cloud makes an attack against any foe, it loses total concealment and gains concealment instead. If you make an attack against any creature, the spell ends. A creature that examines the cloud from the outside and succeeds at a DC 20 Knowledge (nature) check notices the silt cloud is unnaturally compact and fast moving, and that creature can attempt an immediate saving throw to disbelieve the illusion. Other circumstances (such as if the silt cloud floats in the middle of otherwise clear waters) can modify the DC of the Knowledge (nature) check. This spell can be cast only underwater.",
                          source: "Blood of the Sea", isPremium: true)
        )
        try await db.insertSpell(
        .make("Suspend Drowning", school: "Transmutation", levels: "bard 1, cleric 1, druid 1, hunter 1, oracle 1, ranger 1, skald 1, warpriest 1",
                          castingTime: "1 immediate action", components: "V",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one Medium creatures or smaller drowning creature/level, no two of which can be more than 20 ft. apart",
                          duration: "1 round/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The affected creatures immediately—though temporarily—stop drowning and cannot suffocate or drown while this spell is in effect.",
                          desc: "The affected creatures immediately—though temporarily—stop drowning and cannot suffocate or drown while this spell is in effect. A target that had been reduced to below 1 hit point from drowning immediately returns to 1 hit point. The magic of this spell allows the targets to breathe, drink, and talk normally for the duration of the spell, but targets cannot inhale to increase the amount of air remaining in their lungs. When the spell effect ends, the target resumes drowning unless it is in an environment that allows it to breathe normally (such as an air-breathing creature returning to the surface) or has obtained a method of breathing normally (such as by consuming a potion of water breathing ).",
                          source: "Blood of the Sea", isPremium: true),

                    // // MARK: - Book of the Damned, Pathfinder #5: Sins of the Saviors, Gods and Magic, Inner Sea World Guide, Pathfinder Comics #5
        )
        try await db.insertSpell(
        .make("Waters of Lamashtu", school: "Conjuration (Creation)", levels: "alchemist 2, antipaladin 2, cleric 3, druid 3, hunter 3, investigator 3, oracle 3, warpriest 3, witch 3",
                          castingTime: "1 standard action", components: "V, S, M (250 gp of powdered amber)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "up to 1 flask of the waters of Lamashtu per 2 levels", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Fortitude partial;", sr: false,
                          summary: "This spell generates what appears to be clear, pure water, but it is in fact a foul secretion known as the waters of Lamashtu . The liquid functions in all the same ways as unholy water (see",
                          desc: "This spell generates what appears to be clear, pure water, but it is in fact a foul secretion known as the waters of Lamashtu . The liquid functions in all the same ways as unholy water (see",
                          source: "Book of the Damned, Pathfinder #5: Sins of the Saviors, Gods and Magic, Inner Sea World Guide, Pathfinder Comics #5", isPremium: true),

                    // // MARK: - Book of the Damned, Pathfinder #99: Dance of the Damned
        )
        try await db.insertSpell(
        .make("Create Drug", school: "Conjuration (Creation)", levels: "alchemist 3, cleric 4, druid 3, hunter 3, investigator 3, occultist 3, oracle 4, warpriest 4",
                          castingTime: "1 round", components: "V, S",
                          range: "0 ft.", area: "1 dose of a drug/3 levels", targets: "",
                          duration: "1 minute",
                          savingThrow: "none (see below);", sr: false,
                          summary: "The caster conjures into being one of the following drugs: aether, flayleaf, opium, pesh, scour, shiver, or zerk.",
                          desc: "The caster conjures into being one of the following drugs: aether, flayleaf, opium, pesh, scour, shiver, or zerk. (At the GM’s discretion, other drugs of similar power can be included on this list.) The drug doses the caster creates with this spell must be used within 1 minute of being conjured, or they dissolve into worthless dust or evaporate into noxious but fleeting vapors, though the effects of the drug may last far longer if taken before it decays. The drugs created by this spell cannot be sold, but they can be given to other creatures. A creature that takes a dose of one of these drug typically must be either willing or helpless, though some drugs might be inhaled, applied to injuries, or secretly slipped into food if the caster acts swiftly (see each drug’s description). The DC to resist a drug created by this spell is based on the conjurer’s caster level, not the DC listed in the common versions of the drug. For more information, see Drugs and Addiction on page 236 of the Pathfinder RPG GameMastery Guide . As a special use of this spell, a lawful evil worshiper of Mahathallah, the Dowager of Illusions, can create doses of the drug adyton (see the sidebar above). A Mahathallah worshiper can create adyton only once per week, regardless of her level or how many times she casts this spell. The spell otherwise functions— and creates as many doses—as normal.",
                          source: "Book of the Damned, Pathfinder #99: Dance of the Damned", isPremium: true),

                    // // MARK: - Champions of Balance
        )
        try await db.insertSpell(
        .make("Antithetical Constraint", school: "Enchantment (Compulsion)", levels: "arcanist 4, bard 4, skald 4, sorcerer 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You constrain the target such that the target automatically misses with all attacks made against creatures that are not of the opposite alignment of it.",
                          desc: "You constrain the target such that the target automatically misses with all attacks made against creatures that are not of the opposite alignment of it. For example, a lawful evil target would automatically fail at all attacks except those made against chaotic good creatures, and a neutral good target would automatically fail at all attacks except those made against neutral evil creatures. For the purposes of antithetical constraint , creatures that are chaotic evil, chaotic good, lawful evil, or lawful good are all considered to have the opposite alignment of a target whose alignment is neutral with no other alignment components. This restriction doesn’t apply to effects that do not require attack rolls, such as",
                          source: "Champions of Balance", isPremium: true)
        )
        try await db.insertSpell(
        .make("Recentering Drone", school: "Abjuration", levels: "cleric 2, druid 2, hunter 2, oracle 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature/2 levels (no two of which may be more than 30 ft. apart)",
                          duration: "concentration",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You emit a calming subsonic drone that allows the targets to temporarily refocus and restore their balance when they’re suffering from debilitating conditions.",
                          desc: "You emit a calming subsonic drone that allows the targets to temporarily refocus and restore their balance when they’re suffering from debilitating conditions. A target with the dazzled, fatigued, shaken, or sickened condition ignores the penalties of those conditions for the duration of this spell. A target with one of the following conditions is treated as having the associated lesser condition for the duration of the spell, as shown by the following table. Condition Lesser Condition",
                          source: "Champions of Balance", isPremium: true),

                    // // MARK: - Champions of Corruption
        )
        try await db.insertSpell(
        .make("Shared Suffering", school: "Necromancy", levels: "antipaladin 2, arcanist 2, inquisitor 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, F (a silver dagger inlaid with onyx and jade worth 100 gp)",
                          range: "long (400 ft. + 40 ft./level)", area: "", targets: "one living creature",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: true,
                          summary: "You infuse a dagger with necromantic energy, then plunge the dagger into your own body.",
                          desc: "You infuse a dagger with necromantic energy, then plunge the dagger into your own body. You take 1d6 points of negative energy damage plus 1d6 points of damage for every 2 caster levels you possess beyond 1st (to a maximum of 5d6 at 9th level). The target takes an amount of damage equal to the damage you took this way, plus an amount equal to your Intelligence modifier (if you’re a witch or wizard), Wisdom modifier (if you’re an inquisitor), or Charisma modifier (if you’re an antipaladin or sorcerer). Damage from this spell cannot be divided by effects such as shield other",
                          source: "Champions of Corruption", isPremium: true)
        )
        try await db.insertSpell(
        .make("Wracking Ray", school: "Necromancy", levels: "arcanist 5, sorcerer 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, M (an old bone, broken in the casting)",
                          range: "medium (100 ft. + 10 ft./level)", area: "ray", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Fortitude half;", sr: true,
                          summary: "A ray of sickly greenish-gray negative energy issues forth from the palm of your hand. Make a ranged touch attack against the target.",
                          desc: "A ray of sickly greenish-gray negative energy issues forth from the palm of your hand. Make a ranged touch attack against the target. A creature hit by this spell is wracked by painful spasms as its muscles and sinews wither and twist. The subject takes 1d4 points of Dexterity and Strength damage per 3 caster levels you possess (maximum 5d4 each). This spell cannot reduce an ability score below 1. A successful Fortitude save halves the damage.",
                          source: "Champions of Corruption", isPremium: true),

                    // // MARK: - Champions of Purity
        )
        try await db.insertSpell(
        .make("Accept Affliction", school: "Conjuration (Healing)", levels: "bard 3, cleric 3, druid 3, hunter 3, oracle 3, paladin 3, skald 3, warpriest 3, witch 3",
                          castingTime: "1 standard action", components: "V, S, M/DF (dove’s heart)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "The caster can transfer the effects of afflictions such as curses, diseases, and poisons from the target creature to himself.",
                          desc: "The caster can transfer the effects of afflictions such as curses, diseases, and poisons from the target creature to himself. This spell can also transfer the blinded, deafened, fatigued, nauseated, shaken, and sickened conditions. All aspects of the transferred afflictions (save DCs, remaining duration, removal conditions, and so on) remain the same, but affect the caster instead of the original target. After transferring the affliction or condition, the caster is free to cure it in any way he can.",
                          source: "Champions of Purity", isPremium: true)
        )
        try await db.insertSpell(
        .make("Angelic Aspect", school: "Transmutation", levels: "arcanist 2, cleric 2, oracle 2, paladin 2, redmantisassassin 2, sorcerer 2, warpriest 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like lesser angelic aspect , except you gain low-light vision, darkvision 60, resistance to acid 10, resistance to cold 10, and DR 5/evil, and you sprout white feathered wings…",
                          desc: "This spell functions like lesser angelic aspect , except you gain low-light vision, darkvision 60, resistance to acid 10, resistance to cold 10, and DR 5/evil, and you sprout white feathered wings allowing you to fly at a speed of 30 feet with average maneuverability. In addition, your natural weapons and any weapons you wield are considered good-aligned for the purpose of overcoming damage reduction. Angelic Aspect, Greater",
                          source: "Champions of Purity", isPremium: true)
        )
        try await db.insertSpell(
        .make("Angelic Aspect, Greater", school: "Transmutation", levels: "arcanist 2, cleric 2, oracle 2, paladin 2, redmantisassassin 2, sorcerer 2, warpriest 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like lesser angelic aspect , except you gain lowlight vision; darkvision 60 feet; DR 10/evil; immunity to acid, cold, and petrification; resistance to electricity 10 and fire 10;…",
                          desc: "This spell functions like lesser angelic aspect , except you gain lowlight vision; darkvision 60 feet; DR 10/evil; immunity to acid, cold, and petrification; resistance to electricity 10 and fire 10; a +4 racial bonus on saves against poison; and protective aura and truespeech as supernatural abilities for the duration of the spell. Also, your wings give you a fly speed of 60 feet with good maneuverability. Protective aura provides a +4 deflection bonus to AC and a +4 resistance bonus on saving throws against attacks made or effects created by evil creatures to anyone within 20 feet. Otherwise,",
                          source: "Champions of Purity", isPremium: true)
        )
        try await db.insertSpell(
        .make("Angelic Aspect, Lesser", school: "Transmutation", levels: "arcanist 2, cleric 2, oracle 2, paladin 2, redmantisassassin 2, sorcerer 2, warpriest 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You take on an aspect of an angelic being, including some of its physical characteristics.",
                          desc: "You take on an aspect of an angelic being, including some of its physical characteristics. You gain lowlight vision, resistance to acid 5, resistance to cold 5, and the benefits of protection from evil.",
                          source: "Champions of Purity", isPremium: true)
        )
        try await db.insertSpell(
        .make("Archon's Trumpet", school: "Evocation", levels: "arcanist 7, bard 5, cleric 7, oracle 7, paladin 4, skald 5, sorcerer 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S",
                          range: "30 ft.", area: "cone-shaped burst", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "Upon hearing a booming report, as if from a trumpet archon’s mighty horn, all creatures in the area of the burst are paralyzed for 1d4 rounds.",
                          desc: "Upon hearing a booming report, as if from a trumpet archon’s mighty horn, all creatures in the area of the burst are paralyzed for 1d4 rounds.",
                          source: "Champions of Purity", isPremium: true)
        )
        try await db.insertSpell(
        .make("Burst of Radiance", school: "Evocation", levels: "arcanist 2, cleric 2, druid 2, hunter 2, oracle 2, sorcerer 2, warpriest 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (a piece of flint and a pinch of silver dust)",
                          range: "long (400 ft. + 40 ft./level)", area: "10-ft.-radius burst", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Reflex partial;", sr: true,
                          summary: "This spell fills the area with a brilliant flash of shimmering light. Creatures in the area are blinded for 1d4 rounds, or dazzled for 1d4 rounds if they succeed at a Reflex save.",
                          desc: "This spell fills the area with a brilliant flash of shimmering light. Creatures in the area are blinded for 1d4 rounds, or dazzled for 1d4 rounds if they succeed at a Reflex save. Evil creatures in the area of the burst take 1d4 points of damage per caster level (max 5d4), whether they succeed at the Reflex save or not.",
                          source: "Champions of Purity", isPremium: true)
        )
        try await db.insertSpell(
        .make("Chains of Light", school: "Conjuration (Creation)", levels: "arcanist 6, cleric 6, inquisitor 5, oracle 6, paladin 4, sorcerer 6, warpriest 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S, F (a length of fine golden chain)",
                          range: "short (25 ft. + 5 ft./level)", area: "", targets: "one creature",
                          duration: "1 round/level (D)",
                          savingThrow: "Reflex negates;", sr: false,
                          summary: "A creature targeted by this spell is held immobile by glowing golden chains composed of pure light.",
                          desc: "A creature targeted by this spell is held immobile by glowing golden chains composed of pure light. The creature is paralyzed and held in place, but may attempt a new saving throw each round to end the effect. While held by the golden chains, a creature cannot use any sort of extradimensional travel, such as",
                          source: "Champions of Purity", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hymn of Mercy", school: "Enchantment (Compulsion)", levels: "arcanist 2, bard 2, cleric 2, oracle 2, skald 2, sorcerer 2, warpriest 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "30-ft.-radius burst centered on you", targets: "one creature",
                          duration: "1 round/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions like touch of mercy , except as noted above.",
                          desc: "This spell functions like touch of mercy , except as noted above.",
                          source: "Champions of Purity", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hymn of Peace", school: "Abjuration", levels: "bard 6, cleric 7, oracle 7, skald 6",
                          castingTime: "1 standard action", components: "V, S",
                          range: "40 ft.", area: "40-ft.-radius burst centered on you", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "Each time a subject of this spell attempts to attack another creature or object, or otherwise perform an aggressive or damaging action toward a creature or object, it must attempt a Will save.",
                          desc: "Each time a subject of this spell attempts to attack another creature or object, or otherwise perform an aggressive or damaging action toward a creature or object, it must attempt a Will save. If the save succeeds, the subject can attack normally. If the save fails, the subject cannot follow through with the attack and loses that part of its action. Creatures not taking violent actions are unaffected by this spell.",
                          source: "Champions of Purity", isPremium: true)
        )
        try await db.insertSpell(
        .make("Touch of Mercy", school: "Enchantment (Compulsion)", levels: "arcanist 2, bard 2, cleric 2, oracle 2, skald 2, sorcerer 2, warpriest 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "30-ft.-radius burst centered on you", targets: "one creature",
                          duration: "1 round/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "The target creature deals only nonlethal damage with all of its weapon attacks.",
                          desc: "The target creature deals only nonlethal damage with all of its weapon attacks. Damage taken by creatures or objects that are not subject to nonlethal damage is not converted to nonlethal and remains lethal damage. The weapon retains all of its other normal properties.",
                          source: "Champions of Purity", isPremium: true),

                    // // MARK: - Classic Treasures Revisited
        )
        try await db.insertSpell(
        .make("Retrieve Item", school: "Conjuration (Calling)", levels: "arcanist 2, bard 2, skald 2, sorcerer 2, wizard 2",
                          castingTime: "1 full round", components: "V, S",
                          range: "long (400 ft. + 40 ft./level)", area: "", targets: "an unattended object weighing 1 lb. or less whose longest dimension is 6 inches or less",
                          duration: "permanent until discharged",
                          savingThrow: "none;", sr: false,
                          summary: "You call a specific nonliving item directly to your hand from a nearby location. First, you must cast the spell on the item while holding it.",
                          desc: "You call a specific nonliving item directly to your hand from a nearby location. First, you must cast the spell on the item while holding it. Thereafter, you can summon the item by speaking a special word (set by you when the spell is cast) and snapping your fingers. The item appears instantly in your hand. If the item is in the possession of another creature, the spell fails.",
                          source: "Classic Treasures Revisited", isPremium: true)
        )
        try await db.insertSpell(
        .make("Spherescry", school: "Divination (Scrying)", levels: "arcanist 3, sorcerer 3, wizard 3",
                          castingTime: "1 hour", components: "V, S, AF (onyx sphere worth at least 50 gp)",
                          range: "see text", area: "", targets: "sphere of annihilation",
                          duration: "1 minute/level",
                          savingThrow: "none;", sr: false,
                          summary: "This spell allows remote viewing through spheres that have previously consumed some portion of the spellcaster’s body: a single digit of a finger or toe at a minimum.",
                          desc: "This spell allows remote viewing through spheres that have previously consumed some portion of the spellcaster’s body: a single digit of a finger or toe at a minimum. The caster can view and listen to events within a 20-foot radius of the associated sphere; this radius follows the sphere if the sphere moves. Unlike a true scrying spell, no other spells operate through the associated sphere, but",
                          source: "Classic Treasures Revisited", isPremium: true),

                    // // MARK: - Cohorts and Companions
        )
        try await db.insertSpell(
        .make("Daywalker", school: "Necromancy", levels: "antipaladin 4, arcanist 5, cleric 5, oracle 5, sorcerer 5, warpriest 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (a black glass vial containing unholy water)",
                          range: "touch", area: "", targets: "undead creature touched",
                          duration: "24 hours (D)",
                          savingThrow: "none;", sr: true,
                          summary: "You reshape the substance of a willing undead creature to resemble a living, breathing creature of the same size.",
                          desc: "You reshape the substance of a willing undead creature to resemble a living, breathing creature of the same size. This is a physical change to the undead creature’s bone, flesh, or incorporeal ectoplasm, adding new flesh or bone and even hair, teeth, and blood, all of which demonstrate false signs of life that mimic a living creature’s breathing and other physiological processes. An incorporeal undead creature using daywalker ceases to be incorporeal for the duration of the spell, gaining a physical corpse body. Creatures interacting with the undead can attempt a Perception check (DC = 30 or DC = 21 + the undead’s Disguise modifier, whichever is higher) to realize that the signs of life are false, and a close examination with a Heal check always reveals the truth of the dead flesh. If the undead has the frightful presence, incorporeal, light blindness, light sensitivity, stench, sunlight powerlessness, or unnatural aura abilities, the spell suppresses them. An undead creature whose touch normally deals damage, ability drain, or energy drain doesn’t do so while under the spell’s effects. The target of this spell may end its duration at any time as a standard action.",
                          source: "Cohorts and Companions", isPremium: true)
        )
        try await db.insertSpell(
        .make("Plant Voice", school: "Transmutation", levels: "cleric 3, druid 2, hunter 2, oracle 3, shaman 2, warpriest 3, witch 3",
                          castingTime: "1 standard action", components: "V, S, M (a small root cutting)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one plant creature",
                          duration: "10 minutes/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You grant one plant creature the ability to speak, hear, and understand any of the languages you know.",
                          desc: "You grant one plant creature the ability to speak, hear, and understand any of the languages you know. If you know more than one language, you may grant the plant creature up to one language per 2 caster levels and you decide which languages to grant when the spell is cast. This spell does not cause the plant creature to be predisposed toward you in any way, but allows you to interact with them with Charisma-based skills normally. Plant creatures with an Intelligence score of 2 or lower can communicate and understand only the simplest of concepts, such as “friend,” “food,” and “danger.” This spell has no effect on ordinary plants and fungus.",
                          source: "Cohorts and Companions", isPremium: true)
        )
        try await db.insertSpell(
        .make("Spore Burst", school: "Conjuration", levels: "druid 2, hunter 2, ranger 3, shaman 2, witch 2",
                          castingTime: "1 standard action", components: "V, S, M (a tiny puffball mushroom)",
                          range: "touch", area: "", targets: "one plant creature; see text",
                          duration: "see text",
                          savingThrow: "special, see text;", sr: false,
                          summary: "You cause a willing plant creature’s body to sprout small, puffy mushrooms that remain for 1 round per caster level or until the creature uses them.",
                          desc: "You cause a willing plant creature’s body to sprout small, puffy mushrooms that remain for 1 round per caster level or until the creature uses them. As a standard action, the target can cause these mushrooms to burst open, releasing a cloud of toxic spores that affect all creatures in a 20-foot-radius spread. Those in the area must succeed at Fortitude saves or be sickened for 1d6 rounds as they are overcome by sneezing and coughing. The caster is immune to this poison effect, as are all creatures of the plant type.",
                          source: "Cohorts and Companions", isPremium: true),

                    // // MARK: - Dark Markets - A Guide to Katapesh
        )
        try await db.insertSpell(
        .make("Pesh Addiction", school: "Necromancy", levels: "sahirafiyun 5",
                          castingTime: "10 minutes", components: "V, M (a dose of pesh)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "1 day/level or until discharged (D)",
                          savingThrow: "none;", sr: true,
                          summary: "This spell functions like geas/quest , except the only allowed command is “use pesh or refined pesh.” Pesh Addiction, Lesser",
                          desc: "This spell functions like geas/quest , except the only allowed command is “use pesh or refined pesh.” Pesh Addiction, Lesser",
                          source: "Dark Markets - A Guide to Katapesh", isPremium: true)
        )
        try await db.insertSpell(
        .make("Pesh Addiction, Lesser", school: "Necromancy", levels: "sahirafiyun 5",
                          castingTime: "10 minutes", components: "V, M (a dose of pesh)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "1 day/level or until discharged (D)",
                          savingThrow: "none;", sr: true,
                          summary: "This spell functions like lesser geas , except the only allowed command is “use pesh or refined pesh.”",
                          desc: "This spell functions like lesser geas , except the only allowed command is “use pesh or refined pesh.”",
                          source: "Dark Markets - A Guide to Katapesh", isPremium: true)
        )
        try await db.insertSpell(
        .make("Suffocation, Instant", school: "Necromancy", levels: "sahirafiyun 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "instantaneous",
                          savingThrow: "Fortitude partial;", sr: true,
                          summary: "This spell functions like slay living , and kills by immediate suffocation. Creatures that do not need to breathe are immune to this spell.",
                          desc: "This spell functions like slay living , and kills by immediate suffocation. Creatures that do not need to breathe are immune to this spell. The target is considered to have taken a dose of pesh for the purpose of addiction and withdrawal effects. Suffocation, Slow",
                          source: "Dark Markets - A Guide to Katapesh", isPremium: true)
        )
        try await db.insertSpell(
        .make("Suffocation, Slow", school: "Necromancy", levels: "sahirafiyun 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "instantaneous",
                          savingThrow: "Fortitude partial;", sr: true,
                          summary: "The target is unable to breathe and is treated as if she is holding her breath (see the rules for suffocation).",
                          desc: "The target is unable to breathe and is treated as if she is holding her breath (see the rules for suffocation). Strong stimulants, effects that increase the target’s Constitution, or physical trauma (such as taking 10 or more points of damage from a single attack) negate the spell immediately. Creatures that do not need to breathe are immune to this spell. The target is considered to have taken a dose of pesh for the purpose of addiction and withdrawal effects. Canny sahir use this spell to subtly kill enemies, as the spell mimics a pesh overdose.",
                          source: "Dark Markets - A Guide to Katapesh", isPremium: true),

                    // // MARK: - Demon Hunter's Handbook
        )
        try await db.insertSpell(
        .make("Anti-Summoning Shield", school: "Abjuration", levels: "arcanist 2, bard 2, inquisitor 3, skald 2, sorcerer 2, summoner 2, summoner (unchained) 2, wizard 2",
                          castingTime: "1 standard action", components: "V",
                          range: "medium (100 ft. + 10 ft./level)", area: "50-ft.-radius", targets: "",
                          duration: "1 minute/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "Within the area of effect, this spell impedes the use of spells of the summoning subschool and other effects that summon creatures.",
                          desc: "Within the area of effect, this spell impedes the use of spells of the summoning subschool and other effects that summon creatures. Any such spells, spell-like abilities, or similar summoning effects used within the area have a percent chance of failure equals 5% × your caster level, to a maximum 75% chance of failure. If the summoning effect already has a percent chance of failure (as is often the case with the summon spell-like ability of outsiders), these percentages stack. This spell does not affect summoners attempting to summon their eidolon, but it does affect summoners casting other summoning spells.",
                          source: "Demon Hunter's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Burst with Light", school: "Evocation", levels: "cleric 4, oracle 4, paladin 4, warpriest 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round/4 levels",
                          savingThrow: "see text;", sr: true,
                          summary: "The target becomes filled with intense magical light, taking 2d6 points of damage as the light bursts from its wounds and orifices (if the target is an undead creature, it instead takes 2d8 points of…",
                          desc: "The target becomes filled with intense magical light, taking 2d6 points of damage as the light bursts from its wounds and orifices (if the target is an undead creature, it instead takes 2d8 points of damage). In addition, the creature radiates bright light in a 30-foot radius and increases the light level by one step for an additional 30 feet beyond that area—darkness becomes dim light, dim light becomes normal light, and normal light becomes bright light. Creatures that take penalties in bright light take them while within the 30-foot radius of this magical light. A successful Will save halves the damage and negates the light effect. For every 4 character levels you possess, the light continues to fill the creature for another round (to a maximum of 5 rounds at 20th level), though the target may make a Will save each round to halve the damage and end the effect. Any creature adjacent to the target that fails its save and takes damage takes half as much damage and is blinded for 1 round. A successful Reflex save halves this damage (to a total of one-quarter the damage taken by the target) and negates the blindness effect.",
                          source: "Demon Hunter's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Detect Demon", school: "Divination", levels: "cleric 1, inquisitor 1, oracle 1, paladin 1, warpriest 1",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "60 ft.", area: "cone-shaped emanation", targets: "",
                          duration: "concentration, up to 10 minutes/level (D)",
                          savingThrow: "none (see text);", sr: false,
                          summary: "You sense the presence of a specific kind of evil—that of demons, their servants, and the Abyss. The amount of information revealed depends on how long you study a particular area or subject.",
                          desc: "You sense the presence of a specific kind of evil—that of demons, their servants, and the Abyss. The amount of information revealed depends on how long you study a particular area or subject. 1st Round : Presence or absence of creatures with the demon subtype, creatures possessed by demons, creatures under the effects of spells or spell-like abilities cast by demons, or creatures otherwise tainted by demons. Creatures tainted by demons include tieflings with demonic heritages, sorcerers with abyssal bloodlines, creatures affected by a succubus’s profane gift, creatures with demonic implants (see page 44 of Pathfinder Campaign Setting: Lords of Chaos, Book of the Damned, Vol. 2 ), or creatures who have the Demonic Obedience feat (",
                          source: "Demon Hunter's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Protection from Outsiders", school: "Abjuration", levels: "cleric 2, inquisitor 2, oracle 2, paladin 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 minute/level (D)",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "This spell wards a creature from attacks by outsiders with a specific racial subtype, from mental control exerted by creatures of the chosen subtype, and from summoned creatures of that subtype.",
                          desc: "This spell wards a creature from attacks by outsiders with a specific racial subtype, from mental control exerted by creatures of the chosen subtype, and from summoned creatures of that subtype. Only the subtypes of specific outsider races—angel, azata, demon, oni, psychopomp, protean, and so on—can be chosen as the subtype this spell protects against. Alignment subtypes or other general subtypes (like elemental, extraplanar, or native) cannot be selected. Outsiders without an outsider racial subtype (like genies, night hags, yeth hounds, or xills) are not affected by this spell. This spell creates a magical barrier around the subject at a distance of 1 foot. The barrier moves with the subject and has three major effects. First, the subject gains a +4 deflection bonus to AC and a +4 resistance bonus on saves when targeted by creatures of the chosen subtype. Second, the subject immediately receives another saving throw (if one was allowed to begin with) against any spells or effects that possess or exercise mental control over the target creature. This functions in the same fashion as",
                          source: "Demon Hunter's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Righteous Blood", school: "Abjuration", levels: "inquisitor 2, paladin 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "one creature of good alignment",
                          duration: "10 minutes/level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The target creature’s innate goodness infuses its body with holy energy. While this energy does not directly empower the target, it can harm embodiments of evil.",
                          desc: "The target creature’s innate goodness infuses its body with holy energy. While this energy does not directly empower the target, it can harm embodiments of evil. Any creature that damages the target with a slashing or piercing melee weapon is sprayed by the target’s holy blood. If the attacker is a creature with the evil subtype, it takes 1d6 points of damage from divine power each time it successfully hits the target. If the target has the good subtype or an ability that grants it an aura of good (like paladins or some clerics), its blood instead deals 2d6 points of damage. Creatures that don’t have the evil subtype or that are using reach weapons are not subject to this damage.",
                          source: "Demon Hunter's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Telepathic Censure", school: "Abjuration", levels: "bard 2, inquisitor 2, skald 2",
                          castingTime: "1 standard action", components: "V",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature (see text)",
                          duration: "1 minute/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell creates an invisible psychic interference that inhibits telepathic communication.",
                          desc: "This spell creates an invisible psychic interference that inhibits telepathic communication. When cast upon a creature that can communicate via telepathy, this spell prevents that ability’s use— either to receive or project thoughts. When cast upon a creature without telepathy, the spell merely prevents the target from receiving telepathic communication. Those affected by this spell or that attempt to telepathically communicate with creatures under its effects are not innately aware that their communication is being inhibited. This spell temporarily disrupts spells and effects like telepathic bond or telepathic messages sent by a",
                          source: "Demon Hunter's Handbook", isPremium: true),

                    // // MARK: - Demons Revisited
        )
        try await seedSpellsG()
    }
}

// MARK: - SpellEntry factory
private extension SpellEntry {
    static func make(
        _ title: String,
        school: String,
        levels: String,
        castingTime: String,
        components: String,
        range: String,
        area: String = "",
        targets: String = "",
        duration: String,
        savingThrow: String,
        sr: Bool,
        summary: String,
        desc: String,
        source: String = "Core Rulebook",
        isPremium: Bool = false
    ) -> SpellEntry {
        SpellEntry(
            id: UUID(),
            title: title,
            summary: summary,
            isPremium: isPremium,
            school: school,
            levels: levels,
            castingTime: castingTime,
            components: components,
            range: range,
            area: area,
            targets: targets,
            duration: duration,
            savingThrow: savingThrow,
            spellResistance: sr,
            description: desc,
            source: source
        )
    }
}