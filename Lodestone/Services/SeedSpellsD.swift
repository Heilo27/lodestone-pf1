import Foundation

extension SeedDataBuilder {
    func seedSpellsD() async throws {
        try await db.insertSpell(
        .make("Telekinetic Sphere", school: "Evocation", levels: "arcanist 8, psychic 7, sorcerer 8, wizard 8",
                          castingTime: "1 standard action", components: "V, S, M (a crystal sphere and a pair of small magnets)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "1-ft.-diameter/level sphere, centered around creatures or objects", targets: "",
                          duration: "1 min./level (D)",
                          savingThrow: "Reflex negates (object);", sr: true,
                          summary: "This spell functions like resilient sphere , but the creatures or objects caught inside the globe created by the spell are made nearly weightless. Anything contained within a",
                          desc: "This spell functions like resilient sphere , but the creatures or objects caught inside the globe created by the spell are made nearly weightless. Anything contained within a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Telepathic Bond", school: "Divination", levels: "arcanist 5, inquisitor 5, medium 4, mesmerist 4, psychic 4, sorcerer 5, spiritualist 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (two eggshells from two different creatures)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "you plus one willing creature per three levels, no two of which can be more than 30 ft. apart",
                          duration: "10 min./level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You forge a telepathic bond among yourself and a number of willing creatures, each of which must have an Intelligence score of 3 or higher.",
                          desc: "You forge a telepathic bond among yourself and a number of willing creatures, each of which must have an Intelligence score of 3 or higher. Each creature included in the link is linked to all the others. The creatures can communicate telepathically through the bond regardless of language. No special power or influence is established as a result of the bond. Once the bond is formed, it works over any distance (although not from one plane to another). If desired, you may leave yourself out of the telepathic bond forged. This decision must be made at the time of casting. Telepathic bond",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Teleport", school: "Conjuration (Teleportation)", levels: "arcanist 5, magus 5, medium 4, occultist 5, psychic 5, sorcerer 5, spiritualist 5, summoner 4, summoner (unchained) 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V",
                          range: "personal and touch", area: "", targets: "you and touched objects or other touched willing creatures",
                          duration: "instantaneous",
                          savingThrow: "none and Will negates (object);", sr: true,
                          summary: "This spell instantly transports you to a designated destination, which may be as distant as 100 miles per caster level. Interplanar travel is not possible.",
                          desc: "This spell instantly transports you to a designated destination, which may be as distant as 100 miles per caster level. Interplanar travel is not possible. You can bring along objects as long as their weight doesn't exceed your maximum load. You may also bring one additional willing Medium or smaller creature (carrying gear or objects up to its maximum load) or its equivalent per three caster levels. A Large creature counts as two Medium creatures, a Huge creature counts as four Medium creatures, and so forth. All creatures to be transported must be in contact with one another, and at least one of those creatures must be in contact with you. As with all spells where the range is personal and the target is you, you need not make a saving throw, nor is spell resistance applicable to you. Only objects held or in use (attended) by another person receive saving throws and spell resistance. You must have some clear idea of the location and layout of the destination. The clearer your mental image, the more likely the teleportation works. Areas of strong physical or magical energy may make teleportation more hazardous or even impossible. To see how well the teleportation works, roll d% and consult the table at the end of this spell. Refer to the following information for definitions of the terms on the table.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Teleport Object", school: "Conjuration (Teleportation)", levels: "arcanist 7, psychic 7, sorcerer 7, witch 7, wizard 7",
                          castingTime: "1 standard action", components: "V",
                          range: "touch", area: "", targets: "one touched object of up to 50 lbs./level and 3 cu. ft./level",
                          duration: "instantaneous",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "This spell functions like teleport , except that it teleports an object, not you. Creatures and magical forces cannot be teleported.",
                          desc: "This spell functions like teleport , except that it teleports an object, not you. Creatures and magical forces cannot be teleported. If desired, the target object can be sent to a distant location on the Ethereal Plane. In this case, the point from which the object was teleported remains faintly magical until the item is retrieved. A successful targeted",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Teleport, Greater", school: "Conjuration (Teleportation)", levels: "arcanist 5, magus 5, medium 4, occultist 5, psychic 5, sorcerer 5, spiritualist 5, summoner 4, summoner (unchained) 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V",
                          range: "personal and touch", area: "", targets: "you and touched objects or other touched willing creatures",
                          duration: "instantaneous",
                          savingThrow: "none and Will negates (object);", sr: true,
                          summary: "This spell functions like teleport , except that there is no range limit and there is no chance you arrive off target.",
                          desc: "This spell functions like teleport , except that there is no range limit and there is no chance you arrive off target. In addition, you need not have seen the destination, but in that case you must have at least a reliable description of the place to which you are teleporting. If you attempt to teleport with insufficient information (or with misleading information), you disappear and simply reappear in your original location. Interplanar travel is not possible.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Teleportation Circle", school: "Conjuration (Teleportation)", levels: "arcanist 9, psychic 9, sorcerer 9, summoner 6, witch 9, wizard 9",
                          castingTime: "10 minutes", components: "V, M (amber dust to cover circle worth 1,000 gp)",
                          range: "0 ft.", area: "5-ft.-radius circle that teleports those who activate it", targets: "",
                          duration: "10 min./level (D)",
                          savingThrow: "none;", sr: true,
                          summary: "You create a circle on the floor or other horizontal surface that teleports, as greater teleport , any creature who stands on it to a designated spot.",
                          desc: "You create a circle on the floor or other horizontal surface that teleports, as greater teleport , any creature who stands on it to a designated spot. Once you designate the destination for the circle, you can't change it. The spell fails if you attempt to set the circle to teleport creatures into a solid object, to a place with which you are not familiar and have no clear description, or to another plane. The circle itself is subtle and nearly impossible to notice. If you intend to keep creatures from activating it accidentally, you need to mark the circle in some way.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Temporal Stasis", school: "Transmutation", levels: "arcanist 8, psychic 8, sorcerer 8, wizard 8",
                          castingTime: "1 standard action", components: "V, S, M (powdered diamond, emerald, ruby, and sapphire dust worth 5,000 gp)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "permanent",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "You must succeed on a melee touch attack. You place the subject into a state of suspended animation. For the creature, time ceases to flow, and its condition becomes fixed.",
                          desc: "You must succeed on a melee touch attack. You place the subject into a state of suspended animation. For the creature, time ceases to flow, and its condition becomes fixed. The creature does not grow older. Its body functions virtually cease, and no force or effect can harm it. This state persists until the magic is removed (such as by a successful dispel magic spell or a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Thirsting Entanglement", school: "Transmutation", levels: "druid 1, hunter 1, ranger 1, shaman 1",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "long (400 ft. + 40 ft./level)", area: "plants in a 40-ft.-radius spread", targets: "",
                          duration: "1 min./level (D)",
                          savingThrow: "Reflex partial; see text;", sr: false,
                          summary: "This spell functions as entangle , except the plants latch on to targets and drain away their vitality.",
                          desc: "This spell functions as entangle , except the plants latch on to targets and drain away their vitality. Any creature that fails a save to avoid becoming entangled or fails a check to break free takes 1d2 points of Constitution damage.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Thorny Entanglement", school: "Transmutation", levels: "druid 1, hunter 1, ranger 1, shaman 1",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "long (400 ft. + 40 ft./level)", area: "plants in a 40-ft.-radius spread", targets: "",
                          duration: "1 min./level (D)",
                          savingThrow: "Reflex partial; see text;", sr: false,
                          summary: "This spell functions as entangle , except the plants also grow thorns and can fling them up to 15 feet.",
                          desc: "This spell functions as entangle , except the plants also grow thorns and can fling them up to 15 feet. Any creature that moves within 15 feet of the spell’s area is attacked once on its turn by the animated plants. The plants use your caster level as their base attack bonus and add your spellcasting ability score modifier (Intelligence for witches; Wisdom for druids, rangers, and shamans) to the attack roll. A volley of thorns counts as a thrown weapon and deals 2d6 points of piercing damage on a successful hit. A creature that enters the spell’s area or ends its turn there automatically takes 2d6 points of piercing damage.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Time Stop", school: "Transmutation", levels: "arcanist 9, psychic 9, sorcerer 9, wizard 9",
                          castingTime: "1 standard action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "1d4+1 rounds (apparent time); see text",
                          savingThrow: "None", sr: false,
                          summary: "This spell seems to make time cease to flow for everyone but you. In fact, you speed up so greatly that all other creatures seem frozen, though they are actually still moving at their normal speeds.",
                          desc: "This spell seems to make time cease to flow for everyone but you. In fact, you speed up so greatly that all other creatures seem frozen, though they are actually still moving at their normal speeds. You are free to act for 1d4+1 rounds of apparent time. Normal and magical fire, cold, gas, and the like can still harm you. While the time stop is in effect, other creatures are invulnerable to your attacks and spells; you cannot target such creatures with any attack or spell. A spell that affects an area and has a duration longer than the remaining duration of the",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Tiny Hut", school: "Evocation", levels: "arcanist 3, bard 3, occultist 3, skald 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a small crystal bead)",
                          range: "20 ft.", area: "20-ft.-radius sphere centered on your location", targets: "",
                          duration: "2 hours/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You create an unmoving, opaque sphere of force of any color you desire around yourself. Half the sphere projects above the ground, and the lower hemisphere passes through the ground.",
                          desc: "You create an unmoving, opaque sphere of force of any color you desire around yourself. Half the sphere projects above the ground, and the lower hemisphere passes through the ground. As many as nine other Medium creatures can fit into the field with you; they can freely pass into and out of the hut without harming it. However, if you remove yourself from the hut, the spell ends. The temperature inside the hut is 70° F if the exterior temperature is between 0° and 100° F. An exterior temperature below 0° or above 100° lowers or raises the interior temperature on a 1-degree-for-1 basis. The hut also provides protection against the elements, such as rain, dust, and sandstorms. The hut withstands any wind of less than hurricane force, but a hurricane (75+ mph wind speed) or greater force destroys it. The interior of the hut is a hemisphere. You can illuminate it dimly upon command or extinguish the light as desired. Although the force field is opaque from the outside, it is transparent from within. Missiles, weapons, and most spell effects can pass through the hut without affecting it, although the occupants cannot be seen from outside the hut (they have total concealment).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Tongues", school: "Divination", levels: "adept 3, alchemist 3, arcanist 3, bard 2, cleric 4, inquisitor 2, investigator 3, medium 2, mesmerist 2, oracle 4, psychic 3, shaman 4, skald 2, sorcerer 3, spiritualist 3, summoner 3, summoner (unchained) 3, warpriest 4, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, M/DF (a clay model of a ziggurat)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 min./level",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "This spell grants the creature touched the ability to speak and understand the language of any intelligent creature, whether it is a racial tongue or a regional dialect.",
                          desc: "This spell grants the creature touched the ability to speak and understand the language of any intelligent creature, whether it is a racial tongue or a regional dialect. The subject can speak only one language at a time, although it may be able to understand several languages. Tongues does not enable the subject to speak with creatures who don't speak. The subject can make itself understood as far as its voice carries. This spell does not predispose any creature addressed toward the subject in any way. Tongues can be made permanent with a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Tongues, Communal", school: "Divination", levels: "adept 3, alchemist 3, arcanist 3, bard 2, cleric 4, inquisitor 2, investigator 3, medium 2, mesmerist 2, oracle 4, psychic 3, shaman 4, skald 2, sorcerer 3, spiritualist 3, summoner 3, summoner (unchained) 3, warpriest 4, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, M/DF (a clay model of a ziggurat)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 min./level",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "This spell functions like tongues , except you divide the duration in 10-minute intervals among the creatures touched.",
                          desc: "This spell functions like tongues , except you divide the duration in 10-minute intervals among the creatures touched.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Touch of Fatigue", school: "Necromancy", levels: "adept 0, arcanist 0, mesmerist 0, occultist 0, shaman 0, sorcerer 0, witch 0, wizard 0",
                          castingTime: "1 standard action", components: "V, S, M (a drop of sweat)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "You channel negative energy through your touch, fatiguing the target. You must succeed on a touch attack to strike a target. The subject is immediately fatigued for the spell's duration.",
                          desc: "You channel negative energy through your touch, fatiguing the target. You must succeed on a touch attack to strike a target. The subject is immediately fatigued for the spell's duration. This spell has no effect on a creature that is already fatigued. Unlike with normal fatigue, the effect ends as soon as the spell's duration expires.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Touch of Idiocy", school: "Enchantment (Compulsion)", levels: "arcanist 2, bloodrager 2, medium 2, mesmerist 2, psychic 2, sorcerer 2, spiritualist 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "10 min./level",
                          savingThrow: "no;", sr: true,
                          summary: "With a touch, you reduce the target's mental faculties. Your successful melee touch attack applies a 1d6 penalty to the target's Intelligence, Wisdom, and Charisma scores.",
                          desc: "With a touch, you reduce the target's mental faculties. Your successful melee touch attack applies a 1d6 penalty to the target's Intelligence, Wisdom, and Charisma scores. This penalty can't reduce any of these scores below 1. This spell's effect may make it impossible for the target to cast some or all of its spells, if the requisite ability score drops below the minimum required to cast spells of that level.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Transformation", school: "Transmutation", levels: "alchemist 6, arcanist 6, investigator 6, magus 6, occultist 6, psychic 6, sorcerer 6, spiritualist 6, witch 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S, M (a potion of bull's strength, which you drink and whose effects are subsumed by the spell effects)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "You become a fighting machine—stronger, tougher, faster, and more skilled in combat. Your mindset changes so that you relish combat and you can't cast spells, even from magic items.",
                          desc: "You become a fighting machine—stronger, tougher, faster, and more skilled in combat. Your mindset changes so that you relish combat and you can't cast spells, even from magic items. You gain a +4 enhancement bonus to Strength, Dexterity, and Constitution, a +4 natural armor bonus to AC, a +5 competence bonus on Fortitude saves, and proficiency with all simple and martial weapons. Your base attack bonus equals your character level (which may give you multiple attacks). You lose your spellcasting ability, including your ability to use spell activation or spell completion magic items, just as if the spells were no longer on your class list.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Transmute Metal to Wood", school: "Transmutation", levels: "druid 7",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "long (400 ft. + 40 ft./level)", area: "all metal objects within a 40-ft.-radius burst", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: true,
                          summary: "This spell enables you to change all metal objects within its area to wood. Weapons, armor, and other metal objects carried by creatures are affected as well.",
                          desc: "This spell enables you to change all metal objects within its area to wood. Weapons, armor, and other metal objects carried by creatures are affected as well. A magic object made of metal effectively has spell resistance equal to 20 + its caster level against this spell. Artifacts cannot be transmuted. Weapons converted from metal to wood take a –2 penalty on attack and damage rolls. The armor bonus of any armor converted from metal to wood is reduced by 2. Weapons changed by this spell splinter and break on any natural attack roll of 1 or 2, and armor changed by this spell loses an additional point of armor bonus every time it is struck with a natural attack roll of 19 or 20. Only limited wish ,",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Transmute Mud to Rock", school: "Transmutation", levels: "arcanist 5, druid 5, hunter 5, occultist 5, sorcerer 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M/DF (sand, lime, and water)",
                          range: "medium (100 ft. + 10 ft./level)", area: "up to two 10-ft. cubes/level (S)", targets: "",
                          duration: "permanent",
                          savingThrow: "see text;", sr: false,
                          summary: "This spell permanently transforms normal mud or quicksand of any depth into soft stone (sandstone or a similar mineral).",
                          desc: "This spell permanently transforms normal mud or quicksand of any depth into soft stone (sandstone or a similar mineral). Any creature in the mud is allowed a Reflex save to escape before the area is hardened to stone. Transmute mud to rock",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Transmute Rock to Mud", school: "Transmutation", levels: "arcanist 5, druid 5, hunter 5, occultist 5, sorcerer 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M/DF (clay and water)",
                          range: "medium (100 ft. + 10 ft./level)", area: "up to two 10-ft. cubes/level (S)", targets: "",
                          duration: "permanent; see text",
                          savingThrow: "see text;", sr: false,
                          summary: "This spell turns natural, uncut, or unworked rock of any sort into an equal volume of mud. Magical stone is not affected by the spell. The depth of the mud created cannot exceed 10 feet.",
                          desc: "This spell turns natural, uncut, or unworked rock of any sort into an equal volume of mud. Magical stone is not affected by the spell. The depth of the mud created cannot exceed 10 feet. A creature unable to levitate, fly, or otherwise free itself from the mud sinks until hip- or chest-deep, reducing its speed to 5 feet and causing a –2 penalty on attack rolls and AC. Brush or similar material thrown atop the mud can support creatures able to climb on top of it. Creatures large enough to walk on the bottom can wade through the area at a speed of 5 feet. If transmute rock to mud is cast upon the ceiling of a cavern or tunnel, the mud falls to the floor and spreads out in a pool at a depth of 5 feet. The falling mud and the ensuing cave-in deal 8d6 points of bludgeoning damage to anyone caught directly beneath the targeted area, or half damage to those who succeed on Reflex saves. Castles and large stone buildings are generally immune to the effect of the spell, since",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Transport via Plants", school: "Conjuration (Teleportation)", levels: "druid 6, hunter 6, shaman 7",
                          castingTime: "1 standard action", components: "V, S",
                          range: "unlimited", area: "", targets: "you and touched objects or other touched willing creatures",
                          duration: "1 round",
                          savingThrow: "none;", sr: false,
                          summary: "You can enter any normal plant (equal to your size or larger) and pass any distance to a plant of the same kind in a single round, regardless of the distance separating the two.",
                          desc: "You can enter any normal plant (equal to your size or larger) and pass any distance to a plant of the same kind in a single round, regardless of the distance separating the two. The plants must be alive. The destination plant need not be familiar to you. If you are uncertain of the location of a particular kind of destination plant, you need merely designate direction and distance and the transport via plants spell moves you as close as possible to the desired location. If a particular destination plant is desired but the plant is not living, the spell fails and you are ejected from the entry plant. You can bring along objects as long as their weight doesn't exceed your maximum load. You may also bring one additional willing Medium or smaller creature (carrying gear or objects up to its maximum load) or its equivalent per three caster levels. Use the following equivalents to determine the maximum number of larger creatures you can bring along: a Large creature counts as two Medium creatures, a Huge creature counts as four Medium creatures, and so forth. All creatures to be transported by the spell must be in physical contact with one another, and at least one of those creatures must be in contact with you. You can't use this spell to travel through plant creatures. The destruction of an occupied plant slays you and any creatures you have brought along, and ejects the bodies and all carried objects from it.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Trap the Soul", school: "Conjuration (Summoning)", levels: "arcanist 8, psychic 8, sorcerer 8, witch 8, wizard 8",
                          castingTime: "1 standard action or see text", components: "V, S, M (gem worth 1,000 gp per HD of the trapped creature)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "permanent; see text",
                          savingThrow: "see text;", sr: true,
                          summary: "Trap the soul forces a creature's life force (and its material body) into a gem.",
                          desc: "Trap the soul forces a creature's life force (and its material body) into a gem. The gem holds the trapped entity indefinitely or until the gem is broken and the life force is released, which allows the material body to reform. If the trapped creature is a powerful creature from another plane, it can be required to perform a service immediately upon being freed. Otherwise, the creature can go free once the gem imprisoning it is broken. Depending on the version selected, the spell can be triggered in one of two ways.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Traveling Dream", school: "Divination (Scrying)", levels: "alchemist 4, arcanist 4, investigator 4, mesmerist 4, occultist 4, psychic 4, sorcerer 4, witch 4, wizard 4",
                          castingTime: "10 minutes", components: "V, S, M (a bit of bat fur)",
                          range: "unlimited", area: "magical sensor", targets: "",
                          duration: "1 min./level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like arcane eye , except as noted above. Upon casting this spell, you fall asleep for its duration, creating an invisible magic sensor (called a dreamscryer) that is the exact…",
                          desc: "This spell functions like arcane eye , except as noted above. Upon casting this spell, you fall asleep for its duration, creating an invisible magic sensor (called a dreamscryer) that is the exact size and shape of your body, is recognizable as you, and cannot pass through spaces that your body cannot enter. Unlike the invisible sensor created by",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Treacherous Teleport", school: "Conjuration (Teleportation)", levels: "arcanist 5, magus 5, medium 4, occultist 5, psychic 5, sorcerer 5, spiritualist 5, summoner 4, summoner (unchained) 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V",
                          range: "personal and touch", area: "", targets: "you and touched objects or other touched willing creatures",
                          duration: "instantaneous",
                          savingThrow: "none and Will negates (object);", sr: true,
                          summary: "This spell functions as teleport except that you can opt to intentionally cause any number of the creatures traveling with you to suffer a mishap or arrive in a specific different location you…",
                          desc: "This spell functions as teleport except that you can opt to intentionally cause any number of the creatures traveling with you to suffer a mishap or arrive in a specific different location you visualize simultaneously with the original destination, or both.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Tree Shape", school: "Transmutation", levels: "druid 2, hunter 2, ranger 3, shaman 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "1 hour/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This spell allows you to assume the form of a Large living tree or shrub or a Large dead tree trunk with a small number of limbs.",
                          desc: "This spell allows you to assume the form of a Large living tree or shrub or a Large dead tree trunk with a small number of limbs. The exact type of tree, as well as its appearance, is completely under your control. Even the closest inspection cannot reveal that the tree in question is actually a magically concealed creature. To all normal tests you are, in fact, a tree or shrub, although a detect magic spell reveals a faint transmutation on the tree. While in tree form, you can observe all that transpires around you just as if you were in your normal form, and your hit points and save bonuses remain unaffected. You gain a +10 natural armor bonus to AC but have an effective Dexterity score of 0 and a speed of 0 feet. You are immune to critical hits while in tree form. All clothing and gear carried or worn changes with you. You can dismiss",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Tree Stride", school: "Conjuration (Teleportation)", levels: "druid 5, hunter 4, ranger 4",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "1 hour/level or until expended; see text",
                          savingThrow: "None", sr: false,
                          summary: "When you cast this spell, you gain the ability to step into a tree, magically infusing yourself with the plant. Once within a tree, you can teleport from that particular tree to another tree.",
                          desc: "When you cast this spell, you gain the ability to step into a tree, magically infusing yourself with the plant. Once within a tree, you can teleport from that particular tree to another tree. The trees you enter must be of the same kind, must be living, and must have girth at least equal to yours. By moving into an oak tree (for example), you instantly know the location of all other oak trees within transport range (see below) and may choose whether you want to pass into one or simply step back out of the tree you moved into. You may choose to pass to any tree of the appropriate kind within the transport range as shown on the following table. Type of Tree Transport Range Oak, ash, yew 3,000 feet Elm, linden 2,000 feet",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Triggered Suggestion", school: "Enchantment (Compulsion)", levels: "arcanist 3, bard 2, medium 2, mesmerist 2, occultist 3, psychic 2, skald 2, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, M (a snake's tongue and a honeycomb)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "1 hour/level or until completed",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions as suggestion , except you can use it only to specify a condition that triggers a special activity, and the subject does not remember that you made the suggestion.",
                          desc: "This spell functions as suggestion , except you can use it only to specify a condition that triggers a special activity, and the subject does not remember that you made the suggestion. For example, you could use",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("True Prognostication", school: "Divination", levels: "cleric 4, inquisitor 4, medium 3, oracle 4, psychic 4, sahirafiyun 4, shaman 4, spiritualist 4, warpriest 4, witch 4",
                          castingTime: "10 minutes", components: "V, S, M (incense and an appropriate offering worth 25 gp)",
                          range: "personal", area: "", targets: "you",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "True prognostication functions as divination except that the spell can see up to 100 years into the future. Because of the extreme unpredictability of the far-distant future,",
                          desc: "True prognostication functions as divination except that the spell can see up to 100 years into the future. Because of the extreme unpredictability of the far-distant future,",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("True Resurrection", school: "Conjuration (Healing)", levels: "cleric 9, oracle 9",
                          castingTime: "10 minutes", components: "V, S, DF, M (diamond worth 25,000 gp)",
                          range: "touch", area: "", targets: "dead creature touched",
                          duration: "instantaneous",
                          savingThrow: "none, see text;", sr: true,
                          summary: "This spell functions like raise dead , except that you can resurrect a creature that has been dead for as long as 10 years per caster level.",
                          desc: "This spell functions like raise dead , except that you can resurrect a creature that has been dead for as long as 10 years per caster level. This spell can even bring back creatures whose bodies have been destroyed, provided that you unambiguously identify the deceased in some fashion (reciting the deceased's time and place of birth or death is the most common method). Upon completion of the spell, the creature is immediately restored to full hit points, vigor, and health, with no negative levels (or Constitution points) and all of the prepared spells possessed by the creature when it died. You can revive someone killed by a death effect or someone who has been turned into an undead creature and then destroyed. This spell can also resurrect elementals or outsiders, but it can't resurrect constructs or undead creatures.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("True Seeing", school: "Divination", levels: "adept 5, alchemist 6, arcanist 6, cleric 5, druid 7, inquisitor 5, investigator 6, magus 6, medium 4, mesmerist 6, occultist 5, oracle 5, psychic 5, shaman 5, sorcerer 6, spiritualist 6, summoner 5, summoner (unchained) 6, warpriest 5, witch 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S, M (an eye ointment that costs 250 gp)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 min./level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You confer on the subject the ability to see all things as they actually are.",
                          desc: "You confer on the subject the ability to see all things as they actually are. The subject sees through normal and magical darkness, notices secret doors hidden by magic, sees the exact locations of creatures or objects under blur or",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("True Strike", school: "Divination", levels: "alchemist 1, arcanist 1, bloodrager 1, inquisitor 1, investigator 1, magus 1, medium 1, psychic 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, F (small wooden replica of an archery target)",
                          range: "personal", area: "", targets: "you",
                          duration: "see text",
                          savingThrow: "None", sr: false,
                          summary: "You gain temporary, intuitive insight into the immediate future during your next attack. Your next single attack roll (if it is made before the end of the next round) gains a +20 insight bonus.",
                          desc: "You gain temporary, intuitive insight into the immediate future during your next attack. Your next single attack roll (if it is made before the end of the next round) gains a +20 insight bonus. Additionally, you are not affected by the miss chance that applies to attackers trying to strike a concealed target.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Undeath Sense", school: "Divination", levels: "alchemist 1, arcanist 1, cleric 1, inquisitor 1, investigator 1, medium 1, mesmerist 1, oracle 1, paladin 1, psychic 1, shaman 1, sorcerer 1, spiritualist 1, warpriest 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M/DF (earth from a grave)",
                          range: "60 ft.", area: "cone-shaped emanation", targets: "creature touched",
                          duration: "concentration, up to 1 min./level",
                          savingThrow: "none;", sr: false,
                          summary: "You grant the target the ability to pick up on the subtle scents and disturbances to the natural order that are specific to the living dead, granting the target the ability to sense the presence of…",
                          desc: "You grant the target the ability to pick up on the subtle scents and disturbances to the natural order that are specific to the living dead, granting the target the ability to sense the presence of undead creatures. The target is constantly aware of whether there are any undead auras within 60 feet of her in any direction. If at least one undead aura is present, the target can concentrate on the spell’s effects in order to gain more information on the auras present. This functions similarly to detect undead , except the number of rounds of concentration needed to learn about the undead auras is reduced by 1 (1 round to learn the number of auras, and 2 rounds to learn the strength and location of each aura).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Undeath to Death", school: "Necromancy", levels: "arcanist 6, cleric 6, inquisitor 6, oracle 6, sorcerer 6, spiritualist 6, warpriest 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S, M/DF (diamond powder worth 500 gp)",
                          range: "medium (100 ft. + 10 ft./level)", area: "several undead creatures within a 40-ft.-radius burst", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions like circle of death , except that it destroys undead creatures as noted above.",
                          desc: "This spell functions like circle of death , except that it destroys undead creatures as noted above.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Undetectable Alignment", school: "Abjuration", levels: "alchemist 2, antipaladin 2, bard 1, cleric 2, inquisitor 2, investigator 2, mesmerist 1, oracle 2, paladin 2, psychic 2, skald 1, warpriest 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature or object",
                          duration: "24 hours",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "An undetectable alignment spell conceals the alignment of an object or a creature from all forms of divination.",
                          desc: "An undetectable alignment spell conceals the alignment of an object or a creature from all forms of divination.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Unhallow", school: "Evocation", levels: "cleric 5, druid 5, hunter 5, inquisitor 5, oracle 5, warpriest 5",
                          castingTime: "24 hours", components: "V, S, M (herbs, oils, and incense worth at least 1,000 gp, plus 1,000 gp per level of the spell to be tied to the unhallowed area)",
                          range: "touch", area: "40-ft. radius emanating from the touched point", targets: "",
                          duration: "instantaneous",
                          savingThrow: "see text;", sr: false,
                          summary: "Unhallow makes a particular site, building, or structure an unholy site. This has three major effects. First, the site or structure is guarded by a",
                          desc: "Unhallow makes a particular site, building, or structure an unholy site. This has three major effects. First, the site or structure is guarded by a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Unholy Aura", school: "Abjuration", levels: "cleric 8, oracle 8",
                          castingTime: "1 standard action", components: "V, S, F (a tiny reliquary worth 500 gp)",
                          range: "20 ft.", area: "", targets: "one creature/level in a 20-ft.-radius burst centered on you",
                          duration: "1 round/level (D)",
                          savingThrow: "see text;", sr: true,
                          summary: "A malevolent darkness surrounds the subjects, protecting them from attacks, granting them resistance to spells cast by good creatures, and weakening good creatures when they strike the subjects.",
                          desc: "A malevolent darkness surrounds the subjects, protecting them from attacks, granting them resistance to spells cast by good creatures, and weakening good creatures when they strike the subjects. This abjuration has four effects. First, each warded creature gains a +4 deflection bonus to AC and a +4 resistance bonus on saves. Unlike the effect of protection from good , this benefit applies against all attacks, not just against attacks by good creatures. Second, a warded creature gains SR 25 against good spells and spells cast by good creatures. Third, the abjuration protects the subjects from possession and mental influence, just as",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Unholy Blight", school: "Evocation", levels: "cleric 4, inquisitor 4, oracle 4, warpriest 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "20-ft.-radius spread", targets: "",
                          duration: "instantaneous (1d4 rounds); see text",
                          savingThrow: "Will partial;", sr: true,
                          summary: "You call up unholy power to smite your enemies. The power takes the form of a cold, cloying miasma of greasy darkness. Only good and neutral (not evil) creatures are harmed by the spell.",
                          desc: "You call up unholy power to smite your enemies. The power takes the form of a cold, cloying miasma of greasy darkness. Only good and neutral (not evil) creatures are harmed by the spell. The spell deals 1d8 points of damage per two caster levels (maximum 5d8) to a good creature (or 1d6 per caster level, maximum 10d6, to a good outsider) and causes it to be sickened for 1d4 rounds. A successful Will save reduces damage to half and negates the sickened effect. The effects cannot be negated by remove disease",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Unseen Servant", school: "Conjuration (Creation)", levels: "arcanist 1, bard 1, magus 1, medium 1, mesmerist 1, occultist 1, psychic 1, skald 1, sorcerer 1, spiritualist 1, summoner 1, summoner (unchained) 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M (a piece of string and a bit of wood)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one invisible, mindless, shapeless servant", targets: "",
                          duration: "1 hour/level",
                          savingThrow: "none;", sr: false,
                          summary: "An unseen servant is an invisible, mindless, shapeless force that performs simple tasks at your command. It can run and fetch things, open unstuck doors, and hold chairs, as well as clean and mend.",
                          desc: "An unseen servant is an invisible, mindless, shapeless force that performs simple tasks at your command. It can run and fetch things, open unstuck doors, and hold chairs, as well as clean and mend. The servant can perform only one activity at a time, but it repeats the same activity over and over again if told to do so as long as you remain within range. It can open only normal doors, drawers, lids, and the like. It has an effective Strength score of 2 (so it can lift 20 pounds or drag 100 pounds). It can trigger traps and such, but it can exert only 20 pounds of force, which is not enough to activate certain pressure plates and other devices. It can't perform any task that requires a skill check with a DC higher than 10 or that requires a check using a skill that can't be used untrained. This servant cannot fly, climb, or even swim (though it can walk on water). Its base speed is 15 feet. The servant cannot attack in any way; it is never allowed an attack roll. It cannot be killed, but it dissipates if it takes 6 points of damage from area attacks. (It gets no saves against attacks.) If you attempt to send it beyond the spell's range (measured from your current position), the servant ceases to exist.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Vampiric Touch", school: "Necromancy", levels: "antipaladin 3, arcanist 3, bloodrager 3, magus 3, medium 3, mesmerist 3, psychic 3, sorcerer 3, spiritualist 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "instantaneous/1 hour; see text",
                          savingThrow: "none;", sr: true,
                          summary: "You must succeed on a melee touch attack. Your touch deals 1d6 points of damage per two caster levels (maximum 10d6). You gain temporary hit points equal to the damage you deal.",
                          desc: "You must succeed on a melee touch attack. Your touch deals 1d6 points of damage per two caster levels (maximum 10d6). You gain temporary hit points equal to the damage you deal. You can't gain more than the subject's current hit points + the subject's Constitution score (which is enough to kill the subject). The temporary hit points disappear 1 hour later.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Veil", school: "Illusion (Glamer)", levels: "arcanist 6, bard 6, mesmerist 6, psychic 6, skald 6, sorcerer 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S",
                          range: "long (400 ft. + 40 ft./level)", area: "", targets: "one or more creatures, no two of which can be more than 30 ft. apart",
                          duration: "concentration + 1 hour/level (D)",
                          savingThrow: "Will negates; see text;", sr: true,
                          summary: "You instantly change the appearance of the subjects and then maintain that appearance for the spell's duration. You can make the subjects appear to be anything you wish.",
                          desc: "You instantly change the appearance of the subjects and then maintain that appearance for the spell's duration. You can make the subjects appear to be anything you wish. The subjects look, feel, and smell just like the creatures the spell makes them resemble. Affected creatures resume their normal appearances if slain. You must succeed on a Disguise check to duplicate the appearance of a specific individual. This spell gives you a +10 bonus on the check. Unwilling targets can negate the spell's effect on them by making Will saves or with spell resistance. Those who interact with the subjects can attempt Will disbelief saves to see through the glamer, but spell resistance doesn't help.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Ventriloquism", school: "Illusion (Figment)", levels: "arcanist 1, bard 1, medium 1, mesmerist 1, psychic 1, redmantisassassin 1, skald 1, sorcerer 1, spiritualist 1, summoner 1, summoner (unchained) 1, wizard 1",
                          castingTime: "1 standard action", components: "V, F (parchment rolled into cone)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "intelligible sound, usually speech", targets: "",
                          duration: "1 min./level (D)",
                          savingThrow: "Will disbelief (if interacted with);", sr: false,
                          summary: "You can make your voice (or any sound that you can normally make vocally) seem to issue from someplace else. You can speak in any language you know.",
                          desc: "You can make your voice (or any sound that you can normally make vocally) seem to issue from someplace else. You can speak in any language you know. With respect to such voices and sounds, anyone who hears the sound and rolls a successful save recognizes it as illusory (but still hears it).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Virtue", school: "Transmutation", levels: "cleric 0, druid 0, hunter 0, inquisitor 0, medium 0, oracle 0, paladin 1, psychic 0, shaman 0, spiritualist 0, warpriest 0",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 min.",
                          savingThrow: "none;", sr: true,
                          summary: "With a touch, you infuse a creature with a tiny surge of life, granting the subject 1 temporary hit point.",
                          desc: "With a touch, you infuse a creature with a tiny surge of life, granting the subject 1 temporary hit point.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Vision", school: "Divination", levels: "arcanist 7, psychic 7, shaman 7, sorcerer 7, witch 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S, M (incense worth 250 gp), F (four pieces of ivory worth 50 gp each)",
                          range: "personal", area: "", targets: "you",
                          duration: "see text",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions like legend lore , except that it works more quickly and produces some strain on you. You pose a question about some person, place, or object, then cast the spell.",
                          desc: "This spell functions like legend lore , except that it works more quickly and produces some strain on you. You pose a question about some person, place, or object, then cast the spell. If the person or object is at hand or if you are in the place in question, you receive a vision about it by succeeding on a caster level check (1d20 + 1 per caster level; maximum +25) against DC 20. If only detailed information on the person, place, or object is known, the DC is 25, and the information gained is incomplete. If only rumors are known, the DC is 30, and the information gained is vague. After this spell is complete, you are fatigued.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Wail of the Banshee", school: "Necromancy", levels: "arcanist 9, psychic 9, shaman 9, sorcerer 9, witch 9, wizard 9",
                          castingTime: "1 standard action", components: "V",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature/level within a 40-ft.-radius spread",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "When you cast this spell, you emit a terrible, soul-chilling scream that possibly kills creatures that hear it (except for yourself).",
                          desc: "When you cast this spell, you emit a terrible, soul-chilling scream that possibly kills creatures that hear it (except for yourself). The spell affects up to one creature per caster level, inflicting 10 points of damage per caster level. Creatures closest to the point of origin are affected first.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Wall of Fire", school: "Evocation", levels: "adept 4, arcanist 4, bloodrager 4, druid 5, hunter 5, magus 4, occultist 4, shaman 5, sorcerer 4, summoner 3, summoner (unchained) 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M/DF (a piece of phosphor)",
                          range: "medium (100 ft. + 10 ft./level)", area: "opaque sheet of flame up to 20 ft. long/level or a ring of fire with a radius of up to 5 ft./two levels; either form 20 ft. high", targets: "",
                          duration: "concentration + 1 round/level",
                          savingThrow: "none;", sr: true,
                          summary: "An immobile, blazing curtain of shimmering violet fire springs into existence.",
                          desc: "An immobile, blazing curtain of shimmering violet fire springs into existence. One side of the wall, selected by you, sends forth waves of heat, dealing 2d4 points of fire damage to creatures within 10 feet and 1d4 points of fire damage to those past 10 feet but within 20 feet. The wall deals this damage when it appears, and to all creatures in the area on your turn each round. In addition, the wall deals 2d6 points of fire damage + 1 point of fire damage per caster level (maximum +20) to any creature passing through it. The wall deals double damage to undead creatures. If you evoke the wall so that it appears where creatures are, each creature takes damage as if passing through the wall. If any 5-foot length of wall takes 20 points or more of cold damage in 1 round, that length goes away. (Do not divide cold damage by 2, as normal for objects.) Wall of fire",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Wall of Force", school: "Evocation", levels: "arcanist 5, magus 5, occultist 5, psychic 5, sorcerer 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (powdered quartz)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "wall whose area is up to one 10-ft. square/level", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "A wall of force creates an invisible wall of pure force. The wall cannot move and is not easily destroyed. A",
                          desc: "A wall of force creates an invisible wall of pure force. The wall cannot move and is not easily destroyed. A",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Wall of Ice", school: "Evocation", levels: "arcanist 4, bloodrager 4, magus 4, occultist 4, sorcerer 4, summoner 3, summoner (unchained) 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (a piece of quartz or rock crystal)",
                          range: "medium (100 ft. + 10 ft./level)", area: "anchored plane of ice, up to one 10-ft. square/level, or hemisphere of ice with a radius of up to 3 ft. + 1 ft./level", targets: "",
                          duration: "1 min./level",
                          savingThrow: "Reflex negates; see text;", sr: true,
                          summary: "This spell creates an anchored plane of ice or a hemisphere of ice, depending on the version selected. A wall of ice cannot form in an area occupied by physical objects or creatures.",
                          desc: "This spell creates an anchored plane of ice or a hemisphere of ice, depending on the version selected. A wall of ice cannot form in an area occupied by physical objects or creatures. Its surface must be smooth and unbroken when created. Any creature adjacent to the wall when it is created may attempt a Reflex save to disrupt the wall as it is being formed. A successful save indicates that the spell automatically fails. Fire can melt a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Wall of Iron", school: "Conjuration (Creation)", levels: "arcanist 6, magus 6, occultist 6, sorcerer 6, summoner 5, summoner (unchained) 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S, M (a small iron sheet plus gold dust worth 50 gp)",
                          range: "medium (100 ft. + 10 ft./level)", area: "iron wall whose area is up to one 5-ft. square/level; see text", targets: "",
                          duration: "instantaneous",
                          savingThrow: "see text;", sr: false,
                          summary: "You cause a flat, vertical iron wall to spring into being. The wall inserts itself into any surrounding nonliving material if its area is sufficient to do so.",
                          desc: "You cause a flat, vertical iron wall to spring into being. The wall inserts itself into any surrounding nonliving material if its area is sufficient to do so. The wall cannot be conjured so that it occupies the same space as a creature or another object. It must always be a flat plane, though you can shape its edges to fit the available space. A wall of iron is 1 inch thick per four caster levels. You can double the wall's area by halving its thickness. Each 5-foot square of the wall has 30 hit points per inch of thickness and hardness 10. A section of wall whose hit points drop to 0 is breached. If a creature tries to break through the wall with a single attack, the DC for the Strength check is 25 + 2 per inch of thickness. If you desire, the wall can be created vertically resting on a flat surface but not attached to the surface, so that it can be tipped over to fall on and crush creatures beneath it. The wall is 50% likely to tip in either direction if left unpushed. Creatures can push the wall in one direction rather than letting it fall randomly. A creature must make a DC 40 Strength check to push the wall over. Creatures with room to flee the falling wall may do so by making successful Reflex saves. Any Large or smaller creature that fails takes 10d6 points of damage while fleeing from the wall. The wall cannot crush Huge and larger creatures. Like any iron wall, this wall is subject to rust, perforation, and other natural phenomena. Iron created by this spell is not suitable for use in the creation of other objects and cannot be sold.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Wall of Stone", school: "Conjuration (Creation)", levels: "adept 5, arcanist 5, cleric 5, druid 6, hunter 6, magus 5, occultist 5, oracle 5, shaman 6, sorcerer 5, summoner 4, summoner (unchained) 5, warpriest 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M/DF (a small block of granite)",
                          range: "medium (100 ft. + 10 ft./level)", area: "stone wall whose area is up to one 5-ft. square/level (S)", targets: "",
                          duration: "instantaneous",
                          savingThrow: "see text;", sr: false,
                          summary: "This spell creates a wall of rock that merges into adjoining rock surfaces. A wall of stone is 1 inch thick per four caster levels and composed of up to one 5-foot square per level.",
                          desc: "This spell creates a wall of rock that merges into adjoining rock surfaces. A wall of stone is 1 inch thick per four caster levels and composed of up to one 5-foot square per level. You can double the wall's area by halving its thickness. The wall cannot be conjured so that it occupies the same space as a creature or another object.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Wall of Thorns", school: "Conjuration (Creation)", levels: "druid 5, hunter 5, shaman 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "wall of thorny brush, up to one 10-ft. cube/level (S)", targets: "",
                          duration: "10 min./level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "A wall of thorns spell creates a barrier of very tough, pliable, tangled brush bearing needle-sharp thorns as long as a human's finger. Any creature forced into or attempting to move through a",
                          desc: "A wall of thorns spell creates a barrier of very tough, pliable, tangled brush bearing needle-sharp thorns as long as a human's finger. Any creature forced into or attempting to move through a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Wandering Weather", school: "Transmutation", levels: "arcanist 7, cleric 7, druid 7, oracle 7, shaman 7, sorcerer 7, witch 7, wizard 7",
                          castingTime: "10 minutes; see text", components: "V, S",
                          range: "2 miles", area: "2-mile-radius circle, centered on you; see text", targets: "",
                          duration: "4d12 hours; see text",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as control weather except you can opt for the weather to remain centered on you as you move.",
                          desc: "This spell functions as control weather except you can opt for the weather to remain centered on you as you move.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Warp Wood", school: "Transmutation", levels: "druid 2, hunter 2, occultist 2, shaman 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "1 Small wooden object/level, all within a 20-ft. radius",
                          duration: "instantaneous",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "You cause wood to bend and warp, permanently destroying its straightness, form, and strength. A warped door springs open (or becomes stuck, requiring a Strength check to open, at your option).",
                          desc: "You cause wood to bend and warp, permanently destroying its straightness, form, and strength. A warped door springs open (or becomes stuck, requiring a Strength check to open, at your option). A boat or ship springs a leak. Warped ranged weapons are useless. A warped melee weapon causes a –4 penalty on attack rolls. You may warp one Small or smaller object or its equivalent per caster level. A Medium object counts as two Small objects, a Large object as four, a Huge object as eight, a Gargantuan object as 16, and a Colossal object as 32. Alternatively, you can unwarp wood (effectively warping it back to normal) with this spell.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Water Breathing", school: "Transmutation", levels: "alchemist 3, arcanist 3, bloodrager 3, cleric 3, druid 3, hunter 3, investigator 3, magus 3, oracle 3, psychic 3, redmantisassassin 3, shaman 3, sorcerer 3, summoner 3, summoner (unchained) 3, warpriest 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M/DF (short reed or piece of straw)",
                          range: "touch", area: "", targets: "living creatures touched",
                          duration: "2 hours/level; see text",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The transmuted creatures can breathe water freely. Divide the duration evenly among all the creatures you touch. The spell does not make creatures unable to breathe air.",
                          desc: "The transmuted creatures can breathe water freely. Divide the duration evenly among all the creatures you touch. The spell does not make creatures unable to breathe air.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Water Walk", school: "Transmutation", levels: "cleric 3, hunter 3, medium 2, oracle 3, psychic 3, ranger 3, shaman 3, warpriest 3, witch 3",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "one touched creature/level",
                          duration: "10 min./level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The transmuted creatures can tread on any liquid as if it were firm ground.",
                          desc: "The transmuted creatures can tread on any liquid as if it were firm ground. Mud, oil, snow, quicksand, running water, ice, and even lava can be traversed easily, since the subjects' feet hover an inch or two above the surface. Creatures crossing molten lava still take damage from the heat because they are near it. The subjects can walk, run, charge, or otherwise move across the surface as if it were normal ground. If the spell is cast underwater (or while the subjects are partially or wholly submerged in whatever liquid they are in), the subjects are borne toward the surface at 60 feet per round until they can stand on it. Water Walk, Communal",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Water Walk, Communal", school: "Transmutation", levels: "cleric 3, hunter 3, medium 2, oracle 3, psychic 3, ranger 3, shaman 3, warpriest 3, witch 3",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "one touched creature/level",
                          duration: "10 min./level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions like water walk , except you divide the duration in 10-minute intervals among the creatures touched.",
                          desc: "This spell functions like water walk , except you divide the duration in 10-minute intervals among the creatures touched.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Waves of Exhaustion", school: "Necromancy", levels: "arcanist 7, mesmerist 6, psychic 7, sorcerer 7, witch 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S",
                          range: "60 ft.", area: "cone-shaped burst", targets: "",
                          duration: "instantaneous",
                          savingThrow: "no;", sr: true,
                          summary: "Waves of negative energy cause all living creatures in the spell's area to become exhausted. This spell has no effect on a creature that is already exhausted.",
                          desc: "Waves of negative energy cause all living creatures in the spell's area to become exhausted. This spell has no effect on a creature that is already exhausted.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Waves of Fatigue", school: "Necromancy", levels: "arcanist 5, mesmerist 5, psychic 5, sorcerer 5, spiritualist 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "30 ft.", area: "cone-shaped burst", targets: "",
                          duration: "instantaneous",
                          savingThrow: "no;", sr: true,
                          summary: "Waves of negative energy render all living creatures in the spell's area fatigued. This spell has no effect on a creature that is already fatigued.",
                          desc: "Waves of negative energy render all living creatures in the spell's area fatigued. This spell has no effect on a creature that is already fatigued.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Web", school: "Conjuration (Creation)", levels: "adept 2, arcanist 2, magus 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (spider web)",
                          range: "medium (100 ft. + 10 ft./level)", area: "webs in a 20-ft.-radius spread", targets: "",
                          duration: "10 min./level (D)",
                          savingThrow: "Reflex negates; see text;", sr: false,
                          summary: "Web creates a many-layered mass of strong, sticky strands. These strands trap those caught in them. The strands are similar to spiderwebs but far larger and tougher.",
                          desc: "Web creates a many-layered mass of strong, sticky strands. These strands trap those caught in them. The strands are similar to spiderwebs but far larger and tougher. These masses must be anchored to two or more solid and diametrically opposed points or else the web collapses upon itself and disappears. Creatures caught within a web become grappled by the sticky fibers. Attacking a creature in a web doesn't cause you to become grappled. Anyone in the effect's area when the spell is cast must make a Reflex save. If this save succeeds, the creature is inside the web but is otherwise unaffected. If the save fails, the creature gains the grappled condition, but can break free by making a combat maneuver check or Escape Artist check as a standard action against the DC of this spell. The entire area of the web is considered difficult terrain. Anyone moving through the webs must make a combat maneuver check or Escape Artist check as part of their move action, with a DC equal to the spell's DC. Creatures that fail lose their movement and become grappled in the first square of webbing that they enter. If you have at least 5 feet of web between you and an opponent, it provides cover. If you have at least 20 feet of web between you, it provides total cover.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Weird", school: "Illusion (Phantasm)", levels: "arcanist 9, psychic 9, sorcerer 9, wizard 9",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "any number of creatures, no two of which can be more than 30 ft. apart",
                          duration: "instantaneous",
                          savingThrow: "Will disbelief, then Fortitude partial; see text;", sr: true,
                          summary: "This spell functions like phantasmal killer , except it can affect more than one creature.",
                          desc: "This spell functions like phantasmal killer , except it can affect more than one creature. Only the affected creatures see the phantasmal creatures attacking them, though you see the attackers as shadowy shapes. If a subject's Fortitude save succeeds, it still takes 3d6 points of damage and is stunned for 1 round. The subject also takes 1d4 points of Strength damage.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Whirlwind", school: "Evocation", levels: "druid 8, shaman 8",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "long (400 ft. + 40 ft./level)", area: "cyclone 10 ft. wide at base, 30 ft. wide at top, and 30 ft. tall", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "Reflex negates; see text;", sr: true,
                          summary: "This spell creates a powerful cyclone of raging wind that moves through the air, along the ground, or over water at a speed of 60 feet per round.",
                          desc: "This spell creates a powerful cyclone of raging wind that moves through the air, along the ground, or over water at a speed of 60 feet per round. You can concentrate on controlling the cyclone's every movement or specify a simple program. Directing the cyclone's movement or changing its programmed movement is a standard action for you. The cyclone always moves during your turn. If the cyclone exceeds the spell's range, it moves in a random, uncontrolled fashion for 1d3 rounds and then dissipates. (You can't regain control of the cyclone, even if it comes back within range.) Any Large or smaller creature that comes in contact with the spell effect must succeed on a Reflex save or take 3d6 points of damage. A Medium or smaller creature that fails its first save must succeed on a second one or be picked up bodily by the cyclone and held suspended in its powerful winds, taking 1d8 points of damage each round on your turn with no save allowed. You may direct the cyclone to eject any carried creatures whenever you wish, depositing the hapless souls wherever the cyclone happens to be when they are released.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Whispering Wind", school: "Transmutation", levels: "arcanist 2, bard 2, inquisitor 2, medium 2, mesmerist 2, psychic 2, redmantisassassin 2, skald 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "1 mile/level", area: "10-ft.-radius spread", targets: "",
                          duration: "no more than 1 hour/level or until discharged (destination is reached)",
                          savingThrow: "none;", sr: false,
                          summary: "You send a message or sound on the wind to a designated spot. The whispering wind travels to a specific location within range that is familiar to you, provided that it can find a way to the location.",
                          desc: "You send a message or sound on the wind to a designated spot. The whispering wind travels to a specific location within range that is familiar to you, provided that it can find a way to the location. A",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Wind Walk", school: "Transmutation", levels: "alchemist 6, cleric 6, druid 7, investigator 6, oracle 6, shaman 7, warpriest 6",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "you and one touched creature per three levels",
                          duration: "1 hour/level (D); see text",
                          savingThrow: "no and Will negates (harmless);", sr: true,
                          summary: "You alter the substance of your body to a cloudlike vapor (as the gaseous form spell) and move through the air, possibly at great speed.",
                          desc: "You alter the substance of your body to a cloudlike vapor (as the gaseous form spell) and move through the air, possibly at great speed. You can take other creatures with you, each of which acts independently. Normally, a wind walker flies at a speed of 10 feet with perfect maneuverability. If desired by the subject, a magical wind wafts a wind walker along at up to 600 feet per round (60 mph) with poor maneuverability. Wind walkers are not invisible but rather appear misty and translucent. If fully clothed in white, they are 80% likely to be mistaken for clouds, fog, vapors, or the like. A wind walker can regain its physical form as desired and later resume the cloud form. Each change to and from vaporous form takes 5 rounds, which counts toward the duration of the spell (as does any time spent in physical form). As noted above, you can dismiss the spell, and you can even dismiss it for individual wind walkers and not others. For the last minute of the spell's duration, a wind walker in cloud form automatically descends 60 feet per round (for a total of 600 feet), though it may descend faster if it wishes. This descent serves as a warning that the spell is about to end.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Wind Wall", school: "Evocation", levels: "arcanist 3, bloodrager 3, cleric 3, druid 3, hunter 2, magus 3, occultist 3, oracle 3, ranger 2, shaman 3, sorcerer 3, spiritualist 3, summoner 2, summoner (unchained) 3, warpriest 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M/DF (a tiny fan and an exotic feather)",
                          range: "medium (100 ft. + 10 ft./level)", area: "wall up to 10 ft./level long and 5 ft./level high (S)", targets: "",
                          duration: "1 round/level",
                          savingThrow: "none; see text;", sr: true,
                          summary: "An invisible vertical curtain of wind appears. It is 2 feet thick and of considerable strength.",
                          desc: "An invisible vertical curtain of wind appears. It is 2 feet thick and of considerable strength. It is a roaring blast sufficient to blow away any bird smaller than an eagle, or tear papers and similar materials from unsuspecting hands. (A Reflex save allows a creature to maintain its grasp on an object.) Tiny and Small flying creatures cannot pass through the barrier. Loose materials and cloth garments fly upward when caught in a wind wall . Arrows and bolts are deflected upward and miss, while any other normal ranged weapon passing through the wall has a 30% miss chance. (A giant-thrown boulder, a siege engine projectile, and other massive ranged weapons are not affected.) Gases, most gaseous breath weapons, and creatures in gaseous form cannot pass through the wall (although it is no barrier to incorporeal creatures). While the wall must be vertical, you can shape it in any continuous path along the ground that you like. It is possible to create cylindrical or square wind walls to enclose specific points.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Wish", school: "Universal", levels: "arcanist 9, psychic 9, sorcerer 9, wizard 9",
                          castingTime: "1 standard action", components: "V, S, M (diamond worth 25,000 gp)",
                          range: "see text", area: "", targets: "",
                          duration: "see text",
                          savingThrow: "none, see text;", sr: true,
                          summary: "Wish is the mightiest spell a wizard or sorcerer can cast. By simply speaking aloud, you can alter reality to better suit you. Even wish , however, has its limits. A",
                          desc: "Wish is the mightiest spell a wizard or sorcerer can cast. By simply speaking aloud, you can alter reality to better suit you. Even wish , however, has its limits. A",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Wood Shape", school: "Transmutation", levels: "druid 2, hunter 2, occultist 2, shaman 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "one touched piece of wood no larger than 10 cu. ft. + 1 cu. ft./level",
                          duration: "instantaneous",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "Wood shape enables you to form one existing piece of wood into any shape that suits your purpose. While it is possible to make crude coffers, doors, and so forth, fine detail isn't possible.",
                          desc: "Wood shape enables you to form one existing piece of wood into any shape that suits your purpose. While it is possible to make crude coffers, doors, and so forth, fine detail isn't possible. There is a 30% chance that any shape that includes moving parts simply doesn't work.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Word of Beckoning", school: "Evocation", levels: "alchemist 5, arcanist 5, cleric 4, inquisitor 4, investigator 5, medium 3, mesmerist 3, occultist 4, oracle 4, psychic 4, shaman 4, sorcerer 5, spiritualist 5, summoner 4, summoner (unchained) 5, warpriest 4, wizard 5",
                          castingTime: "10 minutes", components: "V, S, M/DF (fine copper wire)",
                          range: "see text", area: "", targets: "one creature",
                          duration: "1 round; see text",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like sending , except the subject also receives knowledge of a command word that, when spoken, summons you to the open space nearest to the subject.",
                          desc: "This spell functions like sending , except the subject also receives knowledge of a command word that, when spoken, summons you to the open space nearest to the subject. The subject must speak the command word within 1 round of knowing it to summon you, although the subject isn’t obligated to speak it. You can be transported any distance within a plane but cannot travel between planes. You can bring along objects as long as their weight doesn’t exceed your maximum load. You may also bring one additional willing Medium or smaller creature (carrying gear or objects up to its maximum load) or its equivalent per three caster levels. A Large creature counts as two Medium creatures, a Huge creature counts as four Medium creatures, and so forth. All creatures to be transported must be in contact with one another, and at least one of those creatures must be in contact with you.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Word of Chaos", school: "Evocation", levels: "cleric 7, inquisitor 6, oracle 7",
                          castingTime: "1 standard action", components: "V",
                          range: "40 ft.", area: "nonchaotic creatures in a 40-ft. radius spread centered on you", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none or Will negates; see text;", sr: true,
                          summary: "Any nonchaotic creature within the area of a word of chaos spell suffers the following ill effects, depending on their HD.",
                          desc: "Any nonchaotic creature within the area of a word of chaos spell suffers the following ill effects, depending on their HD.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Word of Recall", school: "Conjuration (Teleportation)", levels: "cleric 6, druid 8, oracle 6, psychic 7, warpriest 6",
                          castingTime: "1 standard action", components: "V",
                          range: "unlimited", area: "", targets: "you and touched objects or other willing creatures",
                          duration: "instantaneous",
                          savingThrow: "none or Will negates (harmless, object);", sr: true,
                          summary: "Word of recall teleports you instantly back to your sanctuary when the word is uttered. You must designate the sanctuary when you prepare the spell, and it must be a very familiar place.",
                          desc: "Word of recall teleports you instantly back to your sanctuary when the word is uttered. You must designate the sanctuary when you prepare the spell, and it must be a very familiar place. The actual point of arrival is a designated area no larger than 10 feet by 10 feet. You can be transported any distance within a plane but cannot travel between planes. You can transport, in addition to yourself, any objects you carry, as long as their weight doesn't exceed your maximum load. You may also bring one additional willing Medium or smaller creature (carrying gear or objects up to its maximum load) or its equivalent per three caster levels. A Large creature counts as two Medium creatures, a Huge creature counts as two Large creatures, and so forth. All creatures to be transported must be in contact with one another, and at least one of those creatures must be in contact with you. Exceeding this limit causes the spell to fail. An unwilling creature can't be teleported by",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Zone of Silence", school: "Illusion (Glamer)", levels: "bard 4, mesmerist 4, skald 4",
                          castingTime: "1 round", components: "V, S",
                          range: "personal", area: "5-ft.-radius emanation centered on you", targets: "",
                          duration: "1 hour/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "By casting zone of silence , you manipulate sound waves in your immediate vicinity so that you and those within the spell's area can converse normally, yet no one outside can hear your voices or any…",
                          desc: "By casting zone of silence , you manipulate sound waves in your immediate vicinity so that you and those within the spell's area can converse normally, yet no one outside can hear your voices or any other noises from within, including language-dependent or sonic spell effects. This effect is centered on you and moves with you. Anyone who enters the zone immediately becomes subject to its effects, but those who leave are no longer affected. Note, however, that a successful DC 20 Linguistics check to read lips can still reveal what's said inside a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Zone of Truth", school: "Enchantment (Compulsion)", levels: "cleric 2, inquisitor 2, medium 2, oracle 2, paladin 2, psychic 2, warpriest 2, witch 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "20-ft.-radius emanation", targets: "",
                          duration: "1 min./level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "Creatures within the emanation area (or those who enter it) can't speak any deliberate and intentional lies.",
                          desc: "Creatures within the emanation area (or those who enter it) can't speak any deliberate and intentional lies. Each potentially affected creature is allowed a save to avoid the effects when the spell is cast or when the creature first enters the emanation area. Affected creatures are aware of this enchantment. Therefore, they may avoid answering questions to which they would normally respond with a lie, or they may be evasive as long as they remain within the boundaries of the truth. Creatures who leave the area are free to speak as they choose.",
                          source: "Core Rulebook", isPremium: false),

                    // // MARK: - Advanced Class Guide
        )
        try await db.insertSpell(
        .make("Adhesive Blood", school: "Transmutation", levels: "alchemist 2, arcanist 2, bloodrager 2, investigator 2, psychic 2, redmantisassassin 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "Reflex negates (see text);", sr: false,
                          summary: "Your blood thickens to becomes a glue-like substance upon contact with air.",
                          desc: "Your blood thickens to becomes a glue-like substance upon contact with air. A piercing or slashing weapon that deals hit point damage to you is stuck fast unless the wielder succeeds at a Reflex save. A creature can pry off a stuck weapon on its turn as a standard action with a successful Strength check against the spell’s DC. Strong alcohol or universal solvent dissolves the adhesive. The glue breaks down 5 rounds after you die, or when the duration ends. This glue has no effect while underwater or in environments that lack air.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Adhesive Spittle", school: "Conjuration (Creation)", levels: "alchemist 1, arcanist 1, investigator 1, psychic 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "15 ft.", area: "", targets: "one creature",
                          duration: "1 round/level or until discharged (see text)",
                          savingThrow: "Reflex partial;", sr: false,
                          summary: "Once during this spell’s duration, you can spit a viscous liquid as a standard action.",
                          desc: "Once during this spell’s duration, you can spit a viscous liquid as a standard action. This liquid functions as a tanglefoot bag, except you do not have to make a successful attack roll to hit your target. The DCs to counteract this adhesive (to avoid being stuck to the floor, to fly, to break the adhesive, or to cast a spell) use the spell’s DC rather than a tanglefoot bag’s normal DCs. The adhesive persists for 2d4 rounds after you spit it.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Adjustable Disguise", school: "Illusion (Glamer)", levels: "alchemist 3, antipaladin 3, arcanist 3, bard 3, inquisitor 3, investigator 3, medium 3, mesmerist 3, occultist 3, psychic 3, redmantisassassin 3, skald 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "10 minutes/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as disguise self , except as a swift action you can alter the disguise (within the limitations of",
                          desc: "This spell functions as disguise self , except as a swift action you can alter the disguise (within the limitations of",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Adjustable Polymorph", school: "Transmutation (Polymorph)", levels: "alchemist 4, arcanist 4, bard 4, investigator 4, magus 4, medium 4, psychic 4, redmantisassassin 4, shaman 4, skald 4, sorcerer 4, summoner 4, summoner (unchained) 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (a small piece of doppelganger flesh)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as alter self , except you can as a swift action alter the disguise (within the limitations of",
                          desc: "This spell functions as alter self , except you can as a swift action alter the disguise (within the limitations of",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Aggressive Thundercloud", school: "Evocation", levels: "arcanist 2, druid 2, hunter 2, magus 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (a piece of a tree struck by lightning)",
                          range: "medium (100 ft. + 10 ft./level)", area: "5-ft.-diameter sphere", targets: "",
                          duration: "1 round/level",
                          savingThrow: "Reflex negates;", sr: true,
                          summary: "A crackling, spherical storm cloud flies in whichever direction you point and deals electricity damage to those it strikes. It has a fly speed of 20 feet with perfect maneuverability.",
                          desc: "A crackling, spherical storm cloud flies in whichever direction you point and deals electricity damage to those it strikes. It has a fly speed of 20 feet with perfect maneuverability. If it enters a space that contains a creature, the storm stops moving for the round and deals 3d6 points of electricity damage to that creature, though a successful Reflex save negates that damage. It provides concealment (20% miss chance) to anything within it, and its flickering light illuminates the same area a candle would. The sphere moves as long as you actively direct it (as a move action for you); otherwise, it stays at rest and crackles with lightning. It can be moved by wind effects and counts as a Small creature for the purpose of determining how winds affect it. The sphere has no physical substance and cannot exert any force on corporeal creatures or objects. It disperses if it exceeds the spell’s range. Aggressive Thundercloud, Greater",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Aggressive Thundercloud, Greater", school: "Evocation", levels: "arcanist 2, druid 2, hunter 2, magus 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (a piece of a tree struck by lightning)",
                          range: "medium (100 ft. + 10 ft./level)", area: "5-ft.-diameter sphere", targets: "",
                          duration: "1 round/level",
                          savingThrow: "Reflex negates;", sr: true,
                          summary: "This spell functions as aggressive thundercloud , except it deals 6d6 points of electricity damage to any creature it strikes.",
                          desc: "This spell functions as aggressive thundercloud , except it deals 6d6 points of electricity damage to any creature it strikes. The first creature damaged by the cloud is also stunned for 1 round (Fortitude negates); this is a sonic effect.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Air Geyser", school: "Evocation", levels: "arcanist 3, bloodrager 3, druid 3, hunter 3, magus 3, shaman 4, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature or object up to Large size",
                          duration: "instantaneous",
                          savingThrow: "Reflex partial (see text);", sr: true,
                          summary: "You create a powerful blast of air capable of flinging an opponent upward.",
                          desc: "You create a powerful blast of air capable of flinging an opponent upward. If the target fails its Reflex save, the force of the air deals 2d6 points of bludgeoning damage and hurls the target upward a number of feet equal to 5 × your caster level. If a solid object (such as a ceiling) is encountered, the target strikes the object in the same manner as it would during a normal fall. After this blast of air ceases, the target falls down (unless it was flying), taking falling damage as normal. A successful save means the target takes half damage from the air blast but is not moved by it.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Air Step", school: "Transmutation", levels: "alchemist 2, arcanist 2, bard 2, cleric 2, druid 2, hunter 2, investigator 2, occultist 2, oracle 2, ranger 2, redmantisassassin 2, skald 2, sorcerer 2, warpriest 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a goose feather)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as air walk , except you can rise no higher than 1 foot off the ground, you cannot pass over liquid, and the air you walk on is less stable than solid ground.",
                          desc: "This spell functions as air walk , except you can rise no higher than 1 foot off the ground, you cannot pass over liquid, and the air you walk on is less stable than solid ground. When walking on air, you ignore difficult terrain that is less than 1 foot high, you do not trigger effects based on weight (such as a pressure plate), and any creature trying to track you through areas you crossed with this spell takes a –10 penalty on its Perception or Survival check to do so. However, because of the instability of the air you walk on, your speed is reduced by 10 feet (to a minimum of 5 feet) and you take a –4 penalty on Acrobatics, Climb, and Ride checks. If you have 1 rank in Fly, your speed is not reduced when using this spell, and you can cross over liquid at half speed. If you have 5 ranks in Fly, you can cross liquid at full speed and do not take the penalties to your skill checks.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Alter Musical Instrument", school: "Illusion (Figment)", levels: "arcanist 1, bard 1, occultist 1, redmantisassassin 1, skald 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, F (an instrument)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one musical instrument",
                          duration: "1 hour/level (D)",
                          savingThrow: "Fortitude negates (object);", sr: true,
                          summary: "You alter an instrument so it sounds like a different kind of instrument you are familiar with.",
                          desc: "You alter an instrument so it sounds like a different kind of instrument you are familiar with. The change could be minor (such as making a lute sound like a guitar) or major (making a keyboard sound like drums). All other aspects of the instrument—such as volume, pitch, and how it is played— are unchanged. For example, a piccolo made to sound like an organ is no louder than a normal piccolo, can produce only high notes in the piccolo range, and is a wind instrument.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Anchored Step", school: "Transmutation", levels: "alchemist 3, arcanist 3, druid 3, hunter 3, investigator 3, psychic 3, redmantisassassin 3, shaman 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a bit of oak root)",
                          range: "personal", area: "", targets: "you",
                          duration: "10 minutes/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "Powerful tendrils grow out of the bottom of your feet or footwear, partially anchoring you to the ground and making it more difficult for others to move you against your will.",
                          desc: "Powerful tendrils grow out of the bottom of your feet or footwear, partially anchoring you to the ground and making it more difficult for others to move you against your will. These tendrils dig into any surface, but leave no trace of your passing. You gain a +10 bonus to your CMD against bull rush, overrun, pull, push, reposition, and trip combat maneuvers, as well as any other effect that would move you from your current position (such as being swallowed whole) or knock you prone. The tendrils slow your movement, however; your speed is reduced by 10 feet (to a minimum of 5 feet). This spell has no effect if you are moving without touching the ground (climbing, flying, swimming, and so on).",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Animal Purpose Training", school: "Enchantment (Compulsion)", levels: "antipaladin 1, bard 2, druid 2, hunter 1, inquisitor 1, paladin 1, psychic 1, ranger 1, shaman 2, skald 2, witch 1",
                          castingTime: "1 minute", components: "V, S, M (a swatch of black cloth)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one indifferent or friendly animal",
                          duration: "1 hour/level",
                          savingThrow: "none;", sr: true,
                          summary: "You instill the target animal with a general purpose (see the Handle Animal skill), which can be any purpose except combat training—fighting, guarding, heavy labor, hunting, performance, or riding.",
                          desc: "You instill the target animal with a general purpose (see the Handle Animal skill), which can be any purpose except combat training—fighting, guarding, heavy labor, hunting, performance, or riding. This purpose supersedes the animal’s previous trained purpose and any tricks it knows. When the spell ends, the animal reverts to its previous trained purpose and known tricks.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Anonymous Interaction", school: "Enchantment (Compulsion)", levels: "bard 2, mesmerist 2, psychic 2, skald 2, witch 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature/level, no two of which can be more than 30 ft. apart",
                          duration: "permanent (see text)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You cause the targets to forget all but the most general information about you.",
                          desc: "You cause the targets to forget all but the most general information about you. If they saw you or interacted with you, they still remember your presence and your general shape (such as humanoid), as well as the gist of your interactions with them (such as “She was asking about the queen”), but they don’t remember specifically what you said, details of your appearance, or any identifying information about you. This spell targets any memories of you in the minute preceding its casting, but is otherwise permanent.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Anti-Incorporeal Shell", school: "Abjuration", levels: "cleric 4, oracle 4, psychic 4, shaman 4, spiritualist 4, warpriest 4, witch 4",
                          castingTime: "1 round", components: "V, S, DF",
                          range: "10 ft.", area: "10-ft.-radius emanation centered on you", targets: "",
                          duration: "1 minute/level (D)",
                          savingThrow: "none;", sr: true,
                          summary: "You bring into being a mobile, hemispherical energy field that incorporeal creatures cannot enter. This spell can be used only defensively, not aggressively.",
                          desc: "You bring into being a mobile, hemispherical energy field that incorporeal creatures cannot enter. This spell can be used only defensively, not aggressively. Forcing an abjuration barrier against creatures that the spell keeps at bay collapses the barrier.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Aura Sight", school: "Divination", levels: "alchemist 3, arcanist 3, cleric 3, inquisitor 4, investigator 3, mesmerist 3, oracle 3, psychic 3, shaman 3, sorcerer 3, spiritualist 3, warpriest 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This spell makes your eyes glow and allows you to see alignment auras within 120 feet of you.",
                          desc: "This spell makes your eyes glow and allows you to see alignment auras within 120 feet of you. The effect is similar to that of a detect chaos/evil/good/law spell, but aura sight does not require concentration, and it discerns an aura’s location and power more quickly. You know the location and power of all chaotic, evil, good, and lawful auras within your sight. An aura’s power depends on a creature’s Hit Dice or an item’s caster level, as noted in the description of the",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Banshee Blast", school: "Necromancy", levels: "arcanist 6, sorcerer 6, spiritualist 6, witch 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S",
                          range: "30 ft.", area: "cone-shaped burst", targets: "",
                          duration: "instantaneous and 1 round/level (see text)",
                          savingThrow: "Reflex half and Will negates (see text);", sr: true,
                          summary: "You create a cone of spectral energy resembling screaming elven ghosts that deals 1d4 points of damage per caster level (maximum 15d4); a successful Reflex save halves this damage.",
                          desc: "You create a cone of spectral energy resembling screaming elven ghosts that deals 1d4 points of damage per caster level (maximum 15d4); a successful Reflex save halves this damage. Any creature that fails its Reflex save must succeed at a Will save or become panicked for 1 round/level.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Barrow Haze", school: "Necromancy", levels: "arcanist 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "fog spreads in 20-ft. radius, 20 ft. high", targets: "",
                          duration: "1 minute/level",
                          savingThrow: "none;", sr: false,
                          summary: "Barrow haze creates a bank of fog similar to that created by fog cloud , except that the vapors are black and they have a necromantic link to you. The vapors do not interfere with your vision.",
                          desc: "Barrow haze creates a bank of fog similar to that created by fog cloud , except that the vapors are black and they have a necromantic link to you. The vapors do not interfere with your vision. Because of your link to the haze, if any part of it is within 30 feet of you, any creatures within the haze count as in range for the purpose of using any of your hexes that have a maximum range of 30 feet. For example, suppose you have the slumber hex, you are 25 feet from one edge of the haze, and an opponent is 40 feet farther away at the other extreme of the cloud. You can use your slumber hex on that opponent even though it is actually 65 feet away from you.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Beastspeak", school: "Divination", levels: "druid 2, hunter 2, shaman 2, witch 2",
                          castingTime: "1 standard action", components: "S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "10 minutes/level",
                          savingThrow: "None", sr: false,
                          summary: "When you’re in the form of an animal (such as when you are using wild shape or are affected by a polymorph effect), you can speak normally, including when you cast spells with verbal components, and…",
                          desc: "When you’re in the form of an animal (such as when you are using wild shape or are affected by a polymorph effect), you can speak normally, including when you cast spells with verbal components, and you sound like your normal self when you speak. You can cast this spell while in animal form, using animal-appropriate somatic components.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Bestow Auras", school: "Abjuration", levels: "antipaladin 3, paladin 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 minute/level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You transfer one or more of your paladin or antipaladin auras (such as aura of courage and aura of resolve) to another creature.",
                          desc: "You transfer one or more of your paladin or antipaladin auras (such as aura of courage and aura of resolve) to another creature. You retain the personal effect of that aura, but the target becomes the center of the aura effect instead of you. For example, if you transfer your aura of courage, you remain immune to fear, but the target becomes the center of the aura that grants a +4 morale bonus on saves against fear effects. If an aura functions only when you are conscious, the transferred aura functions only when the target is conscious. If an aura functions only when you expend uses of another ability (such as with aura of justice or aura of vengeance), the transferred aura functions only if the target has that other ability and expends uses of it to activate the aura. You cannot transfer an aura that affects only you (such as aura of good).",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Blade Lash", school: "Transmutation", levels: "bloodrager 1, magus 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "your melee weapon",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "Your weapon elongates and becomes whiplike. As part of casting this spell, you can use this weapon to attempt a trip combat maneuver against one creature within 20 feet, and you gain a +10 bonus on…",
                          desc: "Your weapon elongates and becomes whiplike. As part of casting this spell, you can use this weapon to attempt a trip combat maneuver against one creature within 20 feet, and you gain a +10 bonus on your roll, after which the weapon returns to its previous form.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Blazing Rainbow", school: "Evocation", levels: "druid 6, hunter 6",
                          castingTime: "1 round", components: "V, S, M (a drop of rainwater)",
                          range: "0 ft. or 10 ft./level", area: "bow or bridge of light", targets: "",
                          duration: "1 minute/level or until discharged (see text)",
                          savingThrow: "none;", sr: false,
                          summary: "You create a spectrum of multicolored solid light that can be used for one of two effects.",
                          desc: "You create a spectrum of multicolored solid light that can be used for one of two effects. Bow : The spell creates a longbow or shortbow appropriate for your size, and you are proficient in the use of this weapon. When drawn, the bow automatically creates a +1 seeking brilliant energy arrow ; it cannot fire any other arrows. A creature struck by one of these arrows is surrounded by",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Blessed Fist", school: "Transmutation", levels: "cleric 1, oracle 1, paladin 1, warpriest 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 minute/level",
                          savingThrow: "none;", sr: true,
                          summary: "The target is considered to be armed even when unarmed, so it doesn’t provoke attacks of opportunity when it attacks foes with unarmed strikes.",
                          desc: "The target is considered to be armed even when unarmed, so it doesn’t provoke attacks of opportunity when it attacks foes with unarmed strikes. Its unarmed strikes can deal lethal or nonlethal damage (target’s choice). If the target already has this ability (such as from the monk unarmed strike ability or the Improved Unarmed Strike feat), its unarmed strikes gain a +1 enhancement bonus on attack rolls and damage rolls, and they count as good-aligned weapons for the purposes of overcoming damage reduction.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Bloatbomb", school: "Necromancy", levels: "antipaladin 4, arcanist 4, cleric 4, oracle 4, sorcerer 4, warpriest 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "instantaneous and 1 minute/level (see text)",
                          savingThrow: "Fortitude negates or Reflex half (see text);", sr: true,
                          summary: "The target creature dies if it fails a Fortitude saving throw and its Hit Dice are no more than half your caster level. If it dies, its corpse rapidly putrefies.",
                          desc: "The target creature dies if it fails a Fortitude saving throw and its Hit Dice are no more than half your caster level. If it dies, its corpse rapidly putrefies. The next creature to touch the corpse within 1 minute per level of the target’s death causes the corpse to explode in a 10-foot-radius burst, dealing 3d6 points of acid damage (Reflex half).",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Blood Armor", school: "Transmutation", levels: "alchemist 2, arcanist 2, bloodrager 2, investigator 2, psychic 2, redmantisassassin 2, sorcerer 2, summoner 2, summoner (unchained) 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "Your blood becomes as hard as iron upon contact with air. Each time you take at least 5 points of piercing or slashing damage, your armor gains a +1 enhancement bonus to your AC.",
                          desc: "Your blood becomes as hard as iron upon contact with air. Each time you take at least 5 points of piercing or slashing damage, your armor gains a +1 enhancement bonus to your AC. An outfit of regular clothing counts as armor that grants no AC bonus for the purpose of this spell. This enhancement bonus stacks with itself, but not with an existing enhancement bonus, to a maximum enhancement bonus of +5. This spell has no effect while underwater or in environments that lack air.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Blood Sentinel", school: "Transmutation", levels: "alchemist 3, arcanist 3, investigator 3, redmantisassassin 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a life-sized animal sculpture of a familiar made of clay, cloth, stone, or wood, plus mandrake root worth 25 gp)",
                          range: "touch", area: "", targets: "one animal sculpture",
                          duration: "10 minutes/level",
                          savingThrow: "none;", sr: false,
                          summary: "After casting this spell, you pour a few drops of your blood and saliva into the mouth of the animal sculpture material component, temporarily giving it life.",
                          desc: "After casting this spell, you pour a few drops of your blood and saliva into the mouth of the animal sculpture material component, temporarily giving it life. The animal is bonded to you as if it were a familiar, and it has the abilities of a familiar (use your caster level as your effective wizard level to determine its abilities), but it does not grant you the Alertness feat or the special ability of its animal type. If your blood sentinel is slain, you take 2 points of Intelligence drain and the blood sentinel’s body becomes a destroyed statue. This spell has no effect if you already have a familiar or another blood sentinel.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Blurred Movement", school: "Illusion (Glamer)", levels: "alchemist 1, arcanist 1, bard 1, bloodrager 1, investigator 1, magus 1, mesmerist 1, occultist 1, psychic 1, redmantisassassin 1, skald 1, sorcerer 1, summoner 1, summoner (unchained) 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as blur , except that the blurring occurs only when you move at least 10 feet on your turn and ceases at the end of your movement.",
                          desc: "This spell functions as blur , except that the blurring occurs only when you move at least 10 feet on your turn and ceases at the end of your movement. It is therefore mainly used to protect against attacks on your turn, such as attacks of opportunity. If you move at least twice your speed on your turn, the blurring lasts until the start of your next turn.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Body Capacitance", school: "Transmutation", levels: "alchemist 1, arcanist 1, investigator 1, redmantisassassin 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M (an iron coil)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level or until discharged (see text)",
                          savingThrow: "None", sr: false,
                          summary: "If you take electricity damage while this spell is active, some of the energy is stored on your skin, as with holding the charge on a touch spell.",
                          desc: "If you take electricity damage while this spell is active, some of the energy is stored on your skin, as with holding the charge on a touch spell. You can release this stored electricity by making a melee touch attack. You gain a +3 bonus on the attack roll if your opponent is wearing metal armor, is carrying a metal weapon, or is made of metal. The target of your touch attack is dealt electricity damage equal to half the amount of electricity damage you took after you cast this spell (for example, if you saved for half damage against a lightning bolt and took only 15 points of electricity damage, your next touch attack deals 7 points of electricity damage). This spell is discharged once you hit with a melee touch attack to deliver its damage. If you take electricity damage multiple times while this spell is active, use the largest amount of electricity damage you took to determine your touch attack damage.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Bullet Ward", school: "Abjuration", levels: "antipaladin 2, arcanist 2, bard 2, hunter 2, inquisitor 2, paladin 2, psychic 2, ranger 2, skald 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, F (one to four adamantine bullets, each worth 61 gp)",
                          range: "personal", area: "", targets: "you",
                          duration: "10 minutes/level or until discharged",
                          savingThrow: "None", sr: false,
                          summary: "You toss several adamantine bullets into the air, which then hover protectively nearby and intercept firearm attacks targeting you.",
                          desc: "You toss several adamantine bullets into the air, which then hover protectively nearby and intercept firearm attacks targeting you. The number of bullets protecting you is equal to half your caster level (maximum 4). When an opponent takes a shot at you with a firearm, as an immediate action you can designate a hovering bullet to attempt to block the attack, increasing your AC against that attack by 10. Doing this destroys the adamantine bullet whether or not the attack hits. The spell is discharged when all affected adamantine bullets are destroyed or taken from you. Each adamantine bullet has AC 24, 20 hit points, and hardness 20.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Climbing Beanstalk", school: "Conjuration (Creation)", levels: "druid 2, hunter 2, witch 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "5-ft. square of climbable beanstalks", targets: "",
                          duration: "instantaneous",
                          savingThrow: "None", sr: false,
                          summary: "You cause a thick, sturdy beanstalk to sprout from the ground and grow upward to a height of 10 feet + 5 feet per 2 caster levels.",
                          desc: "You cause a thick, sturdy beanstalk to sprout from the ground and grow upward to a height of 10 feet + 5 feet per 2 caster levels. The growing stalk anchors itself to sturdy objects such as walls or ceilings, and grows around objects that do not fully obstruct its square (such as tree branches), but is stopped by solid obstacles. The beanstalk provides numerous hand- and footholds; its climb DC 5. The beanstalk can support up to 200 pounds plus 50 pounds per caster level, or double that amount if anchored on its upper end. If it anchors itself to a sturdy mobile object (such as a ship or a siege engine), breaking the object free requires a DC 23 Strength check or cutting through the beanstalk (hardness 2, 40 hp). If the ground is capable of supporting plant life, the beanstalk continues to live as a normal plant, and it produces nutritious (if unappetizing) beans. Otherwise, the plant dies after 1d6 hours; its husk remains as durable as a small tree.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Companion Life Link", school: "Necromancy", levels: "arcanist 2, druid 2, hunter 2, ranger 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (a drop of eidolon ichor)",
                          range: "touch", area: "", targets: "one of your animal companions or your familiar",
                          duration: "1 minute/level (see below)",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "You create a life link between yourself and the target. You sense whenever the target is wounded and are made immediately aware if the target is slain.",
                          desc: "You create a life link between yourself and the target. You sense whenever the target is wounded and are made immediately aware if the target is slain. If you are wounded or slain, the target is made aware. As a free action, you can call out to the target, causing it to return to you (if able and willing); this ends the spell.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Contingent Action", school: "Evocation", levels: "arcanist 3, bard 3, psychic 3, skald 3, sorcerer 3, wizard 3",
                          castingTime: "1 minute", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one willing creature",
                          duration: "1 minute/level (D) or until discharged",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The target gains an extra action that becomes available when a condition which you dictate is met.",
                          desc: "The target gains an extra action that becomes available when a condition which you dictate is met. At the time of casting, you dictate the condition, and the target specifies a readied action that occurs when triggered by this condition. The condition needed to trigger the readied action must be clear, although it can be general. If a complicated or convoluted condition is prescribed, the whole combination might fail when triggered. For example, suppose the trigger and the action are stated as “If the target is attacked while he is not holding a weapon, he draws a weapon.” If the target has no weapon to draw when the trigger occurs, the action fails. If the trigger and the action are “If an ally within 20 feet falls unconscious, the target moves to a space adjacent to that ally” but the target is chained to a wall when the trigger occurs and can’t reach the unconscious ally, the action fails. The readied action must be a standard, move, or swift action—it cannot be used to cast a spell or use a supernatural ability. This action counts as a readied action and doesn’t count toward the number of actions the creature can take in a round. When the condition occurs, the target can decide not to use the readied action. Once the condition is triggered, the spell is discharged—whether or not the target uses the readied action or the action is successful.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Contingent Scroll", school: "Evocation", levels: "arcanist 4, bard 4, occultist 4, psychic 4, skald 4, sorcerer 4, wizard 4",
                          castingTime: "10 minutes", components: "V, S, M (the scroll to be triggered; see text), F (a platinum quill worth 100 gp)",
                          range: "personal", area: "", targets: "you",
                          duration: "10 minutes/level (D) or until discharged",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You transfer the power of a scroll to the target so that it comes into effect under some condition you dictate.",
                          desc: "You transfer the power of a scroll to the target so that it comes into effect under some condition you dictate. Casting this spell destroys the scroll, but allows the spell in it to be triggered in a manner similar to the contingency spell. The spell on the scroll must be a spell on your spell list, it must affect the target of this spell (the target of this spell is considered the caster of the scroll), and its level must be no higher than onefourth your caster level (maximum 5th level). The writing on the scroll appears on the target’s skin in any location you desire; this writing does not harm or interfere with the target in any way, and doesn’t need to be on exposed skin to function. For example, you could make the writing appear on under a target’s clothing. The writing on the target’s skin can be deciphered and identified as if it were the scroll it was copied from. Damaging the target has no effect on the stored spell, but effects such as erase that target magical writing can affect it. The condition needed to bring the spell into effect must be clear, although it can be general. In all cases, this spell immediately brings into effect the scroll’s spell, the latter being effectively cast instantaneously when the trigger occurs. If a complicated or convoluted condition is prescribed, the whole spell combination (the",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Creeping Ice", school: "Evocation", levels: "arcanist 4, druid 4, hunter 4, sorcerer 4, summoner 3, summoner (unchained) 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "anchored plane of ice, up to one 10-ft. square/level", targets: "",
                          duration: "10 minutes/level",
                          savingThrow: "Reflex negates (see text);", sr: true,
                          summary: "This spell covers the floor, the ground, or some other calm horizontal surface (such as a placid lake or a gentle river) with a sheet of slowly growing ice.",
                          desc: "This spell covers the floor, the ground, or some other calm horizontal surface (such as a placid lake or a gentle river) with a sheet of slowly growing ice. The initial sheet of ice cannot form in an area occupied by physical objects or creatures. Its surface must be smooth and unbroken when created. The ice is hard, strong, and opaque, and is 1 inch thick per caster level. The ice is strong enough to support the weight of a typical horse, making it possible for creatures to cross a body of water. Each 10-foot square of ice has 3 hit points per inch of thickness. Creatures can hit the ice automatically. A section of ice whose hit points drop to 0 is destroyed, leaving an area of ice chunks, slush, and snow that counts as difficult terrain. If a creature tries to break through the ice with a single attack, the DC for the Strength check is 15 + your caster level. Each round on your turn, the sheet of ice grows 1 foot in all directions except toward you. This growth is slow enough that any creature in the area has time to move out of the way or step onto the ice. If the growing ice completely covers a creature’s square, the creature must choose whether it moves onto the sheet of ice, is knocked prone on the sheet of ice, or is bull rushed into an adjacent square.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Crimson Confession", school: "Abjuration", levels: "arcanist 2, occultist 2, psychic 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "10 minutes", components: "V, S",
                          range: "touch", area: "", targets: "or Area object touched or up to 1 sq. ft.",
                          duration: "permanent and 1 hour/level (see text)",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "You ward an object or an area with your personal rune or mark. You can choose for the writing to be visible or invisible, and it doesn’t harm the material upon which it is placed.",
                          desc: "You ward an object or an area with your personal rune or mark. You can choose for the writing to be visible or invisible, and it doesn’t harm the material upon which it is placed. A detect magic spell causes an invisible mark to glow and be visible. If any creature other than you touches the warded object or area and fails a Fortitude save, its skin turns bright red for 1 hour per level. This coloring cannot be washed away, but it can be dispelled.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Curse of Burning Sleep", school: "Transmutation", levels: "arcanist 4, psychic 4, redmantisassassin 4, shaman 4, sorcerer 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (a feather and a drop of oil)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "permanent until triggered (see text)",
                          savingThrow: "Will negates (see text);", sr: true,
                          summary: "You place a curse upon the target that triggers 1 hour after the next time it falls asleep.",
                          desc: "You place a curse upon the target that triggers 1 hour after the next time it falls asleep. When the curse is triggered, the creature bursts into flame, taking 1d6 points of fire damage per 2 caster levels (maximum 8d6). Furthermore, it catches on fire, taking 2d6 points of fire damage per round at the end of its turn each round until the creature dies or is quenched as normal ( Pathfinder RPG Core Rulebook 444). If the target is still asleep, the fire damage from this spell wakes it. Only one of these spells can be in place on a creature at any time. This has no effect on creatures that don’t sleep.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Dimensional Bounce", school: "Conjuration (Teleportation)", levels: "arcanist 7, psychic 7, sorcerer 7, summoner 6, summoner (unchained) 6, witch 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "you and touched objects or other touched willing creatures",
                          duration: "1 round/level or until discharged",
                          savingThrow: "none and Will negates (object);", sr: true,
                          summary: "You designate two locations within range and create a dimensional link between them; you must have line of effect to both locations when casting this spell.",
                          desc: "You designate two locations within range and create a dimensional link between them; you must have line of effect to both locations when casting this spell. As a swift action, you can teleport from your current location to either of the designated locations as if you had cast dimension door . The spell is discharged once you have used it to teleport a number of times equal to one-fourth your caster level (maximum 5 times).",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Disable Construct", school: "Transmutation", levels: "alchemist 3, arcanist 3, investigator 3, redmantisassassin 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "construct touched",
                          duration: "1 round/level (D)",
                          savingThrow: "Will negates;", sr: false,
                          summary: "You can make a melee touch attack to send a pulse into the target, interfering with the magic that endows it with life.",
                          desc: "You can make a melee touch attack to send a pulse into the target, interfering with the magic that endows it with life. If the construct fails its saving throw, it becomes helpless, but it receives a new save each round at the end of its turn to shake off the effect. If the construct is normally immune to magic, the pulse is less effective and the construct receives a +4 bonus on its saving throw.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Discern Next of Kin", school: "Divination", levels: "arcanist 1, bard 1, medium 1, mesmerist 1, occultist 1, psychic 1, shaman 1, skald 1, sorcerer 1, spiritualist 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, F (a copper piece)",
                          range: "60 ft.", area: "", targets: "one creature",
                          duration: "concentration, up to 1 minute/level (D)",
                          savingThrow: "Will negates (see text);", sr: true,
                          summary: "You can scan the thoughts of one individual and learn the names and locations of the target’s living relatives, as well as the attitude of the target toward those relatives (and vice versa).",
                          desc: "You can scan the thoughts of one individual and learn the names and locations of the target’s living relatives, as well as the attitude of the target toward those relatives (and vice versa). You learn about one relative per round you concentrate on the target. For example, you might learn that the target’s father’s name is Jarn, the father lives on a nearby farm, and the target and his father don’t get along. Since this spell reads the target’s mind, you can learn only what the target knows or believes.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Disguise Weapon", school: "Illusion (Glamer)", levels: "arcanist 1, bard 1, magus 1, medium 1, mesmerist 1, occultist 1, psychic 1, redmantisassassin 1, skald 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 round", components: "V, S",
                          range: "touch", area: "", targets: "manufactured weapon touched",
                          duration: "1 hour/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You make one manufactured weapon look like a different manufactured weapon of the same size and relative encumbrance (light, one-handed, or two-handed).",
                          desc: "You make one manufactured weapon look like a different manufactured weapon of the same size and relative encumbrance (light, one-handed, or two-handed). For example, you could make a Small greatsword look like a Small quarterstaff, a Medium club, or a Large dagger. Even the appearance of an improvised weapon is possible. The extent of the apparent change is up to you. You could add or obscure a minor feature or make the item look like it is composed of different materials (stone, wood, adamantine, and so on). The spell does not provide any of the abilities of the chosen form, nor does it alter the perceived tactile or audible properties of the item or how it is wielded. A creature that interacts with the glamer may attempt a Will save to recognize it as an illusion.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Enchantment Foil", school: "Abjuration", levels: "alchemist 4, arcanist 4, cleric 4, inquisitor 4, investigator 4, mesmerist 3, occultist 4, oracle 4, psychic 4, sorcerer 4, warpriest 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 hour/level (see text)",
                          savingThrow: "None", sr: false,
                          summary: "You gain a +4 bonus on saving throws against enchantment effects.",
                          desc: "You gain a +4 bonus on saving throws against enchantment effects. If you succeed at a save against an enchantment effect, you identify the effect as if you had succeeded at a Spellcraft check to do so. Furthermore, you can choose to act as if you had failed your saving throw. If you do so, you gain a +20 bonus on Bluff checks to convince others that you failed your save and are under the enchantment’s effects. A creature that attempts to use magic to detect this ruse or to make you speak truthfully about it must succeed at a caster level check (DC 15 + your caster level) to do so.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Enemy Insight", school: "Divination", levels: "hunter 2, ranger 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "you plus one willing creature/3 levels, no two of which can be more than 30 ft. apart",
                          duration: "1 minute/level",
                          savingThrow: "none;", sr: false,
                          summary: "You forge a mental bond between yourself and the other targets, each of which must have an Intelligence score of 3 or higher.",
                          desc: "You forge a mental bond between yourself and the other targets, each of which must have an Intelligence score of 3 or higher. Choose one of your favored enemy types (such as goblinoids or magical beasts). You grant the targets half your favored enemy bonus against that type of creature. If any target moves out of range, the spell ends for it.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Extreme Flexibility", school: "Transmutation", levels: "alchemist 2, arcanist 2, bloodrager 2, investigator 2, magus 2, medium 2, psychic 2, redmantisassassin 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "You gain a +1 dodge bonus to AC, a +4 circumstance bonus on Escape Artist checks and combat maneuver checks to escape a grapple, and +4 circumstance bonus to your CMD against grapple attempts.",
                          desc: "You gain a +1 dodge bonus to AC, a +4 circumstance bonus on Escape Artist checks and combat maneuver checks to escape a grapple, and +4 circumstance bonus to your CMD against grapple attempts.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Eyes of the Void", school: "Transmutation", levels: "alchemist 4, antipaladin 4, arcanist 4, investigator 4, psychic 4, redmantisassassin 4, sorcerer 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (a pinch of dried carrot or an agate)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "You gain darkvision, the ability to see 60 feet even in total darkness, including that created by deeper darkness . Darkvision is black-and-white only, but otherwise like normal sight.",
                          desc: "You gain darkvision, the ability to see 60 feet even in total darkness, including that created by deeper darkness . Darkvision is black-and-white only, but otherwise like normal sight. While affected, your eyes turn completely black (but appear white to anyone viewing you with darkvision).",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Fairy Ring Retreat", school: "Conjuration (Creation)", levels: "druid 7, shaman 7, witch 7",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "extradimensional meadow, up to three 10-ft. cubes/level (S)", targets: "",
                          duration: "2 hours/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You conjure up an extradimensional meadow that can be accessed from a single entrance on the plane from which the spell was cast.",
                          desc: "You conjure up an extradimensional meadow that can be accessed from a single entrance on the plane from which the spell was cast. The entry point looks like a circle of toadstools enclosing a 10-foot square. Only those you designate can enter the meadow before you do, and the portal is shut and made invisible behind you when you enter. You can open it again from your own side at will. Once a visitor has passed through the entry point, they find themselves in an idyllic twilight meadow surrounded by an impassable grove of fruit and nut trees. The atmosphere is clean, fresh, and warm. You can configure the meadow into any shape you desire, to the limit of the spell’s effect. The place is comfortable and temperate. The trees can provide enough food to sustain 4 people per caster level for a day. A staff of near-transparent animal or feylike servants (as many as two per caster level) wait upon all who enter. The servants function as unseen servant spells except that they are visible and can go anywhere in the meadow. Since the place can be entered only through its special portal, outside conditions do not affect the meadow, nor do conditions inside it pass to the plane beyond.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Feast on Fear", school: "Necromancy", levels: "arcanist 5, bard 4, mesmerist 4, psychic 5, shaman 5, skald 4, sorcerer 5, spiritualist 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one or more living creatures (see text)",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "Each round, as a standard action, you can target a single living creature of up to 9 HD and strike it with terrifying waves of power.",
                          desc: "Each round, as a standard action, you can target a single living creature of up to 9 HD and strike it with terrifying waves of power. If the target fails its saving throw, it becomes panicked for 1d4 rounds, and you gain 5 temporary hit points (which disappear after 1 hour). After the panic ends, the creature remains shaken for 10 minutes per caster level, and it automatically becomes panicked again if it comes within sight of you during that time. These temporary hit points stack if they are from different creatures.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Flexible Fury", school: "Transmutation", levels: "bard 3, skald 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "You swap one of your current rage powers for another rage power you qualify for.",
                          desc: "You swap one of your current rage powers for another rage power you qualify for. If the rage power granted by this spell has a use limitation (such as once per rage or a number of times per day), any uses of that rage power count toward that limit (including for later castings of this spell). If you swap out a rage power that is required to qualify for another one of your rage powers, you cannot use any rage powers dependent on the one you swapped out until the spell ends. For example, if you have the intimidating glare and terrifying howl rage powers and you swap out intimidating glare for surprise accuracy, you cannot use terrifying howl until the spell ends.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Focused Scrutiny", school: "Divination", levels: "alchemist 2, bard 2, inquisitor 2, investigator 2, medium 2, mesmerist 2, psychic 2, shaman 2, skald 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "10 minutes/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "You gain heightened sensitivity to the mannerisms, reactions, and body language of one creature you can perceive, allowing you to sense its state of mind and easily influence it.",
                          desc: "You gain heightened sensitivity to the mannerisms, reactions, and body language of one creature you can perceive, allowing you to sense its state of mind and easily influence it. You gain a +10 bonus on Perception, Sense Motive, and Survival checks attempted against the target creature, as well as a +5 bonus on Diplomacy and Intimidate checks attempted against it.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Font of Spirit Magic", school: "Conjuration (Creation)", levels: "shaman 3",
                          castingTime: "1 standard action", components: "V, S, M (gold dust worth 50 gp)",
                          range: "30 ft.", area: "30-ft.-radius emanation centered on you", targets: "",
                          duration: "concentration + 1 round/level",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "You amplify the effect of magic associated with your spirit and wandering spirit (any spells on the spirit magic spell lists for these spirits).",
                          desc: "You amplify the effect of magic associated with your spirit and wandering spirit (any spells on the spirit magic spell lists for these spirits). When allies within the area cast these spells, they gain a +2 bonus on caster level checks and concentration checks, as well as to spell DCs. This bonus is a sacred bonus if you are good-aligned or a profane bonus if you are evil-aligned; if you are neither good nor evil, you can choose what type of bonus the spell grants when you cast it.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Gentle Breeze", school: "Evocation", levels: "arcanist 1, druid 1, hunter 1, shaman 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature or object",
                          duration: "1 hour (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You create a light wind that blows only against the target, from a direction of your choice.",
                          desc: "You create a light wind that blows only against the target, from a direction of your choice. The breeze grants the target a +2 circumstance bonus on saves against very hot conditions, severe heat, and saves against clouds, vapors, and gases (such as cloudkill ,",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Glue Seal", school: "Conjuration (Creation)", levels: "arcanist 1, bard 1, magus 1, psychic 1, skald 1, sorcerer 1, summoner 1, summoner (unchained) 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one object or one 5-ft. square",
                          duration: "1 minute/level (D)",
                          savingThrow: "see text;", sr: false,
                          summary: "You cover a solid surface with a layer of sticky glue. Anyone in the area when the spell is cast must attempt a Reflex save.",
                          desc: "You cover a solid surface with a layer of sticky glue. Anyone in the area when the spell is cast must attempt a Reflex save. Those who fail become entangled, but can break free by succeeding at a combat maneuver check or an Escape Artist check as a standard action against the DC of this spell. The area of the spell is considered difficult terrain. A creature moving through the glue must succeed at a combat maneuver check or an Escape Artist check as part of its move action (DC = the spell’s DC). Creatures that fail lose their movement and become entangled in the first square they enter. The spell can also be used to create a sticky coating on an item. A creature holding a targeted item can attempt a Reflex saving throw against the spell’s DC. If the initial saving throw succeeds, the item is unaffected. If it fails, the item is stuck in place. If an affected item is connected to another item (such as a sword in a sheath or a cork in a potion bottle), it cannot be separated from the other item unless the creature succeeds at a combat maneuver check or a Strength check as a move action to free it (DC = the spell’s DC). A creature must succeed at saving throw each time it attempts to use the sticky item; otherwise, the item becomes stuck to the creature. Sticky armor or clothing imposes a –10 circumstance penalty on Escape Artist checks and combat maneuver checks to escape a grapple attempted by the wearer, as well as to the wearer’s CMD to avoid being grappled.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Guardian of Faith", school: "Abjuration", levels: "cleric 4, oracle 4, paladin 4, warpriest 4",
                          castingTime: "1 standard action", components: "V, S, M (parchment with a holy text written on it)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one ally",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "The target gains the benefit of shield of faith and your choice of",
                          desc: "The target gains the benefit of shield of faith and your choice of",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Heart of the Metal", school: "Transmutation", levels: "arcanist 3, magus 3, occultist 3, redmantisassassin 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a chunk of adamantine worth 100 gp, or a chunk of cold iron or silver worth 20 gp)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one weapon per level",
                          duration: "1 minute/level (see text)",
                          savingThrow: "none;", sr: false,
                          summary: "You lend the nature of adamantine, cold iron, or silver, depending on which component you used, to the targeted weapons, with the following effects: Adamantine : The weapons overcome DR/adamantine…",
                          desc: "You lend the nature of adamantine, cold iron, or silver, depending on which component you used, to the targeted weapons, with the following effects: Adamantine : The weapons overcome DR/adamantine and ignore hardness less than 20.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Heightened Awareness", school: "Divination", levels: "alchemist 1, arcanist 1, bard 1, druid 1, hunter 1, inquisitor 1, investigator 1, medium 1, mesmerist 1, occultist 1, psychic 1, ranger 1, shaman 1, skald 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, M/DF (a coffee bean)",
                          range: "personal", area: "", targets: "you",
                          duration: "10 minutes/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "You enter a heightened state of awareness that allows you to notice more about your surroundings and recall information effortlessly.",
                          desc: "You enter a heightened state of awareness that allows you to notice more about your surroundings and recall information effortlessly. You gain a +2 competence bonus on Perception checks and on all Knowledge checks that you are trained in. If this spell is active when you have to make an initiative check, you can instantly dismiss this spell and gain a +4 bonus on that check.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Heightened Reflexes", school: "Transmutation", levels: "bard 2, skald 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "30 ft.", area: "allies within a 30-ft.-radius burst centered on you", targets: "",
                          duration: "1 minute/level or until discharged",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You grant each of your allies within the area a +10 competence bonus on a single Reflex saving throw. Each ally must decide whether to use the bonus before making the roll to which it applies.",
                          desc: "You grant each of your allies within the area a +10 competence bonus on a single Reflex saving throw. Each ally must decide whether to use the bonus before making the roll to which it applies. When an ally uses the bonus, the spell ends for that individual.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hex Glyph", school: "Abjuration", levels: "shaman 3, witch 3",
                          castingTime: "10 minutes", components: "V, S, M (powdered diamond worth 200 gp)",
                          range: "touch", area: "", targets: "or Area object touched or up to 5 sq. ft./level",
                          duration: "permanent until discharged (D)",
                          savingThrow: "see text;", sr: true,
                          summary: "This spell functions like the spell glyph version of glyph of warding , except you can store a hex you know (but not a major hex or a grand hex) instead of a spell.",
                          desc: "This spell functions like the spell glyph version of glyph of warding , except you can store a hex you know (but not a major hex or a grand hex) instead of a spell. If the hex has a target, it targets the intruder. If the hex has an area or an amorphous effect, the area or effect is centered on the intruder. The triggered hex uses this spell’s caster level and DC.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hex Glyph, Greater", school: "Abjuration", levels: "shaman 3, witch 3",
                          castingTime: "10 minutes", components: "V, S, M (powdered diamond worth 200 gp)",
                          range: "touch", area: "", targets: "or Area object touched or up to 5 sq. ft./level",
                          duration: "permanent until discharged (D)",
                          savingThrow: "see text;", sr: true,
                          summary: "This spell functions as hex glyph , except you can store a hex or a major hex (but not a grand hex).",
                          desc: "This spell functions as hex glyph , except you can store a hex or a major hex (but not a grand hex). You trace the glyph with incense, which must first be sprinkled with powdered diamond (as noted in the material line).",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hex Vulnerability", school: "Necromancy", levels: "shaman 1, witch 1",
                          castingTime: "1 standard action", components: "V, S, M (a drop of your blood)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "The targeted creature becomes susceptible to a repeat use of your harmful hexes, even if you could not otherwise target that creature with a particular hex for a certain time period.",
                          desc: "The targeted creature becomes susceptible to a repeat use of your harmful hexes, even if you could not otherwise target that creature with a particular hex for a certain time period. For example, normally after you target a creature with a charm hex, you cannot target it again for 1 day. But after casting this spell on a creature, you could try the charm hex repeatedly as long as the spell persists. The end of this spell has no effect on any active or ongoing hex on a creature. For example, if the creature failed its save against a second use of your charm hex, it remains charmed for the normal duration, even if the spell expires before the hex does. Each subsequent casting of this spell on a target within a 24-hour period gives the target a +4 bonus on its save against the spell and imposes a –4 penalty on your caster level check to overcome the target's spell resistance with this spell.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Holy Ice Weapon", school: "Transmutation", levels: "cleric 2, inquisitor 2, oracle 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S, M (a flask of holy water, or 5 pounds of powdered silver worth 25 gp)",
                          range: "0 ft.", area: "one ice weapon", targets: "",
                          duration: "1 minute/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You create a masterwork weapon that has the qualities of ice and holy water. This weapon must be a simple weapon or your deity’s favored weapon.",
                          desc: "You create a masterwork weapon that has the qualities of ice and holy water. This weapon must be a simple weapon or your deity’s favored weapon. The weapon deals normal damage for a weapon of that type, plus 1 point of cold damage per caster level (maximum 10). In addition, any creature struck by the weapon is also hit by holy water, dealing 1d4 points of damage if the creature is susceptible to holy water. If the weapon leaves your hands for more than 1 round, it melts and the spell ends. At caster level 6th, the weapon gains the returning weapon special ability when thrown, melting away after an attack and re-forming in your hand just before your next turn.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Investigative Mind", school: "Enchantment (Compulsion)", levels: "alchemist 2, arcanist 2, bard 2, investigator 2, medium 2, mesmerist 2, occultist 2, psychic 2, skald 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "10 minutes/level or until discharged",
                          savingThrow: "None", sr: false,
                          summary: "Your mind is able to correlate information effectively. When attempting an Appraise, Knowledge, Linguistics, or Spellcraft check, you can roll twice and take the higher result.",
                          desc: "Your mind is able to correlate information effectively. When attempting an Appraise, Knowledge, Linguistics, or Spellcraft check, you can roll twice and take the higher result. If you have an ability that allows you to roll twice, you cannot use that ability and this benefit on the same roll. The spell is discharged once you have used its benefit a number of times equal to your caster level.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Invisibility Alarm", school: "Abjuration", levels: "alchemist 1, arcanist 1, bard 1, hunter 1, inquisitor 1, investigator 1, psychic 1, ranger 1, skald 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, F/DF (a tiny bell and a piece of very fine silver wire)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "20-ft.-radius emanation centered on a point in space", targets: "",
                          duration: "10 minutes/level",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as alarm , except it is triggered only by invisible creatures entering or leaving the warded area.",
                          desc: "This spell functions as alarm , except it is triggered only by invisible creatures entering or leaving the warded area. The spell has a different mental alarm depending on whether the invisible creature is entering or leaving the area. This spell does not aid you in sensing or pinpointing the location of an invisible creature within the spell’s area.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Life Pact", school: "Necromancy", levels: "arcanist 2, cleric 2, oracle 2, psychic 2, shaman 2, sorcerer 2, spiritualist 2, warpriest 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, DF/M (a drop of blood from each target)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one willing living creature/level, no two of which can be more than 30 ft. apart",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You bind the life forces of the targets into a mystical pact. If any target is reduced to fewer than 0 hit points, that target automatically triggers the power of the pact.",
                          desc: "You bind the life forces of the targets into a mystical pact. If any target is reduced to fewer than 0 hit points, that target automatically triggers the power of the pact. The triggering target drains 1 hit point from all other targets who have at least 1 hit point and are within 30 feet of the triggering target; these hit points are applied to the triggering target as magical healing. This healing can prevent the triggering creature from dying, if the attack would cause the target’s to have an amount of negative hit points equal to its Constitution score. This healing cannot raise the triggering creature above 1 hit point; any excess hit points drained from other targets are wasted. The pact can be triggered once per round. It’s not triggered by death effects or effects that do not deal hit point damage.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Line in the Sand", school: "Abjuration", levels: "arcanist 1, bloodrager 1, magus 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "5 ft.", area: "5-ft. burst centered on you", targets: "",
                          duration: "1 round/level",
                          savingThrow: "none;", sr: false,
                          summary: "You create a glowing crimson line around the area. Against creatures in the area, you can attempt a number of additional attacks of opportunity per round equal to your spellcasting ability score…",
                          desc: "You create a glowing crimson line around the area. Against creatures in the area, you can attempt a number of additional attacks of opportunity per round equal to your spellcasting ability score modifier (Intelligence for magi and wizards, Charisma for bloodragers and sorcerers), although this does not allow you to make more than one attack against a creature per action that provokes.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Long Arm", school: "Transmutation", levels: "alchemist 1, arcanist 1, bloodrager 1, investigator 1, magus 1, medium 1, psychic 1, redmantisassassin 1, sorcerer 1, summoner 1, summoner (unchained) 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "Your arms temporarily grow in length, increasing your reach with those limbs by 5 feet.",
                          desc: "Your arms temporarily grow in length, increasing your reach with those limbs by 5 feet.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Magnifying Chime", school: "Transmutation", levels: "bard 6, skald 6",
                          castingTime: "10 minutes", components: "V, S",
                          range: "touch", area: "disruptive vibrations", targets: "one unattended object or object in your possession",
                          duration: "1 round/level",
                          savingThrow: "Fortitude half (see text);", sr: true,
                          summary: "You cause the touched object to vibrate and release sonic energy once per round as a loud, dangerous chime. The sound grows in strength as time passes.",
                          desc: "You cause the touched object to vibrate and release sonic energy once per round as a loud, dangerous chime. The sound grows in strength as time passes. On your turn in the round after you cast the spell, the chime deals 1d6 points of sonic damage to all creatures and objects within 5 feet of the target. Each round after that, the damage increases by 1d6 and reaches 5 feet farther in all directions. A successful Fortitude save halves the damage for that round only.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mantle of Calm", school: "Enchantment (Compulsion)", levels: "cleric 3, inquisitor 3, mesmerist 2, oracle 3, paladin 3, psychic 3, shaman 3, warpriest 3",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level (D)",
                          savingThrow: "none and Will negates (see text);", sr: true,
                          summary: "You surround yourself with a mantle of calm serenity. You take a –2 penalty on attack rolls, and opponents gain a +2 bonus on saving throws against spells you cast.",
                          desc: "You surround yourself with a mantle of calm serenity. You take a –2 penalty on attack rolls, and opponents gain a +2 bonus on saving throws against spells you cast. Any creature affected by a rage effect (barbarian’s rage, bloodrager’s bloodrage, blood rage monster ability, rage spell, skald’s inspired rage raging song, and so on) that strikes you with a melee attack must attempt at a Will saving throw, without the rage effect’s bonus to Will; failure means the rage effect ends (as if it were dispelled or the creature voluntarily ended it, as appropriate). If you become affected by a rage effect while this spell is active, this spell immediately ends. If your rage effect comes from a skald’s raging song, then it ends only for you, and you cannot re-accept the effects of the song.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Marching Chant", school: "Transmutation", levels: "bard 2, cleric 2, oracle 2, skald 2, warpriest 2",
                          castingTime: "1 minute", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature/level",
                          duration: "concentration",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You invigorate your allies, who can hustle ( Core Rulebook 170) as long as you continue to sing or chant (which requires your concentration).",
                          desc: "You invigorate your allies, who can hustle ( Core Rulebook 170) as long as you continue to sing or chant (which requires your concentration). This movement counts as a walk (not a hustle) for the purpose of accruing nonlethal damage and fatigue. You can concentrate on this spell and hustle at the same time.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mark of Obvious Ethics", school: "Divination", levels: "cleric 3, oracle 3, warpriest 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 day/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You mark one creature with a glowing sigil. The target’s alignment must be opposite yours on at least one alignment axis—if you are neutral with no other alignment components, the target must have an…",
                          desc: "You mark one creature with a glowing sigil. The target’s alignment must be opposite yours on at least one alignment axis—if you are neutral with no other alignment components, the target must have an alignment with no neutral component. Any creature that sees the target can attempt a DC 15 Knowledge (religion) check to discern the target’s alignment, even if the mark is covered. You are aware of the direction and distance to the target as long as it remains within 100 miles of you and on the same plane.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Memorize Page", school: "Enchantment", levels: "arcanist 1, bard 1, mesmerist 1, occultist 1, psychic 1, skald 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "10 minutes", components: "V, S, F (the page to be memorized)",
                          range: "touch", area: "", targets: "one living creature",
                          duration: "instantaneous",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The target gains a perfect memory of the page you used as a focus component.",
                          desc: "The target gains a perfect memory of the page you used as a focus component. The target can visualize this page as easily as looking at it in person, including minute details visible to close scrutiny by the naked eye. The memory of the page includes text and images, such as a drawing or a map. Someone unfamiliar with the language on the page (or even an illiterate person) could relay what is written simply by copying the shapes of the letters so another person can read them. The maximum number of pages that a particular target can memorize through repeated castings of this spell is equal to the target’s Intelligence modifier (minimum 1); any attempts beyond this limit have no effect, although the target’s memory of a page could be erased (using modify memory or a similar effect) to effectively make room for a different one. A creature that memorizes magical writing (such as a scroll or a page from a spellbook) cannot borrow, duplicate, or retain any of the magic in the writing. However, this would allow a wizard to copy a spell into his spellbook so he could prepare the spell from his book (assuming the spell takes up only one page in a spellbook).",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mindlocked Messenger", school: "Enchantment (Compulsion)", levels: "arcanist 3, bard 2, mesmerist 2, psychic 3, shaman 3, skald 2, sorcerer 3, spiritualist 3, witch 3, wizard 3",
                          castingTime: "10 minutes", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one willing living creature",
                          duration: "permanent until discharged (see text)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You speak a short message (up to 10 words per caster level), implanting both it and the identity of the message’s intended recipient in the mind of a willing creature.",
                          desc: "You speak a short message (up to 10 words per caster level), implanting both it and the identity of the message’s intended recipient in the mind of a willing creature. The creature is aware of the message and who the recipient is. Any attempt to speak, write, or otherwise communicate the message to anyone other than its intended recipient causes the target to forget the message for 1d6 minutes. Attempts to read the target’s mind (such as with detect thoughts ) or to force the target to reveal the message (such as with torture or magical compulsion) likewise cause temporary amnesia regarding the message. The target can communicate the message only to someone it believes is the intended recipient, which means that disguises, illusions, and polymorph effects might fool the target into delivering the message. Once the target communicates the message, the message is permanently erased from the target’s memory.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mirror Hideaway", school: "Transmutation", levels: "arcanist 2, occultist 2, psychic 2, redmantisassassin 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a glass or metal marble and a twisted loop of parchment)",
                          range: "touch", area: "", targets: "one mirror",
                          duration: "1 hour/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You transform a mirror into a portal to an extradimensional space. The space can hold as many as eight Medium creatures.",
                          desc: "You transform a mirror into a portal to an extradimensional space. The space can hold as many as eight Medium creatures. Creatures that enter this space are hidden and beyond the reach of spells (including divinations), unless those spells work across planes. If the mirror is covered (such as by a cloth, or by being placed face down or against a wall), the portal becomes inactive. If the mirror is broken or moved more than 5 feet from where it was when you cast the spell, the spell ends; any creatures within the extradimensional space are expelled from it (see below) and become nauseated for 1d6 rounds. Spells cannot be cast across the extradimensional interface, nor can area effects cross it. Those in the space can see and hear through it as if looking through an open window the same size as the mirror. Creatures outside the extradimensional space see only what is normally reflected in the mirror. Any creature in the space can make itself visible in the reflection of the mirror for 1 round at a time, however creatures outside the space cannot hear any sounds that originate inside. Anything inside the extradimensional space is expelled when the spell ends (even if the mirror is covered). Only one creature at a time can enter the mirror, and creatures can enter only if they can fit through an opening the same size as the mirror. For example, a hand mirror isn’t big enough for a Small or larger creature to use it as a portal. Objects can enter the extradimensional space only if brought by a creature able to fully pass through the mirror.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mirror Polish", school: "Transmutation", levels: "arcanist 1, occultist 1, redmantisassassin 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M (a soft cloth)",
                          range: "touch", area: "", targets: "one metal item of up to 1 sq. ft.",
                          duration: "instantaneous",
                          savingThrow: "yes (object);", sr: true,
                          summary: "You polish a metal item until it is reflective enough to be used as a mirror. This does not prevent the item from later damage or corrosion that would ruin the mirrored surface.",
                          desc: "You polish a metal item until it is reflective enough to be used as a mirror. This does not prevent the item from later damage or corrosion that would ruin the mirrored surface. The spell can be cast only on a metal item with a fairly smooth and contiguous surface, such as a breastplate, a helm, a shield, or a sword, but not a mace, chainmail, or scale mail.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mirror Transport", school: "Transmutation", levels: "arcanist 4, occultist 4, psychic 4, redmantisassassin 4, sorcerer 4, spiritualist 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (a glass or metal marble and a twisted loop of parchment)",
                          range: "touch", area: "", targets: "one mirror",
                          duration: "1 hour/level (D)",
                          savingThrow: "yes (object);", sr: true,
                          summary: "This spell functions as mirror hideaway , except any creature that enters the target mirror can spend a swift action to exit through another mirror within 500 feet as if using",
                          desc: "This spell functions as mirror hideaway , except any creature that enters the target mirror can spend a swift action to exit through another mirror within 500 feet as if using",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Molten Orb", school: "Evocation", levels: "arcanist 2, bloodrager 2, magus 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "ranged attack", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: true,
                          summary: "You create a fist-sized, red-hot ball of molten metal that you immediately hurl as a splash weapon. A direct hit deals 2d6 points of fire damage.",
                          desc: "You create a fist-sized, red-hot ball of molten metal that you immediately hurl as a splash weapon. A direct hit deals 2d6 points of fire damage. Every creature within 5 feet of where the ball hits takes 1d6 points of fire damage from the splash (Reflex half). Each of these creatures takes an additional 1d6 points of fire damage on its turn for the next 1d3 rounds, unless it is cooled off (with water, snow, or any effect that deals 5 or more points of cold damage).",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Monkey Fish", school: "Transmutation", levels: "alchemist 1, arcanist 1, druid 1, hunter 1, investigator 1, magus 1, psychic 1, redmantisassassin 1, shaman 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "Your hands and feet alter to make you better at climbing and swimming. You gain a 10 foot climb speed and swim speed.",
                          desc: "Your hands and feet alter to make you better at climbing and swimming. You gain a 10 foot climb speed and swim speed. This spell has no effect if you are wearing medium or heavy armor or carrying a medium or heavy load.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Muffle Sound", school: "Illusion (Glamer)", levels: "bard 2, cleric 2, inquisitor 2, mesmerist 2, oracle 2, psychic 2, skald 2, warpriest 2",
                          castingTime: "1 round", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "1 ally/level",
                          duration: "1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "You suppress sounds made by the targets, granting them a +4 bonus on Stealth checks.",
                          desc: "You suppress sounds made by the targets, granting them a +4 bonus on Stealth checks. The targets have a 20% chance of spell failure when casting spells with verbal components or using abilities that have audible components (such as some bardic performances). This spell does not hamper the targets’ ability to hear other sounds and provides no protection against language-dependent or sonic spells and effects.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Nauseating Dart", school: "Conjuration (Creation)", levels: "druid 1, hunter 1, witch 1",
                          castingTime: "1 standard action", components: "S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one poisonous stinger", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Fortitude partial (see text);", sr: false,
                          summary: "You spit a poisonous stinger around the size of a quill at a creature within range, as though you had fired a dart from a blowgun. You must succeed at a ranged attack to hit your target.",
                          desc: "You spit a poisonous stinger around the size of a quill at a creature within range, as though you had fired a dart from a blowgun. You must succeed at a ranged attack to hit your target. The stinger deals 1d2 points of piercing damage and poisons the target, causing it to become nauseated for 1 round unless it succeeds at a Fortitude save.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Nauseating Trail", school: "Conjuration (Creation)", levels: "alchemist 3, arcanist 3, druid 3, investigator 3, magus 3, shaman 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a rotten egg or cabbage leaves)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one willing creature",
                          duration: "1 round/level",
                          savingThrow: "none and Fortitude negates (see text);", sr: false,
                          summary: "The target exudes stinking vapors that fill its space. The vapors do not obscure sight, but it nauseates creatures as stinking cloud . The target is immune to these vapors.",
                          desc: "The target exudes stinking vapors that fill its space. The vapors do not obscure sight, but it nauseates creatures as stinking cloud . The target is immune to these vapors. These vapors persist as the creature moves, filling every square it passes through until it has filled a number of squares equal to 4 × your caster level—if you move through more squares than that, the squares over that amount at not filled with the vapors. Each creature that enters or ends its turn in the area filled with these vapors must succeed at a Fortitude save or become nauseated as long as it remains in the square and for 1d4+1 rounds after it leaves.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Path of Glory", school: "Conjuration (Healing)", levels: "bard 2, cleric 2, oracle 2, skald 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch (see text)", area: "four 5-ft. squares/level (see text)", targets: "",
                          duration: "1 round/level",
                          savingThrow: "none;", sr: false,
                          summary: "You cause four 5-foot squares (one of which must be your space) to glow with dim illumination.",
                          desc: "You cause four 5-foot squares (one of which must be your space) to glow with dim illumination. Starting on your next turn, as a swift action you can extend the glowing area by an additional four 5-foot squares; each new square must be adjacent to a square that was previously glowing. Allies that end their turns on a glowing square (including one who falls unconscious in the square) are healed of 1 point of damage. Path of Glory, Greater",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Path of Glory, Greater", school: "Conjuration (Healing)", levels: "bard 2, cleric 2, oracle 2, skald 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch (see text)", area: "four 5-ft. squares/level (see text)", targets: "",
                          duration: "1 round/level",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as path of glory , except as noted above, and a square provides 5 points of healing instead of 1.",
                          desc: "This spell functions as path of glory , except as noted above, and a square provides 5 points of healing instead of 1.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Persistent Vigor", school: "Transmutation", levels: "alchemist 4, cleric 4, inquisitor 4, investigator 4, oracle 4, psychic 4, shaman 4, warpriest 4, witch 4",
                          castingTime: "1 standard action", components: "V, S, M/DF (ginseng root shavings)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "You are filled with a persistent vigor. You gain fast healing 2 and are immune to bleed effects as well as the sickened and nauseated conditions.",
                          desc: "You are filled with a persistent vigor. You gain fast healing 2 and are immune to bleed effects as well as the sickened and nauseated conditions. When you succeed at a saving throw against a disease or poison effect, that disease or poison effect ends (as if you had succeeded at enough saving throws to cure that effect). If you fail a saving throw against a disease or poison effect, you can instantly dismiss this spell to reroll that saving throw with a +4 bonus; you must take the result of this reroll, even if it is lower.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Phantom Blood", school: "Necromancy", levels: "alchemist 1, arcanist 1, bloodrager 1, investigator 1, magus 1, sorcerer 1, spiritualist 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "10 minutes/level",
                          savingThrow: "None", sr: false,
                          summary: "You bolster your life energy. If the loss of hit points at the end of a temporary effect that modifies your Constitution (such as barbarian’s rage or bloodrager’s bloodrage) would cause you to become…",
                          desc: "You bolster your life energy. If the loss of hit points at the end of a temporary effect that modifies your Constitution (such as barbarian’s rage or bloodrager’s bloodrage) would cause you to become unconscious or kill you, you gain temporary hit points equal to your caster level (maximum 10). Each casting of this spell grants you temporary hit points only once.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Pierce Disguise", school: "Divination", levels: "arcanist 3, bard 3, medium 3, occultist 3, psychic 3, shaman 3, skald 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "You see through magical disguises (whether illusions or polymorph effects) of the same spell level or lower. This allows you to see the true forms of creatures magically disguised by such methods.",
                          desc: "You see through magical disguises (whether illusions or polymorph effects) of the same spell level or lower. This allows you to see the true forms of creatures magically disguised by such methods. The true form appears as a ghostly overlay on the creature’s disguised appearance.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Planeslayer's Call", school: "Enchantment (Compulsion)", levels: "cleric 5, inquisitor 4, occultist 4, oracle 5, paladin 4, warpriest 5",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "20 ft.", area: "", targets: "allies within a 20-ft.-radius burst centered on you",
                          duration: "1 round/level",
                          savingThrow: "none;", sr: true,
                          summary: "The magic of your allies in the area becomes more potent against certain outsiders. Chose one alignment subtype (chaotic, evil, good, or lawful).",
                          desc: "The magic of your allies in the area becomes more potent against certain outsiders. Chose one alignment subtype (chaotic, evil, good, or lawful). Against outsiders with that alignment component or subtype, your allies in the area gain a +2 bonus on caster level checks to overcome spell resistance, and their spells ignore the first 10 points of energy resistance (but not energy immunity). This spell gains the alignment descriptor that is opposite the outsider alignment chosen. For example, if you choose for the spell to affect evil outsiders, then this spell has the good descriptor.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Polymorph Familiar", school: "Transmutation (Polymorph)", levels: "arcanist 3, redmantisassassin 3, shaman 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "your familiar",
                          duration: "1 minute/level (D)",
                          savingThrow: "none;", sr: true,
                          summary: "This spell functions as beast shape I , except it grants your familiar the form of any Small animal.",
                          desc: "This spell functions as beast shape I , except it grants your familiar the form of any Small animal. Your familiar retains all of its special abilities and continues to grant you the special ability associated with its normal shape (such as a bat familiar’s bonus on Fly checks). At caster level 7th, this spell functions as",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Refine Improvised Weapon", school: "Transmutation", levels: "arcanist 1, cleric 1, hunter 1, inquisitor 1, occultist 1, oracle 1, ranger 1, redmantisassassin 1, sorcerer 1, warpriest 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "one improvised weapon",
                          duration: "1 hour/level (D)",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "You transform an improvised weapon into an equivalent simple or martial weapon of masterwork quality. This effect does not alter the weapon’s shape or appearance in any way.",
                          desc: "You transform an improvised weapon into an equivalent simple or martial weapon of masterwork quality. This effect does not alter the weapon’s shape or appearance in any way. For example, if this spell is cast on a chair leg, a butter knife, or a pitchfork, the items function as a masterwork club, a masterwork dagger, or a masterwork trident, respectively, but the items look no different than they did before the spell was cast.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Repair Undead", school: "Necromancy", levels: "arcanist 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "one undead creature touched (see text)",
                          duration: "instantaneous",
                          savingThrow: "Will half (harmless);", sr: true,
                          summary: "When you touch an undead creature, you channel negative energy that heals 1d8 points of damage + 1 point per caster level (maximum +5).",
                          desc: "When you touch an undead creature, you channel negative energy that heals 1d8 points of damage + 1 point per caster level (maximum +5). This spell has no effect on living creatures, except those that are healed by negative energy are also healed by the spell.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Repair Undead, Mass", school: "Necromancy", levels: "arcanist 5, sorcerer 5, spiritualist 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one undead creature/level, no two of which can be more than 30 ft. apart",
                          duration: "instantaneous",
                          savingThrow: "Will half (harmless);", sr: true,
                          summary: "This spell functions as repair undead , except as noted above, and it cures 1d8 points of damage + 1 point per caster level (maximum +20) on each selected creature.",
                          desc: "This spell functions as repair undead , except as noted above, and it cures 1d8 points of damage + 1 point per caster level (maximum +20) on each selected creature.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("River Whip", school: "Conjuration (Creation)", levels: "arcanist 2, magus 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "0 ft.", area: "whip of water", targets: "",
                          duration: "1 minute/level (D) or until discharged (see text)",
                          savingThrow: "none;", sr: false,
                          summary: "You create a coil of flowing fresh water, functioning a whip appropriate for your size, except you make a melee touch attack instead of a regular attack.",
                          desc: "You create a coil of flowing fresh water, functioning a whip appropriate for your size, except you make a melee touch attack instead of a regular attack. Anything you strike with the whip takes damage and is doused with 1 pint of water. A creature with the fire subtype takes an additional 1d6 points of damage. If the target is on fire, it gains a +2 bonus on its next saving throw to extinguish the flames. After you have successfully used the whip to hit a creature a number of times equal to your caster level, the water is expended and the spell is discharged. The water created by this spell is otherwise identical to that produced by create water .",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sense Spirit Magic", school: "Divination", levels: "shaman 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "24 hours",
                          savingThrow: "none;", sr: false,
                          summary: "You gain greater sensitivity to magic associated with your primary spirit and wandering spirits (any spells on the spirit magic spell lists for these spirits, as well as spell-like abilities that…",
                          desc: "You gain greater sensitivity to magic associated with your primary spirit and wandering spirits (any spells on the spirit magic spell lists for these spirits, as well as spell-like abilities that duplicate the effects of those spells). You gain a +10 circumstance bonus on Spellcraft checks to identify these spells if they are cast within the area, and a +2 circumstance bonus on saving throws to resist the effects of such spells. If any of these spells require an attack roll, you are never considered flat-footed against such attacks.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Shield Companion (ACG)", school: "Abjuration", levels: "arcanist 3, hunter 2, paladin 2, ranger 2, shaman 2, sorcerer 3, summoner 3, summoner (unchained) 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "your companion creature",
                          duration: "1 hour/level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell creates a special mystical connection between you and your companion creature—animal companion, bonded mount, eidolon, or familiar—which allows you to transfer its wounds to you.",
                          desc: "This spell creates a special mystical connection between you and your companion creature—animal companion, bonded mount, eidolon, or familiar—which allows you to transfer its wounds to you. The creature gains a +1 deflection bonus to AC and a +1 resistance bonus on saves. As an immediate action when your companion takes damage, you can take that damage yourself to prevent your companion from being harmed (similar to shield other , except the damage is not split between you and the target). Forms of harm that do not involve the loss of hit points, such as charm effects, temporary ability damage, level drain, and death effects, are not affected. If the creature suffers a reduction of hit points from a lowered Constitution score, you cannot take that damage on behalf of your companion creature because it is not hit point damage. When the spell ends, damage directed to you by the spell is not reassigned to the subject. If you and your companion move out of range of each other, the spell ends.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Shield of Fortification", school: "Abjuration", levels: "cleric 2, inquisitor 1, oracle 2, paladin 1, psychic 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 minute/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "You create a magical barrier that protects a target’s vital areas.",
                          desc: "You create a magical barrier that protects a target’s vital areas. When the target is struck by a critical hit or a sneak attack, there is a 25% chance that the critical hit or sneak attack is negated and damage is instead rolled normally. This benefit does not stack with other effects that can turn critical hits or sneak attacks into normal attacks, such as the fortification armor special ability. Shield of Fortification, Greater",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Shield of Fortification, Greater", school: "Abjuration", levels: "cleric 2, inquisitor 1, oracle 2, paladin 1, psychic 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 minute/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "This spell functions as shield of fortification , except there is a 50% chance that the critical hit or sneak attack is negated and damage is instead be rolled normally, rather than 25%.",
                          desc: "This spell functions as shield of fortification , except there is a 50% chance that the critical hit or sneak attack is negated and damage is instead be rolled normally, rather than 25%.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Silent Table", school: "Illusion (Glamer)", levels: "arcanist 2, bard 2, cleric 2, mesmerist 2, oracle 2, psychic 2, redmantisassassin 2, skald 2, sorcerer 2, warpriest 2, witch 2, wizard 2",
                          castingTime: "1 round", components: "V",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "5-ft.-diameter emanation centered on an object or a point in space", targets: "",
                          duration: "1 minute/level (D)",
                          savingThrow: "none (object);", sr: false,
                          summary: "You protect an area against casual eavesdropping. Sounds and sonic effects that originate inside the area are muffled for anyone outside the area; Perception DCs to hear or understand sounds leaving…",
                          desc: "You protect an area against casual eavesdropping. Sounds and sonic effects that originate inside the area are muffled for anyone outside the area; Perception DCs to hear or understand sounds leaving the area increase by 20, and any saving throw DCs of these effects decrease by 2. The spell does not affect sounds that enter the area or the Perception checks of creatures inside it.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Silver Darts", school: "Conjuration (Creation)", levels: "arcanist 3, bloodrager 3, magus 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a silver needle)",
                          range: "15 ft.", area: "cone-shaped burst", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Reflex half;", sr: true,
                          summary: "A cone of silver darts springs from your hand. These darts act as a silver weapon that deals 1d6 points of piercing damage per caster level (maximum 10d6).",
                          desc: "A cone of silver darts springs from your hand. These darts act as a silver weapon that deals 1d6 points of piercing damage per caster level (maximum 10d6). Any creature with an armor bonus greater than +4 or a natural armor bonus greater than +4 takes 50% less damage.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Slowing Mud", school: "Conjuration (Creation)", levels: "druid 4, hunter 4, shaman 4",
                          castingTime: "1 standard action", components: "V, S, M (earth and water)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature/level, no two of which can be more than 30 ft. apart",
                          duration: "1 round/level (see text)",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "You coat the targets in thick, sticky mud. The mud acts as a slow spell and also blinds the targets.",
                          desc: "You coat the targets in thick, sticky mud. The mud acts as a slow spell and also blinds the targets. A creature can use a standard action to remove the mud from its eyes or the eyes of an adjacent creature, ending the blinded condition for that individual. Removing enough mud to end the slow effect is a full-round action. Jumping into a lake or being subject to an effect that creates a lot of water (such as",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sonic Form", school: "Transmutation (Polymorph)", levels: "alchemist 6, arcanist 6, bard 6, investigator 6, psychic 6, skald 6, sorcerer 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S, M (a pinch of dust gathered from a gravestone or a sacred shrine)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "Upon casting this spell, you keep your relative shape, but you and your equipment are transformed into semisolid sound.",
                          desc: "Upon casting this spell, you keep your relative shape, but you and your equipment are transformed into semisolid sound. While in this sonic form, you take no penalties for squeezing, and you can move through spaces without penalty as if you were a creature three size categories smaller. You can make a melee touch attack once per round that deals 1d6 points of sonic damage + 1 point per caster level. You are considered incorporeal (although you cannot move through solid objects). Any nonmagical attacks you make deal half damage. Magical attacks are unaffected, and you can use your magic items and other equipment as normal. You cannot enter an area of silence. If you are in the area of a silence spell, you take 1d6 points of sonic damage per caster level of the",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sonic Scream", school: "Evocation", levels: "arcanist 2, bard 2, bloodrager 2, magus 2, psychic 2, skald 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "15 ft.", area: "cone-shaped burst", targets: "",
                          duration: "1 round/level or until discharged (see text)",
                          savingThrow: "Reflex half (see text);", sr: true,
                          summary: "Up to three times during this spell’s duration, you can emit a cone of powerful sound as a standard action. The first cone deals 4d4 points of sonic damage to every creature in the area.",
                          desc: "Up to three times during this spell’s duration, you can emit a cone of powerful sound as a standard action. The first cone deals 4d4 points of sonic damage to every creature in the area. The second deals 2d4 points of sonic damage to every creature in the area. The third deals 1d4 points of sonic damage to every creature in the area. A successful Reflex save against a cone halves that cone’s damage. After the third cone of sound, the spell ends. Until you use all three cones, you cannot use your voice for any magic-related purpose (bardic performance, verbal spellcasting, and so on), and cannot speak at any volume lower than a shout.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Speak with Haunt", school: "Necromancy", levels: "cleric 4, medium 2, oracle 4, psychic 4, shaman 3, spiritualist 4, warpriest 4, witch 4",
                          castingTime: "10 minutes", components: "V, S, DF",
                          range: "10 ft. (see text)", area: "", targets: "one haunt",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (see text);", sr: false,
                          summary: "You stir a haunt ( Pathfinder RPG GameMastery Guide 242) to a limited sense of awareness and consciousness, allowing it to answer questions.",
                          desc: "You stir a haunt ( Pathfinder RPG GameMastery Guide 242) to a limited sense of awareness and consciousness, allowing it to answer questions. The spell’s range must reach any square within 10 feet of the haunt’s area. You must be aware of the haunt prior to casting the spell, and casting the spell does not trigger the haunt. You can ask one question per 2 caster levels. The haunt’s knowledge is limited to what its original creature knew during life, including the languages it spoke. A haunt often remembers the circumstance that led to its existence (though this recollection might be from the original victim’s perspective and therefore not objective), what triggers it, and how it can be laid to rest (destroyed). Answers are brief, cryptic, or repetitive, especially if the haunt is angry and vindictive. If the haunt’s alignment is more than one step away from yours, the haunt can attempt a Will save to resist the spell. A haunt’s Will save modifier is equal to 3 + the haunt’s CR. If the save is successful, the haunt can refuse to answer your questions or attempt to deceive you (using Bluff). A haunt’s Bluff modifier equals its CR (minimum +0) or might be determined by the GM based upon the original victim. The haunt can speak only about what it knew in life and the circumstances by which it became a haunt. It cannot answer any questions that pertain to events that occurred after it was created. A neutral or good haunt might cooperate with similarly aligned creatures in order to end its suffering. If a haunt has been subject to this spell within the past week, a new casting of this spell on it fails. You can cast this on a haunt that has been deceased for any amount of time. Unlike a corpse affected by speak with dead, a haunt wants to express itself, if only to share its pain or to cause mischief.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Spellcrash", school: "Abjuration", levels: "arcanist 4, cleric 4, oracle 4, psychic 4, sorcerer 4, warpriest 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "Will negates; see text;", sr: true,
                          summary: "This spell functions as lesser spellcrash , except that it affects 5th-level or lower prepared spells or spell slots. Spellcrash, Greater",
                          desc: "This spell functions as lesser spellcrash , except that it affects 5th-level or lower prepared spells or spell slots. Spellcrash, Greater",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Spellcrash, Greater", school: "Abjuration", levels: "arcanist 4, cleric 4, oracle 4, psychic 4, sorcerer 4, warpriest 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "Will negates; see text;", sr: true,
                          summary: "This spell functions as lesser spellcrash , except that it affects 7th-level or lower prepared spells or spell slots.",
                          desc: "This spell functions as lesser spellcrash , except that it affects 7th-level or lower prepared spells or spell slots.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Spellcrash, Lesser", school: "Abjuration", levels: "arcanist 4, cleric 4, oracle 4, psychic 4, sorcerer 4, warpriest 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "Will negates; see text;", sr: true,
                          summary: "You create a discordant blast of energy that disrupts the target’s available magic each round at the start of its turn.",
                          desc: "You create a discordant blast of energy that disrupts the target’s available magic each round at the start of its turn. If the target prepares spells, it must choose one of its prepared 3rd-level spells, which is immediately lost; if the target has no 3rd-level spells prepared, it must lose a 2ndlevel spell it has prepared (progressing down to 1st-level spell if it has no 2nd-level spells prepared). If the target is a spontaneous spellcaster, it loses one of its available 3rd-level spell slots; if the target has no available 3rd-level spell slots, it must lose a 2nd-level spell slot (progressing down to 1st-level spell if it has no 2nd-level spell slots available). There is no initial saving throw for this spell, but the target can attempt a Will saving throw each round at the end of its turn. If the target has more than one spellcasting class, choose one at random to be affected. This spell has no effect on spell-like abilities. Any spell or spell slot lost because of this spell is treated as if the caster had failed a concentration check while trying to cast it—the spell or spell slot is wasted and has no effect, but is recovered normally the next time the character prepares spells or regains spell slots.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Stench of Prey", school: "Transmutation", levels: "druid 3, hunter 3, ranger 3, shaman 3",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature (see text)",
                          duration: "1 minute/level",
                          savingThrow: "Fortitude negates (see text);", sr: true,
                          summary: "The target exudes a strong odor that most predators recognize as the scent of helpless prey.",
                          desc: "The target exudes a strong odor that most predators recognize as the scent of helpless prey. The closest 1d4+1 predatory creatures within 30 feet must succeed at a Will save or start attacking the target (animals with the scent ability are affected if within 60 feet). If the predator is an animal, it can be called away from the target by a handler using the “down” trick ( Core Rulebook 97) or any effect that suspends or dispels emotion or rage effects. This spell has no effect on constructs, undead, or creatures with the unnatural aura ability or effects that repel animals.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Stone Discus", school: "Conjuration (Creation)", levels: "arcanist 2, bloodrager 2, druid 2, hunter 2, magus 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a pinch of earth or metal)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one or more stone discuses", targets: "",
                          duration: "Instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "You create a stone discus, which flies at an enemy. You can create one discus, plus one additional discus at 7th and 11th caster levels.",
                          desc: "You create a stone discus, which flies at an enemy. You can create one discus, plus one additional discus at 7th and 11th caster levels. For each discus you create, you decide whether its edge is blunt (and deals bludgeoning damage) or sharp (and deals slashing damage). Each discus requires a ranged attack to hit and deals 4d6 points of damage. The discuses can be launched at more than one target, but all must be aimed at targets within 30 feet of each other and launched simultaneously. At caster level 5th, the discuses count as magic and silver. At caster level 10th, they also count as cold iron. At caster level 15th, they also count as adamantine.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Stricken Heart", school: "Necromancy", levels: "arcanist 2, inquisitor 2, mesmerist 2, psychic 2, shaman 3, sorcerer 2, spiritualist 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: true,
                          summary: "This spell covers your hand with a writhing black aura. As part of casting the spell, you can make a melee touch attack that deals 2d6 points of negative energy damage and causes the target to be…",
                          desc: "This spell covers your hand with a writhing black aura. As part of casting the spell, you can make a melee touch attack that deals 2d6 points of negative energy damage and causes the target to be staggered for 1 round. If the attack is a critical hit, the target is staggered for 1 minute instead. Creatures immune to precision damage are immune to the staggered effect.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Stunning Barrier", school: "Abjuration", levels: "arcanist 1, cleric 1, inquisitor 1, oracle 1, paladin 1, psychic 1, sorcerer 1, warpriest 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level or until discharged",
                          savingThrow: "none and Will negates (see text);", sr: true,
                          summary: "You are closely surrounded by a barely visible magical field. The field provides a +1 deflection bonus to AC and a +1 resistance bonus on saves.",
                          desc: "You are closely surrounded by a barely visible magical field. The field provides a +1 deflection bonus to AC and a +1 resistance bonus on saves. Any creature that strikes you with a melee attack is stunned for 1 round (Will negates). Once the field has stunned an opponent, the spell is discharged. Stunning Barrier, Greater",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Stunning Barrier, Greater", school: "Abjuration", levels: "arcanist 1, cleric 1, inquisitor 1, oracle 1, paladin 1, psychic 1, sorcerer 1, warpriest 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level or until discharged",
                          savingThrow: "none and Will negates (see text);", sr: true,
                          summary: "This spell functions as stunning barrier , except as noted above, and it provides a +2 bonus to AC and on saving throws.",
                          desc: "This spell functions as stunning barrier , except as noted above, and it provides a +2 bonus to AC and on saving throws. It is not discharged until it has stunned a number of creatures equal to your caster level.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sunder Breaker", school: "Abjuration", levels: "arcanist 1, magus 1, psychic 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 minute/level (D) or until discharged",
                          savingThrow: "Will negates (harmless) and see text;", sr: true,
                          summary: "You place an invisible ward upon the target. The next time a creature succeeds at a sunder combat maneuver against the target, the attacker’s weapon takes 1d6 points of damage per caster level…",
                          desc: "You place an invisible ward upon the target. The next time a creature succeeds at a sunder combat maneuver against the target, the attacker’s weapon takes 1d6 points of damage per caster level (maximum 10d6). If the attacker used a natural weapon for the sunder, the attacker takes half this damage. Spell resistance applies to this damage. The attacker can attempt a Fortitude save to halve this damage. The ward on the target counts as a magical trap and can be detected and disabled as such.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sundering Shards", school: "Transmutation", levels: "arcanist 1, bloodrager 1, magus 1, occultist 1, psychic 1, redmantisassassin 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V",
                          range: "touch", area: "", targets: "melee weapon touched",
                          duration: "1 hour/level or until discharged",
                          savingThrow: "Reflex negates (see text);", sr: true,
                          summary: "You channel power into a melee weapon. If the weapon’s wielder destroys an item with a successful sunder combat maneuver, she can release the extra power in the weapon, shattering the sundered item…",
                          desc: "You channel power into a melee weapon. If the weapon’s wielder destroys an item with a successful sunder combat maneuver, she can release the extra power in the weapon, shattering the sundered item into jagged shards that deal 1d6 points of piercing and slashing damage to the creature that was wearing, carrying, or wielding the now-shattered item. Any creature (other than the wielder of the weapon targeted by this spell) adjacent to that creature must succeed at a Reflex saving throw or take 1d6 points of piercing and slashing damage from flying shards. The shards also count as whatever special materials the sundered item was made of (for example, the shards from a shattered cold iron weapon are cold iron). Once the weapon’s extra power is unleashed, the spell is discharged.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Symbol of Laughter", school: "Enchantment (Charm)", levels: "arcanist 4, mesmerist 3, occultist 3, sorcerer 4, witch 4, wizard 4",
                          castingTime: "10 minutes", components: "V, S, M (mercury and phosphorus, plus powdered diamond and opal worth 1,000 gp each)",
                          range: "0 ft.; see text", area: "one symbol", targets: "",
                          duration: "see text",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions as symbol of death , except that all creatures within 60 feet are affected with uncontrollable laughter (as",
                          desc: "This spell functions as symbol of death , except that all creatures within 60 feet are affected with uncontrollable laughter (as",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Thorn Javelin", school: "Conjuration (Creation)", levels: "druid 1, hunter 1, ranger 1, shaman 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "0 ft.", area: "javelin-like thorn", targets: "",
                          duration: "1 minute/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "A wooden thorn the size of a javelin (appropriate for your size) appears in your open hand. You can wield this thorn as a javelin, and you are proficient in its use.",
                          desc: "A wooden thorn the size of a javelin (appropriate for your size) appears in your open hand. You can wield this thorn as a javelin, and you are proficient in its use. Any creature struck by the javelin must succeed at a Fortitude save or be sickened for 1 round. If you throw the javelin, another one appears in your hand. Any javelin that leaves your grasp disappears at the end of your turn. Each javelin attack you make reduces the spell’s remaining duration by 1 minute. If an attack reduces the remaining duration to 0 minutes or less, the spell ends after that attack resolves.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Thunderstomp", school: "Evocation", levels: "arcanist 1, bloodrager 1, druid 1, hunter 1, magus 1, ranger 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "60-ft. line", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: true,
                          summary: "You stomp your foot or strike your weapon against the ground or floor, creating a ripple of power that you can use to trip a creature.",
                          desc: "You stomp your foot or strike your weapon against the ground or floor, creating a ripple of power that you can use to trip a creature. Attempt the combat maneuver check to trip the target, but instead of your base attack bonus you can use your caster level, and instead of your Strength modifier you can use your spellcasting ability score modifier (Intelligence for magi and wizards; Wisdom for druids and rangers; Charisma for bloodragers and sorcerers). This does not provoke an attack of opportunity. This spell has no effect if you cannot reach the ground or floor, or if your target is not in contact with the ground or floor. Thunderstomp, Greater",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Thunderstomp, Greater", school: "Evocation", levels: "arcanist 1, bloodrager 1, druid 1, hunter 1, magus 1, ranger 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "60-ft. line", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: true,
                          summary: "This spell functions as thunderstomp , except as noted, and it affects all creatures in the area, regardless of size.",
                          desc: "This spell functions as thunderstomp , except as noted, and it affects all creatures in the area, regardless of size. When you attempt the combat maneuver check, apply its result to each creature within the area.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Time Shudder", school: "Transmutation", levels: "arcanist 2, magus 2, psychic 2, redmantisassassin 2, sorcerer 2, summoner 2, summoner (unchained) 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a tiny hourglass)",
                          range: "30 ft.", area: "30-ft.-radius emanation centered on you", targets: "",
                          duration: "1 round",
                          savingThrow: "none;", sr: true,
                          summary: "You cause a ripple in time that affects all creatures in the area. At the start of each creature’s turn, there is a 50% chance the creature is hasted (as haste ); otherwise it is slowed (as",
                          desc: "You cause a ripple in time that affects all creatures in the area. At the start of each creature’s turn, there is a 50% chance the creature is hasted (as haste ); otherwise it is slowed (as",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Twilight Haze", school: "Illusion (Shadow)", levels: "arcanist 2, mesmerist 2, psychic 2, redmantisassassin 2, sorcerer 2, spiritualist 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "fog spreads in 20-ft. radius", targets: "",
                          duration: "1 round/level",
                          savingThrow: "none;", sr: false,
                          summary: "You create a gray haze that obscures sight (as fog cloud ) and causes the illumination level within it to drop one step (as",
                          desc: "You create a gray haze that obscures sight (as fog cloud ) and causes the illumination level within it to drop one step (as",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Unbearable Brightness", school: "Evocation", levels: "alchemist 4, arcanist 4, investigator 4, occultist 4, psychic 4, sorcerer 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal and 30 ft. (see text)", area: "30-ft.-radius emanation centered on you", targets: "",
                          duration: "1 round/level",
                          savingThrow: "none and Reflex partial (see text);", sr: true,
                          summary: "Your body glows with a terrible light. Creatures within 30 feet of you that can see you are dazzled (no saving throw).",
                          desc: "Your body glows with a terrible light. Creatures within 30 feet of you that can see you are dazzled (no saving throw). Creatures with light sensitivity must succeed at a Reflex saving throw or be blinded. This light counts as daylight for the purpose of affecting darkness effects (and vice versa). If the emanation enters an area under the effect of magical darkness (or vice versa), both effects are temporarily negated so that the otherwise prevailing light conditions exist in the overlapping areas of effect. Dazzled and blinded conditions from your light end when the spell ends or when the creature is out of line of sight.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Unholy Ice Weapon", school: "Transmutation", levels: "cleric 2, inquisitor 2, oracle 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S, M (a flask of holy water, or 5 pounds of powdered silver worth 25 gp)",
                          range: "0 ft.", area: "one ice weapon", targets: "",
                          duration: "1 minute/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as holy ice weapon , except the weapon is made of frozen unholy water, and instead deals additional damage to creatures that are susceptible to unholy water.",
                          desc: "This spell functions as holy ice weapon , except the weapon is made of frozen unholy water, and instead deals additional damage to creatures that are susceptible to unholy water.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Unliving Rage", school: "Necromancy", levels: "arcanist 3, cleric 2, mesmerist 2, oracle 2, sorcerer 3, spiritualist 3, warpriest 2, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one willing undead creature per 3 levels, no two of which can be more than 30 ft. apart",
                          duration: "concentration + 1 round/level (D)",
                          savingThrow: "none;", sr: true,
                          summary: "This spell functions as rage , except it affects only undead creatures and bolsters them with necromantic energy rather than emotion.",
                          desc: "This spell functions as rage , except it affects only undead creatures and bolsters them with necromantic energy rather than emotion. Each affected creature gains a +2 profane bonus to Strength and Charisma, a +1 profane bonus on Will saves, and a –2 penalty to AC. The effect is otherwise identical to a barbarian’s rage.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Vampiric Shadow Shield", school: "Necromancy", levels: "arcanist 5, magus 5, sorcerer 5, spiritualist 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This spell wreathes you in shadowy energy and damages those that make melee attacks against you.",
                          desc: "This spell wreathes you in shadowy energy and damages those that make melee attacks against you. Any creature that strikes you with its body or a handheld weapon deals normal damage, but at the same time the attacker takes 1d6 points of negative energy damage + 1 point per caster level (maximum +15). If the attacker has spell resistance, it applies to this effect. Creatures wielding melee weapons with reach are not subject to this damage. When an attacker takes damage from the spell, you heal a number of hit points equal to 25% of the damage the spell dealt.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Wall of Blindness/Deafness", school: "Necromancy", levels: "arcanist 4, bard 4, cleric 5, oracle 5, psychic 4, skald 4, sorcerer 4, warpriest 5, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "translucent wall 20 ft. long/level or a translucent ring with a radius of up to 5 ft./two levels; either form 20 ft. high", targets: "",
                          duration: "concentration + 1 round/level",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "You create a translucent wall of energy, within which can be seen indistinct images of faces with their eyes or ears sewn shut. When you create the wall, decide whether it blinds or deafens.",
                          desc: "You create a translucent wall of energy, within which can be seen indistinct images of faces with their eyes or ears sewn shut. When you create the wall, decide whether it blinds or deafens. Any creature that passes through the wall must save or become permanently blinded or deafened (as blindness/deafness ). The wall must be vertical and either rectangular or a ring. It need not touch the ground. The wall must be continuous and unbroken when formed. If its surface is broken by any object or creature when it is cast, the spell fails.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Wall of Nausea", school: "Illusion (Pattern)", levels: "arcanist 3, bard 3, psychic 3, redmantisassassin 3, skald 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "transparent wall whose area is up to one 10-ft. square/level", targets: "",
                          duration: "1 round/level",
                          savingThrow: "see text;", sr: false,
                          summary: "You create a transparent, shimmering wall through which creatures and objects appear to be wildly distorted to viewers.",
                          desc: "You create a transparent, shimmering wall through which creatures and objects appear to be wildly distorted to viewers. Any creature that passes through the wall is immediately assailed by overwhelming vertigo, becoming nauseated for 1 round unless it succeeds at a Fortitude save; if nauseated, the creature must also succeed at a DC 12 Acrobatics check or fall prone. Creatures gain partial concealment (20% miss chance) against creatures on the other side of the wall. The wall must be vertical and rectangular. It need not touch the ground. The wall must be continuous and unbroken when formed. If its surface is broken by any object or creature when it is cast, the spell fails.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Wave Shield", school: "Abjuration", levels: "arcanist 1, bloodrager 1, druid 1, hunter 1, magus 1, shaman 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 immediate action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round or until discharged",
                          savingThrow: "None", sr: false,
                          summary: "You create a rushing torrent of water in the rough outline of a shield.",
                          desc: "You create a rushing torrent of water in the rough outline of a shield. The water protects you from one physical or fire attack, granting you DR/— and fire resistance equal to half your caster level (minimum 1) on that attack. Once the spell has reduced the damage of one attack against you, it is discharged.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Whip of Ants", school: "Conjuration (Summoning)", levels: "arcanist 2, bard 2, druid 2, hunter 2, skald 2, sorcerer 2, summoner 2, summoner (unchained) 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (a square of red cloth)",
                          range: "0 ft.", area: "whiplike swarm", targets: "",
                          duration: "1 round/level (D (see text)",
                          savingThrow: "none;", sr: true,
                          summary: "This spell functions as whip of spiders , except it summons army ants, and any creature you strike with the whip takes swarm damage as if it were attacked by an army ant swarm (3d6 points of damage…",
                          desc: "This spell functions as whip of spiders , except it summons army ants, and any creature you strike with the whip takes swarm damage as if it were attacked by an army ant swarm (3d6 points of damage plus poison and distraction,",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Whip of Centipedes", school: "Conjuration (Summoning)", levels: "arcanist 2, bard 2, druid 2, hunter 2, skald 2, sorcerer 2, summoner 2, summoner (unchained) 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (a square of red cloth)",
                          range: "0 ft.", area: "whiplike swarm", targets: "",
                          duration: "1 round/level (D (see text)",
                          savingThrow: "none;", sr: true,
                          summary: "This spell functions as whip of spiders , except it summons centipedes, and any creature you strike with the whip takes swarm damage as if it were attacked by a centipede swarm (2d6 points of damage…",
                          desc: "This spell functions as whip of spiders , except it summons centipedes, and any creature you strike with the whip takes swarm damage as if it were attacked by a centipede swarm (2d6 points of damage plus poison and distraction,",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Whip of Spiders", school: "Conjuration (Summoning)", levels: "arcanist 2, bard 2, druid 2, hunter 2, skald 2, sorcerer 2, summoner 2, summoner (unchained) 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (a square of red cloth)",
                          range: "0 ft.", area: "whiplike swarm", targets: "",
                          duration: "1 round/level (D (see text)",
                          savingThrow: "none;", sr: true,
                          summary: "You summon hundreds of Diminutive spiders, which cling together in the form of a whip made for a creature of your size.",
                          desc: "You summon hundreds of Diminutive spiders, which cling together in the form of a whip made for a creature of your size. You can wield this object as if it were an actual whip, except you make a melee touch attack with it instead of a regular attack. Any creature you strike with the whip takes swarm damage as if it were attacked by a spider swarm (1d6 points of damage plus poison and distraction, Bestiary 258). The swarm whip is able to damage creatures with armor or natural armor, even if a normal whip could not. It cannot be used to make bull rush, grapple, or trip attacks, and (unlike a swarm) is subject to a miss chance for concealment and cover. The whip is immune to all weapon damage, is never staggered or reduced to a dying state by damage, and is immune to any spell or effect that targets a specific number of creatures (including single-target spells such as",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Widen Auras", school: "Transmutation", levels: "antipaladin 2, paladin 2",
                          castingTime: "1 standard action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "The range of your antipaladin or paladin auras doubles. For example, if you’re a paladin, your aura of courage affects allies within 20 feet instead of within 10 feet.",
                          desc: "The range of your antipaladin or paladin auras doubles. For example, if you’re a paladin, your aura of courage affects allies within 20 feet instead of within 10 feet.",
                          source: "Advanced Class Guide", isPremium: true),

                    // // MARK: - Advanced Class Guide, Dark Markets - A Guide to Katapesh
        )
        try await db.insertSpell(
        .make("Euphoric Cloud", school: "Conjuration (Creation)", levels: "arcanist 2, druid 2, hunter 2, magus 2, mesmerist 2, psychic 2, sahirafiyun 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (rare mushrooms worth 5 gp)",
                          range: "medium (100 ft. + 10 ft./level)", area: "fog spreads in 20-ft. radius, 20 ft. high", targets: "",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates (see text);", sr: false,
                          summary: "You create a bank of fog similar to that created by fog cloud except its vapors are intoxicating. Living creatures in the cloud become fascinated.",
                          desc: "You create a bank of fog similar to that created by fog cloud except its vapors are intoxicating. Living creatures in the cloud become fascinated. This condition lasts as long as a creature is in the cloud and for 1d4+1 rounds after it leaves. Any creature that succeeds at its save but remains in the cloud must continue to save each round on your turn.",
                          source: "Advanced Class Guide, Dark Markets - A Guide to Katapesh", isPremium: true),

                    // // MARK: - Advanced Class Guide, Pirates of the Inner Sea
        )
        try await db.insertSpell(
        .make("Buoyancy", school: "Transmutation", levels: "arcanist 2, bard 2, psychic 2, redmantisassassin 2, shaman 2, skald 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 immediate action", components: "V",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one Medium or smaller object or creature/level, no two of which can be more than 20 ft. apart",
                          duration: "up to 1 round/level (see text)",
                          savingThrow: "Will negates (harmless) or Will negates (object);", sr: true,
                          summary: "The affected targets become incredibly buoyant, floating naturally on any water at least 1 foot deep.",
                          desc: "The affected targets become incredibly buoyant, floating naturally on any water at least 1 foot deep. An affected creature that deliberately tries to submerge must succeed at a DC 20 Swim check every round to stay underwater. If a target spends at least 1 round on dry land, the spell ends for that creature only.",
                          source: "Advanced Class Guide, Pirates of the Inner Sea", isPremium: true),

                    // // MARK: - Advanced Player's Guide
        )
        try await db.insertSpell(
        .make("Absorbing Touch", school: "Transmutation", levels: "alchemist 3, investigator 3",
                          castingTime: "1 standard action", components: "S",
                          range: "touch", area: "", targets: "object touched",
                          duration: "1 day/level (D)",
                          savingThrow: "Fortitude negates (object);", sr: false,
                          summary: "You absorb the next object your hand touches into your body. If you are already holding an object, you can attempt to absorb it; otherwise, you may touch an object as a standard action separate from…",
                          desc: "You absorb the next object your hand touches into your body. If you are already holding an object, you can attempt to absorb it; otherwise, you may touch an object as a standard action separate from casting the spell. You can absorb any nonmagical, nonliving object weighing no more than 1 pound per caster level. A container and its contents count as a single object. Objects in the possession of another creature receive a Fortitude saving throw to prevent absorption. You may continue to attempt to absorb objects until one is absorbed. An absorbed object melds with your hand and cannot be targeted, but the object’s weight still counts against your carrying capacity. If you dismiss the spell, the item appears in the hand that absorbed it, or falls to the ground if that hand is full. Multiple castings let you absorb additional items, but you can only store a single item per hand.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Accelerate Poison", school: "Transmutation", levels: "arcanist 2, druid 2, hunter 2, occultist 2, ranger 2, redmantisassassin 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a thorn)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "You hasten the onset of poison in the target. If the poison normally has an onset time, its effects begin immediately.",
                          desc: "You hasten the onset of poison in the target. If the poison normally has an onset time, its effects begin immediately. If the poison has no onset time, its frequency is doubled, requiring two saving throws and inflicting damage twice per round or minute, though its duration is halved. Accelerate poison does not change the cure condition for the poison. If the target is affected by more than one poison, you may choose which is affected if you administered the poison; otherwise, randomly determine which poison is affected.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Acid Pit", school: "Conjuration (Creation)", levels: "arcanist 2, sorcerer 2, summoner 2, summoner (unchained) 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, F (miniature shovel costing 10 gp)",
                          range: "medium (100 ft. + 10 ft./level)", area: "10-ft.-by-10-ft. hole, 10 ft. deep/2 levels", targets: "",
                          duration: "1 round + 1 round/level",
                          savingThrow: "Reflex negates;", sr: false,
                          summary: "This spell functions as create pit , except that it places a 5-foot-deep pool of acid at the bottom of the pit. The pit has a maximum depth of 100 feet.",
                          desc: "This spell functions as create pit , except that it places a 5-foot-deep pool of acid at the bottom of the pit. The pit has a maximum depth of 100 feet. Creatures who fall into the pit take falling damage as normal (the acid counts as a yielding surface), plus 2d6 points of acid damage per round spent in contact with the acid. In addition, exposed items carried by a creature in the pit may be harmed. Refer to Table 9–2: Items Affected by Magical Attacks (",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Alchemical Allocation", school: "Transmutation", levels: "alchemist 2, investigator 2",
                          castingTime: "1 standard action", components: "S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round",
                          savingThrow: "None", sr: false,
                          summary: "This extract causes a pale aura to emanate from your mouth. If you consume a potion or elixir on the round following the consumption of this extract, you can spit it back into its container as a free…",
                          desc: "This extract causes a pale aura to emanate from your mouth. If you consume a potion or elixir on the round following the consumption of this extract, you can spit it back into its container as a free action. You gain all the benefits of the potion or elixir, but it is not consumed. You can only gain the benefits of one potion or elixir in this way per use of this extract.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Allfood", school: "Transmutation", levels: "hunter 2, ranger 2",
                          castingTime: "1 standard action", components: "V, S, M (a pinch of salt and pepper)",
                          range: "touch", area: "", targets: "object touched, weighing up to 5 lbs./level",
                          duration: "instantaneous",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "You can transform one object, weighing up to 5 lbs. per caster level, into an edible substance that any living creature can chew, swallow, and safely digest.",
                          desc: "You can transform one object, weighing up to 5 lbs. per caster level, into an edible substance that any living creature can chew, swallow, and safely digest. This allfood always has a bland taste and slightly gooey consistency when chewed regardless of its original nature. One pound of allfood provides enough sustenance to support a Medium creature for an entire day. Objects of similar nature in close proximity, such as a pile of rocks, count as a single object for the purpose of this spell. You cannot use this spell to transform objects with magical or other exceptional qualities. An object’s hardness is considered to be 0 for the purposes of eating it, but it retains its normal hardness for all other situations, and becomes no more vulnerable to sunder attacks, break attempts, or any other action typically directed against objects. Objects such as hot coals or a burning torch continue to produce energy even after you transform them into",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Alter Winds", school: "Transmutation", levels: "arcanist 1, druid 1, hunter 1, occultist 1, redmantisassassin 1, sorcerer 1, spiritualist 1, wizard 1",
                          castingTime: "1 minute", components: "V, S",
                          range: "touch", area: "immobile 10-ft.-radius emanation", targets: "",
                          duration: "1 hour/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You subtly enhance or diminish the effects of natural winds within the spell’s area, which is an immobile emanation around a point touched by you as the spell is cast.",
                          desc: "You subtly enhance or diminish the effects of natural winds within the spell’s area, which is an immobile emanation around a point touched by you as the spell is cast. Within the area, natural (but not magical) wind effects are either increased or decreased by one step in intensity (Core Rulebook 439). The maximum wind force you can affect with this spell is based on your caster level, as shown on the table below. Alter winds has no effect on magical wind effects. Caster Level Wind Force",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Amplify Elixir", school: "Transmutation", levels: "alchemist 3, investigator 3",
                          castingTime: "1 standard action", components: "S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "This extract greatly enhances the effects of any potion or elixir you consume. For the duration of this extract, any potion or elixir you consume is treated as if it were empowered.",
                          desc: "This extract greatly enhances the effects of any potion or elixir you consume. For the duration of this extract, any potion or elixir you consume is treated as if it were empowered. Increase all variable numeric effects of the potion or elixir by half. If the potion or elixir does not have any variable numeric effects, it is instead treated as if it were extended (double the duration of the potion or elixir). If the potion or elixir does not have any variable numeric effects, or has an instantaneous duration, amplify elixir has no effect.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ant Haul", school: "Transmutation", levels: "alchemist 1, arcanist 1, cleric 1, druid 1, hunter 1, investigator 1, medium 1, occultist 1, oracle 1, psychic 1, ranger 1, redmantisassassin 1, sorcerer 1, summoner 1, summoner (unchained) 1, warpriest 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M/DF (a small pulley)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "2 hours/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "The target’s carrying capacity triples. This does not affect the creature’s actual Strength in any way, merely the amount of material it can carry while benefiting from this spell.",
                          desc: "The target’s carrying capacity triples. This does not affect the creature’s actual Strength in any way, merely the amount of material it can carry while benefiting from this spell. It also has no effect on encumbrance due to armor. If the creature wears armor it still takes the normal penalties for doing so regardless of how much weight the spell allows it to carry. Ant Haul, Communal",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ant Haul, Communal", school: "Transmutation", levels: "alchemist 1, arcanist 1, cleric 1, druid 1, hunter 1, investigator 1, medium 1, occultist 1, oracle 1, psychic 1, ranger 1, redmantisassassin 1, sorcerer 1, summoner 1, summoner (unchained) 1, warpriest 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M/DF (a small pulley)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "2 hours/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "This spell functions like ant haul , except you may divide the duration in 2-hour intervals among the creatures touched.",
                          desc: "This spell functions like ant haul , except you may divide the duration in 2-hour intervals among the creatures touched.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Aqueous Orb", school: "Conjuration (Creation)", levels: "arcanist 3, bloodrager 3, druid 3, hunter 3, magus 3, sorcerer 3, summoner 3, summoner (unchained) 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a drop of water and a glass bead)",
                          range: "medium (100 ft. + 10 ft./level)", area: "10-ft.-diameter sphere", targets: "",
                          duration: "1 round/level",
                          savingThrow: "Reflex negates;", sr: false,
                          summary: "You create a rolling sphere of churning water that can engulf those it strikes. The aqueous orb can move up to 30 feet per round, rolling over barriers less than 10 feet tall.",
                          desc: "You create a rolling sphere of churning water that can engulf those it strikes. The aqueous orb can move up to 30 feet per round, rolling over barriers less than 10 feet tall. It automatically quenches any nonmagical fires and functions as dispel magic against magical fires as long as those fires are size Large or less. Any creature in the path of the",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Arcane Concordance", school: "Evocation", levels: "bard 3, skald 3",
                          castingTime: "1 standard action", components: "V, S, M (a spent wand)",
                          range: "personal", area: "10-ft.-radius emanation centered on you", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "none;", sr: false,
                          summary: "A shimmering, blue and gold radiance surrounds you, enhancing arcane spells cast by your allies within its area.",
                          desc: "A shimmering, blue and gold radiance surrounds you, enhancing arcane spells cast by your allies within its area. Any arcane spell cast by a creature within the area gains a +1 enhancement bonus to the DC of any saving throws against the spell, and can be cast as if one of the following metamagic feats was applied to it (without increasing the spell level or casting time): Enlarge Spell, Extend Spell, Silent Spell, or Still Spell (you choose the metamagic feat when you cast arcane concordance ).",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Arrow Eruption", school: "Conjuration (Creation)", levels: "arcanist 2, hunter 2, ranger 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (arrow or crossbow bolt)",
                          range: "long (400 ft. + 40 ft./level)", area: "30-ft.-radius burst", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: true,
                          summary: "You create exact duplicates of the arrow or crossbow bolt you used to kill a creature in the previous round and launch one at enemy creatures within a 30-foot radius of the corpse.",
                          desc: "You create exact duplicates of the arrow or crossbow bolt you used to kill a creature in the previous round and launch one at enemy creatures within a 30-foot radius of the corpse. You can target one creature per caster level (maximum 15) within range of the burst and must make a single attack roll and apply it to each arrow. These duplicate arrows possess all the intrinsic magical properties of the arrow that killed the original creature as well as those passed on to it by your bow. They also enjoy the full benefit of any bonuses or modifiers you applied to the attack from other magical items, feats, and class or racial features. However, this spell cannot reproduce any spells or other limited-use magical effects that you used to enhance that particular attack. This includes such effects as the true strike spell, as well as any area spell you might have placed on the arrow by means of the arcane archer’s imbue arrow class feature.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Aspect of the Bear", school: "Transmutation (Polymorph)", levels: "druid 2, hunter 2, ranger 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "You take on an aspect of a bear. You gain a +2 enhancement bonus to natural armor and a +2 enhancement bonus on CMB rolls.",
                          desc: "You take on an aspect of a bear. You gain a +2 enhancement bonus to natural armor and a +2 enhancement bonus on CMB rolls. You can also perform bull rush, grapple, and overrun combat maneuvers without provoking attacks of opportunity.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Aspect of the Falcon", school: "Transmutation (Polymorph)", levels: "druid 1, hunter 1, ranger 1",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "You take on an aspect of a falcon. Your eyes become wide and raptor-like, and you grow feathers on the sides of your head.",
                          desc: "You take on an aspect of a falcon. Your eyes become wide and raptor-like, and you grow feathers on the sides of your head. You gain a +3 competence bonus on Perception checks, a +1 competence bonus on ranged attacks, and the critical multiplier for your bows and crossbows becomes 19–20/×3. This effect does not stack with any other effect that expands the threat range of a weapon, such as the Improved Critical feat or a keen weapon.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Aspect of the Stag", school: "Transmutation (Polymorph)", levels: "druid 4, hunter 3, ranger 3",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "When you cast this spell, you take on an aspect of a stag, including some of its physical characteristics.",
                          desc: "When you cast this spell, you take on an aspect of a stag, including some of its physical characteristics. Your features become elongated and sinewy, and you grow a set of antlers you can use for defense. You gain a +2 dodge bonus to AC against attacks of opportunity, your base speed increases by 20 ft., you can move through any undergrowth (including magically manipulated undergrowth) at your normal speed, and can even make a 5-foot step within such terrain. Furthermore, when you are hit with an attack of opportunity, you can make a single attack with your antlers against the opponent that hit you as an immediate action. This attack uses your highest base attack bonus plus your Strength or Dexterity bonus (your choice) and deals 1d8 points of piercing damage (if you are Medium; 1d6 points of damage if Small) plus your Strength modifier on a successful hit. The antlers have a critical multiplier of 19–20/×2.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Aspect of the Wolf", school: "Transmutation (Polymorph)", levels: "druid 5, hunter 4, ranger 4",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "When you cast this spell, you take on an aspect of a wolf, including some of its physical characteristics. You become more rugged, your ears become elongated, and you sprout sharp fangs and fur.",
                          desc: "When you cast this spell, you take on an aspect of a wolf, including some of its physical characteristics. You become more rugged, your ears become elongated, and you sprout sharp fangs and fur. You gain a +4 enhancement bonus to Strength and Dexterity, the scent ability, a +2 enhancement bonus on trip attacks, and can make a trip combat maneuver as a swift action. This trip attack does not provoke attacks of opportunity.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Aura of Greater Courage", school: "Abjuration", levels: "paladin 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "personal", area: "10-ft.-radius emanation centered on you", targets: "",
                          duration: "10 minutes/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "When you cast this spell you strengthen your paladin’s aura of courage. Until the end of its duration, all allies within that aura are immune to fear (magical or otherwise).",
                          desc: "When you cast this spell you strengthen your paladin’s aura of courage. Until the end of its duration, all allies within that aura are immune to fear (magical or otherwise). If you do not have the aura of courage class feature, aura of greater courage has no effect.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ball Lightning", school: "Evocation", levels: "arcanist 4, bloodrager 4, druid 4, hunter 4, magus 4, occultist 4, shaman 4, sorcerer 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M/DF (a small iron ring)",
                          range: "medium (100 ft. + 10 ft./level)", area: "two or more 5-ft.-diameter spheres", targets: "",
                          duration: "1 round/level",
                          savingThrow: "Reflex negates;", sr: true,
                          summary: "You create two globes of lightning that fly in whichever direction you indicate.",
                          desc: "You create two globes of lightning that fly in whichever direction you indicate. For every 4 caster levels above 7th, you create an additional globe of lightning (3 globes at 11th, 4 globes at 15th, to the maximum of 5 globes at 19th). These globes fly at a rate of 20 feet per round and have perfect maneuverability. Wind does not affect a flying sphere’s course. If a globe enters a space with a creature, it stops moving for the round and deals 3d6 points of electricity damage to that creature, though a successful Reflex save negates the damage. Creatures wearing metal armor take a –4 penalty on this saving throw. Each globe moves as long as you actively direct it (it’s a move action for you to direct all the spheres created by a single casting of this spell); otherwise they stay at rest. These globes have no mass and cannot push aside unwilling creatures or move solid objects. A",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Banish Seeming", school: "Abjuration", levels: "inquisitor 3, psychic 5, witch 5",
                          castingTime: "1 standard action", components: "V, S, M (a cold iron nail)",
                          range: "touch", area: "", targets: "one creature or object",
                          duration: "instantaneous and 1 round/level; see text",
                          savingThrow: "none;", sr: false,
                          summary: "With a melee touch attack you can dispel an illusion or return a creature to its natural form.",
                          desc: "With a melee touch attack you can dispel an illusion or return a creature to its natural form. This functions as dispel magic directed at the effect in question, except you receive a +2 enhancement bonus on your dispel check and you can only dispel illusions or changes in form created by supernatural effects or spells. If multiple effects are changing the creature’s appearance, you can dispel one such effect for every four caster levels you possess, starting with the highest caster level spells and proceeding to spells with lower caster levels. The caster level for supernatural abilities such as change shape is equal to the target creature’s Hit Dice. A creature returned to its natural form by",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Bard's Escape", school: "Conjuration (Teleportation)", levels: "bard 5, skald 5",
                          castingTime: "1 standard action", components: "V, S, M (pieces of a smashed fiddle)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "you and up to 1 willing creature/2 caster levels, no two of which can be more than 30 ft. apart",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "You whisk yourself and willing allies out of a tight jam, or instantly transfer yourselves to another location to achieve greater strategic positioning.",
                          desc: "You whisk yourself and willing allies out of a tight jam, or instantly transfer yourselves to another location to achieve greater strategic positioning. You can move any allies within range to any other space of your choosing within range. Those spaces need not be in line of sight or line of effect from your original position, but must be open locations on surfaces able to support the creatures teleported. Except as noted above, this spell otherwise functions as dimension door .",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Beguiling Gift", school: "Enchantment (Compulsion)", levels: "bard 1, mesmerist 1, psychic 1, skald 1, witch 1",
                          castingTime: "1 standard action", components: "V, S, F (the object to be offered)",
                          range: "5 ft.", area: "", targets: "one creature",
                          duration: "1 round",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You offer an object to an adjacent creature, and entice it into using or consuming the proffered item.",
                          desc: "You offer an object to an adjacent creature, and entice it into using or consuming the proffered item. If the target fails its Will save, it immediately takes the offered object, dropping an already held object if necessary. On its next turn, it consumes or dons the object, as appropriate for the item in question. For example, an apple would be eaten, a potion consumed, a ring put on a finger, and a sword wielded in a free hand. If the target is physically unable to accept the object, the spell fails. The subject is under no obligation to continue consuming or using the item once the spell’s duration has expired, although it may find a cursed item difficult to be rid of.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Bestow Grace", school: "Abjuration", levels: "paladin 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "one good creature touched",
                          duration: "1 minute/level",
                          savingThrow: "Will (harmless);", sr: true,
                          summary: "With this spell you can bestow your divine grace on another good creature for a short amount of time, infusing that creature with a portion of your holy virtue.",
                          desc: "With this spell you can bestow your divine grace on another good creature for a short amount of time, infusing that creature with a portion of your holy virtue. When you touch the subject, you grant that creature a sacred bonus to its saving throws equal to its Charisma bonus (if any) on all saving throws.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Blaze of Glory", school: "Conjuration (Healing)", levels: "paladin 4",
                          castingTime: "1 standard action or immediate action; see text", components: "V",
                          range: "", area: "30-ft.-radius burst centered on you", targets: "",
                          duration: "instantaneous and 1 round/level; see text",
                          savingThrow: "Will partial;", sr: true,
                          summary: "You fall unconscious but also unleash a spectacular wave of holy energy that heartens and heals your allies while leaving your opponents daunted and damaged.",
                          desc: "You fall unconscious but also unleash a spectacular wave of holy energy that heartens and heals your allies while leaving your opponents daunted and damaged. You can cast this spell as either a standard action on your turn, or as an immediate action when brought to below 0 hit points. If cast as a standard action, you are immediately reduced to –1 hit points, but stable, after casting the spell. When you cast this spell, any good creature within range is healed for 1d6 points of damage per two caster levels. All evil creatures within range take the same amount as damage instead (a successful Will save halves this damage). In addition, all allies and enemies within range are affected as if by the prayer spell for 1 round per caster level.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Blessing of Courage and Life", school: "Conjuration (Healing)", levels: "cleric 2, oracle 2, paladin 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "1 minute/level (see below)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "With this prayer you provide long-lasting succor to a wounded creature. For as long as the effect lasts, the target receives a +2 morale bonus on saving throws against fear and death effects.",
                          desc: "With this prayer you provide long-lasting succor to a wounded creature. For as long as the effect lasts, the target receives a +2 morale bonus on saving throws against fear and death effects. At any time while the spell is in effect, the target can choose to end the spell as a swift action for a burst of healing energy. The target loses the saving throw bonus, but is healed of 1d8 points of damage +1 point per caster level (maximum +10).",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Blessing of Fervor", school: "Transmutation", levels: "cleric 4, oracle 4, warpriest 4",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature/level, no two of which can be more than 30 ft. apart",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "With this blessing, you call your allies to move forth and empower them to conquer and become victorious.",
                          desc: "With this blessing, you call your allies to move forth and empower them to conquer and become victorious. Each round for the duration of this spell, each of your allies can choose one of the following bonuses for that round at the beginning of its turn (their choice). Increase its speed by 30 feet. Stand up as a swift action without provoking an attack of opportunity. Take one extra attack as part of a full attack action, using its highest base attack bonus. Gain a +2 bonus on attack rolls and a +2 dodge bonus to AC and Reflex saves. Cast a single spell of 2nd level or lower as if it were an enlarged, extended, silent, or still spell. These effects are not cumulative with similar effects, such as those provided by",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Blessing of the Salamander", school: "Transmutation (Polymorph)", levels: "druid 5, hunter 4, ranger 4",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "When you cast this on a creature, its skin turns slick and clammy and it is able to regenerate damage each round.",
                          desc: "When you cast this on a creature, its skin turns slick and clammy and it is able to regenerate damage each round. While under the effects of the spell, the creature gains fast healing 5, fire resistance 20 and a +2 competence bonus to its Combat Maneuver Defense.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Blood Biography", school: "Divination", levels: "arcanist 3, bard 2, bloodrager 3, cleric 3, inquisitor 3, medium 2, occultist 2, oracle 3, psychic 3, skald 2, sorcerer 3, warpriest 3, wizard 3",
                          castingTime: "1 minute", components: "V, S, M/DF (a scrap of parchment)",
                          range: "touch", area: "", targets: "one creature’s blood or one bloodstain",
                          duration: "instantaneous",
                          savingThrow: "Will negates (see text);", sr: false,
                          summary: "You learn the answers to a specific set of questions about a creature so long as you have access to at least one drop of its blood.",
                          desc: "You learn the answers to a specific set of questions about a creature so long as you have access to at least one drop of its blood. You can cast this spell on the blood of the living or the dead, but living or undead creatures are entitled to a saving throw to resist the spell. You can cast the spell on dried or fresh blood. Once you cast the spell the answers to the following four questions appear on any flat surface you designate (a wall, a piece of paper, and so on). Who are you? (The name by which the creature is most commonly known) What are you? (Gender, race, profession/role) How was your blood shed? (Brief outline of the events that caused its wound, to the best of the victim’s knowledge)",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await seedSpellsE()
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