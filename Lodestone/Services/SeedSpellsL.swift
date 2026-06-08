import Foundation

extension SeedDataBuilder {
    func seedSpellsL() async throws {
        try await db.insertSpell(
        .make("Haunting Mists", school: "Illusion (Figment)", levels: "arcanist 2, bard 2, mesmerist 2, psychic 2, redmantisassassin 2, skald 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "20 ft.", area: "cloud spreads in 20-ft. radius, 20 ft. high", targets: "",
                          duration: "1 minute/level (D)",
                          savingThrow: "Will partial (see text);", sr: false,
                          summary: "An illusion of misty vapor inhabited by shadowy shapes arises around you. It is stationary. The illusory mist obscures all sight, including darkvision, beyond 5 feet.",
                          desc: "An illusion of misty vapor inhabited by shadowy shapes arises around you. It is stationary. The illusory mist obscures all sight, including darkvision, beyond 5 feet. A creature 5 feet away has concealment (attacks have a 20% miss chance). Creatures farther away have total concealment (50% miss chance, and the attacker cannot use sight to locate the target). All creatures within the mist must save or take 1d2 points of Wisdom damage and gain the shaken condition. The shaken condition lasts as long as the creature remains in the mist.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hex Ward", school: "Abjuration", levels: "inquisitor 1, occultist 1, shaman 1, witch 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 hour/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You give the target a +4 resistance bonus on saving throws against witch hexes.",
                          desc: "You give the target a +4 resistance bonus on saving throws against witch hexes.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Holy Ice", school: "Transmutation", levels: "cleric 5, oracle 5, warpriest 5",
                          castingTime: "1 standard action", components: "V, S, M (a flask of holy water or 5 pounds of powdered silver worth 25 gp)",
                          range: "medium (100 ft. + 10 ft./level)", area: "wall of ice or flying ice javelins (see text)", targets: "",
                          duration: "1 minute/level, instantaneous, or until expended (see text)",
                          savingThrow: "Reflex negates or none (see text);", sr: true,
                          summary: "This spell creates a large mass of frozen holy water that can be used for one of two effects. Holy Ice Wall : This functions like",
                          desc: "This spell creates a large mass of frozen holy water that can be used for one of two effects. Holy Ice Wall : This functions like",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Holy Shield", school: "Abjuration", levels: "paladin 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "10 minutes/level",
                          savingThrow: "none;", sr: false,
                          summary: "You gain the ability to magically project the defense of your shield to protect another creature at a distance. As a swift action, you designate one target within 30 feet.",
                          desc: "You gain the ability to magically project the defense of your shield to protect another creature at a distance. As a swift action, you designate one target within 30 feet. The target gains your shield’s shield bonus and enhancement bonus to Armor Class until your next turn; you gain no benefit from the shield’s shield bonus or enhancement bonus while using this spell and cannot use any of the shield’s other properties or abilities (such as magical abilities, making a shield bash, or providing cover with a tower shield). As a swift action, you may move the protection to another target (including yourself); if you move the protection to yourself, you may use any of the shield’s properties or abilities as normal. If the shielded creature exceeds the 30-foot range, your shield’s protection automatically reverts to you. Any circumstance that would make you lose your shield bonus (such as an enemy breaking the shield, you dropping the shield, or you becoming helpless or unconscious) means the protected creature loses the shield’s benefit.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Horn of Pursuit", school: "Evocation", levels: "bard 1, hunter 1, inquisitor 1, paladin 1, ranger 1, skald 1",
                          castingTime: "1 standard action", components: "S",
                          range: "personal", area: "3 peals of a horn", targets: "",
                          duration: "1 round",
                          savingThrow: "none;", sr: false,
                          summary: "You create the sound of a large hunting horn, blowing up to three notes as loud as a roaring dragon. These notes can be heard up to 2 miles away in typical outdoor conditions.",
                          desc: "You create the sound of a large hunting horn, blowing up to three notes as loud as a roaring dragon. These notes can be heard up to 2 miles away in typical outdoor conditions. You can make these sounds at any point during the spell’s duration as a free action, and each sounding can be short or long, allowing you to send very simple coded messages.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Howling Agony", school: "Necromancy", levels: "arcanist 3, bloodrager 3, inquisitor 2, mesmerist 2, psychic 2, sorcerer 3, spiritualist 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a needle and a dried eyeball)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature/level, no two of which can be more than 30 ft. apart",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "You send wracking pains through the targets’ bodies. Because of the pain, affected creatures take a –2 penalty to AC, attacks, melee damage rolls, and Reflex saving throws, and must succeed at a…",
                          desc: "You send wracking pains through the targets’ bodies. Because of the pain, affected creatures take a –2 penalty to AC, attacks, melee damage rolls, and Reflex saving throws, and must succeed at a concentration check (DC equal to the DC of this spell) to cast spells. However, if an affected creature spends a move action screaming as loudly as possible, it can act without any other penalties for the remainder of its turn. “Screaming,” for the purposes of this spell, includes any vocalization of pain or its telepathic equivalent; creatures that cannot scream (such as creatures without the natural ability to communicate or vocalize) suffer the full effect of the spell.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ice Body", school: "Transmutation", levels: "arcanist 7, shaman 7, sorcerer 7, witch 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "Your form transmutes into living ice, granting you several abilities. You gain the cold subtype and damage reduction 5/magic.",
                          desc: "Your form transmutes into living ice, granting you several abilities. You gain the cold subtype and damage reduction 5/magic. You are immune to ability score damage, blindness, critical hits, deafness, disease, drowning, electricity, poison, stunning, and all spells or attacks that affect your physiology or respiration, because you have no physiology or respiration while this spell is in effect. You cannot drink (and thus can’t use potions) or play wind instruments. Your unarmed attack deals damage equal to a club sized for you (1d4 for Small characters or 1d6 for Medium characters) plus 1 point of cold damage, and you are considered armed when making unarmed attacks. You may burrow through nonmagical ice or snow at your base speed as easily as a fish swims through water. You can move through magical ice and snow if you succeed on a caster level check (1d20 + caster level) against a DC of 11 + the caster level of the effect; you automatically succeed on caster level checks against effects that you created. Your passage through snow and ice in this fashion leaves behind no tunnel or hole.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ice Crystal Teleport", school: "Conjuration (Teleportation)", levels: "arcanist 6, sorcerer 6, summoner 5, summoner (unchained) 6, witch 6, wizard 6",
                          castingTime: "1 standard action", components: "V",
                          range: "long (400 ft. + 40 ft./level)", area: "", targets: "one creature",
                          duration: "1d4 rounds and instantaneous",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions as teleport , except you use it to teleport yourself or one other creature to a safe location you specify (the target can bring along objects as long as their weight doesn’t…",
                          desc: "This spell functions as teleport , except you use it to teleport yourself or one other creature to a safe location you specify (the target can bring along objects as long as their weight doesn’t exceed the target’s heavy load). You can only send the target to a location with which you are very familiar. The target is first trapped in ice (hardness 0, 3 hit points per inch of thickness, 1 inch thick per caster level) for 1d4 rounds, during which time it is paralyzed, aware but unable to take any physical actions, and begins to fade away as the teleportation aspect takes effect. At the end of the 1d4 rounds, the target teleports to the specified location, and the ice’s hit points drop to 0 and it quickly melts away. If the ice is destroyed before the target teleports, the spell ends and the teleport doesn’t occur.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Icicle Dagger", school: "Conjuration (Creation)", levels: "arcanist 1, bloodrager 1, occultist 1, sorcerer 1, summoner 1, summoner (unchained) 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "0 ft.", area: "one icicle", targets: "",
                          duration: "1 minute/level",
                          savingThrow: "none;", sr: false,
                          summary: "You create a masterwork dagger out of ice. The dagger deals 1 point of cold damage in addition to normal dagger damage.",
                          desc: "You create a masterwork dagger out of ice. The dagger deals 1 point of cold damage in addition to normal dagger damage. If the dagger leaves your hand for more than 1 round, it melts and the spell ends. At 6th level, the dagger functions as a +1 frost dagger . At 11th level, it gains the",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Icy Prison", school: "Evocation", levels: "arcanist 5, sorcerer 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "1 minute/level; see text",
                          savingThrow: "Reflex partial;", sr: true,
                          summary: "You trap the target in solid ice 1 inch thick per caster level. If the creature fails its save, it is helpless, but can still breathe (the ice blocks line of effect to the target).",
                          desc: "You trap the target in solid ice 1 inch thick per caster level. If the creature fails its save, it is helpless, but can still breathe (the ice blocks line of effect to the target). If the target makes its save, it gains the entangled condition but can otherwise act normally. Whether or not the target saves, it takes 1 point of cold damage per caster level each round it is helpless or entangled in the ice. The ice has hardness 0 and 3 hit points per inch of thickness; if broken, the creature is freed. A creature can break the ice as a full-round action with a successful Strength check (DC 15 + your caster level). Icy Prison, Mass",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Icy Prison, Mass", school: "Evocation", levels: "arcanist 5, sorcerer 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "1 minute/level; see text",
                          savingThrow: "Reflex partial;", sr: true,
                          summary: "This spell functions as icy prison , except as noted above.",
                          desc: "This spell functions as icy prison , except as noted above.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Imbue with Aura", school: "Transmutation", levels: "cleric 2, oracle 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (see text);", sr: true,
                          summary: "You infuse another creature with your divine aura, causing the target to radiate an aura identical to your own clerical aura.",
                          desc: "You infuse another creature with your divine aura, causing the target to radiate an aura identical to your own clerical aura. The target’s actual alignment is not changed, but spells like detect evil or",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Interrogation", school: "Necromancy", levels: "arcanist 1, inquisitor 1, mesmerist 1, psychic 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 round", components: "V, S",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "1 minute/level",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "You question the target, backed up by the threat of magical pain. You may ask one question per two caster levels.",
                          desc: "You question the target, backed up by the threat of magical pain. You may ask one question per two caster levels. The target can either answer the question or take 1d4 points of damage plus your Wisdom bonus. The target is not compelled to answer truthfully, but the threat of pain gives it a –4 penalty on Bluff checks to convince you when it is lying. Interrogation, Greater",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Interrogation, Greater", school: "Necromancy", levels: "arcanist 1, inquisitor 1, mesmerist 1, psychic 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 round", components: "V, S",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "1 minute/level",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "This spell functions as interrogation , except you may ask one question per caster level and the spell deals damage equal to 1d8 points plus your Wisdom bonus if the target doesn’t answer a question.",
                          desc: "This spell functions as interrogation , except you may ask one question per caster level and the spell deals damage equal to 1d8 points plus your Wisdom bonus if the target doesn’t answer a question.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Joyful Rapture", school: "Conjuration (Healing)", levels: "arcanist 7, bard 5, cleric 6, mesmerist 5, oracle 6, psychic 6, skald 5, sorcerer 7, warpriest 6, wizard 7",
                          castingTime: "1 standard action", components: "V, S",
                          range: "60 ft.", area: "all allies and opponents within a 60-ft.-radius burst centered on you", targets: "",
                          duration: "instantaneous",
                          savingThrow: "no;", sr: true,
                          summary: "Your inspired words overwhelm others with transcendental bliss. All allies within the area of effect are freed from any harmful emotion effects.",
                          desc: "Your inspired words overwhelm others with transcendental bliss. All allies within the area of effect are freed from any harmful emotion effects. The spell also cures 1d4 points of Intelligence, Wisdom, or Charisma damage (your choice) to all allies in the area",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ki Arrow", school: "Conjuration", levels: "arcanist 1, bard 1, psychic 1, skald 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "S",
                          range: "touch", area: "", targets: "1 arrow touched",
                          duration: "instantaneous",
                          savingThrow: "Fortitude (object);", sr: true,
                          summary: "You imbue an arrow with your power and throw it at a target up to 100 feet away. Make a ranged attack roll.",
                          desc: "You imbue an arrow with your power and throw it at a target up to 100 feet away. Make a ranged attack roll. If it hits, the target takes damage from the arrow as if you had hit it with a single unarmed strike (including your Strength bonus).",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ki Leech", school: "Necromancy", levels: "arcanist 3, cleric 3, oracle 3, psychic 3, sorcerer 3, warpriest 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "You place your spirit in a receptive state so when you confirm a critical hit against a living enemy or reduce a living enemy to 0 or fewer hit points, you can steal some of that creature’s ki.",
                          desc: "You place your spirit in a receptive state so when you confirm a critical hit against a living enemy or reduce a living enemy to 0 or fewer hit points, you can steal some of that creature’s ki. This replenishes 1 point of ki as long as you have at least 1",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ki Shout", school: "Evocation", levels: "arcanist 7, bard 5, psychic 7, skald 5, sorcerer 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "instantaneous",
                          savingThrow: "Fortitude partial;", sr: true,
                          summary: "With a guttural bark, you unleash a sudden blast of sonic energy that strikes your opponent.",
                          desc: "With a guttural bark, you unleash a sudden blast of sonic energy that strikes your opponent. The target takes 1d6 points of sonic damage per level (maximum 20d6) and is stunned for 1 round; a successful Fortitude save reduces the damage by half and negates the stun.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Know the Enemy", school: "Divination", levels: "cleric 1, hunter 1, inquisitor 1, oracle 1, paladin 1, ranger 1, warpriest 1",
                          castingTime: "1 minute", components: "S, V, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "You commune with the divine, reflecting on one type of creature you encountered in the last day. You may make a Knowledge check regarding that creature type with a +10 insight bonus.",
                          desc: "You commune with the divine, reflecting on one type of creature you encountered in the last day. You may make a Knowledge check regarding that creature type with a +10 insight bonus.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Leashed Shackles", school: "Evocation", levels: "arcanist 6, inquisitor 4, psychic 6, sorcerer 6, spiritualist 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "1 minute/level",
                          savingThrow: "Reflex negates;", sr: true,
                          summary: "You create shackles of force that attach to the target’s limbs.",
                          desc: "You create shackles of force that attach to the target’s limbs. You designate an object or location within 30 feet of the target for the shackles to anchor themselves to; this must be the ground, a wall, or a sturdy structure for the anchoring to occur. The target is entangled, and cannot move more than 30 feet from the anchor point of the spell. The shackle itself cannot be attacked (though it can be dispelled), but if the object or area it is attached to is broken, the target is free to move away (though it is still entangled).",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Lend Judgment", school: "Divination", levels: "inquisitor 1",
                          castingTime: "1 standard action", components: "V, DF",
                          range: "touch", area: "", targets: "one ally",
                          duration: "1 round/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You create a conduit of divine knowledge and outrage between you and an ally. That ally gains the benefit of one of your active judgments (as do you).",
                          desc: "You create a conduit of divine knowledge and outrage between you and an ally. That ally gains the benefit of one of your active judgments (as do you). If you cannot use a judgment (for example, if you are not in combat, are frightened or unconscious, and so on) or change judgments, the ally loses the benefit of the judgment. If you have multiple judgments active, the ally gains only one, chosen when you cast this spell. Lend Judgment, Greater",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Lend Judgment, Greater", school: "Divination", levels: "inquisitor 1",
                          castingTime: "1 standard action", components: "V, DF",
                          range: "touch", area: "", targets: "one ally",
                          duration: "1 round/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This functions as lend judgment , except the ally gains the benefit of all your active judgments.",
                          desc: "This functions as lend judgment , except the ally gains the benefit of all your active judgments.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Lightning Arc", school: "Evocation", levels: "arcanist 5, sorcerer 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (fur and two glass figurines)",
                          range: "long (400 ft. + 40 ft./level)", area: "", targets: "two creatures or objects which must be no more than 60 ft. apart",
                          duration: "instantaneous",
                          savingThrow: "Reflex half;", sr: true,
                          summary: "You generate an arc of lightning between two targets. The lightning deals 1d6 points of electricity damage per caster level (maximum 15d6) to both targets and any creatures in a line connecting them.",
                          desc: "You generate an arc of lightning between two targets. The lightning deals 1d6 points of electricity damage per caster level (maximum 15d6) to both targets and any creatures in a line connecting them. The spell fails if there is no line of effect between the targets. Lightning arc sets fire to combustibles and damages objects in its path. It can melt metals that have a low melting point, such as lead, gold, copper, silver, or bronze.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Loathsome Veil", school: "Illusion (Pattern)", levels: "arcanist 3, mesmerist 3, psychic 3, redmantisassassin 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a tangle of multicolored threads)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "transparent pattern 40 ft. long, 20 ft. high", targets: "",
                          duration: "concentration + 1 round/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell creates a transparent veil of shifting, multicolored strands of light that form into endlessly varied and alien patterns.",
                          desc: "This spell creates a transparent veil of shifting, multicolored strands of light that form into endlessly varied and alien patterns. One side of the veil, chosen by you at the time of casting, is harmless. The other side twists and turns into impossible shapes, affecting any creature with 60 feet who views the veil. The veil affects a maximum of 24 Hit Dice of creatures. Creatures with the fewest HD are affected first. Among creatures with equal HD, those who are closest to the spell are affected first. The effect is according to the creature’s HD. 4 HD or fewer : The creature is nauseated while it can see the veil, nauseated for 1d4 rounds after it last saw the veil, then sickened for 2d4 rounds after it last saw the veil.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Lunar Veil", school: "Illusion (Shadow)", levels: "arcanist 7, cleric 7, oracle 7, psychic 7, sorcerer 7, witch 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S",
                          range: "long (400 ft. + 40 ft./level)", area: "120-ft.-radius emanation", targets: "",
                          duration: "10 minute/level",
                          savingThrow: "Will negates, see text;", sr: false,
                          summary: "You conjure a tremendous area of shadow to obscure moonlight within the area, creating something akin to a lunar eclipse.",
                          desc: "You conjure a tremendous area of shadow to obscure moonlight within the area, creating something akin to a lunar eclipse. The light level is lowered by two steps (though unlike deeper darkness , areas of normal light or dimmer become normal darkness rather than supernaturally dark). Lycanthropes in the area must make a Will save every round or revert to their humanoid forms. In addition, lycanthropes attempting to assume animal or hybrid form within the affected area take a –5 penalty on Constitution checks to do so.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mad Hallucination", school: "Illusion (Phantasm)", levels: "arcanist 2, bard 2, mesmerist 2, psychic 2, redmantisassassin 2, skald 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one humanoid creature",
                          duration: "5 minute/level (maximum 1 hour)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell induces a hallucinogenic reality in the mind of your target. Surfaces seem to swim, and movement constantly distracts the eye.",
                          desc: "This spell induces a hallucinogenic reality in the mind of your target. Surfaces seem to swim, and movement constantly distracts the eye. The target takes a –2 penalty on Will saving throws, caster level checks, Intelligence-based skill checks, and Wisdom-based skill checks.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mad Monkeys", school: "Conjuration (Summoning)", levels: "arcanist 3, bard 3, druid 3, hunter 3, skald 3, sorcerer 3, summoner 3, summoner (unchained) 3, wizard 3",
                          castingTime: "1 round", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "swarm of monkeys", targets: "",
                          duration: "1 round/level",
                          savingThrow: "none;", sr: false,
                          summary: "You summon a swarm of screeching, mischievous monkeys. The swarm understands and obeys your commands and has the statistics of a monkey swarm.",
                          desc: "You summon a swarm of screeching, mischievous monkeys. The swarm understands and obeys your commands and has the statistics of a monkey swarm. Creatures failing a saving throw against the mad monkeys’ distraction attack are deafened for 1 minute as well as nauseated. The monkeys attempt one disarm or steal combat maneuver each turn as a free action against any creature that begins its turn in the swarm, using your caster level plus your casting ability score bonus (Intelligence for wizards; Wisdom for druids and oracles; Charisma for bards, sorcerers, and summoners) for its CMB. Recovering an item from the monkeys requires a successful disarm or steal attempt against that CMB + 10. An object stolen by the monkeys takes swarm damage each round the swarm is in possession of the object.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Malfunction", school: "Transmutation", levels: "arcanist 4, occultist 4, redmantisassassin 4, sorcerer 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one construct", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "This functions as confusion , except it only affects constructs, and instead of babbling incoherently, the construct takes no actions on its turn (but may still make attacks of opportunity).",
                          desc: "This functions as confusion , except it only affects constructs, and instead of babbling incoherently, the construct takes no actions on its turn (but may still make attacks of opportunity).",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Malicious Spite", school: "Enchantment (Compulsion)", levels: "arcanist 4, bard 3, mesmerist 3, psychic 4, skald 3, sorcerer 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (powdered turquoise worth 150 gp)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 day/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You invoke feelings of a driving malicious intent. The target’s malice is directed at a second individual as designated by you at the time of casting.",
                          desc: "You invoke feelings of a driving malicious intent. The target’s malice is directed at a second individual as designated by you at the time of casting. Thereafter, the target attempts to slander, abuse, and even plot murder against the target of its spite. This loathing is not overt, and the target’s actions against the object of its spite remain subtle and indirect. The enchanted target remains within its financial and ethical means when acting against the second individual, though the malice toward this other person pushes the target to the limit of what it would do to a hated individual. Each day, the target takes 2 points of Wisdom damage as the all-encompassing spite dominates its thoughts. The target can only alleviate the ability damage by acting upon the emotion and performing a spiteful act. Examples of spiteful acts are spiking the target’s drink to make it an easier target for thugs, damaging the target’s property, starting foul rumors about the target, framing the target for a crime, paying lepers or beggars to accost the target, extorting or blackmailing the target, or arranging for others to physically harm the target. When the spell ends, the target remembers the spiteful behavior, but not the motivation for it.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Marionette Possession", school: "Necromancy", levels: "alchemist 3, arcanist 3, investigator 3, mesmerist 3, psychic 3, sorcerer 3, summoner 3, summoner (unchained) 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, F (a piece of paper with the target’s name)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one willing creature",
                          duration: "10 minutes/level or until you return to your body",
                          savingThrow: "Will negates (see text);", sr: true,
                          summary: "You project your soul out of your body and into the body of a willing creature. This possession is blocked by protection from evil or a similar ward.",
                          desc: "You project your soul out of your body and into the body of a willing creature. This possession is blocked by protection from evil or a similar ward. The target’s soul shares its body with you; it is helpless but can still use its senses. You and the target’s soul can communicate telepathically as if using a common language. You keep your Intelligence, Wisdom, Charisma, level, class, base attack bonus, base save bonuses, alignment, and mental abilities. The body retains its Strength, Dexterity, Constitution, hit points, natural abilities, and natural attacks (such as a bite or sting). A body with extra limbs does not allow you to make more attacks (or more advantageous two-weapon attacks) than normal. You can’t choose to activate the body’s extraordinary, spell-like, or supernatural abilities. As a standard action, you can return to your own body, ending the spell. While your soul is possessing the target, your body is helpless. If the host body is slain, you return to your own body if it is within range, and the life force of the host departs (it is slain). If the host body is slain beyond the range of the spell, both you and the host die. Any life force with nowhere to go is treated as slain.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Masterwork Transformation", school: "Transmutation", levels: "arcanist 2, bard 2, cleric 2, druid 2, hunter 2, occultist 2, oracle 2, redmantisassassin 2, skald 2, sorcerer 2, warpriest 2, witch 2, wizard 2",
                          castingTime: "1 hour", components: "V, S, M (see below)",
                          range: "touch", area: "", targets: "one weapon, suit of armor, shield, tool, or skill kit touched",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "You convert a non-masterwork item into its masterwork equivalent.",
                          desc: "You convert a non-masterwork item into its masterwork equivalent. A normal sword becomes a masterwork sword, a suit of leather armor becomes a masterwork suit of leather armor, a set of thieves’ tools becomes masterwork thieves’ tools, and so on. If the target object has no masterwork equivalent, the spell has no effect. You can affect 50 pieces of ammunition as if they were one weapon. You decide if the object’s appearance changes to reflect this improved quality. The material component for the spell is magical reagents worth the cost difference between a normal item and the equivalent masterwork item (typically 300 gp for a weapon, 150 gp for armor, or 50 gp for a tool). If an object has multiple masterwork options (such as a double weapon, or a spiked shield that could be made masterwork as a weapon or armor), you choose one option of the object to affect (though you can cast the spell again to affect another option).",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Miserable Pity", school: "Abjuration", levels: "arcanist 2, bard 2, mesmerist 2, psychic 2, skald 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 round/level and 1 minute; see text",
                          savingThrow: "Will negates (see text);", sr: true,
                          summary: "This spell functions as sanctuary , except creatures attempting to attack the target who fail their saves also feel a strong sense of pity toward the target, as if it were weak, pathetic, and not a…",
                          desc: "This spell functions as sanctuary , except creatures attempting to attack the target who fail their saves also feel a strong sense of pity toward the target, as if it were weak, pathetic, and not a threat. If the target breaks the spell by attacking, any creature that failed its save against the spell gains a +2 morale bonus on attack rolls against the target for 1 minute.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Monstrous Physique I", school: "Transmutation (Polymorph)", levels: "alchemist 3, arcanist 3, bloodrager 3, investigator 3, magus 3, redmantisassassin 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a piece of the creature whose form you plan to assume)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "When you cast this spell, you can assume the form of any Small or Medium creature of the monstrous humanoid type.",
                          desc: "When you cast this spell, you can assume the form of any Small or Medium creature of the monstrous humanoid type. If the form you assume has any of the following abilities, you gain the listed ability: climb 30 feet, fly 30 feet (average maneuverability), swim 30 feet, darkvision 60 feet, low-light vision, and scent. If the form you assume has the aquatic subtype, you gain the aquatic and amphibious subtypes. Small monstrous humanoid : If the form you take is that of a Small monstrous humanoid, you gain a +2 size bonus to your Dexterity and a +1 natural armor bonus.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Monstrous Physique II", school: "Transmutation (Polymorph)", levels: "alchemist 3, arcanist 3, bloodrager 3, investigator 3, magus 3, redmantisassassin 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a piece of the creature whose form you plan to assume)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as monstrous physique I , except it also allows you to assume the form of a Tiny or Large creature of the monstrous humanoid type.",
                          desc: "This spell functions as monstrous physique I , except it also allows you to assume the form of a Tiny or Large creature of the monstrous humanoid type. If the form you assume has any of the following abilities, you gain the listed ability: climb 60 feet, fly 60 feet (good maneuverability), swim 60 feet, darkvision 60 feet, low-light vision, scent, freeze, grab, leap attack, mimicry, pounce, sound mimicry, speak with sharks, and trip. If the creature has the undersized weapons special quality, you gain that quality.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Monstrous Physique III", school: "Transmutation (Polymorph)", levels: "alchemist 3, arcanist 3, bloodrager 3, investigator 3, magus 3, redmantisassassin 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a piece of the creature whose form you plan to assume)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as monstrous physique II , except it also allows you to assume the form of a Diminutive or Huge creature of the monstrous humanoid type.",
                          desc: "This spell functions as monstrous physique II , except it also allows you to assume the form of a Diminutive or Huge creature of the monstrous humanoid type. If the form you assume has any of the following abilities, you gain the listed ability: burrow 30 feet, climb 90 feet, fly 90 feet (good maneuverability), swim 90 feet, all-around vision, blindsense 30 feet, darkvision 60 feet, low-light vision, scent, blood frenzy, cold vigor, constrict, ferocity, freeze, grab, horrific appearance, jet, leap attack, mimicry, natural cunning, overwhelming, poison, pounce, rake, sound mimicry, speak with sharks, trample, trip, and web. If the creature has the undersized weapons special quality, you gain that quality.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Monstrous Physique IV", school: "Transmutation (Polymorph)", levels: "alchemist 3, arcanist 3, bloodrager 3, investigator 3, magus 3, redmantisassassin 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a piece of the creature whose form you plan to assume)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as monstrous physique III except it allows you to use more abilities.",
                          desc: "This spell functions as monstrous physique III except it allows you to use more abilities. If the form you assume has any of the following abilities, you gain the listed ability: burrow 60 feet, climb 90 feet, fly 120 feet (good maneuverability), swim 120 feet, blindsense 60 feet, darkvision 90 feet, low-light vision, scent, tremorsense 60 feet, blood frenzy, breath weapon, cold vigor, constrict, ferocity, freeze, grab, horrific appearance, jet, leap attack, mimicry, natural cunning, overwhelming, poison, pounce, rake, rend, roar, sound mimicry, speak with sharks, spikes, trample, trip, and web. If the creature has immunity or resistance to any energy types, you gain resistance 20 to those energy types. If the creature has vulnerability to an energy type, you gain that vulnerability. If the creature has immunity to poison, you gain a +8 bonus on saves against poison.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Murderous Command", school: "Enchantment (Compulsion)", levels: "antipaladin 1, cleric 1, medium 1, mesmerist 1, occultist 1, oracle 1, psychic 1, warpriest 1",
                          castingTime: "1 standard action", components: "V",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "1 round",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You give the target a mental urge to kill its nearest ally, which it obeys to the best of its ability. The target attacks its nearest ally on its next turn with a melee weapon or natural weapon.",
                          desc: "You give the target a mental urge to kill its nearest ally, which it obeys to the best of its ability. The target attacks its nearest ally on its next turn with a melee weapon or natural weapon. If necessary, it moves to or charges to the nearest ally in order to make this attack. If it is unable to reach its closest ally on its next turn, the target uses its turn to get as close as possible to the ally.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Oppressive Boredom", school: "Enchantment (Compulsion)", levels: "arcanist 2, bard 2, medium 2, mesmerist 2, psychic 2, skald 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round/level or until broken (see text)",
                          savingThrow: "Will negates (see text);", sr: true,
                          summary: "You fill your target with boredom. The target loses all interest in its current task and must make a Will save against the spell’s effect in order to perform its next action.",
                          desc: "You fill your target with boredom. The target loses all interest in its current task and must make a Will save against the spell’s effect in order to perform its next action. If the target fails, it takes no action that round. The boredom lasts until the duration expires or the target breaks the spell’s effect with a successful Will save.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Oracle's Vessel", school: "Transmutation", levels: "oracle 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The target gains all the benefits of your oracle’s curse, with none of the penalties.",
                          desc: "The target gains all the benefits of your oracle’s curse, with none of the penalties. In some cases, this has no effect (for example, a fighter with your haunted curse can’t cast spells and doesn’t gain any benefit from having additional spells known).",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Orb of the Void", school: "Necromancy", levels: "arcanist 8, cleric 8, oracle 8, psychic 8, sorcerer 8, wizard 8",
                          castingTime: "1 standard action", components: "V, S, M (a black gemstone of any kind worth 50 gp)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "1-ft.-diameter sphere", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "You create a small weightless sphere of pure negative energy. As a move action, you can move it up to 30 feet per round in any direction.",
                          desc: "You create a small weightless sphere of pure negative energy. As a move action, you can move it up to 30 feet per round in any direction. If it enters a space with a living creature, it stops moving for the round and that creature gains one negative level (Fortitude negates). Any creature passing through or ending its turn in the space occupied by the sphere gains one negative level (Fortitude negates). Twenty-four hours after gaining a negative level from the sphere, the subject must make a Fortitude saving throw (the DC of this save is equal to the DC of this spell) for each negative level. If the save succeeds, that negative level is removed. If it fails, that negative level becomes permanent. If more than one orb (from different castings of the spell) enters the same space, the orbs automatically fuse together. The resulting orb uses the higher of the two orbs’ DCs as its DC and whichever duration has more time left. If the orbs are from different casters, each must make an opposed Intelligence check to move the sphere. An undead creature that passes through or ends its turn in the space occupied by the orb gains 2d4 × 5 temporary hit points for 1 hour.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Overwhelming Grief", school: "Enchantment (Compulsion)", levels: "arcanist 4, bard 3, mesmerist 3, psychic 4, skald 3, sorcerer 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "Will negates (see text);", sr: true,
                          summary: "You cause a single opponent to become profoundly stricken with intense grief. He can take no actions, takes a –2 penalty to Armor Class, and loses his Dexterity bonus (if any).",
                          desc: "You cause a single opponent to become profoundly stricken with intense grief. He can take no actions, takes a –2 penalty to Armor Class, and loses his Dexterity bonus (if any). He can attempt a new save each round to break the spell’s effect.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Overwhelming Presence", school: "Enchantment (Compulsion)", levels: "arcanist 9, bard 6, cleric 9, inquisitor 6, mesmerist 6, oracle 9, psychic 9, skald 6, sorcerer 9, wizard 9",
                          castingTime: "1 standard action", components: "V, S, M (a swan feather)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature/level, no two of which can be more than 30 ft. apart",
                          duration: "1 round/level",
                          savingThrow: "Will negates, see text;", sr: true,
                          summary: "Your presence inspires incredible awe in those nearby. A creature that fails a save against this spell falls to the ground and prostrates itself before you, believing it bows before a divine…",
                          desc: "Your presence inspires incredible awe in those nearby. A creature that fails a save against this spell falls to the ground and prostrates itself before you, believing it bows before a divine presence. A flying creature incapable of hovering must land immediately in order to prostrate itself. These creatures are considered to be helpless for the duration of the spell. Each round on its turn, a target of this spell may attempt a new saving throw to end the effect; this is a full-round action that does not provoke attacks of opportunity. A creature that recovers from this spell early after being affected by it for at least 1 round takes 1d6 points of Wisdom drain and is staggered for 1d4 rounds. A creature that makes the initial save to resist this spell is merely staggered for 1 round.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Pernicious Poison", school: "Necromancy", levels: "antipaladin 2, arcanist 2, druid 2, hunter 2, occultist 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 minute/level",
                          savingThrow: "none;", sr: true,
                          summary: "You weaken the target’s defenses against poison. The target gains a –4 penalty on saves against poison, and poisons affecting the target continue for another 2 frequency increments (for example,…",
                          desc: "You weaken the target’s defenses against poison. The target gains a –4 penalty on saves against poison, and poisons affecting the target continue for another 2 frequency increments (for example, black adder venom lasts 8 rounds instead of 6, and arsenic lasts for 6 minutes instead of 4). Attempts to cure the poisoned target with skill or magic take a –4 penalty.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Persuasive Goad", school: "Necromancy", levels: "inquisitor 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "instantaneous and 1 minute",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "Your eyes flash and the target takes 1d6 points of nonlethal damage. For the next minute, you gain a +4 circumstance bonus on Intimidate checks against the target.",
                          desc: "Your eyes flash and the target takes 1d6 points of nonlethal damage. For the next minute, you gain a +4 circumstance bonus on Intimidate checks against the target.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Piercing Shriek", school: "Evocation", levels: "bard 2, psychic 2, skald 2",
                          castingTime: "1 standard action", components: "V",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "You emit an ear-splitting shriek which can be heard only by the target of this spell; all other observers merely see you screaming silently.",
                          desc: "You emit an ear-splitting shriek which can be heard only by the target of this spell; all other observers merely see you screaming silently. The target suffers wracking pain from the scream, gaining the staggered condition. This spell has no effect on deaf creatures and cannot penetrate an area of silence .",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Plague Carrier", school: "Necromancy", levels: "arcanist 5, cleric 4, druid 4, hunter 4, oracle 4, sorcerer 5, warpriest 4, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 hour/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "The target’s natural attacks carry filth fever (DC 10 + 1/2 of the creature’s Hit Dice + creature’s Con modifier).",
                          desc: "The target’s natural attacks carry filth fever (DC 10 + 1/2 of the creature’s Hit Dice + creature’s Con modifier).",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Plague Storm", school: "Necromancy", levels: "arcanist 7, cleric 6, druid 6, hunter 6, oracle 6, sorcerer 7, warpriest 6, witch 6, wizard 7",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "cloud spreads in 20-ft. radius, 20 ft. high", targets: "",
                          duration: "1 minute/level and instantaneous (see text)",
                          savingThrow: "Fortitude negates;", sr: false,
                          summary: "You create a hideous gray cloud, similar to fog cloud , that occasionally crackles with foul-smelling bolts of sickly green lightning.",
                          desc: "You create a hideous gray cloud, similar to fog cloud , that occasionally crackles with foul-smelling bolts of sickly green lightning. Creatures in the area must save or contract one of the following diseases: blinding sickness, bubonic plague, cackle fever, demon fever, devil chills, filth fever, leprosy, mindfire, red ache, shakes, or slimy doom (the disease is chosen by you when you cast the spell and applies to all creatures that fail the save). The disease is contracted immediately (the onset period does not apply) and is an instantaneous effect. Use the disease’s listed frequency to determine further effects, but the disease’s save DC increases by +2. For more information see the diseases section.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Play Instrument", school: "Divination", levels: "bard 1, skald 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "10 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "You may play one instrument of your choice as if you had 1 rank in the appropriate Perform skill.",
                          desc: "You may play one instrument of your choice as if you had 1 rank in the appropriate Perform skill. Instead of a conventional instrument, you may use an object as an improvised instrument, such as using a barrel as a drum or a bow as a harp, playing it as if it were crafted to make music.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Polar Midnight", school: "Transmutation", levels: "cleric 9, druid 9, oracle 9, shaman 9, witch 9",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "30-ft. spread", targets: "",
                          duration: "1 round/level",
                          savingThrow: "Fortitude partial;", sr: true,
                          summary: "You plunge an area into the brutal chill of the arctic night. Illumination conditions are dropped by two steps (though only to darkness, not supernatural darkness), and all creatures in the area take…",
                          desc: "You plunge an area into the brutal chill of the arctic night. Illumination conditions are dropped by two steps (though only to darkness, not supernatural darkness), and all creatures in the area take 5d6 points of cold damage and 1d6 points of Dexterity damage per round. A successful Fortitude save each round negates the Dexterity damage but not the cold damage. Any creature that doesn’t move on its turn becomes encased in a sheath of ice equivalent to wall of ice , is helpless, and cannot breathe. Corpses in the area for longer than 1 round are transmuted into solid ice; reviving the icy corpse requires",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Polypurpose Panacea", school: "Transmutation", levels: "alchemist 1, arcanist 1, investigator 1, mesmerist 1, psychic 1, redmantisassassin 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "S",
                          range: "personal", area: "", targets: "you",
                          duration: "see below",
                          savingThrow: "None", sr: false,
                          summary: "This creates one of several cantrip-level effects relating to your health, well-being, and entertainment.",
                          desc: "This creates one of several cantrip-level effects relating to your health, well-being, and entertainment. The panacea has no side effects (for example, the intoxication panacea does not cause a hangover). When you use polypurpose panacea , choose one of the following effects.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Prediction of Failure", school: "Divination", levels: "arcanist 8, occultist 6, psychic 8, sorcerer 8, witch 8, wizard 8",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "permanent or 1 round/level (see text)",
                          savingThrow: "Will partial;", sr: true,
                          summary: "You wrack the target’s body and mind with the anguish and suffering of every bitter failure it will ever experience, rendering it permanently shaken and sickened.",
                          desc: "You wrack the target’s body and mind with the anguish and suffering of every bitter failure it will ever experience, rendering it permanently shaken and sickened. A successful Will save reduces the duration to 1 round per level. If the target is a spellcaster, failing this saving throw means it also gains a random minor spellblight (see Ultimate Magic ).",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Primal Scream", school: "Abjuration", levels: "bard 4, mesmerist 4, skald 4",
                          castingTime: "1 standard action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "You voice a mighty yell from the depths of your soul, invigorating yourself and dispelling enchantment and paralysis effects.",
                          desc: "You voice a mighty yell from the depths of your soul, invigorating yourself and dispelling enchantment and paralysis effects. This functions as break enchantment , except it only affects you and only frees you from enchantment and paralysis effects. If the caster level check to break the hostile effect succeeds, you give voice to your scream and the spell takes effect normally; if not, this spell fails without further effect. You can cast this spell even when paralyzed or unable to speak because of an enchantment effect, but not in an area of silence , if you are unable to speak for reasons other than enchantments or paralysis (for example, if you are gagged), or if cast in an environment where speaking is not possible.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Protective Penumbra", school: "Evocation", levels: "arcanist 2, cleric 2, occultist 2, oracle 2, psychic 2, sorcerer 2, spiritualist 2, warpriest 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S,",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 minutes/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell keeps the target slightly in shadow. A target with light blindness, light sensitivity, or vulnerability to sunlight (such as vampires and wraiths) may ignore penalties from those…",
                          desc: "This spell keeps the target slightly in shadow. A target with light blindness, light sensitivity, or vulnerability to sunlight (such as vampires and wraiths) may ignore penalties from those qualities. The spell gives the target a +2 bonus on saving throws against nonmagical hazards related to bright light, such as glare or sunburn.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Rapid Repair", school: "Transmutation", levels: "arcanist 5, cleric 5, occultist 4, oracle 5, sorcerer 5, warpriest 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "construct touched",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "The targeted construct gains fast healing 5. This does not stack with any fast healing the construct already has.",
                          desc: "The targeted construct gains fast healing 5. This does not stack with any fast healing the construct already has. Fast healing has no effect on a construct that has been brought to 0 hit points or destroyed.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Reckless Infatuation", school: "Enchantment (Compulsion)", levels: "arcanist 3, bard 2, mesmerist 2, psychic 3, skald 2, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 day/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You fill your target with feelings of intense infatuation for a specific individual known to the target.",
                          desc: "You fill your target with feelings of intense infatuation for a specific individual known to the target. At the time of the casting, you designate a single creature as the focus of the target’s desire. Thereafter, the target does all it can to remain within 30 feet of the object of its desire. If the target moves outside this range, it gains the staggered condition until it is again near the focus of its desire. If remaining within 30 feet of the focus of its affection would place the target in obvious physical danger, the target can attempt a second save to break the spell’s effect. Reckless infatuation counters",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Remove Sickness", school: "Conjuration (Healing)", levels: "cleric 1, druid 1, hunter 1, mesmerist 1, oracle 1, spiritualist 1, warpriest 1, witch 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "10 minutes/level; see text",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "You quell feelings of illness and nausea in the target, giving it a +4 morale bonus on saving throws against disease, nausea, and sickened effects.",
                          desc: "You quell feelings of illness and nausea in the target, giving it a +4 morale bonus on saving throws against disease, nausea, and sickened effects. If the subject is already under the influence of one of these effects when receiving the spell, that effect is suppressed for the duration of the spell.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Reprobation", school: "Transmutation", levels: "cleric 5, druid 5, hunter 5, inquisitor 4, oracle 5, paladin 4, warpriest 5",
                          castingTime: "1 minute", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature of your faith",
                          duration: "permanent",
                          savingThrow: "none;", sr: true,
                          summary: "You cast the target out of your religion as a curse and punishment for acts or misdeeds against the tenets of your faith. This has three effects.",
                          desc: "You cast the target out of your religion as a curse and punishment for acts or misdeeds against the tenets of your faith. This has three effects. First, the target is marked with a magical symbol visible only to members of your faith. This symbol indicates that the target has transgressed and that the faithful should not help it. Likewise, the target is not to be persecuted because of the mark (though this would not keep members of a lawful faith from imprisoning a known criminal if these crimes were known to have taken place after he gained the mark). Second, the target is no longer affected by helpful spells cast by the faithful and is always treated as an enemy for the purpose of other spells cast by those of your faith. For example,",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Resonating Word", school: "Transmutation", levels: "arcanist 7, bard 5, psychic 7, skald 5, sorcerer 7, wizard 7",
                          castingTime: "1 standard action", components: "V",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "3 rounds",
                          savingThrow: "Fortitude partial;", sr: true,
                          summary: "You speak a terrible word of power, setting up potentially lethal vibrations in the chosen target.",
                          desc: "You speak a terrible word of power, setting up potentially lethal vibrations in the chosen target. The target must save once each round on your turn, and the effects grow stronger for each saving throw the creature fails. On the first round, the target takes 5d6 points of sonic damage and is staggered for 1 round. A successful save halves the damage and negates the staggered effect. On the second round, the target takes 5d6 points of damage and is stunned for 1 round. A successful save halves the damage and negates the stunning effect. On the third round, the target takes 10d6 points of damage and is stunned for 1d4+1 rounds. A successful save halves the damage and negates the stunning effect. The resonating word has no power after the third round, even if the spell’s duration is increased.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Restore Corpse", school: "Necromancy", levels: "arcanist 1, cleric 1, druid 1, hunter 1, medium 1, occultist 1, oracle 1, psychic 1, sorcerer 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "corpse touched",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "You grow flesh on a decomposed or skeletonized corpse of a Medium or smaller creature, providing it with sufficient flesh that it can be animated as a zombie rather than a skeleton.",
                          desc: "You grow flesh on a decomposed or skeletonized corpse of a Medium or smaller creature, providing it with sufficient flesh that it can be animated as a zombie rather than a skeleton. The corpse looks as it did when the creature died. The new flesh is somewhat rotted and not fit for eating.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Restore Eidolon", school: "Conjuration (Healing)", levels: "summoner 2, summoner (unchained) 2",
                          castingTime: "3 rounds", components: "V, S",
                          range: "touch", area: "", targets: "eidolon touched",
                          duration: "instantaneous",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions as restoration , except it only affects an eidolon.",
                          desc: "This spell functions as restoration , except it only affects an eidolon.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Restore Eidolon, Lesser", school: "Conjuration (Healing)", levels: "summoner 2, summoner (unchained) 2",
                          castingTime: "3 rounds", components: "V, S",
                          range: "touch", area: "", targets: "eidolon touched",
                          duration: "instantaneous",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions as lesser restoration , except it only affects an eidolon.",
                          desc: "This spell functions as lesser restoration , except it only affects an eidolon.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ride The Waves", school: "Transmutation", levels: "arcanist 4, bloodrager 4, cleric 4, druid 4, hunter 4, oracle 4, redmantisassassin 4, shaman 4, sorcerer 4, warpriest 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 hour/level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The target gains the ability to breathe water and a swim speed of 30 feet.",
                          desc: "The target gains the ability to breathe water and a swim speed of 30 feet. This swim speed means the target also gains the standard +8 bonus on Swim checks and the ability to take 10 on Swim checks even while distracted or endangered. The target can use the run action while swimming, provided it swims in a straight line. The spell does not make the target unable to breathe air.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ride the Lightning", school: "Evocation", levels: "arcanist 9, sorcerer 9, wizard 9",
                          castingTime: "1 swift action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "You may transform into lightning as a standard action and instantly travel in a straight line to a distance of up to 120 feet, rematerializing in the new location as a free action.",
                          desc: "You may transform into lightning as a standard action and instantly travel in a straight line to a distance of up to 120 feet, rematerializing in the new location as a free action. This movement does not provoke attacks of opportunity. Creatures in this line take 10d6 points of electrical damage and are staggered for 1 round (a successful Reflex save halves the damage and negates the staggered condition, spell resistance applies). Objects in your path are damaged as well, with combustible objects being set ablaze and metals with low melting points melted. If your path is interrupted by a barrier or otherwise deflected, you materialize short of your final destination in the nearest open space; targets in the line to that point take damage as normal. You are immune to electricity while this spell lasts.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sanctify Corpse", school: "Evocation", levels: "cleric 1, inquisitor 1, oracle 1, paladin 1, spiritualist 1, warpriest 1, witch 1",
                          castingTime: "1 standard action", components: "V, S, DF, M (a pinch of silver dust)",
                          range: "touch", area: "corpse touched", targets: "",
                          duration: "24 hours",
                          savingThrow: "none;", sr: false,
                          summary: "This spell blesses a corpse with positive energy, preventing it from being turned into an undead creature. Attempts to raise the corpse as an undead automatically fail.",
                          desc: "This spell blesses a corpse with positive energy, preventing it from being turned into an undead creature. Attempts to raise the corpse as an undead automatically fail. If the corpse is of a person slain by a creature that creates undead out of its slain foes (such as a shadow, vampire, or wraith), that effect is delayed until the end of this spell. It is possible to protect a corpse for an extended time by casting this spell each day. Sanctify corpse can be made permanent with a",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Scouring Winds", school: "Evocation", levels: "arcanist 7, druid 7, sorcerer 7, witch 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "sandstorm in 20-ft. radius, 20 ft. high", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: true,
                          summary: "This spell brings forth a windstorm of stinging sand that blocks all vision. You can move the storm up to 30 feet each round as a move action.",
                          desc: "This spell brings forth a windstorm of stinging sand that blocks all vision. You can move the storm up to 30 feet each round as a move action. Any creature in the area takes 3d6 points of piercing damage each round. The area is considered a windstorm (see the wind effects table). If a creature with spell resistance successfully resists this spell, it is unaffected by the winds and sand, but still unable to see within the area of the spell.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sculpt Simulacrum", school: "Transmutation", levels: "arcanist 2, psychic 2, redmantisassassin 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "simulacrum touched",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "You create cosmetic changes to a simulacrum , similar to",
                          desc: "You create cosmetic changes to a simulacrum , similar to",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Serenity", school: "Enchantment (Compulsion)", levels: "arcanist 6, bard 4, cleric 5, mesmerist 4, oracle 5, psychic 5, skald 4, sorcerer 6, warpriest 5, wizard 6",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature/level, no two of which can be more than 30 ft. apart",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You fill the targets’ minds with feelings of tranquility. Those attempting to commit violence become stricken with wracking pain and take 3d6 points of nonlethal damage each round they attempt to…",
                          desc: "You fill the targets’ minds with feelings of tranquility. Those attempting to commit violence become stricken with wracking pain and take 3d6 points of nonlethal damage each round they attempt to harm another creature. If attacked, affected individuals can defend themselves and may participate in combat by using Combat Expertise, fighting defensively, or taking the total defense action without triggering the spell’s nonlethal damage.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Shadow Step", school: "Illusion (Shadow)", levels: "arcanist 4, bard 4, psychic 4, redmantisassassin 4, skald 4, sorcerer 4, spiritualist 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "you",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "To use this spell, you must be in an area of dim light or darkness.",
                          desc: "To use this spell, you must be in an area of dim light or darkness. You enter a shadow or area of darkness, which transports you along a coiling path of shadowstuff to another dim or dark location within range.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Shadow Weapon", school: "Illusion (Shadow)", levels: "arcanist 1, bloodrager 1, occultist 1, psychic 1, redmantisassassin 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "0 ft.", area: "one shadow weapon", targets: "",
                          duration: "1 minute/level",
                          savingThrow: "Will disbelief (if interacted with);", sr: true,
                          summary: "Drawing upon the Plane of Shadow, you shape a quasi-real masterwork melee weapon of a type you are proficient with.",
                          desc: "Drawing upon the Plane of Shadow, you shape a quasi-real masterwork melee weapon of a type you are proficient with. You may use this weapon to make attacks as if it were a real weapon, dealing normal damage for a weapon of its type. The first time you hit a creature with the weapon, it may make a Will save to disbelieve; failure means the weapon deals damage normally, success means it only takes 1 point of damage from the weapon’s attacks. The weapon only deals 1 point of damage to objects. If an attacked creature has spell resistance, you make a caster level check (1d20 + caster level) against that spell resistance the first time the shadow weapon strikes it. If the weapon is successfully resisted, the spell is dispelled. If not, the target may save to disbelieve as normal. At 5th level, the weapon gains a +1 enhancement bonus. At 10th-level, you may increase the enhancement bonus to +2 or add the frost or keen weapon property. The",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Shadowbard", school: "Illusion (Shadow)", levels: "bard 5, skald 5",
                          castingTime: "1 standard action", components: "V, S, M",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "phantom singer", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You conjure up a quasi-real phantom singer that is visible as a shifting, shadowy duplicate of yourself. The singer follows you automatically, moving as you move even if you teleport.",
                          desc: "You conjure up a quasi-real phantom singer that is visible as a shifting, shadowy duplicate of yourself. The singer follows you automatically, moving as you move even if you teleport. The singer cannot be damaged, but can be dispelled. When a shadowbard comes into being, it immediately begins a bardic performance of your choice—it has access to all of the bardic performances that you do. It continues that bardic performance until you direct it as a move action to switch to a different performance. Rounds spent by a",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Shard of Chaos", school: "Evocation", levels: "cleric 2, oracle 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "dart-shaped projectile of chaotic energy", targets: "",
                          duration: "instantaneous (1d6 rounds)",
                          savingThrow: "Will partial (see text);", sr: true,
                          summary: "You hurl a multicolored shard of congealed chaos from your holy symbol, affecting any one target in range as a ranged touch attack.",
                          desc: "You hurl a multicolored shard of congealed chaos from your holy symbol, affecting any one target in range as a ranged touch attack. A lawful creature struck by the shard takes 1d8 points of damage per two caster levels (maximum 5d8). A lawful outsider instead takes 1d6 points of damage per caster level (maximum 10d6) and is slowed (as slow ) for 1 round. A successful Will save reduces the damage to half and negates the slow effect. The bolt has no effect on chaotic creatures. This spell deals only half damage to creatures that are neither lawful nor chaotic, and they are not slowed.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Share Memory", school: "Divination", levels: "arcanist 2, bard 2, medium 2, mesmerist 2, occultist 2, psychic 2, skald 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "you and one creature touched",
                          duration: "instantaneous",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You momentarily link your mind with the target and share a single memory of no longer than 1 minute.",
                          desc: "You momentarily link your mind with the target and share a single memory of no longer than 1 minute. You can show the target one of your memories, show the target one of its own memories, or view one of the target’s memories.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Silk To Steel", school: "Transmutation", levels: "arcanist 2, bard 2, occultist 2, redmantisassassin 2, skald 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "one scarf",
                          duration: "1 round/level",
                          savingThrow: "none;", sr: false,
                          summary: "You imbue an ordinary scarf (or similar piece of clothing) with the strength of steel without altering its weight or flexibility.",
                          desc: "You imbue an ordinary scarf (or similar piece of clothing) with the strength of steel without altering its weight or flexibility. Each round on your turn, you can decide to use the scarf to defend yourself (gaining a +2 shield bonus to your Armor Class) or to attack as if the scarf were a whip.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Skinsend", school: "Necromancy", levels: "alchemist 2, arcanist 2, investigator 2, occultist 2, psychic 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 minute", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 hour/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "You cause your own skin to peel off your body and animate as a magical creature you control.",
                          desc: "You cause your own skin to peel off your body and animate as a magical creature you control. You may project your consciousness to your animated skin or return it to your actual body as a standard action. When your consciousness is in your body, you are helpless (except for transferring your will to your skin, or dismissing the spell). Your possessed skin is identical to you in all ways, except the following: It has only half the number of hit points you had at the time you cast the spell, and cannot be healed above this maximum; construct type, traits, and immunities; Str 3, Con —; DR 10/piercing or slashing; and compression (as the universal monster ability). Your skin can take any actions you could normally take in your own body (such as to fight or cast spells). When your skin leaves your body, your body’s hit points drop to 0. Your body cannot heal damage naturally while you have no skin, nor do spells that cure hit point damage work on your body; only regeneration (from a",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Smug Narcissism", school: "Enchantment (Compulsion)", levels: "arcanist 5, bard 3, mesmerist 3, psychic 5, skald 3, sorcerer 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (a tiny shard of a mirror)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "10 minute/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You cause your target to become overwhelmed by its own importance, talents, and attractiveness. The target cannot help but look at itself in every reflective surface at every possible opportunity.",
                          desc: "You cause your target to become overwhelmed by its own importance, talents, and attractiveness. The target cannot help but look at itself in every reflective surface at every possible opportunity. In social situations, the target always tries to comment about how attractive it is or how ugly someone else is by comparison. The target remains constantly distracted, always looking for a reflective surface to gaze upon (such as a mirror, pool of water, a polished shield, and so on). The distraction gives the target a –2 penalty on all skill checks. In combat, the target worries about enemies damaging its appearance, and focuses on defense rather than offense (casting defensive spells rather than offensive spells, using the fight defensively or total defense action, and so on).",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Snapdragon Fireworks", school: "Transmutation", levels: "arcanist 1, bard 2, redmantisassassin 1, skald 2, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "S, V, M (a bundle of sulfur wrapped in cloth)",
                          range: "long (400 ft. + 40 ft./level)", area: "dragon-shaped fireworks", targets: "",
                          duration: "1 round/level",
                          savingThrow: "Reflex negates;", sr: true,
                          summary: "A favorite display at halfling midsummer festivals, this spell lets you create fireworks in the shape of tiny dragons.",
                          desc: "A favorite display at halfling midsummer festivals, this spell lets you create fireworks in the shape of tiny dragons. Once per round, as a move action, you may designate a target 5-foot-square within range and launch a pyrotechnic in that direction. The pyrotechnic takes a zigzag path from you to that square, always missing creatures and objects in its path, and detonates in that square with a bang and a colorful burst of fire and light. Creatures in the target square take 1d4 points of fire damage and are dazzled for 1 round (Reflex half, a successful save negates the dazzled condition). Normally when this spell is used as part of a festival, the chosen target is high in the sky to increase visibility and protect observers.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sonic Thrust", school: "Evocation", levels: "arcanist 5, bard 4, psychic 5, skald 4, sorcerer 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "long (400 ft. + 40 ft./level)", area: "", targets: "see text",
                          duration: "instantaneous",
                          savingThrow: "Will negates (object) or none (see text);", sr: true,
                          summary: "You produce a sweeping rush of sound that can hurl creatures or objects away from you, like the violent thrust version of telekinesis .",
                          desc: "You produce a sweeping rush of sound that can hurl creatures or objects away from you, like the violent thrust version of telekinesis . You can hurl one object or creature per caster level (maximum 15) that is within range; it flies in a straight line away from you. Any objects of creatures thrown must be within 10 feet of each other. You can hurl a total weight of up to 25 pounds per caster level (maximum 375 pounds at 15th level). You can use this spell to hurl an object or creature toward a particular target. You must succeed on attack rolls (one per creature or object thrown) to hit the target with the items, using your base attack bonus + your Intelligence modifier (if a wizard) or Charisma modifier (if a bard or sorcerer). Hurled weapons cause standard damage (with no Strength bonus; note that arrows or bolts deal damage as daggers of their size when used in this manner). Other objects cause damage ranging from 1 point per 25 pounds (for less dangerous objects) to 1d6 points of damage per 25 pounds (for hard, dense objects). Objects and creatures that miss their target land in a square adjacent to the target. Creatures that fall within the weight capacity of the spell can be hurled, but they are allowed Will saves (and spell resistance) to negate the effect, as are those whose held possessions are targeted by the spell. If a hurled creature is thrown against a solid surface, it takes damage as if it had fallen 10 feet (1d6 points).",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Soothe Construct", school: "Abjuration", levels: "arcanist 5, cleric 4, occultist 4, oracle 4, sorcerer 5, warpriest 4, wizard 5",
                          castingTime: "1 round", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one construct",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "You soothe the elemental spirit of a targeted construct, reducing its chance of going berserk by 1d4% per four caster levels (maximum 5d4%).",
                          desc: "You soothe the elemental spirit of a targeted construct, reducing its chance of going berserk by 1d4% per four caster levels (maximum 5d4%). If cast on a construct that has already gone berserk and you are its master, you may immediately roll d% to end the construct’s berserk state, it returns to normal functioning, and its berserk chance returns to 0%.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Spear of Purity", school: "Evocation", levels: "cleric 2, oracle 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "spear-shaped projectile of good energy", targets: "",
                          duration: "instantaneous (1 round)",
                          savingThrow: "Will partial (see text);", sr: true,
                          summary: "You hurl a pure white or golden spear of light from your holy symbol, affecting any one target within range as a ranged touch attack.",
                          desc: "You hurl a pure white or golden spear of light from your holy symbol, affecting any one target within range as a ranged touch attack. An evil creature struck by the spear takes 1d8 points of damage per two caster levels (maximum 5d8). An evil outsider instead takes 1d6 points of damage per caster level (maximum 10d6) and is blinded for 1 round. A successful Will save reduces the damage to half and negates the blinded effect. This spell deals only half damage to creatures that are neither evil nor good, and they are not blinded. The spear has no effect on good creatures.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Spit Venom", school: "Transmutation", levels: "cleric 4, druid 3, hunter 3, oracle 4, shaman 4, warpriest 4, witch 3",
                          castingTime: "1 standard action", components: "V",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one stream of venom", targets: "",
                          duration: "instantaneous; see text",
                          savingThrow: "Fortitude partial;", sr: false,
                          summary: "You spit a stream of venom at a target using a ranged touch attack. If the venom hits, it causes blindness for 1 round.",
                          desc: "You spit a stream of venom at a target using a ranged touch attack. If the venom hits, it causes blindness for 1 round. The target must also save or be poisoned by black adder venom; the DC in successive rounds of the poison is equal to the spell’s DC.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Steal Voice", school: "Necromancy", levels: "arcanist 2, bard 2, medium 2, mesmerist 2, psychic 2, skald 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "permanent (D)",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "The target’s throat constricts, giving it the caster croak spellblight (see Ultimate Magic ).",
                          desc: "The target’s throat constricts, giving it the caster croak spellblight (see Ultimate Magic ).",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Strangling Hair", school: "Transmutation", levels: "arcanist 3, psychic 3, redmantisassassin 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "concentration, up to 1 round/level",
                          savingThrow: "none;", sr: true,
                          summary: "Your hair animates and extends to grapple and constrict an opponent.",
                          desc: "Your hair animates and extends to grapple and constrict an opponent. Make a grapple check against the target using your caster level as the base attack bonus plus a bonus equal to your Intelligence bonus (if a witch or wizard) or Charisma bonus (if a sorcerer). This grapple check does not provoke attacks of opportunity. If your hair succeeds in grappling a foe, that creature takes 1d6 points of damage or your unarmed strike damage, whichever is greater, and gains the grappled condition. Your hair receives a +5 bonus on grapple checks made against opponents it is already grappling, but cannot move foes or pin foes. Each round that your hair succeeds on a grapple check, it deals an additional 1d6 points of damage. The CMD of your hair, for the purposes of escaping the grapple, is equal to 10 + its CMB. Once you choose a target, your hair continues to attack that target independently of your own actions. You may designate a new target as a move action, which causes your hair to release its current target (if any) and attack the new target that round. Your hair cannot be targeted as a separate creature, but it can be dispelled.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Summon Elder Worm", school: "Conjuration (Summoning)", levels: "druid 9",
                          castingTime: "1 round", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one summoned creature", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as summon nature’s ally VIII , except you summon a purple worm with the giant creature simple template.",
                          desc: "This spell functions as summon nature’s ally VIII , except you summon a purple worm with the giant creature simple template.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Summon Froghemoth", school: "Conjuration (Summoning)", levels: "druid 9",
                          castingTime: "1 round", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one summoned creature", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as summon nature’s ally IX , except you summon a froghemoth.",
                          desc: "This spell functions as summon nature’s ally IX , except you summon a froghemoth.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Summon Minor Ally", school: "Conjuration (Summoning)", levels: "druid 1, hunter 1, ranger 1",
                          castingTime: "1 round", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "1d3 summoned creatures", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as summon nature’s ally I , except you can summon 1d3 Tiny or smaller animals, such as bats, lizards, monkeys, rats, ravens, toads, or weasels.",
                          desc: "This spell functions as summon nature’s ally I , except you can summon 1d3 Tiny or smaller animals, such as bats, lizards, monkeys, rats, ravens, toads, or weasels. The summoned animals must all be the same type of creature.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Summon Minor Monster", school: "Conjuration (Summoning)", levels: "antipaladin 1, arcanist 1, bard 1, cleric 1, medium 1, oracle 1, psychic 1, skald 1, sorcerer 1, summoner 1, summoner (unchained) 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 round", components: "V, S, F/DF (a tiny bag and a small candle)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "1d3 summoned creatures", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as summon monster I , except you can summon 1d3 Tiny or smaller animals, such as bats, lizards, monkeys, rats, ravens, toads, or weasels.",
                          desc: "This spell functions as summon monster I , except you can summon 1d3 Tiny or smaller animals, such as bats, lizards, monkeys, rats, ravens, toads, or weasels. The summoned animals must all be the same type of creature. As with animals summoned with",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Surmount Affliction", school: "Abjuration", levels: "cleric 2, inquisitor 2, oracle 2, spiritualist 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "you", area: "", targets: "personal",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "You temporarily overcome one harmful condition. This does not end the effect causing the condition; it just suspends that condition’s effect for the duration of the spell.",
                          desc: "You temporarily overcome one harmful condition. This does not end the effect causing the condition; it just suspends that condition’s effect for the duration of the spell. You can surmount any one of the following conditions: blinded, confused, dazed, dazzled, deafened, fatigued, frightened, paralyzed, shaken, or sickened.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Symbol of Healing", school: "Conjuration (Healing)", levels: "cleric 3, occultist 3, oracle 3, paladin 4, warpriest 3, witch 4",
                          castingTime: "10 minutes", components: "V, S, M (mercury and phosphorous, plus powdered diamond and opal worth a total of 500 gp)",
                          range: "0 ft.; see text", area: "one symbol", targets: "",
                          duration: "see text",
                          savingThrow: "Will half (harmless) (see text);", sr: true,
                          summary: "This spell functions as symbol of death , except all creatures within 60 feet of the",
                          desc: "This spell functions as symbol of death , except all creatures within 60 feet of the",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Symbol of Mirroring", school: "Illusion (Figment)", levels: "arcanist 2, mesmerist 2, occultist 2, redmantisassassin 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "10 minutes", components: "V, S, M (mercury and phosphorous, plus powdered diamond and opal worth a total of 100 gp)",
                          range: "0 ft.; see text", area: "one symbol", targets: "",
                          duration: "see text",
                          savingThrow: "Will partial (harmless);", sr: true,
                          summary: "This spell functions as symbol of death , except it instead creates one illusory duplicate of each creature within 60 feet of the symbol. These duplicates function as",
                          desc: "This spell functions as symbol of death , except it instead creates one illusory duplicate of each creature within 60 feet of the symbol. These duplicates function as",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Symbol of Revelation", school: "Divination", levels: "arcanist 4, cleric 4, occultist 3, oracle 4, sorcerer 4, warpriest 4, witch 4, wizard 4",
                          castingTime: "10 minutes", components: "V, S, M (mercury and phosphorous, plus powdered diamond and opal worth a total of 1,000 gp)",
                          range: "0 ft.; see text", area: "one symbol", targets: "",
                          duration: "see text",
                          savingThrow: "none;", sr: true,
                          summary: "This spell functions as symbol of death , except it is only activated by invisible creatures, creatures affected by an illusion (glamer) effect, creatures with the shapechanger subtype, or creatures…",
                          desc: "This spell functions as symbol of death , except it is only activated by invisible creatures, creatures affected by an illusion (glamer) effect, creatures with the shapechanger subtype, or creatures that have magically changed their shape. These creatures are outlined by a pale light that functions like",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Symbol of Scrying", school: "Divination (Scrying)", levels: "arcanist 5, cleric 5, occultist 4, oracle 5, sorcerer 5, warpriest 5, witch 5, wizard 5",
                          castingTime: "10 minutes", components: "V, S, M (mercury and phosphorous, plus powdered diamond and opal worth a total of 1,000 gp)",
                          range: "0 ft.; see text", area: "one symbol", targets: "",
                          duration: "see text",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as symbol of death , except that, when triggered, it creates a scrying sensor linked to you and centered on the symbol, even if you are on a different plane than the symbol.",
                          desc: "This spell functions as symbol of death , except that, when triggered, it creates a scrying sensor linked to you and centered on the symbol, even if you are on a different plane than the symbol. You are immediately aware that the symbol has been triggered if you are conscious, and are awakened from normal sleep if sleeping. The symbol does not otherwise disturb your concentration. You may observe the area through the symbol as if using a",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Symbol of Sealing", school: "Abjuration", levels: "arcanist 6, cleric 6, occultist 4, oracle 6, sorcerer 6, warpriest 6, witch 6, wizard 6",
                          castingTime: "10 minutes", components: "V, S, M (mercury and phosphorous, plus powdered diamond and opal worth a total of 5,000 gp)",
                          range: "0 ft.; see text", area: "one symbol", targets: "",
                          duration: "permanent",
                          savingThrow: "none;", sr: false,
                          summary: "This spell allows you to scribe a potent rune of power upon or above a door or other opening measuring no more than 20 square feet/level in size.",
                          desc: "This spell allows you to scribe a potent rune of power upon or above a door or other opening measuring no more than 20 square feet/level in size. When the casting is completed, the symbol immediately triggers, glowing visibly and sealing the door or opening with an invisible barrier of force equivalent to a wall of force . Destroying the symbol ends the effect, though destroying it once the symbol has been activated requires destroying the",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Symbol of Slowing", school: "Transmutation", levels: "arcanist 4, cleric 4, occultist 3, oracle 4, redmantisassassin 4, sorcerer 4, warpriest 4, witch 4, wizard 4",
                          castingTime: "10 minutes", components: "V, S, M (mercury and phosphorous, plus powdered diamond and opal worth a total of 1,000 gp)",
                          range: "0 ft.; see text", area: "one symbol", targets: "",
                          duration: "see text",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions as symbol of death , except all creatures within 60 feet of a",
                          desc: "This spell functions as symbol of death , except all creatures within 60 feet of a",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Symbol of Strife", school: "Enchantment (Compulsion)", levels: "arcanist 9, cleric 9, occultist 6, oracle 9, sorcerer 9, witch 9, wizard 9",
                          castingTime: "10 minutes", components: "V, S, M (mercury and phosphorous, plus powdered diamond opal worth a total of 15,000 gp)",
                          range: "0 ft.; see text", area: "one symbol", targets: "",
                          duration: "see text",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions as symbol of death , except all creatures within the radius of a",
                          desc: "This spell functions as symbol of death , except all creatures within the radius of a",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Symbol of Vulnerability", school: "Abjuration", levels: "arcanist 9, cleric 9, occultist 6, oracle 9, sorcerer 9, witch 9, wizard 9",
                          castingTime: "10 minutes", components: "V, S, M (mercury and phosphorous, plus powdered diamond opal worth a total of 15,000 gp)",
                          range: "0 ft.; see text", area: "one symbol", targets: "",
                          duration: "see text",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as symbol of death , except it saps the defenses of all creatures within 60 feet.",
                          desc: "This spell functions as symbol of death , except it saps the defenses of all creatures within 60 feet. Affected creatures receive a –4 penalty to spell resistance and a –4 penalty on saving throws, and energy resistances and damage reduction (if any) are reduced by 10 each (to a minimum of 0). Once triggered, the symbol remains active for 10 minutes per level. The effects last as long as the creature is within 60 feet of the symbol, and for 1 round per caster level afterward.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Tar Ball", school: "Transmutation", levels: "druid 2, hunter 2",
                          castingTime: "1 standard action", components: "V, S, M (a tiny ball of bitumen)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "ranged attack", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "You create a sticky ball of burning tar that you can hurl at your enemies as a ranged attack.",
                          desc: "You create a sticky ball of burning tar that you can hurl at your enemies as a ranged attack. If the tar ball strikes, it deals 1d4 points of fire damage + your Strength modifier, and splashes the target with hot, sticky tar. The tar deals 1d4 points of fire damage each round on the creature’s turn for the next 1d4 rounds and gives the target a –2 penalty to Dexterity for that duration. If desired, the target can use a full-round action to attempt to extinguish or cool the tar before taking this additional damage. Extinguishing or cooling the tar requires a DC 15 Reflex save or at least 1 gallon of nonflammable liquid. Rolling on the ground provides the target a +2 bonus on the save. Leaping into a lake or magically cooling the target automatically ends the effect.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Temporary Resurrection", school: "Necromancy", levels: "arcanist 7, occultist 6, psychic 7, sorcerer 7, witch 7, wizard 7",
                          castingTime: "10 minutes", components: "V, S, M (diamond dust worth 500 gp)",
                          range: "touch", area: "", targets: "dead creature touched",
                          duration: "24 hours",
                          savingThrow: "None", sr: false,
                          summary: "You restore temporary life to a body that has been dead for less than 48 hours. The spell lasts for 24 hours, after which the target dies again.",
                          desc: "You restore temporary life to a body that has been dead for less than 48 hours. The spell lasts for 24 hours, after which the target dies again. The target gains 1 permanent negative level while under the effect of this spell; this negative level goes away when the target dies or is permanently raised from the dead (such as with raise dead ). The target still counts as a dead corpse (but not undead) for the purpose of spells that revive dead creatures, so a cleric can cast",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Terrible Remorse", school: "Enchantment (Compulsion)", levels: "arcanist 4, bard 3, cleric 4, inquisitor 3, mesmerist 3, oracle 4, psychic 4, skald 3, sorcerer 4, spiritualist 4, warpriest 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "1 living creature",
                          duration: "1 round/level",
                          savingThrow: "Will partial (see text);", sr: true,
                          summary: "You fill a target with such profound remorse that it begins to harm itself.",
                          desc: "You fill a target with such profound remorse that it begins to harm itself. Each round, the target must save or deal 1d8 points of damage + its Strength modifier to itself using an item held in its hand or with unarmed attacks. If the creature saves, it is staggered for 1 round and takes a -2 penalty to Armor Class, after which the spell ends.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Touch of Slime", school: "Conjuration (Creation)", levels: "alchemist 4, arcanist 4, bloodrager 4, druid 4, hunter 4, investigator 4, psychic 4, sorcerer 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (a drop of acid and a black glass sphere)",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "You create a coating of slime on your hand. When you make a successful melee touch attack with the slime, it pulls free of you and sticks to the target, at which point it acts like green slime,…",
                          desc: "You create a coating of slime on your hand. When you make a successful melee touch attack with the slime, it pulls free of you and sticks to the target, at which point it acts like green slime, dealing 1d3 points of Constitution damage per round. Anything that destroys green slime (scraping, freezing, burning, cutting, sunlight, or remove disease ) destroys this slime. If the slime kills a creature, it consumes the body and then dies. It cannot transfer to a creature other than the original target, and dies if separated from the original target.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Toxic Gift", school: "Necromancy", levels: "antipaladin 2, arcanist 3, occultist 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "instantaneous; see text",
                          savingThrow: "Fortitude negates (see text);", sr: true,
                          summary: "You can cast this spell only if you are currently poisoned. You draw upon the poison in your body and duplicate its effects in the target, which is affected by the same poison you are, except it uses…",
                          desc: "You can cast this spell only if you are currently poisoned. You draw upon the poison in your body and duplicate its effects in the target, which is affected by the same poison you are, except it uses this spell’s DC instead of the poison’s normal DC. If you are affected by more than one poison, you must choose one to afflict upon the target.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Transmute Blood To Acid", school: "Transmutation", levels: "arcanist 9, psychic 9, sorcerer 9, wizard 9",
                          castingTime: "1 standard action", components: "V, S, M (a wax doll and a vial of acid worth 10 gp)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "concentration (maximum 1 round/5 levels)",
                          savingThrow: "Fortitude half;", sr: true,
                          summary: "You transmute blood in the target’s body to acid, dealing 1d6 points of acid damage/2 levels (maximum 12d6) each round. The creature is staggered and sickened by the debilitating pain.",
                          desc: "You transmute blood in the target’s body to acid, dealing 1d6 points of acid damage/2 levels (maximum 12d6) each round. The creature is staggered and sickened by the debilitating pain. A successful Fortitude save each round halves the damage and negates the staggered condition for 1 round. If this damage reduces the creature to 0 or fewer hit points, it dissolves, leaving only the barest trace of remains. A dissolved creature’s equipment is unaffected. Anyone who strikes the target with a non-reach melee weapon, natural weapon, or unarmed attack takes 3d6 points of acid damage as the acidic blood sprays on the attacker. If the attack is from a piercing or slashing manufactured weapon, the weapon also takes this damage. This spell has no effect on creatures immune to critical hits or bleed effects.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Unadulterated Loathing", school: "Enchantment (Compulsion)", levels: "antipaladin 2, arcanist 3, bard 2, mesmerist 2, psychic 3, skald 2, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 day/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You fill the target with a terrible loathing aimed at a specific creature. At the time of the casting, you designate a single creature as the object of the target’s revulsion.",
                          desc: "You fill the target with a terrible loathing aimed at a specific creature. At the time of the casting, you designate a single creature as the object of the target’s revulsion. Thereafter, the target does all it can to remain at least 60 feet away from the object of its loathing. As soon as the target moves within this range, it becomes nauseated until it can again get away from the object of its revulsion. If traveling beyond 60 feet of the object of its loathing would place the target in obvious physical danger, the target can attempt a second save to break the spell’s effect. Unadulterated loathing counters",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Unbreakable Construct", school: "Abjuration", levels: "arcanist 5, occultist 4, sorcerer 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (powdered adamantine worth 100 gp)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one construct",
                          duration: "1 round/level",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "This spell increases the target’s DR/adamantine by 5 or its hardness by 5. If the target does not have DR/adamantine or hardness, this spell has no effect.",
                          desc: "This spell increases the target’s DR/adamantine by 5 or its hardness by 5. If the target does not have DR/adamantine or hardness, this spell has no effect.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Undead Anatomy I", school: "Transmutation (Polymorph)", levels: "alchemist 3, arcanist 3, bloodrager 3, investigator 3, magus 3, redmantisassassin 3, sorcerer 3, spiritualist 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a piece of the creature whose form you plan to assume)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "When you cast this spell, you can assume the form of any Small or Medium corporeal creature of the undead type, which must be vaguely humanoid-shaped (like a ghoul, skeleton, or zombie).",
                          desc: "When you cast this spell, you can assume the form of any Small or Medium corporeal creature of the undead type, which must be vaguely humanoid-shaped (like a ghoul, skeleton, or zombie). You gain a bite attack (1d6 for Medium forms, 1d4 for Small forms), two claw or slam attacks (1d6 for Medium forms, 1d4 for Small forms), and darkvision 60 feet. If the form you assume has any of the following abilities, you gain the listed ability: climb 30 feet, fly 30 feet (average maneuverability), swim 30 feet, low-light vision, and scent. In this form, you detect as an undead creature (such as with detect undead , but not with magic that reveals your true form, such as",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Undead Anatomy II", school: "Transmutation (Polymorph)", levels: "alchemist 3, arcanist 3, bloodrager 3, investigator 3, magus 3, redmantisassassin 3, sorcerer 3, spiritualist 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a piece of the creature whose form you plan to assume)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as undead anatomy I , except it also allows you to assume the form of a Tiny or Large corporeal creature of the undead type.",
                          desc: "This spell functions as undead anatomy I , except it also allows you to assume the form of a Tiny or Large corporeal creature of the undead type. If the form you assume has any of the following abilities, you gain the listed ability: climb 60 feet, fly 60 feet (good maneuverability), swim 60 feet, darkvision 60 feet, low-light vision, blood drain, DR 5/bludgeoning, scent, freeze, grab, mimicry, pounce, shadowless, sound mimicry, and trip. In this form, you gain a +4 bonus on saves against mind-affecting effects, disease, poison, sleep, and stunning. If the form has a vulnerability to an attack (such as sunlight), you gain that vulnerability.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Undead Anatomy III", school: "Transmutation (Polymorph)", levels: "alchemist 3, arcanist 3, bloodrager 3, investigator 3, magus 3, redmantisassassin 3, sorcerer 3, spiritualist 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a piece of the creature whose form you plan to assume)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as undead anatomy II , except it also allows you to assume the form of a Diminutive or Huge corporeal creature of the undead type.",
                          desc: "This spell functions as undead anatomy II , except it also allows you to assume the form of a Diminutive or Huge corporeal creature of the undead type. If the form you assume has any of the following abilities, you gain the listed ability: burrow 30 feet, climb 90 feet, fly 90 feet (good maneuverability), swim 90 feet, all-around vision, blindsense 30 feet, darkvision 60 feet, low-light vision, scent, constrict, disease, DR 5/—, fear aura, grab, jet, natural cunning, overwhelming, poison, pounce, rake, trample, trip, unnatural aura, and web. If the creature has immunity or resistance to any energy types, you gain resistance 20 to those energy types. If the creature has vulnerability to an energy type, you gain that vulnerability. In this form, you gain a +8 bonus on saves against mind-affecting effects, disease, poison, sleep, and stunning. If the form has a vulnerability to an attack (such as sunlight), you gain that vulnerability.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Undead Anatomy IV", school: "Transmutation (Polymorph)", levels: "alchemist 3, arcanist 3, bloodrager 3, investigator 3, magus 3, redmantisassassin 3, sorcerer 3, spiritualist 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a piece of the creature whose form you plan to assume)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as undead anatomy III , except it allows you to use more abilities.",
                          desc: "This spell functions as undead anatomy III , except it allows you to use more abilities. If the form you assume has any of the following abilities, you gain the listed ability: burrow 60 feet, climb 90 feet, fly 120 feet (good maneuverability), swim 120 feet, blindsense 60 feet, darkvision 90 feet, lifesense 60 feet, low-light vision, scent, tremorsense 60 feet, breath weapon, constrict, DR 10/magic and silver, DR 15/bludgeoning and magic, fast healing 5, fiery death, fire aura, grab, incorporeal, jet, poison, pounce, rake, rend, roar, spikes, trample, trip, and web. If the creature’s form is incorporeal, the spell’s duration is in rounds per level instead of minutes per level, and your bite and claw (or slam) attacks are incorporeal touch attacks. If the creature has immunity or resistance to any energy types, you gain resistance 30 to those energy types. If the creature has vulnerability to an energy type, you gain that vulnerability. In this form, you gain a +8 bonus on saves against mind-affecting effects, disease, poison, sleep, and stunning. If the form has a vulnerability to an attack (such as sunlight), you gain that vulnerability.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Unholy Ice", school: "Transmutation", levels: "cleric 5, oracle 5, warpriest 5",
                          castingTime: "1 standard action", components: "V, S, M (a flask of unholy water or 5 pounds of powdered silver worth 25 gp)",
                          range: "medium (100 ft. + 10 ft./level)", area: "wall of ice or flying ice javelins (see text)", targets: "",
                          duration: "1 minute/level, instantaneous, or until expended (see text)",
                          savingThrow: "Reflex negates or none (see text);", sr: true,
                          summary: "This spell functions as holy ice , except it is made of frozen unholy water rather than holy water.",
                          desc: "This spell functions as holy ice , except it is made of frozen unholy water rather than holy water.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Unholy Sword", school: "Evocation", levels: "antipaladin 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "melee weapon touched",
                          duration: "1 round/level",
                          savingThrow: "none;", sr: false,
                          summary: "This spell allows you to channel the powers of evil into your sword, or any other melee weapon you choose.",
                          desc: "This spell allows you to channel the powers of evil into your sword, or any other melee weapon you choose. The weapon acts as a +5 unholy weapon (+5 enhancement bonus on attack and damage rolls, extra 2d6 damage against good opponents). It also emits a",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Unnatural Lust", school: "Enchantment (Compulsion)", levels: "arcanist 2, bard 1, mesmerist 1, psychic 2, skald 1, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round",
                          savingThrow: "Will negates;", sr: true,
                          summary: "Your target is filled with lust and desire for a single creature or object as designated by you at the time of casting.",
                          desc: "Your target is filled with lust and desire for a single creature or object as designated by you at the time of casting. That creature or object must be within the spell’s range and perceivable by the target of the spell. The target is filled with the compulsion to rush to the subject of its lust and passionately kiss or caress that subject on its next turn, taking no other actions. If the target would not normally have lustful feelings toward the designated creature or object, it receives a +4 bonus on its saving throw.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Unprepared Combatant", school: "Enchantment (Compulsion)", levels: "arcanist 1, bard 1, medium 1, mesmerist 1, psychic 1, skald 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 minute/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "The target takes a –4 penalty on initiative checks and Reflex saves.",
                          desc: "The target takes a –4 penalty on initiative checks and Reflex saves.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Unshakable Chill", school: "Necromancy", levels: "arcanist 2, bloodrager 2, druid 2, hunter 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "10 minutes/level; see text",
                          savingThrow: "Fortitude negates (see text);", sr: true,
                          summary: "The target is filled with an unshakable chill for the duration of the spell, and suffers from the effects of severe cold ( Core Rulebook 442).",
                          desc: "The target is filled with an unshakable chill for the duration of the spell, and suffers from the effects of severe cold ( Core Rulebook 442). Severe cold means if the initial saving throw fails, the target takes 1d6 points of nonlethal cold damage and must save every 10 minutes (using the DC of severe cold instead of this spell’s DC) or take additional damage.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Utter Contempt", school: "Enchantment", levels: "antipaladin 3, arcanist 6, bard 4, mesmerist 4, psychic 5, skald 4, sorcerer 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S, M (spittle)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 minute/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You fill the target’s heart with malice for all other creatures. The target’s attitude toward all creatures other than itself worsens by two steps.",
                          desc: "You fill the target’s heart with malice for all other creatures. The target’s attitude toward all creatures other than itself worsens by two steps.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Vengeful Outrage", school: "Enchantment (Compulsion)", levels: "arcanist 6, bard 5, mesmerist 5, psychic 6, skald 5, sorcerer 6, witch 6, wizard 6",
                          castingTime: "1 round", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 minute/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You place a magical command upon a creature to seek out and destroy a single enemy that has inflicted some perceived or actual harm to the target.",
                          desc: "You place a magical command upon a creature to seek out and destroy a single enemy that has inflicted some perceived or actual harm to the target. You designate the enemy at the time of casting, which must be known by the target (such as “your brother’s murderer”) or can easily identify by sight (such as “the hill giant king”). The target is under the effect of a geas to find and capture or kill this enemy, and the target takes the penalties of that spell as long as it is not actively trying to reach the enemy. When the target enters combat with the enemy, it gains a +6 morale bonus to Strength and Constitution, a +3 morale bonus on Will saves, and is immune to the shaken and frightened conditions. If you designate one of the target’s friends or loved ones as the enemy, the target gains another saving throw to overcome the spell as soon as it enters combat with the enemy.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Vermin Shape II", school: "Transmutation (Polymorph)", levels: "alchemist 4, arcanist 4, bloodrager 4, druid 3, hunter 3, investigator 4, magus 4, redmantisassassin 4, sorcerer 4, witch 3, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (a piece of the creature whose form you plan to assume)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as vermin shape I , except it also allows you to assume the form of a Tiny or Large creature of the vermin type.",
                          desc: "This spell functions as vermin shape I , except it also allows you to assume the form of a Tiny or Large creature of the vermin type. If the form you assume has any of the following abilities, you gain the listed ability: burrow 30 feet, climb 60 feet, fly 60 feet (good maneuverability), swim 60 feet, darkvision 60 feet, low-light vision, tremorsense 30 feet, scent, blood drain, constrict, grab, lunge, poison, pull, trample, and web. You don’t gain full immunity to mind-affecting effects, but you do gain a +4 bonus on all saving throws against such effects.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Vestment of the Champion", school: "Abjuration", levels: "antipaladin 2, paladin 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "armor or shield touched",
                          duration: "1 minute/level",
                          savingThrow: "none;", sr: false,
                          summary: "This functions as magic vestment , except it only affects armor or a shield you are wearing or carrying.",
                          desc: "This functions as magic vestment , except it only affects armor or a shield you are wearing or carrying. If the armor or shield is worn or carried by anyone other than you, the spell has no effect, but resumes its effect when you are wearing or carrying it again.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Virtuoso Performance", school: "Transmutation", levels: "bard 4, skald 4",
                          castingTime: "1 standard action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "While this spell is active, you may start a second bardic performance while maintaining another. Starting the second performance costs 2 rounds of bardic performance instead of 1.",
                          desc: "While this spell is active, you may start a second bardic performance while maintaining another. Starting the second performance costs 2 rounds of bardic performance instead of 1. Maintaining both performances costs a total of 3 rounds of bardic performance for each round they are maintained. When this spell ends, one of the performances ends immediately (your choice). Virtuoso performance does not stack with any other method of maintaining simultaneous bardic performances.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Vitriolic Mist", school: "Evocation", levels: "alchemist 4, arcanist 4, bloodrager 4, investigator 4, sorcerer 4, summoner 4, summoner (unchained) 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (a piece of lemon rind)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This functions as fire shield , except it wreathes you in yellow or green acidic mist instead of hot or cold flames. The spell deals acid damage to attackers and protects you against acid damage.",
                          desc: "This functions as fire shield , except it wreathes you in yellow or green acidic mist instead of hot or cold flames. The spell deals acid damage to attackers and protects you against acid damage. This spell does not shed light.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Vocal Alteration", school: "Transmutation", levels: "alchemist 1, arcanist 1, bard 1, inquisitor 1, investigator 1, medium 1, mesmerist 1, occultist 1, psychic 1, redmantisassassin 1, skald 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one humanoid creature",
                          duration: "1 minute/level",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "You alter the target’s voice to something else. For example, you could make the target’s voice high-pitched, husky, or nasal, or change its accent to an accent you are familiar with.",
                          desc: "You alter the target’s voice to something else. For example, you could make the target’s voice high-pitched, husky, or nasal, or change its accent to an accent you are familiar with. If this spell is used as part of a disguise, the target gets a +10 bonus on the Disguise check when trying to fool a listener. The target can vary the disguised voice just as it could its normal voice. For example, a halfling female given a male dwarf noble’s voice and accent could speak in falsetto, with a rural halfling accent, and so on.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Volcanic Storm", school: "Evocation", levels: "arcanist 4, bloodrager 4, druid 4, hunter 4, sorcerer 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M/DF (obsidian and ash)",
                          range: "long (400 ft. + 40 ft./level)", area: "cylinder (20-ft. radius, 40 ft. high)", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: true,
                          summary: "Chunks of hot volcanic rock and clumps of ash pound down when this spell is cast, dealing 3d6 points of bludgeoning damage and 2d6 points of fire damage to every creature in the area.",
                          desc: "Chunks of hot volcanic rock and clumps of ash pound down when this spell is cast, dealing 3d6 points of bludgeoning damage and 2d6 points of fire damage to every creature in the area. This damage only occurs once, when the spell is cast. For the remaining duration of the spell, heavy ash rains down in the area. Creatures inside this area take a –4 penalty on Perception skill checks and the entire area is treated as difficult terrain. At the end of the duration, the rock and ash disappear, leaving no aftereffects (other than the damage dealt).",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Wall of Sound", school: "Evocation", levels: "arcanist 5, bard 4, bloodrager 4, magus 4, psychic 5, skald 4, sorcerer 5, spiritualist 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (a tuning fork and a quartz crystal)",
                          range: "medium (100 ft. + 10 ft./level)", area: "translucent wall of sound up to 20 ft. long/level or a ring of sound with a radius of up to 5 ft./two levels; either form 20 ft. high", targets: "",
                          duration: "concentration + 1 round/level",
                          savingThrow: "none;", sr: true,
                          summary: "A translucent barrier of pure sound springs into existence. This wall is silent except for a faint hum, but bursts with discordant noise when touched by an object or creature.",
                          desc: "A translucent barrier of pure sound springs into existence. This wall is silent except for a faint hum, but bursts with discordant noise when touched by an object or creature. The wall deflects arrows, bolts, loose debris, and Small or smaller flying creatures like a wind wall spell, except these things rebound harmlessly rather than being directed upward. The burst of discordant noise deals 2d4 points of sonic damage to creatures within 10 feet of the triggering object or creature; touching or passing through the wall deals 2d6 points of sonic damage + 1 point of sonic damage per caster level (maximum +20). If you evoke the wall so that it appears where creatures are, each creature takes damage as if passing through the wall. A",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Wartrain Mount", school: "Enchantment (Compulsion)", levels: "antipaladin 1, bard 2, druid 2, hunter 1, inquisitor 1, mesmerist 2, paladin 1, ranger 1, skald 2",
                          castingTime: "1 minute", components: "V, S, M (a swatch of black cloth)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one indifferent or friendly animal",
                          duration: "1 hour/level",
                          savingThrow: "none;", sr: true,
                          summary: "You instill the target animal with the combat training general purpose (see the Handle Animal skill). This supersedes the animal’s previous trained purpose and any tricks it knows.",
                          desc: "You instill the target animal with the combat training general purpose (see the Handle Animal skill). This supersedes the animal’s previous trained purpose and any tricks it knows. When the spell ends, it reverts to its previous trained purpose and known tricks.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Waves of Ecstasy", school: "Enchantment (Compulsion)", levels: "arcanist 7, bard 6, cleric 7, mesmerist 6, oracle 7, psychic 7, skald 6, sorcerer 7, witch 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S",
                          range: "30 ft.", area: "cone-shaped burst", targets: "",
                          duration: "1 round/level; see text",
                          savingThrow: "Will partial (see text);", sr: true,
                          summary: "You emanate waves of intense pleasure that cause all targets within range to falter. Affected creatures are stunned for 1 round and are staggered for the remainder of the spell.",
                          desc: "You emanate waves of intense pleasure that cause all targets within range to falter. Affected creatures are stunned for 1 round and are staggered for the remainder of the spell. A creature that makes its save is staggered for the first round and can act normally thereafter.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Web Shelter", school: "Conjuration (Creation)", levels: "arcanist 2, cleric 2, druid 2, hunter 2, oracle 2, ranger 2, shaman 2, sorcerer 2, summoner 2, summoner (unchained) 2, warpriest 2, witch 2, wizard 2",
                          castingTime: "1 minute", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "5 ft.–10 ft. diameter web sphere or 5 ft.–20 ft. hemisphere", targets: "",
                          duration: "1 hour/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You create a shelter of slightly sticky webbing. The shelter has a hinged door large enough to accommodate a Medium creature.",
                          desc: "You create a shelter of slightly sticky webbing. The shelter has a hinged door large enough to accommodate a Medium creature. The opaque walls of the shelter measure 1 inch thick and provide total cover to anyone within it. Only Fine creatures with negligible Strength can be caught in the webbing (including swarms); all other creatures can pull themselves free without making a Strength check or taking an action. The webbing is sticky enough to hold twigs, leaves, dirt, and other light items, allowing you to conceal the shelter. The shelter is watertight and insulated when the door is closed. Its surface has a hardness of 0 and 2 hit points for every 5-foot square of web surface area. It takes normal damage from fire and burns as easily as wood. When the spell ends, the webbing decays rapidly and disappears.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Witness", school: "Divination (Scrying)", levels: "bard 3, inquisitor 3, medium 3, mesmerist 3, occultist 3, psychic 3, skald 3, witch 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "long (400 ft. + 40 ft./level)", area: "", targets: "one living creature",
                          duration: "1 minute/level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You link your senses to the target, allowing you to see and hear through its eyes and ears. As a move action you can shift your senses from yourself to the target or back again.",
                          desc: "You link your senses to the target, allowing you to see and hear through its eyes and ears. As a move action you can shift your senses from yourself to the target or back again. When using the target’s senses, you are blind and deaf. When perceiving through the target, you use its normal and special senses (such as darkvision), not your own.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Wooden Phalanx", school: "Conjuration (Creation)", levels: "arcanist 9, cleric 9, oracle 9, sorcerer 9, wizard 9",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "three or more wood golems, no two of which can be more than 30 ft. apart (see text)", targets: "",
                          duration: "1 hour/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You create 1d4+2 wood golems with the advanced template. The golems willingly aid you in combat or battle, perform a specific mission, or serve as bodyguards.",
                          desc: "You create 1d4+2 wood golems with the advanced template. The golems willingly aid you in combat or battle, perform a specific mission, or serve as bodyguards. You can only have one wooden phalanx spell in effect at one time. If you cast this spell while another casting is still in effect, the previous casting is dispelled.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Word of Resolve", school: "Abjuration", levels: "paladin 1",
                          castingTime: "1 immediate action", components: "V, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one ally",
                          duration: "instantaneous",
                          savingThrow: "Will negate (harmless);", sr: true,
                          summary: "You focus your aura on one ally, allowing it to reroll a failed saving throw against a charm or fear effect with a +4 sacred bonus.",
                          desc: "You focus your aura on one ally, allowing it to reroll a failed saving throw against a charm or fear effect with a +4 sacred bonus. If you do not have the aura of courage class ability, this spell has no effect on the target’s fear. If you do not have the aura of resolve class ability, this spell has no effect on any charm effects on the target.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Youthful Appearance", school: "Transmutation (Polymorph)", levels: "alchemist 1, arcanist 1, bard 1, investigator 1, medium 1, occultist 1, psychic 1, redmantisassassin 1, skald 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 hour/level",
                          savingThrow: "None", sr: false,
                          summary: "You make your target look like a younger version of itself. You select how much younger it looks (for example, “10 years” or “as a young adult”).",
                          desc: "You make your target look like a younger version of itself. You select how much younger it looks (for example, “10 years” or “as a young adult”). You cannot otherwise change details of the target’s appearance other than those directly associated with aging (for example, gray hair returns to its original color). The target cannot appear so much younger that it changes size. This spell does not affect any age-based modifications to ability scores or other age-related effects.",
                          source: "Ultimate Magic", isPremium: true),

                    // // MARK: - Ultimate Magic, Book of the Damned - Volume 2: Lords of Chaos, Inner Sea World Guide
        )
        try await db.insertSpell(
        .make("Vermin Shape I", school: "Transmutation (Polymorph)", levels: "alchemist 4, arcanist 4, bloodrager 4, druid 3, hunter 3, investigator 4, magus 4, redmantisassassin 4, sorcerer 4, witch 3, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (a piece of the creature whose form you plan to assume)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "When you cast this spell, you assume the form of any Small or Medium creature of the vermin type.",
                          desc: "When you cast this spell, you assume the form of any Small or Medium creature of the vermin type. If the form you assume has any of the following abilities, you gain the listed ability: climb 30 feet, fly 30 feet (average maneuverability), swim 30 feet, darkvision 60 feet, low-light vision, scent, and lunge. You don’t gain full immunity to mind-affecting effects, but you do gain a +2 resistance bonus on all saving throws against such effects. Small vermin : If you take the form of a Small vermin, you gain a +2 size bonus to your Dexterity and a +2 natural armor bonus.",
                          source: "Ultimate Magic, Book of the Damned - Volume 2: Lords of Chaos, Inner Sea World Guide", isPremium: true),

                    // // MARK: - Ultimate Magic, Pathfinder #14: Children of the Void, Inner Sea World Guide
        )
        try await db.insertSpell(
        .make("Interplanetary Teleport", school: "Conjuration (Teleportation)", levels: "arcanist 9, cleric 9, oracle 9, psychic 9, sorcerer 9, wizard 9",
                          castingTime: "1 standard action", components: "V",
                          range: "personal and touch", area: "", targets: "you and touched objects or other touched willing creatures",
                          duration: "instantaneous",
                          savingThrow: "none and Will negates (object);", sr: true,
                          summary: "This spell functions as teleport , except there is truly no range limit and you do not need to have seen your destination, though you must have a solid grasp of which world you wish to travel to…",
                          desc: "This spell functions as teleport , except there is truly no range limit and you do not need to have seen your destination, though you must have a solid grasp of which world you wish to travel to (“the third planet from the sun” is an acceptable destination, but “a habitable world near that bright star” is not). If you have a specific location on a planet in mind, you arrive there without a chance of failure; otherwise you arrive at a location that would not immediately be life-threatening. If no such safe landing zone exists on the world, such as someone attempting to travel into the sun without the proper precautions in place, the spell simply fails.",
                          source: "Ultimate Magic, Pathfinder #14: Children of the Void, Inner Sea World Guide", isPremium: true),

                    // // MARK: - Ultimate Wilderness
        )
        try await db.insertSpell(
        .make("Alpha Instinct", school: "Enchantment (Charm)", levels: "bard 3, druid 2, hunter 2, medium 2, mesmerist 2, ranger 2, shaman 2, skald 2",
                          castingTime: "10 minutes", components: "V, S, M (a bit of musk from an alpha wolf or another socially dominant animal)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 hour/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "Animals perceive you as a social superior. The starting attitude of animals you interact with improves by one step, and you gain a +2 morale bonus on Handle Animal checks.",
                          desc: "Animals perceive you as a social superior. The starting attitude of animals you interact with improves by one step, and you gain a +2 morale bonus on Handle Animal checks. Helpful animals provide simple assistance (such as using the aid another action on skill checks they understand) as long as the spell lasts, but they flee from attacks and do not support you in combat. At one point during the spell’s duration, you can issue a nonverbal command to helpful animals within 60 feet to forage for you; the animal or animals immediately head out into the wilderness to do just that. After 1 hour, the animals return to the location where you issued the command to make you an offering of edible food sufficient for one meal for you and a number of others equal to your caster level.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("Aquatic Cavalry", school: "Conjuration (Summoning)", levels: "antipaladin 2, druid 2, hunter 2, paladin 2, ranger 2, shaman 2, summoner 2, summoner (unchained) 2",
                          castingTime: "1 round", components: "V, S, DF",
                          range: "medium (100 ft. + 10 ft./level)", area: "1 hippocampus plus 1 hippocampus/3 caster levels", targets: "",
                          duration: "1 hour/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You summon a school of hippocampi (one plus one per 3 caster levels, to a maximum of six at 15th level) to serve as combat-trained mounts.",
                          desc: "You summon a school of hippocampi (one plus one per 3 caster levels, to a maximum of six at 15th level) to serve as combat-trained mounts. The hippocampi avoid combat if possible but defend themselves if attacked. If any hippocampus attacks, the remaining duration of the spell changes from 1 hour per level to 1 round per level (so if a full 4 hours remained, the hippocampi last for only 4 more rounds).",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("Callback, Greater", school: "Conjuration (Teleportation)", levels: "arcanist 2, shaman 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a crushed grasshopper)",
                          range: "long (400 ft. + 40 ft./level)", area: "", targets: "your familiar or spirit animal",
                          duration: "10 minutes/level or until expended (see text)",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "This spell functions as callback , except as noted above.",
                          desc: "This spell functions as callback , except as noted above.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("Cave Fangs", school: "Conjuration (Creation)", levels: "druid 5, hunter 5, shaman 5, witch 5",
                          castingTime: "1 standard action", components: "V, S, M (a sharp gemstone fragment worth 150 gp)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one 5-ft. square/level (S); the area must be a stone surface", targets: "",
                          duration: "1 day/level or until triggered (D)",
                          savingThrow: "Reflex half (see below);", sr: false,
                          summary: "You create a magical trap in the area that causes deadly stalactites or stalagmites to lurch out of the floor or ceiling of a stone surface to “bite” an intruder.",
                          desc: "You create a magical trap in the area that causes deadly stalactites or stalagmites to lurch out of the floor or ceiling of a stone surface to “bite” an intruder. The magical trap is triggered whenever a Small or larger creature (other than you or your animal companion, familiar, or spirit animal) moves through the affected area. The effect of cave fangs depends on whether you create stalactites or stalagmites (see below). You can place these trapped squares anywhere within the spell’s range; they need not be adjacent to each other, and you can create any mix of stalactites and stalagmites you wish.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("Companion Transportation", school: "Conjuration (Teleportation)", levels: "antipaladin 4, arcanist 5, druid 5, hunter 4, paladin 4, ranger 4, shaman 5, sorcerer 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, F (a feather, tuft of fur, or similar momento from your target)",
                          range: "long (400 ft. + 40 ft./level)", area: "", targets: "yourself and one animal companion, familiar, or spirit animal within range",
                          duration: "instantaneous",
                          savingThrow: "none (Harmless);", sr: false,
                          summary: "You trade places with the other target, teleporting as if you were both affected by dimension door . Both you and the other target arrive in a square you choose in the other’s former space.",
                          desc: "You trade places with the other target, teleporting as if you were both affected by dimension door . Both you and the other target arrive in a square you choose in the other’s former space. If the targets are different sizes, they must appear in locations that cover previously occupied squares. As with",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("Delectable Flesh", school: "Transmutation", levels: "arcanist 6, druid 7, shaman 7, sorcerer 6, witch 6, wizard 6 (Ghoran)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "all creatures in a 15-foot-radius burst centered on a single living creature",
                          duration: "1 minute/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "Choose a creature within range as the object of hunger. All other creatures within 15 feet of the target that can see or smell the target’s delectable flesh must succeed at a Will save or spiral into…",
                          desc: "Choose a creature within range as the object of hunger. All other creatures within 15 feet of the target that can see or smell the target’s delectable flesh must succeed at a Will save or spiral into a depraved state from which they gain a single purpose—to consume as much of the target’s delicious flesh as possible. The creature chosen as the target of this spell is not affected by this depravity. A depraved creature gains a bite attack, two claw attacks, and the scent ability if it didn’t already have them. It drops any items it was carrying and attacks the target of the spell with these natural weapons, acting as if it were confused and the target had attacked it first. This effect lasts for the spell’s duration or until the depraved creature can no longer see or smell the object of its hunger for a full minute. Additionally, a depraved creature can attempt a new saving throw to end this effect at the end of any turn in which the affected creature makes an attack against the object of its hunger. If a creature that eats for nourishment succeeds at a save to end the depraved effect early, it takes a –2 penalty on ability checks, attack rolls, concentration checks, saving throws, and skill checks whenever it is within 15 feet of the target.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("Die for Your Master", school: "Enchantment (Compulsion)", levels: "antipaladin 2, arcanist 3, druid 3, hunter 3, ranger 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 immediate action", components: "V, S",
                          range: "touch", area: "", targets: "your animal companion, familiar, or fiendish servant",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as bleed for your master , but it allows your companion or familiar to intercept any attack that targets you, including those that do not require attack rolls (e.g.,",
                          desc: "This spell functions as bleed for your master , but it allows your companion or familiar to intercept any attack that targets you, including those that do not require attack rolls (e.g.,",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("Earth Tremor", school: "Transmutation", levels: "arcanist 3, bloodrager 3, druid 3, hunter 3, magus 3, shaman 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "up to 30 ft. (see text)", area: "30-ft. line, 20-ft. cone-shaped spread, or 10-ft.-radius spread (see text)", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Reflex half (see text);", sr: false,
                          summary: "You strike the ground and unleash a tremor of seismic force, hurling up earth, rock, and sand.",
                          desc: "You strike the ground and unleash a tremor of seismic force, hurling up earth, rock, and sand. You choose whether the earth tremor affects a 30-foot line, a 20-foot cone-shaped spread, or a 10-foot-radius spread centered on you. The space you occupy is not affected by",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("Echo", school: "Illusion (Figment)", levels: "bard 1, druid 1, hunter 1, medium 1, mesmerist 1, occultist 1, psychic 1, ranger 1, skald 1, spiritualist 1, witch 1",
                          castingTime: "1 standard action", components: "S, F (a conch shell)",
                          range: "close (25 ft. + 5 ft./2 levels) or long (400 ft. + 40 ft./level); see text", area: "one 10--ft. cube/level (S)", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "Will disbelief (if interacted with);", sr: true,
                          summary: "You cause a sound heard in the target area up to 1 round ago and lasting up to 1 round in duration to repeat at a regular interval.",
                          desc: "You cause a sound heard in the target area up to 1 round ago and lasting up to 1 round in duration to repeat at a regular interval. The original sound need not have come from the area, but it echoes from the target area at its original full volume. Any special effects of the sound are not duplicated by this spell. If the area is naturally prone to echoes, such as a space surrounded on at least two sides by cliffs or high river banks, the spell’s range is long. Otherwise, the spell’s range is close. You can concentrate as a standard action to alter the echo. You can change it to be any sound audible in the area within the last 1 round, move the apparent source of the sound within the area, or attempt a Bluff check to create a distraction to hide with a bonus equal to your caster level.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("Fey Form I", school: "Transmutation (Polymorph)", levels: "alchemist 3, arcanist 4, bloodrager 3, druid 3, hunter 3, investigator 3, magus 4, shaman 3, sorcerer 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (a piece of the creature whose form you plan to assume)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "You assume the form of a Small or Medium creature of the fey type.",
                          desc: "You assume the form of a Small or Medium creature of the fey type. Your base speed changes to match the new form’s base speed, with a maximum speed of 60 feet (even if the chosen fey form has a base speed in excess of that speed). If the form you assume has any of the following abilities, you gain those abilities: climb speed 30 feet, fly speed 30 feet (average maneuverability), swim speed 30 feet, darkvision 60 feet, low-light vision, scent, and boot stomp. If the form you assume has the aquatic subtype, you can breathe air and water. If the creature has any weaknesses, you gain those weaknesses. If a listed ability depends on an item (as is the case with boot stomp), this spell transforms the nearest counterpart among your worn gear into that item. You can more easily cast spells that the creature has as spell-like abilities, although you must still cast them as normal for your class. When you cast a spell that the creature has as a spell-like ability, it requires no verbal or somatic components and can’t be countered. Small Fey : If you assume this form, you gain a +2 size bonus to your Dexterity and Constitution scores.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("Fey Form II", school: "Transmutation (Polymorph)", levels: "alchemist 3, arcanist 4, bloodrager 3, druid 3, hunter 3, investigator 3, magus 4, shaman 3, sorcerer 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (a piece of the creature whose form you plan to assume)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as fey form I , except it also allows you to assume the form of a Tiny or Large creature of the fey type. Your base speed can’t increase above 90 feet this way.",
                          desc: "This spell functions as fey form I , except it also allows you to assume the form of a Tiny or Large creature of the fey type. Your base speed can’t increase above 90 feet this way. If the form you assume has any of the following abilities, you gain those abilities: burrow speed 30 feet, climb speed 90 feet, fly speed 60 feet (good maneuverability), swim speed 60 feet, all-around vision, blindsense 30 feet, darkvision 60 feet, low-light vision, scent, see in darkness, abduct, animated hair, bleed, blood rage, boot stomp, burn, compression, constrict, crushing leap, DR 2/cold iron, grab, heavy weapons, icewalking, kneecapper, nasal spray, no shadow, oversized weapons, poison, putrid vomit, rock throwing (50 feet, 1d6 damage), sound mimicry, trackless step, trample, tree meld, undersized weapons, and woodland stride. If the creature has immunity to mind-affecting effects or poison, you gain a +4 resistance bonus on saves against those effects. If the creature has any weaknesses, you gain them.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("Fey Form III", school: "Transmutation (Polymorph)", levels: "alchemist 3, arcanist 4, bloodrager 3, druid 3, hunter 3, investigator 3, magus 4, shaman 3, sorcerer 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (a piece of the creature whose form you plan to assume)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as fey form II except it allows you to assume the form of a Diminutive or Huge creature of the fey type.",
                          desc: "This spell functions as fey form II except it allows you to assume the form of a Diminutive or Huge creature of the fey type. If the form you assume has any of the following abilities, you gain those abilities: burrow speed 60 feet, climb speed 90 feet, fly speed 90 feet (good maneuverability), swim speed 90 feet, all-around vision, blindsense 60 feet, blindsight 30 feet, darkvision 90 feet, low-light vision, scent, see in darkness, tremorsense 60 feet, abduct, animated hair, bleed, blood rage, boot stomp, burn, compression, constrict, crushing leap, DR 5/cold iron, fear aura, frightful presence, grab, heavy weapons, icewalking, kneecapper, luminous, nasal spray, no shadow, oversized weapons, poison, putrid vomit, rend, rock throwing (100 feet, 2d6 damage), sound mimicry, supernatural speed, tear shadow, trackless step, trample, tree meld, undersized weapons, and woodland stride. If the creature has immunity or resistance to any energy types, you gain resistance 20 to those energy types. If the creature has immunity to mind-affecting effects or poison, you gain a +8 resistance bonus on saves against those effects. If the creature has any weaknesses, you gain those weaknesses.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("Fey Form IV", school: "Transmutation (Polymorph)", levels: "alchemist 3, arcanist 4, bloodrager 3, druid 3, hunter 3, investigator 3, magus 4, shaman 3, sorcerer 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (a piece of the creature whose form you plan to assume)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as fey form III except it doesn’t limit your base speed and also allows you to use more abilities.",
                          desc: "This spell functions as fey form III except it doesn’t limit your base speed and also allows you to use more abilities. If the form you assume has any of the following abilities, you gain those abilities: burrow speed 60 feet, climb speed 90 feet, fly speed 120 feet (good maneuverability), swim speed 120 feet, all-around vision, blindsense 60 feet, blindsight 30 feet, darkvision 90 feet, low-light vision, scent, see in darkness, tremorsense 60 feet, abduct, animated hair, beguiling aura, bleed, blood rage, boot stomp, burn, compression, constrict, crushing leap, DR 5/cold iron, fast healing 5, fear aura, frightful presence, grab, heavy weapons, hide in plain sight, icewalking, kneecapper, luminous, nasal spray, no shadow, oversized weapons, poison, putrid vomit, rend, rock throwing (120 feet, 2d10 damage), sound mimicry, supernatural speed, tear shadow, trackless step, trample, transparency, tree meld, undersized weapons, vault, and woodland stride. If the creature has immunity or resistance to any energy types, you gain resistance 30 to those energy types. If the creature has immunity to mindaffecting effects or poison, you gain a +8 resistance bonus on saves against those effects. If the creature has spell resistance, you gain spell resistance 6 + your caster level. If the creature has any weaknesses, you gain those weaknesses.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("Flashfire", school: "Evocation", levels: "druid 3, hunter 3, shaman 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "one 5-ft. square/2 levels", targets: "",
                          duration: "1 round/level",
                          savingThrow: "Reflex negates (object) and Fortitude negates;", sr: true,
                          summary: "You cause flames to spring up in the area of effect. These flames deal 1d6 points of fire damage for every 3 caster levels you have (maximum 5d6) to each creature that enters a burning area or begins…",
                          desc: "You cause flames to spring up in the area of effect. These flames deal 1d6 points of fire damage for every 3 caster levels you have (maximum 5d6) to each creature that enters a burning area or begins its turn in the area; these creatures also catch on fire. A creature that succeeds at a Reflex save negates the damage and avoids catching on fire. The area and all adjacent 5-foot squares are smoky, providing concealment within. You can concentrate as a standard action to ignite one 5-foot square adjacent to a currently burning square. Heavy precipitation (including sleet storm ) ends the spell. Strong and severe winds spread each square of",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("Forest's Sense", school: "Divination (Scrying)", levels: "druid 4, hunter 3, ranger 3, shaman 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "1 mile/level", area: "", targets: "one creature",
                          duration: "1 minute/level (D); see text",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You can sense the location of a target creature within range if it is also within 10 feet of a living plant or fungus.",
                          desc: "You can sense the location of a target creature within range if it is also within 10 feet of a living plant or fungus. You must be able to target the creature by tangible qualities such as its build, clothing texture, size, or tracks, but you need not have line of effect to your target. The fungus or plants near the target serve as a scrying sensor for this spell. Your senses of hearing, smell, and touch extend to all fungus and plants within 10 feet of the target, allowing you to gauge the size and shape of nearby objects and potentially to overhear conversations in which the target is currently participating. Your scent ability and tremorsense extend through this scrying sensor if you have them, but any other special senses you might have do not. For 1 day after casting this spell, you gain a +5 insight bonus on Survival checks to track creatures you sensed via the spell. You can dismiss this bonus on Survival checks.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("Grasping Vine", school: "Transmutation", levels: "alchemist 2, arcanist 2, druid 2, hunter 2, investigator 2, occultist 2, ranger 2, shaman 2, sorcerer 2, witch 2, wizard 2 (Vine Leshy)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "You cause a long, thin vine to sprout from your body—typically from the center of your chest or from the palm of an outstretched hand.",
                          desc: "You cause a long, thin vine to sprout from your body—typically from the center of your chest or from the palm of an outstretched hand. As a standard action, you can direct the end of the vine to move to any square within 20 feet of you and perform one of the following tasks: deliver a touch spell that you cast after the vine has grown, pick up an unattended object weighing 20 pounds or less, give a held object to another creature, attempt to disable a trap or lock using your Disable Device modifier with a –2 penalty, or perform any other task that the GM deems reasonable. The vine does not threaten squares and cannot make attacks of opportunity, nor can it wield weapons.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hidden Spring", school: "Transmutation", levels: "cleric 1, druid 1, hunter 1, oracle 1, ranger 1, shaman 1, warpriest 1, witch 1",
                          castingTime: "1 hour", components: "V, S, F (a Y-shaped wooden rod)",
                          range: "touch", area: "a spring of fresh water", targets: "",
                          duration: "1 hour/level",
                          savingThrow: "none;", sr: false,
                          summary: "You spend 1 hour in quiet meditation, holding the focus component in both hands and walking around a natural area.",
                          desc: "You spend 1 hour in quiet meditation, holding the focus component in both hands and walking around a natural area. You are simultaneously drawn to areas of natural moisture while drawing that moisture closer. As the spell’s casting time concludes, you thrust the focus component into the ground. From that point, a fresh, clean water trickles forth at a rate of 1 gallon every 10 minutes. You cannot cast this spell inside a building or in an area of worked stone, but you can cast it underground. You cannot cast this spell within 1 mile of an existing hidden spring .",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("Leshy Swarm", school: "Conjuration (Summoning)", levels: "arcanist 3, bard 3, druid 3, hunter 3, skald 3, sorcerer 3, summoner 3, wizard 3 (Vine Leshy)",
                          castingTime: "1 round", components: "V, S, M/DF (a bundle of seeds)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "10-ft.-square swarm of leshys", targets: "",
                          duration: "1 round/level",
                          savingThrow: "none;", sr: false,
                          summary: "You call out to nearby nature spirits and grant them temporary plant bodies. These creatures are similar to leshys, except they are Tiny and far more simpleminded.",
                          desc: "You call out to nearby nature spirits and grant them temporary plant bodies. These creatures are similar to leshys, except they are Tiny and far more simpleminded. The swarm uses the statistics for a rat swarm, except it does not carry a disease or have scent. The leshy swarm has darkvision with a range of 60 feet and is immune to electricity, mind-affecting effects, paralysis, poison, polymorph, sleep effects, sonic, and stunning. You can direct the leshy swarm to move up to its speed along a path for your choice by spending a standard action to communicate your desires through the spell, or by spending a move action if you can speak to creatures that understand only Druidic and Sylvan. The leshys are confused by their sudden possession of new bodies and assume that nearly any creature you direct them toward is a threat. They attack all creatures within their area except for you and other creatures with the plant type.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mirage", school: "Illusion (Figment)", levels: "bard 3, druid 3, hunter 3, mesmerist 3, occultist 3, psychic 3, ranger 3, skald 3",
                          castingTime: "10 minutes", components: "V, S, M (a pinch of sand and a drop of water)",
                          range: "long (400 ft. + 40 ft./level)", area: "one 40-ft.-cube/level (S)", targets: "",
                          duration: "2 hours/level (D)",
                          savingThrow: "Will disbelief (see below);", sr: true,
                          summary: "You create an image of a pool of water, a group of standing stones, a cove, an island, or another simple land formation over a stretch of flat land or water.",
                          desc: "You create an image of a pool of water, a group of standing stones, a cove, an island, or another simple land formation over a stretch of flat land or water. The image is purely visual, and structures, equipment, and creatures within the area are not hidden or changed in appearance. Anyone interacting with the illusion can attempt to disbelieve it, and a creature trained in Survival can make a special attempt to disbelieve the illusion. The creature must be within 120 feet of the illusion’s area and can attempt a Survival check instead of a Will saving throw. If the result is equal to or greater than the spell’s save DC, the creature realizes the mirage is an illusion as if it disbelieved the spell.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ooze Form I", school: "Transmutation (Polymorph)", levels: "alchemist 5, arcanist 5, investigator 5, magus 5, sorcerer 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (a bit of the creature whose form you plan to assume)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "You assume the form of a Small or Medium ooze. Regardless of the type of ooze you transform into, you gain base speed 10 feet, climb speed 10 feet, swim speed 20 feet, and blindsense 30 feet.",
                          desc: "You assume the form of a Small or Medium ooze. Regardless of the type of ooze you transform into, you gain base speed 10 feet, climb speed 10 feet, swim speed 20 feet, and blindsense 30 feet. You gain a +4 resistance bonus on saving throws against mind-affecting effects and poison. A wood or metal weapon that strikes you takes acid damage as if from your slam unless the wielder succeeds at a Reflex saving throw. Small Ooze : If you assume this form, you gain a +4 size bonus to your Constitution score, a slam attack (1d3 plus 1d3 acid), and constrict (1d3), and take , a –4 penalty to your Dexterity score.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ooze Form II", school: "Transmutation (Polymorph)", levels: "alchemist 5, arcanist 5, investigator 5, magus 5, sorcerer 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (a bit of the creature whose form you plan to assume)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as ooze form I except you can also assume the form of a Large ooze. You gain blindsight 30 feet and immunity to critical hits and precision damage as well.",
                          desc: "This spell functions as ooze form I except you can also assume the form of a Large ooze. You gain blindsight 30 feet and immunity to critical hits and precision damage as well.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ooze Form III", school: "Transmutation (Polymorph)", levels: "alchemist 5, arcanist 5, investigator 5, magus 5, sorcerer 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (a bit of the creature whose form you plan to assume)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as ooze form II except you can also assume the form of a Huge ooze.",
                          desc: "This spell functions as ooze form II except you can also assume the form of a Huge ooze. You gain blindsight 60 feet and a +8 resistance bonus on saving throws against mind-affecting effects and poison as well.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("Replay Tracks", school: "Divination", levels: "druid 5, hunter 2, inquisitor 4, medium 3, occultist 3, psychic 5, ranger 2",
                          castingTime: "3 rounds", components: "V, S, F (a track or other sign of a creature's passing found with Perception or Survival)",
                          range: "personal", area: "", targets: "you",
                          duration: "concentration, up to 1 hour/level",
                          savingThrow: "None", sr: false,
                          summary: "This spell allows you to reconstruct past events that occurred in your current location based on the tracks and other signs left behind.",
                          desc: "This spell allows you to reconstruct past events that occurred in your current location based on the tracks and other signs left behind. Replay tracks reveals events that occurred while the tracks that serve as the focus for the spell were being left, revealing events in the order they happened in real time or in reverse, depending on whether you are following the tracks forward or backward, although the image isn’t clear enough to make out details (such as a creature’s exact identity). You can attempt Survival checks to follow tracks as part of concentrating on the spell, but only events connected to the tracks used as the focus of the spell are revealed by the spell. Elements that left no trace detectable by you, such as creatures benefitting from",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ropeweave", school: "Transmutation", levels: "hunter 2, occultist 2, ranger 2",
                          castingTime: "1 minute", components: "V, S, F (a rope)",
                          range: "touch", area: "", targets: "one rope",
                          duration: "1 hour/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You cause the target rope to grow in length and weave itself into one of several forms, each of which can support up to 1,000 pounds, plus 200 pounds per caster level (maximum 3,000 pounds at 10th…",
                          desc: "You cause the target rope to grow in length and weave itself into one of several forms, each of which can support up to 1,000 pounds, plus 200 pounds per caster level (maximum 3,000 pounds at 10th level). Only one type of construction can be created with each casting of the spell, and the creation remains stationary unless destroyed. Each 5-foot section of the object created by this spell has a break DC of 23, AC 11, and 1 hit point per caster level (maximum 10 hp), but all sections of the creation are magically supported and need not be anchored to a solid surface or any other portion of the effect. Destroying one part of it does not cause the remainder of the structure to collapse, though each 5-foot section destroyed reduces the maximum weight the creation can support by 200 pounds. During any round in which the rope is overloaded, every remaining section takes 1d4 points of damage. You can use",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sea Stallion", school: "Transmutation (Polymorph)", levels: "druid 2, hunter 2, paladin 2, ranger 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "a creature you are mounted upon",
                          duration: "10 minutes/level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions as sea steed , but as long as you stay mounted on the target, you also gain the amphibious quality and your melee attacks function as if you were under the effect of freedom of…",
                          desc: "This spell functions as sea steed , but as long as you stay mounted on the target, you also gain the amphibious quality and your melee attacks function as if you were under the effect of freedom of movement. The benefits you gain from this spell are not polymorph effects. If you dismount from the target, you retain the amphibious quality for up to 1 minute, but not the other benefits. You regain all of the benefits once you mount the target creature again.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sea of Dust", school: "Transmutation", levels: "druid 9",
                          castingTime: "1 hour", components: "V, S, DF",
                          range: "0 ft.", area: "2-mile-radius emanation", targets: "",
                          duration: "permanent",
                          savingThrow: "none;", sr: false,
                          summary: "You cause all areas of water to which you have line of effect to recede as if you had cast control water .",
                          desc: "You cause all areas of water to which you have line of effect to recede as if you had cast control water . Exposed water that enters the area ebbs away, evaporating or leaching into the ground at a rate of 1 foot of depth per hour. Living creatures in the area when the spell is cast are parched with thirst and take a –4 penalty on Constitution checks to resist the effects of a hot climate, and their daily water requirement to avoid thirst doubles (",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("Seed Spies", school: "Divination", levels: "arcanist 3, druid 2, hunter 2, occultist 2, ranger 2, shaman 3, sorcerer 3, witch 3, wizard 3 (Gathlain)",
                          castingTime: "1 round", components: "V, S, M (a drop of honey)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "up to one insect spy/4 levels", targets: "",
                          duration: "10 minutes/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as insect spies , except it creates wafting seeds with magical intellect instead of insects. The seeds can hear but not see.",
                          desc: "This spell functions as insect spies , except it creates wafting seeds with magical intellect instead of insects. The seeds can hear but not see. They fly at a speed of 10 feet (good maneuverability), but they can’t crawl or climb, although they can cling to rough, soft, or sticky creatures or surfaces.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("Shapechanger's Gift", school: "Transmutation (Polymorph)", levels: "alchemist 5, arcanist 5, investigator 5, magus 5, sorcerer 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (a piece of the creature whose form you plan to assume)",
                          range: "touch", area: "", targets: "willing living creature touched",
                          duration: "10 minutes/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "You change the target into an animal (as per beast shape I ), humanoid (as per",
                          desc: "You change the target into an animal (as per beast shape I ), humanoid (as per",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("Shapechanger's Gift, Greater", school: "Transmutation (Polymorph)", levels: "alchemist 5, arcanist 5, investigator 5, magus 5, sorcerer 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (a piece of the creature whose form you plan to assume)",
                          range: "touch", area: "", targets: "willing living creature touched",
                          duration: "10 minutes/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "This spell functions as shapechanger’s gift except the chosen form can be an animal (as per",
                          desc: "This spell functions as shapechanger’s gift except the chosen form can be an animal (as per",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("Soothing Mud", school: "Conjuration (Healing)", levels: "druid 3, hunter 3, ranger 3, shaman 3",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "medium (100 ft. + 10 ft./level)", area: "dust, earth, sand, or water in one 5-ft. square/level", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You create an area of healing mud. Water, earth, sand, and dust thicken into a wet mud.",
                          desc: "You create an area of healing mud. Water, earth, sand, and dust thicken into a wet mud. The mud functions as difficult terrain and does not sink if created in water unless weighed down by more than 100 pounds per caster level you have. Each round a creature begins its turn in or on the mud, the mud restores 1 hit point to it; this healing is unaffected by effects that increase a creature’s healing. A creature that rests partially or completely submerged in this mud for 1 full minute is also healed of 1d4 points of ability damage to an ability score of its choice. A creature can be healed of ability damage this way only once per day.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sturdy Tree Fort", school: "Transmutation", levels: "druid 5, hunter 4, ranger 4",
                          castingTime: "1 minute", components: "V, S, F (a nail, a rope, and a short wooden plank)",
                          range: "touch", area: "one large tree and a sturdy wooden house", targets: "",
                          duration: "1 hour/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You cause a large tree to grow in the 5-foot square you touch.",
                          desc: "You cause a large tree to grow in the 5-foot square you touch. The tree has 1 foot of thickness for every 4 caster levels you have, and it can grow to any height you designate, up to 5 feet high per caster level you have. If there is a ceiling or other barrier overhead, the maximum height of the tree cannot exceed the space available. At any point along the tree’s height, you can create a sturdy wooden building that fills one 10-foot cube for every 4 caster levels you have. All portions of the structure must be adjacent to the trunk of the tree (or can have the tree trunk extend up through their spaces), but otherwise these cubes need not be contiguous. If you place the cubes so that they are contiguous, the buildings merge together, complete with ladders connecting different vertical levels. The fort is magically supported, but if the tree it is attached to is destroyed, the structure is destroyed as well (the tree has hardness 5 and 20 hp per caster level you have). Each building you create has shuttered arrow slits on its walls and in the floor, granting those within the structure improved cover against attacks from outside while the arrow slits are open and total cover when they are closed. Each cube within the fort is equivalent to a secure shelter , other than the size and its wooded construction material (hardness 5). When you cast",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("Tail Current", school: "Transmutation", levels: "arcanist 4, bloodrager 4, cleric 4, druid 3, hunter 3, magus 4, occultist 3, oracle 4, ranger 3, shaman 3, sorcerer 4, spiritualist 3, warpriest 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "120 ft.", area: "", targets: "one or more creatures, no two of which can be more than 120 feet apart",
                          duration: "1 hour/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions as tailwind except it creates a helpful current in water instead of in the air. It grants free movement while swimming rather than while flying and functions only underwater.",
                          desc: "This spell functions as tailwind except it creates a helpful current in water instead of in the air. It grants free movement while swimming rather than while flying and functions only underwater.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("Tailwind", school: "Transmutation", levels: "arcanist 4, bloodrager 4, cleric 4, druid 3, hunter 3, magus 4, occultist 3, oracle 4, ranger 3, shaman 3, sorcerer 4, spiritualist 3, warpriest 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "120 ft.", area: "", targets: "one or more creatures, no two of which can be more than 120 feet apart",
                          duration: "1 hour/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You compel the wind to push the targets in a direction of your choice. The subjects can hustle during local and overland movement without risk of fatigue.",
                          desc: "You compel the wind to push the targets in a direction of your choice. The subjects can hustle during local and overland movement without risk of fatigue. If the subjects are flying, the first 20 feet of movement each round in the chosen direction does not count against their movement for the round. Each creature remains affected only while within 120 feet of every other subject. You can change the tailwind’s direction once per hour by concentrating as a standard action. This spell has no effect underwater. Tail Current",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("Tamer's Lash", school: "Evocation", levels: "bard 1, bloodrager 1, hunter 1, magus 1, ranger 1, skald 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "0 ft.", area: "a whip of magical sound", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "Will partial (see text);", sr: true,
                          summary: "A 15-foot-long whip of sonic energy springs from your hand, delivering a loud crack when you strike with it.",
                          desc: "A 15-foot-long whip of sonic energy springs from your hand, delivering a loud crack when you strike with it. The tamer’s lash acts as a whip that deals 1d4 points of sonic damage on a hit, but it has no physical substance and you cannot use it to perform combat maneuvers, nor can it be sundered or disarmed. If you strike an animal with the",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("Tidal Surge", school: "Conjuration (Creation)", levels: "druid 5, hunter 5, shaman 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "30 ft. or 60 ft.; see text", area: "cone-shaped burst or line; see text", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Reflex half;", sr: false,
                          summary: "If you cast tidal surge on land, you create an onrushing surge of water 10 feet high in a 30-foot cone that deals 1d6 points of bludgeoning damage for every 2 caster levels you have (maximum 10d6 at…",
                          desc: "If you cast tidal surge on land, you create an onrushing surge of water 10 feet high in a 30-foot cone that deals 1d6 points of bludgeoning damage for every 2 caster levels you have (maximum 10d6 at 20th level) and extinguishes all nonmagical fires in the area. Magical fire effects in the area of a",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("Vigilant Rest", school: "Abjuration", levels: "antipaladin 3, bard 4, hunter 3, medium 3, mesmerist 4, occultist 3, paladin 3, psychic 4, ranger 3, shaman 4, skald 4, spiritualist 4, witch 4",
                          castingTime: "1 standard action", components: "V, S, M (a handful of crushed glass)",
                          range: "touch", area: "", targets: "1 living creature touche",
                          duration: "8 hours (D)",
                          savingThrow: "Will (harmless);", sr: true,
                          summary: "While the target of this spell is asleep, she retains some of her normal powers of perception.",
                          desc: "While the target of this spell is asleep, she retains some of her normal powers of perception. While she tunes out harmless sounds such as the crackling of the campfire, crickets, or light breezes, she does not take the normal +10 modifier to the DC of Perception checks she attempts while asleep. If the target detects a threat or unexplained noise while sleeping, she can wake immediately and stand up from her sleeping position as a free action. If the target is roused but returns to sleep during the spell’s duration, she falls asleep immediately and does not count as having her sleep interrupted, even if she engaged in combat while she was awake.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("Waft", school: "Transmutation", levels: "arcanist 5, cleric 5, druid 5, hunter 5, magus 5, occultist 5, oracle 5, shaman 5, sorcerer 5, spiritualist 5, warpriest 5, wizard 5 (Gathlain)",
                          castingTime: "1 standard action", components: "V, S, M (a dandelion seed)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "up to one creature per 2 levels, no two of which can be more than 30 ft. apart",
                          duration: "1 hour/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You make the targets light enough to be carried by wind. Creatures affected by this spell suffer cumulative penalties for attacking as if under the effects of levitate unless they have a fly speed.",
                          desc: "You make the targets light enough to be carried by wind. Creatures affected by this spell suffer cumulative penalties for attacking as if under the effects of levitate unless they have a fly speed. Treat each target as two size categories lighter for the purposes of being checked or blown away by wind. If a target has a fly speed, it can fly overland at the wind’s speed in the same direction as the wind by succeeding at a DC 20 Fly check. If a creature flying overland this way attempts to change direction, it risks being blown away as usual. By linking hands or creating a connection with rope, creatures affected by this spell can be towed through the air by a flying creature as if each weighed only one-eighth its actual weight.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("Wing Bounty", school: "Conjuration (Creation)", levels: "druid 2, hunter 2, shaman 2 (Gathlain)",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "0 ft.", area: "2d4 berries + 2 berries/level", targets: "",
                          duration: "1 day/level",
                          savingThrow: "none;", sr: false,
                          summary: "Your wings sprout a variety of colorful and flavorful berries. Each berry functions as if affected by goodberry .",
                          desc: "Your wings sprout a variety of colorful and flavorful berries. Each berry functions as if affected by goodberry . You can choose for one affected berry to also be poisonous (as striped toadstool); only you and druids of 5th level or higher can tell which is which without magic.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("Wing Thorns", school: "Transmutation", levels: "alchemist 3, antipaladin 3, bloodrager 3, druid 3, hunter 3, investigator 3, magus 4, shaman 3, witch 3 (Gathlain)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "Your wings sprout poisonous thorns each the size of a dagger. You can use these thorns like armor spikes. In addition, you can make two wing attacks as primary natural weapons.",
                          desc: "Your wings sprout poisonous thorns each the size of a dagger. You can use these thorns like armor spikes. In addition, you can make two wing attacks as primary natural weapons. If you are Small, the wings deal 1d3 points of bludgeoning and piercing damage plus your Strength modifier (unless you also attack with a weapon, in which case they are treated as a secondary natural weapon). A creature damaged by your wing thorns experiences intense itching, gaining the sickened condition while the spell lasts unless it succeeds at a Fortitude saving throw.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("With the Wind", school: "Abjuration", levels: "arcanist 2, bloodrager 2, druid 2, hunter 2, magus 2, occultist 2, ranger 2, sorcerer 2, spiritualist 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You create eddies in the air around the subject that protect it from being checked or blown away. The target can’t be moved by winds of less than windstorm force unless it wishes to be.",
                          desc: "You create eddies in the air around the subject that protect it from being checked or blown away. The target can’t be moved by winds of less than windstorm force unless it wishes to be.",
                          source: "Ultimate Wilderness", isPremium: true)
        )
        try await db.insertSpell(
        .make("Wooden Wing Shield", school: "Transmutation", levels: "bloodrager 4, druid 4, hunter 4, magus 5, shaman 4, summoner 4 (Gathlain)",
                          castingTime: "1 immediate action", components: "S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level or until you move",
                          savingThrow: "None", sr: false,
                          summary: "Your wings transmute into a wooden barrier resembling a tower shield to block attacks, granting you a +4 shield bonus to AC. If you move, the spell ends immediately.",
                          desc: "Your wings transmute into a wooden barrier resembling a tower shield to block attacks, granting you a +4 shield bonus to AC. If you move, the spell ends immediately.",
                          source: "Ultimate Wilderness", isPremium: true),

                    // // MARK: - Ultimate Wilderness, Melee Tactics Toolbox
        )
        try await db.insertSpell(
        .make("Vine Strike", school: "Conjuration (Creation)", levels: "alchemist 2, antipaladin 2, arcanist 2, bloodrager 2, druid 2, hunter 2, investigator 2, ranger 2, shaman 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "Bristles burst from your body, lodging in your opponent and blossoming into entangling vines as you pummel your target.",
                          desc: "Bristles burst from your body, lodging in your opponent and blossoming into entangling vines as you pummel your target. While this spell is in effect, one of your natural attacks or unarmed strikes deals an additional 1d6 points of damage, and each creature hit with that natural weapon or unarmed strike must succeed at a Reflex save or be entangled for the duration of the spell; on a successful Reflex save, the creature is immune to the entangled effect for 1 round. A creature entangled by this spell can spend a standard action to remove the vines, but can be entangled again by further unarmed strikes.",
                          source: "Ultimate Wilderness, Melee Tactics Toolbox", isPremium: true),

                    // // MARK: - Ultimate Wilderness, People of the North
        )
        try await db.insertSpell(
        .make("Winter Grasp", school: "Conjuration (Creation)", levels: "druid 2, hunter 2, shaman 2, witch 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (ground glass)",
                          range: "medium (100 ft. + 10 ft./level)", area: "20-ft.-radius spread", targets: "",
                          duration: "1 round/level",
                          savingThrow: "none;", sr: false,
                          summary: "Ice encrusts the ground, radiating supernatural cold and making it hard for creatures to maintain their balance.",
                          desc: "Ice encrusts the ground, radiating supernatural cold and making it hard for creatures to maintain their balance. This icy ground is treated as normal ice, forcing creatures to spend 2 squares of movement to enter an icy square and increasing the DC of Acrobatics checks in the area by 5. A creature that begins its turn in the affected area takes 1d6 points of cold damage and takes a –2 penalty on saving throws against spells with the cold descriptor for 1 round.",
                          source: "Ultimate Wilderness, People of the North", isPremium: true),

                    // // MARK: - Ultimate Wilderness, People of the North, Pathfinder #67: The Snows of Summer
        )
        try await db.insertSpell(
        .make("Snowball", school: "Evocation", levels: "arcanist 1, bloodrager 1, druid 1, hunter 1, magus 1, sorcerer 1, summoner 1, summoner (unchained) 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one ball of ice and snow", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: true,
                          summary: "You throw a ball of elemental ice and snow at a single target as a ranged touch attack. The snowball deals 1d6 points of cold damage per caster level you have (maximum 5d6).",
                          desc: "You throw a ball of elemental ice and snow at a single target as a ranged touch attack. The snowball deals 1d6 points of cold damage per caster level you have (maximum 5d6).",
                          source: "Ultimate Wilderness, People of the North, Pathfinder #67: The Snows of Summer", isPremium: true),

                    // // MARK: - Ultimate Wilderness, Rival Guide
        )
        try await db.insertSpell(
        .make("Greensight", school: "Transmutation", levels: "arcanist 2, druid 2, hunter 2, shaman 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a leaf)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 minutes/level",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "The target of this spell gains the ability to see up to 60 feet through thick plant matter as though it were transparent.",
                          desc: "The target of this spell gains the ability to see up to 60 feet through thick plant matter as though it were transparent. Greenery, leaves, and vines—even lichen, moss, and slime—offer no concealment to the recipient’s sight, though her vision still can be blocked by solid wood, such as trees or wooden structures. Undergrowth does not grant concealment to a creature against a target of the effects of greensight .",
                          source: "Ultimate Wilderness, Rival Guide", isPremium: true),

                    // // MARK: - Undead Slayer's Handbook
        )
        try await db.insertSpell(
        .make("Carrion Compass", school: "Divination", levels: "arcanist 2, cleric 1, hunter 1, oracle 1, ranger 1, sorcerer 2, warpriest 1, witch 1, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one undead creature",
                          duration: "10 minutes/level",
                          savingThrow: "Will negates;", sr: false,
                          summary: "You animate one of the target’s fetid organs so that it leads you to the undead creature’s most recent controller or the cause of the creature’s undeath.",
                          desc: "You animate one of the target’s fetid organs so that it leads you to the undead creature’s most recent controller or the cause of the creature’s undeath. The organ (typically the heart, the brain, or an eyeball) floats in front of you at chest level and slowly leads you to the undead creature’s most recent controller at a rate of 30 feet per round, always staying within your range of vision. If the creature from which the organ originated had no controller, but rather was created deliberately by another creature, the organ instead leads you to that creator. If the undead was animated by an effect or event at a particular location, the organ leads you to that location. If the creature was animated by none of the methods above, if it was selfcreated, or if the creature’s most recent controller no longer exists, the spell fails. Once the organ is within 10 feet of its intended destination, the spell ends, and the organ falls to the ground. The organ cannot engage in combat or execute any other task aside from leading you to its intended target. It may pass through small slits and crevices, though it will not leave your range of vision. The organ cannot travel more than 5 miles from the spot where you cast the spell. If the undead creature to which the organ belonged is destroyed, the spell ends and the organ falls to the ground.",
                          source: "Undead Slayer's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Empower Holy Water", school: "Transmutation", levels: "alchemist 2, bard 2, investigator 2, paladin 1, skald 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "one or more vials of holy water",
                          duration: "1 minute/level",
                          savingThrow: "none (object);", sr: false,
                          summary: "You empower a vial of holy water to deal additional damage to undead creatures. You can empower one vial of holy water at 4th level, two at 8th level, and three at 12th level.",
                          desc: "You empower a vial of holy water to deal additional damage to undead creatures. You can empower one vial of holy water at 4th level, two at 8th level, and three at 12th level. When thrown at an undead creature, the affected vial of holy water deals an amount of bonus damage equal to your caster level (maximum +10) on a direct hit, and half that amount of bonus damage (maximum +5) to creatures caught in the splash area. This additional damage is positive energy damage, and has no effect on living creatures.",
                          source: "Undead Slayer's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Force Anchor", school: "Conjuration (Creation)", levels: "arcanist 3, inquisitor 2, magus 2, sorcerer 3, summoner 2, summoner (unchained) 2, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a twisted nail)",
                          range: "medium (100 ft. + 10 ft./level)", area: "one anchor of force", targets: "",
                          duration: "1 round/level",
                          savingThrow: "none;", sr: true,
                          summary: "You conjure an anchor of pure force that immediately skewers your target on a successful ranged touch attack.",
                          desc: "You conjure an anchor of pure force that immediately skewers your target on a successful ranged touch attack. If it hits, the attack deals the target 1d4 points of force damage per 2 caster levels (max 5d4) and the anchor becomes firmly lodged in the target’s torso. The anchor has no weight, but its wide flukes prevent the target from moving through any space smaller than the creature’s size. The anchor also prevents incorporeal targets from moving through solid objects. Whenever the target moves through a square occupied by another creature, the square counts as 2 squares for the purpose of calculating movement, even if the square’s occupant is the target’s ally.",
                          source: "Undead Slayer's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Life Shield", school: "Conjuration (Healing)", levels: "cleric 3, druid 3, hunter 3, oracle 3, paladin 2, warpriest 3",
                          castingTime: "1 standard action", components: "S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level or until discharged",
                          savingThrow: "None", sr: false,
                          summary: "You surround yourself with a positive energy field that damages undead opponents.",
                          desc: "You surround yourself with a positive energy field that damages undead opponents. Each time an undead creature damages you with a melee attack, that creature takes an amount of positive energy damage equal to half the damage it dealt to you. This damage is calculated after applying your damage reduction, resistances, and other defenses. Once this spell has dealt 5 points of damage per caster level (maximum 50), it is discharged.",
                          source: "Undead Slayer's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Necromantic Burden", school: "Necromancy", levels: "arcanist 3, cleric 2, oracle 2, sorcerer 3, warpriest 2, witch 3, wizard 3",
                          castingTime: "1 round", components: "V, S, M/DF (a handful of knucklebones)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one undead creature",
                          duration: "1 hour/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You make an undead creature more difficult for necromancers and clerics to control via effects such as Command Undead or control undead .",
                          desc: "You make an undead creature more difficult for necromancers and clerics to control via effects such as Command Undead or control undead . If the target fails its Will save, the target’s effective number of Hit Dice is doubled for the purposes of determining whether it remains under the control of another creature. Regardless of the target’s actual Hit Dice, its effective HD cannot exceed twice your caster level. (For example, a 12th-level cleric could cast this spell to cause an undead creature with 15 HD to instead effectively have 24 HD for the purpose of controlling it.) If the targeted undead is under the control of another creature and this spell causes the target’s effective Hit Dice to exceed the controller’s maximum capability, the target creature is immediately freed from control. Any creature capable of controlling undead may attempt to control the target, provided the target’s effective HD won’t cause the would-be controller to exceed its HD limit. The target’s former controller can attempt to regain control over the target by relinquishing command over other creatures until its HD limit is no longer exceeded (or the former controller can wait until the spell’s duration expires to attempt this at the target’s normal HD).",
                          source: "Undead Slayer's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Possession Trap", school: "Necromancy", levels: "arcanist 5, sorcerer 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, F (a gem or crystal worth at least 500 gp)",
                          range: "personal", area: "", targets: "you",
                          duration: "24 hours or until activated (see text); 1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "You place a protective ward over your spirit that ensnares creatures attempting to possess you.",
                          desc: "You place a protective ward over your spirit that ensnares creatures attempting to possess you. Should a creature attempt to possess you (such as via magic jar or a similar effect) while you are under the effects of",
                          source: "Undead Slayer's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sphere of Warding", school: "Abjuration", levels: "cleric 5, inquisitor 4, oracle 5, warpriest 5, witch 5",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "10-ft.-radius sphere emanating from point touched", targets: "",
                          duration: "1 hour/level",
                          savingThrow: "Will negates (see text);", sr: true,
                          summary: "You create a luminescent sphere of orbiting energy that harms incorporeal creatures and dispossesses them of any stolen bodies.",
                          desc: "You create a luminescent sphere of orbiting energy that harms incorporeal creatures and dispossesses them of any stolen bodies. An incorporeal creature must succeed at a Will save to enter a space overlapping with the sphere; failure means the creature cannot pass through the sphere, as though it were a wall of force . If the incorporeal creature succeeds, it may pass through the sphere at will, though if it ends its turn within the sphere, it takes a number of points of force damage equal to 1d6 + 1 per caster level (maximum +10). If a creature possessing another creature’s body (via either",
                          source: "Undead Slayer's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Undeath Inversion", school: "Necromancy", levels: "arcanist 4, cleric 4, oracle 4, sorcerer 4, warpriest 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, F/DF (a gold piece with one scratched face)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one undead creature",
                          duration: "1 round/level (D); see text",
                          savingThrow: "Will negates, see text;", sr: true,
                          summary: "You alter an undead creature’s energy affinity so that it takes damage from negative energy and gains healing from positive energy, as if it were a living creature.",
                          desc: "You alter an undead creature’s energy affinity so that it takes damage from negative energy and gains healing from positive energy, as if it were a living creature. If the target was able to channel negative energy or produce negative energy effects (such as inflict spells), these abilities produce positive energy instead, healing living targets and harming the undead. The target cannot impose negative levels on other creatures for the duration of the spell. The target’s creature type does not change, and it is still considered an undead creature. Each round on its turn, the subject may attempt a new saving throw to end the effect. This is a full-round action that does not provoke attacks of opportunity.",
                          source: "Undead Slayer's Handbook", isPremium: true),

                    // // MARK: - Villain Codex
        )
        try await db.insertSpell(
        .make("Amnesia", school: "Enchantment (Compulsion)", levels: "arcanist 4, bard 4, medium 3, mesmerist 4, psychic 4, skald 4, sorcerer 4, wizard 4",
                          castingTime: "1 round", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "instantaneous",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You cause the target to lose most of its memories; its skills, its past, and even its name become mysteries to it.",
                          desc: "You cause the target to lose most of its memories; its skills, its past, and even its name become mysteries to it. While the target can build new memories, it has trouble accessing those gained before falling victim to the spell. The target can still speak and read any languages it knows and perform basic tasks, but it loses all class abilities, feats, and skill ranks gained before being affected by amnesia. It retains its base attack bonus, saving throws bonuses, Combat Maneuver Bonus, Combat Maneuver Defense, total experience points, Hit Dice, and hit points. If the target gains a character level while suffering from amnesia, it can use any abilities gained by that class level normally. If the class level it gained was from a class in which it already has levels, it gains the abilities of a 1st-level character of that class, even though it is technically of a higher level in that class. If the amnesia is cured, the target regains the full abilities of the class, including those gained from any levels taken while suffering from this condition. Amnesia",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Beacon of Guilt", school: "Evocation", levels: "arcanist 2, bard 2, inquisitor 2, occultist 2, skald 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "one object",
                          duration: "24 hours or until discharged, then instantaneous",
                          savingThrow: "Will negates (object); see text;", sr: true,
                          summary: "You place an invisible ward upon an object that is triggered the first time a creature tries to move the object from its current location.",
                          desc: "You place an invisible ward upon an object that is triggered the first time a creature tries to move the object from its current location. The next creature to touch the object is cursed to become obvious to everyone around it. The creature must succeed at a Will save or be surrounded in an aura of twinkling red light that functions as faerie fire (spell resistance applies). The curse bestowed by this spell cannot be dispelled, but a",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Cloak of Shadows", school: "Illusion (Shadow)", levels: "antipaladin 4, arcanist 5, bard 5, mesmerist 5, skald 5, sorcerer 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "You wrap yourself in a protective mantle of semireal shadow. This grants a number of advantages: you gain concealment (20% miss chance), a +5 competence bonus on Stealth checks, and DR 5/good.",
                          desc: "You wrap yourself in a protective mantle of semireal shadow. This grants a number of advantages: you gain concealment (20% miss chance), a +5 competence bonus on Stealth checks, and DR 5/good. This shroud of shadows also protects you from direct sunlight, negating sunlight vulnerability, sunlight powerlessness, and similar effects. When you are in dim light or darkness, the first two benefits increase against foes that don’t have darkvision or the see in darkness ability ( Pathfinder RPG Bestiary 2 301). Such creatures suffer a 50% miss chance (though you don’t gain total concealment) and your competence bonus on Stealth checks increases to +10 with respect to such creatures.",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Covetous Urge", school: "Enchantment (Compulsion)", levels: "arcanist 2, bard 2, skald 2, sorcerer 2, summoner 2, summoner (unchained) 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a golden coin)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature with 7 HD or fewer",
                          duration: "1 minute/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You curse the target with insatiable greed, causing it to attempt to steal any item worth 100 gp or more that it can see, each time it enters a new room or area.",
                          desc: "You curse the target with insatiable greed, causing it to attempt to steal any item worth 100 gp or more that it can see, each time it enters a new room or area. If it can see multiple items of value in a single room or area, it attempts to steal the item it thinks is worth the most. This covetous compulsion might cause the target to act recklessly where it normally would not (unless acting in this manner would clearly cause it to die, suffer great harm, or get caught). In combat, if the target sees a valuable item on an opponent, it must, for example, attempt to disarm its foe to take a valuable weapon or use the steal combat maneuver ( Pathfinder RPG Advanced Player’s Guide 322) to grab a precious item kept on the opponent’s belt. Once the target has either attempted to steal an item in combat or else taken damage, this magical compulsion subsides until the threat of the current combat ends and the target enters a new room or area. Affected targets in combat that have neither attempted to steal an item nor taken damage (perhaps because the opponent with the most valuable item is far away) can attempt a saving throw each round to ignore the spell’s effect until the threat ends and the target enters a new room.",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Cursed Treasure", school: "Necromancy", levels: "antipaladin 3, arcanist 4, bloodrager 4, cleric 3, oracle 3, shaman 3, sorcerer 4, spiritualist 3, warpriest 3, witch 3, wizard 4",
                          castingTime: "1 minute", components: "V, S, M (a platinum piece)",
                          range: "touch", area: "", targets: "unattended object touched",
                          duration: "permanent until discharged, then permanent (see text)",
                          savingThrow: "Fortitude negates (object), then Will negates (see text);", sr: true,
                          summary: "You touch a piece of treasure or container filled with treasure and place a terrible curse upon it, choosing from any option available with bestow curse .",
                          desc: "You touch a piece of treasure or container filled with treasure and place a terrible curse upon it, choosing from any option available with bestow curse . The next creature to take the treasure or remove items from the container is affected by the curse, unless it succeeds at a Will save (spell resistance applies). If you are the next creature to take the treasure or get objects from the container, though, the spell discharges harmlessly instead.",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Dousing Rain", school: "Evocation", levels: "bard 2, druid 2, hunter 2, shaman 2, skald 2, witch 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (a drop of water)",
                          range: "medium (100 ft. + 10 ft./level)", area: "cylinder (10-ft. radius, 40 ft. high)", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "With a beckoning gesture, you call forth a downpour of rain. For the duration of the spell, the following effects apply within the affected area.",
                          desc: "With a beckoning gesture, you call forth a downpour of rain. For the duration of the spell, the following effects apply within the affected area. Nonmagical fires are automatically extinguished, and all creatures and objects in the area gain fire resistance 5. The conjured water is conductive, and whenever a doused creature takes electricity damage, it takes 1 additional point of electricity damage. At 6th, 12th, and 18th levels, the fire resistance increases by 5 and the additional electricity damage increases by 1 point.",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Fool's Gold (VC)", school: "Illusion", levels: "arcanist 1, bard 1, medium 1, mesmerist 1, psychic 1, skald 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M (a copper piece or silver piece)",
                          range: "touch", area: "", targets: "objects touched",
                          duration: "1 hour/level",
                          savingThrow: "none or Will disbelief (see text);", sr: false,
                          summary: "You can temporarily make copper or silver seem to be an equivalent amount of gold.",
                          desc: "You can temporarily make copper or silver seem to be an equivalent amount of gold. The spell affects 1 gp/level worth of material (thus, at 3rd level, the spell affects up to 300 copper pieces, 30 silver pieces, or a copper or silver item worth no more than 3 gp). Coins increase in value as normal for the new type of coinage. For items other than coins, some of the value of the item comes from its craftsmanship, regardless of the metal used, so the value of the item seems to be 5 times (for silver items) or 50 times (for copper items) its true value. Thus, a copper candlestick originally worth 5 cp transformed by this spell appears to be worth 250 cp, or 2 gp and 5 sp. A successful DC 25 Appraise check automatically detects the true nature of the coins or items. Creatures inspecting or interacting with the coins or items can attempt a saving throw to disbelieve the illusion.",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Geomessage", school: "Illusion (Figment)", levels: "arcanist 4, bard 3, hunter 3, medium 3, occultist 3, ranger 3, skald 3, sorcerer 4, wizard 4",
                          castingTime: "1 minute", components: "V, S, M (a scrap of vellum)",
                          range: "touch", area: "", targets: "surface touched",
                          duration: "1 day/level",
                          savingThrow: "none;", sr: false,
                          summary: "You create a written message of 50 words or fewer, or else an image, a drawing, or a similar diagram. The figment hangs invisible and obscured upon the target surface for the duration of the spell.",
                          desc: "You create a written message of 50 words or fewer, or else an image, a drawing, or a similar diagram. The figment hangs invisible and obscured upon the target surface for the duration of the spell. Another casting of geomessage is needed to cause the figment to arrange itself into the intended message. When you cast the spell, you can choose to incorporate a passphrase into the spell. If you do so, the message is protected as if",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hide Bruises", school: "Illusion (Glamer)", levels: "antipaladin 1, arcanist 1, bard 1, inquisitor 1, mesmerist 1, occultist 1, psychic 1, skald 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M (drop of blood)",
                          range: "touch", area: "", targets: "one creature touched",
                          duration: "10 minutes/level (D)",
                          savingThrow: "none and Will disbelief (see text);", sr: true,
                          summary: "The target’s wounds to seem to disappear. A creature attempting a Heal check to tell the severity of the target’s injuries takes a –10 penalty on that check.",
                          desc: "The target’s wounds to seem to disappear. A creature attempting a Heal check to tell the severity of the target’s injuries takes a –10 penalty on that check. A creature that physically touches the glamered areas can attempt a Will save to recognize it as an illusion.",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hobble", school: "Transmutation", levels: "arcanist 1, bard 1, bloodrager 1, hunter 1, inquisitor 1, magus 1, mesmerist 1, ranger 1, skald 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M (a drop of glue)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature/level, no two of which can be more than 20 feet apart",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "This spell disrupts the method a target uses for movement. Creatures under the effects of this spell move at half their base speed (rounded down to the nearest 5-foot increment) but can still take…",
                          desc: "This spell disrupts the method a target uses for movement. Creatures under the effects of this spell move at half their base speed (rounded down to the nearest 5-foot increment) but can still take 5-foot steps as normal. Incorporeal creatures and creatures flying with perfect maneuverability are immune to the effects of this spell. Each round, a target receives another save to end the effect.",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hoodwink", school: "Enchantment (Compulsion)", levels: "arcanist 2, bard 2, medium 2, mesmerist 2, occultist 2, psychic 2, skald 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (small piece of black cloth)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "up to one creature/level, no two of which can be more than 30 ft. apart",
                          duration: "1 hour/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You befuddle the targets’ senses, preventing the targets from clearly perceiving their surroundings.",
                          desc: "You befuddle the targets’ senses, preventing the targets from clearly perceiving their surroundings. Instead, hoodwinked creatures see only the roughest shapes and details and hear only muffled noises. However, targets can clearly hear verbal communication from the spell’s caster. This spell does not impart understanding of the caster’s language if the creature can’t already understand it. Other than to hear the caster speak, targets automatically fail Perception checks with DCs greater than 5, and they are too disoriented by the spell to accurately remember the path they took while under its effects. While under the effects of this spell, targets without the help of a guide move at half speed, and any attacks they make are treated as though the creature they are attacking had concealment. Moving faster than half speed requires targets to succeed at a DC 10 Acrobatics check. Those that fail this check fall prone. If the target is attacked or physically harmed by any creature other than another target of",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Outbreak", school: "Necromancy", levels: "antipaladin 2, arcanist 3, bloodrager 3, cleric 2, druid 2, hunter 2, oracle 2, sorcerer 3, warpriest 2, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "20-ft. burst", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Fortitude partial;", sr: true,
                          summary: "You cause any diseased creatures in the area to become extremely contagious.",
                          desc: "You cause any diseased creatures in the area to become extremely contagious. Any affected creature is overcome by a fit of wracking coughs, causing it to become fatigued and exposing any creatures within 10 feet of the diseased creature to the diseases it carries. On a successful save, a creature is fatigued for 1 round and doesn’t have a chance to infect nearby creatures.",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Reinvigorating Wind", school: "Enchantment (Compulsion)", levels: "bard 2, druid 3, hunter 3, shaman 2, skald 2, witch 3",
                          castingTime: "1 standard action", components: "V, S, M/DF (a flower petal)",
                          range: "30 ft.", area: "cone-shaped burst", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You exhale deeply, creating a gentle magical wind that invigorates any allies in the affected area, as follows. Any sleeping allies immediately wake up.",
                          desc: "You exhale deeply, creating a gentle magical wind that invigorates any allies in the affected area, as follows. Any sleeping allies immediately wake up. Fascinated allies are shaken free of the fascinate effect. Flat-footed allies no longer count as flat-footed even if they have not acted yet. The duration of effects that cause any allies to be confused, frightened, paralyzed, slowed, or stunned is decreased by 1d4 rounds (roll separately for each target). If the duration of any such effect is reduced to 0 rounds or fewer, the effect ends for that ally. Finally, any allies lying prone may stand up as an immediate action, provoking attacks of opportunity as normal.",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Resist Starvation", school: "Transmutation", levels: "antipaladin 1, cleric 1, oracle 1, shaman 1, warpriest 1",
                          castingTime: "1 standard action", components: "V, S, M (crumb of food)",
                          range: "touch", area: "", targets: "one living creature touched",
                          duration: "1 day/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "If the target doesn’t eat on the day this spell is cast on it, the DC to avoid taking nonlethal damage from starvation on the following day doesn’t increase by 1.",
                          desc: "If the target doesn’t eat on the day this spell is cast on it, the DC to avoid taking nonlethal damage from starvation on the following day doesn’t increase by 1. This spell fails if the target hasn’t already attempted at least one Constitution check to avoid starvation.",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Rotgut", school: "Transmutation", levels: "antipaladin 2, bard 2, cleric 2, inquisitor 2, occultist 2, oracle 2, skald 2, warpriest 2",
                          castingTime: "1 round", components: "V, S, M (a pinch of hops)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "1 gallon of water/level",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates (object);", sr: true,
                          summary: "You transform the target into a cheap alcohol of your choice, such as beer, grog, mead, rum, or wine.",
                          desc: "You transform the target into a cheap alcohol of your choice, such as beer, grog, mead, rum, or wine. The alcohol doesn’t taste good, but it’s drinkable and just as effective as normal alcohol in making creatures inebriated ( Pathfinder RPG GameMastery Guide 237). This spell doesn’t work on holy water, potions, magical liquids, or water that is part of a creature.",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sand Table", school: "Divination", levels: "arcanist 4, bard 3, hunter 3, medium 3, ranger 3, skald 3, sorcerer 4, wizard 4",
                          castingTime: "10 minutes", components: "V, S, M (handful of sand)",
                          range: "see text", area: "", targets: "",
                          duration: "1 hour/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "Sand table allows you to create a scale model of the battlefield surrounding your position, showing numbers of troops, their relative positions, and their movement as if you were observing from a…",
                          desc: "Sand table allows you to create a scale model of the battlefield surrounding your position, showing numbers of troops, their relative positions, and their movement as if you were observing from a great height overhead (1,000 feet up). You cast the spell upon a table or other flat surface and cause the model to appear upon a 5-foot-by-5-foot section of that table or surface. It reflects accurate terrain and topography, though it doesn’t identify fine topographical features or concealed or hidden topography. It also indicates all normally visible Small or larger creatures within the area of effect, but it doesn’t provide identifying characteristics of those creatures; each creature appears as an indistinct speck, under 1 millimeter in each dimension. The spell marks obvious war camps and contingents of troops with a symbol of their banner (if they openly carry such a symbol). The spell provides a snapshot of the topography and creature locations when cast; it doesn’t adjust for changes that occur during the duration. The table shows the land surrounding itself up to a 1-mile radius from the surface. The sand table does not reveal invisible or incorporeal creatures, nor does it include creatures that are underground, indoors, submerged below the surface of water, below a tree line or other source of cover from above, or flying above 1,000 feet in the air. Those looking at the table can spot Small and larger creatures that are using Stealth to hide, but they take a –10 penalty on their Perception checks because of the size of the models. Once the spell has been cast, if anything moves or shakes the surface upon which it was placed, the spell ends instantly.",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Shadow Claws", school: "Illusion (Shadow)", levels: "antipaladin 1, arcanist 2, bard 2, bloodrager 2, magus 2, skald 2, sorcerer 2, spiritualist 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "You summon a pair of claws over your hands formed from semireal material.",
                          desc: "You summon a pair of claws over your hands formed from semireal material. This grants you two primary claw attacks dealing 1d4 points of damage if you are Medium (1d3 if Small) plus 1 point of Strength damage. A successful Fortitude saving throw negates the Strength damage (DC = this spell’s DC).",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Shadow Jaunt", school: "Illusion (Shadow)", levels: "antipaladin 3, arcanist 4, bard 4, skald 4, sorcerer 4, spiritualist 4, summoner 4, summoner (unchained) 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "you",
                          duration: "instantaneous and 1 round; see text",
                          savingThrow: "None", sr: false,
                          summary: "You instantly travel between shadows to a point within range, though line of sight is not necessary.",
                          desc: "You instantly travel between shadows to a point within range, though line of sight is not necessary. You leave a shadowy image of yourself in your former location and are wrapped in shadow at your destination; you can attempt a Stealth check as a free action to hide in your new location. Creatures that fail opposed Perception checks typically aren’t aware that you are no longer at your former location unless they are familiar with this spell and identify the effects. Any attack on your former location causes the shadows to disperse, allowing any creature that can see your former location to immediately notice your disappearance. In addition, for 1 round, the envelope of shadow around you grants you concealment (20% miss chance). This spell doesn’t function if there are no shadows within 5 feet of your starting location, and you can’t travel through your own shadow. If you choose a destination that has no shadows, you appear from the shadow closest to your destination that’s within the spell’s range (this could be your starting location if there are no other shadows within the spell’s range).",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Steady Saddle", school: "Transmutation", levels: "antipaladin 1, druid 1, hunter 1, paladin 1, ranger 1",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "saddle touched",
                          duration: "1 minute/level (D)",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "A saddle affected by this spell becomes more comfortable to sit in, and the magic stabilizes any shaking motion caused by riding at a high speed.",
                          desc: "A saddle affected by this spell becomes more comfortable to sit in, and the magic stabilizes any shaking motion caused by riding at a high speed. For the duration of the spell, the penalty to use ranged weapons while mounted in the target saddle decreases by 2. This stacks with the benefit of the Mounted Archery feat and similar effects. Furthermore, the DC for any concentration check required as a result of the mount’s movement decreases by 2.",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Virulent Miasma", school: "Necromancy", levels: "antipaladin 2, arcanist 3, bloodrager 3, druid 3, hunter 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a dried scab from a diseased creature)",
                          range: "medium (100 ft. + 10 ft./level)", area: "cloud spreads in 20-ft. radius, 20 ft. high", targets: "",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates (see text);", sr: false,
                          summary: "Virulent miasma creates fog like fog cloud , except that the vapors carry the taint of disease.",
                          desc: "Virulent miasma creates fog like fog cloud , except that the vapors carry the taint of disease. Living creatures take a –4 penalty on saving throws against disease effects as long as they remain within the cloud and for 1d4+1 rounds after leaving. This effect of the spell allows a Fortitude save to negate it, and it is subject to spell resistance. A creature that succeeds at its saving throw against the fog (or ignores the fog due to spell resistance) is not affected and need not make further saves even if it remains in the fog.",
                          source: "Villain Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Wicker Horse", school: "Conjuration (Creation)", levels: "occultist 2, shaman 2, summoner 2, summoner (unchained) 2, witch 2",
                          castingTime: "10 minutes; see text", components: "V, S, M/DF (a reed or twig)",
                          range: "touch", area: "a horselike wicker construct", targets: "",
                          duration: "1 hour/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "Reeds, grasses, creepers, or thin tree branches (your choice) that you touch animate, twisting and bending to form a wicker horse complete with a riding saddle.",
                          desc: "Reeds, grasses, creepers, or thin tree branches (your choice) that you touch animate, twisting and bending to form a wicker horse complete with a riding saddle. The object is animated, but retains a wickerlike appearance. A wicker horse has the statistics of a light horse or a pony, except it gains construct traits and counts as both an animal and a construct for the purposes of spells and effects. It gains a number of extra hit points equal to your caster level. It has no skills or feats except as noted below. A horse made of reeds gains a number of Swim ranks equal to your caster level. A horse made of grasses gains the Run feat and a number of Acrobatics ranks equal to your caster level. A horse made of creepers gains a number of ranks in Climb and Stealth equal to your caster level. A horse made of tree branches is continually affected by",
                          source: "Villain Codex", isPremium: true),

                    // // MARK: - Villain Codex, Heroes of the Wild
        )
        try await db.insertSpell(
        .make("Nature's Paths", school: "Divination", levels: "bard 1, druid 1, hunter 1, inquisitor 1, ranger 1, shaman 1, witch 1",
                          castingTime: "1 standard action", components: "V, S, M/DF (a smooth stone)",
                          range: "touch", area: "", targets: "one creature",
                          duration: "8 hours (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The target instinctively knows the shortest, easiest, and fastest way through the wilderness.",
                          desc: "The target instinctively knows the shortest, easiest, and fastest way through the wilderness. For the purpose of determining overland speed, the target treats any trackless terrain as though there were a trail or road, and any terrain with a road or trail as though there were a highway ( Pathfinder RPG Core Rulebook 171—172). Up to one creature per caster level traveling with the target can also benefit from the effect. The spell functions only outdoors and does not function in magically altered terrain.",
                          source: "Villain Codex, Heroes of the Wild", isPremium: true)
        )
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