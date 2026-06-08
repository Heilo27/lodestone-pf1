import Foundation

extension SeedDataBuilder {
    func seedSpells() async throws {
        try await db.insertSpell(
        .make("Acid Arrow", school: "Conjuration (Creation)", levels: "arcanist 2, bloodrager 2, magus 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (rhubarb leaf and an adder's stomach), F (a dart)",
                          range: "long (400 ft. + 40 ft./level)", area: "one arrow of acid", targets: "",
                          duration: "1 round + 1 round per three levels",
                          savingThrow: "none;", sr: false,
                          summary: "An arrow of acid springs from your hand and speeds to its target. You must succeed on a ranged touch attack to hit your target. The arrow deals 2d4 points of acid damage with no splash damage.",
                          desc: "An arrow of acid springs from your hand and speeds to its target. You must succeed on a ranged touch attack to hit your target. The arrow deals 2d4 points of acid damage with no splash damage. For every three caster levels you possess, the acid, unless neutralized, lasts for another round (to a maximum of 6 additional rounds at 18th level), dealing another 2d4 points of damage in each round.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Acid Fog", school: "Conjuration (Creation)", levels: "arcanist 6, magus 6, sorcerer 6, summoner (unchained) 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S, M (powdered peas and an animal hoof)",
                          range: "medium (100 ft. + 10 ft./level)", area: "fog spreads in 20-ft. radius, 20 ft. high", targets: "",
                          duration: "1 round/level",
                          savingThrow: "none;", sr: false,
                          summary: "Acid fog creates a billowing mass of misty vapors like the solid fog spell. In addition to slowing down creatures and obscuring sight, this spell's vapors are highly acidic.",
                          desc: "Acid fog creates a billowing mass of misty vapors like the solid fog spell. In addition to slowing down creatures and obscuring sight, this spell's vapors are highly acidic. Each round on your turn, starting when you cast the spell, the fog deals 2d6 points of acid damage to each creature and object within it.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Acid Splash", school: "Conjuration (Creation)", levels: "arcanist 0, inquisitor 0, magus 0, sorcerer 0, summoner 0, summoner (unchained) 0, wizard 0",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one missile of acid", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "You fire a small orb of acid at the target. You must succeed on a ranged touch attack to hit your target. The orb deals 1d3 points of acid damage. This acid disappears after 1 round.",
                          desc: "You fire a small orb of acid at the target. You must succeed on a ranged touch attack to hit your target. The orb deals 1d3 points of acid damage. This acid disappears after 1 round.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Aid", school: "Enchantment (Compulsion)", levels: "adept 2, alchemist 2, cleric 2, inquisitor 2, investigator 2, medium 2, oracle 2, shaman 2, spiritualist 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "1 min./level",
                          savingThrow: "none;", sr: true,
                          summary: "Aid grants the target a +1 morale bonus on attack rolls and saves against fear effects, plus temporary hit points equal to 1d8 + caster level (to a maximum of 1d8+10 temporary hit points at caster…",
                          desc: "Aid grants the target a +1 morale bonus on attack rolls and saves against fear effects, plus temporary hit points equal to 1d8 + caster level (to a maximum of 1d8+10 temporary hit points at caster level 10th).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Air Walk", school: "Transmutation", levels: "alchemist 4, cleric 4, druid 4, hunter 4, investigator 4, occultist 4, oracle 4, warpriest 4",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature (Gargantuan or smaller) touched",
                          duration: "10 min./level",
                          savingThrow: "none;", sr: true,
                          summary: "The subject can tread on air as if walking on solid ground. Moving upward is similar to walking up a hill.",
                          desc: "The subject can tread on air as if walking on solid ground. Moving upward is similar to walking up a hill. The maximum upward or downward angle possible is 45 degrees, at a rate equal to half the air walker's normal speed. A strong wind (21+ miles per hour) can push the subject along or hold it back. At the end of a creature's turn each round, the wind blows the air walker 5 feet for each 5 miles per hour of wind speed. The creature may be subject to additional penalties in exceptionally strong or turbulent winds, such as loss of control over movement or physical damage from being buffeted about. Should the spell duration expire while the subject is still aloft, the magic fails slowly. The subject floats downward 60 feet per round for 1d6 rounds. If it reaches the ground in that amount of time, it lands safely. If not, it falls the rest of the distance, taking 1d6 points of damage per 10 feet of fall. Since dispelling a spell effectively ends it, the subject also descends in this way if the",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Air Walk, Communal", school: "Transmutation", levels: "alchemist 4, cleric 4, druid 4, hunter 4, investigator 4, occultist 4, oracle 4, warpriest 4",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature (Gargantuan or smaller) touched",
                          duration: "10 min./level",
                          savingThrow: "none;", sr: true,
                          summary: "This spell functions like air walk , except divide the duration in 10-minute intervals among the creatures touched.",
                          desc: "This spell functions like air walk , except divide the duration in 10-minute intervals among the creatures touched.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Alarm", school: "Abjuration", levels: "arcanist 1, bard 1, hunter 1, inquisitor 1, occultist 1, psychic 1, ranger 1, skald 1, sorcerer 1, spiritualist 1, summoner 1, summoner (unchained) 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, F/DF (a tiny bell and a piece of very fine silver wire)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "20-ft.-radius emanation centered on a point in space", targets: "",
                          duration: "2 hours/level",
                          savingThrow: "none;", sr: false,
                          summary: "Alarm creates a subtle ward on an area you select. Once the spell effect is in place, it thereafter sounds a mental or audible alarm each time a creature of Tiny or larger size enters the warded area…",
                          desc: "Alarm creates a subtle ward on an area you select. Once the spell effect is in place, it thereafter sounds a mental or audible alarm each time a creature of Tiny or larger size enters the warded area or touches it. A creature that speaks the password (determined by you at the time of casting) does not set off the alarm . You decide at the time of casting whether the",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Align Weapon", school: "Transmutation", levels: "cleric 2, inquisitor 2, oracle 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "weapon touched or 50 projectiles (all of which must be together at the time of casting)",
                          duration: "1 min./level",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "Align weapon makes a weapon chaotic, evil, good, or lawful, as you choose. A weapon that is aligned can bypass the damage reduction of certain creatures.",
                          desc: "Align weapon makes a weapon chaotic, evil, good, or lawful, as you choose. A weapon that is aligned can bypass the damage reduction of certain creatures. This spell has no effect on a weapon that already has an alignment. You can't cast this spell on a natural weapon, such as an unarmed strike. When you make a weapon chaotic, evil, good, or lawful,",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Align Weapon, Communal", school: "Transmutation", levels: "cleric 2, inquisitor 2, oracle 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "weapon touched or 50 projectiles (all of which must be together at the time of casting)",
                          duration: "1 min./level",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "This spell functions as align weapon , except you divide the duration in 1-minute increments between any number of touched weapons.",
                          desc: "This spell functions as align weapon , except you divide the duration in 1-minute increments between any number of touched weapons. Every group of up to 50 projectiles (which must be together at the time of casting) counts as one weapon for the purpose of dividing the spell’s duration.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Alter Self", school: "Transmutation (Polymorph)", levels: "alchemist 2, arcanist 2, bard 2, investigator 2, magus 2, medium 2, mesmerist 2, psychic 2, redmantisassassin 2, shaman 2, skald 2, sorcerer 2, summoner 2, summoner (unchained) 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a piece of the creature whose form you plan to assume)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 min./level (D)",
                          savingThrow: "None", sr: false,
                          summary: "When you cast this spell, you can assume the form of any Small or Medium creature of the humanoid type.",
                          desc: "When you cast this spell, you can assume the form of any Small or Medium creature of the humanoid type. If the form you assume has any of the following abilities, you gain the listed ability: darkvision 60 feet, low-light vision, scent, and swim 30 feet. Small creature : If the form you take is that of a Small humanoid, you gain a +2 size bonus to your Dexterity.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Analyze Dweomer", school: "Divination", levels: "alchemist 6, arcanist 6, bard 6, investigator 6, occultist 6, psychic 6, skald 6, sorcerer 6, spiritualist 6, witch 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S, F (a ruby and gold lens worth 1,500 gp)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one object or creature per caster level",
                          duration: "1 round/level (D)",
                          savingThrow: "none or Will negates; see text;", sr: false,
                          summary: "You can observe magical auras. Each round, you may examine a single creature or object that you can see as a free action.",
                          desc: "You can observe magical auras. Each round, you may examine a single creature or object that you can see as a free action. In the case of a magic item, you learn its functions (including any curse effects), how to activate its functions (if appropriate), and how many charges are left (if it uses charges). In the case of an object or creature with active spells cast upon it, you learn each spell, its effect, and its caster level. An attended object may attempt a Will save to resist this effect if its holder so desires. If the save succeeds, you learn nothing about the object except what you can discern by looking at it. An object that makes its save cannot be affected by any other analyze dweomer spells for 24 hours.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Animal Growth", school: "Transmutation", levels: "arcanist 5, druid 5, hunter 4, ranger 4, shaman 5, sorcerer 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one animal (Gargantuan or smaller)",
                          duration: "1 min./level",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "The target animal grows to twice its normal size and eight times its normal weight.",
                          desc: "The target animal grows to twice its normal size and eight times its normal weight. This alteration changes the animal's size category to the next largest, grants it a +8 size bonus to Strength and a +4 size bonus to Constitution (and thus an extra 2 hit points per HD), and imposes a –2 size penalty to Dexterity. The creature's existing natural armor bonus increases by 2. The size change also affects the animal's modifier to AC, attack rolls, and its base damage. The animal's space and reach change as appropriate to the new size, but its speed does not change. If insufficient room is available for the desired growth, the creature attains the maximum possible size and may make a Strength check (using its increased Strength) to burst any enclosures in the process. If it fails, it is constrained without harm by the materials enclosing it—the spell cannot be used to crush a creature by increasing its size. All equipment worn or carried by the animal is similarly enlarged by the spell, though this change has no effect on the magical properties of any such equipment. Any enlarged item that leaves the enlarged creature's possession instantly returns to its normal size. The spell gives no means of command over an enlarged animal. Multiple magical effects that increase size do not stack.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Animal Messenger", school: "Enchantment (Compulsion)", levels: "bard 2, druid 2, hunter 1, mesmerist 2, psychic 2, ranger 1, shaman 2, skald 2",
                          castingTime: "1 minute", components: "V, S, M (a morsel of food the animal likes)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one tiny animal",
                          duration: "1 day/level",
                          savingThrow: "none; see text;", sr: true,
                          summary: "You compel a Tiny animal to go to a spot you designate. The most common use for this spell is to get an animal to carry a message to your allies.",
                          desc: "You compel a Tiny animal to go to a spot you designate. The most common use for this spell is to get an animal to carry a message to your allies. The animal cannot be one tamed or trained by someone else, including such creatures as familiars and animal companions. Using some type of food desirable to the animal as a lure, you call the animal to you. It advances and awaits your bidding. You can mentally impress on the animal a certain place well known to you or an obvious landmark. The directions must be simple, because the animal depends on your knowledge and can't find a destination on its own. You can attach a small item or note to the messenger. The animal then goes to the designated location and waits there until the duration of the spell expires, whereupon it resumes its normal activities. During this period of waiting, the messenger allows others to approach it and remove any scroll or token it carries. The intended recipient gains no special ability to communicate with the animal or read any attached message (if it's written in a language he doesn't know, for example).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Animal Shapes", school: "Transmutation (Polymorph)", levels: "druid 8, shaman 8",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "up to one willing creature per level, all within 30 ft. of each other",
                          duration: "1 hour/level (D)",
                          savingThrow: "none, see text;", sr: true,
                          summary: "As beast shape III , except you change the form of up to one willing creature per caster level into an animal of your choice; the spell has no effect on unwilling creatures.",
                          desc: "As beast shape III , except you change the form of up to one willing creature per caster level into an animal of your choice; the spell has no effect on unwilling creatures. All creatures must take the same kind of animal form. Recipients remain in the animal form until the spell expires or until you dismiss it for all recipients. In addition, an individual subject may choose to resume its normal form as a full-round action; doing so ends the spell for that subject alone.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Animal Trance", school: "Enchantment (Compulsion)", levels: "adept 2, bard 2, druid 2, hunter 2, mesmerist 2, psychic 2, skald 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "animals or magical beasts with Intelligence 1 or 2",
                          duration: "concentration",
                          savingThrow: "Will negates;", sr: true,
                          summary: "Your swaying motions and music (or singing, or chanting) compel animals and magical beasts to do nothing but watch you.",
                          desc: "Your swaying motions and music (or singing, or chanting) compel animals and magical beasts to do nothing but watch you. Only a creature with an Intelligence score of 1 or 2 can be fascinated by this spell. Roll 2d6 to determine the total number of HD worth of creatures that you fascinate. The closest targets are selected first until no more targets within range can be affected.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Animate Dead", school: "Necromancy", levels: "adept 3, antipaladin 3, arcanist 4, cleric 3, occultist 3, oracle 3, shaman 3, sorcerer 4, spiritualist 3, warpriest 3, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (an onyx gem worth at least 25 gp per Hit Die of the undead)",
                          range: "touch", area: "", targets: "one corpse",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "This spell turns corpses into undead skeletons or zombies that obey your spoken commands.",
                          desc: "This spell turns corpses into undead skeletons or zombies that obey your spoken commands. The undead can be made to follow you, or they can be made to remain in an area and attack any creature (or just a specific kind of creature) entering the place. They remain animated until they are destroyed. A destroyed skeleton or zombie can't be animated again. Regardless of the type of undead you create with this spell, you can't create more HD of undead than twice your caster level with a single casting of",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Animate Dead, Lesser", school: "Necromancy", levels: "adept 3, antipaladin 3, arcanist 4, cleric 3, occultist 3, oracle 3, shaman 3, sorcerer 4, spiritualist 3, warpriest 3, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (an onyx gem worth at least 25 gp per Hit Die of the undead)",
                          range: "touch", area: "", targets: "one corpse",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as animate dead , except you can only create a single Small or Medium skeleton or zombie. You cannot create variant skeletons or zombies with this spell.",
                          desc: "This spell functions as animate dead , except you can only create a single Small or Medium skeleton or zombie. You cannot create variant skeletons or zombies with this spell.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Animate Objects", school: "Transmutation", levels: "bard 6, cleric 6, occultist 6, oracle 6, psychic 6, skald 6, warpriest 6, witch 6",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one Small object per caster level; see text",
                          duration: "1 round/level",
                          savingThrow: "none;", sr: false,
                          summary: "You imbue inanimate objects with mobility and a semblance of life. Each such animated object then immediately attacks whomever or whatever you initially designate.",
                          desc: "You imbue inanimate objects with mobility and a semblance of life. Each such animated object then immediately attacks whomever or whatever you initially designate. An animated object can be of any nonmagical material. You may animate one Small or smaller object or a corresponding number of larger objects as follows: A Medium object counts as two Small or smaller objects, a Large object as four, a Huge object as eight, a Gargantuan object as 16, and a Colossal object as 32. You can change the designated target or targets as a move action, as if directing an active spell. This spell cannot affect objects carried or worn by a creature.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Animate Plants", school: "Transmutation", levels: "druid 7, shaman 7",
                          castingTime: "1 standard action", components: "V",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one Large plant per three caster levels or all plants within range; see text",
                          duration: "1 round/level or 1 hour/level; see text",
                          savingThrow: "none;", sr: false,
                          summary: "You imbue inanimate plants with mobility and a semblance of life.",
                          desc: "You imbue inanimate plants with mobility and a semblance of life. Each animated plant then immediately attacks whomever or whatever you initially designate as though it were an animated object of the appropriate size category. You may animate one Large or smaller plant, or a number of larger plants as follows: a Huge plant counts as two Large or smaller plants, a Gargantuan plant as four, and a Colossal plant as eight. You can change the designated target or targets as a move action, as if directing an active spell. Use the statistics for animated objects, except that plants smaller than Large don't have hardness. Animate plants cannot affect plant creatures, nor does it affect nonliving vegetable material.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Animate Rope", school: "Transmutation", levels: "arcanist 1, bard 1, mesmerist 1, psychic 1, redmantisassassin 1, skald 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one rope-like object, length up to 50 ft. + 5 ft./level; see text",
                          duration: "1 round/level",
                          savingThrow: "none;", sr: false,
                          summary: "You can animate a nonliving rope-like object. The maximum length assumes a rope with a 1-inch diameter.",
                          desc: "You can animate a nonliving rope-like object. The maximum length assumes a rope with a 1-inch diameter. Reduce the maximum length by 50% for every additional inch of thickness, and increase it by 50% for each reduction of the rope's diameter by half. The possible commands are “coil” (form a neat, coiled stack), “coil and knot,” “loop,” “loop and knot,” “tie and knot,” and the opposites of all of the above (“uncoil,” and so forth). You can give one command each round as a move action, as if directing an active spell. The rope can enwrap only a creature or an object within 1 foot of it—it does not snake outward—so it must be thrown near the intended target. Doing so requires a successful ranged touch attack roll (range increment 10 feet). A typical 1-inch-diameter hemp rope has 2 hit points, AC 10, and requires a DC 23 Strength check to burst it. The rope does not deal damage, but it can be used as a trip line or to cause a single opponent that fails a Reflex saving throw to become entangled. A creature capable of spellcasting that is bound by this spell must make a concentration check with a DC of 15 + the spell's level to cast a spell. An entangled creature can slip free with a DC 20 Escape Artist check. The rope itself and any knots tied in it are not magical. The spell cannot affect objects carried or worn by a creature.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Antilife Shell", school: "Abjuration", levels: "cleric 6, druid 6, hunter 6, oracle 6, psychic 6, shaman 6, warpriest 6",
                          castingTime: "1 round", components: "V, S, DF",
                          range: "10 ft.", area: "10-ft.-radius emanation, centered on you", targets: "",
                          duration: "1 min./level (D)",
                          savingThrow: "none;", sr: true,
                          summary: "You bring into being a mobile, hemispherical energy field that prevents the entrance of most types of living creatures.",
                          desc: "You bring into being a mobile, hemispherical energy field that prevents the entrance of most types of living creatures. The effect hedges out animals, aberrations, dragons, fey, giants, humanoids, magical beasts, monstrous humanoids, oozes, plants, and vermin, but not constructs, elementals, outsiders, or undead. This spell may be used only defensively, not aggressively. Forcing an abjuration barrier against creatures that the spell keeps at bay collapses the barrier.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Antimagic Field", school: "Abjuration", levels: "arcanist 6, cleric 8, occultist 6, oracle 8, psychic 7, sorcerer 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S, M/DF (pinch of powdered iron or iron fillings)",
                          range: "10 ft.", area: "10-ft.-radius emanation, centered on you", targets: "",
                          duration: "10 min./level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "An invisible barrier surrounds you and moves with you. The space within this barrier is impervious to most magical effects, including spells, spell-like abilities, and supernatural abilities.",
                          desc: "An invisible barrier surrounds you and moves with you. The space within this barrier is impervious to most magical effects, including spells, spell-like abilities, and supernatural abilities. Likewise, it prevents the functioning of any magic items or spells within its confines. An antimagic field suppresses any spell or magical effect used within, brought into, or cast into the area, but does not dispel it. Time spent within an",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Antipathy", school: "Enchantment (Compulsion)", levels: "arcanist 8, druid 9, occultist 6, psychic 8, sorcerer 8, summoner 6, witch 8, wizard 8",
                          castingTime: "1 hour", components: "V, S, M/DF (a lump of alum soaked in vinegar)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one location (upt o a 10-ft. cube/level) or one object",
                          duration: "2 hours/level (D)",
                          savingThrow: "Will partial;", sr: true,
                          summary: "You cause an object or location to emanate magical vibrations that repel either a specific kind of intelligent creature or creatures of a particular alignment, as defined by you.",
                          desc: "You cause an object or location to emanate magical vibrations that repel either a specific kind of intelligent creature or creatures of a particular alignment, as defined by you. The kind of creature to be affected must be named specifically. A creature subtype is not specific enough. Likewise, the specific alignment to be repelled must be named. Creatures of the designated kind or alignment feel an urge to leave the area or to avoid the affected item. A compulsion forces them to abandon the area or item, shunning it and never willingly returning to it while the spell is in effect. A creature that makes a successful saving throw can stay in the area or touch the item but feels uncomfortable doing so. This distracting discomfort reduces the creature's Dexterity score by 4 points.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Antiplant Shell", school: "Abjuration", levels: "druid 4, hunter 4",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "10 ft.", area: "10-ft.-radius emanantion, centered on you", targets: "",
                          duration: "1 min./level (D)",
                          savingThrow: "none;", sr: true,
                          summary: "The antiplant shell spell creates an invisible, mobile barrier that keeps all creatures within the shell protected from attacks by plant creatures or animated plants.",
                          desc: "The antiplant shell spell creates an invisible, mobile barrier that keeps all creatures within the shell protected from attacks by plant creatures or animated plants. As with many abjuration spells, forcing the barrier against creatures that the spell keeps at bay strains and collapses the field.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Arcane Eye", school: "Divination (Scrying)", levels: "alchemist 4, arcanist 4, investigator 4, mesmerist 4, occultist 4, psychic 4, sorcerer 4, witch 4, wizard 4",
                          castingTime: "10 minutes", components: "V, S, M (a bit of bat fur)",
                          range: "unlimited", area: "magical sensor", targets: "",
                          duration: "1 min./level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You create an invisible magical sensor that sends you visual information. You can create the arcane eye at any point you can see, but it can then travel outside your line of sight without hindrance.",
                          desc: "You create an invisible magical sensor that sends you visual information. You can create the arcane eye at any point you can see, but it can then travel outside your line of sight without hindrance. An",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Arcane Lock", school: "Abjuration", levels: "arcanist 2, occultist 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (gold dust worth 25 gp)",
                          range: "touch", area: "", targets: "door, chest, or portal touched, up to 30 sq. ft./level in size",
                          duration: "permanent",
                          savingThrow: "none;", sr: false,
                          summary: "An arcane lock spell cast upon a door, chest, or portal magically locks it. You can freely pass your own",
                          desc: "An arcane lock spell cast upon a door, chest, or portal magically locks it. You can freely pass your own",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Arcane Mark", school: "Universal", levels: "arcanist 0, magus 0, psychic 0, shaman 0, sorcerer 0, summoner 0, summoner (unchained) 0, witch 0, wizard 0",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "one personal rune or mark, all of which must fit within 1 sq. ft.", targets: "",
                          duration: "permanent",
                          savingThrow: "none;", sr: false,
                          summary: "This spell allows you to inscribe your personal rune or mark, which can consist of no more than six characters. The writing can be visible or invisible.",
                          desc: "This spell allows you to inscribe your personal rune or mark, which can consist of no more than six characters. The writing can be visible or invisible. An arcane mark spell enables you to etch the rune upon any substance without harm to the material upon which it is placed. If an invisible mark is made, a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Arcane Sight", school: "Divination", levels: "alchemist 3, arcanist 3, inquisitor 3, investigator 3, magus 3, occultist 3, psychic 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 min./level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This spell makes your eyes glow blue and allows you to see magical auras within 120 feet of you. The effect is similar to that of a detect magic spell, but",
                          desc: "This spell makes your eyes glow blue and allows you to see magical auras within 120 feet of you. The effect is similar to that of a detect magic spell, but",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Arcane Sight, Greater", school: "Divination", levels: "alchemist 3, arcanist 3, inquisitor 3, investigator 3, magus 3, occultist 3, psychic 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 min./level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions like arcane sight , except that you automatically know which spells or magical effects are active upon any individual or object you see.",
                          desc: "This spell functions like arcane sight , except that you automatically know which spells or magical effects are active upon any individual or object you see.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Astral Projection", school: "Necromancy", levels: "arcanist 9, cleric 9, oracle 9, psychic 9, sorcerer 9, witch 9, wizard 9",
                          castingTime: "30 minutes", components: "V, S, M (1,000 gp jacinth)",
                          range: "touch", area: "", targets: "you plus one additional willing creature touched per two caster levels",
                          duration: "see text",
                          savingThrow: "none;", sr: true,
                          summary: "By freeing your spirit from your physical body, this spell allows you to project an astral body onto another plane altogether.",
                          desc: "By freeing your spirit from your physical body, this spell allows you to project an astral body onto another plane altogether. You can bring the astral forms of other willing creatures with you, provided that these subjects are linked in a circle with you at the time of the casting. These fellow travelers are dependent upon you and must accompany you at all times. If something happens to you during the journey, your companions are stranded wherever you left them. You project your astral self onto the Astral Plane, leaving your physical body behind on the Material Plane in a state of suspended animation. The spell projects an astral copy of you and all you wear or carry onto the Astral Plane. Since the Astral Plane touches upon other planes, you can travel astrally to any of these other planes as you will. To enter one, you leave the Astral Plane, forming a new physical body (and equipment) on the plane of existence you have chosen to enter. While you are on the Astral Plane, your astral body is connected at all times to your physical body by an incorporeal silver cord. If the cord is broken, you are killed, astrally and physically. Luckily, very few things can destroy a silver cord. When a second body is formed on a different plane, the silver cord remains invisibly attached to the new body. If the second body or the astral form is slain, the cord simply returns to your body where it rests on the Material Plane, thereby reviving it from its state of suspended animation. This is a traumatic affair, however, and you gain two permanent negative levels if your second body or astral form is slain. Although astral projections are able to function on the Astral Plane, their actions affect only creatures existing on the Astral Plane; a physical body must be materialized on other planes. You and your companions may travel through the Astral Plane indefinitely. Your bodies simply wait behind in a state of suspended animation until you choose to return your spirits to them. The spell lasts until you desire to end it, or until it is terminated by some outside means, such as",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Astral Projection, Lesser", school: "Necromancy", levels: "arcanist 9, cleric 9, oracle 9, psychic 9, sorcerer 9, witch 9, wizard 9",
                          castingTime: "30 minutes", components: "V, S, M (1,000 gp jacinth)",
                          range: "touch", area: "", targets: "you plus one additional willing creature touched per two caster levels",
                          duration: "see text",
                          savingThrow: "none;", sr: true,
                          summary: "This spell functions as astral projection , except you cannot leave the Astral Plane and explore other planes (though you can still return to the plane you were on when you cast this spell).",
                          desc: "This spell functions as astral projection , except you cannot leave the Astral Plane and explore other planes (though you can still return to the plane you were on when you cast this spell).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Atonement", school: "Abjuration", levels: "cleric 5, druid 5, hunter 5, inquisitor 5, oracle 5, warpriest 5",
                          castingTime: "1 hour", components: "V, S, M (burning incense), F (a set of prayer beads or other prayer device worth at least 500 gp), DF",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: true,
                          summary: "This spell removes the burden of misdeeds from the subject. The creature seeking atonement must be truly repentant and desirous of setting right its misdeeds.",
                          desc: "This spell removes the burden of misdeeds from the subject. The creature seeking atonement must be truly repentant and desirous of setting right its misdeeds. If the atoning creature committed the evil act unwittingly or under some form of compulsion, atonement operates normally at no cost to you. However, in the case of a creature atoning for deliberate misdeeds, you must intercede with your deity (requiring you to expend 2,500 gp in rare incense and offerings). Atonement may be cast for one of several purposes, depending on the version selected. Reverse Magical Alignment Change : If a creature has had its alignment magically changed,",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Augury", school: "Divination", levels: "cleric 2, medium 2, occultist 2, oracle 2, psychic 2, sahirafiyun 2, shaman 2, spiritualist 2, warpriest 2, witch 2",
                          castingTime: "1 minute", components: "V, S, M (incense worth at least 25 gp), F (a set of marked sticks or bones worth at least 25 gp)",
                          range: "personal", area: "", targets: "you",
                          duration: "instantaneous",
                          savingThrow: "None", sr: false,
                          summary: "An augury can tell you whether a particular action will bring good or bad results for you in the immediate future.",
                          desc: "An augury can tell you whether a particular action will bring good or bad results for you in the immediate future. The base chance for receiving a meaningful reply is 70% + 1% per caster level, to a maximum of 90%; this roll is made secretly. A question may be so straightforward that a successful result is automatic, or so vague as to have no chance of success. If the",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Awaken", school: "Transmutation", levels: "druid 5, hunter 5, shaman 6",
                          castingTime: "24 hours", components: "V, S, M (herbs and oils worth 2,000 gp), DF",
                          range: "touch", area: "", targets: "animal or tree touched",
                          duration: "instantaneous",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You awaken a tree or animal to human-like sentience. To succeed, you must make a Will save (DC 10 + the animal's current HD, or the HD the tree will have once awakened).",
                          desc: "You awaken a tree or animal to human-like sentience. To succeed, you must make a Will save (DC 10 + the animal's current HD, or the HD the tree will have once awakened). The awakened animal or tree is friendly toward you. You have no special empathy or connection with a creature you awaken, although it serves you in specific tasks or endeavors if you communicate your desires to it. If you cast awaken again, any previously awakened creatures remain friendly to you, but they no longer undertake tasks for you unless it is in their best interests. An awakened tree has characteristics as if it were an animated object, except that it gains the plant type and its Intelligence, Wisdom, and Charisma scores are each 3d6. An awakened plant gains the ability to move its limbs, roots, vines, creepers, and so forth, and it has senses similar to a human's. An awakened animal gets 3d6 Intelligence, +1d3 Charisma, and +2 HD. Its type becomes magical beast (augmented animal). An awakened animal can't serve as an animal companion, familiar, or special mount. An awakened tree or animal can speak one language that you know, plus one additional language that you know per point of Intelligence bonus (if any). This spell does not function on an animal or plant with an Intelligence greater than 2.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Baleful Polymorph", school: "Transmutation (Polymorph)", levels: "adept 5, arcanist 5, druid 5, hunter 5, magus 5, shaman 5, sorcerer 5, summoner 4, summoner (unchained) 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "permanent",
                          savingThrow: "Fortitude negates, Will partial, see text;", sr: true,
                          summary: "As beast shape III , except that you change the subject into a Small or smaller animal of no more than 1 HD.",
                          desc: "As beast shape III , except that you change the subject into a Small or smaller animal of no more than 1 HD. If the new form would prove fatal to the creature, such as an aquatic creature not in water, the subject gets a +4 bonus on the save. If the spell succeeds, the subject must also make a Will save. If this second save fails, the creature loses its extraordinary, supernatural, and spell-like abilities, loses its ability to cast spells (if it had the ability), and gains the alignment, special abilities, and Intelligence, Wisdom, and Charisma scores of its new form in place of its own. It still retains its class and level (or HD), as well as all benefits deriving therefrom (such as base attack bonus, base save bonuses, and hit points). It retains any class features (other than spellcasting) that aren't extraordinary, supernatural, or spell-like abilities. Any polymorph effects on the target are automatically dispelled when a target fails to resist the effects of",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Bane", school: "Enchantment (Compulsion)", levels: "antipaladin 1, cleric 1, inquisitor 1, mesmerist 1, oracle 1, shaman 1, warpriest 1",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "50 ft.", area: "50-ft.-radius burst, centered on you", targets: "",
                          duration: "1 min./level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "Bane fills your enemies with fear and doubt. Each affected creature takes a –1 penalty on attack rolls and a –1 penalty on saving throws against fear effects. Bane",
                          desc: "Bane fills your enemies with fear and doubt. Each affected creature takes a –1 penalty on attack rolls and a –1 penalty on saving throws against fear effects. Bane",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Banishment", school: "Abjuration", levels: "arcanist 7, cleric 6, inquisitor 5, oracle 6, psychic 7, shaman 6, sorcerer 7, spiritualist 6, summoner 5, summoner (unchained) 6, warpriest 6, wizard 7",
                          castingTime: "1 standard action", components: "V, S, F (see text)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one or more extraplanar creatures, no two of which can be more than 30 ft. apart",
                          duration: "instantaneous",
                          savingThrow: "Will negates;", sr: true,
                          summary: "A banishment spell is a more powerful version of the",
                          desc: "A banishment spell is a more powerful version of the",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Barkskin", school: "Transmutation", levels: "alchemist 2, druid 2, hunter 2, investigator 2, ranger 2, shaman 2, summoner 2, summoner (unchained) 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "10 min./level",
                          savingThrow: "none;", sr: true,
                          summary: "Barkskin toughens a creature's skin. The effect grants a +2 enhancement bonus to the creature's existing natural armor bonus.",
                          desc: "Barkskin toughens a creature's skin. The effect grants a +2 enhancement bonus to the creature's existing natural armor bonus. This enhancement bonus increases by 1 for every three caster levels above 3rd, to a maximum of +5 at 12th level. The enhancement bonus provided by",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Bear's Endurance", school: "Transmutation", levels: "adept 2, alchemist 2, arcanist 2, bloodrager 2, cleric 2, druid 2, hunter 2, investigator 2, magus 2, medium 2, oracle 2, psychic 2, ranger 2, redmantisassassin 2, shaman 2, sorcerer 2, summoner 2, summoner (unchained) 2, warpriest 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (a few hairs, or a pinch of dung, from a bear)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 min./level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The affected creature gains greater vitality and stamina. The spell grants the subject a +4 enhancement bonus to Constitution, which adds the usual benefits to hit points, Fortitude saves,…",
                          desc: "The affected creature gains greater vitality and stamina. The spell grants the subject a +4 enhancement bonus to Constitution, which adds the usual benefits to hit points, Fortitude saves, Constitution checks, and so forth. Hit points gained by a temporary increase in Constitution score are not temporary hit points. They go away when the subject's Constitution drops back to normal. They are not lost first as temporary hit points are. Bear's Endurance, Mass",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Bear's Endurance, Mass", school: "Transmutation", levels: "adept 2, alchemist 2, arcanist 2, bloodrager 2, cleric 2, druid 2, hunter 2, investigator 2, magus 2, medium 2, oracle 2, psychic 2, ranger 2, redmantisassassin 2, shaman 2, sorcerer 2, summoner 2, summoner (unchained) 2, warpriest 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (a few hairs, or a pinch of dung, from a bear)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 min./level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "Mass bear's endurance works like bear's endurance , except that it affects multiple creatures.",
                          desc: "Mass bear's endurance works like bear's endurance , except that it affects multiple creatures.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Beast Shape I", school: "Transmutation (Polymorph)", levels: "alchemist 3, arcanist 3, bloodrager 3, investigator 3, magus 3, redmantisassassin 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a piece of the creature whose form you plan to assume)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 min./level (D)",
                          savingThrow: "None", sr: false,
                          summary: "When you cast this spell, you can assume the form of any Small or Medium creature of the animal type.",
                          desc: "When you cast this spell, you can assume the form of any Small or Medium creature of the animal type. If the form you assume has any of the following abilities, you gain the listed ability: climb 30 feet, fly 30 feet (average maneuverability), swim 30 feet, darkvision 60 feet, low-light vision, and scent. Small animal : If the form you take is that of a Small animal, you gain a +2 size bonus to your Dexterity and a +1 natural armor bonus.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Beast Shape II", school: "Transmutation (Polymorph)", levels: "alchemist 3, arcanist 3, bloodrager 3, investigator 3, magus 3, redmantisassassin 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a piece of the creature whose form you plan to assume)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 min./level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as beast shape I , except that it also allows you to assume the form of a Tiny or Large creature of the animal type.",
                          desc: "This spell functions as beast shape I , except that it also allows you to assume the form of a Tiny or Large creature of the animal type. If the form you assume has any of the following abilities, you gain the listed ability: climb 60 feet, fly 60 feet (good maneuverability), swim 60 feet, darkvision 60 feet, low-light vision, scent, grab, pounce, and trip.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Beast Shape III", school: "Transmutation (Polymorph)", levels: "alchemist 3, arcanist 3, bloodrager 3, investigator 3, magus 3, redmantisassassin 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a piece of the creature whose form you plan to assume)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 min./level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as beast shape II , except that it also allows you to assume the form of a Diminutive or Huge creature of the animal type.",
                          desc: "This spell functions as beast shape II , except that it also allows you to assume the form of a Diminutive or Huge creature of the animal type. This spell also allows you to take on the form of a Small or Medium creature of the magical beast type. If the form you assume has any of the following abilities, you gain the listed ability: burrow 30 feet, climb 90 feet, fly 90 feet (good maneuverability), swim 90 feet, blindsense 30 feet, darkvision 60 feet, low-light vision, scent, constrict, ferocity, grab, jet, poison, pounce, rake, trample, trip, and web.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Beast Shape IV", school: "Transmutation (Polymorph)", levels: "alchemist 3, arcanist 3, bloodrager 3, investigator 3, magus 3, redmantisassassin 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a piece of the creature whose form you plan to assume)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 min./level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as beast shape III except that it also allows you to assume the form of a Tiny or Large creature of the magical beast type.",
                          desc: "This spell functions as beast shape III except that it also allows you to assume the form of a Tiny or Large creature of the magical beast type. If the form you assume has any of the following abilities, you gain the listed ability: burrow 60 feet, climb 90 feet, fly 120 feet (good maneuverability), swim 120 feet, blindsense 60 feet, darkvision 90 feet, low-light vision, scent, tremorsense 60 feet, breath weapon, constrict, ferocity, grab, jet, poison, pounce, rake, rend, roar, spikes, trample, trip, and web. If the creature has immunity or resistance to any elements, you gain resistance 20 to those elements. If the creature has vulnerability to an element, you gain that vulnerability.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Bestow Curse", school: "Necromancy", levels: "adept 3, antipaladin 3, arcanist 4, bloodrager 4, cleric 3, medium 2, mesmerist 3, occultist 3, oracle 3, shaman 3, sorcerer 4, spiritualist 3, warpriest 3, witch 3, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "permanent",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You place a curse on the subject. Choose one of the following. –6 decrease to an ability score (minimum 1). –4 penalty on attack rolls, saves, ability checks, and skill checks.",
                          desc: "You place a curse on the subject. Choose one of the following. –6 decrease to an ability score (minimum 1). –4 penalty on attack rolls, saves, ability checks, and skill checks. Each turn, the target has a 50% chance to act normally; otherwise, it takes no action. You may also invent your own curse, but it should be no more powerful than those described above. The curse bestowed by this spell cannot be dispelled, but it can be removed with a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Bestow Curse, Greater", school: "Necromancy", levels: "adept 3, antipaladin 3, arcanist 4, bloodrager 4, cleric 3, medium 2, mesmerist 3, occultist 3, oracle 3, shaman 3, sorcerer 4, spiritualist 3, warpriest 3, witch 3, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "permanent",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You place a curse on the subject. Choose one of the following. –12 penalty to an ability score, or –6 penalty to two ability scores (to a minimum ability score of 1).",
                          desc: "You place a curse on the subject. Choose one of the following. –12 penalty to an ability score, or –6 penalty to two ability scores (to a minimum ability score of 1). –8 penalty on attack rolls, saves, ability checks, and skill checks. Each turn, the target has a 25% chance to act normally; otherwise, it takes no actions. Bestow one of the curses or variants in this article. Bestow curse of the ages or unluck (",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Binding", school: "Enchantment (Compulsion)", levels: "arcanist 8, psychic 8, sorcerer 8, summoner 6, wizard 8",
                          castingTime: "1 minute", components: "V, S, M (opals worth 500 gp per HD of the target creature, plus other components as specified below)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "see text (D)",
                          savingThrow: "Will negates; see text;", sr: true,
                          summary: "A binding spell creates a magical restraint to hold a creature. The target gets an initial saving throw only if its Hit Dice equal at least half your caster level.",
                          desc: "A binding spell creates a magical restraint to hold a creature. The target gets an initial saving throw only if its Hit Dice equal at least half your caster level. You may have as many as six assistants help you with the spell. For each assistant who casts",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Black Tentacles", school: "Conjuration (Creation)", levels: "arcanist 4, bloodrager 4, magus 4, psychic 4, sorcerer 4, spiritualist 4, summoner 3, summoner (unchained) 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (octopus or squid tentacle)",
                          range: "medium (100 ft. + 10 ft./level)", area: "20-ft.-radius spread", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell causes a field of rubbery black tentacles to appear, burrowing up from the floor and reaching for any creature in the area.",
                          desc: "This spell causes a field of rubbery black tentacles to appear, burrowing up from the floor and reaching for any creature in the area. Every creature within the area of the spell is the target of a combat maneuver check made to grapple each round at the beginning of your turn, including the round that black tentacles is cast. Creatures that enter the area of effect are also automatically attacked. The tentacles do not provoke attacks of opportunity. When determining the tentacles' CMB, the tentacles use your caster level as their base attack bonus and receive a +4 bonus due to their Strength and a +1 size bonus. Roll only once for the entire spell effect each round and apply the result to all creatures in the area of effect. If the tentacles succeed in grappling a foe, that foe takes 1d6+4 points of damage and gains the grappled condition. Grappled opponents cannot move without first breaking the grapple. All other movement is prohibited unless the creature breaks the grapple first. The",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Blade Barrier", school: "Evocation", levels: "cleric 6, inquisitor 6, occultist 6, oracle 6, psychic 6, warpriest 6",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "wall of whirling blades up to 20 ft. long/level, or a ringed wall of whirling blades with a radius of up to 5 ft. per two levels; either form is 20 ft. high", targets: "",
                          duration: "1 min./level (D)",
                          savingThrow: "Reflex half or Reflex negates; see text;", sr: true,
                          summary: "An immobile, vertical curtain of whirling blades shaped of pure force springs into existence.",
                          desc: "An immobile, vertical curtain of whirling blades shaped of pure force springs into existence. Any creature passing through the wall takes 1d6 points of damage per caster level (maximum 15d6), with a Reflex save for half damage. If you evoke the barrier so that it appears where creatures are, each creature takes damage as if passing through the wall. Each such creature can avoid the wall (ending up on the side of its choice) and thus take no damage by making a successful Reflex save. A",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Blasphemy", school: "Evocation", levels: "cleric 7, inquisitor 6, oracle 7",
                          castingTime: "1 standard action", components: "V",
                          range: "40 ft.", area: "nonevil creatures in a 40-ft.-radius spread centered on you", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Will partial;", sr: true,
                          summary: "Any nonevil creature within the area of a blasphemy spell suffers the following ill effects. HD Effect",
                          desc: "Any nonevil creature within the area of a blasphemy spell suffers the following ill effects. HD Effect",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Blast of Wind", school: "Evocation", levels: "arcanist 2, bloodrager 2, druid 2, hunter 2, magus 2, occultist 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "60 ft.", area: "line-shaped gust of severe wind emanating out from you to the extreme of the range", targets: "",
                          duration: "1 round",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "With a spiraling gesture of your hand and a forceful exhalation, you create a brief but fierce (90 mph) blast of wind.",
                          desc: "With a spiraling gesture of your hand and a forceful exhalation, you create a brief but fierce (90 mph) blast of wind. This spell functions as gust of wind , except all creatures within the area are treated as though they were one size category smaller for the purpose of determining how the spell affects them. For every 4 caster levels beyond 7th, creatures in the area are treated as an additional size category smaller (to a maximum of three size categories smaller at 15th level).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Bleed", school: "Necromancy", levels: "arcanist 0, cleric 0, inquisitor 0, medium 0, mesmerist 0, occultist 0, oracle 0, psychic 0, shaman 0, sorcerer 0, spiritualist 0, warpriest 0, witch 0, wizard 0",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "instantaneous",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You cause a living creature that is below 0 hit points but stabilized to resume dying. Upon casting this spell, you target a living creature that has –1 or fewer hit points.",
                          desc: "You cause a living creature that is below 0 hit points but stabilized to resume dying. Upon casting this spell, you target a living creature that has –1 or fewer hit points. That creature begins dying, taking 1 point of damage per round. The creature can be stabilized later normally. This spell causes a creature that is dying to take 1 point of damage.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Bless", school: "Enchantment (Compulsion)", levels: "adept 1, cleric 1, inquisitor 1, oracle 1, paladin 1, shaman 1, warpriest 1",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "50 ft.", area: "The caster and all allies within a 50-ft. burst, centered on the caster", targets: "",
                          duration: "1 min./level",
                          savingThrow: "none;", sr: true,
                          summary: "Bless fills your allies with courage. Each ally gains a +1 morale bonus on attack rolls and on saving throws against fear effects. Bless",
                          desc: "Bless fills your allies with courage. Each ally gains a +1 morale bonus on attack rolls and on saving throws against fear effects. Bless",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Bless Water", school: "Transmutation", levels: "cleric 1, inquisitor 1, oracle 1, paladin 1, warpriest 1",
                          castingTime: "1 minute", components: "V, S, M (5 pounds of powdered silver worth 25 gp)",
                          range: "touch", area: "", targets: "flask of water touched",
                          duration: "instantaneous",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "This transmutation imbues a flask (1 pint) of water with positive energy, turning it into holy water.",
                          desc: "This transmutation imbues a flask (1 pint) of water with positive energy, turning it into holy water.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Bless Weapon", school: "Transmutation", levels: "paladin 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "weapon touched",
                          duration: "1 min./level",
                          savingThrow: "none;", sr: false,
                          summary: "This transmutation makes a weapon strike true against evil foes.",
                          desc: "This transmutation makes a weapon strike true against evil foes. The weapon is treated as having a +1 enhancement bonus for the purpose of bypassing the DR of evil creatures or striking evil incorporeal creatures (though the spell doesn't grant an actual enhancement bonus). The weapon also becomes good-aligned, which means it can bypass the DR of certain creatures. (This effect overrides and suppresses any other alignment the weapon might have.) Individual arrows or bolts can be transmuted, but affected projectile weapons (such as bows) don't confer the benefit to the projectiles they shoot. In addition, all critical hit rolls against evil foes are automatically successful, so every threat is a critical hit. This last effect does not apply to any weapon that already has a magical effect related to critical hits, such as a keen",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Blight", school: "Necromancy", levels: "arcanist 5, druid 4, hunter 4, shaman 5, sorcerer 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "plant touched",
                          duration: "instantaneous",
                          savingThrow: "Fortitude half; see text;", sr: true,
                          summary: "This spell withers a single plant of any size. An affected plant creature takes 1d6 points of damage per level (maximum 15d6) and may attempt a Fortitude saving throw for half damage.",
                          desc: "This spell withers a single plant of any size. An affected plant creature takes 1d6 points of damage per level (maximum 15d6) and may attempt a Fortitude saving throw for half damage. A plant that isn't a creature doesn't receive a save and immediately withers and dies. This spell has no effect on the soil or surrounding plant life.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Blindness/Deafness", school: "Necromancy", levels: "antipaladin 2, arcanist 2, bard 2, bloodrager 2, cleric 3, mesmerist 2, oracle 3, psychic 2, shaman 3, skald 2, sorcerer 2, spiritualist 3, warpriest 3, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one living creature",
                          duration: "permanent (D)",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "You call upon the powers of unlife to render the subject blinded or deafened, as you choose.",
                          desc: "You call upon the powers of unlife to render the subject blinded or deafened, as you choose.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Blink", school: "Transmutation", levels: "arcanist 3, bard 3, magus 3, psychic 3, redmantisassassin 3, skald 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "You “blink” quickly back and forth between the Material Plane and the Ethereal Plane and look as though you're winking in and out of reality at random. Blink has several effects, as follows.",
                          desc: "You “blink” quickly back and forth between the Material Plane and the Ethereal Plane and look as though you're winking in and out of reality at random. Blink has several effects, as follows. Physical attacks against you have a 50% miss chance, and the Blind-Fight feat doesn't help opponents, since you're ethereal and not merely invisible. If the attack is capable of striking ethereal creatures, the miss chance is only 20% (for concealment). If the attacker can see invisible creatures, the miss chance is also only 20%. (For an attacker who can both see and strike ethereal creatures, there is no miss chance.) Likewise, your own attacks have a 20% miss chance, since you sometimes go ethereal just as you are about to strike. Any individually targeted spell has a 50% chance to fail against you while you're blinking unless your attacker can target invisible, ethereal creatures. Your own spells have a 20% chance to activate just as you go ethereal, in which case they typically do not affect the Material Plane (but they might affect targets on the Ethereal Plane). While blinking, you take only half damage from area attacks (but full damage from those that extend onto the Ethereal Plane). Although you are only partially visible, you are not considered invisible and targets retain their Dexterity bonus to AC against your attacks. You do receive a +2 bonus on attack rolls made against enemies that cannot see invisible creatures. You take only half damage from falling, since you fall only while you are material. While blinking, you can step through (but not see through) solid objects. For each 5 feet of solid material you walk through, there is a 50% chance that you become material. If this occurs, you are shunted off to the nearest open space and take 1d6 points of damage per 5 feet so traveled. Since you spend about half your time on the Ethereal Plane, you can see and even attack ethereal creatures. You interact with ethereal creatures roughly the same way you interact with material ones. An ethereal creature is invisible, incorporeal, and capable of moving in any direction, even up or down. As an incorporeal creature, you can move through solid objects, including living creatures. An ethereal creature can see and hear the Material Plane, but everything looks gray and insubstantial. Sight and hearing on the Material Plane are limited to 60 feet. Force effects and abjurations affect you normally. Their effects extend onto the Ethereal Plane from the Material Plane, but not vice versa. An ethereal creature can't attack material creatures, and spells you cast while ethereal affect only other ethereal things. Certain material creatures or objects have attacks or effects that work on the Ethereal Plane. Treat other ethereal creatures and objects as material.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Blur", school: "Illusion (Glamer)", levels: "alchemist 2, arcanist 2, bard 2, investigator 2, magus 2, medium 2, mesmerist 2, occultist 2, psychic 2, redmantisassassin 2, skald 2, sorcerer 2, spiritualist 2, summoner 2, summoner (unchained) 2, wizard 2",
                          castingTime: "1 standard action", components: "V",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 min./level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The subject's outline appears blurred, shifting, and wavering. This distortion grants the subject concealment (20% miss chance). A see invisibility",
                          desc: "The subject's outline appears blurred, shifting, and wavering. This distortion grants the subject concealment (20% miss chance). A see invisibility",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Break Enchantment", school: "Abjuration", levels: "adept 5, arcanist 5, bard 4, cleric 5, inquisitor 5, medium 4, mesmerist 4, occultist 4, oracle 5, paladin 4, psychic 4, shaman 5, skald 4, sorcerer 5, spiritualist 5, warpriest 5, witch 5, wizard 5",
                          castingTime: "1 minute", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "up to one creature per level, all within 30 ft. of each other",
                          duration: "instantaneous",
                          savingThrow: "see text;", sr: false,
                          summary: "This spell frees victims from enchantments, transmutations, and curses. Break enchantment can reverse even an instantaneous effect.",
                          desc: "This spell frees victims from enchantments, transmutations, and curses. Break enchantment can reverse even an instantaneous effect. For each such effect, you make a caster level check (1d20 + caster level, maximum +15) against a DC of 11 + caster level of the effect. Success means that the creature is free of the spell, curse, or effect. For a cursed magic item, the DC is equal to the DC of the curse. If the spell is one that cannot be dispelled by",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Breath of Life", school: "Conjuration (Healing)", levels: "cleric 5, oracle 5, shaman 5, spiritualist 5, warpriest 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "instantaneous",
                          savingThrow: "Will negates (harmless) or Will half, see text;", sr: true,
                          summary: "This spell cures 5d8 points of damage + 1 point per caster level (maximum +25). Unlike other spells that heal damage, breath of life can bring recently slain creatures back to life.",
                          desc: "This spell cures 5d8 points of damage + 1 point per caster level (maximum +25). Unlike other spells that heal damage, breath of life can bring recently slain creatures back to life. If cast upon a creature that has died within 1 round, apply the healing from this spell to the creature. If the healed creature's hit point total is at a negative amount less than its Constitution score, it comes back to life and stabilizes at its new hit point total. If the creature's hit point total is at a negative amount equal to or greater than its Constitution score, the creature remains dead. Creatures brought back to life through",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Brightest Light", school: "Evocation", levels: "adept 3, arcanist 3, bard 3, cleric 3, druid 3, hunter 3, inquisitor 3, magus 3, occultist 3, oracle 3, paladin 3, shaman 3, skald 3, sorcerer 3, warpriest 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "object touched",
                          duration: "10 min./level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This trademark spell of the Lantern Bearers functions as daylight , except it lasts longer.",
                          desc: "This trademark spell of the Lantern Bearers functions as daylight , except it lasts longer. In addition, as a swift action once during the spell’s duration, you can will the light to try to end a magical darkness effect located within 60 feet of the light this spell emits. Attempt a dispel check (1d20 + your caster level), with a DC equal to 11 + the caster level of the darkness effect. If you succeed, the darkness effect ends. Regardless of whether you are successful, the light from this spell dims to the brightness of a torch for the spell’s remaining duration.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Bull's Strength", school: "Transmutation", levels: "adept 2, alchemist 2, antipaladin 2, arcanist 2, bloodrager 2, cleric 2, druid 2, hunter 2, investigator 2, magus 2, medium 2, oracle 2, paladin 2, psychic 2, redmantisassassin 2, shaman 2, sorcerer 2, summoner 2, summoner (unchained) 2, warpriest 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (a few hairs, or a pinch of dung, from a bull)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 min./level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The subject becomes stronger. The spell grants a +4 enhancement bonus to Strength, adding the usual benefits to melee attack rolls, melee damage rolls, and other uses of the Strength modifier.",
                          desc: "The subject becomes stronger. The spell grants a +4 enhancement bonus to Strength, adding the usual benefits to melee attack rolls, melee damage rolls, and other uses of the Strength modifier. Bull's Strength, Mass",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Bull's Strength, Mass", school: "Transmutation", levels: "adept 2, alchemist 2, antipaladin 2, arcanist 2, bloodrager 2, cleric 2, druid 2, hunter 2, investigator 2, magus 2, medium 2, oracle 2, paladin 2, psychic 2, redmantisassassin 2, shaman 2, sorcerer 2, summoner 2, summoner (unchained) 2, warpriest 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (a few hairs, or a pinch of dung, from a bull)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 min./level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions like bull's strength , except that it affects multiple creatures.",
                          desc: "This spell functions like bull's strength , except that it affects multiple creatures.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Burning Entanglement", school: "Transmutation", levels: "druid 1, hunter 1, ranger 1, shaman 1",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "long (400 ft. + 40 ft./level)", area: "plants in a 40-ft.-radius spread", targets: "",
                          duration: "1 min./level (D)",
                          savingThrow: "Reflex partial; see text;", sr: false,
                          summary: "This spell functions as per entangle , except it sets the foliage on fire.",
                          desc: "This spell functions as per entangle , except it sets the foliage on fire. A creature that begins its turn entangled by the spell takes 4d6 points of fire damage (Reflex half), and a creature that begins its turn in the area but is not entangled takes 2d6 points of fire damage (Reflex negates). Smoke rising from the vines partially obscures visibility. Creatures can see things in the smoke within 5 feet clearly, but attacks against anything farther away in the smoke must contend with concealment (20% miss chance). When the spell’s duration expires, the vines burn away entirely.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Burning Hands", school: "Evocation", levels: "adept 1, arcanist 1, bloodrager 1, magus 1, occultist 1, shaman 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "15 ft.", area: "cone-shaped burst", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Reflex half;", sr: true,
                          summary: "A cone of searing flame shoots from your fingertips. Any creature in the area of the flames takes 1d4 points of fire damage per caster level (maximum 5d4).",
                          desc: "A cone of searing flame shoots from your fingertips. Any creature in the area of the flames takes 1d4 points of fire damage per caster level (maximum 5d4). Flammable materials burn if the flames touch them. A character can extinguish burning items as a full-round action.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Call Lightning", school: "Evocation", levels: "druid 3, hunter 3, occultist 3, shaman 3",
                          castingTime: "1 round", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "one or more 30-ft.-long vertical lines of lightning", targets: "",
                          duration: "1 min./level",
                          savingThrow: "Reflex half;", sr: true,
                          summary: "Immediately upon completion of the spell, and once per round thereafter, you may call down a 5-foot-wide, 30-foot-long, vertical bolt of lightning that deals 3d6 points of electricity damage.",
                          desc: "Immediately upon completion of the spell, and once per round thereafter, you may call down a 5-foot-wide, 30-foot-long, vertical bolt of lightning that deals 3d6 points of electricity damage. The bolt of lightning flashes down in a vertical stroke at whatever target point you choose within the spell's range (measured from your position at the time). Any creature in the target square or in the path of the bolt is affected. You need not call a bolt of lightning immediately; other actions, even spellcasting, can be performed first. Each round after the first you may use a standard action (concentrating on the spell) to call a bolt. You may call a total number of bolts equal to your caster level (maximum 10 bolts). If you are outdoors and in a stormy area—a rain shower, clouds and wind, hot and cloudy conditions, or even a tornado (including a whirlwind formed by a djinni or an air elemental of at least Large size)—each bolt deals 3d10 points of electricity damage instead of 3d6. This spell functions indoors or underground but not underwater.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Call Lightning Storm", school: "Evocation", levels: "druid 3, hunter 3, occultist 3, shaman 3",
                          castingTime: "1 round", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "one or more 30-ft.-long vertical lines of lightning", targets: "",
                          duration: "1 min./level",
                          savingThrow: "Reflex half;", sr: true,
                          summary: "This spell functions like call lightning , except that each bolt deals 5d6 points of electricity damage (or 5d10 if created outdoors in a stormy area), and you may call a maximum of 15 bolts.",
                          desc: "This spell functions like call lightning , except that each bolt deals 5d6 points of electricity damage (or 5d10 if created outdoors in a stormy area), and you may call a maximum of 15 bolts.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Calm Animals", school: "Enchantment (Compulsion)", levels: "druid 1, hunter 1, psychic 1, ranger 1, shaman 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "animals within 30 ft. of each other",
                          duration: "1 min./level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell soothes and quiets animals, rendering them docile and harmless. Only ordinary animals (those with Intelligence scores of 1 or 2) can be affected by this spell.",
                          desc: "This spell soothes and quiets animals, rendering them docile and harmless. Only ordinary animals (those with Intelligence scores of 1 or 2) can be affected by this spell. All the subjects must be of the same kind, and no two may be more than 30 feet apart. The maximum number of HD of animals you can affect is equal to 2d4 + caster level. The affected creatures remain where they are and do not attack or flee. They are not helpless and defend themselves normally if attacked. Any threat breaks the spell on the threatened creatures.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Calm Emotions", school: "Enchantment (Compulsion)", levels: "bard 2, cleric 2, inquisitor 2, mesmerist 2, occultist 2, oracle 2, psychic 2, sahirafiyun 2, shaman 2, skald 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "medium (100 ft. + 10 ft./level)", area: "creatures in a 20-ft.-radius spread", targets: "",
                          duration: "concentration, up to 1 round/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell calms agitated creatures. You have no control over the affected creatures, but calm emotions can stop raging creatures from fighting or joyous ones from reveling.",
                          desc: "This spell calms agitated creatures. You have no control over the affected creatures, but calm emotions can stop raging creatures from fighting or joyous ones from reveling. Creatures so affected cannot take violent actions (although they can defend themselves) or do anything destructive. Any aggressive action against or damage dealt to a calmed creature immediately breaks the spell on all calmed creatures. This spell automatically suppresses (but does not dispel) any morale bonuses granted by spells such as",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Cat's Grace", school: "Transmutation", levels: "adept 2, alchemist 2, arcanist 2, bard 2, bloodrager 2, druid 2, hunter 2, investigator 2, magus 2, medium 2, mesmerist 2, psychic 2, ranger 2, redmantisassassin 2, skald 2, sorcerer 2, summoner 2, summoner (unchained) 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (pinch of cat fur)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 min./level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The transmuted creature becomes more graceful, agile, and coordinated.",
                          desc: "The transmuted creature becomes more graceful, agile, and coordinated. The spell grants a +4 enhancement bonus to Dexterity, adding the usual benefits to AC, Reflex saves, and other uses of the Dexterity modifier. Cat's Grace, Mass",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Cat's Grace, Mass", school: "Transmutation", levels: "adept 2, alchemist 2, arcanist 2, bard 2, bloodrager 2, druid 2, hunter 2, investigator 2, magus 2, medium 2, mesmerist 2, psychic 2, ranger 2, redmantisassassin 2, skald 2, sorcerer 2, summoner 2, summoner (unchained) 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (pinch of cat fur)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 min./level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions like cat's grace , except it affects multiple creatures.",
                          desc: "This spell functions like cat's grace , except it affects multiple creatures.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Cause Fear", school: "Necromancy", levels: "adept 1, antipaladin 1, arcanist 1, bard 1, bloodrager 1, cleric 1, inquisitor 1, medium 1, mesmerist 1, occultist 1, oracle 1, psychic 1, shaman 1, skald 1, sorcerer 1, spiritualist 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature with 5 or fewer HD",
                          duration: "1d4 rounds or 1 round; see text",
                          savingThrow: "Will partial;", sr: true,
                          summary: "The affected creature becomes frightened. If the subject succeeds on a Will save, it is shaken for 1 round. Creatures with 6 or more HD are immune to this effect. Cause fear counters and dispels",
                          desc: "The affected creature becomes frightened. If the subject succeeds on a Will save, it is shaken for 1 round. Creatures with 6 or more HD are immune to this effect. Cause fear counters and dispels",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Chain Lightning", school: "Evocation", levels: "arcanist 6, magus 6, occultist 6, sorcerer 6, witch 7, wizard 6",
                          castingTime: "1 standard action", components: "V, S, F (a bit of fur, a piece of amber, glass, or a crystal rod; plus one silver pin per caster level)",
                          range: "long (400 ft. + 40 ft./level)", area: "", targets: "one primary target, plus one secondary target/level (each of which must be within 30 ft. of the primary target)",
                          duration: "instantaneous",
                          savingThrow: "Reflex half;", sr: true,
                          summary: "This spell creates an electrical discharge that begins as a single stroke commencing from your fingertips. Unlike lightning bolt ,",
                          desc: "This spell creates an electrical discharge that begins as a single stroke commencing from your fingertips. Unlike lightning bolt ,",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Changestaff", school: "Transmutation", levels: "druid 7",
                          castingTime: "1 round", components: "V, S, F (a quarterstaff that has been carved and polished for 28 days)",
                          range: "touch", area: "", targets: "your touched staff",
                          duration: "1 hour/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You change a specially prepared quarterstaff into a Huge treant-like creature, about 24 feet tall.",
                          desc: "You change a specially prepared quarterstaff into a Huge treant-like creature, about 24 feet tall. When you plant the end of the staff in the ground and speak a special command to conclude the casting of the spell, your staff turns into a creature that looks and fights just like a treant. The staff-treant defends you and obeys any spoken commands. However, it is by no means a true treant; it cannot converse with actual treants or control trees. If the staff-treant is reduced to 0 or fewer hit points, it crumbles to powder and the staff is destroyed. Otherwise, the staff returns to its normal form when the spell duration expires (or when the spell is dismissed), and it can be used as the focus for another casting of the spell. The staff-treant is always at full strength when created, despite any wounds it may have incurred the last time it appeared.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Chaos Hammer", school: "Evocation", levels: "cleric 4, inquisitor 4, oracle 4, warpriest 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "20-ft.-radius burst", targets: "",
                          duration: "instantaneous (1d6 rounds); see text",
                          savingThrow: "Will partial; see text;", sr: true,
                          summary: "You unleash chaotic power to smite your enemies. The power takes the form of a multicolored explosion of leaping, ricocheting energy.",
                          desc: "You unleash chaotic power to smite your enemies. The power takes the form of a multicolored explosion of leaping, ricocheting energy. Only lawful and neutral (not chaotic) creatures are harmed by the spell. The spell deals 1d8 points of damage per two caster levels (maximum 5d8) to lawful creatures (or 1d6 points of damage per caster level, maximum 10d6, to lawful outsiders) and slows them for 1d6 rounds (see the slow spell). A successful Will save reduces the damage by half and negates the slow effect. The spell deals only half damage against creatures who are neither lawful nor chaotic, and they are not slowed. Such a creature can reduce the damage by half again (down to one-quarter) with a successful Will save.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Charm Animal", school: "Enchantment (Charm)", levels: "druid 1, hunter 1, psychic 1, ranger 1, shaman 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one animal",
                          duration: "1 hour/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions like charm person , except that it affects a creature of the animal type.",
                          desc: "This spell functions like charm person , except that it affects a creature of the animal type.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Charm Fey", school: "Enchantment (Charm)", levels: "arcanist 1, bard 1, mesmerist 1, occultist 1, psychic 1, shaman 1, skald 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one humanoid creature",
                          duration: "1 hour/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions as charm person , except it affects a fey instead of a humanoid. Charm Person, Mass",
                          desc: "This spell functions as charm person , except it affects a fey instead of a humanoid. Charm Person, Mass",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Charm Monster", school: "Enchantment (Charm)", levels: "arcanist 4, bard 3, mesmerist 3, occultist 4, psychic 4, skald 3, sorcerer 4, summoner 3, summoner (unchained) 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "1 day/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions like charm person , except that the effect is not restricted by creature type or size. Charm Monster, Mass",
                          desc: "This spell functions like charm person , except that the effect is not restricted by creature type or size. Charm Monster, Mass",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Charm Monster, Mass", school: "Enchantment (Charm)", levels: "arcanist 4, bard 3, mesmerist 3, occultist 4, psychic 4, skald 3, sorcerer 4, summoner 3, summoner (unchained) 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "1 day/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions like charm monster , except that",
                          desc: "This spell functions like charm monster , except that",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Charm Person", school: "Enchantment (Charm)", levels: "arcanist 1, bard 1, mesmerist 1, occultist 1, psychic 1, shaman 1, skald 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one humanoid creature",
                          duration: "1 hour/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This charm makes a humanoid creature regard you as its trusted friend and ally (treat the target's attitude as friendly).",
                          desc: "This charm makes a humanoid creature regard you as its trusted friend and ally (treat the target's attitude as friendly). If the creature is currently being threatened or attacked by you or your allies, however, it receives a +5 bonus on its saving throw. The spell does not enable you to control the charmed person as if it were an automaton, but it perceives your words and actions in the most favorable way. You can try to give the subject orders, but you must win an opposed Charisma check to convince it to do anything it wouldn't ordinarily do. (Retries are not allowed.) An affected creature never obeys suicidal or obviously harmful orders, but it might be convinced that something very dangerous is worth doing. Any act by you or your apparent allies that threatens the charmed person breaks the spell. You must speak the person's language to communicate your commands, or else be good at pantomiming. Charm Fey",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Charm Person, Mass", school: "Enchantment (Charm)", levels: "arcanist 1, bard 1, mesmerist 1, occultist 1, psychic 1, shaman 1, skald 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one humanoid creature",
                          duration: "1 hour/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions like charm person , except that",
                          desc: "This spell functions like charm person , except that",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Chill Metal", school: "Transmutation", levels: "druid 2, hunter 2, occultist 2, psychic 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "metal equipment of one creature per two levels, no two of which can be more than 30 ft. apart; or 25 lbs. of metal/level, none of which can be more than 30 ft. away from any of the rest",
                          duration: "7 rounds",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "Chill metal makes metal extremely cold. Unattended, nonmagical metal gets no saving throw. Magical metal is allowed a saving throw against the spell.",
                          desc: "Chill metal makes metal extremely cold. Unattended, nonmagical metal gets no saving throw. Magical metal is allowed a saving throw against the spell. An item in a creature's possession uses the creature's saving throw bonus unless its own is higher. A creature takes cold damage if its equipment is chilled. It takes full damage if its armor, shield, or weapon is affected. The creature takes minimum damage (1 point or 2 points; see the table) if it's not wearing or wielding such an item. On the first round of the spell, the metal becomes chilly and uncomfortable to touch but deals no damage. The same effect also occurs on the last round of the spell's duration. During the second (and also the next-to-last) round, icy coldness causes pain and damage. In the third, fourth, and fifth rounds, the metal is freezing cold, and causes more damage, as shown on the table below.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Chill Touch", school: "Necromancy", levels: "arcanist 1, bloodrager 1, magus 1, shaman 1, sorcerer 1, spiritualist 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature or creatures touched (up to one/level)",
                          duration: "instantaneous",
                          savingThrow: "Fortitude partial or Will negates; see text;", sr: true,
                          summary: "A touch from your hand, which glows with blue energy, disrupts the life force of living creatures. Each touch channels negative energy that deals 1d6 points of damage.",
                          desc: "A touch from your hand, which glows with blue energy, disrupts the life force of living creatures. Each touch channels negative energy that deals 1d6 points of damage. The touched creature also takes 1 point of Strength damage unless it makes a successful Fortitude saving throw. You can use this melee touch attack up to one time per level. An undead creature you touch takes no damage of either sort, but it must make a successful Will saving throw or flee as if panicked for 1d4 rounds + 1 round per caster level.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Circle of Death", school: "Necromancy", levels: "arcanist 6, inquisitor 6, sorcerer 6, spiritualist 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S, M (a crushed black pearl worth 500 gp)",
                          range: "medium (100 ft. + 10 ft./level)", area: "several living creatures within a 40-ft.-radius burst", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "Circle of death snuffs out the life force of living creatures, killing them instantly. The spell slays 1d4 HD worth of living creatures per caster level (maximum 20d4).",
                          desc: "Circle of death snuffs out the life force of living creatures, killing them instantly. The spell slays 1d4 HD worth of living creatures per caster level (maximum 20d4). Creatures with the fewest HD are affected first; among creatures with equal HD, those who are closest to the burst's point of origin are affected first. No creature of 9 or more HD can be affected, and HD that are not sufficient to affect a creature are wasted.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Clairaudience/Clairvoyance", school: "Divination (Scrying)", levels: "arcanist 3, bard 3, medium 2, mesmerist 3, occultist 3, psychic 3, shaman 3, skald 3, sorcerer 3, spiritualist 3, witch 3, wizard 3",
                          castingTime: "10 minutes", components: "V, S, F/DF (a small horn or a glass eye)",
                          range: "long (400 ft. + 40 ft./level)", area: "magical sensor", targets: "",
                          duration: "1 min./level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "Clairaudience/clairvoyance creates an invisible magical sensor at a specific location that enables you to hear or see (your choice) almost as if you were there.",
                          desc: "Clairaudience/clairvoyance creates an invisible magical sensor at a specific location that enables you to hear or see (your choice) almost as if you were there. You don't need line of sight or line of effect, but the locale must be known—a place familiar to you, or an obvious one. Once you have selected the locale, the sensor doesn't move, but you can rotate it in all directions to view the area as desired. Unlike other scrying spells, this spell does not allow magically or supernaturally enhanced senses to work through it. If the chosen locale is magically dark, you see nothing. If it is naturally pitch black, you can see in a 10-foot radius around the center of the spell's effect. Clairaudience/clairvoyance functions only on the plane of existence you are currently occupying.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Clay Skin", school: "Abjuration", levels: "adept 4, alchemist 4, arcanist 4, bloodrager 4, druid 5, hunter 5, inquisitor 4, investigator 4, magus 4, occultist 4, psychic 4, shaman 5, sorcerer 4, summoner 3, summoner (unchained) 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (granite and diamond dust worth 250 gp)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 min./level or until discharged",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The target’s skin becomes as thick and tough as clay, granting the target DR 5/adamantine.",
                          desc: "The target’s skin becomes as thick and tough as clay, granting the target DR 5/adamantine. Once the spell has prevented a total of 5 points of damage per caster level (maximum 50 points), it is discharged and the spell ends. Stoneskin, Communal",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Clenched Fist", school: "Evocation", levels: "arcanist 8, psychic 8, sorcerer 8, wizard 8",
                          castingTime: "1 standard action", components: "V, S, F/DF (a leather glove)",
                          range: "medium (100 ft. + 10 ft./level)", area: "10-ft. hand", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: true,
                          summary: "This spell functions like interposing hand , except that the hand can also push or strike one opponent that you select. The floating hand can move as far as 60 feet and can attack in the same round.",
                          desc: "This spell functions like interposing hand , except that the hand can also push or strike one opponent that you select. The floating hand can move as far as 60 feet and can attack in the same round. Since this hand is directed by you, its ability to notice or attack invisible or concealed creatures is no better than yours. The hand attacks once per round, and its attack bonus equals your caster level + your Intelligence, Wisdom, or Charisma modifier (for a wizard, cleric, or sorcerer, respectively) + 11 for the hand's Strength score (33), – 1 for being Large. The hand deals 1d8+11 points of damage on each attack, and any creature struck must make a Fortitude save (against this spell's save DC) or be stunned for 1 round. Directing the spell to a new target is a move action.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Cloak of Chaos", school: "Abjuration", levels: "cleric 8, oracle 8",
                          castingTime: "1 standard action", components: "V, S, F (a tiny reliquary worth 500 gp)",
                          range: "20 ft.", area: "", targets: "one creature/level in a 20-ft.-radius burst centered on you",
                          duration: "1 round/level (D)",
                          savingThrow: "see text;", sr: true,
                          summary: "A random pattern of color surrounds the subjects, protecting them from attacks, granting them resistance to spells cast by lawful creatures, and causing lawful creatures that strike the subjects to…",
                          desc: "A random pattern of color surrounds the subjects, protecting them from attacks, granting them resistance to spells cast by lawful creatures, and causing lawful creatures that strike the subjects to become confused . This abjuration has four effects. First, each warded creature gains a +4 deflection bonus to AC and a +4 resistance bonus on saves. Unlike",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Clone", school: "Necromancy", levels: "arcanist 8, sorcerer 8, witch 8, wizard 8",
                          castingTime: "10 minutes", components: "V, S, M (laboratory supplies worth 1,000 gp), F (special laboratory equipment costing 500 gp)",
                          range: "0 ft.", area: "one clone", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "This spell makes an inert duplicate of a creature. If the original individual has been slain, its soul immediately transfers to the clone, creating a replacement (provided that the soul is free and…",
                          desc: "This spell makes an inert duplicate of a creature. If the original individual has been slain, its soul immediately transfers to the clone, creating a replacement (provided that the soul is free and willing to return). The original's physical remains, should they still exist, become inert and cannot thereafter be restored to life. If the original creature has reached the end of its natural life span (that is, it has died of natural causes), any cloning attempt fails. To create the duplicate, you must have a piece of flesh (not hair, nails, scales, or the like) with a volume of at least 1 cubic inch that was taken from the original creature's living body. The piece of flesh need not be fresh, but it must be kept from rotting. Once the spell is cast, the duplicate must be grown in a laboratory for 2d4 months. When the clone is completed, the original's soul enters it immediately, if that creature is already dead. The clone is physically identical to the original and possesses the same personality and memories as the original. In other respects, treat the clone as if it were the original character raised from the dead, including its gaining of two permanent negative levels, just as if it had been hit by an energy-draining creature. If the subject is 1st level, it takes 2 points of Constitution drain instead (if this would reduce its Con to 0 or less, it can't be cloned). If the original creature gained permanent negative levels since the flesh sample was taken, the clone gains these negative levels as well. The spell duplicates only the original's body and mind, not its equipment. A duplicate can be grown while the original still lives, or when the original soul is unavailable, but the resulting body is merely a soulless bit of inert flesh which rots if not preserved.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Cloudkill", school: "Conjuration (Creation)", levels: "arcanist 5, magus 5, sorcerer 5, spiritualist 5, summoner (unchained) 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "cloud spreads in 20-ft. radius, 20 ft. high", targets: "",
                          duration: "1 min./level",
                          savingThrow: "Fortitude partial; see text;", sr: false,
                          summary: "This spell generates a bank of fog, similar to a fog cloud , except that its vapors are yellowish green and poisonous.",
                          desc: "This spell generates a bank of fog, similar to a fog cloud , except that its vapors are yellowish green and poisonous. These vapors automatically kill any living creature with 3 or fewer HD (no save). A living creature with 4 to 6 HD is slain unless it succeeds on a Fortitude save (in which case it takes 1d4 points of Constitution damage on your turn each round while in the cloud). A living creature with 6 or more HD takes 1d4 points of Constitution damage on your turn each round while in the cloud (a successful Fortitude save halves this damage). Holding one's breath doesn't help, but creatures immune to poison are unaffected by the spell.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Color Spray", school: "Illusion (Pattern)", levels: "arcanist 1, bloodrager 1, magus 1, mesmerist 1, psychic 1, redmantisassassin 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M (red, yellow, and blue powder or colored sand)",
                          range: "15 ft.", area: "cone-shaped burst", targets: "",
                          duration: "instantaneous; see text",
                          savingThrow: "Will negates;", sr: true,
                          summary: "A vivid cone of clashing colors springs forth from your hand, causing creatures to become stunned, perhaps also blinded, and possibly knocking them unconscious.",
                          desc: "A vivid cone of clashing colors springs forth from your hand, causing creatures to become stunned, perhaps also blinded, and possibly knocking them unconscious. Each creature within the cone is affected according to its HD. 2 HD or less : The creature is unconscious, blinded, and stunned for 2d4 rounds, then blinded and stunned for 1d4 rounds, and then stunned for 1 round. (Only living creatures are knocked unconscious.)",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Command", school: "Enchantment (Compulsion)", levels: "adept 1, antipaladin 1, cleric 1, inquisitor 1, medium 1, mesmerist 1, occultist 1, oracle 1, psychic 1, warpriest 1, witch 1",
                          castingTime: "1 standard action", components: "V",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "1 round",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You give the subject a single command, which it obeys to the best of its ability at its earliest opportunity. You may select from the following options.",
                          desc: "You give the subject a single command, which it obeys to the best of its ability at its earliest opportunity. You may select from the following options. Approach : On its turn, the subject moves toward you as quickly and directly as possible for 1 round. The creature may do nothing but move during its turn, and it provokes attacks of opportunity for this movement as normal.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Command Plants", school: "Transmutation", levels: "druid 4, hunter 3, ranger 3, shaman 4",
                          castingTime: "1 standard action", components: "V",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "up to 2 HD/level of plant creatures, no two of which can be more than 30 ft. apart",
                          duration: "1 day/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell allows you some degree of control over one or more plant creatures.",
                          desc: "This spell allows you some degree of control over one or more plant creatures. Affected plant creatures can understand you, and they perceive your words and actions in the most favorable way (treat their attitude as friendly). They will not attack you while the spell lasts. You can try to give a subject orders, but you must win an opposed Charisma check to convince it to do anything it wouldn't ordinarily do. (Retries are not allowed.) A commanded plant never obeys suicidal or obviously harmful orders, but it might be convinced that something very dangerous is worth doing. You can affect a number of plant creatures whose combined level or HD do not exceed twice your level.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Command Undead", school: "Necromancy", levels: "arcanist 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a shread of raw meat and a splinter of bone)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one undead creature",
                          duration: "1 day/level",
                          savingThrow: "Will negates; see text;", sr: true,
                          summary: "This spell allows you a degree of control over an undead creature. If the subject is intelligent, it perceives your words and actions favorably (treat its attitude as friendly).",
                          desc: "This spell allows you a degree of control over an undead creature. If the subject is intelligent, it perceives your words and actions favorably (treat its attitude as friendly). It will not attack you while the spell lasts. You can give the subject orders, but you must win an opposed Charisma check to convince it to do anything it wouldn't ordinarily do. Retries are not allowed. An intelligent commanded undead never obeys suicidal or obviously harmful orders, but it might be convinced that something very dangerous is worth doing. A nonintelligent undead creature gets no saving throw against this spell. When you control a mindless being, you can communicate only basic commands, such as “come here,” “go there,” “fight,” “stand still,” and so on. Nonintelligent undead won't resist suicidal or obviously harmful orders. Any act by you or your apparent allies that threatens the commanded undead (regardless of its Intelligence) breaks the spell. Your commands are not telepathic. The undead creature must be able to hear you.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Command, Greater", school: "Enchantment (Compulsion)", levels: "adept 1, antipaladin 1, cleric 1, inquisitor 1, medium 1, mesmerist 1, occultist 1, oracle 1, psychic 1, warpriest 1, witch 1",
                          castingTime: "1 standard action", components: "V",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "1 round",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions like command , except that up to one creature per level may be affected, and the activities continue beyond 1 round.",
                          desc: "This spell functions like command , except that up to one creature per level may be affected, and the activities continue beyond 1 round. At the start of each commanded creature's action after the first, it gets another Will save to attempt to break free from the spell. Each creature must receive the same command.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Commune", school: "Divination", levels: "adept 5, cleric 5, inquisitor 5, occultist 5, oracle 5, shaman 5, warpriest 5",
                          castingTime: "10 minutes", components: "V, S, M (holy or unholy water and incense worth 500 gp), DF",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "You contact your deity—or agents thereof—and ask questions that can be answered by a simple yes or no.",
                          desc: "You contact your deity—or agents thereof—and ask questions that can be answered by a simple yes or no. (A cleric of no particular deity contacts a philosophically allied deity.) You are allowed one such question per caster level. The answers given are correct within the limits of the entity's knowledge. “Unclear” is a legitimate answer, because powerful beings of the Outer Planes are not necessarily omniscient. In cases where a one-word answer would be misleading or contrary to the deity's interests, a short phrase (five words or less) may be given as an answer instead. The spell, at best, provides information to aid character decisions. The entities contacted structure their answers to further their own purposes. If you lag, discuss the answers, or go off to do anything else, the spell ends.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Commune with Nature", school: "Divination", levels: "druid 5, hunter 4, psychic 5, ranger 4, shaman 5",
                          castingTime: "10 minutes", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "instantaneous",
                          savingThrow: "None", sr: false,
                          summary: "You become one with nature, attaining knowledge of the surrounding territory.",
                          desc: "You become one with nature, attaining knowledge of the surrounding territory. You instantly gain knowledge of as many as three facts from among the following subjects: the ground or terrain, plants, minerals, bodies of water, people, general animal population, presence of woodland creatures, presence of powerful unnatural creatures, or even the general state of the natural setting. In outdoor settings, the spell operates in a radius of 1 mile per caster level. In natural underground settings—caves, caverns, and the like—the spell is less powerful, and its radius is limited to 100 feet per caster level. The spell does not function where nature has been replaced by construction or settlement, such as in dungeons and towns. Signs of the Land",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Comprehend Languages", school: "Divination", levels: "adept 1, alchemist 1, arcanist 1, bard 1, cleric 1, inquisitor 1, investigator 1, medium 1, mesmerist 1, occultist 1, oracle 1, psychic 1, shaman 1, skald 1, sorcerer 1, spiritualist 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M/DF (pinch of soot and salt)",
                          range: "personal", area: "", targets: "you",
                          duration: "10 min./level",
                          savingThrow: "None", sr: false,
                          summary: "You can understand the spoken words of creatures or read otherwise incomprehensible written messages.",
                          desc: "You can understand the spoken words of creatures or read otherwise incomprehensible written messages. The ability to read does not necessarily impart insight into the material, merely its literal meaning. The spell enables you to understand or read an unknown language, not speak or write it. Written material can be read at the rate of one page (250 words) per minute. Magical writing cannot be read, though the spell reveals that it is magical. This spell can be foiled by certain warding magic (such as the secret page",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Conditional Curse", school: "Necromancy", levels: "adept 3, antipaladin 3, arcanist 4, bloodrager 4, cleric 3, medium 2, mesmerist 3, occultist 3, oracle 3, shaman 3, sorcerer 4, spiritualist 3, warpriest 3, witch 3, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "permanent",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions as bestow curse , except that you must state a condition under which the curse is broken, ending its effect.",
                          desc: "This spell functions as bestow curse , except that you must state a condition under which the curse is broken, ending its effect. An intelligent target, even one of animal intelligence, innately understands this condition even if it doesn’t understand your language. The condition must be possible for the target to bring about within a year and a day without ensuring its own death and stated in 25 or fewer words. The curse is more difficult to remove via magic. The DC to remove conditional curse with break enchantment or remove curse increases by 5. Curse, Major",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Cone of Cold", school: "Evocation", levels: "arcanist 5, magus 5, occultist 5, shaman 6, sorcerer 5, witch 6, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (a small crystal or glass cone)",
                          range: "60 ft.", area: "cone-shaped burst", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Reflex half;", sr: true,
                          summary: "Cone of cold creates an area of extreme cold, originating at your hand and extending outward in a cone. It drains heat, dealing 1d6 points of cold damage per caster level (maximum 15d6).",
                          desc: "Cone of cold creates an area of extreme cold, originating at your hand and extending outward in a cone. It drains heat, dealing 1d6 points of cold damage per caster level (maximum 15d6).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Confusion", school: "Enchantment (Compulsion)", levels: "arcanist 4, bard 3, bloodrager 4, mesmerist 3, occultist 4, psychic 4, sahirafiyun 4, skald 3, sorcerer 4, spiritualist 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M/DF (three nutshells)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one living creature",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell causes confusion in the targets, making them unable to determine their actions.",
                          desc: "This spell causes confusion in the targets, making them unable to determine their actions. Roll on the following table at the start of each subject's turn each round to see what it does in that round. d% Behavior",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Confusion, Lesser", school: "Enchantment (Compulsion)", levels: "arcanist 4, bard 3, bloodrager 4, mesmerist 3, occultist 4, psychic 4, sahirafiyun 4, skald 3, sorcerer 4, spiritualist 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M/DF (three nutshells)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one living creature",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell causes a single creature to become confused for 1 round.",
                          desc: "This spell causes a single creature to become confused for 1 round.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Consecrate", school: "Evocation", levels: "cleric 2, inquisitor 2, oracle 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S, M (a vial of holy water and 25 gp worth of silver dust), DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "20-ft. radius emanation", targets: "",
                          duration: "2 hours/level",
                          savingThrow: "none;", sr: false,
                          summary: "This spell blesses an area with positive energy. The DC to resist positive channeled energy within this area gains a +3 sacred bonus.",
                          desc: "This spell blesses an area with positive energy. The DC to resist positive channeled energy within this area gains a +3 sacred bonus. Every undead creature entering a consecrated area suffers minor disruption, suffering a –1 penalty on attack rolls, damage rolls, and saves. Undead cannot be created within or summoned into a consecrated area. If the consecrated area contains an altar, shrine, or other permanent fixture dedicated to your deity, pantheon, or aligned higher power, the modifiers given above are doubled (+6 sacred bonus to positive channeled energy DCs, –2 penalties for undead in the area). You cannot consecrate an area with a similar fixture of a deity other than your own patron. Instead, the consecrate spell curses the area, cutting off its connection with the associated deity or power. This secondary function, if used, does not also grant the bonuses and penalties relating to undead, as given above.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Contact Other Plane", school: "Divination", levels: "alchemist 5, arcanist 5, investigator 5, occultist 4, psychic 5, sorcerer 5, spiritualist 5, summoner 4, summoner (unchained) 5, witch 5, wizard 5",
                          castingTime: "10 minutes", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "concentration",
                          savingThrow: "None", sr: false,
                          summary: "You send your mind to another plane of existence (an Elemental Plane or some plane farther removed) in order to receive advice and information from powers there.",
                          desc: "You send your mind to another plane of existence (an Elemental Plane or some plane farther removed) in order to receive advice and information from powers there. See the accompanying table for possible consequences and results of the attempt. The powers reply in a language you understand, but they resent such contact and give only brief answers to your questions. All questions are answered with “yes,” “no,” “maybe,” “never,” “irrelevant,” or some other one-word answer. You must concentrate on maintaining the spell (a standard action) in order to ask questions at the rate of one per round. A question is answered by the power during the same round. You may ask one question for every two caster levels. Contact with minds far removed from your home plane increases the probability that you will incur a decrease in Intelligence and Charisma due to your brain being overwhelmed, but also increases the chance of the power knowing the answer and answering correctly. Once the Outer Planes are reached, the power of the deity contacted determines the effects. (Random results obtained from the table are subject to the personalities of individual deities.) On rare occasions, this divination may be blocked by an act of certain deities or forces.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Contagion", school: "Necromancy", levels: "adept 3, antipaladin 3, arcanist 4, bloodrager 4, cleric 3, druid 3, hunter 3, oracle 3, sorcerer 4, warpriest 3, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "The subject contracts one of the following diseases: blinding sickness, bubonic plague, cackle fever, filth fever, leprosy, mindfire, red ache, shakes, or slimy doom.",
                          desc: "The subject contracts one of the following diseases: blinding sickness, bubonic plague, cackle fever, filth fever, leprosy, mindfire, red ache, shakes, or slimy doom. The disease is contracted immediately (the onset period does not apply). Use the disease's listed frequency and save DC to determine further effects. For more information see Diseases.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Contagion, Greater", school: "Necromancy", levels: "adept 3, antipaladin 3, arcanist 4, bloodrager 4, cleric 3, druid 3, hunter 3, oracle 3, sorcerer 4, warpriest 3, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "This spell functions as contagion , except the victim cannot overcome the disease without magic—making the required number of saves does not cure it.",
                          desc: "This spell functions as contagion , except the victim cannot overcome the disease without magic—making the required number of saves does not cure it. The DC to remove the disease with magic is equal to the save DC + 5.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Contagious Suggestion", school: "Enchantment (Compulsion)", levels: "arcanist 3, bard 2, medium 2, mesmerist 2, occultist 3, psychic 2, skald 2, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, M (a snake's tongue and a honeycomb)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "1 hour/level or until completed",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions as per suggestion , except the target can pass on the enchantment to other targets.",
                          desc: "This spell functions as per suggestion , except the target can pass on the enchantment to other targets. The target is compelled to communicate your suggestion to another creature, forcing the new target to attempt a saving throw as if it were the initial target. If a secondary target successfully saves, the",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Contingency", school: "Evocation", levels: "arcanist 6, occultist 6, psychic 6, sorcerer 6, wizard 6",
                          castingTime: "at least 10 minutes; see text", components: "V, S, M (quicksilver and an eyelash of a spell-using creature), F (ivory statuette of you worth 1,500 gp)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 day/level (D) or until discharged",
                          savingThrow: "None", sr: false,
                          summary: "You can place another spell upon your person so that it comes into effect under some condition you dictate when casting contingency . The",
                          desc: "You can place another spell upon your person so that it comes into effect under some condition you dictate when casting contingency . The",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Continual Flame", school: "Evocation", levels: "adept 3, arcanist 2, cleric 3, inquisitor 3, occultist 2, oracle 3, psychic 3, sorcerer 2, warpriest 3, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (ruby dust worth 50 gp)",
                          range: "touch", area: "magical, heatless flame", targets: "object touched",
                          duration: "permanent",
                          savingThrow: "none;", sr: false,
                          summary: "A flame, equivalent in brightness to a torch, springs forth from an object that you touch. The effect looks like a regular flame, but it creates no heat and doesn't use oxygen.",
                          desc: "A flame, equivalent in brightness to a torch, springs forth from an object that you touch. The effect looks like a regular flame, but it creates no heat and doesn't use oxygen. A continual flame can be covered and hidden but not smothered or quenched. Light spells counter and dispel darkness spells of an equal or lower level.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Control Plants", school: "Transmutation", levels: "druid 8",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "up to 2 HD/level of plant creatures, no two of which can be more than 30 ft. apart",
                          duration: "1 min./level",
                          savingThrow: "Will negates;", sr: false,
                          summary: "This spell enables you to control the actions of one or more plant creatures for a short period of time. You command the creatures by voice and they understand you, no matter what language you speak.",
                          desc: "This spell enables you to control the actions of one or more plant creatures for a short period of time. You command the creatures by voice and they understand you, no matter what language you speak. Even if vocal communication is impossible, the controlled plants do not attack you. At the end of the spell, the subjects revert to their normal behavior. Suicidal or self-destructive commands are simply ignored.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Control Undead", school: "Necromancy", levels: "arcanist 7, sorcerer 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S, M (a piece of bone and a piece of raw meat)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "up to 2 HD/level of undead creatures, no two of which can be more than 30 ft. apart",
                          duration: "1 min./level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell enables you to control undead creatures for a short period of time. You command them by voice and they understand you, no matter what language you speak.",
                          desc: "This spell enables you to control undead creatures for a short period of time. You command them by voice and they understand you, no matter what language you speak. Even if vocal communication is impossible, the controlled undead do not attack you. At the end of the spell, the subjects revert to their normal behavior. Intelligent undead creatures remember that you controlled them, and they may seek revenge after the spell's effects end.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Control Water", school: "Transmutation", levels: "arcanist 6, cleric 4, druid 4, hunter 4, oracle 4, shaman 4, sorcerer 6, warpriest 4, wizard 6",
                          castingTime: "1 standard action", components: "V, S, M/DF (a pinch of dust for lower water or a drop of water for raise water)",
                          range: "long (400 ft. + 40 ft./level)", area: "water in a volume of 10 ft./level by 10 ft./level by 2 ft./level (S)", targets: "",
                          duration: "10 min./level (D)",
                          savingThrow: "none; see text;", sr: false,
                          summary: "This spell has two different applications, both of which control water in different ways.",
                          desc: "This spell has two different applications, both of which control water in different ways. The first version of this spell causes water in the area to swiftly evaporate or to sink into the ground below, lowering the water's depth. The second version causes the water to surge and rise, increasing its overall depth and possibly flooding nearby areas. Lower Water : This causes water or similar liquid to reduce its depth by as much as 2 feet per caster level (to a minimum depth of 1 inch). The water is lowered within a squarish depression whose sides are up to caster level × 10 feet long. In extremely large and deep bodies of water, such as a deep ocean, the spell creates a whirlpool that sweeps ships and similar craft downward, putting them at risk and rendering them unable to leave by normal movement for the duration of the spell. When cast on water elementals and other water-based creatures, this spell acts as a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Control Weather", school: "Transmutation", levels: "arcanist 7, cleric 7, druid 7, oracle 7, shaman 7, sorcerer 7, witch 7, wizard 7",
                          castingTime: "10 minutes; see text", components: "V, S",
                          range: "2 miles", area: "2-mile-radius circle, centered on you; see text", targets: "",
                          duration: "4d12 hours; see text",
                          savingThrow: "none;", sr: false,
                          summary: "You change the weather in the local area. It takes 10 minutes to cast the spell and an additional 10 minutes for the effects to manifest.",
                          desc: "You change the weather in the local area. It takes 10 minutes to cast the spell and an additional 10 minutes for the effects to manifest. You can call forth weather appropriate to the climate and season of the area you are in. You can also use this spell to cause the weather in the area to become calm and normal for the season. Season Possible Weather",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Control Winds", school: "Transmutation", levels: "druid 5, hunter 5, occultist 5, shaman 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "40 ft./level", area: "40 ft./level radius cylinder 40 ft. high", targets: "",
                          duration: "10 min./level",
                          savingThrow: "Fortitude negates;", sr: false,
                          summary: "You alter wind force in the area surrounding you. You can make the wind blow in a certain direction or manner, increase its strength, or decrease its strength.",
                          desc: "You alter wind force in the area surrounding you. You can make the wind blow in a certain direction or manner, increase its strength, or decrease its strength. The new wind direction and strength persist until the spell ends or until you choose to alter your handiwork, which requires concentration. You may create an “eye” of calm air up to 80 feet in diameter at the center of the area if you so desire, and you may choose to limit the area to any cylindrical area less than your full limit. Wind Direction : You may choose one of four basic wind patterns to function over the spell's area. A downdraft blows from the center outward in equal strength in all directions. An updraft blows from the outer edges in toward the center in equal strength from all directions, veering upward before impinging on the eye in the center. Rotation causes the winds to circle the center in clockwise or counterclockwise fashion. A blast simply causes the winds to blow in one direction across the entire area from one side to the other.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Controlled Fireball", school: "Evocation", levels: "arcanist 3, bloodrager 3, magus 3, occultist 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a ball of bat guano and sulfur)",
                          range: "long (400 ft. + 40 ft./level)", area: "20-ft.-radius spread", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Reflex half;", sr: true,
                          summary: "This spell functions as fireball except you can cause the bead of fire to originate from anywhere you can see within range.",
                          desc: "This spell functions as fireball except you can cause the bead of fire to originate from anywhere you can see within range. You can choose a number of squares within the area up to your Intelligence bonus (for magi, occultists, or wizards) or Charisma bonus (for bloodragers or sorcerers) to be struck by weaker flames; the controlled fireball deals minimum damage in those squares. Attempts to identify controlled fireball with a skill check incorrectly identify it as fireball (see the ruse descriptor).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Create Food and Water", school: "Conjuration (Creation)", levels: "cleric 3, occultist 3, oracle 3, shaman 3, warpriest 3",
                          castingTime: "10 minutes", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "food and water to sustain three humans or one horse/level for 24 hours", targets: "",
                          duration: "24 hours; see text",
                          savingThrow: "none;", sr: false,
                          summary: "The food that this spell creates is simple fare of your choice—highly nourishing, if rather bland.",
                          desc: "The food that this spell creates is simple fare of your choice—highly nourishing, if rather bland. Food so created decays and becomes inedible after 24 hours, although it can be kept fresh for another 24 hours by casting a purify food and water spell on it. The water created by this spell is just like clean rain water, and it doesn't go bad as the food does.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Create Greater Undead", school: "Necromancy", levels: "arcanist 8, cleric 8, oracle 8, shaman 8, sorcerer 8, wizard 8",
                          castingTime: "1 hour", components: "V, S, M (a clay pot filled with grave dirt and an onyx gem worth at least 50 gp per HD of the undead to be created)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one corpse",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like create undead , except that you can create more powerful and intelligent sorts of undead: shadows, wraiths, spectres, and devourers.",
                          desc: "This spell functions like create undead , except that you can create more powerful and intelligent sorts of undead: shadows, wraiths, spectres, and devourers. The type or types of undead created is based on caster level, as shown below.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Create Undead", school: "Necromancy", levels: "arcanist 6, cleric 6, oracle 6, shaman 6, sorcerer 6, spiritualist 6, warpriest 6, wizard 6",
                          castingTime: "1 hour", components: "V, S, M (a clay pot filled with grave dirt and an onyx gem worth at least 50 gp per HD of the undead to be created)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one corpse",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "A much more potent spell than animate dead , this evil spell allows you to infuse a dead body with negative energy to create more powerful sorts of undead: ghouls, ghasts, mummies, and mohrgs.",
                          desc: "A much more potent spell than animate dead , this evil spell allows you to infuse a dead body with negative energy to create more powerful sorts of undead: ghouls, ghasts, mummies, and mohrgs. The type or types of undead you can create are based on your caster level, as shown on the table below.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Create Water", school: "Conjuration (Creation)", levels: "adept 0, cleric 0, druid 0, hunter 0, inquisitor 0, occultist 0, oracle 0, paladin 1, shaman 0, warpriest 0",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "up to 2 gallons of water/level", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "This spell generates wholesome, drinkable water, just like clean rain water.",
                          desc: "This spell generates wholesome, drinkable water, just like clean rain water. Water can be created in an area as small as will actually contain the liquid, or in an area three times as large—possibly creating a downpour or filling many small receptacles. This water disappears after 1 day if not consumed. Note : Conjuration spells can't create substances or objects within a creature. Water weighs about 8 pounds per gallon. One cubic foot of water contains roughly 8 gallons and weighs about 60 pounds.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Creeping Doom", school: "Conjuration (Summoning)", levels: "druid 7, shaman 7, summoner 5, summoner (unchained) 6",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)/100 ft.; see text", area: "four swarms of insects", targets: "",
                          duration: "1 round/level",
                          savingThrow: "Fortitude partial, see text;", sr: false,
                          summary: "This spell summons four massive swarms of biting and stinging insects. These swarms appear adjacent to one another, but can be directed to move independently.",
                          desc: "This spell summons four massive swarms of biting and stinging insects. These swarms appear adjacent to one another, but can be directed to move independently. Treat these swarms as centipede swarms with the following adjustments. The swarms have 60 hit points each and deal 4d6 points of damage with their swarm attack. The save to resist their poison and distraction effects is equal to the save DC of this spell. Creatures caught in multiple swarms only take damage and make saves once. You may summon the swarms so that they share the area of other creatures. As a standard action, you can command any number of the swarms to move toward any target within 100 feet of you. You cannot command any swarm to move more than 100 feet away from you, and if you move more than 100 feet from any swarm, that swarm remains stationary, attacking any creatures in its area (but can be commanded again if you move within 100 feet).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Crushing Despair", school: "Enchantment (Compulsion)", levels: "arcanist 4, bard 3, bloodrager 4, mesmerist 3, psychic 4, skald 3, sorcerer 4, spiritualist 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M",
                          range: "30 ft.", area: "cone-shaped burst", targets: "",
                          duration: "1 min./level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "An invisible cone of despair causes great sadness in the subjects. Each affected creature takes a –2 penalty on attack rolls, saving throws, ability checks, skill checks, and weapon damage rolls.",
                          desc: "An invisible cone of despair causes great sadness in the subjects. Each affected creature takes a –2 penalty on attack rolls, saving throws, ability checks, skill checks, and weapon damage rolls. Crushing despair counters and dispels",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Crushing Hand", school: "Evocation", levels: "arcanist 9, psychic 9, sorcerer 9, wizard 9",
                          castingTime: "1 standard action", components: "V, S, F (a soft glove)",
                          range: "medium (100 ft. + 10 ft./level)", area: "10-ft.-hand", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: true,
                          summary: "This spell functions as interposing hand , except that it can also grapple one opponent as",
                          desc: "This spell functions as interposing hand , except that it can also grapple one opponent as",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Cure Critical Wounds", school: "Conjuration (Healing)", levels: "adept 4, alchemist 4, bard 4, cleric 4, druid 5, hunter 5, inquisitor 4, investigator 4, occultist 4, oracle 4, shaman 4, skald 4, spiritualist 4, warpriest 4, witch 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "instantaneous",
                          savingThrow: "Will half (harmless);", sr: true,
                          summary: "This spell functions like cure light wounds , except that it cures 4d8 points of damage +1 point per caster level (maximum +20).",
                          desc: "This spell functions like cure light wounds , except that it cures 4d8 points of damage +1 point per caster level (maximum +20).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Cure Critical Wounds, Mass", school: "Conjuration (Healing)", levels: "cleric 8, druid 9, oracle 8, shaman 8, witch 9",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature/level, no two of which can be more than 30 ft. apart",
                          duration: "instantaneous",
                          savingThrow: "Will half (harmless) or Will half; see text;", sr: true,
                          summary: "This spell functions like mass cure light wounds , except that it cures 4d8 points of damage +1 point per caster level (maximum +40).",
                          desc: "This spell functions like mass cure light wounds , except that it cures 4d8 points of damage +1 point per caster level (maximum +40).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Cure Light Wounds", school: "Conjuration (Healing)", levels: "adept 1, alchemist 1, bard 1, cleric 1, druid 1, hunter 1, inquisitor 1, investigator 1, occultist 1, oracle 1, paladin 1, ranger 2, shaman 1, skald 1, spiritualist 1, warpriest 1, witch 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "instantaneous",
                          savingThrow: "Will half (harmless);", sr: true,
                          summary: "When laying your hand upon a living creature, you channel positive energy that cures 1d8 points of damage + 1 point per caster level (maximum +5).",
                          desc: "When laying your hand upon a living creature, you channel positive energy that cures 1d8 points of damage + 1 point per caster level (maximum +5). Since undead are powered by negative energy, this spell deals damage to them instead of curing their wounds. An undead creature can apply spell resistance, and can attempt a Will save to take half damage.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Cure Light Wounds, Mass", school: "Conjuration (Healing)", levels: "bard 5, cleric 5, druid 6, hunter 6, inquisitor 5, occultist 5, oracle 5, shaman 5, skald 5, warpriest 5, witch 6",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature/level, no two of which can be more than 30 ft. apart",
                          duration: "instantaneous",
                          savingThrow: "Will half (harmless) or Will half; see text;", sr: true,
                          summary: "You channel positive energy to cure 1d8 points of damage + 1 point per caster level (maximum +25) on each selected creature. Like other cure spells,",
                          desc: "You channel positive energy to cure 1d8 points of damage + 1 point per caster level (maximum +25) on each selected creature. Like other cure spells,",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Cure Moderate Wounds", school: "Conjuration (Healing)", levels: "adept 2, alchemist 2, bard 2, cleric 2, druid 3, hunter 3, inquisitor 2, investigator 2, occultist 2, oracle 2, paladin 3, ranger 3, shaman 2, skald 2, spiritualist 2, warpriest 2, witch 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "instantaneous",
                          savingThrow: "Will half (harmless);", sr: true,
                          summary: "This spell functions like cure light wounds , except that it cures 2d8 points of damage + 1 point per caster level (maximum +10).",
                          desc: "This spell functions like cure light wounds , except that it cures 2d8 points of damage + 1 point per caster level (maximum +10).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Cure Moderate Wounds, Mass", school: "Conjuration (Healing)", levels: "bard 6, cleric 6, druid 7, inquisitor 6, occultist 6, oracle 6, shaman 6, skald 6, warpriest 6, witch 7",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature/level, no two of which can be more than 30 ft. apart",
                          duration: "instantaneous",
                          savingThrow: "Will half (harmless) or Will half; see text;", sr: true,
                          summary: "This spell functions like mass cure light wounds , except that it cures 2d8 points of damage + 1 point per caster level (maximum +30).",
                          desc: "This spell functions like mass cure light wounds , except that it cures 2d8 points of damage + 1 point per caster level (maximum +30).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Cure Serious Wounds", school: "Conjuration (Healing)", levels: "adept 3, alchemist 3, bard 3, cleric 3, druid 4, hunter 4, inquisitor 3, investigator 3, occultist 3, oracle 3, paladin 4, ranger 4, shaman 3, skald 3, spiritualist 3, warpriest 3, witch 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "instantaneous",
                          savingThrow: "Will half (harmless);", sr: true,
                          summary: "This spell functions like cure light wounds , except that it cures 3d8 points of damage + 1 point per caster level (maximum +15).",
                          desc: "This spell functions like cure light wounds , except that it cures 3d8 points of damage + 1 point per caster level (maximum +15).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Cure Serious Wounds, Mass", school: "Conjuration (Healing)", levels: "cleric 7, druid 8, oracle 7, shaman 7, witch 8",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature/level, no two of which can be more than 30 ft. apart",
                          duration: "instantaneous",
                          savingThrow: "Will half (harmless) or Will half; see text;", sr: true,
                          summary: "This spell functions like mass cure light wounds , except that it cures 3d8 points of damage + 1 point per caster level (maximum +35).",
                          desc: "This spell functions like mass cure light wounds , except that it cures 3d8 points of damage + 1 point per caster level (maximum +35).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Curse Water", school: "Necromancy", levels: "antipaladin 1, cleric 1, inquisitor 1, oracle 1, warpriest 1",
                          castingTime: "1 minute", components: "V, S, M (5 lbs. of powdered silver worth 25 gp)",
                          range: "touch", area: "", targets: "flask of water touched",
                          duration: "instantaneous",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "This spell imbues a flask (1 pint) of water with negative energy, turning it into unholy water (see Equipment).",
                          desc: "This spell imbues a flask (1 pint) of water with negative energy, turning it into unholy water (see Equipment). Unholy water damages good outsiders the way holy water damages undead and evil outsiders.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Curse, Major", school: "Necromancy", levels: "adept 3, antipaladin 3, arcanist 4, bloodrager 4, cleric 3, medium 2, mesmerist 3, occultist 3, oracle 3, shaman 3, sorcerer 4, spiritualist 3, warpriest 3, witch 3, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "permanent",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions as bestow curse , except the DC to remove the curse is equal to the save DC + 5.",
                          desc: "This spell functions as bestow curse , except the DC to remove the curse is equal to the save DC + 5.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Cyclic Reincarnation", school: "Transmutation", levels: "druid 4, hunter 4, medium 4, shaman 4, witch 5",
                          castingTime: "10 minutes", components: "V, S, DF, M (oils worth 1,000 gp)",
                          range: "touch", area: "", targets: "dead creature touched",
                          duration: "instantaneous",
                          savingThrow: "none, see text;", sr: true,
                          summary: "This spell allows a dead creature that died no more than 1 year before the casting of the spell to return to life in a body that closely resembles its original body; it functions as reincarnate…",
                          desc: "This spell allows a dead creature that died no more than 1 year before the casting of the spell to return to life in a body that closely resembles its original body; it functions as reincarnate except as noted.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Dancing Lights", school: "Evocation", levels: "arcanist 0, bard 0, magus 0, medium 0, mesmerist 0, occultist 0, psychic 0, shaman 0, skald 0, sorcerer 0, witch 0, wizard 0",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "up to four lights, all within a 10-ft.-radius area", targets: "",
                          duration: "1 minute (D)",
                          savingThrow: "none;", sr: false,
                          summary: "Depending on the version selected, you create up to four lights that resemble lanterns or torches (and cast that amount of light), or up to four glowing spheres of light (which look like…",
                          desc: "Depending on the version selected, you create up to four lights that resemble lanterns or torches (and cast that amount of light), or up to four glowing spheres of light (which look like will-o'-wisps), or one faintly glowing, vaguely humanoid shape. The dancing lights must stay within a 10-foot-radius area in relation to each other but otherwise move as you desire (no concentration required): forward or back, up or down, straight or turning corners, or the like. The lights can move up to 100 feet per round. A light winks out if the distance between you and it exceeds the spell's range.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Darkness", school: "Evocation", levels: "adept 2, antipaladin 2, arcanist 2, bard 2, cleric 2, inquisitor 2, magus 2, occultist 2, oracle 2, shaman 2, skald 2, sorcerer 2, warpriest 2, wizard 2",
                          castingTime: "1 standard action", components: "V, M/DF (bat fur and a piece of coal)",
                          range: "touch", area: "", targets: "object touched",
                          duration: "1 min./level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell causes an object to radiate darkness out to a 20-foot radius.",
                          desc: "This spell causes an object to radiate darkness out to a 20-foot radius. This darkness causes the illumination level in the area to drop one step, from bright light to normal light, from normal light to dim light, or from dim light to darkness. This spell has no effect in an area that is already dark. Creatures with light vulnerability or sensitivity take no penalties in normal light. All creatures gain concealment (20% miss chance) in dim light. All creatures gain total concealment (50% miss chance) in darkness. Creatures with darkvision can see in an area of dim light or darkness without penalty. Nonmagical sources of light, such as torches and lanterns, do not increase the light level in an area of darkness. Magical light sources only increase the light level in an area if they are of a higher spell level than darkness .",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Darkvision", school: "Transmutation", levels: "alchemist 2, antipaladin 2, arcanist 2, hunter 3, investigator 2, medium 2, occultist 2, psychic 2, ranger 3, redmantisassassin 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (either a pinch of dried carrot or an agate)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 hour/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The subject gains the ability to see 60 feet even in total darkness. Darkvision is black and white only but otherwise like normal sight. Darkvision can be made permanent with a",
                          desc: "The subject gains the ability to see 60 feet even in total darkness. Darkvision is black and white only but otherwise like normal sight. Darkvision can be made permanent with a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Darkvision, Communal", school: "Transmutation", levels: "alchemist 2, antipaladin 2, arcanist 2, hunter 3, investigator 2, medium 2, occultist 2, psychic 2, ranger 3, redmantisassassin 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (either a pinch of dried carrot or an agate)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 hour/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions like darkvision , except you may divide the duration in 1-hour intervals among the creatures touched. Darkvision, Greater",
                          desc: "This spell functions like darkvision , except you may divide the duration in 1-hour intervals among the creatures touched. Darkvision, Greater",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Darkvision, Greater", school: "Transmutation", levels: "alchemist 2, antipaladin 2, arcanist 2, hunter 3, investigator 2, medium 2, occultist 2, psychic 2, ranger 3, redmantisassassin 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (either a pinch of dried carrot or an agate)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 hour/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions as darkvision , except the target’s darkvision has a range of 120 feet.",
                          desc: "This spell functions as darkvision , except the target’s darkvision has a range of 120 feet.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Daylight", school: "Evocation", levels: "adept 3, arcanist 3, bard 3, cleric 3, druid 3, hunter 3, inquisitor 3, magus 3, occultist 3, oracle 3, paladin 3, shaman 3, skald 3, sorcerer 3, warpriest 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "object touched",
                          duration: "10 min./level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You touch an object when you cast this spell, causing the object to shed bright light in a 60-foot radius.",
                          desc: "You touch an object when you cast this spell, causing the object to shed bright light in a 60-foot radius. This illumination increases the light level for an additional 60 feet by one step (darkness becomes dim light, dim light becomes normal light, and normal light becomes bright light). Creatures that take penalties in bright light take them while within the 60-foot radius of this magical light. Despite its name, this spell is not the equivalent of daylight for the purposes of creatures that are damaged or destroyed by such light. If daylight is cast on a small object that is then placed inside or under a light-proof covering, the spell's effects are blocked until the covering is removed.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Daze", school: "Enchantment (Compulsion)", levels: "arcanist 0, bard 0, inquisitor 0, magus 0, medium 0, mesmerist 0, occultist 0, psychic 0, shaman 0, skald 0, sorcerer 0, spiritualist 0, summoner 0, summoner (unchained) 0, witch 0, wizard 0",
                          castingTime: "1 standard action", components: "V, S, M (a pinch of wool or similar substance)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one humanoid creature of 4 HD or less",
                          duration: "1 round",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell clouds the mind of a humanoid creature with 4 or fewer Hit Dice so that it takes no actions. Humanoids of 5 or more HD are not affected.",
                          desc: "This spell clouds the mind of a humanoid creature with 4 or fewer Hit Dice so that it takes no actions. Humanoids of 5 or more HD are not affected. A dazed subject is not stunned, so attackers get no special advantage against it. After a creature has been dazed by this spell, it is immune to the effects of this spell for 1 minute. Daze, Mass",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Daze Monster", school: "Enchantment (Compulsion)", levels: "arcanist 2, bard 2, bloodrager 2, medium 2, mesmerist 2, occultist 2, psychic 2, skald 2, sorcerer 2, summoner 1, summoner (unchained) 1, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a pinch of wool or similar substance)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one living creature of 6 HD or less",
                          duration: "1 round",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions like daze , but can affect any one living creature of any type. Creatures of 7 or more HD are not affected.",
                          desc: "This spell functions like daze , but can affect any one living creature of any type. Creatures of 7 or more HD are not affected.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Daze, Mass", school: "Enchantment (Compulsion)", levels: "arcanist 0, bard 0, inquisitor 0, magus 0, medium 0, mesmerist 0, occultist 0, psychic 0, shaman 0, skald 0, sorcerer 0, spiritualist 0, summoner 0, summoner (unchained) 0, witch 0, wizard 0",
                          castingTime: "1 standard action", components: "V, S, M (a pinch of wool or similar substance)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one humanoid creature of 4 HD or less",
                          duration: "1 round",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions as daze , except as noted above.",
                          desc: "This spell functions as daze , except as noted above.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Deadman's Contingency", school: "Evocation", levels: "arcanist 6, occultist 6, psychic 6, sorcerer 6, wizard 6",
                          castingTime: "at least 10 minutes; see text", components: "V, S, M (quicksilver and an eyelash of a spell-using creature), F (ivory statuette of you worth 1,500 gp)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 day/level (D) or until discharged",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as contingency , except as noted above. This spell also only comes into effect after your death and works only with certain spells.",
                          desc: "This spell functions as contingency , except as noted above. This spell also only comes into effect after your death and works only with certain spells. The companion spell triggers 1d6 rounds after your death. All decisions made involving the companion spell must be made when",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Death Knell", school: "Necromancy", levels: "antipaladin 1, cleric 2, inquisitor 2, oracle 2, spiritualist 2, warpriest 2, witch 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "instantaneous/10 minutes per HD of subject; see text",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You draw forth the ebbing life force of a creature and use it to fuel your own power. Upon casting this spell, you touch a living creature that has –1 or fewer hit points.",
                          desc: "You draw forth the ebbing life force of a creature and use it to fuel your own power. Upon casting this spell, you touch a living creature that has –1 or fewer hit points. If the subject fails its saving throw, it dies, and you gain 1d8 temporary hit points and a +2 enhancement bonus to Strength. Additionally, your effective caster level goes up by +1, improving spell effects dependent on caster level. This increase in effective caster level does not grant you access to more spells. These effects last for 10 minutes per HD of the subject creature.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Death Ward", school: "Necromancy", levels: "alchemist 4, cleric 4, druid 5, hunter 5, inquisitor 4, investigator 4, medium 4, occultist 4, oracle 4, paladin 4, spiritualist 4, warpriest 4, witch 4",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "1 min./level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The subject gains a +4 morale bonus on saves against all death spells and magical death effects. The subject is granted a save to negate such effects even if one is not normally allowed.",
                          desc: "The subject gains a +4 morale bonus on saves against all death spells and magical death effects. The subject is granted a save to negate such effects even if one is not normally allowed. The subject is immune to energy drain and any negative energy effects, including channeled negative energy. This spell does not remove negative levels that the subject has already gained, but it does remove the penalties from negative levels for the duration of its effect. Death ward does not protect against other sorts of attacks, even if those attacks might be lethal.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Deathwatch", school: "Necromancy", levels: "cleric 1, medium 1, oracle 1, spiritualist 1, warpriest 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "30 ft.", area: "cone-shaped emanation", targets: "",
                          duration: "10 min./level",
                          savingThrow: "none;", sr: false,
                          summary: "Using the powers of necromancy, you can determine the condition of creatures near death within the spell's range.",
                          desc: "Using the powers of necromancy, you can determine the condition of creatures near death within the spell's range. You instantly know whether each creature within the area is dead, fragile (alive and wounded, with 3 or fewer hit points left), fighting off death (alive with 4 or more hit points), healthy, undead, or neither alive nor dead (such as a construct). Deathwatch sees through any spell or ability that allows creatures to feign death.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Deep Slumber", school: "Enchantment (Compulsion)", levels: "arcanist 3, bard 3, mesmerist 3, occultist 3, psychic 3, sahirafiyun 3, shaman 3, skald 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 round", components: "V, S, M (fine sand, rose petals, or a live cricket)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one or more living creatures within a 10-ft.-radius burst", targets: "",
                          duration: "1 min./level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions like sleep , except that it affects 10 HD of targets.",
                          desc: "This spell functions like sleep , except that it affects 10 HD of targets.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Deeper Darkness", school: "Evocation", levels: "adept 3, antipaladin 3, cleric 3, inquisitor 3, occultist 3, oracle 3, shaman 3, warpriest 3",
                          castingTime: "1 standard action", components: "V, M/DF (bat fur and a piece of coal)",
                          range: "touch", area: "", targets: "object touched",
                          duration: "10 min./level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as darkness , except that objects radiate darkness in a 60-foot radius and the light level is lowered by two steps.",
                          desc: "This spell functions as darkness , except that objects radiate darkness in a 60-foot radius and the light level is lowered by two steps. Bright light becomes dim light and normal light becomes darkness. Areas of dim light and darkness become supernaturally dark. This functions like darkness, but even creatures with darkvision cannot see within the spell's confines. This spell does not stack with itself.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Delay Poison", school: "Conjuration (Healing)", levels: "adept 2, alchemist 2, bard 2, cleric 2, druid 2, hunter 1, inquisitor 2, investigator 2, mesmerist 2, occultist 2, oracle 2, paladin 2, ranger 1, shaman 2, skald 2, warpriest 2, witch 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 hour/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "The subject becomes temporarily immune to poison. Any poison in its system or any poison to which it is exposed during the spell's duration does not affect the subject until the spell's duration has…",
                          desc: "The subject becomes temporarily immune to poison. Any poison in its system or any poison to which it is exposed during the spell's duration does not affect the subject until the spell's duration has expired. Delay poison does not cure any damage that poison may have already done. Delay Poison, Communal",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Delay Poison, Communal", school: "Conjuration (Healing)", levels: "adept 2, alchemist 2, bard 2, cleric 2, druid 2, hunter 1, inquisitor 2, investigator 2, mesmerist 2, occultist 2, oracle 2, paladin 2, ranger 1, shaman 2, skald 2, warpriest 2, witch 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 hour/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "This spell functions like delay poison , except you divide the duration in 1-hour intervals among the creatures touched.",
                          desc: "This spell functions like delay poison , except you divide the duration in 1-hour intervals among the creatures touched.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Delayed Blast Fireball", school: "Evocation", levels: "arcanist 7, sorcerer 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S, M (a ball of bat guano and sulfur)",
                          range: "long (400 ft. + 40 ft./level)", area: "20-ft.-radius spread", targets: "",
                          duration: "5 rounds or less; see text",
                          savingThrow: "Reflex half;", sr: true,
                          summary: "This spell functions like fireball , except that it is more powerful and can detonate up to 5 rounds after the spell is cast.",
                          desc: "This spell functions like fireball , except that it is more powerful and can detonate up to 5 rounds after the spell is cast. The burst of flame deals 1d6 points of fire damage per caster level (maximum 20d6). The glowing bead created by",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Demand", school: "Enchantment (Compulsion)", levels: "arcanist 8, mesmerist 6, psychic 8, sorcerer 8, witch 8, wizard 8",
                          castingTime: "10 minutes", components: "V, S, M/DF (fine copper wire)",
                          range: "see text", area: "", targets: "one creature",
                          duration: "1 round; see text",
                          savingThrow: "Will partial;", sr: true,
                          summary: "This spell functions like sending , but the message can also contain a",
                          desc: "This spell functions like sending , but the message can also contain a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Demanding Message", school: "Transmutation", levels: "arcanist 0, bard 0, medium 0, mesmerist 0, occultist 0, psychic 0, skald 0, sorcerer 0, spiritualist 0, summoner 0, summoner (unchained) 0, witch 0, wizard 0",
                          castingTime: "1 standard action", components: "V, S, F (a piece of copper wire)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature/level",
                          duration: "10 min./level",
                          savingThrow: "none;", sr: false,
                          summary: "This spell initially functions as message (allowing no save or spell resistance). Once during the message effect, you can concentrate as a standard action to issue a",
                          desc: "This spell initially functions as message (allowing no save or spell resistance). Once during the message effect, you can concentrate as a standard action to issue a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Demanding Message, Mass", school: "Transmutation", levels: "arcanist 0, bard 0, medium 0, mesmerist 0, occultist 0, psychic 0, skald 0, sorcerer 0, spiritualist 0, summoner 0, summoner (unchained) 0, witch 0, wizard 0",
                          castingTime: "1 standard action", components: "V, S, F (a piece of copper wire)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature/level",
                          duration: "10 min./level",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as demanding message , except that you can issue one",
                          desc: "This spell functions as demanding message , except that you can issue one",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Desecrate", school: "Evocation", levels: "antipaladin 2, cleric 2, inquisitor 2, oracle 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S, M (a vial of unholy water and 25 gp worth (5 pounds) of silver dust, all of which must be sprinkled around the area), DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "20-ft.-radius emanation", targets: "",
                          duration: "2 hours/level",
                          savingThrow: "none;", sr: true,
                          summary: "This spell imbues an area with negative energy. The DC to resist negative channeled energy within this area gains a +3 profane bonus.",
                          desc: "This spell imbues an area with negative energy. The DC to resist negative channeled energy within this area gains a +3 profane bonus. Every undead creature entering a desecrated area gains a +1 profane bonus on all attack rolls, damage rolls, and saving throws. An undead creature created within or summoned into such an area gains +1 hit points per HD.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Destruction", school: "Necromancy", levels: "cleric 7, oracle 7, shaman 8, witch 8",
                          castingTime: "1 standard action", components: "V, S, F (holy or unholy symbol costing 500 gp)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "Fortitude partial;", sr: true,
                          summary: "This spell instantly delivers 10 points of damage per caster level. If the spell slays the target, it consumes the remains utterly in holy (or unholy) fire (but not its equipment or possessions).",
                          desc: "This spell instantly delivers 10 points of damage per caster level. If the spell slays the target, it consumes the remains utterly in holy (or unholy) fire (but not its equipment or possessions). If the target's Fortitude saving throw succeeds, it instead takes 10d6 points of damage. The only way to restore life to a character who has failed to save against this spell (and was slain) is to use true resurrection , a carefully worded",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Detect Animals or Plants", school: "Divination", levels: "druid 1, hunter 1, psychic 1, ranger 1, shaman 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "long (400 ft. + 40 ft./level)", area: "cone-shaped emanation", targets: "",
                          duration: "concentration, up to 10 min./level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You can detect a particular kind of animal or plant in a cone emanating out from you in whatever direction you face.",
                          desc: "You can detect a particular kind of animal or plant in a cone emanating out from you in whatever direction you face. You must think of a kind of animal or plant when using the spell, but you can change the animal or plant kind each round. The amount of information revealed depends on how long you search a particular area or focus on a specific kind of animal or plant. 1st Round : Presence or absence of that kind of animal or plant in the area.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Detect Anxieties", school: "Divination", levels: "alchemist 2, arcanist 2, bard 2, inquisitor 2, investigator 2, medium 2, mesmerist 2, psychic 1, skald 2, sorcerer 2, spiritualist 2, summoner 2, summoner (unchained) 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, F/DF (a copper piece)",
                          range: "60 ft.", area: "cone-shaped emanation", targets: "",
                          duration: "concentration, up to 1 min./level (D)",
                          savingThrow: "Will negates; see text;", sr: false,
                          summary: "This spell functions as detect thoughts except that you sense significant anxieties of creatures with an Intelligence score of 1 or higher, regardless of whether they are conscious or not.",
                          desc: "This spell functions as detect thoughts except that you sense significant anxieties of creatures with an Intelligence score of 1 or higher, regardless of whether they are conscious or not. Instead of Intelligence, the second round of concentration reveals each mind’s Wisdom score and current degree of fear (shaken, frightened, panicked, cowering, or paralyzed with fear). If the highest Wisdom score is 26 or higher (and at least 10 points higher than your own Wisdom score), you are stunned for 1 round and the spell ends. Instead of surface thoughts, the third round of concentration reveals the most pressing current anxiety of any mind in the area (Will negates). Presenting a creature with the threat of its anxiety grants you a +2 bonus (or higher, at the GM’s discretion) on checks to Intimidate that creature.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Detect Chaos", school: "Divination", levels: "adept 1, cleric 1, inquisitor 1, oracle 1, shaman 1, spiritualist 1, warpriest 1",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "60 ft.", area: "cone-shaped emanation", targets: "",
                          duration: "concentration, up to 10 min./level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like detect evil , except that it detects the auras of chaotic creatures, clerics of chaotic deities, chaotic spells, and chaotic magic items, and you are vulnerable to an…",
                          desc: "This spell functions like detect evil , except that it detects the auras of chaotic creatures, clerics of chaotic deities, chaotic spells, and chaotic magic items, and you are vulnerable to an overwhelming chaotic aura if you are lawful.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Detect Desires", school: "Divination", levels: "alchemist 2, arcanist 2, bard 2, inquisitor 2, investigator 2, medium 2, mesmerist 2, psychic 1, skald 2, sorcerer 2, spiritualist 2, summoner 2, summoner (unchained) 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, F/DF (a copper piece)",
                          range: "60 ft.", area: "cone-shaped emanation", targets: "",
                          duration: "concentration, up to 1 min./level (D)",
                          savingThrow: "Will negates; see text;", sr: false,
                          summary: "This spell functions as per detect thoughts , except you sense significant desires of creatures with an Intelligence score of 1 or higher, regardless of whether they are conscious or not.",
                          desc: "This spell functions as per detect thoughts , except you sense significant desires of creatures with an Intelligence score of 1 or higher, regardless of whether they are conscious or not. Instead of Intelligence, the second round of concentration reveals each mind’s Charisma score. If the highest Charisma score is 26 or higher (and at least 10 points higher than your own Charisma score), you are stunned for 1 round and the spell ends. Instead of surface thoughts, the third round of concentration reveals the most pressing current desire of any mind in the area (Will negates). Presenting a creature with an opportunity to fulfill a significant desire grants you a +2 circumstance bonus (or higher, at the GM’s discretion) on Diplomacy checks to influence it.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Detect Evil", school: "Divination", levels: "adept 1, cleric 1, inquisitor 1, oracle 1, shaman 1, spiritualist 1, warpriest 1",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "60 ft.", area: "cone-shaped emanation", targets: "",
                          duration: "concentration, up to 10 min./level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You can sense the presence of evil. The amount of information revealed depends on how long you study a particular area or subject. 1st Round : Presence or absence of evil.",
                          desc: "You can sense the presence of evil. The amount of information revealed depends on how long you study a particular area or subject. 1st Round : Presence or absence of evil.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Detect Good", school: "Divination", levels: "adept 1, cleric 1, inquisitor 1, oracle 1, shaman 1, spiritualist 1, warpriest 1",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "60 ft.", area: "cone-shaped emanation", targets: "",
                          duration: "concentration, up to 10 min./level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like detect evil , except that it detects the auras of good creatures, clerics or paladins of good deities, good spells, and good magic items, and you are vulnerable to an…",
                          desc: "This spell functions like detect evil , except that it detects the auras of good creatures, clerics or paladins of good deities, good spells, and good magic items, and you are vulnerable to an overwhelming good aura if you are evil.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Detect Law", school: "Divination", levels: "adept 1, cleric 1, inquisitor 1, oracle 1, shaman 1, spiritualist 1, warpriest 1",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "60 ft.", area: "cone-shaped emanation", targets: "",
                          duration: "concentration, up to 10 min./level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like detect evil , except that it detects the auras of lawful creatures, clerics of lawful deities, lawful spells, and lawful magic items, and you are vulnerable to an…",
                          desc: "This spell functions like detect evil , except that it detects the auras of lawful creatures, clerics of lawful deities, lawful spells, and lawful magic items, and you are vulnerable to an overwhelming lawful aura if you are chaotic.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Detect Magic", school: "Divination", levels: "adept 0, arcanist 0, bard 0, cleric 0, druid 0, hunter 0, inquisitor 0, magus 0, medium 0, mesmerist 0, occultist 0, oracle 0, psychic 0, shaman 0, skald 0, sorcerer 0, spiritualist 0, summoner 0, summoner (unchained) 0, warpriest 0, witch 0, wizard 0",
                          castingTime: "1 standard action", components: "V, S",
                          range: "60 ft.", area: "cone-shaped emanation", targets: "creature touched",
                          duration: "concentration, up to 1 min./level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You detect magical auras. The amount of information revealed depends on how long you study a particular area or subject. 1st Round : Presence or absence of magical auras.",
                          desc: "You detect magical auras. The amount of information revealed depends on how long you study a particular area or subject. 1st Round : Presence or absence of magical auras.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Detect Magic, Greater", school: "Divination", levels: "adept 0, arcanist 0, bard 0, cleric 0, druid 0, hunter 0, inquisitor 0, magus 0, medium 0, mesmerist 0, occultist 0, oracle 0, psychic 0, shaman 0, skald 0, sorcerer 0, spiritualist 0, summoner 0, summoner (unchained) 0, warpriest 0, witch 0, wizard 0",
                          castingTime: "1 standard action", components: "V, S",
                          range: "60 ft.", area: "cone-shaped emanation", targets: "creature touched",
                          duration: "concentration, up to 1 min./level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as detect magic , except that you can glean much more information from the magical auras that you find, and those auras can be found after a much greater length of time.",
                          desc: "This spell functions as detect magic , except that you can glean much more information from the magical auras that you find, and those auras can be found after a much greater length of time. You can detect a lingering aura for up to 1 day per caster level you have, regardless of the aura’s original strength. Additionally, when you use a standard action to concentrate on this spell, you can also study a creature within the spell’s area and attempt a Spellcraft check in order to determine the last spell that the creature cast by identifying lingering traces that the spell left in the caster’s aura. The DC to identify the spell is equal to 20 + the creature’s caster level. Finally, you are able to locate and analyze the signature flourishes in a magical aura that allow you to match a spell to the person who cast it. In order to find these identifiers in a spell’s aura, you must spend 1 round focusing on that spell in particular, and succeed at an opposed Knowledge (arcana) check against the caster (or a Knowledge [arcana] check with a DC equal to 15 + the spell level if the caster wants her work to be identified and emphasizes these unique elements rather than obscuring them). Once you learn a caster’s set of identifiers, you can remember them as easily as a face or a voice. You can recognize this signature if you succeed at a Spellcraft check when later identifying a spell to determine whether or not that spell was cast by the same individual. The spell",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Detect Poison", school: "Divination", levels: "antipaladin 1, arcanist 0, cleric 0, druid 0, hunter 0, inquisitor 0, mesmerist 0, occultist 0, oracle 0, paladin 1, psychic 0, ranger 1, shaman 0, sorcerer 0, warpriest 0, witch 0, wizard 0",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "You determine whether a creature, object, or area has been poisoned or is poisonous. You can determine the exact type of poison with a DC 20 Wisdom check.",
                          desc: "You determine whether a creature, object, or area has been poisoned or is poisonous. You can determine the exact type of poison with a DC 20 Wisdom check. A character with the Craft (alchemy) skill may try a DC 20 Craft (alchemy) check if the Wisdom check fails, or may try the Craft (alchemy) check prior to the Wisdom check. The spell can penetrate barriers, but 1 foot of stone, 1 inch of common metal, a thin sheet of lead, or 3 feet of wood or dirt blocks it.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Detect Scrying", school: "Divination", levels: "arcanist 4, bard 4, inquisitor 4, medium 3, mesmerist 4, occultist 4, psychic 4, shaman 4, skald 4, sorcerer 4, spiritualist 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (a piece of mirror and a miniature brass hearing trumpet)",
                          range: "40 ft.", area: "40-ft.-radius emanation centered on you", targets: "",
                          duration: "24 hours",
                          savingThrow: "none;", sr: false,
                          summary: "You immediately become aware of any attempt to observe you by means of a divination (scrying) spell or effect. The spell's area radiates from you and moves as you move.",
                          desc: "You immediately become aware of any attempt to observe you by means of a divination (scrying) spell or effect. The spell's area radiates from you and moves as you move. You know the location of every magical sensor within the spell's area. If the scrying attempt originates within the area, you also know its location; otherwise, you and the scrier immediately make opposed caster level checks (1d20 + caster level). If you at least match the scrier's result, you get a visual image of the scrier and an accurate sense of his direction and distance from you.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Detect Secret Doors", school: "Divination", levels: "alchemist 1, arcanist 1, bard 1, investigator 1, mesmerist 1, occultist 1, psychic 1, skald 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "60 ft.", area: "cone-shaped emanation", targets: "",
                          duration: "concentration, up to 1 min./level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You can detect secret doors, compartments, caches, and so forth. Only passages, doors, or openings that have been specifically constructed to escape detection are detected by this spell.",
                          desc: "You can detect secret doors, compartments, caches, and so forth. Only passages, doors, or openings that have been specifically constructed to escape detection are detected by this spell. The amount of information revealed depends on how long you study a particular area or subject. 1st Round : Presence or absence of secret doors.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Detect Snares and Pits", school: "Divination", levels: "druid 1, hunter 1, occultist 1, ranger 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "60 ft.", area: "cone-shaped emanation", targets: "",
                          duration: "concentration, up to 10 min./level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You can detect simple pits, deadfalls, and snares as well as mechanical traps constructed of natural materials. The spell does not detect complex traps, including trapdoor traps.",
                          desc: "You can detect simple pits, deadfalls, and snares as well as mechanical traps constructed of natural materials. The spell does not detect complex traps, including trapdoor traps. Detect snares and pits does detect certain natural hazards—quicksand (a snare), a sinkhole (a pit), or unsafe walls of natural rock (a deadfall). It does not reveal other potentially dangerous conditions. The spell does not detect magic traps (except those that operate by pit, deadfall, or snaring; see the spell snare), nor mechanically complex ones, nor those that have been rendered safe or inactive. The amount of information revealed depends on how long you study a particular area.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Detect Thoughts", school: "Divination", levels: "alchemist 2, arcanist 2, bard 2, inquisitor 2, investigator 2, medium 2, mesmerist 2, psychic 1, skald 2, sorcerer 2, spiritualist 2, summoner 2, summoner (unchained) 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, F/DF (a copper piece)",
                          range: "60 ft.", area: "cone-shaped emanation", targets: "",
                          duration: "concentration, up to 1 min./level (D)",
                          savingThrow: "Will negates; see text;", sr: false,
                          summary: "You detect surface thoughts. The amount of information revealed depends on how long you study a particular area or subject.",
                          desc: "You detect surface thoughts. The amount of information revealed depends on how long you study a particular area or subject. 1st Round : Presence or absence of thoughts (from conscious creatures with Intelligence scores of 1 or higher).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Detect Undead", school: "Divination", levels: "alchemist 1, arcanist 1, cleric 1, inquisitor 1, investigator 1, medium 1, mesmerist 1, oracle 1, paladin 1, psychic 1, shaman 1, sorcerer 1, spiritualist 1, warpriest 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M/DF (earth from a grave)",
                          range: "60 ft.", area: "cone-shaped emanation", targets: "creature touched",
                          duration: "concentration, up to 1 min./level",
                          savingThrow: "none;", sr: false,
                          summary: "You can detect the aura that surrounds undead creatures. The amount of information revealed depends on how long you study a particular area. 1st Round : Presence or absence of undead auras.",
                          desc: "You can detect the aura that surrounds undead creatures. The amount of information revealed depends on how long you study a particular area. 1st Round : Presence or absence of undead auras.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Dictum", school: "Evocation", levels: "cleric 7, inquisitor 6, oracle 7",
                          castingTime: "1 standard action", components: "V",
                          range: "40 ft.", area: "nonlawful creatures in a 40-ft.-radius spread centered on you", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none or Will negates; see text;", sr: true,
                          summary: "Any nonlawful creature within the area of a dictum spell suffers the following ill effects.",
                          desc: "Any nonlawful creature within the area of a dictum spell suffers the following ill effects.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Dimension Door", school: "Conjuration (Teleportation)", levels: "arcanist 4, bard 4, magus 4, medium 3, mesmerist 4, occultist 4, psychic 4, skald 4, sorcerer 4, spiritualist 4, summoner 3, summoner (unchained) 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V",
                          range: "long (400 ft. + 40 ft./level)", area: "", targets: "you and touched objects or other touched willing creatures",
                          duration: "instantaneous",
                          savingThrow: "none and Will negates (object);", sr: true,
                          summary: "You instantly transfer yourself from your current location to any other spot within range.",
                          desc: "You instantly transfer yourself from your current location to any other spot within range. You always arrive at exactly the spot desired—whether by simply visualizing the area or by stating direction. After using this spell, you can't take any other actions until your next turn. You can bring along objects as long as their weight doesn't exceed your maximum load. You may also bring one additional willing Medium or smaller creature (carrying gear or objects up to its maximum load) or its equivalent per three caster levels. A Large creature counts as two Medium creatures, a Huge creature counts as two Large creatures, and so forth. All creatures to be transported must be in contact with one another, and at least one of those creatures must be in contact with you. If you arrive in a place that is already occupied by a solid body, you and each creature traveling with you take 1d6 points of damage and are shunted to a random open space on a suitable surface within 100 feet of the intended location. If there is no free space within 100 feet, you and each creature traveling with you take an additional 2d6 points of damage and are shunted to a free space within 1,000 feet. If there is no free space within 1,000 feet, you and each creature travelling with you take an additional 4d6 points of damage and the spell simply fails.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Dimensional Anchor", school: "Abjuration", levels: "arcanist 4, cleric 4, inquisitor 3, medium 3, occultist 4, oracle 4, psychic 4, sorcerer 4, spiritualist 4, summoner 3, summoner (unchained) 4, warpriest 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "ray", targets: "",
                          duration: "1 min./level",
                          savingThrow: "none;", sr: true,
                          summary: "A green ray springs from your hand. You must make a ranged touch attack to hit the target.",
                          desc: "A green ray springs from your hand. You must make a ranged touch attack to hit the target. Any creature or object struck by the ray is covered with a shimmering emerald field that completely blocks extradimensional travel. Forms of movement barred by a dimensional anchor include",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Dimensional Lock", school: "Abjuration", levels: "arcanist 8, cleric 8, oracle 8, psychic 8, sorcerer 8, summoner 6, wizard 8",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "20-ft.-radius emanation centered on a point in space", targets: "",
                          duration: "1 day/level",
                          savingThrow: "none;", sr: true,
                          summary: "You create a shimmering emerald barrier that completely blocks extradimensional travel. Forms of movement barred include astral projection ,",
                          desc: "You create a shimmering emerald barrier that completely blocks extradimensional travel. Forms of movement barred include astral projection ,",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Diminish Plants", school: "Transmutation", levels: "druid 3, hunter 3, ranger 3",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "see text", area: "", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "This spell has two versions. Prune Growth : This version of the spell causes normal vegetation within long range (400 feet + 40 feet per level) to shrink to about one-third normal size, becoming…",
                          desc: "This spell has two versions. Prune Growth : This version of the spell causes normal vegetation within long range (400 feet + 40 feet per level) to shrink to about one-third normal size, becoming untangled and less bushy. The affected vegetation appears to have been carefully pruned and trimmed. This version of",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Discern Lies", school: "Divination", levels: "alchemist 4, cleric 4, inquisitor 4, investigator 4, medium 3, oracle 4, paladin 3, psychic 4, warpriest 4, witch 4",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature/level, no two of which can be more than 30 ft. apart",
                          duration: "concentration, up to 1 round/level",
                          savingThrow: "Will negates;", sr: false,
                          summary: "Each round, you concentrate on one target, who must be within range. You know if the target deliberately and knowingly speaks a lie by discerning disturbances in its aura caused by lying.",
                          desc: "Each round, you concentrate on one target, who must be within range. You know if the target deliberately and knowingly speaks a lie by discerning disturbances in its aura caused by lying. The spell does not reveal the truth, uncover unintentional inaccuracies, or necessarily reveal evasions. Each round, you may concentrate on a different target.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Discern Location", school: "Divination", levels: "arcanist 8, cleric 8, oracle 8, psychic 8, shaman 8, sorcerer 8, summoner 6, witch 8, wizard 8",
                          castingTime: "10 minutes", components: "V, S, DF",
                          range: "unlimited", area: "", targets: "one creature or object",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "A discern location spell is among the most powerful means of locating creatures or objects. Nothing short of a",
                          desc: "A discern location spell is among the most powerful means of locating creatures or objects. Nothing short of a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Disguise Other", school: "Illusion (Glamer)", levels: "alchemist 1, antipaladin 1, arcanist 1, bard 1, inquisitor 1, investigator 1, medium 1, mesmerist 1, occultist 1, psychic 1, redmantisassassin 1, skald 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "10 min./level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as disguise self , except you can disguise either yourself or another creature.",
                          desc: "This spell functions as disguise self , except you can disguise either yourself or another creature.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Disguise Self", school: "Illusion (Glamer)", levels: "alchemist 1, antipaladin 1, arcanist 1, bard 1, inquisitor 1, investigator 1, medium 1, mesmerist 1, occultist 1, psychic 1, redmantisassassin 1, skald 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "10 min./level (D)",
                          savingThrow: "None", sr: false,
                          summary: "You make yourself—including clothing, armor, weapons, and equipment—look different. You can seem 1 foot shorter or taller, thin, fat, or in between.",
                          desc: "You make yourself—including clothing, armor, weapons, and equipment—look different. You can seem 1 foot shorter or taller, thin, fat, or in between. You cannot change your creature type (although you can appear as another subtype). Otherwise, the extent of the apparent change is up to you. You could add or obscure a minor feature or look like an entirely different person or gender. The spell does not provide the abilities or mannerisms of the chosen form, nor does it alter the perceived tactile (touch) or audible (sound) properties of you or your equipment. If you use this spell to create a disguise, you get a +10 bonus on the Disguise check. A creature that interacts with the glamer gets a Will save to recognize it as an illusion. Disguise Other",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Disintegrate", school: "Transmutation", levels: "arcanist 6, magus 6, occultist 6, psychic 6, sorcerer 6, spiritualist 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S, M/DF (a lodestone and a pinch of dust)",
                          range: "medium (100 ft. + 10 ft./level)", area: "ray", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Fortitude partial (object);", sr: true,
                          summary: "A thin, green ray springs from your pointing finger. You must make a successful ranged touch attack to hit.",
                          desc: "A thin, green ray springs from your pointing finger. You must make a successful ranged touch attack to hit. Any creature struck by the ray takes 2d6 points of damage per caster level (to a maximum of 40d6). Any creature reduced to 0 or fewer hit points by this spell is entirely disintegrated, leaving behind only a trace of fine dust. A disintegrated creature's equipment is unaffected. When used against an object, the ray simply disintegrates as much as a 10-foot cube of nonliving matter. Thus, the spell disintegrates only part of any very large object or structure targeted. The ray affects even objects constructed entirely of force, such as forceful hand",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Dismissal", school: "Abjuration", levels: "arcanist 5, cleric 4, inquisitor 4, medium 4, occultist 4, oracle 4, psychic 5, shaman 4, sorcerer 5, spiritualist 5, summoner 4, summoner (unchained) 5, warpriest 4, wizard 5",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one extraplanar creature",
                          duration: "instantaneous",
                          savingThrow: "Will negates; see text;", sr: true,
                          summary: "This spell forces an extraplanar creature back to its proper plane if it fails a Will save.",
                          desc: "This spell forces an extraplanar creature back to its proper plane if it fails a Will save. If the spell is successful, the creature is instantly whisked away, but there is a 20% chance of actually sending the subject to a plane other than its own. Homeward Bound",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Dispel Chaos", school: "Abjuration", levels: "cleric 5, inquisitor 5, oracle 5, paladin 4, shaman 5, warpriest 5",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "",
                          duration: "1 round/level or until discharged, whichever comes first",
                          savingThrow: "see text;", sr: false,
                          summary: "This spell functions like dispel evil , except that you are surrounded by constant, blue lawful energy, and the spell affects chaotic creatures and spells rather than evil ones.",
                          desc: "This spell functions like dispel evil , except that you are surrounded by constant, blue lawful energy, and the spell affects chaotic creatures and spells rather than evil ones.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Dispel Evil", school: "Abjuration", levels: "cleric 5, inquisitor 5, oracle 5, paladin 4, shaman 5, warpriest 5",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "",
                          duration: "1 round/level or until discharged, whichever comes first",
                          savingThrow: "see text;", sr: false,
                          summary: "Shimmering, white holy energy surrounds you. This energy has three effects. First, you gain a +4 deflection bonus to AC against attacks by evil creatures.",
                          desc: "Shimmering, white holy energy surrounds you. This energy has three effects. First, you gain a +4 deflection bonus to AC against attacks by evil creatures. Second, on making a successful melee touch attack against an evil creature from another plane, you can choose to drive that creature back to its home plane. The creature can negate the effects with a successful Will save (spell resistance applies). This use discharges and ends the spell. Third, with a touch you can automatically dispel any one enchantment spell cast by an evil creature or any one evil spell. Spells that can't be dispelled by",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Dispel Good", school: "Abjuration", levels: "antipaladin 4, cleric 5, inquisitor 5, oracle 5, shaman 5, warpriest 5",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "",
                          duration: "1 round/level or until discharged, whichever comes first",
                          savingThrow: "see text;", sr: false,
                          summary: "This spell functions like dispel evil , except that you are surrounded by dark, wavering unholy energy, and the spell affects good creatures and spells rather than evil ones.",
                          desc: "This spell functions like dispel evil , except that you are surrounded by dark, wavering unholy energy, and the spell affects good creatures and spells rather than evil ones.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Dispel Law", school: "Abjuration", levels: "antipaladin 4, cleric 5, inquisitor 5, oracle 5, shaman 5, warpriest 5",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "",
                          duration: "1 round/level or until discharged, whichever comes first",
                          savingThrow: "see text;", sr: false,
                          summary: "This spell functions like dispel evil , except that you are surrounded by flickering, yellow chaotic energy, and the spell affects lawful creatures and spells rather than evil ones.",
                          desc: "This spell functions like dispel evil , except that you are surrounded by flickering, yellow chaotic energy, and the spell affects lawful creatures and spells rather than evil ones.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Dispel Magic", school: "Abjuration", levels: "antipaladin 3, arcanist 3, bard 3, cleric 3, druid 4, hunter 4, inquisitor 3, magus 3, medium 3, mesmerist 3, occultist 3, oracle 3, paladin 3, psychic 3, shaman 3, skald 3, sorcerer 3, spiritualist 3, summoner 3, summoner (unchained) 3, warpriest 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "You can use dispel magic to end one ongoing spell that has been cast on a creature or object, to temporarily suppress the magical abilities of a magic item, or to counter another spellcaster's spell.",
                          desc: "You can use dispel magic to end one ongoing spell that has been cast on a creature or object, to temporarily suppress the magical abilities of a magic item, or to counter another spellcaster's spell. A dispelled spell ends as if its duration had expired. Some spells, as detailed in their descriptions, can't be defeated by",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Dispel Magic, Greater", school: "Abjuration", levels: "antipaladin 3, arcanist 3, bard 3, cleric 3, druid 4, hunter 4, inquisitor 3, magus 3, medium 3, mesmerist 3, occultist 3, oracle 3, paladin 3, psychic 3, shaman 3, skald 3, sorcerer 3, spiritualist 3, summoner 3, summoner (unchained) 3, warpriest 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like dispel magic , except that it can end more than one spell on a target and it can be used to target multiple creatures.",
                          desc: "This spell functions like dispel magic , except that it can end more than one spell on a target and it can be used to target multiple creatures.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Displacement", school: "Illusion (Glamer)", levels: "alchemist 3, arcanist 3, bard 3, investigator 3, magus 3, medium 3, mesmerist 3, occultist 3, psychic 3, redmantisassassin 3, skald 3, sorcerer 3, spiritualist 3, summoner 3, summoner (unchained) 3, wizard 3",
                          castingTime: "1 standard action", components: "V, M (a small loop of leather)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 round/level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The subject of this spell appears to be about 2 feet away from its true location. The creature benefits from a 50% miss chance as if it had total concealment.",
                          desc: "The subject of this spell appears to be about 2 feet away from its true location. The creature benefits from a 50% miss chance as if it had total concealment. Unlike actual total concealment, displacement does not prevent enemies from targeting the creature normally.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Disrupt Undead", school: "Necromancy", levels: "arcanist 0, inquisitor 0, magus 0, sorcerer 0, wizard 0",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "ray", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: true,
                          summary: "You direct a ray of positive energy. You must make a ranged touch attack to hit, and if the ray hits an undead creature, it deals 1d6 points of damage to it.",
                          desc: "You direct a ray of positive energy. You must make a ranged touch attack to hit, and if the ray hits an undead creature, it deals 1d6 points of damage to it.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Disrupting Weapon", school: "Transmutation", levels: "cleric 5, inquisitor 5, oracle 5, spiritualist 5, warpriest 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "one melee weapon",
                          duration: "1 round/level",
                          savingThrow: "Will negates (harmless, object); see text;", sr: true,
                          summary: "This spell makes a melee weapon deadly to undead. Any undead creature with HD equal to or less than your caster level must succeed on a Will save or be destroyed utterly if struck in combat with this…",
                          desc: "This spell makes a melee weapon deadly to undead. Any undead creature with HD equal to or less than your caster level must succeed on a Will save or be destroyed utterly if struck in combat with this weapon. Spell resistance does not apply against the destruction effect.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Divination", school: "Divination", levels: "cleric 4, inquisitor 4, medium 3, oracle 4, psychic 4, sahirafiyun 4, shaman 4, spiritualist 4, warpriest 4, witch 4",
                          castingTime: "10 minutes", components: "V, S, M (incense and an appropriate offering worth 25 gp)",
                          range: "personal", area: "", targets: "you",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "Similar to augury but more powerful, a",
                          desc: "Similar to augury but more powerful, a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Divine Favor", school: "Evocation", levels: "cleric 1, inquisitor 1, oracle 1, paladin 1, warpriest 1",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute",
                          savingThrow: "None", sr: false,
                          summary: "Calling upon the strength and wisdom of a deity, you gain a +1 luck bonus on attack and weapon damage rolls for every three caster levels you have (at least +1, maximum +3).",
                          desc: "Calling upon the strength and wisdom of a deity, you gain a +1 luck bonus on attack and weapon damage rolls for every three caster levels you have (at least +1, maximum +3). The bonus doesn't apply to spell damage.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Divine Power", school: "Evocation", levels: "cleric 4, inquisitor 4, oracle 4, shaman 4, warpriest 4",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "Calling upon the divine power of your patron, you imbue yourself with strength and skill in combat.",
                          desc: "Calling upon the divine power of your patron, you imbue yourself with strength and skill in combat. You gain a +1 luck bonus on attack rolls, weapon damage rolls, Strength checks, and Strength-based skill checks for every three caster levels you have (maximum +6). You also gain 1 temporary hit point per caster level. Whenever you make a full-attack action, you can make an additional attack at your full base attack bonus, plus any appropriate modifiers. This additional attack is not cumulative with similar effects, such as haste or weapons with the",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Dominate Animal", school: "Enchantment (Compulsion)", levels: "druid 3, hunter 3, mesmerist 3, psychic 4, shaman 3",
                          castingTime: "1 round", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one animal",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell allows you to enchant the targeted animal and direct it with simple commands such as “Attack,” “Run,” and “Fetch.” Suicidal or self-destructive commands (including an order to attack a…",
                          desc: "This spell allows you to enchant the targeted animal and direct it with simple commands such as “Attack,” “Run,” and “Fetch.” Suicidal or self-destructive commands (including an order to attack a creature two or more size categories larger than the dominated animal) are simply ignored. Dominate animal establishes a mental link between you and the subject creature. The animal can be directed by silent mental command as long as it remains in range. You need not see the creature to control it. You do not receive direct sensory input from the creature, but you know what it is experiencing. Because you are directing the animal with your own intelligence, it may be able to undertake actions normally beyond its own comprehension. You need not concentrate exclusively on controlling the creature unless you are trying to direct it to do something it normally couldn't do. Changing your instructions or giving a dominated creature a new command is the equivalent of redirecting a spell, so it is a move action.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Dominate Monster", school: "Enchantment (Compulsion)", levels: "arcanist 9, psychic 9, sorcerer 9, summoner 6, witch 9, wizard 9",
                          castingTime: "1 round", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 day/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions like dominate person , except that the spell is not restricted by creature type.",
                          desc: "This spell functions like dominate person , except that the spell is not restricted by creature type.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Dominate Person", school: "Enchantment (Compulsion)", levels: "arcanist 5, bard 4, mesmerist 4, occultist 5, psychic 5, shaman 5, skald 4, sorcerer 5, spiritualist 5, witch 5, wizard 5",
                          castingTime: "1 round", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one humanoid",
                          duration: "1 day/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You can control the actions of any humanoid creature through a telepathic link that you establish with the subject's mind.",
                          desc: "You can control the actions of any humanoid creature through a telepathic link that you establish with the subject's mind. If you and the subject have a common language, you can generally force the subject to perform as you desire, within the limits of its abilities. If no common language exists, you can communicate only basic commands, such as “Come here,” “Go there,” “Fight,” and “Stand still.” You know what the subject is experiencing, but you do not receive direct sensory input from it, nor can it communicate with you telepathically. Once you have given a dominated creature a command, it continues to attempt to carry out that command to the exclusion of all other activities except those necessary for day-to-day survival (such as sleeping, eating, and so forth). Because of this limited range of activity, a Sense Motive check against DC 15 (rather than DC 25) can determine that the subject's behavior is being influenced by an enchantment effect (see the Sense Motive skill description). Changing your orders or giving a dominated creature a new command is a move action. By concentrating fully on the spell (a standard action), you can receive full sensory input as interpreted by the mind of the subject, though it still can't communicate with you. You can't actually see through the subject's eyes, so it's not as good as being there yourself, but you still get a good idea of what's going on. Subjects resist this control, and any subject forced to take actions against its nature receives a new saving throw with a +2 bonus. Obviously self-destructive orders are not carried out. Once control is established, the range at which it can be exercised is unlimited, as long as you and the subject are on the same plane. You need not see the subject to control it. If you don't spend at least 1 round concentrating on the spell each day, the subject receives a new saving throw to throw off the domination.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Doom", school: "Necromancy", levels: "antipaladin 1, cleric 1, inquisitor 1, mesmerist 1, oracle 1, shaman 1, spiritualist 1, warpriest 1",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one living creature",
                          duration: "1 min./level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell fills a single subject with a feeling of horrible dread that causes it to become shaken.",
                          desc: "This spell fills a single subject with a feeling of horrible dread that causes it to become shaken.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Dream", school: "Illusion (Phantasm)", levels: "alchemist 5, arcanist 5, bard 5, investigator 5, medium 3, mesmerist 4, psychic 4, redmantisassassin 3, skald 5, sorcerer 5, spiritualist 5, wizard 5",
                          castingTime: "1 minute", components: "V, S",
                          range: "unlimited", area: "", targets: "one living creature touched",
                          duration: "see text",
                          savingThrow: "none;", sr: true,
                          summary: "You, or a messenger you touch, send a message to others in the form of a dream.",
                          desc: "You, or a messenger you touch, send a message to others in the form of a dream. At the beginning of the spell, you must name the recipient or identify him or her by some title that leaves no doubt as to identity. The messenger then enters a trance, appears in the intended recipient's dream, and delivers the message. The message can be of any length, and the recipient remembers it perfectly upon waking. The communication is one-way. The recipient cannot ask questions or offer information, nor can the messenger gain any information by observing the dreams of the recipient. Once the message is delivered, the messenger's mind returns instantly to its body. The duration of the spell is the time required for the messenger to enter the recipient's dream and deliver the message. If the recipient is awake when the spell begins, the messenger can choose to wake up (ending the spell) or remain in the trance. The messenger can remain in the trance until the recipient goes to sleep, then enter the recipient's dream and deliver the message as normal. A messenger that is disturbed during the trance comes awake, ending the spell. Creatures who don't sleep or don't dream cannot be contacted by this spell. The messenger is unaware of its own surroundings or of the activities around it while in the trance. It is defenseless both physically and mentally (always failing any saving throw) while in the trance.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Eagle's Splendor", school: "Transmutation", levels: "alchemist 2, antipaladin 2, arcanist 2, bard 2, bloodrager 2, cleric 2, investigator 2, medium 2, mesmerist 2, oracle 2, paladin 2, psychic 2, redmantisassassin 2, shaman 2, skald 2, sorcerer 2, summoner 2, summoner (unchained) 2, warpriest 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (feathers or droppings from an eagle)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 min./level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The transmuted creature becomes more poised, articulate, and personally forceful.",
                          desc: "The transmuted creature becomes more poised, articulate, and personally forceful. The spell grants a +4 enhancement bonus to Charisma, adding the usual benefits to Charisma-based skill checks and other uses of the Charisma modifier. Bards, paladins, and sorcerers (and other spellcasters who rely on Charisma) affected by this spell do not gain any additional bonus spells for the increased Charisma, but the save DCs for spells they cast while under this spell's effect do increase.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Eagle's Splendor, Mass", school: "Transmutation", levels: "arcanist 6, bard 6, cleric 6, oracle 6, psychic 6, shaman 6, skald 6, sorcerer 6, summoner 4, summoner (unchained) 6, warpriest 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S, M/DF (feathers or droppings from an eagle)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature/level, no two of which can be more than 30 ft. apart",
                          duration: "1 min./level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions like eagle's splendor , except that it affects multiple creatures.",
                          desc: "This spell functions like eagle's splendor , except that it affects multiple creatures.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Earthquake", school: "Evocation", levels: "cleric 8, druid 8, oracle 8, psychic 8, shaman 8",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "long (400 ft. + 40 ft./level)", area: "80-ft.-radius spread (S)", targets: "",
                          duration: "1 round",
                          savingThrow: "see text;", sr: false,
                          summary: "When you cast earthquake , an intense but highly localized tremor rips the ground.",
                          desc: "When you cast earthquake , an intense but highly localized tremor rips the ground. The powerful shockwave created by this spell knocks creatures down, collapses structures, opens cracks in the ground, and more. The effect lasts for 1 round, during which time creatures on the ground can't move or attack. A spellcaster on the ground must make a Concentration check (DC 20 + spell level) or lose any spell he or she tries to cast. The earthquake affects all terrain, vegetation, structures, and creatures in the area. The specific effect of an",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Elemental Body I", school: "Transmutation (Polymorph)", levels: "alchemist 4, arcanist 4, bloodrager 4, investigator 4, magus 4, redmantisassassin 4, sorcerer 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (the element you plan to assume)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 min./level",
                          savingThrow: "None", sr: false,
                          summary: "When you cast this spell, you can assume the form of a Small air, earth, fire, or water elemental. The abilities you gain depend upon the type of elemental into which you change.",
                          desc: "When you cast this spell, you can assume the form of a Small air, earth, fire, or water elemental. The abilities you gain depend upon the type of elemental into which you change. Elemental abilities based on size, such as burn, vortex, and whirlwind, use the size of the elemental you transform into to determine their effect. Air elemental : If the form you take is that of a Small air elemental, you gain a +2 size bonus to your Dexterity and a +2 natural armor bonus. You also gain fly 60 feet (perfect), darkvision 60 feet, and the ability to create a whirlwind.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Elemental Body II", school: "Transmutation (Polymorph)", levels: "alchemist 4, arcanist 4, bloodrager 4, investigator 4, magus 4, redmantisassassin 4, sorcerer 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (the element you plan to assume)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 min./level",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as elemental body I , except that it also allows you to assume the form of a Medium air, earth, fire, or water elemental. The abilities you gain depend upon the elemental.",
                          desc: "This spell functions as elemental body I , except that it also allows you to assume the form of a Medium air, earth, fire, or water elemental. The abilities you gain depend upon the elemental.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Elemental Body III", school: "Transmutation (Polymorph)", levels: "alchemist 4, arcanist 4, bloodrager 4, investigator 4, magus 4, redmantisassassin 4, sorcerer 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (the element you plan to assume)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 min./level",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as elemental body II , except that it also allows you to assume the form of a Large air, earth, fire, or water elemental.",
                          desc: "This spell functions as elemental body II , except that it also allows you to assume the form of a Large air, earth, fire, or water elemental. The abilities you gain depend upon the type of elemental into which you change. You are also immune to bleed damage, critical hits, and sneak attacks while in elemental form.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Elemental Body IV", school: "Transmutation (Polymorph)", levels: "alchemist 4, arcanist 4, bloodrager 4, investigator 4, magus 4, redmantisassassin 4, sorcerer 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (the element you plan to assume)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 min./level",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as elemental body III , except that it also allows you to assume the form of a Huge air, earth, fire, or water elemental.",
                          desc: "This spell functions as elemental body III , except that it also allows you to assume the form of a Huge air, earth, fire, or water elemental. The abilities you gain depend upon the type of elemental into which you change. You are also immune to bleed damage, critical hits, and sneak attacks while in elemental form and gain DR 5/—.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Elemental Swarm", school: "Conjuration (Summoning)", levels: "druid 9, shaman 9, witch 9",
                          castingTime: "10 minutes", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "two or more summoned creatures, no two of which can be more than 30 ft. apart", targets: "",
                          duration: "10 min./level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell opens a portal to an Elemental Plane and summons elementals from it. A druid can choose any plane (Air, Earth, Fire, or Water); a cleric opens a portal to the plane matching his domain.",
                          desc: "This spell opens a portal to an Elemental Plane and summons elementals from it. A druid can choose any plane (Air, Earth, Fire, or Water); a cleric opens a portal to the plane matching his domain. When the spell is complete, 2d4 Large elementals appear. Ten minutes later, 1d4 Huge elementals appear. Ten minutes after that, one greater elemental appears. Each elemental has maximum hit points per HD. Once these creatures appear, they serve you for the duration of the spell. The elementals obey you explicitly and never attack you, even if someone else manages to gain control over them. You do not need to concentrate to maintain control over the elementals. You can dismiss them singly or in groups at any time. When you use a summoning spell to summon an air, earth, fire, or water creature, it is a spell of that type.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Endure Elements", school: "Abjuration", levels: "adept 1, alchemist 1, arcanist 1, bloodrager 1, cleric 1, druid 1, hunter 1, investigator 1, oracle 1, paladin 1, psychic 1, ranger 1, shaman 1, sorcerer 1, spiritualist 1, summoner 1, summoner (unchained) 1, warpriest 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "24 hours",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "A creature protected by endure elements suffers no harm from being in a hot or cold environment.",
                          desc: "A creature protected by endure elements suffers no harm from being in a hot or cold environment. It can exist comfortably in conditions between –50 and 140 degrees Fahrenheit without having to make Fortitude saves. The creature's equipment is likewise protected.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Endure Elements, Communal", school: "Abjuration", levels: "adept 1, alchemist 1, arcanist 1, bloodrager 1, cleric 1, druid 1, hunter 1, investigator 1, oracle 1, paladin 1, psychic 1, ranger 1, shaman 1, sorcerer 1, spiritualist 1, summoner 1, summoner (unchained) 1, warpriest 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "24 hours",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions like endure elements , except you divide the duration in 1-hour increments among the creatures touched.",
                          desc: "This spell functions like endure elements , except you divide the duration in 1-hour increments among the creatures touched.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Energy Drain", school: "Necromancy", levels: "arcanist 9, cleric 9, oracle 9, shaman 9, sorcerer 9, wizard 9",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "ray of negative energy", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Fortitude partial; see text for enervation;", sr: true,
                          summary: "This spell functions like enervation , except that the creature struck gains 2d4 temporary negative levels.",
                          desc: "This spell functions like enervation , except that the creature struck gains 2d4 temporary negative levels. Twenty-four hours after gaining them, the subject must make a Fortitude saving throw (DC = energy drain spell's save DC) for each negative level. If the save succeeds, that negative level is removed. If it fails, that negative level becomes permanent. An undead creature struck by the ray gains 2d4 × 5 temporary hit points for 1 hour.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Enervation", school: "Necromancy", levels: "arcanist 4, bloodrager 4, mesmerist 4, sorcerer 4, spiritualist 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "ray of negative energy", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: true,
                          summary: "You point your finger and fire a black ray of negative energy that suppresses the life force of any living creature it strikes. You must make a ranged touch attack to hit.",
                          desc: "You point your finger and fire a black ray of negative energy that suppresses the life force of any living creature it strikes. You must make a ranged touch attack to hit. If you hit, the subject gains 1d4 temporary negative levels (see Special Abilities). Negative levels stack. Assuming the subject survives, it regains lost levels after a number of hours equal to your caster level (maximum 15 hours). Usually, negative levels have a chance of becoming permanent, but the negative levels from enervation don't last long enough to do so. An undead creature struck by the ray gains 1d4 × 5 temporary hit points for 1 hour.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Enlarge Person", school: "Transmutation", levels: "alchemist 1, arcanist 1, bloodrager 1, investigator 1, magus 1, medium 1, occultist 1, psychic 1, redmantisassassin 1, sorcerer 1, summoner 1, summoner (unchained) 1, witch 1, wizard 1",
                          castingTime: "1 round", components: "V, S, M (powdered iron)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one humanoid creature",
                          duration: "1 min./level (D)",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "This spell causes instant growth of a humanoid creature, doubling its height and multiplying its weight by 8. This increase changes the creature's size category to the next larger one.",
                          desc: "This spell causes instant growth of a humanoid creature, doubling its height and multiplying its weight by 8. This increase changes the creature's size category to the next larger one. The target gains a +2 size bonus to Strength, a –2 size penalty to Dexterity (to a minimum of 1), and a –1 penalty on attack rolls and AC due to its increased size. A humanoid creature whose size increases to Large has a space of 10 feet and a natural reach of 10 feet. This spell does not change the target's speed. If insufficient room is available for the desired growth, the creature attains the maximum possible size and may make a Strength check (using its increased Strength) to burst any enclosures in the process. If it fails, it is constrained without harm by the materials enclosing it—the spell cannot be used to crush a creature by increasing its size. All equipment worn or carried by a creature is similarly enlarged by the spell. Melee weapons affected by this spell deal more damage (see Table: Tiny and Large Weapon Damage ). Other magical properties are not affected by this spell. Any enlarged item that leaves an enlarged creature's possession (including a projectile or thrown weapon) instantly returns to its normal size. This means that thrown and projectile weapons deal their normal damage. Magical properties of enlarged items are not increased by this spell. Multiple magical effects that increase size do not stack.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Enlarge Person, Mass", school: "Transmutation", levels: "alchemist 1, arcanist 1, bloodrager 1, investigator 1, magus 1, medium 1, occultist 1, psychic 1, redmantisassassin 1, sorcerer 1, summoner 1, summoner (unchained) 1, witch 1, wizard 1",
                          castingTime: "1 round", components: "V, S, M (powdered iron)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one humanoid creature",
                          duration: "1 min./level (D)",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "This spell functions like enlarge person , except that it affects multiple creatures.",
                          desc: "This spell functions like enlarge person , except that it affects multiple creatures.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Entangle", school: "Transmutation", levels: "druid 1, hunter 1, ranger 1, shaman 1",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "long (400 ft. + 40 ft./level)", area: "plants in a 40-ft.-radius spread", targets: "",
                          duration: "1 min./level (D)",
                          savingThrow: "Reflex partial; see text;", sr: false,
                          summary: "This spell causes tall grass, weeds, and other plants to wrap around creatures in the area of effect or those that enter the area. Creatures that fail their save gain the entangled condition.",
                          desc: "This spell causes tall grass, weeds, and other plants to wrap around creatures in the area of effect or those that enter the area. Creatures that fail their save gain the entangled condition. Creatures that make their save can move as normal, but those that remain in the area must save again at the end of your turn. Creatures that move into the area must save immediately. Those that fail must end their movement and gain the entangled condition. Entangled creatures can attempt to break free as a move action, making a Strength or Escape Artist check. The DC for this check is equal to the DC of the spell. The entire area of effect is considered difficult terrain while the effect lasts. If the plants in the area are covered in thorns, those in the area take 1 point of damage each time they fail a save against the entangle or fail a check made to break free. Other effects, depending on the local plants, might be possible at GM discretion.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Enthrall", school: "Enchantment (Charm)", levels: "bard 2, cleric 2, inquisitor 2, mesmerist 2, oracle 2, psychic 2, shaman 2, skald 2, warpriest 2, witch 2",
                          castingTime: "1 round", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "any number of creatures",
                          duration: "1 hour or less",
                          savingThrow: "Will negates; see text;", sr: true,
                          summary: "If you have the attention of a group of creatures, you can use this spell to hold them enthralled. To cast the spell, you must speak or sing without interruption for 1 full round.",
                          desc: "If you have the attention of a group of creatures, you can use this spell to hold them enthralled. To cast the spell, you must speak or sing without interruption for 1 full round. Thereafter, those affected give you their undivided attention, ignoring their surroundings. They are considered to have an attitude of friendly while under the effect of the spell. Any potentially affected creature of a race or religion unfriendly to yours gets a +4 bonus on the saving throw. A target with 4 or more HD or with a Wisdom score of 16 or higher remains aware of its surroundings and has an attitude of indifferent. It gains a new saving throw if it witnesses actions that it opposes. The effect lasts as long as you speak or sing, to a maximum of 1 hour. Those enthralled by your words take no action while you speak or sing and for 1d3 rounds thereafter while they discuss the topic or performance. Those entering the area during the performance must also successfully save or become enthralled. The speech ends (but the 1d3-round delay still applies) if you lose concentration or do anything other than speak or sing. If those not enthralled have unfriendly or hostile attitudes toward you, they can collectively make a Charisma check to try to end the spell by jeering and heckling. For this check, use the Charisma bonus of the creature with the highest Charisma in the group; others may make Charisma checks to assist. The heckling ends the spell if this check result beats your Charisma check result. Only one such challenge is allowed per use of the spell. If any member of the audience is attacked or subjected to some other overtly hostile act, the spell ends and the previously enthralled members become immediately unfriendly toward you. Each creature with 4 or more HD or with a Wisdom score of 16 or higher becomes hostile.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Entropic Shield", school: "Abjuration", levels: "cleric 1, oracle 1, psychic 1, warpriest 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 min./level (D)",
                          savingThrow: "None", sr: false,
                          summary: "A magical field appears around you, glowing with a chaotic blast of multicolored hues. This field deflects incoming arrows, rays, and other ranged attacks.",
                          desc: "A magical field appears around you, glowing with a chaotic blast of multicolored hues. This field deflects incoming arrows, rays, and other ranged attacks. Each ranged attack directed at you for which the attacker must make an attack roll has a 20% miss chance (similar to the effects of concealment). Other attacks that simply work at a distance are not affected.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Erase", school: "Transmutation", levels: "arcanist 1, bard 1, occultist 1, psychic 1, redmantisassassin 1, skald 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one scroll or two pages",
                          duration: "instantaneous",
                          savingThrow: "see text;", sr: false,
                          summary: "Erase removes writings of either magical or mundane nature from a scroll or from one or two pages of paper, parchment, or similar surfaces. With this spell, you can remove explosive runes , a",
                          desc: "Erase removes writings of either magical or mundane nature from a scroll or from one or two pages of paper, parchment, or similar surfaces. With this spell, you can remove explosive runes , a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Escape Alarm", school: "Abjuration", levels: "arcanist 1, bard 1, hunter 1, inquisitor 1, occultist 1, psychic 1, ranger 1, skald 1, sorcerer 1, spiritualist 1, summoner 1, summoner (unchained) 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, F/DF (a tiny bell and a piece of very fine silver wire)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "20-ft.-radius emanation centered on a point in space", targets: "",
                          duration: "2 hours/level",
                          savingThrow: "none;", sr: false,
                          summary: "You place a ward on an area that notifies you when a creature exits it. This functions as alarm , except as noted.",
                          desc: "You place a ward on an area that notifies you when a creature exits it. This functions as alarm , except as noted. It alerts you when a creature leaves, rather than enters, the area, and you can’t select a password to bypass its effects. Instead, when you place an",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Ethereal Jaunt", school: "Transmutation", levels: "arcanist 7, cleric 7, oracle 7, psychic 6, sorcerer 7, summoner 5, summoner (unchained) 6, wizard 7",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "You become ethereal, along with your equipment. For the duration of the spell, you are in the Ethereal Plane, which overlaps the Material Plane.",
                          desc: "You become ethereal, along with your equipment. For the duration of the spell, you are in the Ethereal Plane, which overlaps the Material Plane. When the spell expires, you return to material existence. An ethereal creature is invisible, insubstantial, and capable of moving in any direction, even up or down, albeit at half normal speed. As an insubstantial creature, you can move through solid objects, including living creatures. An ethereal creature can see and hear on the Material Plane, but everything looks gray and ephemeral. Sight and hearing onto the Material Plane are limited to 60 feet. Force effects and abjurations affect an ethereal creature normally. Their effects extend onto the Ethereal Plane from the Material Plane, but not vice versa. An ethereal creature can't attack material creatures, and spells you cast while ethereal affect only other ethereal things. Certain material creatures or objects have attacks or effects that work on the Ethereal Plane. Treat other ethereal creatures and ethereal objects as if they were material. If you end the spell and become material while inside a material object (such as a solid wall), you are shunted off to the nearest open space and take 1d6 points of damage per 5 feet that you so travel.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Etherealness", school: "Transmutation", levels: "arcanist 9, cleric 9, oracle 9, psychic 8, shaman 9, sorcerer 9, wizard 9",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch; see text", area: "", targets: "you and one other touched creature per three levels",
                          duration: "1 min./level (D)",
                          savingThrow: "None", sr: true,
                          summary: "This spell functions like ethereal jaunt , except that you and other willing creatures joined by linked hands (along with their equipment) become ethereal.",
                          desc: "This spell functions like ethereal jaunt , except that you and other willing creatures joined by linked hands (along with their equipment) become ethereal. Besides yourself, you can bring one creature per three caster levels to the Ethereal Plane. Once ethereal, the subjects need not stay together. When the spell expires, all affected creatures on the Ethereal Plane return to material existence.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Expeditious Retreat", school: "Transmutation", levels: "alchemist 1, arcanist 1, bard 1, bloodrager 1, inquisitor 1, investigator 1, magus 1, medium 1, mesmerist 1, occultist 1, psychic 1, redmantisassassin 1, skald 1, sorcerer 1, spiritualist 1, summoner 1, summoner (unchained) 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 min./level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This spell increases your base land speed by 30 feet. This adjustment is treated as an enhancement bonus. There is no effect on other modes of movement, such as burrow, climb, fly, or swim.",
                          desc: "This spell increases your base land speed by 30 feet. This adjustment is treated as an enhancement bonus. There is no effect on other modes of movement, such as burrow, climb, fly, or swim. As with any effect that increases your speed, this spell affects your jumping distance (see the Acrobatics skill).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await seedSpellsB()
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