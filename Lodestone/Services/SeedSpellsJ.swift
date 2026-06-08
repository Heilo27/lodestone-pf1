import Foundation

extension SeedDataBuilder {
    func seedSpellsJ() async throws {
        try await db.insertSpell(
        .make("Create Variant Mummy", school: "Necromancy", levels: "arcanist 7, cleric 7, oracle 7, sorcerer 7, wizard 7",
                          castingTime: "1 hour", components: "V, S, M (onyx gems worth 50 gp per HD of the undead to be created)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "1 corpse steeped in a peat bog for at least 24 hours",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as create undead (",
                          desc: "This spell functions as create undead (",
                          source: "Pathfinder #81: Shifting Sands", isPremium: true)
        )
        try await db.insertSpell(
        .make("Virulence", school: "Necromancy", levels: "cleric 4, oracle 4, warpriest 4, witch 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "40 ft.", area: "all living creatures within a 40-ft.-radius burst centered on you", targets: "",
                          duration: "instantaneous",
                          savingThrow: "see text;", sr: true,
                          summary: "All living creatures within the area of effect, including yourself, must immediately attempt a saving throw with a –2 penalty against any and all diseases they have contracted, even if the onset time…",
                          desc: "All living creatures within the area of effect, including yourself, must immediately attempt a saving throw with a –2 penalty against any and all diseases they have contracted, even if the onset time has not yet elapsed. On a failed saving throw, the affliction has its usual effect. A successful save does not count toward curing the affliction.",
                          source: "Pathfinder #81: Shifting Sands", isPremium: true),

                    // // MARK: - Pathfinder #82: Secrets of the Sphinx
        )
        try await db.insertSpell(
        .make("Abeyance", school: "Abjuration", levels: "cleric 2, inquisitor 2, oracle 2, paladin 2, warpriest 2",
                          castingTime: "1 minute", components: "V, S, M (a flask of holy water worth 25 gp), DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "24 hours",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "Abeyance suppresses the effects of a single curse on a creature. It does not restore any damage or drain that might have been caused by the curse.",
                          desc: "Abeyance suppresses the effects of a single curse on a creature. It does not restore any damage or drain that might have been caused by the curse. Abeyance cannot suppress curses that cannot be removed by",
                          source: "Pathfinder #82: Secrets of the Sphinx", isPremium: true)
        )
        try await db.insertSpell(
        .make("Aggravate Affliction", school: "Necromancy", levels: "arcanist 4, cleric 3, druid 3, hunter 3, oracle 3, sorcerer 4, warpriest 3, witch 3, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "see text;", sr: true,
                          summary: "All recurring afflictions (those with a frequency,including curses, diseases, and poison) possessed by the targeted creature immediately trigger, requiring an immediate saving throw (as described in…",
                          desc: "All recurring afflictions (those with a frequency,including curses, diseases, and poison) possessed by the targeted creature immediately trigger, requiring an immediate saving throw (as described in the affliction) to avoid suffering their effects. A successful saving throw does not count toward ending the affliction, and this extra save does not change the timing of the next save against the affliction. Afflictions without a frequency are unaffected by this spell.",
                          source: "Pathfinder #82: Secrets of the Sphinx", isPremium: true),

                    // // MARK: - Pathfinder #84: Pyramid of the Sky Pharaoh, Osirion, Land of the Pharaohs
        )
        try await db.insertSpell(
        .make("Boneshatter", school: "Necromancy", levels: "arcanist 4, cleric 5, oracle 5, sorcerer 4, warpriest 5, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (a broken bone)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one corporeal creature or object",
                          duration: "instantaneous and 1 minute/level (see text)",
                          savingThrow: "Fortitude partial (see text);", sr: true,
                          summary: "The target’s bones (or exoskeleton) splinter, dealing 1d6 points of damage per caster level (maximum 15d6) to the target, which is also exhausted for 1 minute per caster level from the pain and…",
                          desc: "The target’s bones (or exoskeleton) splinter, dealing 1d6 points of damage per caster level (maximum 15d6) to the target, which is also exhausted for 1 minute per caster level from the pain and exertion of the transformation. If the target succeeds at its save, it takes half damage and is fatigued rather than exhausted. Objects made of bone, chitin, or similar material take half again as much damage (+50%) from this spell. This spell has no effect on a creature that has neither a skeleton nor a hard carapace.",
                          source: "Pathfinder #84: Pyramid of the Sky Pharaoh, Osirion, Land of the Pharaohs", isPremium: true),

                    // // MARK: - Pathfinder #86: Lords of Rust
        )
        try await db.insertSpell(
        .make("Semblance of Flesh", school: "Illusion (Glamer)", levels: "arcanist 2, cleric 2, oracle 2, sorcerer 2, warpriest 2, wizard 2 (Brigh)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "construct touched",
                          duration: "10 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "You make the target construct appear to be a living creature of flesh and bone, regardless of its actual materials.",
                          desc: "You make the target construct appear to be a living creature of flesh and bone, regardless of its actual materials. You can make it seem 1 foot shorter or taller, and appear thin, fat, or anywhere in between. Its bodily configuration does not change; for example, a centaur-like construct looks like a centaur rather than a human. The extent of the apparent change (such as flesh color, hair color, apparent age, and so on) is up to you. The spell does not provide the abilities or mannerisms of the chosen form, nor does it alter the perceived tactile or audible properties of the construct. If you use this spell to create a disguise, the construct gains a +10 bonus on the Disguise check. A creature that interacts with the glamer receives a Will save to recognize it as an illusion.",
                          source: "Pathfinder #86: Lords of Rust", isPremium: true),

                    // // MARK: - Pathfinder #89: Palace of Fallen Stars
        )
        try await db.insertSpell(
        .make("Curse of Unexpected Death", school: "Necromancy", levels: "cleric 4, oracle 4, shaman 5, warpriest 4, witch 5 (Zyphus)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "1 minute/level (see text)",
                          savingThrow: "Fortitude partial (see text);", sr: true,
                          summary: "You curse one living creature with a chance of instant and unexpected death. When you cast this spell, your hand seethes with eerie gray fire.",
                          desc: "You curse one living creature with a chance of instant and unexpected death. When you cast this spell, your hand seethes with eerie gray fire. You must succeed at a melee touch attack to touch the target, at which time the fire buries itself within the target’s body and disappears. On the round you touch the creature and once per minute thereafter, roll 1d100. On a result of 01–05, the spell is triggered and the creature takes 8d6 points of damage + 1 point per caster level; the creature can attempt a saving throw to reduce the damage to 2d6 points of damage + 1 point per caster level. On a result of 06–100, nothing happens. Once the spell is triggered or if the duration expires before it triggers, the magic ends and no further 1d100 rolls are made. If the target has spell resistance, a caster level check is made when you succeed at the touch attack. A creature can be affected by only one instance of this spell at a time. The untriggered spell can be removed with dispel magic ,",
                          source: "Pathfinder #89: Palace of Fallen Stars", isPremium: true),

                    // // MARK: - Pathfinder #91: Battle of Bloodmarch Hills
        )
        try await db.insertSpell(
        .make("Beanstalk", school: "Conjuration (Creation)", levels: "arcanist 4, sorcerer 4, summoner 4, summoner (unchained) 4, witch 4, wizard 4",
                          castingTime: "1 minute", components: "V, S, M (a small handful of beans)",
                          range: "0 ft. (see text)", area: "a 5-foot-radius beanstalk that grows to a height of 50 ft./caster level", targets: "",
                          duration: "24 hours",
                          savingThrow: "none;", sr: false,
                          summary: "When casting this spell, you must plant the material components in soil. When you do, at the end of casting, a large beanstalk rises up from the ground.",
                          desc: "When casting this spell, you must plant the material components in soil. When you do, at the end of casting, a large beanstalk rises up from the ground. It’s strong enough to support Huge or smaller creatures weighing no more than 2,000 pounds total, and has enough handholds and footholds that it can be climbed as if it were knotted rope (Climb DC 5). At the end of the spell’s duration, the beanstalk withers and dies at an accelerated rate, leaving nothing more than a pile of compost.",
                          source: "Pathfinder #91: Battle of Bloodmarch Hills", isPremium: true)
        )
        try await db.insertSpell(
        .make("Flaming Aura", school: "Transmutation", levels: "arcanist 4, bloodrager 4, cleric 4, magus 4, oracle 4, shaman 4, sorcerer 4, summoner 4, summoner (unchained) 4, warpriest 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M/DF (a small piece of charcoal)",
                          range: "personal", area: "", targets: "you (see text)",
                          duration: "1 minute/level",
                          savingThrow: "none (harmless, see text);", sr: false,
                          summary: "The spell allows you channel fire into your very being. If you don’t already have the fire subtype, this spell grants you the fire subtype.",
                          desc: "The spell allows you channel fire into your very being. If you don’t already have the fire subtype, this spell grants you the fire subtype. If you already have the fire subtype, you instead channel the flames from your being outward, creating a 10-foot-radius aura of fire centered on you. Creatures who enter or end their turns in the aura must succeed at a Fortitude saving throw or take 1d8 points of fire damage. Multiple castings of this spell stack; you can cast it once on yourself to gain the fire subtype, then again to manifest the aura of flames around you.",
                          source: "Pathfinder #91: Battle of Bloodmarch Hills", isPremium: true)
        )
        try await db.insertSpell(
        .make("Frosty Aura", school: "Transmutation", levels: "arcanist 4, bloodrager 4, cleric 4, magus 4, oracle 4, shaman 4, sorcerer 4, summoner 4, summoner (unchained) 4, warpriest 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M/DF (a chunk of ice or a few drops of water melted from glacier ice)",
                          range: "personal", area: "", targets: "you (see text)",
                          duration: "1 minute/level",
                          savingThrow: "none (harmless, see text);", sr: false,
                          summary: "The spell allows you to channel cold into your very being. If you don’t already have the cold subtype, this spell grants you the cold subtype.",
                          desc: "The spell allows you to channel cold into your very being. If you don’t already have the cold subtype, this spell grants you the cold subtype. If you already have the cold subtype, you instead channel the frost from your being outward, creating a 10-footradius aura of cold centered on you. Creatures who enter or end their turns in the aura must succeed at a Fortitude saving throw or take 1d8 points of cold damage. Multiple castings of this spell stack; you can cast it once on yourself to gain the cold subtype, then again to manifest the aura of frost around you.",
                          source: "Pathfinder #91: Battle of Bloodmarch Hills", isPremium: true)
        )
        try await db.insertSpell(
        .make("Quick Throwing", school: "Transmutation", levels: "antipaladin 2, bloodrager 2, hunter 2, magus 2, paladin 2, ranger 2",
                          castingTime: "1 standard action", components: "V, S, M",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature/level, no two of which can be more than 30 ft. apart",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "Those under the effects of this spell become faster in the use of thrown weapons.",
                          desc: "Those under the effects of this spell become faster in the use of thrown weapons. They can draw thrown weapons (including rocks if they have the rock throwing ability) on their bodies or within their space without the need for the Quick Draw feat, allowing them to make their full normal rate of attacks with such weapons. This has no effects on other forms of ranged weapon ammunition.",
                          source: "Pathfinder #91: Battle of Bloodmarch Hills", isPremium: true)
        )
        try await db.insertSpell(
        .make("Thanatotic Fury", school: "Transmutation", levels: "arcanist 4, sorcerer 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (shavings from a holy symbol)",
                          range: "personal", area: "", targets: "you (see text)",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "You may cast this spell only if you have the giant subtype. When casting this spell, you channel the fury and the abilities of thanatotic titans, gaining some of their abilities for a short period of…",
                          desc: "You may cast this spell only if you have the giant subtype. When casting this spell, you channel the fury and the abilities of thanatotic titans, gaining some of their abilities for a short period of time. When you hit a creature capable of casting divine spells, that creature must succeed at a Will saving throw or be unable to cast divine spells for 1d4 rounds and be shaken for the same duration. If the save is successful, the target is instead shaken for only 1 round. Additionally, your attacks are treated as epic and evil for the purposes of overcoming damage reduction.",
                          source: "Pathfinder #91: Battle of Bloodmarch Hills", isPremium: true)
        )
        try await db.insertSpell(
        .make("Thunderous Footfalls", school: "Transmutation", levels: "arcanist 3, sorcerer 3, summoner 3, summoner (unchained) 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one Large or larger creature",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates (harmless);", sr: false,
                          summary: "This spell makes the target creature’s footfalls shake the ground violently as he trundles, which may knock down smaller creatures as he passes by, though it also makes the target slower on land.",
                          desc: "This spell makes the target creature’s footfalls shake the ground violently as he trundles, which may knock down smaller creatures as he passes by, though it also makes the target slower on land. The target’s land speed is reduced by half (round down to the nearest 5-foot increment), but each time he moves overland adjacent to a creature that is at least one size category smaller than he is, that creature must succeed at a Fortitude saving throw or be knocked prone.",
                          source: "Pathfinder #91: Battle of Bloodmarch Hills", isPremium: true)
        )
        try await db.insertSpell(
        .make("Titanic Anchoring", school: "Transmutation", levels: "antipaladin 3, bloodrager 3, cleric 3, hunter 3, magus 3, oracle 3, paladin 3, ranger 3, warpriest 3",
                          castingTime: "1 standard action", components: "V, S, M (a shaving of oak root)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "You become grounded and nearly immovable. You are immune to the pull and push special abilities, and all bull rush, grapple, overrun, reposition, and trip combat maneuvers made by creatures your size…",
                          desc: "You become grounded and nearly immovable. You are immune to the pull and push special abilities, and all bull rush, grapple, overrun, reposition, and trip combat maneuvers made by creatures your size or smaller always fail. You gain a +10 bonus to your CMD against those combat maneuver checks made by creatures larger than you.",
                          source: "Pathfinder #91: Battle of Bloodmarch Hills", isPremium: true),

                    // // MARK: - Pathfinder #93: Forge of the Giant God
        )
        try await db.insertSpell(
        .make("Gravel Vortex", school: "Conjuration (Creation)", levels: "arcanist 4, druid 4, hunter 4, sorcerer 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (handful of pebbles)",
                          range: "long (400 ft. + 40 ft./level)", area: "cylinder (20-ft. radius, 40 ft. high)", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: true,
                          summary: "You create a hail of tiny pieces of rock and dust that batter and scrape against all things in the area, dealing 5d6 points of bludgeoning damage.",
                          desc: "You create a hail of tiny pieces of rock and dust that batter and scrape against all things in the area, dealing 5d6 points of bludgeoning damage. This damage is dealt only once, on the round the spell is cast. For the remaining duration of the spell, fine dust rains down in the area. Creatures other than stone giants inside this area take a –4 penalty on Perception skill checks, and the entire area is treated as difficult terrain. At the end of the spell’s duration, the gravel and dust disappear, leaving no trace of their presence.",
                          source: "Pathfinder #93: Forge of the Giant God", isPremium: true),

                    // // MARK: - Pathfinder #95: Anvil of Fire
        )
        try await db.insertSpell(
        .make("Stoke the Inner Fire", school: "Transmutation", levels: "cleric 2, inquisitor 2, oracle 2, warpriest 2 (Zursvaater)",
                          castingTime: "1 standard action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "You increase the natural heat within your body, transferring it to your weapons and armor.",
                          desc: "You increase the natural heat within your body, transferring it to your weapons and armor. As a swift action, you may grant one of your natural or manufactured weapons the flaming special ability for 1 round. If you have the fire subtype, your weapon instead gains the",
                          source: "Pathfinder #95: Anvil of Fire", isPremium: true),

                    // // MARK: - Pathfinder Campaign Setting
        )
        try await db.insertSpell(
        .make("Armor of Darkness", school: "Abjuration", levels: "",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 minutes/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell envelops the target in shadows that can, if you desire, conceal the creature’s features.",
                          desc: "This spell envelops the target in shadows that can, if you desire, conceal the creature’s features. It grants the recipient a +3 deflection bonus to Armor Class (+1 for every 4 caster levels, to a maximum bonus of +8). The subject can see through the armor and gains darkvision to 60 feet. The subject gains a +2 bonus on saving throws against any holy, good, or light spells or effects. Undead creatures under the effect gain +4 turn resistance.",
                          source: "Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertSpell(
        .make("Blacklight", school: "Evocation", levels: "arcanist 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "20-ft.-radius emanation", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "Will negates or none (object);", sr: true,
                          summary: "You create an area of total darkness. The darkness is impenetrable even to darkvision, but you can see normally within it. Creatures outside the spell’s area, even you, cannot see through it.",
                          desc: "You create an area of total darkness. The darkness is impenetrable even to darkvision, but you can see normally within it. Creatures outside the spell’s area, even you, cannot see through it. You can cast the spell on a point in space, but the effect is stationary unless cast on a mobile object. You can cast the spell on a creature, and the effect then radiates from the creature and moves as it moves. Unattended objects and points in space do not get saving throws or benefit from spell resistance. Blacklight counters or dispels any light spell of equal or lower level.",
                          source: "Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertSpell(
        .make("Bolt of Glory", school: "Evocation", levels: "",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "ray", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: true,
                          summary: "You fire a ray of positive energy. A creature struck takes varying damage, depending on its nature and home plane of existence.",
                          desc: "You fire a ray of positive energy. A creature struck takes varying damage, depending on its nature and home plane of existence. Neutral outsiders and creatures native to the Material Plane and Elemental Planes take 1d6 points of damage per 2 levels (maximum 7d6). Evil outsiders, undead, and natives of the Negative Energy Plane take 1d6 points of damage per level (maximum 15d6). All other creatures take no damage.",
                          source: "Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertSpell(
        .make("Bolts of Bedevilment", school: "Enchantment", levels: "",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "ray", targets: "",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You can fire one ray per round that dazes one living creature for 1d3 rounds.",
                          desc: "You can fire one ray per round that dazes one living creature for 1d3 rounds.",
                          source: "Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertSpell(
        .make("Crown of Glory", school: "Evocation", levels: "",
                          castingTime: "1 full round", components: "V, S, M, DF",
                          range: "personal", area: "120-ft.-radius emanation centered on you", targets: "",
                          duration: "1 minute/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You gain a +4 enhancement bonus to Charisma. All creatures with fewer than 8 HD are compelled to stop and pay attention to you.",
                          desc: "You gain a +4 enhancement bonus to Charisma. All creatures with fewer than 8 HD are compelled to stop and pay attention to you. Any such creature that wants to take hostile action against you must make a Will save to do so. Any creature that fails this saving throw the first time it attempts a hostile action is enthralled for the duration of the spell (as the enthrall spell), as long as it is in the spell’s area. It does not try to leave the area on its own. Creatures with 8 HD or more are not affected. When you speak, all listeners telepathically understand you. You can make up to three",
                          source: "Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertSpell(
        .make("Genesis", school: "Conjuration (Creation)", levels: "",
                          castingTime: "1 week (8 hours/day)", components: "V, S, M, XP",
                          range: "180 ft.", area: "A demiplane on the Ethereal Plane centered on you", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "You create an immobile, finite demiplane with limited access. Demiplanes created by this spell are very small.",
                          desc: "You create an immobile, finite demiplane with limited access. Demiplanes created by this spell are very small. At first, the demiplane grows at a rate of 1-foot-radius per day, up to a 180-foot radius. You determine the environment in the demiplane, reflecting most any desire you can visualize, such as atmosphere, water, temperature, and the shape of the terrain. The spell cannot create life, nor can it create buildings. If desired, these must be brought in by some other fashion. You can cast this spell again to enlarge the demiplane by 60 feet per casting if you are inside its boundaries. Material Component : A small crystalline sphere.",
                          source: "Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hardening", school: "Transmutation", levels: "arcanist 6, sorcerer 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "one item of a volume no greater than 10 cu. ft./level",
                          duration: "permanent",
                          savingThrow: "none;", sr: true,
                          summary: "This spell increases the hardness of materials by 1 point per 2 caster levels. The hardening spell does not in any way affect resistance to other forms of transformation.",
                          desc: "This spell increases the hardness of materials by 1 point per 2 caster levels. The hardening spell does not in any way affect resistance to other forms of transformation. This spell affects up to 10 cubic feet per level. If cast upon a metal or mineral, the spell affects 1 cubic foot per level.",
                          source: "Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertSpell(
        .make("Status, Greater", school: "Divination", levels: "0, 1st, or 2nd;",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "one creature touched/three levels",
                          duration: "1 hour/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "As status , but you can also cast a limited selection of spells through the link, as if you were touching the target. You can cast any spell that meets all of the following conditions:",
                          desc: "As status , but you can also cast a limited selection of spells through the link, as if you were touching the target. You can cast any spell that meets all of the following conditions:",
                          source: "Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertSpell(
        .make("Surelife", school: "Abjuration", levels: "",
                          castingTime: "1 round", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/2 levels",
                          savingThrow: "None", sr: false,
                          summary: "This spell protects you (but not your gear) from a natural occurrence or condition (not against a spell or the action of a creature) that would kill you.",
                          desc: "This spell protects you (but not your gear) from a natural occurrence or condition (not against a spell or the action of a creature) that would kill you. You must specify the condition, and the spell is effective only against that condition. If you are subjected to that condition during the duration of the spell, you feel no discomfort and take no damage from the condition. At the end of the spell’s duration, the condition has full normal effects if you are still subjected to it.",
                          source: "Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertSpell(
        .make("Touch of Madness", school: "Enchantment", levels: "",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "On a successful touch attack, you daze a creature that fails a save.",
                          desc: "On a successful touch attack, you daze a creature that fails a save.",
                          source: "Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertSpell(
        .make("True Creation", school: "Conjuration (Creation)", levels: "",
                          castingTime: "10 minutes", components: "V, S, XP",
                          range: "0 ft.", area: "unattended, nonmagical object, up to 1 cu. ft./level", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "You create a completely real, nonmagical, unattended object of any sort of matter. The volume of the item created cannot exceed 1 cubic foot per caster level.",
                          desc: "You create a completely real, nonmagical, unattended object of any sort of matter. The volume of the item created cannot exceed 1 cubic foot per caster level. Complex items require successful Craft checks. Objects created can be used as material components. XP Cost : The item’s gold piece value in XP (minimum 1 XP).",
                          source: "Pathfinder Campaign Setting", isPremium: true),

                    // // MARK: - Pathfinder Comics #10
        )
        try await db.insertSpell(
        .make("Demon Dream", school: "Illusion (Phantasm)", levels: "cleric 6, oracle 6, warpriest 6",
                          castingTime: "see text", components: "V, S, DF",
                          range: "unlimited", area: "", targets: "one living creature",
                          duration: "see text",
                          savingThrow: "see text;", sr: true,
                          summary: "When the target of demon dream is a worshiper of a demon lord or Lamashtu, the caster has the option of making the spell function instead as a",
                          desc: "When the target of demon dream is a worshiper of a demon lord or Lamashtu, the caster has the option of making the spell function instead as a",
                          source: "Pathfinder Comics #10", isPremium: true)
        )
        try await db.insertSpell(
        .make("Summon Barghest I", school: "Conjuration (Summoning)", levels: "cleric 4, oracle 4, warpriest 4",
                          castingTime: "1 round", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one summoned barghest", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell summons a barghest from the Abyssal realm of Basalfeyst to serve the caster, functioning similarly to summon monster save that it may only be used to summon a single barghest.",
                          desc: "This spell summons a barghest from the Abyssal realm of Basalfeyst to serve the caster, functioning similarly to summon monster save that it may only be used to summon a single barghest. Although the summoned barghest does not have the feed ability, if you are at least caster level 9th the summoned barghest appears with 2 growth points (and with it the appropriate bonuses to its attacks, CMB, saves, skill checks, hit points, and caster level).",
                          source: "Pathfinder Comics #10", isPremium: true)
        )
        try await db.insertSpell(
        .make("Summon Barghest II", school: "Conjuration (Summoning)", levels: "cleric 4, oracle 4, warpriest 4",
                          castingTime: "1 round", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one summoned barghest", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like summon barghest I , save that it can summon 1 greater barghest or 1d3 normal barghests with 2 growth points each.",
                          desc: "This spell functions like summon barghest I , save that it can summon 1 greater barghest or 1d3 normal barghests with 2 growth points each.",
                          source: "Pathfinder Comics #10", isPremium: true)
        )
        try await db.insertSpell(
        .make("Teratoid Caress", school: "Conjuration (Calling)", levels: "cleric 3, oracle 3, warpriest 3",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "1 living non-evil creature",
                          duration: "permanent",
                          savingThrow: "Fortitude partial;", sr: true,
                          summary: "With a gentle caress, you infuse the creature touched with a blight of energy from the Abyss that feeds upon goodness and transforms flesh into monstrous deformity.",
                          desc: "With a gentle caress, you infuse the creature touched with a blight of energy from the Abyss that feeds upon goodness and transforms flesh into monstrous deformity. The target can resist a teratoid caress with a successful Fortitude save, but even on a successful save, the target becomes sickened for 1 round by the vile energies. If the target fails the save, his body becomes infected with Abyssal energy and a small portion of his body distorts and grows hideous, inflicting 2 points of Dexterity damage or 2 points of Charisma damage (50% chance of either effect). This deformity is always unsightly and offensive. Thereafter, the victim suffers a -1 penalty on all saving throws against evil effects. Worse, whenever the victim casts a good spell, channels positive energy, or offers a prayer to a good-aligned deity, the Abyssal energies seethe inside him, forcing a new Fortitude save to resist suffering an additional 1 point of Dexterity or Charisma damage. A good-aligned divine spellcaster who suffers from this curse suffers a -4 penalty on all concentration checks. This is a curse effect, but the effect can also be instantly removed with a",
                          source: "Pathfinder Comics #10", isPremium: true),

                    // // MARK: - Pathfinder Society Field Guide
        )
        try await db.insertSpell(
        .make("Aram Zey's Focus", school: "Divination", levels: "alchemist 2, arcanist 2, bard 2, investigator 2, skald 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, F (masterwork thieves’ tools worth 100 gp)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "Aram Zey created this spell for use by his students, both to increase their confidence in their skills and to ensure more of them survived encounters with deadly traps.",
                          desc: "Aram Zey created this spell for use by his students, both to increase their confidence in their skills and to ensure more of them survived encounters with deadly traps. If you don’t have the trapfinding class ability, this spell grants you the trapfinding ability of a rogue of half your character level. If you have the trapfinding ability granted by class levels, however, this spell grants you a +5 competence bonus on all Disable Device checks made to disarm mechanical (but not magical) traps. While under the effects of Aram Zey’s focus , whenever you trigger a trap by rolling poorly on a Disable Device check, you may roll a second Disable Device check. This new roll uses the same modifiers as the first roll. If your second roll is high enough to avoid accidentally springing the trap, you avoid setting it off, but still fail to disarm it. Each time you take advantage of this feature, the remaining duration of the spell is reduced by 1 minute—if less than a minute’s worth of duration remains, the spell ends as soon as you reroll your Disable Device check.",
                          source: "Pathfinder Society Field Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Aram Zey's Trap Ward", school: "Abjuration", levels: "arcanist 4, sorcerer 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (masterwork thieves’ tools worth 100 gp)",
                          range: "personal", area: "", targets: "you",
                          duration: "10 minutes/level or until discharged",
                          savingThrow: "None", sr: false,
                          summary: "While he was researching the underlying causes of the resonance created by overlapping abjurations, Aram Zey discovered a way to manipulate that resonance to the caster’s advantage when encountering…",
                          desc: "While he was researching the underlying causes of the resonance created by overlapping abjurations, Aram Zey discovered a way to manipulate that resonance to the caster’s advantage when encountering magical traps. The protection provided by Aram Zey’s trap ward comes into play whenever the caster is subjected to the effects of a magical trap. The spell immediately discharges and interferes with the trap’s function in an attempt to counter the trap’s magic. When this occurs, make a caster level check as an immediate action. The DC of this check is equal to the trap’s Disable Device DC. If you’re successful, the trap ward dispels the magical effect of the trap before the effect actually manifests, effectively preventing the trap from triggering for the next 1d4 rounds and ending",
                          source: "Pathfinder Society Field Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Bite the Hand", school: "Enchantment (Compulsion)", levels: "arcanist 4, druid 3, hunter 3, inquisitor 3, sorcerer 4, summoner 3, summoner (unchained) 3, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature summoned by a spell or spell-like ability",
                          duration: "1 round/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "With a short command and a wave of the hand, you compel the target creature to attack the being who summoned it, to the best of its ability.",
                          desc: "With a short command and a wave of the hand, you compel the target creature to attack the being who summoned it, to the best of its ability. If the being who summoned it is not present, the creature acts normally according to its last task or instructions. This spell has no effect on called creatures, summoned creatures not brought forth by spells or spell-like abilities (such as a summoner’s eidolon), or bonded creatures not explicitly summoned, such as a paladin’s mount or wizard’s familiar. Bite the Hand, Mass",
                          source: "Pathfinder Society Field Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Bite the Hand, Mass", school: "Enchantment (Compulsion)", levels: "arcanist 4, druid 3, hunter 3, inquisitor 3, sorcerer 4, summoner 3, summoner (unchained) 3, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature summoned by a spell or spell-like ability",
                          duration: "1 round/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions like bite the hand , except as noted above. The target creatures do not need to have all been summoned by the same being.",
                          desc: "This spell functions like bite the hand , except as noted above. The target creatures do not need to have all been summoned by the same being.",
                          source: "Pathfinder Society Field Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Corpse Lanterns", school: "Necromancy", levels: "arcanist 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "up to 4 lights, all within a 10-ft.-radius area", targets: "",
                          duration: "1 minute/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as dancing lights , except it summons up to four spheres of light, each of which glows a sickly pale green. These",
                          desc: "This spell functions as dancing lights , except it summons up to four spheres of light, each of which glows a sickly pale green. These",
                          source: "Pathfinder Society Field Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Gilded Whispers", school: "Divination", levels: "arcanist 3, cleric 4, oracle 4, sorcerer 3, warpriest 4, wizard 3",
                          castingTime: "1 round", components: "V, S, M (100 gp of powdered gemstones)",
                          range: "touch", area: "", targets: "a gold or platinum coin",
                          duration: "1 day/level (D)",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "Developed by priests of Abadar to catch thieves and skimmers, gilded whispers later spread to other faiths and was adapted to the arcane arts through the combined efforts of Aram Zey and Kreighton…",
                          desc: "Developed by priests of Abadar to catch thieves and skimmers, gilded whispers later spread to other faiths and was adapted to the arcane arts through the combined efforts of Aram Zey and Kreighton Shaine. Pathfinders most commonly use this spell to track bribes and illicit purchases back to their ultimate source, especially when they suspect the influence of Aspis Consortium agents.",
                          source: "Pathfinder Society Field Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Lipstitch", school: "Necromancy", levels: "arcanist 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "S, M (a bone needle and sinew thread)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "A rare spell without verbal components, lipstitch sews the target’s lips tightly together if it fails a saving throw, such that no clear speech, bite attacks, spellcasting, or use of command words is…",
                          desc: "A rare spell without verbal components, lipstitch sews the target’s lips tightly together if it fails a saving throw, such that no clear speech, bite attacks, spellcasting, or use of command words is possible. The target takes 1d6 points of damage as the stitches weave through flesh. The victim can still make enough noise to be heard at a distance with a DC 10 Perception check. The thread created by lipstitch can be burst with a DC 20 Strength check as a standard action or can be sliced open with a piercing or slashing weapon (wielded by the target or an ally) as a full-round action. Cutting the thread provokes attacks of opportunity, while making a Strength check does not. Either option causes 1d6 points of damage and 1 point of bleed damage. The target has a 20% chance of failing to cast spells with verbal components until the bleeding is stopped. The effects of multiple castings of this spell do not stack. Optionally, the thread can be removed more carefully over the course of a minute with a DC 20 Heal check. If the check fails, the target takes damage and bleeds as described above. If the check succeeds, the stitches are removed with no harm. Creatures with no mouths are unaffected by",
                          source: "Pathfinder Society Field Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Petulengro's Validation", school: "Divination", levels: "alchemist 1, inquisitor 1, investigator 1",
                          castingTime: "1 standard action", components: "V, S, M (a bit of hair, a fingernail, or a similar portion of a creature)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: true,
                          summary: "After a particularly harrowing brush with death at the hands of doppelgangers, Venture-Captain Eliza Petulengro devised a means of being sure her companions were actually who they appeared to be.",
                          desc: "After a particularly harrowing brush with death at the hands of doppelgangers, Venture-Captain Eliza Petulengro devised a means of being sure her companions were actually who they appeared to be. To cast this spell, you must have a bit of hair, a fingernail clipping, or some other portion of a creature. The sample must be no more than 1 week old per caster level. As part of casting, you touch the target creature, and instantly know whether the target is the same creature the sample is from. Note that if you wish to be discrete, you can cast the spell away from the target and hold the charge before touching the creature, so that the casting is not noticed. You can also use this spell to divine whether a dead body, or even partial remains from a body, belonged to the same person whose fingernail clipping or bit of hair you used when casting the spell.",
                          source: "Pathfinder Society Field Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sequester Thoughts", school: "Enchantment (Compulsion)", levels: "arcanist 5, bard 3, skald 3, sorcerer 5, wizard 5",
                          castingTime: "10 minutes", components: "V, S, M (a gemstone worth at least 500 gp)",
                          range: "personal", area: "", targets: "one willing creature",
                          duration: "permanent until discharged (see text)",
                          savingThrow: "None", sr: false,
                          summary: "Sequester thoughts allows you to erase a creature’s memory of either an event lasting not more than 1 minute per caster level or all of its knowledge about a single topic (using the GM’s discretion…",
                          desc: "Sequester thoughts allows you to erase a creature’s memory of either an event lasting not more than 1 minute per caster level or all of its knowledge about a single topic (using the GM’s discretion as to what constitutes a single topic). For example, you could erase a single battle from a creature’s memory, or all knowledge of a plot to assassinate a king. The memories you remove are stored within the gem used at the time of casting. If the gem is shattered, the memories return to the creature as long as the two are within 30 feet of each other. Once sequester thoughts has been cast, the spell remains active on the gem and can be dispelled (which shatters it). No portion of the spell remains active on the target creature, and the target does not radiate magic as a consequence of the spell, nor can its memories be returned by dispelling the creature or subjecting it to antimagic. If the gem is shattered or dispelled out of range from the creature, the thoughts sequestered within are forever lost save by the use of",
                          source: "Pathfinder Society Field Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sharesister", school: "Necromancy", levels: "cleric 3, oracle 3, warpriest 3, witch 3",
                          castingTime: "1 standard action", components: "V, S, M (a drop of your own blood)",
                          range: "touch", area: "", targets: "you and one creature of your gender",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "Ithuna Vardsdottir claims to have unearthed this ancient prayer in a ruined temple of Desna, though Pathfinders have reported the use of similar magic in Irrisen among the White Witches.",
                          desc: "Ithuna Vardsdottir claims to have unearthed this ancient prayer in a ruined temple of Desna, though Pathfinders have reported the use of similar magic in Irrisen among the White Witches. While the name of this spell is sharesister , it works equally well on male or female creatures—both targets of the spell must simply be of the same gender. When you deliver the spell, you receive a negative level for the duration of the spell, and the other target receives a +1 insight bonus to her caster level and a +1 insight bonus to the save DCs of all of her spells. At 11th level, you can opt to take four negative levels to grant a +2 insight bonus to the other target’s caster level and spell save DCs if you wish, while at 17th level you can take 6 negative levels to increase the insight bonus to +3. Any effect that removes or prevents the negative level immediately ends the",
                          source: "Pathfinder Society Field Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Stalwart Resolve", school: "Enchantment (Compulsion)", levels: "alchemist 2, cleric 2, inquisitor 1, investigator 2, oracle 2, paladin 1, warpriest 2, witch 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 round/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "Stalwart resolve was originally created to temporarily aid those suffering from certain afflictions.",
                          desc: "Stalwart resolve was originally created to temporarily aid those suffering from certain afflictions. The recipient of stalwart resolve ignores the effects of ability damage and penalties to a single ability score of your choice, except that damage equal to or greater than the ability score still causes unconsciousness or death. This applies whether or not the ability damage or penalty happened before or during the spell’s duration, and whether or not multiple sources are involved. This spell has no effect on ability drain.",
                          source: "Pathfinder Society Field Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Stolen Light", school: "Illusion (Figment)", levels: "arcanist 3, bard 3, redmantisassassin 3, skald 3, sorcerer 3, wizard 3",
                          castingTime: "1 full round", components: "V, S, F (a gem worth at least 500 gp)",
                          range: "touch", area: "", targets: "transparent gem touched",
                          duration: "permanent or 1 minute/level (see text)",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "Kreighton Shaine researched this spell from the fragmentary notes of a Vudrani ascetic recorded in a strange tome, and rumors credit him with no fewer than a dozen permanent stolen light gems hidden…",
                          desc: "Kreighton Shaine researched this spell from the fragmentary notes of a Vudrani ascetic recorded in a strange tome, and rumors credit him with no fewer than a dozen permanent stolen light gems hidden in compartments and drawers in his study.",
                          source: "Pathfinder Society Field Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Twisted Innards", school: "Transmutation", levels: "alchemist 2, investigator 2, magus 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a cocoon tied with string)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "For the duration of this spell, your vital organs writhe, shift, and move about, making it difficult to strike you in a vulnerable area.",
                          desc: "For the duration of this spell, your vital organs writhe, shift, and move about, making it difficult to strike you in a vulnerable area. While this spell is in effect, critical hits and sneak attacks against you have a 25% chance of failing to inflict any additional damage—though you still take the normal damage from the attack. At 7th level, the chance to ignore additional damage increases to 50%, while at 13th level the chance increases to 75%.",
                          source: "Pathfinder Society Field Guide", isPremium: true),

                    // // MARK: - Pathfinder Society Primer
        )
        try await db.insertSpell(
        .make("Cauterizing Weapon", school: "Transmutation", levels: "arcanist 3, bard 2, hunter 2, magus 2, ranger 2, redmantisassassin 3, skald 2, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a gobbet of melted wax)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one weapon or 50 projectiles, all of which must be together at the time of casting",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "You infuse a weapon with faint but pernicious energy that stymies accelerated healing.",
                          desc: "You infuse a weapon with faint but pernicious energy that stymies accelerated healing. Damage dealt by the weapon or ammunition is treated as acid, cold, electricity, and fire, but only for the purpose of negating a creature’s regeneration. The weapon is also treated as silver and cold iron at 8th level and is treated as chaotic, evil, good, and lawful at 11th level for the purpose of negating regeneration.",
                          source: "Pathfinder Society Primer", isPremium: true)
        )
        try await db.insertSpell(
        .make("Collaborative Thaumaturgy", school: "Universal", levels: "arcanist 3, bard 3, cleric 3, druid 3, hunter 3, magus 3, oracle 3, skald 3, sorcerer 3, summoner 3, summoner (unchained) 3, warpriest 3, witch 3, wizard 3",
                          castingTime: "1 immediate action", components: "V, S, F (a bronze tuning fork)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "None", sr: false,
                          summary: "You tap into the magical resonance between you and your allies to enhance one another’s magic.",
                          desc: "You tap into the magical resonance between you and your allies to enhance one another’s magic. Cast this spell when an ally casts a spell at least 1 level lower than the highest-level spell she can cast. The ally casts her spell as if one of the following metamagic feats were applied to it without increasing the spell level or casting time: Enlarge Spell, Extend Spell, Silent Spell, or Still Spell. If the ally is the target of two",
                          source: "Pathfinder Society Primer", isPremium: true)
        )
        try await db.insertSpell(
        .make("Kreighton's Perusal", school: "Divination", levels: "arcanist 1, bard 1, cleric 1, magus 1, oracle 1, skald 1, sorcerer 1, warpriest 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "book touched",
                          duration: "instantaneous",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "You gain a brief but incomplete understanding of one book’s contents, equivalent to having skimmed its pages for 1 hour.",
                          desc: "You gain a brief but incomplete understanding of one book’s contents, equivalent to having skimmed its pages for 1 hour. This insight is not sufficient to translate unknown languages, decipher codes, or memorize text, but it does allow the caster to learn what topics the book discusses— invaluable to a Pathfinder who must make a snap decision when performing research or deciding whether or not to abscond with a volume. In addition, you instantly benefit from any bonuses or effects the book would normally grant to anyone who reads it for 1 hour (such as the bonuses gained from reading volumes of the",
                          source: "Pathfinder Society Primer", isPremium: true)
        )
        try await db.insertSpell(
        .make("Page-Bound Epiphany", school: "Divination", levels: "arcanist 2, bard 2, cleric 2, magus 2, oracle 2, skald 2, sorcerer 2, warpriest 2, wizard 2",
                          castingTime: "1 round", components: "V, S, F (a book with blank pages)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level (see text)",
                          savingThrow: "none;", sr: false,
                          summary: "You magically scour the world’s libraries for information that might refresh your memory about a topic.",
                          desc: "You magically scour the world’s libraries for information that might refresh your memory about a topic. Upon casting this spell, the focus book’s pages fill with snippets and selections from countless books. You can spend up to 1 round per caster level (maximum 10) reading these notes. You may cease reading at any time, and when you do you can immediately attempt one Knowledge check with a +1 circumstance bonus for each round you spent studying the book (maximum +10). The writing disappears when the spell ends, and if you fail to succeed at a Knowledge check on the round you stop reading the notes, you don’t gain the benefits of this spell.",
                          source: "Pathfinder Society Primer", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sure Casting", school: "Divination", levels: "arcanist 1, bard 1, cleric 1, inquisitor 1, oracle 1, skald 1, sorcerer 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, F (a square of cloth and a needle)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round (see text)",
                          savingThrow: "None", sr: false,
                          summary: "You gain temporary insight into your enemies’ magical defenses.",
                          desc: "You gain temporary insight into your enemies’ magical defenses. When you next cast a spell before the end of the next round, treat your caster level as 5 higher than normal for the purpose of overcoming spell resistance. This bonus doesn’t increase any other effects that depend on caster level, such as the spell’s damage or range, and affects only the first spell cast after",
                          source: "Pathfinder Society Primer", isPremium: true)
        )
        try await db.insertSpell(
        .make("Tactical Miscalculation", school: "Enchantment (Compulsion)", levels: "bard 2, hunter 2, inquisitor 2, ranger 2, skald 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "see text;", sr: true,
                          summary: "The target becomes fixated on avoiding damage and fails to spot even the most opportune moments to attack.",
                          desc: "The target becomes fixated on avoiding damage and fails to spot even the most opportune moments to attack. Whenever a creature the target threatens would provoke an attack of opportunity from the target, the target must succeed at a Will save or be unable to make the attack of opportunity against that creature.",
                          source: "Pathfinder Society Primer", isPremium: true),

                    // // MARK: - People of the River
        )
        try await db.insertSpell(
        .make("Alter River", school: "Transmutation", levels: "arcanist 5, cleric 4, druid 4, hunter 4, oracle 4, sorcerer 5, warpriest 4, wizard 5",
                          castingTime: "1 standard action", components: "S, V, M (silt from a dry riverbed)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "area of river up to 5 ft. wide/2 levels and 10 ft. long/level",
                          duration: "1 minute/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You alter the flow of water in a natural freshwater channel such as a river, stream, or waterfall. The first version of this spell alters the speed of a river’s flow.",
                          desc: "You alter the flow of water in a natural freshwater channel such as a river, stream, or waterfall. The first version of this spell alters the speed of a river’s flow. The second diverts the course of the targeted river. Alter Current : The river’s current increases or decreases in speed by up to 1 mile per hour per 2 caster levels you possess. A typical placid river travels at a rate of up to 2 mph (no effect on local movement); a swift river travels 2–4 mph, moving creatures and objects 10 to 40 feet downstream per round; and an area of river rapids travels 7–10 mph, moving creatures and objects 60 to 90 feet downstream per round. Altering the speed of the current alters the difficulty of swimming in the water accordingly.",
                          source: "People of the River", isPremium: true)
        )
        try await db.insertSpell(
        .make("Detect Metal", school: "Divination", levels: "alchemist 1, arcanist 1, bard 1, investigator 1, skald 1, sorcerer 1, summoner 1, summoner (unchained) 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, F (a magnetized nail or nugget of ore)",
                          range: "60 ft.", area: "cone-shaped emanation", targets: "",
                          duration: "concentration, up to 1 minute/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You detect any metal objects or creatures within a 60-foot cone.",
                          desc: "You detect any metal objects or creatures within a 60-foot cone. You can specify all metal objects or one or more specific types of metal (such as silver, cold iron, or a type of skymetal) when you cast this spell; in the case of the latter, you detect only objects or creatures made of the specified metal.",
                          source: "People of the River", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hanspur's Flotsam Vessel", school: "Conjuration (Creation)", levels: "cleric 2, druid 2, hunter 1, oracle 2, ranger 1, summoner 1, summoner (unchained) 1, warpriest 2",
                          castingTime: "1 minute", components: "V, S, M (driftwood branch or river rat’s tail)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "raft large enough for caster and one passenger/2 levels", targets: "",
                          duration: "1 hour/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell assembles a sturdy raft and oars from driftwood, reeds, and other river detritus.",
                          desc: "This spell assembles a sturdy raft and oars from driftwood, reeds, and other river detritus. The smallest raft created by the spell is roughly 5 feet square, increasing by an additional 5 feet square for every 2 caster levels you possess. Each 5-foot section of the raft can carry two Medium passengers or 300 pounds of cargo. The vessel functions as a normal raft, except it is not slowed or damaged by nonmagical river hazards such as rapids or shallows, and it is always considered to be traveling downstream for the purpose of calculating travel speed, regardless of its actual direction.",
                          source: "People of the River", isPremium: true)
        )
        try await db.insertSpell(
        .make("Magnetic Field", school: "Abjuration", levels: "alchemist 6, arcanist 7, cleric 7, investigator 6, magus 6, oracle 7, sorcerer 7, summoner 6, summoner (unchained) 6, witch 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S",
                          range: "30 ft.", area: "30-ft.-radius emanation", targets: "",
                          duration: "1 round/2 levels (D)",
                          savingThrow: "Reflex negates (object, see text);", sr: true,
                          summary: "You create a spherical magnetic field that surrounds you to a range of 30 feet and follows you for the duration of the spell.",
                          desc: "You create a spherical magnetic field that surrounds you to a range of 30 feet and follows you for the duration of the spell. Unattended metal objects in range—including weapons, armor, and anything made primarily out of metal—are pulled violently toward you, stopping just short of your space and falling harmlessly to the ground. Objects secured to a nonmetallic fixture remain where they are unless a forceful tug would be enough to detach them. Loose objects weighing more than 500 pounds are not affected. If the magnetic field would cause a dangerous metal object such as a sword or anvil to intersect a square occupied by a creature, that creature must succeed at a Reflex save or take damage as if from an improvised weapon of the object’s size (or smaller or larger, at the GM’s discretion). A creature in the area wearing metal armor, wielding a metal weapon, or holding a metal object must succeed at a Reflex save or be dragged 5 feet closer to you in a straight line, as if affected by the pull universal monster rule (Bestiary 303). A creature can drop a metal object it’s holding as a free action to avoid the effect if it’s not wearing metal armor; a creature being dragged by its shield can loosen it as a move action and drop it as a free action. Creatures made entirely or mostly of metal take a –2 penalty on their Reflex saves. Creatures that fail their saves by 5 or more are pulled an additional 5 feet closer for every increment of 5 by which they failed their saves.",
                          source: "People of the River", isPremium: true)
        )
        try await db.insertSpell(
        .make("Resounding Clang", school: "Transmutation", levels: "bard 2, skald 2",
                          castingTime: "1 standard action", components: "S, F (bell, chimes, gong, or cymbals)",
                          range: "30 ft.", area: "30-ft.-radius burst, centered on you", targets: "",
                          duration: "1 round/level",
                          savingThrow: "Reflex negates;", sr: true,
                          summary: "You create a loud, resonating clangor that causes metallic objects to vibrate wildly.",
                          desc: "You create a loud, resonating clangor that causes metallic objects to vibrate wildly. Affected creatures wielding metal weapons take a –1 penalty on attack rolls, while creatures using metallic tools take a –1 penalty on associated skill checks. Creatures wearing metal armor increase the armor check penalty of their armor by 1. These penalties increase by 1 at 8th caster level and every 4 caster levels thereafter (to a maximum of –4 at 16th level). To be affected by the spell, an item must be composed primarily of metal. Nonmetallic objects with metal components (such as studded leather armor or padded armor with armor spikes) are not affected. Creatures made of metal take the penalties described above on attack rolls, damage rolls, skill checks, and Reflex saves.",
                          source: "People of the River", isPremium: true)
        )
        try await db.insertSpell(
        .make("Riversight", school: "Divination (Scrying)", levels: "cleric 3, druid 2, hunter 2, inquisitor 3, oracle 3, ranger 2, warpriest 3, witch 3",
                          castingTime: "1 minute", components: "V, S, F/DF (a smooth river stone)",
                          range: "see text", area: "magical sensor", targets: "nonmagical freshwater waterway",
                          duration: "1 minute/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You can view events transpiring along a natural watercourse you touch.",
                          desc: "You can view events transpiring along a natural watercourse you touch. You can see anything on or within the river as if you were present at that location, or you can observe anything happening within 15 feet of the river’s banks as if peering from the water’s surface. Moving your point of view to a different location along the river is a standard action, though your perception can follow something moving along the river as a free action. The range of this spell is affected by whether you are attempting to gaze up or downriver—if viewing a location downriver, you can view any spot within 2 miles per caster level; if viewing upriver, you can view any spot within 1/2 mile per caster level. The magical sensor created by this spell can travel only as far along the river as your range and the river permits; obstructions such as dams and reservoirs halt the sensor, as does an estuary flowing into the sea or other body of saltwater.",
                          source: "People of the River", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sabotage Construct", school: "Transmutation", levels: "arcanist 6, bard 5, inquisitor 5, skald 5, sorcerer 6, witch 6, wizard 6",
                          castingTime: "1 standard action", components: "S, V",
                          range: "touch", area: "", targets: "all constructs in a 15-ft.-radius burst",
                          duration: "1 round/level",
                          savingThrow: "Will partial;", sr: true,
                          summary: "This spell functions as confusion , except that it affects only constructs. When you are rolling for a confused construct’s behavior, a result of 26–50 indicates the construct twitches spasmodically.",
                          desc: "This spell functions as confusion , except that it affects only constructs. When you are rolling for a confused construct’s behavior, a result of 26–50 indicates the construct twitches spasmodically. On a successful Will save, the construct is confused for only 1 round.",
                          source: "People of the River", isPremium: true),

                    // // MARK: - People of the Sands
        )
        try await db.insertSpell(
        .make("Inner Focus", school: "Illusion (Glamer)", levels: "adept 2, antipaladin 1, cleric 2, druid 2, hunter 1, inquisitor 2, oracle 2, paladin 1, ranger 1, warpriest 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "10 minutes/level",
                          savingThrow: "none (harmless);", sr: false,
                          summary: "For the duration of this spell, you may ignore any divine focus components of your spells, allowing you to cast such spells without holding or revealing your holy or unholy symbol.",
                          desc: "For the duration of this spell, you may ignore any divine focus components of your spells, allowing you to cast such spells without holding or revealing your holy or unholy symbol.",
                          source: "People of the Sands", isPremium: true)
        )
        try await db.insertSpell(
        .make("Storm of Blades", school: "Conjuration (Creation)", levels: "arcanist 2, cleric 3, magus 2, oracle 3, sorcerer 2, warpriest 3, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a sword)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "You create floating swords of the type used as the material component for this spell (such as a rapier or scimitar) and magically propel them at your target.",
                          desc: "You create floating swords of the type used as the material component for this spell (such as a rapier or scimitar) and magically propel them at your target. You can create one sword for every 2 caster levels that you possess, up to a maximum of five swords at 10th level. You must have line of effect between you and the target, and the target must be within the spell’s range. You make a ranged attack roll for each sword (with no penalties for range increments or using melee weapons as ranged weapons); each attack has the same threat range and critical modifier and deals the same damage as a standard sword of the type expended. Swords created by this spell disappear after striking (or missing) their targets.",
                          source: "People of the Sands", isPremium: true)
        )
        try await db.insertSpell(
        .make("Summon Genie", school: "Conjuration (Summoning)", levels: "arcanist 4, cleric 4, oracle 4, sorcerer 4, summoner 3, summoner (unchained) 3, warpriest 4, witch 4, wizard 4",
                          castingTime: "1 round", components: "V, S, F/DF (an oil lamp worth at least 50 gp)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one summoned genie", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like lesser summon genie , except you can summon one djnni or 1d3 jann. Summon Genie, Greater",
                          desc: "This spell functions like lesser summon genie , except you can summon one djnni or 1d3 jann. Summon Genie, Greater",
                          source: "People of the Sands", isPremium: true)
        )
        try await db.insertSpell(
        .make("Summon Genie, Greater", school: "Conjuration (Summoning)", levels: "arcanist 4, cleric 4, oracle 4, sorcerer 4, summoner 3, summoner (unchained) 3, warpriest 4, witch 4, wizard 4",
                          castingTime: "1 round", components: "V, S, F/DF (an oil lamp worth at least 50 gp)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one summoned genie", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like lesser summon genie , except you can summon one shaitan, 1d3 djnn or 1d4+1 jann.",
                          desc: "This spell functions like lesser summon genie , except you can summon one shaitan, 1d3 djnn or 1d4+1 jann.",
                          source: "People of the Sands", isPremium: true)
        )
        try await db.insertSpell(
        .make("Summon Genie, Lesser", school: "Conjuration (Summoning)", levels: "arcanist 4, cleric 4, oracle 4, sorcerer 4, summoner 3, summoner (unchained) 3, warpriest 4, witch 4, wizard 4",
                          castingTime: "1 round", components: "V, S, F/DF (an oil lamp worth at least 50 gp)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one summoned genie", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like summon monster I , except you can summon one janni.",
                          desc: "This spell functions like summon monster I , except you can summon one janni.",
                          source: "People of the Sands", isPremium: true),

                    // // MARK: - People of the Stars
        )
        try await db.insertSpell(
        .make("Cosmic Ray", school: "Evocation", levels: "arcanist 6, magus 5, sorcerer 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S, M (a piece of meteorite)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "ray", targets: "",
                          duration: "instantaneous and 1 round/level (see text)",
                          savingThrow: "Fortitude partial;", sr: true,
                          summary: "You fling a ray of deadly cosmic energy at the target creature.",
                          desc: "You fling a ray of deadly cosmic energy at the target creature. If you succeed at a ranged touch attack with the ray, the target takes 1d6 points of damage per caster level (maximum 20d6) and must make a Fortitude save. On a failed save, the target becomes sickened for 1 round per caster level and emits toxic cosmic energy for as long as it is sickened; any creature that comes within 5 feet of the affected target must succeed at a Fortitude save (DC = spell’s DC) or become sickened for 1 round per 2 caster levels.",
                          source: "People of the Stars", isPremium: true)
        )
        try await db.insertSpell(
        .make("Gravity Sphere", school: "Transmutation", levels: "arcanist 5, druid 6, hunter 6, sorcerer 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (a marble)",
                          range: "medium (100 ft. + 10 ft./level)", area: "30-ft.-radius sphere of altered gravity", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none (see text);", sr: false,
                          summary: "You affect the local gravity field in a 30-foot-radius sphere around the spell’s designated point of origin.",
                          desc: "You affect the local gravity field in a 30-foot-radius sphere around the spell’s designated point of origin. Creatures in the affected area can be weighed down by high gravity, lightened by low gravity, or left to float in an area with no gravity, depending on the effect you choose for your gravity sphere . See page 18 for rules on the effects of high, low, and no gravity. Creatures that fall within the area of a",
                          source: "People of the Stars", isPremium: true)
        )
        try await db.insertSpell(
        .make("Planetarium", school: "Illusion (Figment)", levels: "arcanist 2, bard 2, cleric 2, druid 2, hunter 2, oracle 2, skald 2, sorcerer 2, summoner 2, summoner (unchained) 2, warpriest 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "15-ft.-radius spherical projection of night sky", targets: "",
                          duration: "concentration + 3 rounds",
                          savingThrow: "none;", sr: false,
                          summary: "You project an image of the night sky based on your current location and the local time, allowing you to observe the heavens and all of its celestial bodies and features even during the daytime,…",
                          desc: "You project an image of the night sky based on your current location and the local time, allowing you to observe the heavens and all of its celestial bodies and features even during the daytime, indoors, or underground. Anyone within the planetarium ’s sphere can see the projection, though outside of the sphere the image becomes grainy and indistinct.",
                          source: "People of the Stars", isPremium: true)
        )
        try await db.insertSpell(
        .make("Planetary Adaptation, Mass", school: "Transmutation", levels: "alchemist 5, arcanist 5, cleric 4, investigator 5, oracle 4, sorcerer 5, summoner 5, summoner (unchained) 5, warpriest 4, wizard 5",
                          castingTime: "1 standard action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "1 hour/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions as planetary adaptation , except as noted above.",
                          desc: "This spell functions as planetary adaptation , except as noted above.",
                          source: "People of the Stars", isPremium: true)
        )
        try await db.insertSpell(
        .make("Reboot", school: "Transmutation", levels: "arcanist 5, cleric 5, oracle 5, sorcerer 5, summoner 4, summoner (unchained) 4, warpriest 5, witch 5, wizard 5",
                          castingTime: "1 round", components: "V, S, F (a ruby worth at least 25 gp per HD of the target construct)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one destroyed construct of up to 2 HD/level",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "Whispering in the dense, information-rich machine language of the First Ones, you bring a destroyed construct back to operational status for a short time, restoring it to 1 hit point.",
                          desc: "Whispering in the dense, information-rich machine language of the First Ones, you bring a destroyed construct back to operational status for a short time, restoring it to 1 hit point. The construct can be further healed with spells like make whole , but it returns to its destroyed state as soon as this spell’s duration expires or it is brought to 0 hit points, whichever comes first. As long as the construct is active, it obeys your commands to the best of its ability, fighting on your behalf and carrying out tasks that it is capable of performing. Constructs with more than twice as many Hit Dice as your caster level cannot be targeted by this spell.",
                          source: "People of the Stars", isPremium: true)
        )
        try await db.insertSpell(
        .make("Starsight", school: "Divination", levels: "alchemist 1, arcanist 1, bard 1, cleric 1, druid 1, hunter 1, investigator 1, oracle 1, ranger 1, skald 1, sorcerer 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "10 minutes/level",
                          savingThrow: "None", sr: false,
                          summary: "You can observe the night sky and all of its celestial bodies as if it were a clear night, regardless of weather conditions that would otherwise block your view.",
                          desc: "You can observe the night sky and all of its celestial bodies as if it were a clear night, regardless of weather conditions that would otherwise block your view. Your vision penetrates any light pollution from nonmagical sources, though this spell doesn’t function in daylight, indoors, or underground. You see through forest canopies and similar natural obstructions, but only for the purpose of stargazing. For the spell’s duration, you gain a +2 insight bonus on Knowledge (geography) checks relating to the stars and planets and Survival checks to avoid getting lost.",
                          source: "People of the Stars", isPremium: true),

                    // // MARK: - People of the Stars, Distant Worlds
        )
        try await db.insertSpell(
        .make("Planetary Adaptation", school: "Transmutation", levels: "alchemist 5, arcanist 5, cleric 4, investigator 5, oracle 4, sorcerer 5, summoner 5, summoner (unchained) 5, warpriest 4, wizard 5",
                          castingTime: "1 standard action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "1 hour/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions as planar adaptation ( Pathfinder RPG Advanced Player’s Guide 236), except that it works only on worlds of the Material Plane.",
                          desc: "This spell functions as planar adaptation ( Pathfinder RPG Advanced Player’s Guide 236), except that it works only on worlds of the Material Plane. The cold void of space is considered a single world for the purpose of this spell, allowing you to survive in vacuum. Planetary Adaptation, Mass",
                          source: "People of the Stars, Distant Worlds", isPremium: true),

                    // // MARK: - People of the Wastes
        )
        try await db.insertSpell(
        .make("Absorbing Barrier", school: "Abjuration", levels: "alchemist 4, arcanist 4, investigator 4, sorcerer 4, summoner 4, summoner (unchained) 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, F (a jagged scrap of metal)",
                          range: "medium (100 ft. + 10 ft./level)", area: "40-ft.-radius sphere; see text (S)", targets: "",
                          duration: "1 hour/level or until discharged",
                          savingThrow: "none (harmless);", sr: false,
                          summary: "You ward all creatures and objects in the area from ranged weapons.",
                          desc: "You ward all creatures and objects in the area from ranged weapons. The spell’s area of effect is often a sphere, although you can shape it to be smaller than the maximum area or to exclude certain adjacent areas or objects (for example, if you are warding a specific structure, or if you are roughly warding the front lines of a battlefield). This spell’s area is also up to 40 feet in height, so flying creatures benefit as long as they are in this area of effect. Creatures and objects in the warded area gain damage reduction 20/magic against ranged weapons. Once the spell has prevented a total of 20 points of damage per caster level (maximum 200 points) to creatures and objects in the area, it is discharged.",
                          source: "People of the Wastes", isPremium: true)
        )
        try await db.insertSpell(
        .make("Drain Construct", school: "Necromancy", levels: "arcanist 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one construct",
                          duration: "1 round/level (D)",
                          savingThrow: "Will negates;", sr: false,
                          summary: "You weaken a target construct, temporarily sapping its animating force and limiting its normal functionality.",
                          desc: "You weaken a target construct, temporarily sapping its animating force and limiting its normal functionality. If the construct fails its saving throw, for the duration of this spell, it loses any damage reduction and fast healing it had and its base speed is reduced by half. Additionally, the construct takes a –4 penalty to Strength while this spell is in effect. This penalty increases by 2 for every 3 caster levels beyond 3rd (maximum –14). If the construct is normally immune to magic, this spell’s sapping effect is less penetrating and the construct receives a +4 bonus on its saving throw.",
                          source: "People of the Wastes", isPremium: true)
        )
        try await db.insertSpell(
        .make("Forced Mutation", school: "Transmutation", levels: "arcanist 3, cleric 3, inquisitor 3, magus 3, occultist 3, oracle 3, sorcerer 3, warpriest 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a small piece of radioactive clay)",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "The body of the target creature twists and distorts, reshaping into a grotesque figure. Because of the disfigurement, the creature takes a –4 penalty to Constitution and Charisma.",
                          desc: "The body of the target creature twists and distorts, reshaping into a grotesque figure. Because of the disfigurement, the creature takes a –4 penalty to Constitution and Charisma. The creature also receives one of the following deformities (your choice) from the list in the mutant acquired template: blind, deaf, fragile, fractured mind, lame, poor ability (applied to your choice of Strength, Dexterity, Intelligence, or Wisdom), spasms, and useless arm. The deformity is subject to all limitations described in the mutant template (for example, this spell cannot impose the lame deformity on a creature with a base speed slower than 20 feet).",
                          source: "People of the Wastes", isPremium: true)
        )
        try await db.insertSpell(
        .make("Influence Wild Magic", school: "Abjuration", levels: "arcanist 2, bard 2, cleric 2, druid 2, hunter 2, medium 2, mesmerist 2, oracle 2, ranger 2, skald 2, sorcerer 2, summoner 2, summoner (unchained) 2, warpriest 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "20-foot-radius burst of stabilizing magic centered on you", targets: "you",
                          duration: "10 minutes/level",
                          savingThrow: "none (harmless);", sr: false,
                          summary: "This spell creates an area of stabilizing magical energy that emanates from you.",
                          desc: "This spell creates an area of stabilizing magical energy that emanates from you. Any creature within this area that fails a concentration check to cast a spell normally in an area of wild magic rolls twice to determine the wild magic effect and choose its preferred result.",
                          source: "People of the Wastes", isPremium: true)
        )
        try await db.insertSpell(
        .make("Unhallowed Blows", school: "Transmutation", levels: "antipaladin 1, arcanist 1, cleric 1, inquisitor 1, oracle 1, sorcerer 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M/DF (a pinch of dust from a destroyed undead creature)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one undead creature/level, no two of which can be more than 30 ft. apart",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell empowers the natural attacks or unarmed strikes of undead creatures, granting a +1 enhancement bonus on attack and damage rolls made by the target with its unarmed strikes or attacks with…",
                          desc: "This spell empowers the natural attacks or unarmed strikes of undead creatures, granting a +1 enhancement bonus on attack and damage rolls made by the target with its unarmed strikes or attacks with one natural attack. This spell can cause an undead creature’s unarmed strike to deal lethal damage, but in this case, the attack does not gain an enhancement bonus. Unhallowed blows can be made permanent with a",
                          source: "People of the Wastes", isPremium: true)
        )
        try await db.insertSpell(
        .make("Unhallowed Blows, Greater", school: "Transmutation", levels: "antipaladin 1, arcanist 1, cleric 1, inquisitor 1, oracle 1, sorcerer 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M/DF (a pinch of dust from a destroyed undead creature)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one undead creature/level, no two of which can be more than 30 ft. apart",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions as unhallowed blows , except the enhancement bonus is +1 per 4 caster levels (maximum +5).",
                          desc: "This spell functions as unhallowed blows , except the enhancement bonus is +1 per 4 caster levels (maximum +5). Alternatively, you can imbue all of a creature’s natural weapons with a +1 enhancement bonus (regardless of your caster level).",
                          source: "People of the Wastes", isPremium: true)
        )
        try await db.insertSpell(
        .make("Violent Misfire", school: "Evocation", levels: "arcanist 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a small piece of flint)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one early or advanced firearm",
                          duration: "1 round/level",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "This spell creates a chaotic charge within the black powder loaded in a target firearm. The next time the target weapon fires during this spell’s duration, it automatically misfires.",
                          desc: "This spell creates a chaotic charge within the black powder loaded in a target firearm. The next time the target weapon fires during this spell’s duration, it automatically misfires. If this misfire causes the firearm to explode, the radius of the explosion is doubled and it deals maximum damage to all creatures in the radius. The firearm’s wielder also takes 1d6 additional points of fire damage per 2 caster levels (maximum 10d6) you have. If the target is an advanced firearm, and the firearm misfires a second time in a row while this spell is in effect, it does not explode but still deals the additional damage to the wielder as described. Violent Misfire, Greater",
                          source: "People of the Wastes", isPremium: true)
        )
        try await db.insertSpell(
        .make("Violent Misfire, Greater", school: "Evocation", levels: "arcanist 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a small piece of flint)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one early or advanced firearm",
                          duration: "1 round/level",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "This spell functions as violent misfire except as noted above.",
                          desc: "This spell functions as violent misfire except as noted above.",
                          source: "People of the Wastes", isPremium: true),

                    // // MARK: - Pirates of the Inner Sea
        )
        try await db.insertSpell(
        .make("Black Spot", school: "Necromancy", levels: "arcanist 5, cleric 4, oracle 4, sorcerer 5, warpriest 4, witch 4, wizard 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "permanent",
                          savingThrow: "Will negates;", sr: true,
                          summary: "The black spot is a specific and feared pirate curse. An intangible, illusory black spot manifests above the target’s head and remains until the target dies or the curse is lifted. The",
                          desc: "The black spot is a specific and feared pirate curse. An intangible, illusory black spot manifests above the target’s head and remains until the target dies or the curse is lifted. The",
                          source: "Pirates of the Inner Sea", isPremium: true)
        )
        try await db.insertSpell(
        .make("Salvage", school: "Transmutation", levels: "arcanist 9, cleric 9, oracle 9, sorcerer 9, wizard 9",
                          castingTime: "1 standard action", components: "V, S, M",
                          range: "long (400 ft. + 40 ft./level)", area: "", targets: "one shipwreck",
                          duration: "see text",
                          savingThrow: "Fortitude negates (object);", sr: true,
                          summary: "An invisible force pulls together the remains of a shipwreck. Bits of hull, tattered sails, broken masts, and smashed figureheads knit themselves back together.",
                          desc: "An invisible force pulls together the remains of a shipwreck. Bits of hull, tattered sails, broken masts, and smashed figureheads knit themselves back together. Rotten wood turns solid once more, and sails re-weave themselves as the rigging snakes across the masts. It takes a variable amount of time for the ship to rebuild itself, depending on its size. Size",
                          source: "Pirates of the Inner Sea", isPremium: true)
        )
        try await db.insertSpell(
        .make("Skeleton Crew", school: "Necromancy", levels: "arcanist 4, cleric 3, oracle 3, sorcerer 4, summoner 4, summoner (unchained) 4, warpriest 3, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M",
                          range: "touch", area: "", targets: "one or more humanoid corpses touched",
                          duration: "1 day/level",
                          savingThrow: "none;", sr: false,
                          summary: "This spell turns corpses into skeletons ( Pathfinder RPG Bestiary 250) that act as crew and obey your commands to the extent of their abilities.",
                          desc: "This spell turns corpses into skeletons ( Pathfinder RPG Bestiary 250) that act as crew and obey your commands to the extent of their abilities. The undead you create are 1 Hit Die skeletons that possess Profession (sailor) scores equal to half your character level plus your Wisdom modifier (for clerics), Intelligence modifier (for witches and wizards), or Charisma modifier (for sorcerers and summoners). Each skeleton can perform the duties of one crew member but has no other abilities. The created skeletons cannot speak, attack, or even defend themselves. The only orders they obey are ones pertaining to the operation of a ship. Skeletal crew members are not proficient with any weapons or armor. You can’t create more Hit Dice of skeletal crew members than twice your caster level with a single casting of",
                          source: "Pirates of the Inner Sea", isPremium: true)
        )
        try await db.insertSpell(
        .make("Track Ship", school: "Divination (Scrying)", levels: "arcanist 2, bard 2, cleric 2, oracle 2, skald 2, sorcerer 2, warpriest 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, F (piece of ship)",
                          range: "see text", area: "magical icon", targets: "",
                          duration: "1 hour/level",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "In order to cast this spell, you must have a piece of the ship you wish to track. Merchants often preserve slivers from their trade ships specifically for this purpose.",
                          desc: "In order to cast this spell, you must have a piece of the ship you wish to track. Merchants often preserve slivers from their trade ships specifically for this purpose. You also need a nautical chart. When you cast this spell, an icon of the targeted ship appears on the nautical chart. The icon moves as the ship moves for the duration of this spell. If the ship is not within the area delineated by the chart, the spell fails. If the ship is reduced to 0 or fewer hit points, its icon changes from a ship to a skull and crossbones.",
                          source: "Pirates of the Inner Sea", isPremium: true)
        )
        try await db.insertSpell(
        .make("Unseen Crew", school: "Conjuration (Creation)", levels: "arcanist 5, bard 4, skald 4, sorcerer 5, summoner 5, summoner (unchained) 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M",
                          range: "long (400 ft. + 40 ft./level)", area: "one invisible sailor per level", targets: "",
                          duration: "1 day/level",
                          savingThrow: "none;", sr: false,
                          summary: "An unseen crew member is an invisible, shapeless force that performs the duties of one crew member. It can tie off ropes, hoist sails, swab decks, and other such duties.",
                          desc: "An unseen crew member is an invisible, shapeless force that performs the duties of one crew member. It can tie off ropes, hoist sails, swab decks, and other such duties. An unseen crew member possesses no other skills. It cannot fight, speak, or even defend itself. An unseen crew member has a Strength score of 10 and a Profession (sailor) score equal to half your character level plus your Intelligence modifier (for witches and wizards) or your Charisma modifier (for bards, sorcerers, and summoners). It cannot fly, but it can climb, swim, or walk with a base speed of 20 feet. An unseen crew member cannot be killed, but it dissipates if it takes more than 1 point of damage per caster level you possess from area attacks (it gets no saves against attacks). If you attempt to send an unseen crew member beyond the spell’s range (measured from your current position), the crew member ceases to exist.",
                          source: "Pirates of the Inner Sea", isPremium: true),

                    // // MARK: - Planar Adventures
        )
        try await db.insertSpell(
        .make("Anywhere but Here", school: "Conjuration (Teleportation)", levels: "arcanist 4, magus 4, psychic 4, sorcerer 4, summoner 4, summoner (unchained) 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V",
                          range: "touch", area: "", targets: "you and up to four willing creatures, none of whom can be on their home plane",
                          duration: "instantaneous",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "This spell functions similarly to plane shift , but instead of transporting the targets to a destination near an intended location on a specific plane,",
                          desc: "This spell functions similarly to plane shift , but instead of transporting the targets to a destination near an intended location on a specific plane,",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Bestow Planar Infusion I", school: "Evocation", levels: "arcanist 1, cleric 1, inquisitor 1, magus 1, medium 1, occultist 1, oracle 1, psychic 1, sorcerer 1, summoner 1, summoner (unchained) 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 hour/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "This spell draws upon the latent planar energy of the caster’s surroundings, allowing her to temporarily infuse a creature with the plane’s power.",
                          desc: "This spell draws upon the latent planar energy of the caster’s surroundings, allowing her to temporarily infuse a creature with the plane’s power. The touched creature gains that plane’s basic infusion for the spell’s duration. This spell has no effect if cast on the Material Plane, and it ends as soon as the spell’s target leaves the plane with which it has been infused. Details on planar infusions can be found in each plane’s Infusion section (listed here ). Once a creature gains the benefits of",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Bestow Planar Infusion II", school: "Evocation", levels: "arcanist 1, cleric 1, inquisitor 1, magus 1, medium 1, occultist 1, oracle 1, psychic 1, sorcerer 1, summoner 1, summoner (unchained) 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 hour/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "This functions as bestow planar infusion I , except that the touched creature gains the improved infusion of the current plane.",
                          desc: "This functions as bestow planar infusion I , except that the touched creature gains the improved infusion of the current plane.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Bestow Planar Infusion III", school: "Evocation", levels: "arcanist 1, cleric 1, inquisitor 1, magus 1, medium 1, occultist 1, oracle 1, psychic 1, sorcerer 1, summoner 1, summoner (unchained) 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 hour/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "This functions as bestow planar infusion I , except that the touched creature gains the greater infusion of the current plane.",
                          desc: "This functions as bestow planar infusion I , except that the touched creature gains the greater infusion of the current plane.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Commune with Plane", school: "Divination", levels: "cleric 5, hunter 4, oracle 5, psychic 5, ranger 4, summoner 5, summoner (unchained) 5, warpriest 5, witch 5",
                          castingTime: "10 minutes", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "instantaneous",
                          savingThrow: "None", sr: false,
                          summary: "You become one with the plane around you, attaining knowledge of the surrounding territory.",
                          desc: "You become one with the plane around you, attaining knowledge of the surrounding territory. You instantly gain knowledge of as many as three facts from among the following subjects: areas with different planar traits, the layout and topography of local terrain, local divine influences, planar phenomena, portals between planes, presence of creatures native to the plane, presence of powerful nonnative creatures, the general state of the plane, or valuable planar substances. On standard planes, the spell operates with a radius of 1 mile per caster level. On demiplanes, the spell is less powerful, and its radius is limited to 100 feet per caster level. This spell has no effect when cast on the Material Plane.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ether Step", school: "Transmutation", levels: "arcanist 6, magus 5, sorcerer 6, wizard 6",
                          castingTime: "1 immediate action", components: "S",
                          range: "personal", area: "", targets: "you",
                          duration: "see text",
                          savingThrow: "None", sr: false,
                          summary: "You step into the Ethereal Plane long enough to dodge a blow or confound a spell; you must cast ether step after you are targeted by an attack or effect but before you learn the results of the attack…",
                          desc: "You step into the Ethereal Plane long enough to dodge a blow or confound a spell; you must cast ether step after you are targeted by an attack or effect but before you learn the results of the attack or effect. This spell functions as",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hasten Judgment", school: "Necromancy", levels: "antipaladin 4, arcanist 6, cleric 5, druid 5, hunter 5, inquisitor 4, oracle 5, sorcerer 6, spiritualist 4, warpriest 5, witch 5, wizard 6",
                          castingTime: "1 standard action", components: "V, S, M (2 silver pieces)",
                          range: "touch", area: "", targets: "one living or corporeal undead creature",
                          duration: "1 day/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This potent curse weighs upon the target’s soul, hastening a living creature’s journey to the Boneyard upon death or weakening an undead creature’s animating force.",
                          desc: "This potent curse weighs upon the target’s soul, hastening a living creature’s journey to the Boneyard upon death or weakening an undead creature’s animating force. A living creature that dies during the spell’s duration cannot be affected by breath of life or similar effects, and the period during which attempts to restore the target to life can succeed is reduced to 1 hour/level (for",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Infuse Self", school: "Transmutation (Polymorph)", levels: "alchemist 3, arcanist 3, bard 3, bloodrager 3, investigator 3, magus 3, skald 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a piece of the creature whose form you plan to assume)",
                          range: "personal", area: "", targets: "you",
                          duration: "10 minutes/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "When you cast this spell, you assume the form of a native outsider from the following list: aasimar, aphorite, duskwalker, fetchling, ganzi, ifrit, oread, shabti, suli, sylph, tiefling, or undine.",
                          desc: "When you cast this spell, you assume the form of a native outsider from the following list: aasimar, aphorite, duskwalker, fetchling, ganzi, ifrit, oread, shabti, suli, sylph, tiefling, or undine. You gain a +2 size bonus to one physical ability score of your choice. If the race has resistance to one or more energy types, you gain energy resistance 5 to your choice of one of those types. If the race gains a racial bonus on saving throws or skills, you gain those bonuses. If the race has darkvision or low-light vision, you gain those qualities.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Invoke Deity", school: "Transmutation", levels: "antipaladin 4, cleric 6, hunter 4, inquisitor 6, medium 4, occultist 6, oracle 6, paladin 4, ranger 4, warpriest 6, witch 6",
                          castingTime: "1 round", components: "V, S, M (incense worth 1,000 gp), F (a bejeweled holy symbol of your patron deity worth 2,500 gp)",
                          range: "personal", area: "", targets: "you",
                          duration: "10 minutes/level",
                          savingThrow: "None", sr: false,
                          summary: "By holding aloft a holy symbol and calling your deity’s name, you take on an aspect of that divinity. When you cast this spell, choose a domain offered by your deity.",
                          desc: "By holding aloft a holy symbol and calling your deity’s name, you take on an aspect of that divinity. When you cast this spell, choose a domain offered by your deity. You gain that domain’s benefits from the list below, along with the listed physical changes; abilities that allow a saving throw use this spell’s DC. At any point during the duration of this spell, you can change which domain benefit you gain by concentrating for 1 round—this provokes attacks of opportunity and reduces the remaining duration of the spell by 10 minutes. If you have less than 10 minutes of the spell’s duration remaining, you cannot change the selected domain in this way. If you change your domain, all ongoing effects from your previously chosen domain end. You must worship a single divinity in order to cast this spell, even if you do not normally cast divine spells. If you perform an action that blatantly violates your deity’s precepts while under this spell’s effects, invoke deity immediately ends and you are stunned for a number of rounds equal to your Hit Dice.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Judgment Undone", school: "Necromancy", levels: "cleric 9, oracle 9, psychic 9, shaman 9",
                          castingTime: "10 minutes", components: "V, S, M (diamonds worth 50,000 gp), F (see text)",
                          range: "touch", area: "", targets: "one willing petitioner",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "This powerful, elaborate, and risky spell undoes Pharasma’s judgment, returning a willing petitioner to its mortal life.",
                          desc: "This powerful, elaborate, and risky spell undoes Pharasma’s judgment, returning a willing petitioner to its mortal life. This spell must be cast on the plane to which the petitioner was sent, and the petitioner must be present for the entire casting. In addition, the caster must provide a specific object that the petitioner valued deeply in its mortal life as a focus for the spell. This is different for every petitioner and usually requires research to discover, although those who knew the petitioner well in life can often identify the item easily. At the completion of the spell’s casting, the petitioner returns to the mortal form it had as a young adult, with all of its memories and class levels (or equivalent statistics) intact. The casting of judgment undone is not without risk. The servants of Pharasma vigilantly watch for perversions of the order of fate and death, though it can take time for them to pinpoint disruptions when they occur. After 1d6+5 minutes from the beginning of this spell’s 10-minute casting time, an olethros appears within 50 feet of the caster; this psychopomp demands the caster cease casting the spell immediately and attacks if its request is ignored. The psychopomp never attempts to harm the petitioner unless",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Positive Pulse", school: "Necromancy", levels: "arcanist 1, cleric 1, inquisitor 1, oracle 1, paladin 1, shaman 1, sorcerer 1, spiritualist 1, summoner 1, summoner (unchained) 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "5-ft.-radius burst", targets: "",
                          duration: "instantaneous plus 1 round (see text)",
                          savingThrow: "Will negates or Will negates (harmless); see text;", sr: true,
                          summary: "This spell causes a wave of positive energy to spread from a point you designate, damaging foes vulnerable to positive energy and bolstering living creatures.",
                          desc: "This spell causes a wave of positive energy to spread from a point you designate, damaging foes vulnerable to positive energy and bolstering living creatures. Each creature damaged by positive energy in the area (such as undead) must succeed at a Will save or take 1d6 points of damage, plus 1 point for every 2 caster levels (maximum +5). Haunts manifesting in the spell’s area also take this damage. This spell does not heal creatures healed by positive energy; such creatures instead gain a +2 bonus on saving throws against death effects, energy drain, negative energy, and effects directly caused by haunts. This bonus lasts for 1 round. Positive Pulse, Greater",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Positive Pulse, Greater", school: "Necromancy", levels: "arcanist 1, cleric 1, inquisitor 1, oracle 1, paladin 1, shaman 1, sorcerer 1, spiritualist 1, summoner 1, summoner (unchained) 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "5-ft.-radius burst", targets: "",
                          duration: "instantaneous plus 1 round (see text)",
                          savingThrow: "Will negates or Will negates (harmless); see text;", sr: true,
                          summary: "This spell functions like positive pulse , except that the damage dealt increases to 3d6 plus your caster level, and the bonus on saving throws increases to +8.",
                          desc: "This spell functions like positive pulse , except that the damage dealt increases to 3d6 plus your caster level, and the bonus on saving throws increases to +8.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Quintessence Mastery", school: "Transmutation", levels: "arcanist 8, cleric 8, oracle 8, sorcerer 8, witch 8, wizard 8",
                          castingTime: "1 round or 4 hours; see text", components: "V, S, F (a staff crafted from the chosen plane's material worth 2,500 gp)",
                          range: "personal or up to 10 10-ft. cubes/level (S)", area: "control over a plane's terrain and traits", targets: "",
                          duration: "1 hour/level or 1 day/level; see text",
                          savingThrow: "None", sr: false,
                          summary: "This spell grants the caster limited control over the quintessence of an Outer Plane.",
                          desc: "This spell grants the caster limited control over the quintessence of an Outer Plane. The control granted by quintessence mastery can take one of two forms, depending on the version of the spell cast. Both versions can be cast only on one of the nine Outer Planes, for it is these planes, not the Transitive or Inner Planes, that are comprised of quintessence.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Shadow Invasion", school: "Conjuration (Summoning)", levels: "arcanist 4, magus 4, sorcerer 4, summoner 4, summoner (unchained) 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, F (a masterwork piercing or slashing weapon)",
                          range: "30 ft.", area: "30-ft. radius emanation centered on you", targets: "",
                          duration: "1 round/level (D); see text",
                          savingThrow: "none;", sr: false,
                          summary: "Using a slashing motion with the spell’s focus as part of the casting of shadow invasion , you cut open a rift to the Plane of Shadow that fills a 30-foot area with shadowy energies.",
                          desc: "Using a slashing motion with the spell’s focus as part of the casting of shadow invasion , you cut open a rift to the Plane of Shadow that fills a 30-foot area with shadowy energies. This area is stationary and becomes dark and gloomy, reducing the light level by one step (as",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Songbird", school: "Conjuration", levels: "arcanist 1, bard 1, cleric 1, mesmerist 1, oracle 1, paladin 1, psychic 1, skald 1, sorcerer 1, warpriest 1, wizard 1",
                          castingTime: "1 swift action", components: "S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round",
                          savingThrow: "None", sr: false,
                          summary: "You conjure uplifting music from the wilds of Elysium, Heaven, or Nirvana to bolster other musical activities.",
                          desc: "You conjure uplifting music from the wilds of Elysium, Heaven, or Nirvana to bolster other musical activities. If you cast songbird during the same round in which you attempt a Perform check, songbird acts as accompaniment and grants a +3 bonus on that Perform check.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Soulseeker", school: "Divination", levels: "cleric 8, medium 4, occultist 6, oracle 8, shaman 8, spiritualist 6, witch 8",
                          castingTime: "1 hour", components: "V, S, M (incense worth 250 gp), F (see text)",
                          range: "unlimited", area: "", targets: "one soul",
                          duration: "instantaneous or 1 hour/level",
                          savingThrow: "Will negates;", sr: false,
                          summary: "You identify the stage of a given soul’s judgment, or determine its fate post-judgment.",
                          desc: "You identify the stage of a given soul’s judgment, or determine its fate post-judgment. You must either unambiguously identify the soul you seek or use the skull of the body the soul vacated as a focus. If the subject does not share your alignment, the soul can attempt a Will save to resist this spell’s effects as if it were still alive. If the subject is still alive or its soul has been destroyed, this spell fails without providing any information. If the soul has not yet been judged and moved on to its final reward or punishment, soulseeker provides an estimate of its location; in most cases, this is somewhere in the River of Souls or the Boneyard. While this may assist in physically traveling to the soul’s location, especially in cases involving effects such as",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Speak with Soul", school: "Necromancy", levels: "antipaladin 4, cleric 6, medium 4, oracle 6, paladin 4, shaman 6, spiritualist 6, warpriest 6",
                          castingTime: "1 minute", components: "V, S, M (a drop of candle wax)",
                          range: "10 ft.", area: "", targets: "see text",
                          duration: "1 minute/level (D)",
                          savingThrow: "Will negates; see text;", sr: false,
                          summary: "You commune with the soul of a dead creature. To cast this spell, you must be at the soul’s place of death or be in the soul’s presence, whether it is contained in a receptacle, powers an intelligent…",
                          desc: "You commune with the soul of a dead creature. To cast this spell, you must be at the soul’s place of death or be in the soul’s presence, whether it is contained in a receptacle, powers an intelligent magic item, or other possibilities. The soul can attempt a Will save to resist the spell as if it were alive. A soul contacted this way can speak normally in any language it knows. Unlike speak with dead and similar spells, you are not limited to asking questions and can engage in normal conversation with the soul (and vice versa). The soul isn’t an undead creature and isn’t compelled to speak or be truthful. Generally, the soul only knows what it knew in life, although souls that persisted with awareness of their surroundings after death may have more to offer.",
                          source: "Planar Adventures", isPremium: true),

                    // // MARK: - Planar Adventures, Monster Hunter's Handbook
        )
        try await db.insertSpell(
        .make("Diminish Resistance", school: "Transmutation", levels: "arcanist 2, bard 2, cleric 2, inquisitor 2, magus 2, mesmerist 2, oracle 2, psychic 2, skald 2, sorcerer 2, warpriest 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (a pinch of coarse sand)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "1 round/level (D)",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "You weaken a creature’s resistance against one energy type you select: acid, cold, electricity, fire, or sonic.",
                          desc: "You weaken a creature’s resistance against one energy type you select: acid, cold, electricity, fire, or sonic. The creature’s resistance to that energy type decreases by 5 (minimum 0), plus an additional 5 for every 5 caster levels beyond 3rd (to a maximum of 20 at 18th level).",
                          source: "Planar Adventures, Monster Hunter's Handbook", isPremium: true),

                    // // MARK: - Plane-Hopper's Handbook
        )
        try await db.insertSpell(
        .make("Celestial Companion", school: "Transmutation", levels: "arcanist 2, druid 2, hunter 2, paladin 1, ranger 2, shaman 2, sorcerer 2, summoner 1, summoner (unchained) 1, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, DF/M",
                          range: "touch", area: "", targets: "animal companion, eidolon, familiar, or mount",
                          duration: "1 minute/level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You bestow divine protection on your companion. The target gains spell resistance equal to 5 plus half your caster level against spells and spell-like effects produced by evil creatures.",
                          desc: "You bestow divine protection on your companion. The target gains spell resistance equal to 5 plus half your caster level against spells and spell-like effects produced by evil creatures. The target also gains a +1 sacred bonus on saving throws and DR 5/evil or silver. Creatures under the effects of this spell often take on a celestial appearance, such as golden feathers or a radiant aura, but they are not truly celestial creatures.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Eroding Ray", school: "Transmutation", levels: "arcanist 2, cleric 2, druid 2, hunter 2, oracle 2, sorcerer 2, warpriest 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "ray", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "You channel a fraction of the tumultuous ecosystem of the Hao Jin Tapestry and redirect it through your hands as a beam of deteriorating energy.",
                          desc: "You channel a fraction of the tumultuous ecosystem of the Hao Jin Tapestry and redirect it through your hands as a beam of deteriorating energy. You can fire one ray, plus one additional ray for every 4 levels beyond 3rd (to a maximum of three rays at 11th level). Each ray requires a ranged touch attack to hit and can target only a construct or an object. If a ray hits, the target begins to crumble, taking 2d6 points of damage. This damage ignores hardness and damage reduction.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Fiendish Wrath", school: "Enchantment (Compulsion)", levels: "alchemist 3, arcanist 4, bard 3, bloodrager 3, investigator 3, mesmerist 3, psychic 4, skald 3, sorcerer 4, summoner 3, summoner (unchained) 3, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one willing living creature per 3 levels, no two of which can be more than 30 ft. apart",
                          duration: "concentration + 1 round/level (D)",
                          savingThrow: "none;", sr: true,
                          summary: "Each affected creature flies into a combat frenzy. The target gains a +2 morale bonus to Strength and Constitution, and a +1 morale bonus on Will saves.",
                          desc: "Each affected creature flies into a combat frenzy. The target gains a +2 morale bonus to Strength and Constitution, and a +1 morale bonus on Will saves. If an affected creature strikes an enemy with two claw attacks or two unarmed strikes while in this frenzy, it can use the rend ability, dealing an additional amount of damage equal to its claw or unarmed strike damage plus 1-1/2 times its Strength bonus.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Greater Reversion", school: "Conjuration (Healing)", levels: "arcanist 3, cleric 3, oracle 3, psychic 2, sorcerer 3, warpriest 3, wizard 3",
                          castingTime: "10 minutes", components: "V, S",
                          range: "personal", area: "", targets: "self",
                          duration: "24 hours",
                          savingThrow: "None", sr: false,
                          summary: "You create a fine-tuned replica of yourself within the Akashic Record at the time the spell is cast.",
                          desc: "You create a fine-tuned replica of yourself within the Akashic Record at the time the spell is cast. You must currently have a number of hit points equal to or greater than half your maximum hit points to cast the spell. If at any time during the duration of the spell you are brought below half your maximum hit points, you can end this spell as an immediate action to absorb strength from your replica and immediately regain a number of hit points equal to 3d8 plus 1 point per caster level (maximum +15). Minor Reversion, Mass",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Healing Leak", school: "Necromancy", levels: "antipaladin 2, arcanist 3, cleric 3, oracle 3, paladin 2, shaman 3, warpriest 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M/DF (a piece of muslin)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "Whenever the target is affected by a spell or effect that heals hit point damage through the use of positive or negative energy, it regains only half the number of hit points it normally would…",
                          desc: "Whenever the target is affected by a spell or effect that heals hit point damage through the use of positive or negative energy, it regains only half the number of hit points it normally would recover. If the target employs a spell or effect that heals itself or other creatures through the use of positive or negative energy, the target must succeed at a concentration check (DC = this spell’s save DC) or the effect restores only half of the normal number of hit points. Other forms of healing (such as from the Heal skill) are not affected by this spell.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Minor Reversion", school: "Conjuration (Healing)", levels: "arcanist 3, cleric 3, oracle 3, psychic 2, sorcerer 3, warpriest 3, wizard 3",
                          castingTime: "10 minutes", components: "V, S",
                          range: "personal", area: "", targets: "self",
                          duration: "24 hours",
                          savingThrow: "None", sr: false,
                          summary: "You create an imperfect replica of yourself within the Akashic Record at the time the spell is cast.",
                          desc: "You create an imperfect replica of yourself within the Akashic Record at the time the spell is cast. You must currently have a number of hit points equal to or greater than half your maximum hit points to cast the spell. If at any time during the duration of the spell you are brought below half your maximum hit points, you can end this spell as an immediate action to absorb strength from your replica and immediately regain a number of hit points equal to 1d8 plus 1 point per caster level (maximum +5). Greater Reversion",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Minor Reversion, Mass", school: "Conjuration (Healing)", levels: "arcanist 3, cleric 3, oracle 3, psychic 2, sorcerer 3, warpriest 3, wizard 3",
                          castingTime: "10 minutes", components: "V, S",
                          range: "personal", area: "", targets: "self",
                          duration: "24 hours",
                          savingThrow: "None", sr: false,
                          summary: "You create a replica within the Akashic Record of each target at the time the spell is cast. Each targeted creature must currently have at least half its hit points.",
                          desc: "You create a replica within the Akashic Record of each target at the time the spell is cast. Each targeted creature must currently have at least half its hit points. If at any time during the duration of the spell a target is brought below half her maximum hit points, that target can end the spell on herself as an immediate action to absorb strength from her replica and immediately regain a number of hit points equal to 1d8 plus 1 point per caster level (maximum +25).",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Planar Aegis", school: "Abjuration", levels: "arcanist 5, druid 5, hunter 3, occultist 4, ranger 3, sorcerer 5, summoner 4, summoner (unchained) 4, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (a fistful of naturally occuring material from a plane)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "You draw motes of essence from material native to a plane that has elemental or energy essence traits ( Pathfinder RPG Planar Adventures 60), weaving the essence together into a shield of force.",
                          desc: "You draw motes of essence from material native to a plane that has elemental or energy essence traits ( Pathfinder RPG Planar Adventures 60), weaving the essence together into a shield of force. Choose an essence trait from the list below; the material component for this spell must come from a plane that has the essence trait you chose. Each essence trait has an associated damage type (see the table below). Any creature that hits you with a non-reach melee weapon, natural weapon, or unarmed attack takes 3d6 points of damage plus 1 point per caster level you have (maximum +20) of a type corresponding to the essence trait you chose. In addition, you take only half damage from attacks or effects of the associated damage type, and if such an attack or effect allows a saving throw for half damage, you take no damage on a successful saving throw.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Righteous Condemnation", school: "Abjuration", levels: "cleric 3, inquisitor 3, oracle 3, paladin 2, warpriest 3",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "Any creature of chaotic, neutral, or evil alignment who targets you with a spell must succeed at a Will save or take a –4 penalty on Intelligence-, Wisdom-, and Charisma-based checks for the spell’s…",
                          desc: "Any creature of chaotic, neutral, or evil alignment who targets you with a spell must succeed at a Will save or take a –4 penalty on Intelligence-, Wisdom-, and Charisma-based checks for the spell’s duration. Creatures with only neutral alignment components receive a +4 bonus on their Will saves against this spell. The penalties for alignment components stack (therefore, a chaotic evil spellcaster would take a –8 penalty).",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Speak with Plane", school: "Divination", levels: "arcanist 4, cleric 4, medium 3, oracle 4, shaman 4, sorcerer 4, summoner 3, summoner (unchained) 3, warpriest 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, F/DF (a small glass bead)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one plane with a sentient structure",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (see text);", sr: true,
                          summary: "You tap into the awareness and consciousness of a plane with a sentient structure ( Planar Adventures 60), allowing it to answer questions.",
                          desc: "You tap into the awareness and consciousness of a plane with a sentient structure ( Planar Adventures 60), allowing it to answer questions. A tangible manifestation of the plane (such as the ground) must be within the spell’s range upon casting. You can ask the sentient plane one question per 2 caster levels. If the plane’s alignment is at least one step away from yours, the plane can attempt a Will save to resist the spell. A plane typically has a +20 bonus on Will saves, and a demiplane typically has a +15 bonus on Will saves. A plane’s traits can further affect these bonuses: a mildly aligned plane receives a +2 bonus, and a strongly aligned plane or a plane with the wild magic trait receives a +4 bonus on its save. If a plane has been subject to this spell within the past week, a new casting of this spell targeting the same plane fails. If speak with plane targets a plane that does not have a sentient structure, the spell fails.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Talisman of Reprieve", school: "Abjuration", levels: "cleric 5, inquisitor 4, occultist 5, paladin 3, warpriest 5",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "20-ft.-radius emanation centered on an item",
                          duration: "10 minutes/level",
                          savingThrow: "None", sr: false,
                          summary: "You imbue an item with an aura of divine amnesty, allowing all allies within the aura’s area to ignore penalties to Intelligence-, Wisdom-, and Charisma-based checks resulting from a plane’s mildly…",
                          desc: "You imbue an item with an aura of divine amnesty, allowing all allies within the aura’s area to ignore penalties to Intelligence-, Wisdom-, and Charisma-based checks resulting from a plane’s mildly or strongly aligned traits ( Planar Adventures 62), regardless of the allies’ alignments. In addition, the item grants a +4 circumstance bonus on checks with one Intelligence-, Wisdom-, or Charisma-based skill determined by you at the time of casting.",
                          source: "Plane-Hopper's Handbook", isPremium: true),

                    // // MARK: - Ranged Tactics Toolbox
        )
        try await db.insertSpell(
        .make("Augmenting Wall", school: "Evocation", levels: "arcanist 5, magus 5, sorcerer 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "20-ft.-high wall of energy whose area is up to one 10-ft. square/level", targets: "",
                          duration: "1 round/2 levels (see text)",
                          savingThrow: "none (object);", sr: false,
                          summary: "You create a wall of faintly shimmering elemental energy. Upon casting the spell, choose either acid, cold, electricity, or fire.",
                          desc: "You create a wall of faintly shimmering elemental energy. Upon casting the spell, choose either acid, cold, electricity, or fire. The spell gains the chosen descriptor, and any thrown weapons or ammunition that pass through the augmenting wall as part of a ranged attack deal 1d6 points of energy damage of the specified type in addition to their normal damage. The wall has no effect on melee weapons or items not thrown as part of an attack. As you cast the spell, you can limit the wall so that it only affects ranged weapons passing through it in the direction of your choice. Doing so halves the spell’s duration.",
                          source: "Ranged Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Bloody Arrows", school: "Necromancy", levels: "antipaladin 3, arcanist 4, hunter 3, inquisitor 3, magus 3, ranger 3, shaman 4, sorcerer 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one willing creature",
                          duration: "1 round/level",
                          savingThrow: "none (harmless);", sr: false,
                          summary: "Whenever this spell’s target hits a creature with a ranged weapon that successfully deals piercing or slashing damage, the struck creature takes 1 point of bleed damage.",
                          desc: "Whenever this spell’s target hits a creature with a ranged weapon that successfully deals piercing or slashing damage, the struck creature takes 1 point of bleed damage. Unlike most bleed damage, the bleed damage dealt by the subject of this spell is cumulative up to an amount equal to 1/2 your caster level (to a maximum of 5 points of bleed damage at 10th level).",
                          source: "Ranged Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Calm Air", school: "Abjuration", levels: "arcanist 5, druid 4, hunter 4, sorcerer 5, summoner 4, summoner (unchained) 4, wizard 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "long (400 ft. + 40 ft./level)", area: "cylinder (5-ft./level radius, 40 ft. high)", targets: "",
                          duration: "10 minute/level (D)",
                          savingThrow: "none (object);", sr: false,
                          summary: "This spell calms the air and disperses fog, dust, and other particles.",
                          desc: "This spell calms the air and disperses fog, dust, and other particles. The wind force in the area is reduced in strength by one step per 4 caster levels (to a minimum wind force of light) and clouds are dispersed, although parts of nonmagical clouds that extend beyond the area are not affected. If a magical cloud or wind’s point of origin is inside the area of a calm air spell, the whole effect is suppressed; otherwise, only the part inside the area is suppressed. Suppression still counts against the duration of a wind or cloud effect. Magical wind and cloud effects are suppressed only if you succeed at a caster level check (DC 11 + effect’s caster level). You can move the calm air effect by concentrating as a standard action.",
                          source: "Ranged Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Conversing Wind", school: "Transmutation", levels: "arcanist 4, bard 4, skald 4, sorcerer 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "1 mile/level", area: "10-ft.-radius spread", targets: "",
                          duration: "1 hour/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as whispering wind , except it can carry responses and doesn’t end after delivering its first message.",
                          desc: "This spell functions as whispering wind , except it can carry responses and doesn’t end after delivering its first message. After the wind completes its initial message, it waits for 1 round, then copies what it hear, and returns at the same speed and by the same route. It delivers what it heard to the location where the spell was originally cast. The wind continues back and forth in this way until the duration ends or the spell is dismissed.",
                          source: "Ranged Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Rain of Arrows", school: "Conjuration (Creation)", levels: "arcanist 8, sorcerer 8, wizard 8",
                          castingTime: "1 standard action", components: "V, S, M (a quiver full of 20 arrows worth 1 gp)",
                          range: "long (400 ft. + 40 ft./level)", area: "15-ft.-radius cloud of arrows", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Reflex halves;", sr: false,
                          summary: "You point your finger and conjure a cloud of magical arrows that rain down on any creatures and objects in the indicated area. You must have line of sight to the intended area.",
                          desc: "You point your finger and conjure a cloud of magical arrows that rain down on any creatures and objects in the indicated area. You must have line of sight to the intended area. The arrows deal 1d6 points of piercing damage per caster level (maximum 20d6) to each creature and object in a 15-foot radius centered on the targeted square or intersection. If the arrows used as a material component are all made of the same material (such as cold iron), the arrows created by the spell are also made of that material.",
                          source: "Ranged Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Telekinetic Volley", school: "Transmutation", levels: "arcanist 2, magus 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "up to one touched object per level weighing up to 5 lbs. each",
                          duration: "1 round/level or until discharged (D)",
                          savingThrow: "none (object);", sr: false,
                          summary: "The touched items levitate in your space. When you cast the spell and once per round thereafter, you can launch one item at a target of your choice as a standard action.",
                          desc: "The touched items levitate in your space. When you cast the spell and once per round thereafter, you can launch one item at a target of your choice as a standard action. The ranged attack is made as if you had thrown the item unless it’s ammunition for a weapon, in which case the attack is made as if fired from a heavy crossbow (if a bolt), a halfling sling staff (if a sling bullet), a blowgun (if a blowgun dart), a composite longbow with a +2 Strength rating (if an arrow), an atlatl UE (if an atlatl dart), or a pistol",
                          source: "Ranged Tactics Toolbox", isPremium: true),

                    // // MARK: - Rise of the Runelords Anniversary Edition, Pathfinder #5: Sins of the Saviors
        )
        try await db.insertSpell(
        .make("Blood Money", school: "Transmutation", levels: "arcanist 1, magus 1, redmantisassassin 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 swift action", components: "V, S",
                          range: "0 ft.", area: "1 material component", targets: "",
                          duration: "Instantaneous",
                          savingThrow: "None", sr: false,
                          summary: "You cast blood money just before casting another spell. As part of this spell’s casting, you must cut one of your hands, releasing a stream of blood that causes you to take 1d6 points of damage.",
                          desc: "You cast blood money just before casting another spell. As part of this spell’s casting, you must cut one of your hands, releasing a stream of blood that causes you to take 1d6 points of damage. When you cast another spell in that same round, your blood transforms into one material component of your choice required by that second spell. Even valuable components worth more than 1 gp can be created, but creating such material components requires an additional cost of 1 point of Strength damage, plus a further point of damage for every full 500 gp of the component’s value (so a component worth 500–999 gp costs a total of 2 points, 1,000–1,500 costs 3, etc.). You cannot create magic items with",
                          source: "Rise of the Runelords Anniversary Edition, Pathfinder #5: Sins of the Saviors", isPremium: true)
        )
        try await db.insertSpell(
        .make("Deathwine", school: "Necromancy", levels: "alchemist 2, arcanist 3, cleric 2, investigator 2, oracle 2, sorcerer 3, warpriest 2, witch 3, wizard 3",
                          castingTime: "1 minute", components: "V, S",
                          range: "touch", area: "", targets: "1 potion touched/level",
                          duration: "1 hour/level",
                          savingThrow: "none (object);", sr: false,
                          summary: "This spell allows you to turn a potion into a temporary pool of necromantic energy. Only a potion created using a conjuration (healing) spell can be affected by this spell.",
                          desc: "This spell allows you to turn a potion into a temporary pool of necromantic energy. Only a potion created using a conjuration (healing) spell can be affected by this spell. An affected potion turns dark red and reveals a necromantic aura if detect magic is cast on it while it remains under this spell’s effects. When you drink a potion affected by this spell, you do not gain the potion’s normal effect. Instead, the first necromancy spell you cast within the next minute is cast at a higher caster level. The bonus to caster level is equal to the spell level of the spell used to create the potion that",
                          source: "Rise of the Runelords Anniversary Edition, Pathfinder #5: Sins of the Saviors", isPremium: true)
        )
        try await db.insertSpell(
        .make("Raiment of Command", school: "Illusion (Glamer)", levels: "arcanist 2, bard 2, redmantisassassin 2, skald 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 hour/level",
                          savingThrow: "Will;", sr: false,
                          summary: "You are cloaked in an illusion of authority. Others perceive you to be a legitimate figure of authority, such as a higher-ranking official, a religious figure, or a more powerful warrior.",
                          desc: "You are cloaked in an illusion of authority. Others perceive you to be a legitimate figure of authority, such as a higher-ranking official, a religious figure, or a more powerful warrior. This illusion grants you a +5 bonus on all Diplomacy and Intimidate checks. If you attempt to disguise yourself as a specific authority figure whom you have met in person, you gain a +10 competence bonus on the Disguise check and any Bluff check related to impersonating that authority figure. In addition, others are uncomfortable acting against you. Creatures with an Intelligence of 3 or more take a –2 penalty on all opposed checks made against you, such as Sense Motive checks made to determine if you’re bluffing, or Perception checks made to notice you when you’re using Stealth to sneak (a result of their not wanting to question whether you belong there, and thus giving you the benefit of the doubt).",
                          source: "Rise of the Runelords Anniversary Edition, Pathfinder #5: Sins of the Saviors", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sign of Wrath", school: "Evocation", levels: "arcanist 6, cleric 6, oracle 6, sorcerer 6, warpriest 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S, F (a gem worth 1,000 gp inscribed with the Thassilonian symbol of wrath)",
                          range: "personal", area: "25-ft.-radius burst centered on you", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Reflex half;", sr: true,
                          summary: "A giant, glowing symbol of wrath appears below you, forcibly repulsing all nearby creatures.",
                          desc: "A giant, glowing symbol of wrath appears below you, forcibly repulsing all nearby creatures. All creatures within the area of effect take 1d6 points of force damage per caster level (maximum 15d6) and are subjected to a bull rush that attempts to push them directly away from you. The blast’s bull rush effect has a CMB bonus equal to your caster level + your Intelligence, Wisdom, or Charisma modifier (whichever is highest). You are unaffected by both the spell’s damage and its bull rush effect, and may select up to one creature per 4 caster levels to also be ignored by the spells effects.",
                          source: "Rise of the Runelords Anniversary Edition, Pathfinder #5: Sins of the Saviors", isPremium: true)
        )
        try await db.insertSpell(
        .make("Swipe", school: "Conjuration (Teleportation)", levels: "arcanist 3, bard 2, skald 2, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one held item",
                          duration: "instant",
                          savingThrow: "none;", sr: false,
                          summary: "By flicking a finger in the appropriate direction and proclaiming ownership, you attempt to magically wrest an item from the target’s grip and summon it to your hand.",
                          desc: "By flicking a finger in the appropriate direction and proclaiming ownership, you attempt to magically wrest an item from the target’s grip and summon it to your hand. To claim an object held by an opponent, you must make a CMB check—this check has a bonus equal to your caster level + your Intelligence, Wisdom, or Charisma modifier (whichever is highest). If you fail this check, the target retains the item and the spell fails. If you succeed, the item teleports into one of your free hands or comes to rest at your feet.",
                          source: "Rise of the Runelords Anniversary Edition, Pathfinder #5: Sins of the Saviors", isPremium: true)
        )
        try await db.insertSpell(
        .make("Unconscious Agenda", school: "Enchantment (Compulsion)", levels: "arcanist 6, bard 6, inquisitor 6, skald 6, sorcerer 6, witch 6, wizard 6",
                          castingTime: "10 minutes", components: "V",
                          range: "Close (25 ft. + 5 ft./2 levels)", area: "", targets: "One humanoid",
                          duration: "One week/level or until discharged (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell plants a subconscious directive in the target’s mind that forces him to act as you dictate when specific circumstances arise.",
                          desc: "This spell plants a subconscious directive in the target’s mind that forces him to act as you dictate when specific circumstances arise. The target humanoid can be either conscious or unconscious, but must understand your language. Upon casting this spell, you must state a course of action you wish the target to take. This course of action must be described in 20 words or fewer. You must then state the condition under which you wish the target to take this action, also describing it in 20 or fewer words. Actions or conditions more elaborate than 20 words cause the spell to fail. Unconscious agenda cannot compel a target to kill himself, though it can compel him to perform exceedingly dangerous acts, face impossible odds, or undertake almost any other course of activity. You cannot issue new commands to the target after the spell is cast. If the target fails his save against this spell, he is not compelled to act in any way until the specified trigger circumstances are encountered. He also has no knowledge of the details of the spell affecting him, and has no memory of the last 10 minutes (although he might come to notice the missing time or the presence of the caster). He can function as he wishes until the events you detailed as the condition take place. Upon experiencing the prerequisite condition, the target is forced to perform the course of action you described as per the spell",
                          source: "Rise of the Runelords Anniversary Edition, Pathfinder #5: Sins of the Saviors", isPremium: true),

                    // // MARK: - Rise of the Runelords Anniversary Edition, Pathfinder #5: Sins of the Saviors, Inner Sea World Guide
        )
        try await db.insertSpell(
        .make("Covetous Aura", school: "Abjuration", levels: "arcanist 5, sorcerer 5, witch 5, wizard 5",
                          castingTime: "1 round", components: "V, S",
                          range: "personal", area: "25-ft.-radius emanation centered on you", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "Anytime a harmless (so noted by a spell’s saving throw description) spell of 3rd level or lower is cast within a covetous aura’s area of effect, you may choose to immediately gain the benefit of that…",
                          desc: "Anytime a harmless (so noted by a spell’s saving throw description) spell of 3rd level or lower is cast within a covetous aura’s area of effect, you may choose to immediately gain the benefit of that spell as if it had also targeted you. The intended target still gains the effect of the spell. You gain the benefits of this duplicated spell only if the caster is in range of the",
                          source: "Rise of the Runelords Anniversary Edition, Pathfinder #5: Sins of the Saviors, Inner Sea World Guide", isPremium: true),

                    // // MARK: - Rival Guide
        )
        try await db.insertSpell(
        .make("Dazzling Blade", school: "Illusion (Pattern)", levels: "arcanist 1, bard 1, redmantisassassin 1, skald 1, sorcerer 1, wizard 1",
                          castingTime: "1 swift action", components: "V, S",
                          range: "touch", area: "", targets: "one metal weapon",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (see text);", sr: true,
                          summary: "Dazzling blade makes a weapon appear dazzlingly shiny, as if crafted from pure silver and heavily polished. In combat, the flashing movements of a dazzling blade become almost hypnotic.",
                          desc: "Dazzling blade makes a weapon appear dazzlingly shiny, as if crafted from pure silver and heavily polished. In combat, the flashing movements of a dazzling blade become almost hypnotic. The wielder of a weapon under the effects of",
                          source: "Rival Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Dazzling Blade, Mass", school: "Illusion (Pattern)", levels: "arcanist 1, bard 1, redmantisassassin 1, skald 1, sorcerer 1, wizard 1",
                          castingTime: "1 swift action", components: "V, S",
                          range: "touch", area: "", targets: "one metal weapon",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (see text);", sr: true,
                          summary: "This spell functions like dazzling blade , except that it affects multiple weapons. Each wielder of a",
                          desc: "This spell functions like dazzling blade , except that it affects multiple weapons. Each wielder of a",
                          source: "Rival Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Echean's Excellent Enclosure", school: "Abjuration", levels: "arcanist 9, sorcerer 9, wizard 9",
                          castingTime: "1 standard action", components: "V, S, M (a sphere of glass worth 100 gp and an iron nail, with which you pierce the glass on casting)",
                          range: "touch", area: "immobile 10-ft.-radius emanation", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You call into being around you an invisible barrier of force within which magic cannot persist. Within the area of the spell, effects are suppressed and creatures are affected as by antimagic field .",
                          desc: "You call into being around you an invisible barrier of force within which magic cannot persist. Within the area of the spell, effects are suppressed and creatures are affected as by antimagic field . An immobile sphere of impenetrable force surrounds the field, equivalent in all ways to a spherical",
                          source: "Rival Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sheet Lightning", school: "Evocation", levels: "arcanist 3, druid 3, hunter 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "20-ft.-radius spread",
                          duration: "instantaneous",
                          savingThrow: "Fortitude partial;", sr: true,
                          summary: "You create a dazzling flash of electricity that fills the target area. Sheet lightning inflicts 1 point of electricity damage to all creatures within the area of effect (no save).",
                          desc: "You create a dazzling flash of electricity that fills the target area. Sheet lightning inflicts 1 point of electricity damage to all creatures within the area of effect (no save). The true power of the spell, though, lies not in the damage it inflicts but in the overwhelming pain the lightning creates. The sudden flash and jolt dazes living creatures for 1 round if they fail a saving throw. Creatures that save are instead dazzled for 1 round. Any creature wearing metal armor takes a –2 penalty to its saving throw against this spell.",
                          source: "Rival Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Staggering Fall", school: "Transmutation", levels: "arcanist 2, cleric 2, oracle 2, redmantisassassin 2, sorcerer 2, warpriest 2, witch 2, wizard 2",
                          castingTime: "1 immediate action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one falling creature",
                          duration: "1 round/level (see below)",
                          savingThrow: "Fortitude partial (see below);", sr: true,
                          summary: "This spell must be cast on a creature as it falls, either from a height or after being knocked prone or tripped.",
                          desc: "This spell must be cast on a creature as it falls, either from a height or after being knocked prone or tripped. The magic of this spell causes the creature to hit the ground particularly hard, knocking the wind from it. The creature takes an additional 1d6 points of damage from the fall. In addition, the creature becomes staggered for the duration of the spell unless it makes a Will save. Each round the spell’s effects persist, the creature may attempt a new Will save as a free action to end the staggered effect early. A creature under the effects of this spell must take a standard action to stand up.",
                          source: "Rival Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Summon Accuser", school: "Conjuration (Summoning)", levels: "arcanist 4, bard 4, cleric 4, oracle 4, skald 4, sorcerer 4, summoner 4, summoner (unchained) 4, warpriest 4, witch 4, wizard 4",
                          castingTime: "1 round", components: "V, S, F/DF (chunk of rotten meat)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "1 accuser devil", targets: "",
                          duration: "10 minutes/level",
                          savingThrow: "none;", sr: false,
                          summary: "This spell summons a single accuser devil from Hell to do the spellcaster’s bidding, similar to how summon monster spells function.",
                          desc: "This spell summons a single accuser devil from Hell to do the spellcaster’s bidding, similar to how summon monster spells function. Accuser devils, known to diabolists as zebubs, are hideous flying creatures with the torso of a plump human infant and the body and wings of an enormous fly. They make excellent spies, for they have the ability to grant visions of what they have witnessed to others—the Queen’s Hands sometimes use summoned zebubs to observe suspects from afar. Accuser devils are detailed on page 84 of the",
                          source: "Rival Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Summon Infernal Host", school: "Conjuration (Summoning)", levels: "arcanist 5, bard 5, cleric 5, oracle 5, skald 5, sorcerer 5, summoner 5, summoner (unchained) 5, warpriest 5, witch 5, wizard 5",
                          castingTime: "1 round", components: "V, S, F/DF (strip of rune-inscribed parchment)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "1d4+1 lesser host devils or 1 greater host devil", targets: "",
                          duration: "1 round/level",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as summon monster V , save that it can only be used to summon",
                          desc: "This spell functions as summon monster V , save that it can only be used to summon",
                          source: "Rival Guide", isPremium: true),

                    // // MARK: - Second Darkness Player's Guide
        )
        try await db.insertSpell(
        .make("Impede Speech", school: "Necromancy", levels: "arcanist 3, bard 2, skald 2, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 min./level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This minor curse interferes with the target’s ability to speak. On a failed save, the target has difficulty stringing words together. Only with great concentration can he communicate intelligibly.",
                          desc: "This minor curse interferes with the target’s ability to speak. On a failed save, the target has difficulty stringing words together. Only with great concentration can he communicate intelligibly. Speaking in combat becomes a move-equivalent action rather than a free action. If the target attempts to cast a spell with a verbal component, he has a 50% chance of making an error and losing the spell. Even if he can successfully cast a spell, doing so takes 1 round if the spell’s normal casting time is less than 1 round. If the spell’s casting time is usually 1 round or longer, its casting time doubles (up until the end of impede speech ).",
                          source: "Second Darkness Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Pattern Recognition", school: "Transmutation", levels: "arcanist 1, redmantisassassin 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "10 min./level",
                          savingThrow: "None", sr: false,
                          summary: "Pattern recognition allows you to notice unusual breaks in the patterns of stones in a wall, boards in a floor, cracks in glass, trees in a forest, or similar interruptions.",
                          desc: "Pattern recognition allows you to notice unusual breaks in the patterns of stones in a wall, boards in a floor, cracks in glass, trees in a forest, or similar interruptions. You gain an insight bonus equal to one-half your caster level (minimum +1, maximum +10) on Search checks. You gain the same bonus on Survival checks made to follow tracks.",
                          source: "Second Darkness Player's Guide", isPremium: true),

                    // // MARK: - Spymaster's Handbook
        )
        try await db.insertSpell(
        .make("Claim Identity", school: "Transmutation (Polymorph)", levels: "alchemist 3, antipaladin 3, arcanist 4, bard 3, druid 4, hunter 4, inquisitor 3, investigator 3, shaman 4, skald 3, sorcerer 4, witch 3, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (a needle and thread)",
                          range: "touch", area: "", targets: "humanoid creature touched",
                          duration: "1 hour/level",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "You steal the target’s face, transforming yourself into a flawless imitation of it.",
                          desc: "You steal the target’s face, transforming yourself into a flawless imitation of it. All of the target’s facial features, vocal cues, and identifying physical traits change, transforming it into an unremarkable member of its race and gender. You transform into a perfect likeness of the target’s true form, as if affected by alter self , and gain a +10 bonus on Disguise checks to impersonate the original subject of this spell; you take no penalties on this check if the original target is of a different race, age, size, or gender.",
                          source: "Spymaster's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Claim Identity, Greater", school: "Transmutation (Polymorph)", levels: "alchemist 3, antipaladin 3, arcanist 4, bard 3, druid 4, hunter 4, inquisitor 3, investigator 3, shaman 4, skald 3, sorcerer 4, witch 3, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (a needle and thread)",
                          range: "touch", area: "", targets: "humanoid creature touched",
                          duration: "1 hour/level",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "This spell functions as per claim identity , except it transforms its target into a helpless, inanimate porcelain mask for the spell’s duration.",
                          desc: "This spell functions as per claim identity , except it transforms its target into a helpless, inanimate porcelain mask for the spell’s duration. The target remains aware of everything it can see or hear while transformed. The target can’t speak or move, but can still take purely mental actions (such as casting certain spells) or be targeted by spells that affect its mind. Any creature donning this mask is transformed into a flawless imitation of the spell’s target, as if affected by",
                          source: "Spymaster's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Egorian Diplomacy", school: "Enchantment (Compulsion)", levels: "bard 1, cleric 1, inquisitor 1, magus 1, mesmerist 1, oracle 1, psychic 1, skald 1, warpriest 1",
                          castingTime: "1 standard action", components: "V, S, M (a bent coin)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "instant; see text",
                          savingThrow: "Will negates;", sr: true,
                          summary: "As part of casting this spell, you can attempt a single Intimidate skill check to make a target act friendly toward you.",
                          desc: "As part of casting this spell, you can attempt a single Intimidate skill check to make a target act friendly toward you. If you succeed, the target assists you normally, but Egorian diplomacy clouds the memory of any threats or pressure you applied. The target remembers assisting you, but can’t remember why, and its attitude toward you doesn’t worsen as a result of being intimidated. Whether a creature fails or succeeds at its saving throw, it becomes immune to further castings of Egorian diplomacy for 24 hours.",
                          source: "Spymaster's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Garrulous Grin", school: "Necromancy", levels: "antipaladin 2, bard 2, inquisitor 2, mesmerist 2, psychic 2, shaman 2, skald 2, spiritualist 2, witch 3",
                          castingTime: "1 round", components: "S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 hour/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This Nidalese spell plants a seed of supernatural fear deep in a subject’s mind, causing self-doubt, stuttering, and evasiveness.",
                          desc: "This Nidalese spell plants a seed of supernatural fear deep in a subject’s mind, causing self-doubt, stuttering, and evasiveness. Affected creatures have difficulty meeting anyone’s gaze and seem dishonest or guilty. The target takes a –4 penalty on Bluff and Diplomacy checks to convince another of the truth of her words, and on Diplomacy or Intimidate checks to influence another creature’s attitude.",
                          source: "Spymaster's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Insect Scouts", school: "Divination", levels: "antipaladin 4, arcanist 3, bard 4, druid 2, hunter 2, inquisitor 3, psychic 4, ranger 2, shaman 2, skald 4, sorcerer 3, summoner 3, summoner (unchained) 3, witch 3, wizard 3",
                          castingTime: "1 round", components: "S, M (a drop of honey)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one insect scout/4 levels", targets: "",
                          duration: "1d6 hours, plus 1 hour/level; see text",
                          savingThrow: "none;", sr: false,
                          summary: "A favorite in the creaking courts of Ustalav, insect scouts summons one or more vermin to investigate a single location or building you can see.",
                          desc: "A favorite in the creaking courts of Ustalav, insect scouts summons one or more vermin to investigate a single location or building you can see. Your scouts must spend 1d6 hours investigating the target location, but need no oversight. When done, they return unerringly to you with their findings, traveling up to 1 mile per caster level you have to rejoin their master. Each insect’s size is Fine. Each insect has 1 hit point, AC 20 (+2 Dexterity, +8 size), a movement speed of 5 feet, a climb speed of 5 feet, and a fly speed of 20 feet (perfect maneuverability). The insects use your saving throw bonuses, have a total Perception skill bonus equal to 5 + 1/2 your caster level, and can’t attack. Because of their incredibly small size and magical nature, they can attempt Stealth checks to avoid being noticed even if they lack a source of cover or concealment, and they have a total Stealth skill bonus equal to 18 + 1/2 your caster level. Each scout that returns passes along memories of specific structural flaws, defenses, and alarms, granting you the ability to reroll one failed skill check per scout, as long as the skill check involves that specific location’s layout, such as a Stealth check to sneak in, a Disable Device check to silence an alarm, or a Perception check to notice a trap. If even one scout returns, you also gain a rough understanding of the building’s layout (at least, any portions your scouts could access). All insight (and the associated rerolls) fades 1 hour per caster level you have after the scouts return. Your insects remember nothing about creatures, and so provide no information about guardians or any conversations they may overhear.",
                          source: "Spymaster's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Passing Fancy", school: "Enchantment (Compulsion)", levels: "arcanist 2, bard 2, mesmerist 2, psychic 2, skald 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "4d4 rounds (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "Taldor’s infamous Lion Blades imported this spell from the ninja clans of Minkai, and both groups use it to great effect when maneuvering among the shallow upper classes.",
                          desc: "Taldor’s infamous Lion Blades imported this spell from the ninja clans of Minkai, and both groups use it to great effect when maneuvering among the shallow upper classes. When you cast the spell, you dictate one specific topic or recent event and instill a magical obsession with that subject within the target. An affected creature becomes fascinated by the topic, and becomes completely focused on discussing the event with anyone nearby, possibly wandering off or distracting unaffected creatures. Passing fancy has no effect on a creature with an Intelligence of 2 or less. Because the target talks and interacts with its usual cadence, onlookers take a –10 penalty on Sense Motive checks to notice that anything is amiss with the target’s behavior. Passing Fancy, Mass",
                          source: "Spymaster's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Passing Fancy, Mass", school: "Enchantment (Compulsion)", levels: "arcanist 2, bard 2, mesmerist 2, psychic 2, skald 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "4d4 rounds (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions as per passing fancy except as noted above.",
                          desc: "This spell functions as per passing fancy except as noted above.",
                          source: "Spymaster's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Scribe's Binding", school: "Transmutation (Polymorph)", levels: "arcanist 9, occultist 6, sorcerer 9, witch 9, wizard 9",
                          castingTime: "1 standard action", components: "V, S, F (a book bound in precious metals and treated with rare oils, worth 1,000 gp per HD of the target)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "creature touched",
                          duration: "permanent",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "Hermea’s benevolent Council of Enlightenment uses this spell to humanely preserve their society’s greatest minds from the ravages of time, though it has seen far more sinister employment when put to…",
                          desc: "Hermea’s benevolent Council of Enlightenment uses this spell to humanely preserve their society’s greatest minds from the ravages of time, though it has seen far more sinister employment when put to use by other organizations that have since discovered its utility. This spell binds a single creature into a prepared book, sustaining it in suspended animation and filling the book with its experience and knowledge. The tome weighs 10 pounds and has one page for every day of the subject’s life. The cover and binding transform to reflect the subject’s appearance, interests, and tastes. Every thought and memory—including those the target may have forgotten long ago—are perfectly transcribed within the enchanted pages, penned in excruciating detail in the language that the creature was thinking or speaking in when the event occurred. If a memory includes dialogue in a language the subject didn’t understand, that dialogue is reproduced phonetically, and must be translated by a reader who knows that language. Any alterations to a subject’s memories—such as by a modify memory spell —appear in a subtly different script; a successful DC 35 Linguistics check is needed to identify this. Spells that modify or remove text—such as",
                          source: "Spymaster's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Trial by Fire", school: "Evocation", levels: "antipaladin 3, cleric 3, inquisitor 3, oracle 3, paladin 3, warpriest 3",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: true,
                          summary: "You test a creature’s purity of convictions by exposing it to a sheet of divine fire.",
                          desc: "You test a creature’s purity of convictions by exposing it to a sheet of divine fire. Unless the target’s alignment is within one step of your deity’s, the spell deals 1d6 points of damage per 2 caster levels (maximum 5d6 points of damage). Half the damage is fire damage, but the other half results directly from divine power and is therefore not subject to being reduced by resistance to firebased attacks. Additionally, if the target has an element of its alignment that is in direct opposition to your (chaos opposes law and evil opposes good), you can also attempt an Intimidate check to demoralize the target as a free action.",
                          source: "Spymaster's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Watchful Animal", school: "Divination (Scrying)", levels: "arcanist 4, druid 4, hunter 4, ranger 4, shaman 4, sorcerer 4, witch 4, wizard 4",
                          castingTime: "10 minutes", components: "V, S, M/DF (a desiccated fly)",
                          range: "medium (100 ft. + 10 ft./level)", area: "magical sensor", targets: "",
                          duration: "10 minutes/level",
                          savingThrow: "none;", sr: false,
                          summary: "You place a scrying sensor on your animal companion or familiar. This allows the animal companion or familiar to function as if it were an insect summoned by the greater insect spy UI spell.",
                          desc: "You place a scrying sensor on your animal companion or familiar. This allows the animal companion or familiar to function as if it were an insect summoned by the greater insect spy UI spell. The animal companion or familiar does not change shape, nor does it lose the ability to make its own decisions, but it receives orders and gives answers as per insects summoned by that spell, and you can sense its direction and distance and receive sensory input from it as with that spell.",
                          source: "Spymaster's Handbook", isPremium: true),

                    // // MARK: - Technology Guide
        )
        try await db.insertSpell(
        .make("Antitech Field", school: "Abjuration", levels: "arcanist 7, druid 6, hunter 6, sorcerer 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S, M/DF (pinch of rust)",
                          range: "10 ft.", area: "", targets: "10-ft.-radius emanation centered on you",
                          duration: "1 minute/level (D)",
                          savingThrow: "Fortitude partial (see text);", sr: true,
                          summary: "You bring into being a mobile, hemispherical energy field that prevents technological objects, signals, and creatures from entering.",
                          desc: "You bring into being a mobile, hemispherical energy field that prevents technological objects, signals, and creatures from entering. An antitech field suppresses any technological effect used within, brought into, or deployed into the area, but does not negate it. Time spent within an",
                          source: "Technology Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Destroy Robot", school: "Transmutation", levels: "arcanist 6, druid 5, hunter 5, sorcerer 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S, F/DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one robot (see below)",
                          duration: "instantaneous",
                          savingThrow: "Fortitude partial;", sr: true,
                          summary: "You attempt to destroy any one robot in range. When you cast this spell, your hand crackles with electricity. You must succeed at a ranged touch attack to affect the target.",
                          desc: "You attempt to destroy any one robot in range. When you cast this spell, your hand crackles with electricity. You must succeed at a ranged touch attack to affect the target. The target takes 12d6 points of damage + 1 point per caster level, or 3d6 points of damage + 1 point per caster level on a successful saving throw. A cyborg or android can be damaged by this spell, but takes half damage and gains a +4 bonus on the saving throw to resist the spell’s effects.",
                          source: "Technology Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Detect Radiation", school: "Divination", levels: "arcanist 1, bard 1, cleric 1, druid 1, hunter 1, oracle 1, ranger 1, skald 1, sorcerer 1, warpriest 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "120 ft.", area: "spherical emanation, centered on you", targets: "",
                          duration: "10 minute/level",
                          savingThrow: "none;", sr: false,
                          summary: "You detect radiation in the surrounding area. You see radioactive auras as a glowing green shimmer in the air that emanates from radioactive objects; the brighter and more intense the green, the more…",
                          desc: "You detect radiation in the surrounding area. You see radioactive auras as a glowing green shimmer in the air that emanates from radioactive objects; the brighter and more intense the green, the more powerful the radioactivity. This glow does not provide illumination or allow you to see in darkness, apart from being able to see the glow itself. The spell can penetrate barriers, but 3 feet of dirt or wood, 1 foot of stone, 1 inch of common metal, or a thin sheet of lead blocks it—although radiation can seep into such barriers, causing them to become radioactive (and thus visible to the spell) in time.",
                          source: "Technology Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Discharge", school: "Abjuration", levels: "arcanist 3, bard 3, cleric 3, magus 3, oracle 3, skald 3, sorcerer 3, warpriest 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature or technological object",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates;", sr: false,
                          summary: "Discharge dissipates the charges from one technical object, temporarily depowers one electrically powered technological object that does not use charges, or severely hinders a creature with the robot…",
                          desc: "Discharge dissipates the charges from one technical object, temporarily depowers one electrically powered technological object that does not use charges, or severely hinders a creature with the robot subtype. If the spell targets an object with charges, the object loses all of its remaining charges. If the object is powered by electrical means other than charges, its functions are suppressed for 1d4 rounds. If the spell targets a creature not of the robot subtype, it affects a random charged or electrically powered item in that creature’s possession. If the target is a robot, the robot is staggered and cannot use any energy-based attacks for 1d4 rounds. A robot that’s affected by this spell receives a new saving throw at the end of each round to shrug off the effect. Discharge, Greater",
                          source: "Technology Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Discharge, Greater", school: "Abjuration", levels: "arcanist 3, bard 3, cleric 3, magus 3, oracle 3, skald 3, sorcerer 3, warpriest 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature or technological object",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates;", sr: false,
                          summary: "This spell functions as discharge , except it can discharge multiple technological objects and can be used to target an area.",
                          desc: "This spell functions as discharge , except it can discharge multiple technological objects and can be used to target an area.",
                          source: "Technology Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Infuse Robot", school: "Transmutation", levels: "arcanist 7, cleric 7, druid 7, oracle 7, sorcerer 7, witch 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one robot",
                          duration: "10 minutes/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "If the targeted robot fails its Will saving throw, it transforms into a magical construct made of wood, stone, flesh, or bone.",
                          desc: "If the targeted robot fails its Will saving throw, it transforms into a magical construct made of wood, stone, flesh, or bone. The robot’s statistics and abilities do not change, although it is now a magical construct rather than a technological one. It loses the robot subtype, but does not lose its Intelligence score (if any). You can issue mental commands to the infused robot as long as it stays within range of the spell; issuing commands in this manner is a free action for you. When the spell’s duration runs out, the robot transforms back to normal but is staggered for 1d4 rounds.",
                          source: "Technology Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Irradiate", school: "Conjuration (Creation)", levels: "arcanist 3, cleric 3, druid 4, hunter 4, magus 3, oracle 3, sorcerer 3, summoner 3, summoner (unchained) 3, warpriest 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "special (see below)", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Fortitude partial (see below);", sr: false,
                          summary: "The spell’s area of effect floods with dangerous radiation. The strength of the radiation you create depends on your caster level, as detailed below.",
                          desc: "The spell’s area of effect floods with dangerous radiation. The strength of the radiation you create depends on your caster level, as detailed below. The central irradiated area is always a 10-foot-radius spread that expands normally per the rules for radiation areas of effect (see page 55). Creatures within the area are exposed to the radiation only once; the radiation does not linger in the area. The save to resist the radiation effects is set by the spell, not the standard save DC for radiation. Caster Level Radiation Level",
                          source: "Technology Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Magic Circle Against Technology", school: "Abjuration", levels: "arcanist 4, cleric 4, oracle 4, sorcerer 4, warpriest 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M/DF (a 3-ft.-diameter circle of powdered copper)",
                          range: "touch", area: "10-ft.-radius emanation from touched creature", targets: "",
                          duration: "10 minute/level",
                          savingThrow: "Will negates (harmless), see text;", sr: false,
                          summary: "All creatures within the area gain the effects of a protection from technology spell.",
                          desc: "All creatures within the area gain the effects of a protection from technology spell. Creatures in the area, or that later enter the area, receive only one attempt to suppress technological effects that are controlling them. If a creature succeed at this save, such effects are suppressed as long as the creature remains in the area. Creatures that leave the area and then return are not protected. Robots receive a saving throw and spell resistance to avoid being kept at bay, but the deflection and resistance bonuses and the protection from mental control apply to non-technological creatures in the area even if a robot succeeds at its saving throw and is thus able to enter the area. This spell is not cumulative with",
                          source: "Technology Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Memory of Function", school: "Transmutation", levels: "arcanist 7, cleric 7, oracle 7, sorcerer 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S, powdered skymetal worth 10,000 gp",
                          range: "touch", area: "", targets: "object or construct touched",
                          duration: "instantaneous",
                          savingThrow: "Will negates;", sr: true,
                          summary: "Even a broken object remembers what it means to be a functioning whole. You restore a broken object or damaged construct to a functional state, as if it were new and intact.",
                          desc: "Even a broken object remembers what it means to be a functioning whole. You restore a broken object or damaged construct to a functional state, as if it were new and intact. Any pieces missing from the object or construct remain missing. Significant missing pieces may prevent proper functioning. If the object uses charges, the object becomes fully charged. A timeworn object becomes fully charged, but doesn’t lose the timeworn condition (this spell is one of the few ways a timeworn item can be recharged). For 1 hour after this spell is cast on a timeworn object, that object does not suffer any chance of glitching. Other consumables such as ammunition are not restored. When this spell is cast upon a damaged construct, all hit point damage dealt to that construct is healed. When this spell is cast upon a destroyed construct, it is restored to full functionality and full hit points, provided no significant portion of the destroyed construct (such as an entire limb) is missing. Constructs brought back in this fashion regain their memories up to the moment of their destruction and have no particular inclination to serve the caster. If you attempt to cast this spell on an object or a construct that has been destroyed for more than 10 years per caster level you possess, the spell fails.",
                          source: "Technology Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Protection from Technology", school: "Abjuration", levels: "arcanist 2, cleric 2, oracle 2, sorcerer 2, warpriest 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (a pinch of powdered copper)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 minute/level (D)",
                          savingThrow: "Will negates (harmless), see text;", sr: false,
                          summary: "This spell wards a creature from attacks by technological objects and creatures of the robot subtype, and protects against mental control from technological sources.",
                          desc: "This spell wards a creature from attacks by technological objects and creatures of the robot subtype, and protects against mental control from technological sources. It creates a magical barrier around the subject at a distance of 1 foot. The barrier moves with the subject and has two major effects. First, the target gains a +2 deflection bonus to AC and a +2 resistance bonus on saving throws. Both of these bonuses apply against attacks made or effects caused by technological objects and creatures with the robot subtype. Second, the target immediately receives another saving throw (if one was allowed to begin with) against any technological effects that exercise mental control over the creature, including the effects of pharmaceuticals such as torpinal. The target gains a +2 morale bonus on this saving throw, using the same DC as the original effect. If the target succeeds at this save, such effects are suppressed for the duration of this spell. The effects resume when the duration of this spell expires. While under the effects of this spell, the target is immune to any new attempts to exercise mental control over her using technological means.",
                          source: "Technology Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Rebuke Technology", school: "Abjuration", levels: "arcanist 4, druid 4, hunter 4, sorcerer 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, F/DF (powdered fragments of technology)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one technological object or creature",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates (object);", sr: true,
                          summary: "You shroud the targeted technological object or creature (such as a robot or a nanotech swarm) with magical energy.",
                          desc: "You shroud the targeted technological object or creature (such as a robot or a nanotech swarm) with magical energy. If the targeted creature fails to resist the spell, it is rendered inert and unusable (or unconscious in the case of creatures) for the spell’s duration. A creature can attempt a new Fortitude saving throw to end the effect early at the end of its turn after the first full round it is affected by this spell.",
                          source: "Technology Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Recharge", school: "Evocation", levels: "arcanist 3, bard 2, cleric 3, magus 3, oracle 3, skald 2, sorcerer 3, warpriest 3, wizard 3",
                          castingTime: "1 round", components: "V, S, M (500 gp of diamond dust)",
                          range: "touch", area: "", targets: "object touched",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates (object);", sr: true,
                          summary: "You restore up to 1 charge per level to a battery or half that number of charges to a technological item capable of being charged by a battery.",
                          desc: "You restore up to 1 charge per level to a battery or half that number of charges to a technological item capable of being charged by a battery. If you recharge a battery, there is a 20% chance that the battery is destroyed by the attempt. If you restore more charges than the item can hold, the item must succeed at a Fortitude saving throw or take 1d6 points of electricity damage for each excess charge. This spell provides no knowledge of how many charges an item can safely hold, but you can choose to bestow fewer charges than the maximum allowed to reduce the risk; you must declare how many charges you are restoring before casting this spell.",
                          source: "Technology Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Remove Radioactivity", school: "Conjuration (Healing)", levels: "bard 4, cleric 4, druid 4, hunter 4, inquisitor 4, oracle 4, paladin 4, ranger 4, skald 4, warpriest 4, witch 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature or object touched",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates (object);", sr: true,
                          summary: "You remove all ongoing radiation effects, both primary and secondary, on a single target if you succeed at a caster level check (DC = the Fortitude DC associated with the radiation effect).",
                          desc: "You remove all ongoing radiation effects, both primary and secondary, on a single target if you succeed at a caster level check (DC = the Fortitude DC associated with the radiation effect). In addition, you immediately restore 1d4 points of Constitution drain and 1d4 points of Strength drain caused by radiation—this spell cannot restore ability damage or drain caused by other sources. When cast on an area, a single casting of remove radioactivity removes radiation from a 20-foot-radius area around the point you touch. This spell has no power to negate naturally radioactive materials, and as long as such materials remain in an area, the radiation that was removed may return. Remove Radioactivity, Greater",
                          source: "Technology Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Remove Radioactivity, Greater", school: "Conjuration (Healing)", levels: "bard 4, cleric 4, druid 4, hunter 4, inquisitor 4, oracle 4, paladin 4, ranger 4, skald 4, warpriest 4, witch 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature or object touched",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates (object);", sr: true,
                          summary: "This spell functions like remove radioactivity , save that it cures all ability damage and drain due to radioactivity that the target has taken.",
                          desc: "This spell functions like remove radioactivity , save that it cures all ability damage and drain due to radioactivity that the target has taken. In addition, you can deplete a radioactive object as well, although because you must touch the object to affect it, you expose yourself to at least 1 round of contact with the object’s radiation. You must succeed at a caster level check (DC = 5 + the Fortitude DC associated with the radiation effect) in order to deplete the object. If you are successful, the object no longer emits radiation. In the case of a nuclear reactor or atomic warhead, this permanently renders the reactor or warhead inert and harmless.",
                          source: "Technology Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Technomancy", school: "Divination", levels: "arcanist 1, bard 1, skald 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M (oil stirred with a coil of wires)",
                          range: "60 ft.", area: "", targets: "cone-shaped emanation",
                          duration: "3 rounds/level",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as detect magic , except it detects the presence of technological objects instead of magical objects.",
                          desc: "This spell functions as detect magic , except it detects the presence of technological objects instead of magical objects. The spell grants you the Technologist feat for the purposes of attempting Knowledge (engineering) checks to identify the properties of technological items in your possession. If you already possess this feat, you gain a +10 bonus on Knowledge (engineering) checks to identify item properties.",
                          source: "Technology Guide", isPremium: true),

                    // // MARK: - Ultimate Combat
        )
        try await db.insertSpell(
        .make("Abjuring Step", school: "Abjuration", levels: "alchemist 1, arcanist 1, bard 1, investigator 1, magus 1, occultist 1, psychic 1, skald 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M (a rabbit’s foot)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level or until discharged",
                          savingThrow: "None", sr: false,
                          summary: "This spell creates a subtle and complicated force effect that is most effective when used by a still or slow-moving spellcaster or formula user.",
                          desc: "This spell creates a subtle and complicated force effect that is most effective when used by a still or slow-moving spellcaster or formula user. While you are subject to this spell, you can take two 5-foot steps each round and still cast spells and use spell-like abilities without provoke attacks of opportunity. This spell automatically discharges as soon as you make an attack, cast a harmful spell against another creature, or move more than 5 feet with a single move action. If the action that discharges the spell also provokes attacks of opportunity, that action still provokes attacks of opportunity as normal.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ablative Barrier", school: "Conjuration (Creation)", levels: "alchemist 2, arcanist 3, bloodrager 2, investigator 2, magus 2, occultist 2, psychic 3, sorcerer 3, summoner 2, summoner (unchained) 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a piece of metal cut from a shield)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 hour/level or until discharged",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "Invisible layers of solid force surround and protect the target, granting that target a +2 armor bonus to AC.",
                          desc: "Invisible layers of solid force surround and protect the target, granting that target a +2 armor bonus to AC. Additionally, the first 5 points of lethal damage the target takes from each attack are converted into nonlethal damage. Against attacks that already deal nonlethal damage, the target gains DR 5/—. Once this spell has converted 5 points of damage to nonlethal damage per caster level (maximum 50 points), the spell is discharged.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Absorb Toxicity", school: "Necromancy", levels: "alchemist 3, arcanist 5, druid 4, hunter 4, investigator 3, psychic 5, sorcerer 5, witch 4, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (a thorn from a poisonous plant)",
                          range: "personal", area: "", targets: "you",
                          duration: "10 minutes/level or until discharged",
                          savingThrow: "see text;", sr: false,
                          summary: "You absorb the toxicity of your surroundings, becoming toxic as a result. While under the effect of this spell, you are immune to diseases and poisons with which you come into contact.",
                          desc: "You absorb the toxicity of your surroundings, becoming toxic as a result. While under the effect of this spell, you are immune to diseases and poisons with which you come into contact. When you are exposed to a disease or poison, you can choose to absorb it. Doing so ends the immunity due to this spell to any disease and poison other than the one you absorbed. You remain immune to the new affliction until this spell ends. Casting absorb toxicity on yourself a second time does not allow you to absorb a second toxin, but instead resets the duration of the effect to its full 10 minutes/level. While you have a disease or poison absorbed, you can use a melee touch attack to transfer that affliction to another creature. A missed attack does not discharge the spell, and you can try to transfer the affliction again in subsequent rounds. If you hit, this spell is discharged, and your target must make a saving throw against the transferred affliction (DC equal to this spell’s save DC or the affliction’s save DC, whichever is higher) or suffer its effect or initial effect immediately. The target then continues to suffer from the affliction’s normal effects. If the spell’s duration expires before you have transferred the affliction, you are exposed to any absorbed poison or disease as if you had transferred it to yourself, but you gain a +2 bonus on saves against that particular instance of the poison or disease.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Abundant Ammunition", school: "Conjuration (Summoning)", levels: "arcanist 1, bard 1, cleric 1, hunter 1, oracle 1, psychic 1, ranger 1, skald 1, sorcerer 1, warpriest 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M/DF (a single piece of ammunition)",
                          range: "", area: "", targets: "one container touched",
                          duration: "1 minute/level",
                          savingThrow: "none;", sr: false,
                          summary: "When cast on a container such as a quiver or a pouch that contains nonmagical ammunition or shuriken (including masterwork ammunition or shuriken, but not special materials, achemical attributes, or…",
                          desc: "When cast on a container such as a quiver or a pouch that contains nonmagical ammunition or shuriken (including masterwork ammunition or shuriken, but not special materials, achemical attributes, or nonmagical treatments on the ammunition), at the start of each round this spell replaces any ammunition taken from the container the round before. The ammunition taken from the container the round before vanishes. If, after casting this spell, you cast a spell that enhances projectiles, such as align weapon or",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Adoration", school: "Enchantment", levels: "arcanist 2, bard 1, mesmerist 1, psychic 2, skald 1, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The target of this spell is the subject of adoration by those whom it tries to affect with Diplomacy or during performance combat.",
                          desc: "The target of this spell is the subject of adoration by those whom it tries to affect with Diplomacy or during performance combat. If the target is out of combat, it receives a +2 morale bonus on all Diplomacy checks it makes to influence creatures. If the creature is engaged in performance combat (see page 153), the target gains a +2 morale bonus on all performance combat checks.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Air Bubble", school: "Conjuration (Creation)", levels: "arcanist 1, cleric 1, druid 1, hunter 1, oracle 1, psychic 1, ranger 1, sorcerer 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "S, M/DF (a small bladder filled with air)",
                          range: "touch", area: "", targets: "one creature or one object no larger than a Large two-handed weapon",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "Air bubble creates a small pocket of breathable air that surrounds the touched creature’s head or the touched object.",
                          desc: "Air bubble creates a small pocket of breathable air that surrounds the touched creature’s head or the touched object. The air bubble allows the creature touched to breathe underwater or in similar airless environments, or protects the object touched from water damage. A firearm within an",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Animal Aspect", school: "Transmutation (Polymorph)", levels: "alchemist 2, arcanist 2, bloodrager 2, druid 2, hunter 2, investigator 2, magus 2, psychic 2, ranger 2, redmantisassassin 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (a part of the animal)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "none;", sr: true,
                          summary: "You gain some of the beneficial qualities of an animal. Your base form is largely unchanged and your size is unaltered, but some of your body parts are altered.",
                          desc: "You gain some of the beneficial qualities of an animal. Your base form is largely unchanged and your size is unaltered, but some of your body parts are altered. Armor or gear you are wearing adjusts to your new shape for the duration of the spell. When you cast animal aspect , choose one of the following animals to gain the associated benefits. You can only have one",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Animal Aspect, Greater", school: "Transmutation (Polymorph)", levels: "alchemist 2, arcanist 2, bloodrager 2, druid 2, hunter 2, investigator 2, magus 2, psychic 2, ranger 2, redmantisassassin 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (a part of the animal)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "none;", sr: true,
                          summary: "This spell functions like animal aspect , except you can either gain two aspects at once or one aspect that adds effects to the aspects that",
                          desc: "This spell functions like animal aspect , except you can either gain two aspects at once or one aspect that adds effects to the aspects that",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Arcane Cannon", school: "Transmutation", levels: "arcanist 7, sorcerer 7, wizard 7",
                          castingTime: "1 round", components: "V, S, F (an ornate miniature cannon forged with a drop of your blood that costs 5,000 gp)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one magically animated cannon", targets: "",
                          duration: "1 round/level",
                          savingThrow: "none;", sr: false,
                          summary: "Your focus becomes a Medium arcane cannon that appears in an unoccupied square within the spell’s range. If no unoccupied square is within range, the spell fails.",
                          desc: "Your focus becomes a Medium arcane cannon that appears in an unoccupied square within the spell’s range. If no unoccupied square is within range, the spell fails. The cannon comes into existence loaded. Each round thereafter, the cannon can either fire or load. A cannon must be loaded to fire. You do not need to supply ammunition for the cannon. On your turn, you can spend a move action to direct the cannon to wheel itself to a new location, moving the cannon up to 20 feet. If the",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Bestow Weapon Proficiency", school: "Enchantment (Compulsion)", levels: "alchemist 2, antipaladin 2, arcanist 2, cleric 2, inquisitor 2, investigator 2, magus 2, medium 2, occultist 2, oracle 2, paladin 2, psychic 2, sorcerer 2, warpriest 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (pieces of shaved metal)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You bestow the subject with the ability to use a single type of weapon he is not proficient in as if he were proficient with that weapon.",
                          desc: "You bestow the subject with the ability to use a single type of weapon he is not proficient in as if he were proficient with that weapon. The weapon can be of any type, including an exotic weapon, but the subject of the spell must be holding the weapon.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Blistering Invective", school: "Evocation", levels: "alchemist 2, bard 2, inquisitor 2, investigator 2, mesmerist 2, skald 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "30-ft. radius", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Reflex partial, see text;", sr: false,
                          summary: "You unleash an insulting tirade so vicious and spiteful that enemies who hear it are physically scorched by your fury.",
                          desc: "You unleash an insulting tirade so vicious and spiteful that enemies who hear it are physically scorched by your fury. When you cast this spell, make an Intimidate check to demoralize each enemy within 30 feet of you. Enemies that are demoralized this way take 1d10 points of fire damage and must succeed at a Reflex save or catch fire. Spell resistance can negate the fire damage caused by this spell, but does not protect the creature from the demoralizing effect.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Bowstaff", school: "Transmutation", levels: "hunter 1, inquisitor 1, occultist 2, paladin 1, ranger 1",
                          castingTime: "1 swift action", components: "V",
                          range: "personal", area: "", targets: "one weapon (bow)",
                          duration: "1 round/level (D)",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "The bow that is touched takes on the rigidity and toughness of forged steel, allowing it to be used as a melee weapon.",
                          desc: "The bow that is touched takes on the rigidity and toughness of forged steel, allowing it to be used as a melee weapon. The spell allows a shortbow to be used as a club or a longbow to be used as a quarterstaff, although the bow retains its normal hit points and hardness. The bow’s enhancement bonus, if any, applies on melee attack and damage rolls. Additional weapon special weapon qualities also apply to melee attacks if such qualities can be added to a melee weapon.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Brow Gasher", school: "Necromancy", levels: "arcanist 2, bloodrager 2, hunter 2, inquisitor 2, magus 2, occultist 2, ranger 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "one slashing melee weapon touched", targets: "",
                          duration: "1 round/level or until discharged",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "You imbue a slashing melee weapon with the ability to deal a gruesome head wound.",
                          desc: "You imbue a slashing melee weapon with the ability to deal a gruesome head wound. When the target weapon hits a living creature, in addition to the normal effects of that hit, the wielder can discharge this spell as a free action to open a gash on the target’s forehead that deals bleed damage equal to half your caster level. At the start of each of the target’s turns, when it takes bleed damage, it also takes a cumulative –1 penalty on all attack rolls. When that penalty reaches –3, the target also treats all targets as having concealment (20% miss chance). When the penalty reaches –5, the target is blinded. Stopping the bleed damage ends the effects this spell imposes on the bleeding creature. A target that is immune to bleed damage is also immune to all this spell’s effects.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Bullet Shield", school: "Abjuration", levels: "alchemist 2, arcanist 2, bloodrager 2, investigator 2, occultist 2, psychic 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a bullet)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 minutes/level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The warded creature gains a +4 deflection bonus to AC against firearm and ranged attacks, with an additional +1 to the bonus for every five caster levels you have (to a maximum of +8 at 20th level).",
                          desc: "The warded creature gains a +4 deflection bonus to AC against firearm and ranged attacks, with an additional +1 to the bonus for every five caster levels you have (to a maximum of +8 at 20th level). Though the spell is called bullet shield , it also grants this protection from attacks made from firearms with the scatter weapon quality.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Burst of Speed", school: "Transmutation", levels: "alchemist 3, antipaladin 3, bloodrager 3, hunter 3, inquisitor 3, investigator 3, magus 3, medium 3, paladin 3, psychic 3, ranger 3",
                          castingTime: "1 swift action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "see text",
                          savingThrow: "None", sr: false,
                          summary: "Until the end of your turn, you gain a +20-foot bonus to speed (or +10-foot bonus if you are wearing Medium or Heavy armor), your movement does not provoke attacks of opportunity, and you can move…",
                          desc: "Until the end of your turn, you gain a +20-foot bonus to speed (or +10-foot bonus if you are wearing Medium or Heavy armor), your movement does not provoke attacks of opportunity, and you can move through the space of creatures that are larger than you are, but you cannot end your movement this round in a space occupied by a creature.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Caging Bomb Admixture", school: "Evocation", levels: "alchemist 6, investigator 6",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "Upon drinking an extract created with this formulae, you make a significant change to your magical reserve that modifies the nature of all bombs you create and throw during this extract’s duration.",
                          desc: "Upon drinking an extract created with this formulae, you make a significant change to your magical reserve that modifies the nature of all bombs you create and throw during this extract’s duration. This effect on your magical reserve has no effect on any discoveries that you use to modify your bombs, but you can only have one admixture effect (formulae with the word “bomb admixture” in its title) active at a time. If you drink another bomb admixture, the effects of the former bomb admixture end and the new one becomes active. When you throw a bomb and hit a direct target, it creates an invisible cubical prison composed of a solid wall of force . The prison is as large as the splash area of the bomb that you threw, and traps any creature that is entirely inside the area. Creatures within the area are caught and contained unless any creature within the splash radius is too big to fit inside, in which case the effect automatically fails. Teleportation and other forms of astral travel provide means for escape, but the force walls extend into the Ethereal Plane, blocking ethereal travel.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Certain Grip", school: "Transmutation", levels: "alchemist 2, arcanist 2, bloodrager 2, druid 2, hunter 2, investigator 2, occultist 2, redmantisassassin 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (a tiny ball of tar)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 minutes/level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The subject’s grip and footing become sure, granting a +4 competence bonus on Climb checks, on Acrobatics checks to balance, and to CMD against bull rush, drag, reposition, and trip attempts.",
                          desc: "The subject’s grip and footing become sure, granting a +4 competence bonus on Climb checks, on Acrobatics checks to balance, and to CMD against bull rush, drag, reposition, and trip attempts. While affected by this spell, the target is also immune to the disarm combat maneuver.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Chain of Perdition", school: "Evocation", levels: "arcanist 3, bloodrager 3, cleric 3, oracle 3, psychic 3, sorcerer 3, warpriest 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M/DF (chain link)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "10-ft. chain", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: true,
                          summary: "A floating chain of force with hooks at each end appears within an unoccupied space of your choosing within range. This chain is a Medium object that has a 10-foot reach.",
                          desc: "A floating chain of force with hooks at each end appears within an unoccupied space of your choosing within range. This chain is a Medium object that has a 10-foot reach. Physical attacks cannot hit or harm the chain of perdition , but",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Companion Mind Link", school: "Enchantment (Charm)", levels: "druid 3, hunter 3, ranger 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "your animal companion",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "The link between you and your animal companion becomes stronger.",
                          desc: "The link between you and your animal companion becomes stronger. As long as you are within line of sight of your animal companion, you can telepathically communicate with it as if you two shared a language. Also, as long as you are within line of sight of the animal companion, you can push your animal companion a swift action instead of a move action, and you do not need to succeed at Handle Animal checks to handle your animal companion. Such checks automatically succeed.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Compel Hostility", school: "Enchantment (Compulsion)", levels: "bard 1, cleric 1, hunter 1, inquisitor 1, medium 1, mesmerist 1, oracle 1, paladin 1, psychic 1, ranger 1, skald 1, summoner 1, summoner (unchained) 1, warpriest 1, witch 1",
                          castingTime: "1 standard action", components: "V, S, M (a drop of your blood)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "see text;", sr: false,
                          summary: "Whenever a creature you can see that threatens you makes an attack against one of your allies, as an immediate action, you can compel that creature to attack you instead.",
                          desc: "Whenever a creature you can see that threatens you makes an attack against one of your allies, as an immediate action, you can compel that creature to attack you instead. When you compel a creature to attack you, you must first overcome that creature’s spell resistance, and the creature can attempt a Will saving throw to ignore the compulsion. A summoner casting this spell can choose his eidolon as the target of the spell.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Damp Powder", school: "Transmutation", levels: "arcanist 1, druid 1, hunter 1, redmantisassassin 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M/DF (a damp piece of cotton)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "1 loaded firearm",
                          duration: "instantaneous",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "This spell causes ammunition already loaded into the target firearm is ruined with moisture.",
                          desc: "This spell causes ammunition already loaded into the target firearm is ruined with moisture. Any attempt to fire that ammunition fails, with no chance for misfire, and the user must then take a full-round action to clear the weapon before reloading and firing it. If aware of this spell’s effect prior to firing the altered ammunition (a DC 16 Spellcraft check to identify the spell being cast or similar effect), the firearm’s user can spend a standard action to clear the altered ammunition from the firearm. Doing so destroys that ammunition.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Daybreak Arrow", school: "Evocation", levels: "cleric 3, inquisitor 3, occultist 3, oracle 3, paladin 3, warpriest 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "up to 50 pieces of ammunition, all of which must be together at the time of casting",
                          duration: "10 minutes/level",
                          savingThrow: "Fortitude negates (harmless, object);", sr: true,
                          summary: "You cause ammunition, including shuriken, to exude radiant energy. Creatures that take penalties in bright light take these penalties for 1 round after being struck by such ammunition.",
                          desc: "You cause ammunition, including shuriken, to exude radiant energy. Creatures that take penalties in bright light take these penalties for 1 round after being struck by such ammunition. Undead and creatures harmed by sunlight take an additional 1d6 points of damage from such projectiles. This extra damage and half of any other damage you deal with an affected projectile results directly from radiant energy and is not subject to damage resistance. Such a projectile sheds light as if it were a sunrod for 1 round after it is fired or thrown.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Deadly Juggernaut", school: "Necromancy", levels: "antipaladin 3, cleric 3, inquisitor 3, oracle 3, paladin 3, warpriest 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "With every enemy life you take, you become increasingly dangerous and difficult to stop.",
                          desc: "With every enemy life you take, you become increasingly dangerous and difficult to stop. During the duration of the spell, you gain a cumulative +1 luck bonus on melee attack rolls, melee weapon damage rolls, Strength checks, and Strength-based skill checks as well as DR 2/— each time you reduce a qualifying opponent to 0 or few hit points (maximum +5 bonus and DR 10/—) with a melee attack. A qualifying opponent has a number of Hit Dice equal to or greater than your Hit Dice –4.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Debilitating Portent", school: "Enchantment (Compulsion)", levels: "cleric 4, oracle 4, psychic 4, spiritualist 4, warpriest 4, witch 4",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "1 round/level (D) see text",
                          savingThrow: "none;", sr: true,
                          summary: "The target is surrounded by a glowing green aura of ill fate. Each time the spell’s subject makes an attack or casts a spell, it must succeed at a Will saving throw with a DC = 10 + 1/2 caster level…",
                          desc: "The target is surrounded by a glowing green aura of ill fate. Each time the spell’s subject makes an attack or casts a spell, it must succeed at a Will saving throw with a DC = 10 + 1/2 caster level + Charisma (in the case of oracles), Intelligence (in the case of witches), or Wisdom (in the case of clerics). If it fails the saving throw, it deals half damage with the attack or spell. You can dismiss this spell as an immediate action when the target confirms a critical hit; doing so negates the critical hit. The attack that you negated still hits, but only deals half damage.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Destabilize Powder", school: "Transmutation", levels: "arcanist 2, redmantisassassin 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a few drops of liquor)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "1 loaded firearm",
                          duration: "instantaneous",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "This spell makes the ammunition in the target firearm is prone to misfire.",
                          desc: "This spell makes the ammunition in the target firearm is prone to misfire. Increase the misfire range by 1 + 1 per five caster levels (maximum +5) for the ammunition currently loaded into that firearm. If aware of this spell’s effect prior to firing the altered ammunition (a DC 17 Spellcraft check to identify the spell being cast or similar effect), the firearm’s user can spend a standard action to clear the altered ammunition from the firearm. Doing so destroys that ammunition.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Discovery Torch", school: "Evocation", levels: "bard 2, cleric 3, inquisitor 2, oracle 3, skald 2, warpriest 3",
                          castingTime: "1 round", components: "V, S",
                          range: "touch", area: "", targets: "object touched",
                          duration: "10 minutes/level",
                          savingThrow: "none;", sr: false,
                          summary: "An object you touch emanates a 20-foot radius of bright light. The effect looks like a regular flame but creates no heat and uses no oxygen.",
                          desc: "An object you touch emanates a 20-foot radius of bright light. The effect looks like a regular flame but creates no heat and uses no oxygen. Allies within the area of this light gain a +2 enhancement bonus on Perception and Sense Motive checks, as well as on Knowledge checks to identify monsters that are also within the area and their special powers and vulnerabilities. When an inquisitor casts this spell, the light emanation doubles (40-ft.-radius emanation) while that inquisitor has a judgment active. Light spells counter and dispel darkness spells of an equal or lower level.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Divine Arrow", school: "Transmutation", levels: "paladin 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "one projectile",
                          duration: "1 round/level or until discharged",
                          savingThrow: "none;", sr: false,
                          summary: "You imbue a projectile, such as an arrow or shuriken, with holy energy so that it deals extra damage to undead equal to that dealt by your lay on hands feature.",
                          desc: "You imbue a projectile, such as an arrow or shuriken, with holy energy so that it deals extra damage to undead equal to that dealt by your lay on hands feature. This extra damage is not multiplied on a critical hit. Although this spell does not expend a daily use of your lay on hands class feature, you must have at least one daily use available to cast this spell. If the projectile hits a target or is destroyed before the duration ends, the spell is discharged.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Dust Form", school: "Transmutation (Polymorph)", levels: "alchemist 5, cleric 6, druid 6, hunter 6, investigator 5, oracle 6, psychic 6, warpriest 6, witch 6",
                          castingTime: "1 standard action", components: "V, S, M (a pinch of dust gathered from a gravestone or sacred shrine)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "Upon casting this spell, you keep your relative form, but you and your equipment become composed entirely of dust.",
                          desc: "Upon casting this spell, you keep your relative form, but you and your equipment become composed entirely of dust. While in this dust form, you take no penalties for squeezing, and can move through spaces as if you were a creature three size categories smaller without penalty. You are also considered incorporeal, though any nonmagical attack you make deals half damage (50%). Magic attacks are unaffected, and you can still use your magic items and other equipment as normal. If the duration ends in a square that your normal space cannot occupy, you take 3d6 damage and are shunted to the nearest open space that you can normally occupy.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Effortless Armor", school: "Transmutation", levels: "cleric 2, hunter 2, inquisitor 2, magus 2, occultist 2, oracle 2, paladin 2, psychic 2, ranger 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "Armor you wear no longer reduces your speed. You also reduce the armor’s armor check penalty by 1 + 1 per five caster levels (maximum 5).",
                          desc: "Armor you wear no longer reduces your speed. You also reduce the armor’s armor check penalty by 1 + 1 per five caster levels (maximum 5).",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Energy Siege Shot", school: "Transmutation", levels: "arcanist 5, occultist 5, sorcerer 5, summoner 5, wizard 5",
                          castingTime: "10 minutes", components: "V, S, M (a ball of pitch)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one Large siege engine",
                          duration: "10 minute/level",
                          savingThrow: "Fortitude negates (harmless, object);", sr: true,
                          summary: "This spell transforms any ammunition fired by the target ranged siege engine into ammunition made of pure energy.",
                          desc: "This spell transforms any ammunition fired by the target ranged siege engine into ammunition made of pure energy. When casting the spell, the caster picks a one of the following energy types: acid, cold, electricity, fire, sonic, or force. The ammunition within the siege weapon now deals that type of energy damage on a hit, though the amount of damage dealt by the ammunition does not change, nor does it change any of the other effects of the ammunition. Unlike other forms of energy damage, this energy damage does full damage to objects. Based on the type of energy the caster chose while casting, the ammunition also gains one of the following effects. Acid : The ammunition deals half its damage in a splash to all creatures and unattended objects within 15 feet of the target hit by the siege engine. Creatures can halve the splash damage with a Reflex saving throw. The DC of the splash is the same as the DC of the spell.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Energy Siege Shot, Greater", school: "Transmutation", levels: "arcanist 5, occultist 5, sorcerer 5, summoner 5, wizard 5",
                          castingTime: "10 minutes", components: "V, S, M (a ball of pitch)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one Large siege engine",
                          duration: "10 minute/level",
                          savingThrow: "Fortitude negates (harmless, object);", sr: true,
                          summary: "This spell functions like energy shot , except it can target siege engines of any size, not just Large siege engines.",
                          desc: "This spell functions like energy shot , except it can target siege engines of any size, not just Large siege engines.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Fabricate Bullets", school: "Transmutation", levels: "arcanist 1, redmantisassassin 1, sorcerer 1, wizard 1",
                          castingTime: "1 round", components: "V, S, M (1 pound of lead or other soft metal worth 2 gp)",
                          range: "touch", area: "", targets: "1 pound of soft metal",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "You convert 1 pound of lead into bullets. When you cast this spell, you decide whether you create normal sling bullets, firearm bullets, or firearm pellets.",
                          desc: "You convert 1 pound of lead into bullets. When you cast this spell, you decide whether you create normal sling bullets, firearm bullets, or firearm pellets. The spell creates two sling bullets, 30 firearm bullets, or 10 uses of pellets.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Fiery Shuriken", school: "Conjuration (Creation)", levels: "arcanist 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a pinch of sulfur and a single shuriken worth 2 sp)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "Two or more fiery shuriken", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: true,
                          summary: "You call forth two fiery projectiles resembling shuriken, plus one more for every two caster levels beyond 3rd (to a maximum of eight shuriken at 15th level), which hover in front of you.",
                          desc: "You call forth two fiery projectiles resembling shuriken, plus one more for every two caster levels beyond 3rd (to a maximum of eight shuriken at 15th level), which hover in front of you. When these shuriken appear, you can launch some or all of them at the same target or different targets. Each shuriken requires a ranged touch attack roll to hit and deals 1d8 points of fire damage. You provoke no attacks of opportunity when launching them. Any shuriken you do not launch as part of casting this spell remains floating near you for the spell’s duration. On rounds subsequent to your casting of this spell, you can spend a swift action to launch one of these remaining shuriken or a standard action to launch any number of these remaining shuriken. If you fail to launch a shuriken before the duration ends, that shuriken disappears and is wasted.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Find Quarry", school: "Divination", levels: "hunter 4, inquisitor 4, occultist 5, ranger 4",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "You sense whether a well-known creature you can clearly visualize is within a 20-mile radius of your current location, as well as the distance and direction to the creature in relation to you.",
                          desc: "You sense whether a well-known creature you can clearly visualize is within a 20-mile radius of your current location, as well as the distance and direction to the creature in relation to you. You also discern whether the creature is moving, and its direction, speed, and mode of movement. The radius you can sense increases by 5 miles for every two caster levels you have above 10th (to a maximum of a 45-mile radius at 20th level). Anything that would prevent locate creature from finding a creature also prevents",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Flash Fire", school: "Transmutation", levels: "arcanist 3, redmantisassassin 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a pinch of powdered fool’s gold)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "1 firearm",
                          duration: "instantaneous",
                          savingThrow: "Will negates (object), see text;", sr: true,
                          summary: "The firearm fires with a blinding flash, even if the firearm is not currently loaded.",
                          desc: "The firearm fires with a blinding flash, even if the firearm is not currently loaded. Every creature within 15 feet of the creature carrying the weapon must succeed at a Fortitude save or be blinded for 1d4 rounds. The creature carrying the firearm takes a –4 penalty on this saving throw. If the firearm is loaded, the ammunition is wasted.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Forest Friend", school: "Abjuration", levels: "druid 2, hunter 2, ranger 2",
                          castingTime: "1 round", components: "V, S, M (a pinch of manure)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one willing living creature per three levels, no two of which may be more than 30 ft. apart.",
                          duration: "1 minute/level",
                          savingThrow: "none;", sr: false,
                          summary: "While subject to this spell, the targets find that forested areas become helpful instead of hindering.",
                          desc: "While subject to this spell, the targets find that forested areas become helpful instead of hindering. The targets suffer no hindrances to movement and suffer no penalties on Acrobatics and Stealth checks from undergrowth in forested terrain. Furthermore, forested overgrowth imposes a miss chance 10% lower than normal. When moving in and among trees, those subject to the spell gain a +5 circumstance bonus on Acrobatics checks and Climb checks. Rangers in their favored terrain can also add their favored terrain bonus on such Acrobatics and Climb checks.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Frightful Aspect", school: "Transmutation (Polymorph)", levels: "arcanist 8, cleric 8, druid 8, oracle 8, psychic 8, sorcerer 8, witch 8, wizard 8",
                          castingTime: "1 standard action", components: "V, S, M (the skin of a toad)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "You become a larger, awful version of yourself. You grow to size Large, and take on features that horrify your enemies.",
                          desc: "You become a larger, awful version of yourself. You grow to size Large, and take on features that horrify your enemies. You gain the following abilities: a +6 size bonus to Strength, a +4 size bonus to Constitution, a +6 natural armor bonus, DR 10/magic, and spell resistance equal to 10 + half your caster level. You also emit an aura that emanates 30 feet from you. Enemy creatures within the aura are shaken. Each time a creature shaken by this aura hits you with a melee attack, that creature becomes frightened for 1d4 rounds, though at the end of that duration it is no longer affected by this aura. The aura’s effect is a fear and mind-affecting effect.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Frost Fall", school: "Evocation", levels: "arcanist 2, druid 2, hunter 2, occultist 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "5-foot radius burst", targets: "",
                          duration: "1 round/2 levels",
                          savingThrow: "Fortitude partial;", sr: true,
                          summary: "The area of this spell is covered in chilling frost, dealing 2d6 points of cold damage to all creatures within it.",
                          desc: "The area of this spell is covered in chilling frost, dealing 2d6 points of cold damage to all creatures within it. Creatures that the spell initially damages must succeed at a Fortitude save or become staggered for 1 round. The area remains chilled for the spell’s duration. Any creature that starts your turn within the spell’s area takes 1d6 points of cold damage (Fortitude saving throw for half) but does not become staggered even on a failed saving throw.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Haunted Fey Aspect", school: "Illusion (Glamer)", levels: "arcanist 0, bard 0, medium 0, mesmerist 0, psychic 0, skald 0, sorcerer 0, wizard 0",
                          castingTime: "1 standard action", components: "S",
                          range: "Personal", area: "", targets: "You",
                          duration: "1 round/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "You surround yourself with disturbing illusions, making you look and sound like a bizarre, insane fey creature.",
                          desc: "You surround yourself with disturbing illusions, making you look and sound like a bizarre, insane fey creature. You gain DR 1/cold iron against a single opponent until the end of the spell, or until you take damage.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Healing Thief", school: "Necromancy", levels: "arcanist 3, mesmerist 1, occultist 3, psychic 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a bit of sponge, damp with tears)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 round/level or until discharged",
                          savingThrow: "none;", sr: true,
                          summary: "With this spell you can steal the healing of the target creature. You must succeed at a melee touch attack to strike the target.",
                          desc: "With this spell you can steal the healing of the target creature. You must succeed at a melee touch attack to strike the target. If you do, until the effect ends, whenever your target is subject to a healing spell or a supernatural effect that heals hit points, the target only receives half the healing (rounded down) and you receive the other half (also rounded down). You must remain within 25 feet (plus 5 feet per two caster levels) of the target to gain this benefit. If you move outside that range, the spell is discharged. Once you steal 5 hit points per your caster level (maximum 50 hit points) of healing from this spell’s effect, the spell is discharged.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Heroic Invocation", school: "Enchantment (Compulsion)", levels: "arcanist 9, psychic 9, sorcerer 9, witch 9, wizard 9",
                          castingTime: "10 minutes", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one or more creatures, no two of which can be more than 30 ft. apart",
                          duration: "10 minutes /level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "Using worlds of ancient power, you bestow heroic powers on all creatures subject to this spell.",
                          desc: "Using worlds of ancient power, you bestow heroic powers on all creatures subject to this spell. They gain a +4 morale bonus on attack and damage rolls, gain 2d8+4 temporary hit points, and become immune to both fear and charm effects for the spell’s duration. At the end of the spell’s duration, the subjects become fatigued.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hostile Juxtaposition", school: "Conjuration (Teleportation)", levels: "arcanist 5, mesmerist 4, psychic 5, sorcerer 5, summoner 4, summoner (unchained) 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (a coin)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature of your size or smaller",
                          duration: "1 round/level or until discharged",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You create a dimensional link to the target creature. When attacked or the subject of a spell that deals damage to you, you can spend an immediate action to cause yourself and the target creature to…",
                          desc: "You create a dimensional link to the target creature. When attacked or the subject of a spell that deals damage to you, you can spend an immediate action to cause yourself and the target creature to teleport and switch places. The target then becomes the target of the triggering attack or spell instead of you. If you fail to teleport out of the area of an effect, that effect might still affect you. If the target creature cannot fit safely into the new space without squeezing, or you try to teleport the target into an occupied space or a space it could not normally stand within, the juxtaposition fails. Further, if the target is unconscious or dead when you attempt to switch places, the juxtaposition fails. Once you have used it to teleport once, this spell is discharged. Hostile Juxtaposition, Greater",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hostile Juxtaposition, Greater", school: "Conjuration (Teleportation)", levels: "arcanist 5, mesmerist 4, psychic 5, sorcerer 5, summoner 4, summoner (unchained) 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (a coin)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature of your size or smaller",
                          duration: "1 round/level or until discharged",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions like hostile juxtaposition , except you can target one creature for every four caster levels you have or you can target a single creature that is larger than you are.",
                          desc: "This spell functions like hostile juxtaposition , except you can target one creature for every four caster levels you have or you can target a single creature that is larger than you are. You can switch places with each target only once while the effect lasts. Once you have used it to teleport and switch places with each affected target, the spell is discharged.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hostile Levitation", school: "Transmutation", levels: "arcanist 3, bloodrager 3, medium 2, mesmerist 3, occultist 3, psychic 3, redmantisassassin 3, sorcerer 3, spiritualist 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a leather loop studded with lodestones)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You levitate the target a few inches off the ground, removing solid footing and halving the target’s speed. The target also takes a –4 penalty to CMD against bull rush, drag, and reposition attempts.",
                          desc: "You levitate the target a few inches off the ground, removing solid footing and halving the target’s speed. The target also takes a –4 penalty to CMD against bull rush, drag, and reposition attempts. A targeted creature that attacks with a melee or ranged weapon finds itself increasingly unstable; the first attack has a –1 penalty on attack rolls, the second –2, and so on, to a maximum penalty of –5. A full-round action spent stabilizing allows the creature to begin again at –1. This spell fails if cast on a flying creature.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Illusion of Calm", school: "Illusion (Figment)", levels: "alchemist 1, arcanist 1, investigator 1, magus 1, mesmerist 1, occultist 1, psychic 1, redmantisassassin 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "Will disbelieve (on hit, see below);", sr: false,
                          summary: "When casting this spell, you create an illusory double that takes the same space of you. That double makes it look like you are standing still, even when you are not.",
                          desc: "When casting this spell, you create an illusory double that takes the same space of you. That double makes it look like you are standing still, even when you are not. While under the effects of this spell, you do not provoke attacks of opportunity when you cast a spell, make a ranged attack with a thrown weapon, or move out of your first square during a move action. It does not hide ranged attacks made with any type of projectile weapon. When a creature hits you with an attack of any type, it gains a saving throw to disbelieve the figment. On a successful saving throw, it successfully disbelieves and the spell’s effect ends for that creature.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Instrument of Agony", school: "Transmutation", levels: "cleric 2, inquisitor 2, oracle 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "weapon touched",
                          duration: "1 minutes/level",
                          savingThrow: "Will negates (harmless, object), see text;", sr: true,
                          summary: "You cause a weapon to exude a palpable aura of divine fury. While wielding this weapon, a creature gains a +2 morale bonus on Intimidate checks.",
                          desc: "You cause a weapon to exude a palpable aura of divine fury. While wielding this weapon, a creature gains a +2 morale bonus on Intimidate checks. When an attack made using the targeted weapon hits, the wielder can spend a free action to discharge the effect to inflict agony on the creature the weapon hit. If that creature has spell resistance, it applies against this effect. If the creature fails a Will save, it is nauseated for 1d4+1 rounds. If it succeeds at the saving throw, the creature is instead sickened for 1 round. The sickened condition created by the instrument is a mind-affecting effect.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Jolting Portent", school: "Evocation", levels: "cleric 7, oracle 7",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "1 round/level (D) see text",
                          savingThrow: "none;", sr: true,
                          summary: "The creature you designate is surrounded by a glowing red aura of vengeful fate.",
                          desc: "The creature you designate is surrounded by a glowing red aura of vengeful fate. Once per round when the target makes an attack or casts a spell, it must succeed at a Fortitude saving throw with a DC = 10 + 1/2 caster level + Charisma (in the case of oracles) or Wisdom (in the case of clerics). If the target fails the saving throw, it takes 4d6 + your Charisma modifier (in the case of oracles) or Wisdom modifier (in the case of clerics) electricity damage. It takes no damage on a successful saving throw. You can dismiss this spell as an immediate action when its subject confirms a critical hit to negate the critical hit and daze the creature for 1 round. The attack still hits its target and deals normal damage. The effects of the daze occur after the attack.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Judgment Light", school: "Evocation", levels: "inquisitor 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "30-ft.-radius burst", targets: "",
                          duration: "instantaneous, see text",
                          savingThrow: "see text;", sr: true,
                          summary: "An inquisitor may only cast this spell while she has a judgment active. When she does cast this spell, it causes one or more of the following effects based on the inquisitor’s active judgments.",
                          desc: "An inquisitor may only cast this spell while she has a judgment active. When she does cast this spell, it causes one or more of the following effects based on the inquisitor’s active judgments. Destruction : Red light erupts from the caster. Enemies in the area take 4d8 points of damage and become shaken for 1d4 rounds. A successful Will saving throw halves the damage and negates the shaken effect.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Jury-Rig", school: "Transmutation", levels: "arcanist 1, bard 1, magus 1, occultist 1, psychic 1, redmantisassassin 1, skald 1, sorcerer 1, summoner 1, summoner (unchained) 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M (a pinch of tree resin)",
                          range: "touch", area: "", targets: "one broken object of up to 2 lbs./level",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "When you cast this spell, a spectral force binds a broken weapon together, relieving the broken condition for a short time.",
                          desc: "When you cast this spell, a spectral force binds a broken weapon together, relieving the broken condition for a short time. While under the effects of this spell, an item with the broken condition suffers no adverse effects from that condition, and is treated as if it is not broken. The object regains no hit points, and damage can still destroy the object.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Kinetic Reverberation", school: "Transmutation", levels: "alchemist 2, arcanist 2, investigator 2, psychic 2, redmantisassassin 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (rubber tree sap)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates (object);", sr: true,
                          summary: "This spell converts the momentum and force from melee attacks made against the target of the spell, reflecting them back upon the attacker’s weapon.",
                          desc: "This spell converts the momentum and force from melee attacks made against the target of the spell, reflecting them back upon the attacker’s weapon. After making a successful melee attack against the target, an attacker must make a Fortitude saving throw for the weapon used. If the weapon fails the save, it takes damage equal to the damage rolled against the target. Creatures using natural attacks or unarmed strikes are unaffected by this spell.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Languid Bomb Admixture", school: "Enchantment (Compulsion)", levels: "alchemist 5, investigator 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "Will negates (special, see below);", sr: true,
                          summary: "Upon drinking an extract created with this formula, you make a significant change to your magical reserve that modifies the nature of all bombs you create and throw during this extract’s duration.",
                          desc: "Upon drinking an extract created with this formula, you make a significant change to your magical reserve that modifies the nature of all bombs you create and throw during this extract’s duration. This effect on your magical reserve has no effect on any discoveries that you use to modify your bombs, but you can only have one admixture effect (formulae with the words “bomb admixture” in their titles) active at a time. If you drink another bomb admixture, the effects of the former bomb admixture end and the those of the new one become active. When you throw a bomb and hit a direct target, it affects up to four creatures—the creature the bomb hit directly, and up to three other creatures damaged by the splash (alchemist’s choice). Those creatures must succeed at a Will saving throw or become fatigued.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Life Conduit", school: "Conjuration (Healing)", levels: "summoner 1, summoner (unchained) 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "You utilize life conduit to share hit points with your eidolon.",
                          desc: "You utilize life conduit to share hit points with your eidolon. While this spell is active, you can spend a swift action to transfer 1d6 hit points between you and your eidolon, either taking damage yourself and healing your eidolon or healing yourself and damaging your eidolon. If your eidolon moves farther than 50 feet from you, this spell ends. Life Conduit, Greater",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Life Conduit, Greater", school: "Conjuration (Healing)", levels: "summoner 1, summoner (unchained) 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions like life conduit , except you can transfer 3d6 hit points as a swift action. Life Conduit, Improved",
                          desc: "This spell functions like life conduit , except you can transfer 3d6 hit points as a swift action. Life Conduit, Improved",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Life Conduit, Improved", school: "Conjuration (Healing)", levels: "summoner 1, summoner (unchained) 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions like life conduit , except you can transfer 2d6 hit points as a swift action.",
                          desc: "This spell functions like life conduit , except you can transfer 2d6 hit points as a swift action.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Lightning Lash Bomb Admixture", school: "Evocation", levels: "alchemist 3, investigator 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "special, see below;", sr: false,
                          summary: "Upon drinking an extract created with this formula, you make a significant change to your magical reserve that modifies the nature of all bombs you create and throw during this extract’s duration.",
                          desc: "Upon drinking an extract created with this formula, you make a significant change to your magical reserve that modifies the nature of all bombs you create and throw during this extract’s duration. This effect on your magical reserve has no effect on any discoveries that you use to modify your bombs, but you can only have one admixture effect (formulae with the word “bomb admixture” in its title) active at a time. If you drink another bomb admixture, the effects of the former bomb admixture end and those of the new one become active. When you throw a bomb and hit a direct target, lashes of electrical energy are released from the bomb, coalescing on the bomb’s direct target and up to three creatures that take damage from the bomb’s splash (alchemist’s choice). Those affected by the electricity must succeed at a Reflex saving throw or take 1d6 points of electrical damage each time they take a move action to move more than 5 feet for the duration of the effect. This effect does not ignore spell resistance.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Litany of Defense", school: "Transmutation", levels: "antipaladin 2, inquisitor 2, paladin 2",
                          castingTime: "1 swift action", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round",
                          savingThrow: "no;", sr: true,
                          summary: "Invoking this litany strengthens your defenses. Any enhancement bonus your armor has is doubled and you are immune to fear.",
                          desc: "Invoking this litany strengthens your defenses. Any enhancement bonus your armor has is doubled and you are immune to fear. While subject to this spell, the target cannot be the target of another spell that has the word \"litany\" in the title.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Litany of Eloquence", school: "Enchantment (Charm)", levels: "antipaladin 2, inquisitor 3, paladin 2",
                          castingTime: "1 swift action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round",
                          savingThrow: "no;", sr: true,
                          summary: "Your litany is a fascinating diatribe of grace, causing your target to do nothing but listen. The target is fascinated.",
                          desc: "Your litany is a fascinating diatribe of grace, causing your target to do nothing but listen. The target is fascinated. As usual, obvious danger prevents fascination and potential danger grants a save. While subject to this spell, the target cannot be the target of another spell that has the word \"litany\" in the title.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Litany of Entanglement", school: "Conjuration (Calling)", levels: "antipaladin 2, inquisitor 3, paladin 2",
                          castingTime: "1 swift action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round",
                          savingThrow: "Will negates;", sr: true,
                          summary: "Your litany conjures chains of energy that lash upward from the ground and hamper the target’s movement. The target is entangled.",
                          desc: "Your litany conjures chains of energy that lash upward from the ground and hamper the target’s movement. The target is entangled. This spell has no effect on flying creatures, or creatures not standing upon solid ground. While subject to this spell, the target cannot be the target of another spell that has the word \"litany\" in the title.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await seedSpellsK()
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