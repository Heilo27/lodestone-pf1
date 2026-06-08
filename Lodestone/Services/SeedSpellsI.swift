import Foundation

extension SeedDataBuilder {
    func seedSpellsI() async throws {
        try await db.insertSpell(
        .make("Restore Mythic Power", school: "Transmutation", levels: "arcanist 3, bard 3, cleric 3, medium 2, oracle 3, psychic 3, redmantisassassin 3, skald 3, sorcerer 3, warpriest 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "you and one mythic creature",
                          duration: "instantaneous",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "By laying your hands on the target, you’re able to transfer some of your mythic essence to the target. You expend three uses of your mythic power to restore one use of the target’s mythic power.",
                          desc: "By laying your hands on the target, you’re able to transfer some of your mythic essence to the target. You expend three uses of your mythic power to restore one use of the target’s mythic power.",
                          source: "Mythic Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Share Glory", school: "Transmutation", levels: "arcanist 3, bard 2, cleric 3, druid 3, hunter 3, medium 1, oracle 3, psychic 3, redmantisassassin 3, skald 2, sorcerer 3, summoner 2, summoner (unchained) 2, warpriest 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one non-mythic creature/3 levels",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You imbue the targets with a fraction of your mythic nature. They count as mythic creatures for the purpose of path abilities, spells, and other effects that function differently for mythic…",
                          desc: "You imbue the targets with a fraction of your mythic nature. They count as mythic creatures for the purpose of path abilities, spells, and other effects that function differently for mythic creatures. This doesn’t grant the targets mythic tiers or any uses of mythic power; it merely gives them a greater advantage when others use abilities that work differently for mythic creatures. You must be at least a 1st-tier mythic character to cast this spell.",
                          source: "Mythic Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Steal Power", school: "Necromancy", levels: "arcanist 5, cleric 5, mesmerist 4, oracle 5, psychic 5, sorcerer 5, warpriest 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one mythic creature",
                          duration: "instantaneous",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You sap the power from a mythic creature, using it to restore your own. The target loses 1d4 uses of mythic power.",
                          desc: "You sap the power from a mythic creature, using it to restore your own. The target loses 1d4 uses of mythic power. If you have the ability to expend mythic power, you regain one use for each use the target loses.",
                          source: "Mythic Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Terraform", school: "Transmutation", levels: "arcanist 7, cleric 7, druid 6, hunter 6, oracle 7, psychic 7, sorcerer 7, witch 7, wizard 7",
                          castingTime: "1 hour", components: "V, S, M (10,000 gp worth of precious minerals, see text)",
                          range: "100 feet", area: "100-foot-radius emanation, centered on you", targets: "",
                          duration: "1 day/level (see text)",
                          savingThrow: "none;", sr: false,
                          summary: "You alter the area’s terrain and climate to a new terrain and climate type appropriate to the planet or plane. For example, you might transform a desert to plains.",
                          desc: "You alter the area’s terrain and climate to a new terrain and climate type appropriate to the planet or plane. For example, you might transform a desert to plains. To cast this spell, you must expend 10 uses of mythic power along with the material cost. This magically alters the area’s climate and normal plants to those appropriate to the new terrain, but doesn’t affect creatures or the configuration of the earth. Transforming rocky hills into forested areas converts grasses into shrubs and small trees, but doesn’t flatten the hills or change the animals to suit the new environment. You can alter the climate by one step (warm, temperate, or cold). The maximum extent of the terrain change is up to the GM, but in general is to a similar terrain type or one step within that terrain type (such as from a typical forest to a forest with massive trees or light undergrowth, from a shallow bog to a deep bog, and so on). You might be able to shift the land to a similar terrain type, such as turning a sparse forest into a relatively dry swamp. Local creatures adversely affected by these alterations either flee the area or quickly die, depending on their mobility and awareness of the change. Multiple castings of the spell in the same area can create an area with radically different terrain and climate than the surrounding land. The GM can decide that certain terrain shifts are unsustainable and shorten the duration, or that some are suitable for the area and extend the duration. This spell could have many secondary effects based on the nature of the change, the type of bordering terrain, and so on; these should be determined by the GM on a case-by-case basis. For example, transforming a desert requires drawing water up from underground to sustain the plants, which could deplete the water table in nearby areas. Creating a warm desert in the middle of a snowy tundra will create a bordering area of mud and frequent storms from the clash of hot and cold air fronts. If you’re at least 8th tier, you can expend 20 uses of mythic power instead of 10 to increase the range to 1 mile, the area to a 1-mile-radius emanation centered on you, and the duration to 1 month per caster level.",
                          source: "Mythic Adventures", isPremium: true),

                    // // MARK: - Occult Adventures
        )
        try await db.insertSpell(
        .make("Akashic Form", school: "Necromancy", levels: "psychic 9",
                          castingTime: "1 hour", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "24 hours",
                          savingThrow: "no;", sr: false,
                          summary: "You create a perfect record of your physical body in the Akashic Record (see page 244) at the time the spell is cast.",
                          desc: "You create a perfect record of your physical body in the Akashic Record (see page 244) at the time the spell is cast. This record includes your current hit point total, physical ability scores (Strength, Dexterity, and Constitution), and any conditional modifiers or conditions such as ability damage to physical ability scores, disease, negative levels, and poison. If at any point within the duration of the spell you are reduced to fewer than 0 hit points or are slain by a death effect that is not mind-affecting, you can immediately let your current physical body die and assume the record of your physical body on your next turn. When this happens, your corpse disappears, and you can either resume the place of your dead body (already wearing any clothing still attached to the corpse) or appear in any place you’ve been within 500 feet of where your corpse lies (but without any of your gear). You still retain your original mind, and therefore don’t regain any spells. You are still under any mental influences and energy drain effects you were under when you recalled the record of your physical body, but don’t retain any physical effects such as bleed damage or poison (unless you suffered from these conditions at the time the spell was cast). Spells affecting you when you store a record of yourself abide by their normal durations. For example, if you were affected by cat’s grace when you created the record and you restore your body 1 hour later, you won’t be under that effect anymore since its duration has already expired. This spell doesn’t allow you to avoid dying of old age. Casting this spell again replaces any previous version you cast; you can’t store more than one copy of yourself in the Akashic Record.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Analyze Aura", school: "Divination", levels: "medium 2, mesmerist 3, occultist 2, psychic 3, spiritualist 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature or object",
                          duration: "concentration, up to 1 round/level",
                          savingThrow: "none;", sr: false,
                          summary: "You peer into the aura of one target creature or object, gaining valuable information about its condition and nature. Each round, choose one of the target’s four auras.",
                          desc: "You peer into the aura of one target creature or object, gaining valuable information about its condition and nature. Each round, choose one of the target’s four auras. This spell functions similarly to the read aura occult skill unlock (see page 197), but doesn’t require checks and returns results on all the target’s auras in an instant. Alignment Aura : You study the target’s spiritual nature to determine its alignment. You also learn the type and power of its alignment aura, as",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Anticipate Thoughts", school: "Divination", levels: "arcanist 2, bard 2, inquisitor 2, magus 2, mesmerist 2, psychic 2, skald 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "Will partial;", sr: true,
                          summary: "This spell taps into the target’s mind so you get an impression of the actions it will take. You gain a +2 insight bonus to AC against the target’s attacks.",
                          desc: "This spell taps into the target’s mind so you get an impression of the actions it will take. You gain a +2 insight bonus to AC against the target’s attacks. If the target fails its Will save, you also see how the target will react to your attacks, and the bonus applies on your attack rolls and damage rolls against the target. These bonuses apply only while the target is within range of the spell, though if it goes out of range, the bonuses return once it’s back in range. Whenever the target misses you with an attack, the spell’s bonuses increase by 1 until the spell ends (to a maximum of +5).",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Apport Animal", school: "Conjuration (Teleportation)", levels: "arcanist 3, druid 3, hunter 3, medium 3, mesmerist 3, psychic 3, ranger 3, sorcerer 3, summoner 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V",
                          range: "touch", area: "", targets: "one touched animal of Tiny or smaller size",
                          duration: "instantaneous or 1 hour/level",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "This spell functions like apport object except the target is an animal. Only normal, nonmagical creatures of the animal type can be teleported.",
                          desc: "This spell functions like apport object except the target is an animal. Only normal, nonmagical creatures of the animal type can be teleported.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Apport Object", school: "Conjuration (Teleportation)", levels: "arcanist 2, bard 2, medium 2, mesmerist 2, occultist 2, psychic 2, skald 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V",
                          range: "touch", area: "", targets: "one touched object of up to 1 lb. and 1 cu. ft.",
                          duration: "instantaneous or 1 hour/level",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "This spell allows you to instantaneously transport a small nonliving object from one location to another.",
                          desc: "This spell allows you to instantaneously transport a small nonliving object from one location to another. There are two ways to use the spell: sending allows you to immediately send an object held in your hands to a nearby location, while receiving permits you to cast the spell ahead of time on an object and summon it to your location at a later time. Sending : If you choose to send the object elsewhere, the spell functions like",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Aura Alteration", school: "Illusion", levels: "medium 3, mesmerist 3, occultist 3, psychic 4, spiritualist 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "one object or willing creature",
                          duration: "1 day/level (D)",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "You mask and manipulate the target creature’s or object’s aura, confounding those who would attempt to discern helpful information from it using the read aura occult skill unlock (see page 197) or…",
                          desc: "You mask and manipulate the target creature’s or object’s aura, confounding those who would attempt to discern helpful information from it using the read aura occult skill unlock (see page 197) or the analyze aura spell. You can change each of the following four auras with one casting of",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Aversion", school: "Enchantment (Compulsion)", levels: "arcanist 3, bard 2, druid 3, hunter 3, mesmerist 2, occultist 2, psychic 2, skald 2, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 day/level",
                          savingThrow: "Will partial;", sr: true,
                          summary: "You plant a revulsion in the mind of the subject, causing her to avoid an object or location. You must choose a specific object or place.",
                          desc: "You plant a revulsion in the mind of the subject, causing her to avoid an object or location. You must choose a specific object or place. A location chosen in this way can be no larger than a cube measuring 50 feet on a side. The aversion is entirely in the target’s mind, so the chosen object or location itself isn’t subject to any magical effect. If the target fails her saving throw, she can’t come within 60 feet of the chosen object or place. She makes every reasonable effort to avoid the object of the aversion, but will not put herself in danger in order to maintain the aversion. For example, if the object of the aversion is a bridge but a forest fire is closing in and will likely kill the target, she ignores the aversion and crosses the bridge to save herself. If the target must ignore the conditions of the aversion, she is nauseated until she is no longer violating the aversion. If the target succeeds at her saving throw, she is instead sickened while within 60 feet of the object or place, but isn’t compelled to stay away from it.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Awaken Construct", school: "Transmutation", levels: "arcanist 7, cleric 7, occultist 5, oracle 7, psychic 6, shaman 6, sorcerer 7, wizard 7",
                          castingTime: "24 hours", components: "V, S, M (herbs and oils worth 2,000 gp per HD of target), DF",
                          range: "touch", area: "", targets: "mindless construct touched",
                          duration: "instantaneous",
                          savingThrow: "Will negates;", sr: false,
                          summary: "You amplify the animating force of a construct to more closely resemble a true soul, granting the construct humanlike sentience.",
                          desc: "You amplify the animating force of a construct to more closely resemble a true soul, granting the construct humanlike sentience. To do so, you must succeed at a Spellcraft check (DC = 15 + the construct’s current Hit Dice). If the construct’s master (if any) is present, this is an opposed Spellcraft check. You have no special empathy or connection with a creature you awaken—it is a free-willed creature. Golems previously under another creature’s control, either as shield guardians or a golem crafter’s creations, break all connections with that creature. Roll 3d6 to determine the Intelligence score of the awakened construct, and increase its Charisma score by 2d6. It gains feats and skill points according to its new Intelligence score, and the skill points are assigned appropriately for its function, as determined by the GM. An awakened construct speaks one language that its creator spoke, plus one additional language that its creator knew per point of the construct’s Intelligence bonus (if any). Its alignment is determined by the GM, but is usually within one step of its creator’s alignment. This spell doesn’t function on a construct with an Intelligence score.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Babble", school: "Enchantment (Compulsion)", levels: "arcanist 3, bard 2, mesmerist 2, psychic 3, skald 2, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature; see text",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell causes the target to break into a fit of bizarre, uncontrollable babbling. The target also becomes nauseated. If the target succeeds at its save, the effects end.",
                          desc: "This spell causes the target to break into a fit of bizarre, uncontrollable babbling. The target also becomes nauseated. If the target succeeds at its save, the effects end. If not, the creature continues babbling and is nauseated for the entire duration. Creatures within 30 feet of the subject that can hear the target’s babbling must succeed at a Will save or become fascinated for as long as the babbling persists. Once a creature’s fascination ends, it can’t become fascinated by the same instance of babble again. Creatures with an Intelligence score of 2 or lower aren’t affected by this spell.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Bilocation", school: "Conjuration (Creation)", levels: "arcanist 9, psychic 8, sorcerer 9, wizard 9",
                          castingTime: "1 standard action", components: "V",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one duplicate", targets: "you",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "The spell creates an identical copy of you, along with everything you wear and carry, anywhere you choose within range; you exist in two places at once until the spell ends.",
                          desc: "The spell creates an identical copy of you, along with everything you wear and carry, anywhere you choose within range; you exist in two places at once until the spell ends. You and the duplicate use the same statistics and share the same resources. If the duplicate takes damage, for example, you deduct the damage from your hit point total. Similarly, if your duplicate expends a charge or daily use from a magic item you both wield, the charge or daily use is expended from the item you carry. If you or the duplicate drops or gives away something you’re carrying, the item disappears from the other body as well. This spell doesn’t duplicate artifacts; any you possess remain on you. You perceive sensory information from your body and that of your duplicate simultaneously. The spell enables you to process the sensations so you don’t find them disorienting. When you take any action, you choose which of your bodies performs the action, but both bodies share the same pool of actions. For instance, if you take a standard action to cast a spell, you can use either body as the point of origin, but the other body can’t also take a standard action that round. Likewise, if your duplicate takes a full-round action, you couldn’t take a standard or move action. Both bodies can take any number of free actions as usual; for example, both bodies could say different things or each drop a different item. If either body doesn’t move during the round, that body can either take a 5-foot step or move your speed once as a free action. The two bodies are affected by attacks, spells, and effects as though they were one person, taking the worse effect when applicable (for example, if the bodies would be subject to differing effects due to being at different ranges). If both bodies are in the area of the same",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Burst of Adrenaline", school: "Transmutation", levels: "mesmerist 1, psychic 1, spiritualist 1",
                          castingTime: "1 immediate action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "You draw upon your body’s inner reserves of strength, leaving you winded.",
                          desc: "You draw upon your body’s inner reserves of strength, leaving you winded. When you are about to make a d20 roll based on Strength, Dexterity, or Constitution, you can cast this spell to gain a +8 enhancement bonus to Strength, Dexterity, or Constitution for that roll, but you are fatigued for 1 round afterward.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Burst of Insight", school: "Transmutation", levels: "medium 1, mesmerist 1, psychic 1, spiritualist 1",
                          castingTime: "1 immediate action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "You plumb the depths of your mind for insight, leaving you momentarily frazzled.",
                          desc: "You plumb the depths of your mind for insight, leaving you momentarily frazzled. When you are about to make a d20 roll based on Intelligence, Wisdom, or Charisma, you can cast this spell to gain a +8 enhancement bonus to Intelligence, Wisdom, or Charisma for that roll, but you are dazed for 1 round afterward.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Catatonia", school: "Necromancy", levels: "alchemist 2, arcanist 3, bard 2, cleric 3, investigator 2, medium 2, mesmerist 2, oracle 3, psychic 3, skald 2, sorcerer 3, spiritualist 2, warpriest 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "S",
                          range: "touch", area: "", targets: "willing creature touched",
                          duration: "1 hour/level (D)",
                          savingThrow: "none;", sr: true,
                          summary: "You touch the target and place it into a deathlike state that persists for the duration.",
                          desc: "You touch the target and place it into a deathlike state that persists for the duration. The target appears to be dead, and any creature that interacts with the target must succeed at a DC 20 Heal check to recognize it is actually alive. Until the spell ends, the target counts as if it were dead for the purpose of resolving any effects that target or affect only living creatures, but it doesn’t count as undead. The subject is helpless, and can still be killed normally. Any effect that would bring the creature back to life or animate it as an undead fails, but ends the catatonia. The target can be affected by spells that affect only objects, including",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Charge Object", school: "Transmutation", levels: "medium 1, mesmerist 1, occultist 1, psychic 1, spiritualist 1",
                          castingTime: "10 minutes", components: "V, S",
                          range: "touch", area: "", targets: "object touched",
                          duration: "permanent",
                          savingThrow: "none, see text;", sr: false,
                          summary: "You charge an item with minor psychic energy. The item can be detected by the detect psychic significance spell. If you wish, you can imprint the item with your ownership history. Spells such as",
                          desc: "You charge an item with minor psychic energy. The item can be detected by the detect psychic significance spell. If you wish, you can imprint the item with your ownership history. Spells such as",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Cognitive Block", school: "Enchantment (Compulsion)", levels: "medium 2, mesmerist 2, psychic 3",
                          castingTime: "1 standard action", components: "V",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You create a mental block in the target’s mind, impeding the flow of his mental spellcasting process and forcing him to incorporate a thought component into any spell or spell-like ability he uses.",
                          desc: "You create a mental block in the target’s mind, impeding the flow of his mental spellcasting process and forcing him to incorporate a thought component into any spell or spell-like ability he uses. This is in addition to any other components the spell already requires, and doesn’t replace the verbal component. Spell-like abilities require this thought component, even though they normally don’t need spell components. As usual with thought components, this addition increases the DC of any concentration checks the target attempts by 10 unless the target takes a move action to center his mind and satisfy the spell’s thought component.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Condensed Ether", school: "Transmutation", levels: "arcanist 5, psychic 4, sorcerer 5, spiritualist 3, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (crushed amber)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "20-ft.-radius spread",
                          duration: "1 minute/level",
                          savingThrow: "none;", sr: false,
                          summary: "You condense the substance of the Ethereal Plane as it interpenetrates the Material Plane. This thickened planar conjunction slows movement through the area to a crawl.",
                          desc: "You condense the substance of the Ethereal Plane as it interpenetrates the Material Plane. This thickened planar conjunction slows movement through the area to a crawl. Creatures moving through condensed ether (even incorporeal creatures), move at only half their normal speed and can’t take 5-foot steps. This slowing of movement doesn’t stack with",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Contagious Zeal", school: "Enchantment (Compulsion)", levels: "arcanist 3, bard 2, cleric 3, inquisitor 3, oracle 3, psychic 3, skald 2, sorcerer 3, spiritualist 3, warpriest 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The target gains a +2 morale bonus on attack rolls and weapon damage rolls, 1d6 temporary hit points, and a +4 morale bonus on saving throws against fear effects and to the DC of Intimidate checks…",
                          desc: "The target gains a +2 morale bonus on attack rolls and weapon damage rolls, 1d6 temporary hit points, and a +4 morale bonus on saving throws against fear effects and to the DC of Intimidate checks attempted against her. Once per round, the target can select one other creature to gain this bonus as well. The chosen creature can be no farther from the target than 25 feet + 5 feet for every 2 caster levels you possess, and a creature can’t be selected more than once in this way. Such allies gain only the bonuses and temporary hit points; they don’t continue to spread it to other creatures. The additional creatures’ bonuses and temporary hit points share the original spell’s duration, so when that duration ends, all affected creatures lose their bonuses and any remaining temporary hit points from this spell.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Create Mindscape", school: "Illusion (Phantasm)", levels: "arcanist 5, medium 4, mesmerist 4, psychic 4, sorcerer 5, wizard 5",
                          castingTime: "1 round", components: "V, S",
                          range: "long (400 ft. + 40 ft./level)", area: "", targets: "one creature",
                          duration: "10 minutes/level",
                          savingThrow: "Will disbelief, see text;", sr: true,
                          summary: "You create an immersive mindscape (see page 235) that the minds of both you and another creature enter together.",
                          desc: "You create an immersive mindscape (see page 235) that the minds of both you and another creature enter together. You choose whether the mindscape is overt or veiled, and whether it’s harmless or harmful. You can choose any shape and size trait, as well as any gravity trait (though you can’t make it so the gravity is so strong it harms creatures within). The mindscape has normal time, no alignment traits, and normal magic. You designate where both you and your subject appear. You don’t need line of sight to draw the subject creature into the mindscape, but you must be aware of its presence within range. If you target an area with more than one sentient creature and you have never seen any of the creatures before (for example, if you know a group of soldiers is inside a barracks but you can’t see them through the door), the subject of this spell is selected at random. If you have seen firsthand the creature you wish to target (continuing the example, if you spied the sergeant entering the room moments before), you can select it unerringly from among all the creatures. You must appear somewhere in your mindscape, though it’s relatively easy to shield yourself from the view of any other creatures inside if they don’t realize they’re in a mindscape. You must also create a method of exit from the mindscape when you cast this spell, and that method must be possible to achieve based on the traits of the mindscape, even if it is obscure or difficult. The GM decides whether a method of escape is reasonable. Anything that would be a reasonable method of waking from a dream during deep sleep could allow one to leave a mindscape. More creatures than the initial two can enter an existing mindscape, typically through the use of the",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Create Mindscape, Greater", school: "Illusion (Phantasm)", levels: "arcanist 5, medium 4, mesmerist 4, psychic 4, sorcerer 5, wizard 5",
                          castingTime: "1 round", components: "V, S",
                          range: "long (400 ft. + 40 ft./level)", area: "", targets: "one creature",
                          duration: "10 minutes/level",
                          savingThrow: "Will disbelief, see text;", sr: true,
                          summary: "This spell functions like create mindscape , except it can affect more creatures, the mindscape lasts longer, and you can choose the mindscape’s magic trait.",
                          desc: "This spell functions like create mindscape , except it can affect more creatures, the mindscape lasts longer, and you can choose the mindscape’s magic trait. You can also direct a number of believable creatures at a time equal to your caster level.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Decrepit Disguise", school: "Illusion (Glamer)", levels: "arcanist 1, bard 1, medium 1, mesmerist 1, occultist 1, psychic 1, skald 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one object of no more than 10 cu. ft./level",
                          duration: "1 day/level",
                          savingThrow: "none (object) or Will disbelief (if interacted with);", sr: false,
                          summary: "You make an object seem like a worthless version of itself. A masterwork or magic sword could seem to be a useless, rusting, discarded blade, and a luxurious throne could appear to be a decrepit…",
                          desc: "You make an object seem like a worthless version of itself. A masterwork or magic sword could seem to be a useless, rusting, discarded blade, and a luxurious throne could appear to be a decrepit wooden chair. If used against an attended object, the wielder can immediately attempt a Will save to disbelieve the effect. Decrepit disguise counters and dispels",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Deja Vu", school: "Enchantment (Compulsion)", levels: "arcanist 1, bard 1, mesmerist 1, psychic 1, skald 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "2 rounds",
                          savingThrow: "none;", sr: true,
                          summary: "You reach into the target’s mind and put its thought processes into a temporary loop.",
                          desc: "You reach into the target’s mind and put its thought processes into a temporary loop. Whatever full-round, standard, or move actions the creature takes on its first turn after you cast this spell, it must repeat on the turn after that. The creature must take the same type of actions in the same order (for example, making a full attack, casting a specific spell, withdrawing, attempting a bull rush combat maneuver, or activating a magic item) and must act against the same target or targets, but doesn’t have to make exactly the same choices (such as using Power Attack when attacking, moving exactly 15 feet, or choosing “drop” for the command spell). If the circumstances would prevent the target from repeating an action, such as if the target of its attack is dead or the target cannot cast the same spell again, the target instead becomes confused until the spell ends. A creature currently affected by",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Demand Offering", school: "Enchantment (Compulsion)", levels: "antipaladin 1, arcanist 2, bard 2, inquisitor 2, mesmerist 1, occultist 2, psychic 2, skald 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "5 ft.", area: "", targets: "one creature",
                          duration: "instantaneous or 1 round",
                          savingThrow: "Will negates;", sr: true,
                          summary: "A creature that fails its save uses an immediate action to hand you whatever object it’s currently wielding or holding.",
                          desc: "A creature that fails its save uses an immediate action to hand you whatever object it’s currently wielding or holding. If the target doesn’t have an immediate action available, it uses a move action at the beginning of its next turn to hand you the object. If it’s currently holding or wielding more than one item, determine randomly which item it gives you. If you’re no longer adjacent to the creature when it has to give you the item, the spell ends with no effect. A creature that isn’t holding an item when you cast this spell is unaffected.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Detect Mindscape", school: "Divination", levels: "arcanist 3, medium 2, mesmerist 2, psychic 2, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "60 ft.", area: "cone-shaped emanation", targets: "",
                          duration: "concentration, up to 1 minute/level (D)",
                          savingThrow: "Will negates, see text;", sr: false,
                          summary: "This spell functions similarly to detect thoughts , allowing you to sense when one or more creatures’ consciousnesses are inside a mindscape (see page 234).",
                          desc: "This spell functions similarly to detect thoughts , allowing you to sense when one or more creatures’ consciousnesses are inside a mindscape (see page 234). The amount of information revealed depends on how long you study a particular subject.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Detect Psychic Significance", school: "Divination", levels: "medium 0, mesmerist 0, occultist 0, psychic 0, spiritualist 0",
                          castingTime: "1 standard action", components: "V, S",
                          range: "40 ft.", area: "40-ft.-radius burst, centered on you", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "You detect the presence of psychically significant items in your vicinity.",
                          desc: "You detect the presence of psychically significant items in your vicinity. Such items are those that might have significant psychic imprints or histories that can be read by the psychometry occult skill unlock (see page 196), or items under the effects of the charge object or",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Divide Mind", school: "Enchantment", levels: "psychic 9",
                          castingTime: "1 standard action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute",
                          savingThrow: "none;", sr: false,
                          summary: "You partition your mind to maximize your mental power. Until the spell ends, you roll twice and use the higher result for all Will saves, Intelligence checks, and Intelligence-based skill checks.",
                          desc: "You partition your mind to maximize your mental power. Until the spell ends, you roll twice and use the higher result for all Will saves, Intelligence checks, and Intelligence-based skill checks. In addition, as a swift action you can have your second mind perform any purely mental action that normally requires a standard action or a move action. This includes casting psychic spells, using spell-like abilities, and concentrating on spells. Spells and spell-like abilities cast or used by your secondary mind this way can’t exceed 5th level.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Dream Council", school: "Illusion (Phantasm)", levels: "arcanist 7, bard 6, medium 4, mesmerist 5, psychic 6, skald 6, sorcerer 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S",
                          range: "unlimited", area: "", targets: "one or more living creatures",
                          duration: "see text",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions as dream , but you and the target of your",
                          desc: "This spell functions as dream , but you and the target of your",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Dream Scan", school: "Divination", levels: "arcanist 6, bard 6, medium 4, mesmerist 5, psychic 5, skald 6, sorcerer 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S",
                          range: "unlimited", area: "", targets: "one living creature",
                          duration: "see text",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions as dream , but rather than sending a message to a sleeping target, you can instead read the target’s thoughts. The target must be asleep for you to perform a",
                          desc: "This spell functions as dream , but rather than sending a message to a sleeping target, you can instead read the target’s thoughts. The target must be asleep for you to perform a",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Dream Travel", school: "Conjuration (Teleportation)", levels: "mesmerist 6, psychic 6",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "you and one creature/level",
                          duration: "1 hour/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You and the other targets of the spell are physically drawn from the Material Plane into the Dimension of Dreams on a voyage into the dreams of a creature you designate.",
                          desc: "You and the other targets of the spell are physically drawn from the Material Plane into the Dimension of Dreams on a voyage into the dreams of a creature you designate. In the Dimension of Dreams, you move through a swirling sea of thoughts, desires, and emotions created by the minds of dreamers everywhere to reach your destination dreamscape. Reaching the destination dreamscape takes 1 hour. At any point before the spell’s duration ends, you can dismiss the spell to return to where you started on the Material Plane. The connection between dreams and reality is inherently tenuous, and your ability to arrive precisely where you mean to is dependent on your familiarity with the dreamer you’re trying to find. To determine how accurate your arrival is at the end of your dream travel, roll d% on the following table. Familiarity On Target",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Dream Voyage", school: "Conjuration (Teleportation)", levels: "psychic 9",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "you and one creature/level",
                          duration: "1 hour/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions as dream travel , but you and your companions travel through the Dimension of Dreams in a fantastical vehicle of your own devising that halves the travel time.",
                          desc: "This spell functions as dream travel , but you and your companions travel through the Dimension of Dreams in a fantastical vehicle of your own devising that halves the travel time. Only you can pilot the vessel, and you can do so even if you aren’t inside it. Your psychic vehicle buffers minds from the intense emotional tides of the Dimension of Dreams, rendering everyone inside immune to harmful emotion and fear effects. Unlike with",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ectoplasmic Eruption", school: "Evocation", levels: "psychic 7, spiritualist 6",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "30-ft.-radius burst", targets: "",
                          duration: "1 round/level",
                          savingThrow: "Reflex half and Will partial, see text;", sr: true,
                          summary: "A cascading avalanche of pale, swirling ectoplasmic matter erupts from a point you select.",
                          desc: "A cascading avalanche of pale, swirling ectoplasmic matter erupts from a point you select. All creatures in the area when the spell is cast take 6d6 points of bludgeoning damage and are entangled for a number of rounds equal to your caster level. This spell passes between planes, so it affects ethereal and incorporeal creatures normally. In addition, each ethereal or incorporeal creature in the area must succeed at a Will save or be pushed partially onto the Material Plane for a number of rounds equal to your caster level. It must attempt this Will save regardless of whether it succeeded at the Reflex save. An incorporeal creature pushed partially onto the Material Plane can’t enter or pass through solid objects, takes half damage from nonmagical attack forms, and takes full damage from magic weapons, spells, spell-like effects, and supernatural effects. Corporeal spells and effects that don’t cause damage affect the creature normally instead of having a 50% chance of affecting it. The creature still gains the other benefits of being incorporeal, and retains its attack bonuses and Armor Class.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ectoplasmic Snare", school: "Evocation", levels: "arcanist 3, magus 3, psychic 3, shaman 3, sorcerer 3, spiritualist 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "entangling web of ectoplasm", targets: "",
                          duration: "concentration, up to 1 round/level (D)",
                          savingThrow: "Reflex partial, see text;", sr: true,
                          summary: "You unleash a writhing tendril of ectoplasm to grapple or entangle a target creature. You must make a ranged touch attack to strike a target. If you hit, the target can attempt a Reflex save.",
                          desc: "You unleash a writhing tendril of ectoplasm to grapple or entangle a target creature. You must make a ranged touch attack to strike a target. If you hit, the target can attempt a Reflex save. On a successful save, the target is entangled for the duration of the spell and suffers no other effects. If the target fails this saving throw, the tendril is more restrictive, making the target grappled and dealing it 1d6+4 points of bludgeoning damage. Each round when you concentrate to maintain the spell, the snare attempts a grapple combat maneuver check to maintain the grapple. As normal when grappling, the snare gains a +5 bonus on grapple combat maneuver checks against opponents it is already grappling. The snare’s CMB is equal to 6 + your caster level, and its CMD is equal to 16 + your caster level. Since the ectoplasm passes between planes, this spell affects incorporeal and ethereal creatures normally. You remain tethered to the target for the duration of the spell. You can shrink or extend the snare, but if the distance between you and the target exceeds the spell’s range, the snare disappears. The ectoplasmic tether has hardness 10 and a number of hit points equal to 10 + your caster level + your Constitution modifier, and the tether can be damaged or sundered anywhere along its length. You are not considered to have the grappled condition while tethered to the target. You can perform the move or damage action on a successfully grappled target, moving it up to half your speed or dealing an additional 1d6+4 points of bludgeoning damage to it on a successful grapple combat maneuver check. You can’t pin your target.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ego Whip I", school: "Enchantment (Compulsion)", levels: "psychic 3",
                          castingTime: "1 standard action", components: "S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "Will partial;", sr: true,
                          summary: "You can use your psychic power to overwhelm the target’s ego, leaving the target feeling hopeless and unsure of itself. Choose Intelligence, Wisdom, or Charisma.",
                          desc: "You can use your psychic power to overwhelm the target’s ego, leaving the target feeling hopeless and unsure of itself. Choose Intelligence, Wisdom, or Charisma. The target takes a –2 penalty to that ability score, and is also staggered for the first round it’s affected. A successful Will save negates the staggered effect and reduces the duration of the penalty to 1 round. Ego Whip II",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ego Whip II", school: "Enchantment (Compulsion)", levels: "psychic 3",
                          castingTime: "1 standard action", components: "S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "Will partial;", sr: true,
                          summary: "This functions as ego whip I , but the target takes a –4 penalty to the chosen ability score and is staggered for 1d4 rounds on a failed Will save. This spell can be undercast.",
                          desc: "This functions as ego whip I , but the target takes a –4 penalty to the chosen ability score and is staggered for 1d4 rounds on a failed Will save. This spell can be undercast.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ego Whip III", school: "Enchantment (Compulsion)", levels: "psychic 3",
                          castingTime: "1 standard action", components: "S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "Will partial;", sr: true,
                          summary: "This functions as ego whip I , but the target takes a –6 penalty to the chosen ability score and is staggered for 1d6 rounds on a failed Will save. This spell can be undercast.",
                          desc: "This functions as ego whip I , but the target takes a –6 penalty to the chosen ability score and is staggered for 1d6 rounds on a failed Will save. This spell can be undercast.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ego Whip IV", school: "Enchantment (Compulsion)", levels: "psychic 3",
                          castingTime: "1 standard action", components: "S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "Will partial;", sr: true,
                          summary: "This functions as ego whip I , but the target takes –8 penalty to the chosen ability score and is staggered for 1d8 rounds on a failed Will save. This spell can be undercast.",
                          desc: "This functions as ego whip I , but the target takes –8 penalty to the chosen ability score and is staggered for 1d8 rounds on a failed Will save. This spell can be undercast.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ego Whip V", school: "Enchantment (Compulsion)", levels: "psychic 3",
                          castingTime: "1 standard action", components: "S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "Will partial;", sr: true,
                          summary: "This functions as ego whip I , but the target takes –10 penalty to the chosen ability score and is staggered for 1d10 rounds on a failed Will save. This spell can be undercast.",
                          desc: "This functions as ego whip I , but the target takes –10 penalty to the chosen ability score and is staggered for 1d10 rounds on a failed Will save. This spell can be undercast.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Emotive Block", school: "Enchantment (Compulsion)", levels: "mesmerist 2, psychic 3, spiritualist 2",
                          castingTime: "1 standard action", components: "S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You create an emotional block in the target’s mind, adding an emotion component to each spell or spell-like ability he uses.",
                          desc: "You create an emotional block in the target’s mind, adding an emotion component to each spell or spell-like ability he uses. This is in addition to any other components the spell already requires, and doesn’t replace the somatic component. The target’s spelllike abilities require this emotion component, even though they normally don’t need spell components. As usual with emotion components, the target can’t cast spells (or use spell-like abilities, in this case) while affected by a non-harmless emotion or fear effect.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Entrap Spirit", school: "Necromancy", levels: "medium 4, occultist 5, psychic 5, spiritualist 4",
                          castingTime: "1 standard action", components: "V, S, F (a small silver mirror)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "incorporeal creature or haunt",
                          duration: "1 hour/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You trap the target in the mirror used as the spell’s focus. The target cannot be affected by any means while inside the mirror.",
                          desc: "You trap the target in the mirror used as the spell’s focus. The target cannot be affected by any means while inside the mirror. If the mirror is destroyed, any incorporeal creature within is immediately freed and any haunt within returns to its original location. Creatures that assumed incorporeal form through a spell or other means remain incorporeal while trapped, even if the duration of the effect that rendered them incorporeal expires. If your focus mirror belonged to the target, the target takes a –2 penalty on its saving throw.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Erase Impressions", school: "Abjuration", levels: "medium 3, mesmerist 4, occultist 3, psychic 5, spiritualist 4",
                          castingTime: "1 round", components: "V, S",
                          range: "touch", area: "", targets: "object touched",
                          duration: "instantaneous",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "You banish psychic impressions from the object touched, rendering it devoid of recent history. You choose how much time to erase, up to a maximum of 1 day per caster level.",
                          desc: "You banish psychic impressions from the object touched, rendering it devoid of recent history. You choose how much time to erase, up to a maximum of 1 day per caster level. You must erase impressions from the present time back; you cannot choose to leave recent events untouched. Impressions erased in this manner cannot be recovered via object reading ,",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ethereal Envelope", school: "Conjuration (Teleportation)", levels: "psychic 5, spiritualist 4",
                          castingTime: "1 standard action", components: "S, M (empty crystal box)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 hour/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "You place yourself into a cataleptic meditative state and shunt yourself to the Ethereal Plane, where your body is cocooned within a folded ripple of misty space, with total cover from creatures on…",
                          desc: "You place yourself into a cataleptic meditative state and shunt yourself to the Ethereal Plane, where your body is cocooned within a folded ripple of misty space, with total cover from creatures on the Ethereal Plane. While inside your ethereal envelope , you are treated as being asleep for most purposes. You can choose an amount of time within the duration when casting this spell, and you automatically dismiss the spell when that time elapses. Your",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ethereal Envelopment", school: "Conjuration (Teleportation)", levels: "psychic 7, spiritualist 5",
                          castingTime: "1 standard action", components: "S, M (empty crystal box)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 hour/level (D)",
                          savingThrow: "Will negates, see text;", sr: true,
                          summary: "This spell is similar to ethereal envelope , but it allows you to shunt an unwilling creature to the Ethereal Plane and seal it there within a cocoon of misty ethereal fibers.",
                          desc: "This spell is similar to ethereal envelope , but it allows you to shunt an unwilling creature to the Ethereal Plane and seal it there within a cocoon of misty ethereal fibers. If the target fails its save, it’s forced into a cataleptic meditative state as if unconscious. However, each round at the end of its turn, it can attempt a Will save to awaken itself from this meditation. Once the target awakens, it is considered pinned, treating your caster level as your CMB and your CMD as 10 + your caster level + your ability modifier for your primary spellcasting ability score. A successful grapple combat maneuver check or Escape Artist check leaves the creature grappled rather than pinned but doesn’t allow it to escape. However, a trapped creature can attack the cocoon as described in the",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ethereal Fists", school: "Transmutation", levels: "magus 4, spiritualist 3",
                          castingTime: "1 standard action", components: "S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "Your hands reach simultaneously into the Ethereal and Material planes, allowing you to deal normal damage with claws, unarmed strikes, and touch spells or effects to ethereal creatures.",
                          desc: "Your hands reach simultaneously into the Ethereal and Material planes, allowing you to deal normal damage with claws, unarmed strikes, and touch spells or effects to ethereal creatures. Miss chance due to etherealness (such as from the blink spell) doesn’t apply, though miss chance based on concealment does.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Etheric Shards", school: "Evocation", levels: "occultist 4, psychic 5, spiritualist 4",
                          castingTime: "1 standard action", components: "S, M (broken glass)",
                          range: "medium (100 ft. + 10 ft./level)", area: "one 10-ft. cube/level", targets: "",
                          duration: "1 hour/level (D)",
                          savingThrow: "Reflex partial or Reflex negates (see text);", sr: false,
                          summary: "You harden interpenetrated ethereal substance into deadly transdimensional razors that are invisible to normal sight.",
                          desc: "You harden interpenetrated ethereal substance into deadly transdimensional razors that are invisible to normal sight. Movement through an area of etheric shards is halved, even for incorporeal creatures, and creatures entering a 5-foot cube filled with",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Explode Head", school: "Evocation", levels: "arcanist 6, magus 6, psychic 5, sorcerer 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living corporeal creature",
                          duration: "instantaneous",
                          savingThrow: "special, see text;", sr: true,
                          summary: "You cause incredible pressure to build in the target’s head; this spell works only on a creature that has a head and would die from the loss of a head.",
                          desc: "You cause incredible pressure to build in the target’s head; this spell works only on a creature that has a head and would die from the loss of a head. The spell kills any such target that has 20 hit points or fewer, exploding its head and spreading debris in a 10-foot radius. Each creature in the area must succeed at a Reflex saving throw or take 2d6 points of slashing damage from the flying debris. A target with more than 20 hit points takes 1d6 points of damage per caster level (maximum 20d6), but can attempt a Fortitude save to take only half damage. If this damage would cause the target to become disabled or dying, the target dies and its head explodes as described above.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Foster Hatred", school: "Enchantment (Compulsion)", levels: "antipaladin 4, inquisitor 5, mesmerist 5, psychic 6, spiritualist 5",
                          castingTime: "1 standard action", components: "S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "any number of living creatures, no two of which can be more than 30 ft. apart",
                          duration: "1 hour/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You build upon your targets’ innate prejudice, stoking it from a simmer to the full flame of hatred. Choose a creature type (if you choose humanoid or outsider, you must also choose a subtype).",
                          desc: "You build upon your targets’ innate prejudice, stoking it from a simmer to the full flame of hatred. Choose a creature type (if you choose humanoid or outsider, you must also choose a subtype). Targets who hold no ill will toward and have a completely positive opinion of the chosen creatures automatically succeed at their saving throws, while targets with a particular hatred toward the chosen creature (such as the dwarf’s hatred racial ability) take a –4 penalty on their saving throws. Targets that fail their saving throws become hostile toward all creatures of the chosen type and never treat them as allies for the spell’s duration. Affected creatures take everything creatures of the chosen type do in the worst possible light. Since most creatures don’t hold ill-will toward their own race, you can use foster hatred toward a smaller subset of creatures of your chosen type, such as worshipers of Shelyn, in order to focus the hatred onto your chosen targets.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ghost Whip", school: "Evocation", levels: "arcanist 2, cleric 2, inquisitor 2, magus 2, occultist 2, oracle 2, psychic 2, sorcerer 2, spiritualist 2, warpriest 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "0 ft.", area: "whip of flexible ectoplasm", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: true,
                          summary: "A white, 15-foot-long lash of ghostly evanescence appears from your hand. This weapon is treated as a ghost touch whip with no enhancement bonus. You can wield it as a whip as if you were proficient.",
                          desc: "A white, 15-foot-long lash of ghostly evanescence appears from your hand. This weapon is treated as a ghost touch whip with no enhancement bonus. You can wield it as a whip as if you were proficient. Attacks with a",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Grave Words", school: "Necromancy", levels: "medium 0, occultist 0, psychic 0, spiritualist 0",
                          castingTime: "1 minute", components: "S",
                          range: "touch", area: "", targets: "one dead creature",
                          duration: "1 round",
                          savingThrow: "None", sr: false,
                          summary: "With this spell and a touch, you can force a corpse talk to you, but you can’t ask it specific questions or communicate with it at all.",
                          desc: "With this spell and a touch, you can force a corpse talk to you, but you can’t ask it specific questions or communicate with it at all. The corpse will start babbling for 1 round, spitting out random sentences. There is a 10% chance this information is of some use to the caster, but it is difficult to distinguish whether the information is useful (the GM makes the percentile roll in secret). Useful information may include warnings about dangers deeper in a dungeon, the command word to a magic item, or even vague and spectral warnings of your or your companions’ future. The GM decides what information, useful or not, the corpse spews out in its babbling. Once a corpse has been subject to",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hypercognition", school: "Divination", levels: "alchemist 3, arcanist 4, bard 3, investigator 3, medium 2, psychic 2, skald 3, sorcerer 4, wizard 4",
                          castingTime: "1 standard action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "see text",
                          savingThrow: "None", sr: false,
                          summary: "You rapidly catalog and collate all available data on a person, place, thing, or event, calling to mind scraps of memory and assembling clues in a logical and systematic order.",
                          desc: "You rapidly catalog and collate all available data on a person, place, thing, or event, calling to mind scraps of memory and assembling clues in a logical and systematic order. Immediately after casting the spell, you can begin spending the necessary time to perform an Intelligence check, a Linguistics check to detect a forgery or decipher a hidden message, or a Knowledge check. If the check requires at least 3 rounds, you can perform it five times as quickly (minimum 1 round). If the check required fewer than 3 rounds, you can perform it instantly. Either way, you gain an insight bonus on the check equal to your caster level (maximum bonus +10), but this bonus can’t raise your result above what you could have achieved on a natural 20.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Id Insinuation I", school: "Enchantment (Compulsion)", levels: "psychic 2",
                          castingTime: "1 standard action", components: "S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "concentration + 1 round",
                          savingThrow: "Will negates;", sr: true,
                          summary: "By invading the mind of a creature with your psychic presence, you can isolate parts of its mind, preventing the target from functioning in a coherent manner.",
                          desc: "By invading the mind of a creature with your psychic presence, you can isolate parts of its mind, preventing the target from functioning in a coherent manner. The target is confused as long as you concentrate on it plus 1 additional round. A successful Will save negates this effect. Id Insinuation II",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Id Insinuation II", school: "Enchantment (Compulsion)", levels: "psychic 2",
                          castingTime: "1 standard action", components: "S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "concentration + 1 round",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This functions as id insinuation I , except as noted above. In addition, on the first round of the effect, the targets of this spell must roll twice to determine the result of their confused…",
                          desc: "This functions as id insinuation I , except as noted above. In addition, on the first round of the effect, the targets of this spell must roll twice to determine the result of their confused condition. You select which roll is used. This spell can be undercast.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Id Insinuation III", school: "Enchantment (Compulsion)", levels: "psychic 2",
                          castingTime: "1 standard action", components: "S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "concentration + 1 round",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This functions as id insinuation I , except as noted above. In addition, on the first 2 rounds of the effect, the targets of this spell must roll twice to determine the result of their confused…",
                          desc: "This functions as id insinuation I , except as noted above. In addition, on the first 2 rounds of the effect, the targets of this spell must roll twice to determine the result of their confused conditions. You select which roll is used. This spell can be undercast.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Id Insinuation IV", school: "Enchantment (Compulsion)", levels: "psychic 2",
                          castingTime: "1 standard action", components: "S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "concentration + 1 round",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This functions as id insinuation I , except as noted above. In addition, on the first round of the effect, you can select the result of each creature’s confused condition without having to roll, but…",
                          desc: "This functions as id insinuation I , except as noted above. In addition, on the first round of the effect, you can select the result of each creature’s confused condition without having to roll, but this doesn’t allow you to make any decisions about how that result is applied. On the following rounds of the effect, the targets of this spell must roll twice to determine their confused effect. You select which roll is used. This spell can be undercast.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Implant False Reading", school: "Illusion (Glamer)", levels: "mesmerist 2, occultist 2, psychic 2",
                          castingTime: "1 minute", components: "V, S",
                          range: "touch", area: "", targets: "object touched",
                          duration: "1 day/level",
                          savingThrow: "none, see text;", sr: false,
                          summary: "You implant a false psychometric reading into an object, imbuing the item with misleading information that might be learned from the object reading spell or through the psychometry occult skill…",
                          desc: "You implant a false psychometric reading into an object, imbuing the item with misleading information that might be learned from the object reading spell or through the psychometry occult skill unlock (see page 196). This information might fool enemies, create a false history, or pass on secret messages through objects to psychically attuned allies. You can implant any information you wish that could be implanted by the",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Implanted Projection", school: "Enchantment (Compulsion)", levels: "mesmerist 1, psychic 1, spiritualist 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (see text);", sr: true,
                          summary: "This spell functions as telempathic projection OA , except its mood-altering effects remain dormant in the target’s mind.",
                          desc: "This spell functions as telempathic projection OA , except its mood-altering effects remain dormant in the target’s mind. Upon casting this spell, the caster designates a command word or phrase, of which the target retains no memory. The next creature to speak the command word or phrase to the target triggers the implanted",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Incorporeal Chains", school: "Evocation", levels: "psychic 6, spiritualist 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one incorporeal creature/level, no two of which can be more than 30 ft. apart",
                          duration: "concentration",
                          savingThrow: "none;", sr: true,
                          summary: "You summon ghostly chains to bind incorporeal creatures. The chains’ CMB is equal to your caster level + your Intelligence modifier.",
                          desc: "You summon ghostly chains to bind incorporeal creatures. The chains’ CMB is equal to your caster level + your Intelligence modifier. Roll only once for the entire spell effect and apply the result to all targeted incorporeal creatures. If the chains succeed in grappling an incorporeal creature, the creature takes an amount of damage equal to 1d8 + your key spellcasting ability score modifier and gains the grappled condition. Grappled opponents can’t move without first breaking the grapple. The spell prohibits all other movement unless the creature breaks the grapple first (although dimensional magic and the like still work as normal). Each round you concentrate, the chains continue grappling their current targets (though they don’t seek out targets they aren’t currently grappling). The incorporeal chains receive a +5 bonus on grapple combat maneuver checks against opponents the chains are already grappling, but can’t move foes or pin foes. Each round the",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Inflict Pain", school: "Enchantment", levels: "antipaladin 2, arcanist 3, inquisitor 2, medium 2, mesmerist 2, occultist 2, psychic 2, sorcerer 3, spiritualist 2, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "Will partial, see text;", sr: true,
                          summary: "You telepathically wrack the target’s mind and body with agonizing pain that imposes a –4 penalty on attack rolls, skill checks, and ability checks.",
                          desc: "You telepathically wrack the target’s mind and body with agonizing pain that imposes a –4 penalty on attack rolls, skill checks, and ability checks. A successful Will save reduces the duration to 1 round.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Inflict Pain, Mass", school: "Enchantment", levels: "antipaladin 4, arcanist 7, inquisitor 5, medium 4, mesmerist 5, occultist 5, psychic 6, sorcerer 7, spiritualist 5, witch 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature/level, no two of which can be more than 30 ft. apart.",
                          duration: "1 round/level",
                          savingThrow: "Will partial, see text;", sr: true,
                          summary: "This spell functions like inflict pain except as noted above.",
                          desc: "This spell functions like inflict pain except as noted above.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Instigate Psychic Duel", school: "Illusion (Phantasm)", levels: "medium 2, mesmerist 2, occultist 2, psychic 2, spiritualist 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "1 minute/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You begin a psychic duel (see page 202) with a creature. This psychic duel takes place on a binary mindscape (see page 235) that includes only two minds: yours and the target’s.",
                          desc: "You begin a psychic duel (see page 202) with a creature. This psychic duel takes place on a binary mindscape (see page 235) that includes only two minds: yours and the target’s. This spell ends and both minds return to their respective bodies if one of you drops below 0 hit points or if both of you agree to end the psychic duel (a free action that you can perform even if it isn’t your turn). Even if you cast the spell, you must succeed at a Will save to escape your own psychic duel if your opponent doesn’t want to allow you to leave. Spells like mindscape door can also free you from the mindscape (and",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Intellect Fortress I", school: "Abjuration", levels: "psychic 4",
                          castingTime: "1 immediate action", components: "V",
                          range: "20 ft.", area: "20-ft.-radius emanation centered on you", targets: "",
                          duration: "1 round",
                          savingThrow: "none;", sr: true,
                          summary: "Using the power of pure logic, you disrupt mental attacks. Intellect fortress I suppresses all effects with the emotion and fear descriptors for its duration.",
                          desc: "Using the power of pure logic, you disrupt mental attacks. Intellect fortress I suppresses all effects with the emotion and fear descriptors for its duration.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Intellect Fortress II", school: "Abjuration", levels: "psychic 4",
                          castingTime: "1 immediate action", components: "V",
                          range: "20 ft.", area: "20-ft.-radius emanation centered on you", targets: "",
                          duration: "1 round",
                          savingThrow: "none;", sr: true,
                          summary: "This spell functions as intellect fortress I , but in addition, any mind-affecting effects that deal damage have their damage reduced by half (before any reduction due to a successful save or other…",
                          desc: "This spell functions as intellect fortress I , but in addition, any mind-affecting effects that deal damage have their damage reduced by half (before any reduction due to a successful save or other effect). This applies to both hit point damage and ability score damage. This spell can be undercast.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Intellect Fortress III", school: "Abjuration", levels: "psychic 4",
                          castingTime: "1 immediate action", components: "V",
                          range: "20 ft.", area: "20-ft.-radius emanation centered on you", targets: "",
                          duration: "1 round",
                          savingThrow: "none;", sr: true,
                          summary: "This spell functions as intellect fortress II , but creatures within the area who succeed at a saving throw against a fear or emotion effect suffer no effects, even if there is usually a partial…",
                          desc: "This spell functions as intellect fortress II , but creatures within the area who succeed at a saving throw against a fear or emotion effect suffer no effects, even if there is usually a partial effect on a successful saving throw. This spell can be undercast.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mental Barrier I", school: "Abjuration", levels: "psychic 2",
                          castingTime: "1 immediate action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round",
                          savingThrow: "None", sr: false,
                          summary: "You put a barrier of mental energy that protects you from harm. This barrier grants you a +4 shield bonus to AC. In addition, you take half damage from mind thrust I and",
                          desc: "You put a barrier of mental energy that protects you from harm. This barrier grants you a +4 shield bonus to AC. In addition, you take half damage from mind thrust I and",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mental Barrier II", school: "Abjuration", levels: "psychic 2",
                          castingTime: "1 immediate action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as mental barrier I , but the shield bonus to AC increases to +6. In addition, you take half damage from",
                          desc: "This spell functions as mental barrier I , but the shield bonus to AC increases to +6. In addition, you take half damage from",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mental Barrier III", school: "Abjuration", levels: "psychic 2",
                          castingTime: "1 immediate action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as mental barrier I , but the shield bonus to AC increases to +8. In addition, you are immune to mine thrust I, and you take half damage from",
                          desc: "This spell functions as mental barrier I , but the shield bonus to AC increases to +8. In addition, you are immune to mine thrust I, and you take half damage from",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mental Barrier IV", school: "Abjuration", levels: "psychic 2",
                          castingTime: "1 immediate action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as mental barrier III , but if you are struck by a critical hit or sneak attack, there is a 25% chance that the additional damage is negated (as",
                          desc: "This spell functions as mental barrier III , but if you are struck by a critical hit or sneak attack, there is a 25% chance that the additional damage is negated (as",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mental Barrier V", school: "Abjuration", levels: "psychic 2",
                          castingTime: "1 immediate action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round",
                          savingThrow: "None", sr: false,
                          summary: "This functions as mental barrier III , but if you are struck by a critical hit or sneak attack, there is a 50% chance that the additional damage is negated (as",
                          desc: "This functions as mental barrier III , but if you are struck by a critical hit or sneak attack, there is a 50% chance that the additional damage is negated (as",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mental Block", school: "Divination", levels: "bard 2, mesmerist 1, psychic 2, skald 2",
                          castingTime: "1 standard action", components: "V",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You lock access to the target’s procedural memories, preventing it from drawing upon its experience and expertise.",
                          desc: "You lock access to the target’s procedural memories, preventing it from drawing upon its experience and expertise. The target loses all skill ranks, spells known, and spells prepared, as well as activated feat, extraordinary, supernatural, and spell-like abilities. Each round at the end of the target’s turn, the target can attempt another Will save to end this effect.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Microcosm", school: "Illusion (Phantasm)", levels: "psychic 9",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one or more creatures",
                          duration: "permanent",
                          savingThrow: "Will partial (see text);", sr: true,
                          summary: "You plunge the targets’ minds into a veiled immersive mindscape (see page 235) of your own design. You can affect any number of creatures whose combined total Hit Dice do not exceed 30.",
                          desc: "You plunge the targets’ minds into a veiled immersive mindscape (see page 235) of your own design. You can affect any number of creatures whose combined total Hit Dice do not exceed 30. A creature of 10 HD or fewer gets no saving throw, one of 11–15 HD escapes after 10 minutes per level you possess on a successful save, and a creature of 16 HD or more negates the effect on a successful save. Given time, the bodies of creatures whose minds are trapped in a microcosm can die of starvation and thirst without care. Creatures can neither escape from nor enter a",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mind Probe", school: "Divination", levels: "arcanist 5, medium 3, mesmerist 4, occultist 4, psychic 4, sorcerer 5, wizard 5",
                          castingTime: "1 minute", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You gain access to the subject’s memories and knowledge. You can attempt to learn the answer to one question per round. A successful Will save ends the spell.",
                          desc: "You gain access to the subject’s memories and knowledge. You can attempt to learn the answer to one question per round. A successful Will save ends the spell. Otherwise, the creature can attempt a Bluff check with a DC equal to 11 + your Sense Motive modifier. If it fails its Bluff check, you gain the answer you desire. If it succeeds at its check, you gain no information. If it succeeds by 5 or more, it answers whatever it chooses, and you believe that wrong answer to be true. Your questions are purely telepathic inquiries, and the answers to those questions are imparted directly to your mind. You and the target don’t need to speak the same language, though less intelligent creatures may yield up only appropriate sensory images in answer to your questions.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mind Swap", school: "Enchantment (Compulsion)", levels: "arcanist 6, medium 3, mesmerist 5, occultist 4, psychic 5, sorcerer 6, spiritualist 4, summoner 5, witch 6, wizard 6",
                          castingTime: "1 round", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "1 hour/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell is similar to possession , except you switch minds with the target, so instead of the target’s soul sharing its body with yours and being unable to act, the target’s mind moves to your…",
                          desc: "This spell is similar to possession , except you switch minds with the target, so instead of the target’s soul sharing its body with yours and being unable to act, the target’s mind moves to your body and can control it as if you each had cast possession on the other. Mind Swap, Major",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mind Swap, Major", school: "Enchantment (Compulsion)", levels: "arcanist 6, medium 3, mesmerist 5, occultist 4, psychic 5, sorcerer 6, spiritualist 4, summoner 5, witch 6, wizard 6",
                          castingTime: "1 round", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "1 hour/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "The spell functions as mind swap , except as noted above. In addition, after 24 hours, instead of using each other’s hit points, you each revert to your original hit points, modified by your new…",
                          desc: "The spell functions as mind swap , except as noted above. In addition, after 24 hours, instead of using each other’s hit points, you each revert to your original hit points, modified by your new Constitution modifiers. This spell can be reversed only with",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mind Thrust I", school: "Divination", levels: "psychic 1",
                          castingTime: "1 standard action", components: "S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "Will half;", sr: true,
                          summary: "You divine the most vulnerable portions of your opponent’s mind and overload it with a glut of psychic information. This attack deals 1d6 points of damage per caster level (maximum 5d6).",
                          desc: "You divine the most vulnerable portions of your opponent’s mind and overload it with a glut of psychic information. This attack deals 1d6 points of damage per caster level (maximum 5d6). The target receives a Will save for half damage. This attack has no effect on creatures without an Intelligence score. Mind Thrust II",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mind Thrust II", school: "Divination", levels: "psychic 1",
                          castingTime: "1 standard action", components: "S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "Will half;", sr: true,
                          summary: "This functions as mind thrust I , but the target takes 1d8 points of damage per caster level (maximum 5d8). This spell can be undercast.",
                          desc: "This functions as mind thrust I , but the target takes 1d8 points of damage per caster level (maximum 5d8). This spell can be undercast.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mind Thrust III", school: "Divination", levels: "psychic 1",
                          castingTime: "1 standard action", components: "S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "Will half;", sr: true,
                          summary: "This functions as mind thrust I , but the target takes 1d8 points of damage per caster level (maximum 10d8). This spell can be undercast.",
                          desc: "This functions as mind thrust I , but the target takes 1d8 points of damage per caster level (maximum 10d8). This spell can be undercast.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mind Thrust IV", school: "Divination", levels: "psychic 1",
                          castingTime: "1 standard action", components: "S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "Will half;", sr: true,
                          summary: "This functions as mind thrust I , but the target takes 1d8 points of damage per caster level (maximum 15d8) and is fatigued for 1 round if it fails its save. This spell can be undercast.",
                          desc: "This functions as mind thrust I , but the target takes 1d8 points of damage per caster level (maximum 15d8) and is fatigued for 1 round if it fails its save. This spell can be undercast.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mind Thrust V", school: "Divination", levels: "psychic 1",
                          castingTime: "1 standard action", components: "S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "Will half;", sr: true,
                          summary: "This functions as mind thrust IV , but the target is also exhausted for 1 round if it fails its save and fatigued for 1 round if it succeeds at its save. This spell can be undercast.",
                          desc: "This functions as mind thrust IV , but the target is also exhausted for 1 round if it fails its save and fatigued for 1 round if it succeeds at its save. This spell can be undercast.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mind Thrust VI", school: "Divination", levels: "psychic 1",
                          castingTime: "1 standard action", components: "S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "Will half;", sr: true,
                          summary: "This functions as mind thrust IV , but the target takes 1d8 points of damage per caster level (maximum 20d8) and is exhausted and stunned for 1 round if it fails its save. This spell can be undercast.",
                          desc: "This functions as mind thrust IV , but the target takes 1d8 points of damage per caster level (maximum 20d8) and is exhausted and stunned for 1 round if it fails its save. This spell can be undercast.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mindlink", school: "Divination", levels: "arcanist 1, medium 1, mesmerist 1, occultist 1, psychic 1, shaman 1, sorcerer 1, spiritualist 1, wizard 1",
                          castingTime: "1 standard action", components: "V",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "instantaneous",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You link your mind to that of a touched creature to swiftly communicate a large amount of complex information in an instant.",
                          desc: "You link your mind to that of a touched creature to swiftly communicate a large amount of complex information in an instant. You decide what the target learns, limited to any amount of information that otherwise could be communicated in 10 minutes. This information comes in a series of visual images and emotional sensations, and isn’t language-dependent.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mindscape Door", school: "Illusion (Phantasm)", levels: "arcanist 4, medium 3, mesmerist 3, psychic 3, sorcerer 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one illusory portal", targets: "",
                          duration: "10 minutes/level",
                          savingThrow: "Will negates (see text);", sr: false,
                          summary: "You or other creatures enter into or escape from a mindscape (see page 234) through an imaginary doorway. This doorway takes on any form of your choosing, but can be no larger than a 5-foot cube.",
                          desc: "You or other creatures enter into or escape from a mindscape (see page 234) through an imaginary doorway. This doorway takes on any form of your choosing, but can be no larger than a 5-foot cube. This spell has different effects depending on whether you are inside a mindscape when you cast it. When you cast this spell outside a mindscape, the doorway connects to one mindscape inhabited by a creature of your choice within close range (25 feet + 5 feet per 2 levels) of the door. That creature becomes the door’s conduit, but can attempt a Will save to deny access to the mindscape. You must be aware of the mindscape to connect a mindscape door to it. If you connect to the mindscape, you designate any number of creatures to be able to see and pass through the door as though it were a normal doorway. You can name specific creatures or categories of creatures, or allow all creatures access. Creatures other than those you designate can’t perceive or use the door, nor can mindless creatures or those immune to mind-affecting effects. Once anyone enters the mindscape through the door, a duplicate of the door appears inside the mindscape next to the creature you used as a conduit. Anyone inside a mindscape is able to perceive and use a",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mindwipe", school: "Enchantment (Compulsion)", levels: "arcanist 4, medium 4, mesmerist 4, occultist 4, psychic 4, sorcerer 4, spiritualist 4, wizard 4",
                          castingTime: "1 standard action", components: "V",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "instantaneous; see text",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You erase a portion of the target’s mind and experiences, inflicting 2 temporary negative levels on the target for 1 day per caster level.",
                          desc: "You erase a portion of the target’s mind and experiences, inflicting 2 temporary negative levels on the target for 1 day per caster level. If the target is a spellcaster who must choose and prepare spells in advance, each negative level imposed by mindwipe also causes the target to lose one prepared spell from her highest level of spells known for each of her spellcasting classes for which she must prepare spells. These lost spells are no longer considered known by the target until the corresponding negative levels are removed. If the target is a spontaneous spellcaster, each negative level inflicted by",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Node of Blasting", school: "Abjuration", levels: "medium 3, mesmerist 3, occultist 2, psychic 3",
                          castingTime: "1 standard action", components: "V",
                          range: "touch", area: "", targets: "one touched object weighing no more than 10 lbs.",
                          duration: "permanent until discharged (D)",
                          savingThrow: "Will partial, see text;", sr: false,
                          summary: "You imbue an object with psychic energy. The node of blasting unleashes a mental blast when a creature with a mind touches the object, dealing 6d6 points of damage to the creature touching the object…",
                          desc: "You imbue an object with psychic energy. The node of blasting unleashes a mental blast when a creature with a mind touches the object, dealing 6d6 points of damage to the creature touching the object and causing the creature to be staggered for 1 minute. A successful saving throw halves the damage and negates the staggered condition.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Object Possession", school: "Necromancy", levels: "arcanist 4, medium 2, mesmerist 3, occultist 2, psychic 3, sorcerer 4, spiritualist 3, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "unattended Tiny or Small object",
                          duration: "1 minute/level (D)",
                          savingThrow: "None;", sr: false,
                          summary: "This spell functions as lesser object possession , except as noted above. The possessed animated object has a number of Construction Points appropriate for its size (up to 3 CP for Large objects).",
                          desc: "This spell functions as lesser object possession , except as noted above. The possessed animated object has a number of Construction Points appropriate for its size (up to 3 CP for Large objects). You can return your consciousness to your body as a standard action. On your next turn, you can attempt to possess a different object as a standard action instead of ending the spell. Object Possession, Greater",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Object Possession, Greater", school: "Necromancy", levels: "arcanist 4, medium 2, mesmerist 3, occultist 2, psychic 3, sorcerer 4, spiritualist 3, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "unattended Tiny or Small object",
                          duration: "1 minute/level (D)",
                          savingThrow: "None;", sr: false,
                          summary: "This spell functions as object possession , except as noted above. The possessed animated object has a number of Construction Points appropriate for its size (up to 5 CP for Gargantuan objects).",
                          desc: "This spell functions as object possession , except as noted above. The possessed animated object has a number of Construction Points appropriate for its size (up to 5 CP for Gargantuan objects). Your silver cord extends to medium range (100 ft. + 10 ft./level). You can attempt to possess a construct instead of an unattended object as your first possession with this spell. If you do, this spell acts as",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Object Possession, Lesser", school: "Necromancy", levels: "arcanist 4, medium 2, mesmerist 3, occultist 2, psychic 3, sorcerer 4, spiritualist 3, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "unattended Tiny or Small object",
                          duration: "1 minute/level (D)",
                          savingThrow: "None;", sr: false,
                          summary: "This spell functions as possession , except you possess an object instead of a creature.",
                          desc: "This spell functions as possession , except you possess an object instead of a creature. A possessed object becomes capable of animation, gaining the statistics of an animated object of its size (including 1 CP worth of abilities;",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Object Reading", school: "Divination", levels: "medium 1, mesmerist 2, occultist 1, psychic 2, spiritualist 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "one touched object",
                          duration: "concentration, up to 1 round per level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You read the psychic impressions left upon an object by emotionally or psychically charged events in the item’s history, or the information imprinted by the charge object or",
                          desc: "You read the psychic impressions left upon an object by emotionally or psychically charged events in the item’s history, or the information imprinted by the charge object or",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Oneiric Horror", school: "Illusion (Phantasm)", levels: "arcanist 3, bard 2, medium 1, mesmerist 2, psychic 2, skald 2, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one living creature",
                          duration: "1 round/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You cause the subject to believe it is being attacked by a creature out of its nightmares. Each round, the subject makes a full-attack action against the creature.",
                          desc: "You cause the subject to believe it is being attacked by a creature out of its nightmares. Each round, the subject makes a full-attack action against the creature. A flying creature can still attempt a Fly check to hover. Each round on its turn after making a full attack against the imaginary creature, the subject can attempt a new saving throw to end the effect. The subject is fatigued for 1 minute after the spell ends. Oneiric Horror, Greater",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Oneiric Horror, Greater", school: "Illusion (Phantasm)", levels: "arcanist 3, bard 2, medium 1, mesmerist 2, psychic 2, skald 2, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one living creature",
                          duration: "1 round/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions as oneiric horror except each round the subject fails its Will save, it takes 1 point of Strength damage, and after the spell ends, the subject must succeed at a Fortitude save…",
                          desc: "This spell functions as oneiric horror except each round the subject fails its Will save, it takes 1 point of Strength damage, and after the spell ends, the subject must succeed at a Fortitude save or be fatigued for a number of minutes equal to the number of rounds spent under the spell’s effect.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Paranoia", school: "Illusion (Phantasm)", levels: "arcanist 2, bard 2, medium 1, mesmerist 1, psychic 2, skald 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "The target believes everyone it sees is an enemy. The target becomes hostile to all creatures, treating all creatures as enemies and only itself as an ally.",
                          desc: "The target believes everyone it sees is an enemy. The target becomes hostile to all creatures, treating all creatures as enemies and only itself as an ally. The target must attempt attacks of opportunity whenever any creature provokes them. Finally, whenever the target is adjacent to two or more creatures, its paranoia overwhelms it, and it takes a –2 penalty on attack rolls, weapon damage rolls, ability checks, skill checks, and saving throws.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Parchment Swarm", school: "Transmutation", levels: "arcanist 5, magus 5, occultist 4, sorcerer 5, wizard 5",
                          castingTime: "1 standard action", components: "S, M (blank parchment or magic scroll; see text)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "Reflex half, see text;", sr: true,
                          summary: "When you cast this spell, you quickly tear a parchment into shreds, releasing the flying fragments to swarm around a target creature and deliver thousands of tiny paper cuts.",
                          desc: "When you cast this spell, you quickly tear a parchment into shreds, releasing the flying fragments to swarm around a target creature and deliver thousands of tiny paper cuts. Using normal parchment, the spell deals 1d6 points of magical slashing damage per caster level (maximum 15d6). If you use a magic scroll as the material component, choose one of the spells stored in the scroll. If the spell is 1st level, you can choose to apply the effect of that spell to the parchment swarm’s target on a failed Reflex save (if the spell on the scroll has its own saving throw, the target then attempts that save as normal). If the spell on the scroll is at least 2nd level, you can choose to instead change",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Placebo Effect", school: "Illusion (Phantasm)", levels: "medium 2, mesmerist 2, psychic 2",
                          castingTime: "1 standard action", components: "V, M (a sugar cube)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 minute/level",
                          savingThrow: "Will disbelief (harmless);", sr: true,
                          summary: "The subject temporarily ceases to feel the ill effects of a single ongoing affliction or condition from the following list: blinded, cursed, dazed, deafened, diseased, fatigued, frightened,…",
                          desc: "The subject temporarily ceases to feel the ill effects of a single ongoing affliction or condition from the following list: blinded, cursed, dazed, deafened, diseased, fatigued, frightened, nauseated, panicked, paralyzed, poisoned, shaken, sickened, staggered, or stunned. If that affliction or condition has a duration, it is suspended until this spell expires. If the subject has multiple instances of the same type of affliction (such as multiple diseases), a single casting of this spell can suspend only one of them. Placebo effect doesn’t remove or temporarily negate any damage that the affliction may have already caused, nor does it provide protection against receiving such conditions again.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Possession", school: "Necromancy", levels: "arcanist 5, medium 3, mesmerist 5, occultist 4, psychic 5, sorcerer 5, spiritualist 4, summoner 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "1 hour/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You attempt to possess a creature by projecting your soul into its body.",
                          desc: "You attempt to possess a creature by projecting your soul into its body. The target creature must be within spell range and you must know where it is, though you do not need line of sight or line of effect to it. When you transfer your soul upon casting, your body appears to be dead. Failure to take over a host ends the spell. If you are successful, your life force occupies the host body. The host’s soul is imprisoned with you, but can still use its own senses (though it can’t assert any influence or use even purely mental abilities). You can communicate telepathically with the host as if you shared a common language, but only with your consent. You keep your Intelligence, Wisdom, Charisma, level, class, base attack bonus, base save bonuses, alignment, and mental abilities. The body retains its Strength, Dexterity, Constitution, hit points, natural abilities, and automatic abilities. A body with extra limbs doesn’t allow you to make more attacks (or more advantageous two-weapon attacks) than normal. You can’t activate the body’s extraordinary or supernatural abilities, nor can you cast any of its spells or spell-like abilities. As a standard action, you can shift freely back to your own body regardless of range, so long as it remains on the same plane. If the host’s body is killed, you return to your own body and the life force of the host departs (it is dead). If your body is slain, when the spell expires or the host’s body is killed, you are slain. It is possible to cast this spell on a new target from within another creature’s body; this resets the duration. You still return to your original body (not any intermediate body) when you take a standard action to do so or the spell’s duration expires. Returning to your body ends the spell. Creatures whose souls are their bodies, such as incorporeal undead and non-native outsiders, use the effects of",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Possession, Greater", school: "Necromancy", levels: "arcanist 5, medium 3, mesmerist 5, occultist 4, psychic 5, sorcerer 5, spiritualist 4, summoner 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "1 hour/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions as possession , but when you possess a host, you enter the host’s body and your physical body vanishes.",
                          desc: "This spell functions as possession , but when you possess a host, you enter the host’s body and your physical body vanishes. You are ejected to the closest empty square upon expiration of the spell or upon the host’s death.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Primal Regression", school: "Enchantment (Compulsion)", levels: "druid 6, hunter 6, mesmerist 5, psychic 6, shaman 6, witch 7",
                          castingTime: "1 standard action", components: "S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature/2 levels, no two of which can be more than 30 feet apart",
                          duration: "1 minute/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell sequesters the targets’ ability for higher reasoning, allowing their darker impulses to come to the fore. An affected target becomes a ravening monster—savage, bloodthirsty, and brutish.",
                          desc: "This spell sequesters the targets’ ability for higher reasoning, allowing their darker impulses to come to the fore. An affected target becomes a ravening monster—savage, bloodthirsty, and brutish. Until the spell ends, the targets have all of the following benefits and drawbacks. Targets’ Intelligence and Charisma scores drop to 3 (if the scores were higher), and they are unable to use Intelligenceor Charisma-based skills, cast spells, understand language, or communicate coherently. Targets take a –4 penalty on Will saves. Targets gain a +6 enhancement bonus to Strength, a +2 natural armor bonus to AC, and 2d8 temporary hit points. These temporary hit points disappear at the end of the spell’s duration. When the spell ends, each affected creature must succeed at a Will saving throw or take 1d4 points of Intelligence drain and 1d4 points of Charisma damage.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Psychic Asylum", school: "Illusion (Phantasm)", levels: "arcanist 6, mesmerist 5, psychic 5, sorcerer 6, wizard 6",
                          castingTime: "1 swift action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "instantaneous; see text",
                          savingThrow: "none;", sr: false,
                          summary: "You retreat into a mindscape (see page 234) of your own making that allows you to perform a lengthy mental task in an instant.",
                          desc: "You retreat into a mindscape (see page 234) of your own making that allows you to perform a lengthy mental task in an instant. You create a mental landscape that provides succor and calm for you, such as a library, sitting room, garden, or childhood tree house. You can spend up to 15 minutes in your psychic asylum. While you are within, no time passes for your body, and when you emerge you can continue with your turn. The mindscape is overt, finite, and has a rapid passage of time. While within the mindscape, you can consult any text, recall any conversation, or remember any image that you have been exposed to with perfect clarity and recollection, as if you had an eidetic memory. You must have seen or heard the material within a time frame of 1 week per level. For example, you might wish to reexamine a passage of text from an ancient manuscript you rapidly scanned in a library 2 weeks prior. While in the psychic asylum , you can perfectly recall the precise layout of the text within the ancient manuscript and read it word for word. Once you emerge from the",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Psychic Crush I", school: "Necromancy", levels: "psychic 5",
                          castingTime: "1 standard action", components: "S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "Will partial and Fortitude partial, see text;", sr: true,
                          summary: "Using your psychic power, you invade the mind of the target and tear it asunder, causing massive internal damage to both its mind and body.",
                          desc: "Using your psychic power, you invade the mind of the target and tear it asunder, causing massive internal damage to both its mind and body. If the target succeeds at the initial Will save, it is sickened for 1 round. If the target fails its Will save, it must attempt a Fortitude save (with a +4 circumstance bonus on this save if it has more than half its total hit points remaining). If it also fails the Fortitude save, the target is reduced to –1 hit points and is dying. If the target succeeds at its Fortitude save, it instead takes 3d6 points of damage + 1 point of damage per caster level, which cannot reduce the target below –1 hit point, and the target is sickened for 1 round. This attack has no effect on creatures without an Intelligence score. Psychic Crush II",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Psychic Crush II", school: "Necromancy", levels: "psychic 5",
                          castingTime: "1 standard action", components: "S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "Will partial and Fortitude partial, see text;", sr: true,
                          summary: "This functions as psychic crush I , but on a successful Fortitude save, the target takes 5d6 points of damage + 1 point of damage per caster level.",
                          desc: "This functions as psychic crush I , but on a successful Fortitude save, the target takes 5d6 points of damage + 1 point of damage per caster level. In addition, the target receives a +4 circumstance bonus on the Fortitude save only if it is at full hit points; otherwise, it gains a +2 bonus if it has more than half its total hit points remaining. This spell can be undercast.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Psychic Crush III", school: "Necromancy", levels: "psychic 5",
                          castingTime: "1 standard action", components: "S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "Will partial and Fortitude partial, see text;", sr: true,
                          summary: "This functions as psychic crush I , but the target takes 7d6 points of damage + 1 point of damage per caster level on a successful Fortitude save and 1 point of damage per caster level on a…",
                          desc: "This functions as psychic crush I , but the target takes 7d6 points of damage + 1 point of damage per caster level on a successful Fortitude save and 1 point of damage per caster level on a successful Will save. The target receives a +2 circumstance bonus on the Fortitude save if it is at full hit points, and no bonus if it has taken any damage. This spell can be undercast.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Psychic Crush IV", school: "Necromancy", levels: "psychic 5",
                          castingTime: "1 standard action", components: "S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "Will partial and Fortitude partial, see text;", sr: true,
                          summary: "This functions as psychic crush I , but the target takes 9d6 points of damage + 1 point of damage per caster level on a successful Fortitude or Will save.",
                          desc: "This functions as psychic crush I , but the target takes 9d6 points of damage + 1 point of damage per caster level on a successful Fortitude or Will save. The target does not receive any saving throw bonus because of its hit points. If it is at fewer than half its total hit points, it doesn’t gain a Fortitude save to resist this spell but instead proceeds as if it had automatically failed its Fortitude save. This spell can be undercast.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Psychic Crush V", school: "Necromancy", levels: "psychic 5",
                          castingTime: "1 standard action", components: "S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "Will partial and Fortitude partial, see text;", sr: true,
                          summary: "This functions as psychic crush IV , but on a successful Fortitude or Will save, the target takes 11d6 points of damage + 1 point of damage per caster level.",
                          desc: "This functions as psychic crush IV , but on a successful Fortitude or Will save, the target takes 11d6 points of damage + 1 point of damage per caster level. If it is at fewer than half its total hit points, the target takes a –2 penalty on the Will save to resist this spell. This spell can be undercast.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Psychic Image", school: "Illusion (Shadow)", levels: "psychic 9",
                          castingTime: "1 standard action", components: "V",
                          range: "long (400 ft. + 40 ft./level)", area: "one shadow duplicate", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "Will disbelief (if interacted with);", sr: true,
                          summary: "You envelop your consciousness in a quasi-real image of yourself. Your psychic image looks, sounds, and smells like you, but is intangible.",
                          desc: "You envelop your consciousness in a quasi-real image of yourself. Your psychic image looks, sounds, and smells like you, but is intangible. While your mind occupies the image, you control it as though it were your own body, but you cannot directly affect physical objects. Your image moves with a fly speed of 60 feet and perfect maneuverability. Your senses perceive only what the image can see and hear while occupying it, and your own body is considered blind, deaf, and helpless. You can switch between the image and your body as a swift action. While your mind is in your body, the image is similarly helpless. Your image can pass through solid objects as though you are incorporeal. It cannot go farther into a solid object than your space (5 feet for a Small or Medium creature). It can’t be damaged by most attacks or effects, whether or not they affect incorporeal creatures. However, mind-affecting effects targeted against or affecting your",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Psychic Reading", school: "Divination", levels: "arcanist 2, bard 2, inquisitor 2, medium 1, mesmerist 1, occultist 1, psychic 1, skald 2, sorcerer 2, spiritualist 1, wizard 2",
                          castingTime: "1 standard action", components: "V",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one humanoid creature",
                          duration: "1 round",
                          savingThrow: "none;", sr: true,
                          summary: "You are able to read a person’s surface thoughts and take cues from the person’s appearance, body language, and manner of speech to infer a great deal of information about the person, even if that…",
                          desc: "You are able to read a person’s surface thoughts and take cues from the person’s appearance, body language, and manner of speech to infer a great deal of information about the person, even if that person is in disguise (including polymorph effects). When casting the spell, attempt a DC 20 Sense Motive check with a bonus equal to your caster level. A successful skill check reveals to you one of the following pieces of information of your choice, plus one additional piece of information for every 5 points by which your check result exceeds 20: age, alignment, class†, feats†, gender, native language, place of origin, race or ethnicity, racial traits†, religion, sexual orientation, or training in a Craft, Perform, or Profession skill. For items marked with a cross (†), if the target has more than one of these features, each one you discover counts as a piece of information. There’s a 70% chance that all information you receive is correct. This roll is made secretly. Otherwise, on a roll of 71–80, you receive one false piece of information, on a roll of 81–90 you receive two, and on a roll of 91–100 you receive three. You can’t get more false information than the total number of pieces of information you discover.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Psychic Surgery", school: "Enchantment", levels: "mesmerist 5, psychic 6",
                          castingTime: "10 minutes", components: "V, M (diamond dust worth 250 gp)",
                          range: "touch", area: "", targets: "one willing and living creature",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "Psychic surgery cures the target of all Intelligence, Wisdom, and Charisma damage and restores all points permanently drained from the target’s Intelligence, Wisdom, and Charisma scores.",
                          desc: "Psychic surgery cures the target of all Intelligence, Wisdom, and Charisma damage and restores all points permanently drained from the target’s Intelligence, Wisdom, and Charisma scores. It also eliminates all ongoing insanity, confusion, and fear effects. Psychic surgery can also remove other mental afflictions, including enchantment spells and abilities, and even instantaneous effects, but in this case, if",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Purge Spirit", school: "Necromancy", levels: "arcanist 4, medium 2, occultist 2, psychic 3, sorcerer 4, spiritualist 2, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature or haunt",
                          duration: "instantaneous",
                          savingThrow: "Will partial;", sr: true,
                          summary: "Purge spirit rips away at the target’s spiritual substance, scattering it over a wide area and hampering the target’s ability to reform.",
                          desc: "Purge spirit rips away at the target’s spiritual substance, scattering it over a wide area and hampering the target’s ability to reform. The target takes 1d6 points of damage per caster level (maximum 10d6) and is staggered for 1 round. On a successful saving throw, the target takes half damage and is not staggered. This spell affects astrally projected creatures, ethereal creatures, haunts, incorporeal creatures, mediums channeling a spirit, and phantoms, and at the GM’s discretion can affect other spirits or creatures made of ectoplasm. Incorporeal creatures take full damage from purge spirit .",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Quintessence", school: "Illusion (Glamer)", levels: "arcanist 1, bard 1, medium 1, mesmerist 1, occultist 1, psychic 1, skald 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature or object touched",
                          duration: "10 minutes/level (D)",
                          savingThrow: "Will negates (harmless) and Will disbelief, see text;", sr: false,
                          summary: "You draw forth the idealized image of the target creature or object, masking any flaws or damage.",
                          desc: "You draw forth the idealized image of the target creature or object, masking any flaws or damage. An injured or ill creature appears healthy, and a damaged object or one with the broken condition appears intact. However, a corpse masked by quintessence remains obviously dead, and a completely destroyed object can’t be made to seem whole. This illusion has visual and tactile components. Careful examination of or handling the target grants a saving throw to disbelieve, but casual observation does not. Using a broken object for its intended purpose automatically reveals the deception. Appraise checks to assess the value of an object affected by",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Remote Viewing", school: "Divination (Scrying)", levels: "medium 4, occultist 5, psychic 5, spiritualist 5",
                          castingTime: "1 hour", components: "V, S, M (incense)",
                          range: "see text", area: "", targets: "you",
                          duration: "instantaneous",
                          savingThrow: "None", sr: false,
                          summary: "Your body enters a trance as you send your psychic senses to a distant location and gain psychic impressions of that location.",
                          desc: "Your body enters a trance as you send your psychic senses to a distant location and gain psychic impressions of that location. You must specify the distance and direction to the location you desire to view remotely. This spell doesn’t allow you to see the visual appearance of the location’s surface, so it isn’t useful for casting spells like teleport, but it grants you a psychic impression of the location, which could give you deeper information. For example, a forest that is home to a tight-knit community of fey might appear as a city in the trees, or a beautiful palace ruled by an evil king and warded by forbiddance might appear as a dark fortress encased in insubstantial chains. During the 1 hour casting time of",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Repress Memory", school: "Enchantment (Compulsion)", levels: "bard 5, mesmerist 5, psychic 6, skald 5",
                          castingTime: "1 round", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "instantaneous",
                          savingThrow: "None", sr: false,
                          summary: "This spell allows you to safeguard important knowledge, even from yourself. When casting this spell, you recount one piece of knowledge you possess (up to a maximum of 50 words).",
                          desc: "This spell allows you to safeguard important knowledge, even from yourself. When casting this spell, you recount one piece of knowledge you possess (up to a maximum of 50 words). This knowledge disappears utterly from your mind, and you might not realize you forgot something. The magic of the spell patches omissions in your memory with indistinct haze. Repress memory protects against",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Retrocognition", school: "Divination", levels: "arcanist 7, medium 3, occultist 3, psychic 5, sorcerer 7, wizard 7",
                          castingTime: "1 minute", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "concentration, up to 1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "This spell allows you to gain psychic impressions from past events that occurred in your current location.",
                          desc: "This spell allows you to gain psychic impressions from past events that occurred in your current location. Retrocognition reveals psychic impressions from events that occurred over the course of the last hour throughout the first minute of the duration, followed by impressions from the next hour back the next minute you concentrate, and so on. If a psychically traumatic or turbulent event happened during that time period, you must succeed at a concentration check (DC = 20, 30, or 40, depending on the severity of the psychic disturbance) or lose concentration on the spell. At caster level 13th and higher, you can choose to collect impressions from over the course of a longer interval of time than an hour, beginning at 1 week per minute of concentration (as listed on the table below). The amount of detail you receive diminishes, so this eventually makes it harder to distinguish impressions left by anything but the most major events. Caster Level",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Riding Possession", school: "Necromancy", levels: "arcanist 4, medium 2, mesmerist 4, occultist 3, psychic 4, sorcerer 4, spiritualist 3, summoner 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "1 hour/level (D); see text",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You stealthily project your soul into the host’s body as an observer, with limited ability to influence the target.",
                          desc: "You stealthily project your soul into the host’s body as an observer, with limited ability to influence the target. This functions as possession , except the host is still in full control of its body and is unaware you are possessing it. You can’t communicate with the host directly, but you can cast mind-affecting spells or",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sealed Life", school: "Abjuration", levels: "medium 2, spiritualist 3",
                          castingTime: "1 standard action", components: "S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "none;", sr: true,
                          summary: "You seal the life force within the target, preventing it from sharing its vitality with others.",
                          desc: "You seal the life force within the target, preventing it from sharing its vitality with others. Affected creatures can’t transfer damage to or from another, such as through shield other , a spiritualist’s life bond, or a summoner’s life link. Effects such as",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sealed Life, Greater", school: "Abjuration", levels: "spiritualist 6",
                          castingTime: "1 standard action", components: "S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 minute/level",
                          savingThrow: "none;", sr: true,
                          summary: "This spell functions as sealed life , except it additionally provides the benefits of",
                          desc: "This spell functions as sealed life , except it additionally provides the benefits of",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sessile Spirit", school: "Necromancy", levels: "cleric 5, inquisitor 4, medium 2, occultist 3, oracle 5, shaman 4, spiritualist 3, warpriest 5, witch 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature or object (see text)",
                          duration: "1 round/level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You reach into the target creature and cause that spirits within to become dormant and inactive.",
                          desc: "You reach into the target creature and cause that spirits within to become dormant and inactive. If the target is a medium with a spirit inhabiting its body or a spiritualist with a phantom inhabiting its consciousness (or a member of another class using the spirit or phantom class features), a failed save renders that spirit or phantom powerless, suppressing any benefits the spirit or phantom normally provides to its host, including bonus feats and spells known. If a spirit within the target is a creature using a possession effect, including possess object ,",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Shadow Body", school: "Transmutation (Polymorph)", levels: "arcanist 7, sorcerer 7, spiritualist 5, witch 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "You exchange the crude matter of your material body with the insubstantial essence of the Plane of Shadow, becoming a living shadow yourself.",
                          desc: "You exchange the crude matter of your material body with the insubstantial essence of the Plane of Shadow, becoming a living shadow yourself. You are visible as an unattached shadow in bright light or normal light, but you gain total concealment in dim light or darkness. Against creatures with darkvision, you gain concealment rather than total concealment. Your shadow body is incorporeal for most purposes, though you can’t fly or pass through solid objects or creatures. However, you can move at your normal speed along any surface, including horizontal and vertical surfaces and liquids, and you are never slowed by difficult terrain. Your size doesn’t change. You can speak and cast spells and perform mental actions, but you have no physical substance and cannot manipulate objects or attack physically. You can deliver touch spells and effects as if making an incorporeal touch attack. Your equipment merges with your shadow body , so you can’t cast spells with a material component unless those spells are prepared with Eschew Materials.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Spirit-Bound Blade", school: "Evocation", levels: "medium 4, occultist 4, shaman 4, spiritualist 3",
                          castingTime: "1 standard action", components: "S",
                          range: "touch", area: "", targets: "weapon touched",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (harmless, object);", sr: false,
                          summary: "You focus emotional energy and weave it into a shroud of hardened ectoplasm around the weapon you touch, infusing it with a ghostly glow and great power.",
                          desc: "You focus emotional energy and weave it into a shroud of hardened ectoplasm around the weapon you touch, infusing it with a ghostly glow and great power. The weapon becomes a ghost touch weapon, and gains one of the following additional benefits, depending on the type of emotion you infuse into the weapon. If a special ability wouldn’t apply to the chosen weapon (such as vicious on a ranged weapon), the weapon doesn’t gain that benefit.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Synapse Overload", school: "Divination", levels: "mesmerist 4, psychic 5",
                          castingTime: "1 standard action", components: "V",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "instantaneous",
                          savingThrow: "Fortitude partial (see text);", sr: true,
                          summary: "You cause the target’s mind to unleash a vast overflowing torrent of information throughout the target’s body, causing the target’s synapses to violently trigger.",
                          desc: "You cause the target’s mind to unleash a vast overflowing torrent of information throughout the target’s body, causing the target’s synapses to violently trigger. The target takes 1d6 points of electrical damage per caster level (maximum 15d6) and is staggered for 1 minute. A successful Fortitude saving throw doesn’t reduce the damage, but it negates the staggered effect.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Synaptic Pulse", school: "Enchantment (Compulsion)", levels: "mesmerist 3, psychic 3",
                          castingTime: "1 standard action", components: "V",
                          range: "30 ft.", area: "30-ft.-radius spread centered on you", targets: "",
                          duration: "1 round",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You emit a pulsating mental blast that stuns all creatures in range of your psychic shriek for 1 round. Synaptic Pulse, Greater",
                          desc: "You emit a pulsating mental blast that stuns all creatures in range of your psychic shriek for 1 round. Synaptic Pulse, Greater",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Synaptic Pulse, Greater", school: "Enchantment (Compulsion)", levels: "mesmerist 3, psychic 3",
                          castingTime: "1 standard action", components: "V",
                          range: "30 ft.", area: "30-ft.-radius spread centered on you", targets: "",
                          duration: "1 round",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You emit a pulsating mental blast that stuns all creatures in range of your psychic shriek for 1d4 rounds. On a successful save, a creature is instead sickened for 1 round.",
                          desc: "You emit a pulsating mental blast that stuns all creatures in range of your psychic shriek for 1d4 rounds. On a successful save, a creature is instead sickened for 1 round.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Synaptic Scramble", school: "Enchantment (Compulsion)", levels: "mesmerist 3, psychic 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You scramble the synaptic connections of your target, causing it to lose the ability to coherently communicate and to take unintended actions when it meant to perform others.",
                          desc: "You scramble the synaptic connections of your target, causing it to lose the ability to coherently communicate and to take unintended actions when it meant to perform others. The target cannot effectively communicate while under the spell’s influence, and thus cannot engage in acts like speaking, attempting Bluff checks to pass secret messages, writing, or using telepathy, although the spell doesn’t prevent verbalizations made for purposes other than communication, such as command words or the verbal component of spellcasting. The target’s mind is too scrambled to take full-round actions or longer actions, as the target’s attention inevitably wanders before the action completes. Whenever the target attempts to take a move action or a standard action, roll on the following table instead. If the result on the table is an action that the target cannot take, the target takes no action instead. d%",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Synesthesia", school: "Illusion (Phantasm)", levels: "mesmerist 3, psychic 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You overstimulate the senses of the affected creature, causing its senses to interfere with another.",
                          desc: "You overstimulate the senses of the affected creature, causing its senses to interfere with another. While a creature is under the effects of this spell, sensory input is processed by the wrong senses, such that noise triggers bursts of colors, smells create sounds, and so on. The affected creature moves at half speed, has a 20% miss chance on attacks, and takes a –4 penalty to AC and on skill checks and Reflex saves. Successful spellcasting while affected requires a concentration check with a DC equal to this spell’s save DC plus the level of spell being cast. In addition, the affected creature is considered distracted for the purpose of attempting Perception checks. Effects that negate or reduce concealment do not affect the miss chance from synesthesia . Synesthesia, Mass",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Synesthesia, Mass", school: "Illusion (Phantasm)", levels: "mesmerist 3, psychic 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions like synesthesia , except as noted above.",
                          desc: "This spell functions like synesthesia , except as noted above.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Talismanic Implement", school: "Evocation", levels: "occultist 3",
                          castingTime: "10 minutes", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "1 hour/level (D) or until discharged",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as contingency , but you invest a spell whose level doesn’t exceed one-quarter of your level (rounded down, maximum spell level 3rd) into one of your implements that holds 2 or…",
                          desc: "This spell functions as contingency , but you invest a spell whose level doesn’t exceed one-quarter of your level (rounded down, maximum spell level 3rd) into one of your implements that holds 2 or more points of mental focus. The spell’s school must match that of the implement, and the spell must be one that affects only your person. Casting",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Telekinetic Maneuver", school: "Transmutation", levels: "arcanist 4, magus 4, psychic 3, sorcerer 4, spiritualist 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "concentration (up to 1 round/level)",
                          savingThrow: "none;", sr: true,
                          summary: "This spell functions as telekinesis , but it can be used only to perform a bull rush, disarm, drag, grapple (including pin), reposition, steal, or trip combat maneuver.",
                          desc: "This spell functions as telekinesis , but it can be used only to perform a bull rush, disarm, drag, grapple (including pin), reposition, steal, or trip combat maneuver.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Telekinetic Projectile", school: "Evocation", levels: "occultist 0, psychic 0, spiritualist 0",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "N/A (not listed in spell, assumed one creature or object)",
                          duration: "instantaneous",
                          savingThrow: "no;", sr: false,
                          summary: "You fling an object weighing up to 5 pounds at the target. You must succeed at a ranged attack (not a ranged touch attack) to hit your target; if you hit, you deal 1d6 points of bludgeoning damage to…",
                          desc: "You fling an object weighing up to 5 pounds at the target. You must succeed at a ranged attack (not a ranged touch attack) to hit your target; if you hit, you deal 1d6 points of bludgeoning damage to both the target and the object. The type of object thrown doesn’t change the damage type or any other properties of the attack, even if you throw a weapon or magic item in this way.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Telekinetic Storm", school: "Evocation", levels: "psychic 9",
                          castingTime: "1 standard action", components: "V, S",
                          range: "", area: "40-ft.-radius burst centered on you", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Fortitude partial (see text);", sr: true,
                          summary: "You generate a storm of telekinetic energy that emanates from you, ripping through the spell’s area of effect with devastating force.",
                          desc: "You generate a storm of telekinetic energy that emanates from you, ripping through the spell’s area of effect with devastating force. Any creature caught in the spell’s radius takes 1d6 points of damage per caster level (maximum 20d6) and is dazed and stunned for 1 round. A successful Fortitude save reduces the damage by half and negates the dazed and stunned effects. The telekinetic storm damages objects in the area. If the damage caused to an interposing barrier shatters or breaks through it, the",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Telempathic Projection", school: "Enchantment (Compulsion)", levels: "mesmerist 1, psychic 1, spiritualist 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (see text);", sr: true,
                          summary: "You alter the target’s mood, adjusting its attitude toward you or another creature you designate by one step either positively or negatively (see the Diplomacy skill on page 94 of the Pathfinder RPG…",
                          desc: "You alter the target’s mood, adjusting its attitude toward you or another creature you designate by one step either positively or negatively (see the Diplomacy skill on page 94 of the Pathfinder RPG Core Rulebook ). You can instead use this spell to assist your own or an ally’s Bluff, Diplomacy, Intimidate, Perform, or Sense Motive check, granting that check a +5 insight bonus against the target of your",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Telepathy", school: "Divination", levels: "arcanist 6, medium 4, mesmerist 4, psychic 5, sorcerer 6, spiritualist 6, wizard 6",
                          castingTime: "1 standard action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "You can mentally communicate with any other creature within 100 feet that has a language.",
                          desc: "You can mentally communicate with any other creature within 100 feet that has a language. It is possible to address multiple creatures at once telepathically, although maintaining a telepathic conversation with more than one creature at a time is just as difficult as speaking and listening to multiple people simultaneously.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Thaumaturgic Circle", school: "Abjuration", levels: "arcanist 4, cleric 4, inquisitor 4, medium 3, occultist 3, oracle 4, sorcerer 4, summoner 4, warpriest 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (a 3-ft.-diameter circle of powdered silver), DF",
                          range: "touch", area: "10-ft.-radius emanation from touched creature", targets: "",
                          duration: "10 min./level",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "This spell functions as magic circle against chaos ,",
                          desc: "This spell functions as magic circle against chaos ,",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Thought Echo", school: "Illusion (Glamer)", levels: "mesmerist 1, psychic 1",
                          castingTime: "1 round", components: "V",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "1 minute/level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "When you cast this spell, you establish a mental echo of up to 25 words.",
                          desc: "When you cast this spell, you establish a mental echo of up to 25 words. Any attempt to read the surface thoughts of the target creature reads only this mental echo unless the caster succeeds at a caster level check (DC = 11 + your caster level). If you cast thought echo on yourself, the DC is instead equal to 15 + your caster level. In addition, when casting this spell upon yourself, you can change the echoed thoughts by taking a standard action and concentrating. Each time you change the words echoed by the spell in this way, you reduce the spell’s remaining duration by 1 minute.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Thought Shield I", school: "Abjuration", levels: "psychic 2",
                          castingTime: "1 immediate action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round",
                          savingThrow: "None", sr: false,
                          summary: "Sensing an intrusion, you throw up a defense to protect your mind from attack or analysis. This grants you a +4 circumstance bonus on Will saving throws against mind-affecting effects.",
                          desc: "Sensing an intrusion, you throw up a defense to protect your mind from attack or analysis. This grants you a +4 circumstance bonus on Will saving throws against mind-affecting effects. As long as this spell lasts, spells and effects that allow a creature to read your thoughts receive no information from you. Thought Shield II",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Thought Shield II", school: "Abjuration", levels: "psychic 2",
                          castingTime: "1 immediate action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round",
                          savingThrow: "None", sr: false,
                          summary: "This functions as thought shield I , but the circumstance bonus on Will saves to resist mind-affecting effects increases to +6. This spell can be undercast.",
                          desc: "This functions as thought shield I , but the circumstance bonus on Will saves to resist mind-affecting effects increases to +6. This spell can be undercast.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Thought Shield III", school: "Abjuration", levels: "psychic 2",
                          castingTime: "1 immediate action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round",
                          savingThrow: "None", sr: false,
                          summary: "This functions as thought shield I , but the circumstance bonus on Will saves to resist mind-affecting effects increases to +8.",
                          desc: "This functions as thought shield I , but the circumstance bonus on Will saves to resist mind-affecting effects increases to +8. In addition, any creature that tries to read your thoughts while this spell lasts must succeed at a Will save or be stunned for 1 round. This spell can be undercast.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Thought Shield IV", school: "Abjuration", levels: "psychic 2",
                          castingTime: "1 immediate action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round",
                          savingThrow: "None", sr: false,
                          summary: "This functions as thought shield III , but any creature that tries to read your thoughts while this spell lasts must succeed at a Will save or be stunned for 1d4 rounds.",
                          desc: "This functions as thought shield III , but any creature that tries to read your thoughts while this spell lasts must succeed at a Will save or be stunned for 1d4 rounds. Additionally, if you succeed at your save against a",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Thought Shield V", school: "Abjuration", levels: "psychic 2",
                          castingTime: "1 immediate action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round",
                          savingThrow: "None", sr: false,
                          summary: "This functions as thought shield IV , except as noted above. This spell immediately ends if you fail a Will saving throw against a mind-affecting effect. This spell can be undercast.",
                          desc: "This functions as thought shield IV , except as noted above. This spell immediately ends if you fail a Will saving throw against a mind-affecting effect. This spell can be undercast.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Thoughtsense", school: "Divination", levels: "arcanist 5, medium 4, mesmerist 4, psychic 4, sorcerer 5, spiritualist 4, wizard 5",
                          castingTime: "1 standard action", components: "V, M (a bit of dried brain tissue)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "You automatically detect and locate conscious creatures within 60 feet, as if you possessed the blindsight ability. Nondetection ,",
                          desc: "You automatically detect and locate conscious creatures within 60 feet, as if you possessed the blindsight ability. Nondetection ,",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Threefold Form", school: "Conjuration (Creation)", levels: "arcanist 9, psychic 8, sorcerer 9, wizard 9",
                          castingTime: "1 standard action", components: "V",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one duplicate", targets: "you",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You pull forth idealized versions of yourself at various ages from your mind, splitting into three copies of yourself. Threefold form functions as",
                          desc: "You pull forth idealized versions of yourself at various ages from your mind, splitting into three copies of yourself. Threefold form functions as",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Tower of Iron Will I", school: "Abjuration", levels: "psychic 5",
                          castingTime: "1 immediate action", components: "V",
                          range: "10 ft.", area: "10-ft.-radius emanation centered on you", targets: "",
                          duration: "1 round",
                          savingThrow: "none;", sr: true,
                          summary: "You project a fortress of mental power that blocks out the psychic energy of others, granting mental strength and resiliency to all inside the area.",
                          desc: "You project a fortress of mental power that blocks out the psychic energy of others, granting mental strength and resiliency to all inside the area. All creatures inside the area gain spell resistance equal to 10 + double this spell’s level against psychic magic and any mind-affecting effects. Creatures inside the area don’t receive this protection against your spells or special abilities. Tower of Iron Will II",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Tower of Iron Will II", school: "Abjuration", levels: "psychic 5",
                          castingTime: "1 immediate action", components: "V",
                          range: "10 ft.", area: "10-ft.-radius emanation centered on you", targets: "",
                          duration: "1 round",
                          savingThrow: "none;", sr: true,
                          summary: "This functions as tower of iron will I , except as noted above. This spell can be undercast.",
                          desc: "This functions as tower of iron will I , except as noted above. This spell can be undercast.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Tower of Iron Will III", school: "Abjuration", levels: "psychic 5",
                          castingTime: "1 immediate action", components: "V",
                          range: "10 ft.", area: "10-ft.-radius emanation centered on you", targets: "",
                          duration: "1 round",
                          savingThrow: "none;", sr: true,
                          summary: "This functions as tower of iron will I , except as noted above. This spell can be undercast.",
                          desc: "This functions as tower of iron will I , except as noted above. This spell can be undercast.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Tower of Iron Will IV", school: "Abjuration", levels: "psychic 5",
                          castingTime: "1 immediate action", components: "V",
                          range: "10 ft.", area: "10-ft.-radius emanation centered on you", targets: "",
                          duration: "1 round",
                          savingThrow: "none;", sr: true,
                          summary: "This functions as tower of iron will I , except as noted above. This spell can be undercast.",
                          desc: "This functions as tower of iron will I , except as noted above. This spell can be undercast.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Tower of Iron Will V", school: "Abjuration", levels: "psychic 5",
                          castingTime: "1 immediate action", components: "V",
                          range: "10 ft.", area: "10-ft.-radius emanation centered on you", targets: "",
                          duration: "1 round",
                          savingThrow: "none;", sr: true,
                          summary: "This functions as tower of iron will I , except as noted above. This spell can be undercast.",
                          desc: "This functions as tower of iron will I , except as noted above. This spell can be undercast.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Unshakable Zeal", school: "Enchantment (Compulsion)", levels: "bard 5, inquisitor 6, psychic 7, skald 5, spiritualist 6",
                          castingTime: "1 standard action", components: "S, F (a silver circlet)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 hour/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You fill the target with boundless enthusiasm and faith in its ultimate triumph.",
                          desc: "You fill the target with boundless enthusiasm and faith in its ultimate triumph. Whenever the target fails an attack roll, a save, a skill check, a concentration check, or an ability check, the target receives a +4 morale bonus on its next attempt at the failed check within 1 round (this includes attack rolls against the same foe, saving throws against the same ability from the same foe, and so on). In addition, when the target would be affected by a fear or emotion effect, it can instead dismiss unshakable zeal without spending an action to negate the effect on itself.",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Wall of Ectoplasm", school: "Evocation", levels: "arcanist 5, cleric 5, oracle 5, psychic 5, sorcerer 5, spiritualist 5, warpriest 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (small bit of gauze)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "opaque sheet of ectoplasm up to 10 ft. square/level or a sphere or hemisphere with a radius of up to 1 ft./level", targets: "",
                          duration: "1 minute/level",
                          savingThrow: "none, and Will negates, see text;", sr: true,
                          summary: "You draw forth a massive veil of ectoplasm that roils with restless spirits.",
                          desc: "You draw forth a massive veil of ectoplasm that roils with restless spirits. Immovable once formed, the wall of ectoplasm is 1 inch thick per caster level and covers up to a 10-foot-square area per caster level (so a 10th-level wizard can create a",
                          source: "Occult Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Withdraw Affliction", school: "Necromancy", levels: "psychic 6, shaman 6, spiritualist 5, witch 7",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "one afflicted creature",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: true,
                          summary: "You push your hand into the subject, then withdraw an affliction from the body of the sufferer as a tangible object. This extraction appears as a slimy mass of flesh.",
                          desc: "You push your hand into the subject, then withdraw an affliction from the body of the sufferer as a tangible object. This extraction appears as a slimy mass of flesh. The target creature is cured as if affected by remove disease ,",
                          source: "Occult Adventures", isPremium: true),

                    // // MARK: - Orcs of Golarion
        )
        try await db.insertSpell(
        .make("Blood Rage", school: "Enchantment (Compulsion)", levels: "adept 3, arcanist 3, bard 2, cleric 3, oracle 3, skald 2, sorcerer 3, warpriest 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a drop of blood from each creature to be affected)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one willing living creature per 2 levels, no two of which may be more than 30 ft. apart",
                          duration: "1 round/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The targets of this spell become angrier as they fight, the pain of their wounds fueling their strength.",
                          desc: "The targets of this spell become angrier as they fight, the pain of their wounds fueling their strength. An affected creature gains a cumulative +2 morale bonus to Strength and a cumulative –1 penalty to AC for every 5 points of damage it takes (maximum +10 Strength, –5 AC) for the duration of the spell. These bonuses last until the spell expires or the target falls unconscious.",
                          source: "Orcs of Golarion", isPremium: true)
        )
        try await db.insertSpell(
        .make("Shield the Banner", school: "Abjuration", levels: "adept 1, cleric 1, oracle 1, warpriest 1",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "standard touched",
                          duration: "1 minute/level",
                          savingThrow: "Will negates;", sr: false,
                          summary: "This spell is used to protect one of a tribe’s most valuable possessions: its tribal banner.",
                          desc: "This spell is used to protect one of a tribe’s most valuable possessions: its tribal banner. Any creature (other than a member of the tribe which the standard represents) attempting to directly attack or touch the standard must make a Will save. This spell functions as sanctuary , but only protects a standard or banner. In addition, the spell grants a +2 bonus to the standard’s hardness, and +10 to the standard’s hit points for the duration of the spell.",
                          source: "Orcs of Golarion", isPremium: true)
        )
        try await db.insertSpell(
        .make("Vigor", school: "Transmutation", levels: "adept 0, cleric 0, oracle 0, warpriest 0",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 minute or until discharged",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell infuses the subject with a small surge of strength. The creature gets a +1 competence bonus on a single melee damage roll.",
                          desc: "This spell infuses the subject with a small surge of strength. The creature gets a +1 competence bonus on a single melee damage roll. It must choose to use the bonus before making the roll to which it applies. Ranged or spell attacks are unaffected by this spell.",
                          source: "Orcs of Golarion", isPremium: true),

                    // // MARK: - Pathfinder #102: Breaking the Bones of Hell
        )
        try await db.insertSpell(
        .make("Seer's Bane", school: "Abjuration", levels: "cleric 6, inquisitor 6, oracle 6, warpriest 6 (Mephistopheles)",
                          castingTime: "1 round", components: "V, S",
                          range: "touch", area: "", targets: "creature or object touched",
                          duration: "1 hour/level",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "This spell functions as nondetection , except that those who cast divination spells targeting the warded creature or item must succeed on a caster level check (DC = 15 + your caster level).",
                          desc: "This spell functions as nondetection , except that those who cast divination spells targeting the warded creature or item must succeed on a caster level check (DC = 15 + your caster level). If the caster of the divination fails, deadly magical feedback strikes at him, dealing 1d6 points of electricity damage per 2 caster levels you have (maximum 10d6 at 20th level). Alternatively, if you cast",
                          source: "Pathfinder #102: Breaking the Bones of Hell", isPremium: true),

                    // // MARK: - Pathfinder #107: Scourge of the Godclaw
        )
        try await db.insertSpell(
        .make("Heretic's Tongue", school: "Enchantment", levels: "cleric 5, inquisitor 5, mesmerist 6, oracle 5, warpriest 5 (Geryon)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "living creature",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You fill your target’s mind with blasphemous knowledge. If the target fails its saving throw, it cannot cast spells or use spell-like abilities for the duration of the spell.",
                          desc: "You fill your target’s mind with blasphemous knowledge. If the target fails its saving throw, it cannot cast spells or use spell-like abilities for the duration of the spell. Divine spellcasters whose power derives from the worship of a single deity (most clerics, paladins, and warpriests) have the potential to suffer worse. When targeting a divine spellcaster, you can designate an alignment. If the named alignment coincides with either the spellcaster’s alignment or that of her deity, the divine spellcaster loses access to all supernatural and spell-like class abilities granted by the associated class for the spell’s duration—blessings, domain powers, channel energy, smite evil, etc. Those affected by this spell can end the effect early by choosing to release the blasphemies in a litany of screamed curses and heretical decadences. The creature is effectively paralyzed for half the spell’s duration, and each ally within 50 feet must succeed at a Will saving throw (equal to this spell’s save DC) or be shaken until the litany ends. If the creature chooses to do this, it cannot end the litany of blasphemies early. A creature that succeeds at its saving throw to avoid being shaken by its ally’s blasphemous litany is immune to the litany’s effects and need not attempt additional saves on subsequent rounds.",
                          source: "Pathfinder #107: Scourge of the Godclaw", isPremium: true),

                    // // MARK: - Pathfinder #110: The Thrushmoor Terror
        )
        try await db.insertSpell(
        .make("Yellow Sign", school: "Enchantment (Compulsion)", levels: "arcanist 9, bard 6, cleric 9, oracle 9, skald 6, sorcerer 9, witch 9, wizard 9 (Hastur)",
                          castingTime: "10 minutes", components: "V, S, M (ochre and sulfur, plus powdered gold worth a total of 15,000 gp)",
                          range: "0 ft.; see text", area: "one symbol", targets: "",
                          duration: "see text",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions as per symbol of death , save that creatures that succumb to this spell become dominated (as per",
                          desc: "This spell functions as per symbol of death , save that creatures that succumb to this spell become dominated (as per",
                          source: "Pathfinder #110: The Thrushmoor Terror", isPremium: true),

                    // // MARK: - Pathfinder #113: What Grows Within
        )
        try await db.insertSpell(
        .make("Protection from Spores", school: "Abjuration", levels: "alchemist 2, cleric 2, druid 2, hunter 1, investigator 2, oracle 2, ranger 1, shaman 2, warpriest 2, witch 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 minute/level",
                          savingThrow: "Fortitude negates (harmless);", sr: false,
                          summary: "With a touch, you bolster a creature’s body to protect it from the harmful effects of spores and similar afflictions.",
                          desc: "With a touch, you bolster a creature’s body to protect it from the harmful effects of spores and similar afflictions. While under the effect of this spell, a creature is immune to the effects of brown mold, green slime, russet mold, yellow mold, and any similar hazard, provided the hazard is CR 6 or lower. Similarly, the creature is immune to poison, disease, and infestation attacks from all fungal creatures of CR 6 or lower, including effects such as basidirond spores, violet fungus rot, and the like. The target is immune to fungus-based toxins, such as striped toadstool. Against similar hazards or monsters of CR 7 or higher, the target gains a bonus on all saving throws against the effect equal to half your caster level. Protection from spores offers no protection against fungal infestations created by the seeded, by the spell",
                          source: "Pathfinder #113: What Grows Within", isPremium: true)
        )
        try await db.insertSpell(
        .make("What Grows Within", school: "Necromancy", levels: "arcanist 6, bard 6, cleric 6, druid 6, hunter 6, mesmerist 6, oracle 6, psychic 6, skald 6, sorcerer 6, warpriest 6, witch 6, wizard 6 (Xhamen-Dor)",
                          castingTime: "1 swift action", components: "V",
                          range: "personal", area: "you", targets: "",
                          duration: "1 round/level",
                          savingThrow: "see text;", sr: false,
                          summary: "By speaking the name “Xhamen-Dor,” you infuse yourself with the essence of the Inmost Blot and gain a +3 profane bonus on Will saving throws for the spell’s duration.",
                          desc: "By speaking the name “Xhamen-Dor,” you infuse yourself with the essence of the Inmost Blot and gain a +3 profane bonus on Will saving throws for the spell’s duration. When you prepare what grows within for the first time, or the first time you use it via a spell-completion or spell-trigger item, you can thereafter be targeted by Xhamen-Dor’s infected dreams ability (see page 86). As long as you are under the effects of",
                          source: "Pathfinder #113: What Grows Within", isPremium: true),

                    // // MARK: - Pathfinder #115: Trail of the Hunted
        )
        try await db.insertSpell(
        .make("Ja Noi Aspect", school: "Transmutation (Polymorph)", levels: "alchemist 3, arcanist 3, bloodrager 3, druid 3, hunter 3, investigator 3, magus 3, ranger 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level (D; see below)",
                          savingThrow: "none;", sr: true,
                          summary: "You gain some of the appearance and qualities of the ja noi, oni who take hobgoblin form.",
                          desc: "You gain some of the appearance and qualities of the ja noi, oni who take hobgoblin form. Your skin turns a fiery red color and you gain fast healing 3, although this ability cannot repair damage caused by acid or fire. You can dismiss this spell as an immediate action when you fail a Will saving throw; if you do, you can reroll your saving throw, but you must take the second result.",
                          source: "Pathfinder #115: Trail of the Hunted", isPremium: true)
        )
        try await db.insertSpell(
        .make("Opportunistic Loyalty", school: "Enchantment (Compulsion)", levels: "antipaladin 1, cleric 1, inquisitor 1, mesmerist 1, oracle 1, psychic 1, warpriest 1, witch 1",
                          castingTime: "1 immediate action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "Will negates;", sr: true,
                          summary: "Cast this spell when a creature within range casts a spell that provides an effect for its allies (such as bless or",
                          desc: "Cast this spell when a creature within range casts a spell that provides an effect for its allies (such as bless or",
                          source: "Pathfinder #115: Trail of the Hunted", isPremium: true),

                    // // MARK: - Pathfinder #116: Fangs of War
        )
        try await db.insertSpell(
        .make("Spectral Scout", school: "Conjuration (Creation)", levels: "arcanist 3, bard 3, druid 3, hunter 3, ranger 3, shaman 3, skald 3, sorcerer 3, wizard 3",
                          castingTime: "1 minute", components: "V, S",
                          range: "1 mile", area: "one incorporeal animal of size Tiny or smaller", targets: "",
                          duration: "10 minutes/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You summon a spectral creature in the shape of the Tiny or smaller animal of your choice, which always appears in your square.",
                          desc: "You summon a spectral creature in the shape of the Tiny or smaller animal of your choice, which always appears in your square. The creature emits a faint glow of a color you choose at the time of the spell’s casting, providing the illumination of a candle. It has the same statistics as the creature after which it is modeled (including ability scores, Armor Class, feats, senses, skills, and speed), but is incorporeal and has only 1 hit point. A spectral scout cannot attack, but can otherwise follow any basic instructions that could be given to a pet or animal companion of similar intelligence but without the need to make Handle Animal skill checks. A spectral scout can communicate verbally with the caster but can’t be understood by others. A spectral scout can relay information it has directly witnessed with perfect clarity, including sights, sounds, and smells, but it cannot further interpret that information. For example, a spectral scout can report on how many individuals it sees, the direction they are going, and what equipment they carry; it can’t tell the caster whether the people were friend or foe, or their objective.",
                          source: "Pathfinder #116: Fangs of War", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sylvan Hideaway", school: "Conjuration (Creation)", levels: "druid 3, hunter 3, ranger 3, shaman 3",
                          castingTime: "1 standard action", components: "V, S, M (one pound of unworked stone or wood)",
                          range: "touch", area: "", targets: "one 5-foot square of touched earth",
                          duration: "2 hours/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "When this spell is cast on a natural, unworked surface, it creates an extradimensional underground space large enough to comfortably hold two creatures of any size per caster level (maximum 12).",
                          desc: "When this spell is cast on a natural, unworked surface, it creates an extradimensional underground space large enough to comfortably hold two creatures of any size per caster level (maximum 12). The room is sealed by a 5-foot-square camouflaged trap door that can be locked from within. (This trap door has hardness 10 and 20 hit points per caster level; the Perception DC to see the hidden trap door equals the spell’s save DC.) The door and room are made of the same material of the material component used to cast the spell. You can choose the shape and configuration of the room when you create it; however, any furnishings (tables, beds, etc.) in the room are made of the same material as the room and cannot be moved once created. When the spell ends, anything inside the space is ejected to the surface in the nearest available square.",
                          source: "Pathfinder #116: Fangs of War", isPremium: true),

                    // // MARK: - Pathfinder #117: Assault on Longshadow
        )
        try await db.insertSpell(
        .make("Barghest Feast", school: "Transmutation", levels: "alchemist 3, investigator 3 (Hadregash)",
                          castingTime: "1 standard action", components: "S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 minutes/level; see text",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The target gains the ability to absorb power from devouring a humanoid corpse.",
                          desc: "The target gains the ability to absorb power from devouring a humanoid corpse. To use this ability, the target must feed on the corpse of one nonevil humanoid creature, a process that takes 1 full round per Hit Die the creature had and provokes attacks of opportunity. For every 2 rounds it feeds on the corpse in this way, the target gains a +1 profane bonus on attack rolls, saving throws, and skill checks (to a maximum of +5).",
                          source: "Pathfinder #117: Assault on Longshadow", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hobbling Bomb Admixture", school: "Transmutation", levels: "alchemist 4, investigator 4 (Hadregash)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "Upon drinking an extract created with this formula, you make a significant change to your magical reserve that modifies the nature of all bombs you create and throw during this extract’s duration.",
                          desc: "Upon drinking an extract created with this formula, you make a significant change to your magical reserve that modifies the nature of all bombs you create and throw during this extract’s duration. This effect on your magical reserve has no effect on any discoveries that you use to modify your bombs, but you can have only one admixture effect (formula with the words “bomb admixture” in its title) active at a time. If you drink another bomb admixture, the effects of the former bomb admixture end and the new one becomes active. When you throw a bomb and hit a target directly, it affects up to three targets—the creature the bomb hit directly, and up to two other creatures that take damage from the splash damage (alchemist’s choice). Each targeted creature must succeed at a Fortitude saving throw or have its speed reduced by 20 feet (minimum 0 feet).",
                          source: "Pathfinder #117: Assault on Longshadow", isPremium: true),

                    // // MARK: - Pathfinder #119: Prisoners of the Blight
        )
        try await db.insertSpell(
        .make("Fey Blight", school: "Transmutation", levels: "",
                          castingTime: "1 standard action", components: "V",
                          range: "touch", area: "", targets: "one living non-fey creature",
                          duration: "see below (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The target is cursed, gaining the bane of the caster’s fey race (see below for details on each specific fey race’s bane and duration).",
                          desc: "The target is cursed, gaining the bane of the caster’s fey race (see below for details on each specific fey race’s bane and duration). A creature that succeeds at its saving throw is immune to further castings of fey blight from the same type of fey for 24 hours.",
                          source: "Pathfinder #119: Prisoners of the Blight", isPremium: true)
        )
        try await db.insertSpell(
        .make("Fey Boon", school: "Transmutation", levels: "",
                          castingTime: "1 standard action", components: "V",
                          range: "touch", area: "", targets: "one living non-fey creature",
                          duration: "see below (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The target gains the boon of the caster’s fey race (see below for details on each specific fey race’s boon and duration).",
                          desc: "The target gains the boon of the caster’s fey race (see below for details on each specific fey race’s boon and duration). Atomie Among the smallest fey, atomies are nevertheless obsessed with martial deeds. They often follow adventuring parties traveling through their lands, listening in on campfire tales and occasionally challenging proud warriors to duels. A warrior who claims victory with honor (while enduring the little fey’s attempts to even the odds) might earn the atomie’s boon. In other cases, a storyteller who enraptures the atomie with tales of glory might be granted this gift, especially if she strokes the little warrior’s ego in the process. Atomies liberally use their bane in order to gain an edge in their duels or to hinder attackers. Fortunately for their targets, the curse is as short-lived as the atomie’s attention span.",
                          source: "Pathfinder #119: Prisoners of the Blight", isPremium: true)
        )
        try await db.insertSpell(
        .make("Fungal Blisters", school: "Transmutation", levels: "alchemist 2, arcanist 2, druid 2, hunter 2, investigator 2, sorcerer 2, witch 2, wizard 2 (Cyth-V'sug)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level or until discharged (see text)",
                          savingThrow: "None", sr: false,
                          summary: "When you cast this spell, horrible, fungal growths sprout forth all over your body. You develop 1d2+1 of these blisters per 2 caster levels.",
                          desc: "When you cast this spell, horrible, fungal growths sprout forth all over your body. You develop 1d2+1 of these blisters per 2 caster levels. Each time you are dealt more than 5 points of bludgeoning, piercing, or slashing damage from a single attack, one of these blisters bursts, releasing a cloud of harmful spores in a 5-foot-radius burst centered on you. These spores enter the lungs of all living creatures within the cloud that need to breathe and deal 1d6+1 points of damage for every 2 caster levels you have (Fortitude negates). This is a disease effect, and you and plants aren’t affected by the spores. It is possible for more than one blister to burst in a single round. If you are reduced to 0 or fewer hit points, all remaining blisters burst, and the resulting spores deal the cumulative amount of damage. You are not able to cast this spell while wearing heavy armor. If you don heavy armor during the spell’s duration, all remaining blisters burst as if you had been reduced to 0 or fewer hit points.",
                          source: "Pathfinder #119: Prisoners of the Blight", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sebaceous Twin", school: "Transmutation", levels: "arcanist 3, cleric 3, druid 3, hunter 3, oracle 3, sorcerer 3, warpriest 3, witch 3, wizard 3 (Cyth-V'sug)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "1 round/level (see text)",
                          savingThrow: "none (see text);", sr: true,
                          summary: "By touching a living target, you cause a half-formed, parasitic clone of the target to burst from its midsection.",
                          desc: "By touching a living target, you cause a half-formed, parasitic clone of the target to burst from its midsection. The twin dangles from the target’s body, making it difficult for the target to move easily and imparting a –2 penalty on Acrobatics and Climb checks. In addition, for the spell’s duration, the target must succeed at a Fortitude saving throw at the start of its turn each round, or else it takes 1 point of Constitution damage and is sickened for that round as the twin siphons off its blood. Each time the target receives any healing (magical or otherwise), the duration of this spell is extended by 1 round. Each attack that deals damage to the target reduces the duration of this spell by 1 round. If the duration reaches 0 rounds in this manner, the twin is violently excised from the body, and the target takes 1d6 points of bleed damage (which can be healed as normal). The effect of sebaceous twin counts as a disease effect with a DC equal to the spell’s saving throw DC.",
                          source: "Pathfinder #119: Prisoners of the Blight", isPremium: true),

                    // // MARK: - Pathfinder #131: The Reaper's Right Hand
        )
        try await db.insertSpell(
        .make("Halfling Vengeance", school: "Divination", levels: "antipaladin 1, cleric 2, inquisitor 2, oracle 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "one Small or smaller creature touched",
                          duration: "1 round/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You grant the touched target the ability to ascertain the weaknesses of foes.",
                          desc: "You grant the touched target the ability to ascertain the weaknesses of foes. The target deals an additional 1d6 points of precision damage on successful attacks with daggers or slings against foes within 30 feet, as long as the attacked foe is denied its Dexterity bonus to Armor Class or is flanked by the target. This additional damage increases by 1d6 for every 4 caster levels you have beyond 3rd, to a maximum of 5d6 at 19th level. This bonus damage is precision damage and stacks with other sources of precision damage, such as sneak attack. This bonus damage is not multiplied on a critical hit. Once per round on a successful attack that deals this precision damage, the target can choose to forgo 2d6 points of precision damage (either granted by this spell or from other sources of precision damage, such as sneak attack) to inflict one of the following conditions on the attacked foe for 1 round: The attacked foe can’t make attacks of opportunity against creatures smaller than it. The attacked foe is denied its Dexterity bonus to Armor Class against attacks made with daggers or slings. The attacked foe takes a –2 penalty on attacks against creatures smaller than it. The attacked foe can’t take 5-foot steps. A creature can benefit from only one",
                          source: "Pathfinder #131: The Reaper's Right Hand", isPremium: true)
        )
        try await db.insertSpell(
        .make("Halfling Vengeance, Mass", school: "Divination", levels: "antipaladin 1, cleric 2, inquisitor 2, oracle 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "one Small or smaller creature touched",
                          duration: "1 round/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions like halfling vengeance , except that it affects multiple creatures.",
                          desc: "This spell functions like halfling vengeance , except that it affects multiple creatures.",
                          source: "Pathfinder #131: The Reaper's Right Hand", isPremium: true),

                    // // MARK: - Pathfinder #134: It Came from Hollow Mountain
        )
        try await db.insertSpell(
        .make("Alluring Light", school: "Enchantment (Compulsion)", levels: "bard 1, skald 1, witch 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "30 ft.", area: "30-ft.-radius emanation centered on you", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Will negates (see text);", sr: true,
                          summary: "You glow with a soft radiance that calls out to all who see it.",
                          desc: "You glow with a soft radiance that calls out to all who see it. Each enemy that fails its save is drawn to you and must use its move action to approach you at the beginning of each of its turns for 1 round per caster level. An affected target must move toward you in the most direct path it can, though it can step around obstacles or other creatures. This spell can’t force a creature to walk into an area that might obviously harm or kill it (such as into a pit, over a patch of floor studded with caltrops , or through a",
                          source: "Pathfinder #134: It Came from Hollow Mountain", isPremium: true)
        )
        try await db.insertSpell(
        .make("Moonrise Arrow", school: "Evocation", levels: "cleric 3, inquisitor 3, magus 3, occultist 3, oracle 3, paladin 3, warpriest 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "up to 50 pieces of ammunition, all of which must be together at the time of casting",
                          duration: "10 minutes/level",
                          savingThrow: "Fortitude negates (harmless, object);", sr: true,
                          summary: "You cause ammunition, including shuriken, to glow with faint silvery light.",
                          desc: "You cause ammunition, including shuriken, to glow with faint silvery light. The ammunition counts as magic and silver for the purpose of overcoming damage reduction, in addition to the properties of any other special material the ammunition has. Incorporeal undead and shapechangers take an additional 1d8 points of damage from such ammunition. The targeted ammunition sheds dim light in a 5-foot radius for 1 round after it is fired or thrown.",
                          source: "Pathfinder #134: It Came from Hollow Mountain", isPremium: true),

                    // // MARK: - Pathfinder #135: Runeplague
        )
        try await db.insertSpell(
        .make("Qlippoth Appearance", school: "Transmutation (Polymorph)", levels: "alchemist 3, antipaladin 2, cleric 3, oracle 3, shaman 3, warpriest 3, witch 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "10 minutes/level (see text)",
                          savingThrow: "Will negates (see text);", sr: true,
                          summary: "When under the effects of this spell, your face and body appear subtly wrong, though you are still recognizable as yourself.",
                          desc: "When under the effects of this spell, your face and body appear subtly wrong, though you are still recognizable as yourself. You gain a +4 circumstance bonus on Intimidate checks but take a –4 penalty on Diplomacy checks. As long as this spell’s effects persist, you can reveal the face under your face as a standard action, assaulting the senses of a single living creature within 30 feet that can see you. A targeted creature must succeed at a Will save against the DC of this spell or be subject to one of the following effects (your choice). Every time you use this ability, you reduce the remaining duration of this spell by 10 minutes. The affected creature takes 1 point of Wisdom damage. The affected creature is paralyzed with revulsion for 1 round. The affected creature is sickened with disgust for 1d6 rounds. The affected creature takes 1d6 points of nonlethal damage as its senses are overwhelmed.",
                          source: "Pathfinder #135: Runeplague", isPremium: true),

                    // // MARK: - Pathfinder #140: Eulogy for Roslar's Coffer
        )
        try await db.insertSpell(
        .make("Bloodstone Mirror", school: "Abjuration", levels: "cleric 7, occultist 5, oracle 7, witch 7",
                          castingTime: "1 standard action", components: "V, S, M (a red bloodstone worth 500 gp)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 hour/level",
                          savingThrow: "None", sr: false,
                          summary: "Developed due to Arazni’s fear that her stolen organs might be used to control her, this spell reflects any attempts to steal your free will.",
                          desc: "Developed due to Arazni’s fear that her stolen organs might be used to control her, this spell reflects any attempts to steal your free will. Whenever you are exposed to a mind-affecting effect or a spell that would otherwise give another creature control of your actions (such as",
                          source: "Pathfinder #140: Eulogy for Roslar's Coffer", isPremium: true)
        )
        try await db.insertSpell(
        .make("Litany of the Red Crusader", school: "Necromancy", levels: "antipaladin 1, inquisitor 2, paladin 1",
                          castingTime: "1 swift action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "Followers of Arazni have made use of this litany since her days as a crusader and herald.",
                          desc: "Followers of Arazni have made use of this litany since her days as a crusader and herald. Each time the target creature takes piercing or slashing damage, it takes 1 point of bleed damage; this bleed damage stacks with itself. While subject to this spell, the target cannot be the target of another spell that has the word “litany” in the title.",
                          source: "Pathfinder #140: Eulogy for Roslar's Coffer", isPremium: true)
        )
        try await db.insertSpell(
        .make("Unspoken Name", school: "Divination", levels: "arcanist 3, cleric 3, inquisitor 3, oracle 3, sorcerer 3, warpriest 3, wizard 3",
                          castingTime: "1 minute", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "24 hours or until discharged",
                          savingThrow: "None", sr: false,
                          summary: "Prized among those who seek to monitor the attention paid to them, this spell is said to be used by Arazni to identify those followers who dare refer to her as “the Harlot Queen” so she might…",
                          desc: "Prized among those who seek to monitor the attention paid to them, this spell is said to be used by Arazni to identify those followers who dare refer to her as “the Harlot Queen” so she might summarily dismiss them. When you cast this spell, designate a word, phrase, or name. If a creature within 1 mile of you uses that word, phrase, or name to refer to you, you immediately learn that creature’s name, appearance, and location. This discharges the spell.",
                          source: "Pathfinder #140: Eulogy for Roslar's Coffer", isPremium: true),

                    // // MARK: - Pathfinder #143: Borne by the Sun's Grace
        )
        try await db.insertSpell(
        .make("Keyhole", school: "Transmutation", levels: "arcanist 1, cleric 1, oracle 1, sorcerer 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 round", components: "V, DF",
                          range: "touch", area: "", targets: "one touched door or portal",
                          duration: "1 minute/level",
                          savingThrow: "special (see text);", sr: false,
                          summary: "By touching a single door, gate, or other portal, you create a keyhole where none existed before or double the size of an existing keyhole.",
                          desc: "By touching a single door, gate, or other portal, you create a keyhole where none existed before or double the size of an existing keyhole. A conjured keyhole allows you to peer through the door, though the limited perspective imposes a –10 penalty on Perception checks to spot anything beyond. It also allows a sealed door to be locked or picked if it could not be before. Locking or unlocking such a door requires a successful Disable Device check with a DC equal to the barrier’s break DC + 10. Enlarging an existing keyhole allows viewers to peer through to whatever lies beyond, even if the preexisting keyhole did not allow it, and it reduces the Disable Device DC to open or lock the door by 5. This spell does not normally allow a saving throw, but magic doors and barriers can resist the effect with a successful Will saving throw, as if they were carried by their original creator.",
                          source: "Pathfinder #143: Borne by the Sun's Grace", isPremium: true)
        )
        try await db.insertSpell(
        .make("Open the Dead Roads", school: "Conjuration", levels: "cleric 6, oracle 6, warpriest 6",
                          castingTime: "1 minute", components: "V, S, DF",
                          range: "touch", area: "", targets: "up to one touched creature/level",
                          duration: "1 hour/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "To cast open the Dead Roads, you must be in an area of fog or dim light.",
                          desc: "To cast open the Dead Roads, you must be in an area of fog or dim light. Upon completion of the spell, swirling mists part and deposit you and any creatures you touched on a nearby stretch of the Dead Roads, a network of extraplanar roadways. You can take up to one creature per level, but all targets must be touching each other. You must specify a location known to you or one of your travelers as your destination when casting this spell. When traveling the otherworldly paths of the Dead Roads, you move at a speed of 50 miles per hour regardless of the terrain on the Material Plane. Your own movement speed does not change; you simply arrive at distant destinations more quickly because the Dead Roads offer a shorter route. You can exit the Dead Roads at any point before reaching your destination by wandering off the path, in which case you are usually returned to your starting place. If this would place you within a solid object, you (and any creatures with you) are shunted to the nearest empty space available. Because the Dead Roads occupy another plane, it is impossible to spy on the Material Plane while using this spell without additional spells or supernatural abilities.",
                          source: "Pathfinder #143: Borne by the Sun's Grace", isPremium: true),

                    // // MARK: - Pathfinder #14: Children of the Void
        )
        try await db.insertSpell(
        .make("Drunkard's Breath", school: "Conjuration (Creation)", levels: "bard 2, cleric 2, oracle 2, skald 2, warpriest 2 (Cayden Cailean)",
                          castingTime: "1 standard action", components: "V, S, M (a rotten egg or cabbage leaves)",
                          range: "30 ft.", area: "cone-shaped burst", targets: "",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates; see text;", sr: false,
                          summary: "This spell emanates from your mouth and functions like stinking cloud , except as noted above. The effect is barely visible and does not obscure vision.",
                          desc: "This spell emanates from your mouth and functions like stinking cloud , except as noted above. The effect is barely visible and does not obscure vision. The nausea effect resembles that of an extreme hangover. This is a poison effect. Cayden Cailean’s church uses this spell to disperse angry crowds, such as when celebrations get out of hand.",
                          source: "Pathfinder #14: Children of the Void", isPremium: true),

                    // // MARK: - Pathfinder #19: Howl of the Carrion King
        )
        try await db.insertSpell(
        .make("Reveal True Shape", school: "Divination", levels: "arcanist 2, bard 2, cleric 2, druid 2, hunter 2, oracle 2, skald 2, sorcerer 2, warpriest 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a pinch of rare herbs worth 50 gp)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You reveal the true form of a magically disguised or transformed creature, whether the target’s transformation is physical (such as polymorph ) or illusory (such as",
                          desc: "You reveal the true form of a magically disguised or transformed creature, whether the target’s transformation is physical (such as polymorph ) or illusory (such as",
                          source: "Pathfinder #19: Howl of the Carrion King", isPremium: true),

                    // // MARK: - Pathfinder #24: The Final Wish
        )
        try await db.insertSpell(
        .make("Diamond Spray", school: "Evocation", levels: "arcanist 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a lump of coal)",
                          range: "20 ft.", area: "cone-shaped burst", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Reflex half;", sr: true,
                          summary: "A cone of tiny, sparkling slivers as hard and sharp as filed diamonds springs from your outstretched fingers at tremendous speed.",
                          desc: "A cone of tiny, sparkling slivers as hard and sharp as filed diamonds springs from your outstretched fingers at tremendous speed. Any creature in the area of the torrent takes 1d6 points of slashing damage per caster level (maximum 10d6). These magical slivers are treated as adamantine and cold iron for the purpose of overcoming damage reduction. In addition, this spell bypasses up to 1 point of an object’s hardness per 2 caster levels (maximum 10).",
                          source: "Pathfinder #24: The Final Wish", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hurricane Blast", school: "Evocation", levels: "arcanist 4, druid 3, hunter 3, sorcerer 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "5-ft.-radius burst/2 levels (maximum 25-ft.-radius burst)", targets: "you",
                          duration: "1 round",
                          savingThrow: "Reflex negates;", sr: false,
                          summary: "This spell creates a severe blast of air (approximately 50 mph) that originates from you, affecting all creatures in the burst.",
                          desc: "This spell creates a severe blast of air (approximately 50 mph) that originates from you, affecting all creatures in the burst. A Tiny or smaller creature on the ground is knocked down and rolled 1d4×10 feet, taking 1d4 points of nonlethal damage per 10 feet. If flying, a Tiny or smaller creature is blown back 2d6×10 feet and takes 2d6 points of nonlethal damage due to battering and buffeting. Small creatures are knocked prone by the force of the wind, or if flying are blown back 1d6×10 feet. Medium creatures are unable to move forward against the force of the wind, or if flying are blown back 1d6×5 feet. Large or larger creatures may move normally within a hurricane blast effect.",
                          source: "Pathfinder #24: The Final Wish", isPremium: true)
        )
        try await db.insertSpell(
        .make("Torrent of Elemental Rage", school: "Evocation", levels: "arcanist 6, sorcerer 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S, M/DF",
                          range: "", area: "persistent line of elements 30 ft. long", targets: "",
                          duration: "concentration, 1 round/3 levels (see below)",
                          savingThrow: "Reflex half;", sr: true,
                          summary: "A shimmering torrent of raw elemental power springs into existence, originating from your outstretched palms.",
                          desc: "A shimmering torrent of raw elemental power springs into existence, originating from your outstretched palms. The blast resembles a horizontal whirlwind of howling winds, searing flame, and tumbling shrapnel of ice and metal. Any creature in the area of effect must make a Reflex save or take 8d6 points of damage from a variety of effects—2d6 points of fire damage, 2d6 points of cold damage, 2d6 points of sonic damage, and 2d6 points of slashing damage that overcomes adamantine damage reduction. The elemental line is an ongoing effect that persists for as long as you remain concentrating on it, up to 1 round for every three levels you possess (maximum 6 rounds). The line affects any creatures that pass through it on their turn, requiring them to make Reflex saves or take damage as noted. On your turn you may shift the line’s position as you please. Moving the line does not cause it to sweep through intermediary squares but only affects creatures in its new area of effect.",
                          source: "Pathfinder #24: The Final Wish", isPremium: true)
        )
        try await db.insertSpell(
        .make("Veil of Ash", school: "Evocation", levels: "arcanist 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a pinch of ash)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "This spell causes a small cloud of searing, choking ash to appear around the face of the target.",
                          desc: "This spell causes a small cloud of searing, choking ash to appear around the face of the target. The creature must succeed at a Fortitude saving throw or take 1d6 points of fire damage and be blinded. The victim must make a new save against damage and blindness for each round the spell persists. The target must have a discernable anatomy and no more than one head in order to be blinded. Undead, constructs, and creatures without eyes or who don’t rely on sight to sense their surroundings can be damaged by this spell, but not blinded. A moderate wind (11+ mph) disperses the ash cloud in 2 rounds; a strong wind (21+ mph) disperses the cloud in 1 round. This spell does not function underwater.",
                          source: "Pathfinder #24: The Final Wish", isPremium: true)
        )
        try await db.insertSpell(
        .make("Water Shield", school: "Evocation", levels: "arcanist 4, cleric 4, druid 3, hunter 3, oracle 4, sorcerer 4, warpriest 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M/DF (1 cup of water)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This spell surrounds you in a spout of clear acid that aids in deflecting attacks and damages creatures that attack you in melee.",
                          desc: "This spell surrounds you in a spout of clear acid that aids in deflecting attacks and damages creatures that attack you in melee. The constantly upward-rushing waters grant you a measure of protecting, shielding you so you only take half damage from acid and fire-based attacks. If such an attack allows a Reflex save for half damage, you take no damage on a successful save. Any creature striking you with its body or a handheld weapon deals normal damage, but at the same time the attacker takes 1d6 points of acid damage + 1 point per 2 caster levels (maximum +10). If the attacker has spell resistance, it applies to this effect. Creatures wielding weapons with exceptional reach are not subject to this damage if they attack you.",
                          source: "Pathfinder #24: The Final Wish", isPremium: true),

                    // // MARK: - Pathfinder #29: Mother of Flies
        )
        try await db.insertSpell(
        .make("Spellcasting Contract", school: "Evocation", levels: "cleric 5, oracle 5, warpriest 5 (Asmodeus)",
                          castingTime: "10 minutes", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched; see text",
                          duration: "permanent until discharged (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions like lesser spellcasting contract , except if the target has 9 HD or more, you can imbue him with one or two 2nd-level spells and one 3rd-level spell.",
                          desc: "This spell functions like lesser spellcasting contract , except if the target has 9 HD or more, you can imbue him with one or two 2nd-level spells and one 3rd-level spell. Spellcasting Contract, Greater",
                          source: "Pathfinder #29: Mother of Flies", isPremium: true)
        )
        try await db.insertSpell(
        .make("Spellcasting Contract, Greater", school: "Evocation", levels: "cleric 5, oracle 5, warpriest 5 (Asmodeus)",
                          castingTime: "10 minutes", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched; see text",
                          duration: "permanent until discharged (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions like lesser spellcasting contract , except if the target has 13 HD or more you can imbue him with one or two 4th-level spells and one 5th-level spell.",
                          desc: "This spell functions like lesser spellcasting contract , except if the target has 13 HD or more you can imbue him with one or two 4th-level spells and one 5th-level spell.",
                          source: "Pathfinder #29: Mother of Flies", isPremium: true)
        )
        try await db.insertSpell(
        .make("Spellcasting Contract, Lesser", school: "Evocation", levels: "cleric 5, oracle 5, warpriest 5 (Asmodeus)",
                          castingTime: "10 minutes", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched; see text",
                          duration: "permanent until discharged (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions exactly like imbue with spell ability , except that you can imbue the target with any spell you have prepared (instead of just abjuration, divination, or conjuration [healing]…",
                          desc: "This spell functions exactly like imbue with spell ability , except that you can imbue the target with any spell you have prepared (instead of just abjuration, divination, or conjuration [healing] spells) and the target may have more than one use of the imbued spells, depending upon the arrangements made when it is cast. Casting this spell requires a contract between you and the target, explaining what spells are to be imbued and the circumstances that cause the contract to expire. The contract may be as simple as allowing the target one casting of each of the imbued spells (as per",
                          source: "Pathfinder #29: Mother of Flies", isPremium: true),

                    // // MARK: - Pathfinder #30: The Twice-Damned Prince
        )
        try await db.insertSpell(
        .make("Genius Avaricious", school: "Conjuration (Creation)", levels: "arcanist 6, cleric 6, oracle 6, sorcerer 6, warpriest 6, wizard 6",
                          castingTime: "10 minutes", components: "V, S, M (valuable offerings; see text), F (one gold coin)",
                          range: "touch", area: "a vestige of the archdevil Mammon imbues a coin with a negotiable degree of power", targets: "",
                          duration: "instantaneous (see text)",
                          savingThrow: "none;", sr: false,
                          summary: "Casting this spell constitutes performing a rite of sacrifice to the archdevil Mammon , making an offering to the Lord of Erebus and channeling a measure of his disembodied might into a single coin.",
                          desc: "Casting this spell constitutes performing a rite of sacrifice to the archdevil Mammon , making an offering to the Lord of Erebus and channeling a measure of his disembodied might into a single coin. The power and abilities of this vestige correspond directly to the value of the offering, allowing for three distinct effects.",
                          source: "Pathfinder #30: The Twice-Damned Prince", isPremium: true),

                    // // MARK: - Pathfinder #35: War of the River Kings
        )
        try await db.insertSpell(
        .make("Swallow Your Fear", school: "Enchantment", levels: "bard 1, cleric 1, oracle 1, skald 1, warpriest 1 (Gorum)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature plus one additional creature per four levels, no two of which can be more than 30 ft. apart",
                          duration: "10 minutes; see text",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You make the affected subjects ready for battle despite their fear.",
                          desc: "You make the affected subjects ready for battle despite their fear. If a target is suffering from a fear effect of any kind, he gains a +2 morale bonus to Strength and Constitution, a +1 morale bonus on Will saves, and a –2 penalty to AC. If the subject is frightened, he remains in place and gains the confused condition for the remainder of the fear effect, except he treats all results of “attack self ” as “do nothing” and treats “attack nearest creature” as “act normally.” If the subject is panicked, he remains in place and gains the confused condition for the duration of the fear effect.",
                          source: "Pathfinder #35: War of the River Kings", isPremium: true),

                    // // MARK: - Pathfinder #42: Sanctum of the Serpent God
        )
        try await db.insertSpell(
        .make("Constricting Coils", school: "Enchantment (Compulsion)", levels: "arcanist 5, cleric 5, oracle 5, sorcerer 5, warpriest 5, wizard 5 (Ydersius)",
                          castingTime: "1 standard action", components: "V, S, M/DF (a snakeskin)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one living creature",
                          duration: "1 round/level (D); see text",
                          savingThrow: "Will negates; see text;", sr: true,
                          summary: "This spell functions like hold monster , except that the target is constricted as if by the coils of a large snake, taking 1d6+6 points of bludgeoning damage each round that it fails its save.",
                          desc: "This spell functions like hold monster , except that the target is constricted as if by the coils of a large snake, taking 1d6+6 points of bludgeoning damage each round that it fails its save. A successful save ends both the paralyzing and constriction effects.",
                          source: "Pathfinder #42: Sanctum of the Serpent God", isPremium: true),

                    // // MARK: - Pathfinder #55: The Wormwood Mutiny
        )
        try await db.insertSpell(
        .make("Advanced Scurvy", school: "Necromancy", levels: "cleric 1, druid 1, hunter 1, oracle 1, warpriest 1 (Besmara)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "The subject contracts an advanced form of scurvy. He becomes constantly fatigued, suffers from bone pain (–1 penalty on Strengthand Dexterity-based checks), wounds easily (add +1 point of damage to…",
                          desc: "The subject contracts an advanced form of scurvy. He becomes constantly fatigued, suffers from bone pain (–1 penalty on Strengthand Dexterity-based checks), wounds easily (add +1 point of damage to any bleed effects affecting the target), experiences loose teeth, and is slow to heal (natural healing occurs at half the normal rate). Scurvy can be treated magically or can be overcome with proper nutrition; eating the right foods ends the fatigue and bone pain within 1–2 days and provides a full cure 2d6 days after that.",
                          source: "Pathfinder #55: The Wormwood Mutiny", isPremium: true)
        )
        try await db.insertSpell(
        .make("Cloud of Seasickness", school: "Conjuration (Creation)", levels: "arcanist 2, cleric 2, druid 2, hunter 2, oracle 2, sorcerer 2, warpriest 2, wizard 2 (Besmara)",
                          castingTime: "1 standard action", components: "V, S, M (a piece of seaweed)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "cloud spreads in 20-ft. radius, 20 ft. high", targets: "",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates; see text;", sr: false,
                          summary: "This spell functions like stinking cloud , except as noted above and that the vapors make creatures sickened instead of nauseated.",
                          desc: "This spell functions like stinking cloud , except as noted above and that the vapors make creatures sickened instead of nauseated.",
                          source: "Pathfinder #55: The Wormwood Mutiny", isPremium: true),

                    // // MARK: - Pathfinder #56: Raiders of the Fever Sea
        )
        try await db.insertSpell(
        .make("Submerge Ship", school: "Transmutation", levels: "arcanist 7, cleric 7, oracle 7, sorcerer 7, wizard 7",
                          castingTime: "1 minute", components: "V, S, M/DF (a glass marble or piece of soap)",
                          range: "touch", area: "", targets: "1 sailing vessel",
                          duration: "10 minutes/level",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "When this spell is cast upon a vessel, the ship is surrounded by a protective bubble of constantly replenishing, breathable air and sinks beneath the waves.",
                          desc: "When this spell is cast upon a vessel, the ship is surrounded by a protective bubble of constantly replenishing, breathable air and sinks beneath the waves. For the duration of the spell, the ship can travel beneath the water as easily as it did above. While under the effects of this spell, the ship has magical propulsion that gives it a maximum speed of 120 feet and an acceleration of 30 feet (see the Skull & Shackles Player’s Guide for details). The ship’s pilot uses the normal sailing skill to control the ship while under this spell’s effects, and can command it to dive and ascend as part of the vessel’s normal movement. Despite the magical propulsion, the ship still requires its crew to perform its normal functions. The spell protects the ship and all aboard from the dangers of drowning and pressure, but not from damage from outside obstacles or creatures. The bubble cannot be used offensively and prevents an affected ship from rising into a space that won’t accommodate it (like a sea cave too small to contain it or under another vessel). Creatures can enter or leave the bubble at will, but those outside the sphere cannot be forced inside against their will, the sphere proving substantial enough that such creatures may choose whether to enter or to slip away along its sides. At the end of the spell’s duration the bubble pops, causing a ship still underwater at that time to gain the sinking condition. This spell has no effect if cast upon a ship in water that cannot cover the vessel entirely. Although largely beneficial, this spell can be cast on a ship whose pilot does not want to submerge her vessel. The ship itself uses its Will saving throw to resist this effect.",
                          source: "Pathfinder #56: Raiders of the Fever Sea", isPremium: true),

                    // // MARK: - Pathfinder #62: Curse of the Lady's Light
        )
        try await db.insertSpell(
        .make("Ironbloom Sprouts", school: "Transmutation", levels: "cleric 1, druid 1, hunter 1, oracle 1, warpriest 1 (Torag)",
                          castingTime: "1 standard action", components: "V, S, DF, M (1 gp worth of powdered iron)",
                          range: "touch", area: "", targets: "2d4 fresh mushrooms touched",
                          duration: "1 day/level",
                          savingThrow: "none;", sr: true,
                          summary: "This spell functions like goodberry , except as noted above and that it transforms 2d4 mushrooms into magical ironbloom mushrooms rather than transforming common berries into magical berries.",
                          desc: "This spell functions like goodberry , except as noted above and that it transforms 2d4 mushrooms into magical ironbloom mushrooms rather than transforming common berries into magical berries. Alternatively, you may create twice as many mushrooms, but each only has the nourishment ability of a",
                          source: "Pathfinder #62: Curse of the Lady's Light", isPremium: true),

                    // // MARK: - Pathfinder #64: Beyond the Doomsday Door
        )
        try await db.insertSpell(
        .make("Curse Item", school: "Necromancy", levels: "cleric 2, oracle 2, warpriest 2 (Groetus)",
                          castingTime: "1 minute", components: "V, S, DF",
                          range: "touch", area: "", targets: "object touched",
                          duration: "instantaneous",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "The object becomes flawed and prone to failure. The effects of this spell depend on the nature of the object.",
                          desc: "The object becomes flawed and prone to failure. The effects of this spell depend on the nature of the object. Magic Item : The item functions intermittently, gaining either an unreliable curse or a random dependent curse (",
                          source: "Pathfinder #64: Beyond the Doomsday Door", isPremium: true),

                    // // MARK: - Pathfinder #65: Into the Nightmare Rift
        )
        try await db.insertSpell(
        .make("Lissalan Snake Sigil", school: "Multiple (See Text)", levels: "arcanist 3, cleric 3, oracle 3, sorcerer 3, warpriest 3, wizard 3 (Lissala)",
                          castingTime: "10 minutes", components: "V, S, M (powdered amber worth 500 gp and a snake scale)",
                          range: "touch", area: "", targets: "one touched book or written work",
                          duration: "permanent or until discharged; 1 day/level; see text",
                          savingThrow: "Reflex negates;", sr: false,
                          summary: "There are seven variants of this spell, one for each of the Thassilonian schools of magic.",
                          desc: "There are seven variants of this spell, one for each of the Thassilonian schools of magic. Each functions like sepia snake sigil (and counts as that spell for the purpose of combining other spells that hide or garble text), except instead of trapping the subject, the triggered sigil’s effect depends on this spell’s school. This effect lasts for 1 day/level. This is a curse effect that can be removed via",
                          source: "Pathfinder #65: Into the Nightmare Rift", isPremium: true),

                    // // MARK: - Pathfinder #67: The Snows of Summer, Cities of Golarion
        )
        try await db.insertSpell(
        .make("Irriseni Mirror Sight", school: "Divination (Scrying)", levels: "arcanist 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "10 minutes", components: "V, S, F (a mirror)",
                          range: "see text", area: "magical sensor", targets: "",
                          duration: "1 minute/level",
                          savingThrow: "none;", sr: false,
                          summary: "This spell lets you look into a mirror near you and see an image that is reflected in another specific mirror (chosen by you) or an individual reflected in any other mirror.",
                          desc: "This spell lets you look into a mirror near you and see an image that is reflected in another specific mirror (chosen by you) or an individual reflected in any other mirror. This works like a scrying spell, except you can only view creatures on the same plane as you. Each time you cast the spell, you can choose to see one of three types of reflections in your mirror.",
                          source: "Pathfinder #67: The Snows of Summer, Cities of Golarion", isPremium: true),

                    // // MARK: - Pathfinder #67: The Snows of Summer, Inner Sea Magic
        )
        try await db.insertSpell(
        .make("Ice Spears", school: "Conjuration", levels: "arcanist 3, druid 3, hunter 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a small stalagmite-shaped crystal)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "1 ice spear/4 levels", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Reflex half and see below;", sr: false,
                          summary: "Favored by the spellcasters of Irrisen, this potent spell can disrupt spellcasters, topple enemies, and break even seemingly unstoppable charges.",
                          desc: "Favored by the spellcasters of Irrisen, this potent spell can disrupt spellcasters, topple enemies, and break even seemingly unstoppable charges. One or more giant spears of ice lance up out of the ground. Each stalagmite-like icicle affects a 5-foot square and tapers to a height of 10 feet. You may cause a number of ice spears equal to one spear for every 4 caster levels you possess to burst from the ground. A creature that occupies a square from which a spear extends (or that is within 10 feet of the ground below) takes 2d6 points of piercing damage and 2d6 points of cold damage per square—creatures that take up more than 1 square can be hit by multiple spears if your caster level is high enough. The explosive growth can also trip foes. When the spears erupt from the ground, they attempt a combat maneuver check to trip any targets that take damage from the spears, with a total bonus equal to your caster level plus your Intelligence, Wisdom, or Charisma modifier, whichever is highest. Each additional ice spear beyond the first that strikes a single foe grants a +10 bonus on this combat maneuver check. If the check is successful, the ice spears knock the foe prone. A successful Reflex save halves the damage and prevents the trip attempt. If you cast this spell upon an area covered with ice or snow, such as a glacier, frozen lake, or snow-covered field, the spears strike with additional force. Saves against the effect take a –2 penalty, and the spell effect gains a +4 bonus on the combat maneuver check to trip foes.",
                          source: "Pathfinder #67: The Snows of Summer, Inner Sea Magic", isPremium: true),

                    // // MARK: - Pathfinder #67: The Snows of Summer, People of the North
        )
        try await db.insertSpell(
        .make("Flurry of Snowballs", school: "Evocation", levels: "arcanist 2, druid 2, hunter 2, magus 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "30 ft.", area: "cone-shaped burst", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Reflex half;", sr: false,
                          summary: "You send a flurry of snowballs hurtling at your foes. Any creature in the area takes 4d6 points of cold damage from being pelted with the icy spheres.",
                          desc: "You send a flurry of snowballs hurtling at your foes. Any creature in the area takes 4d6 points of cold damage from being pelted with the icy spheres.",
                          source: "Pathfinder #67: The Snows of Summer, People of the North", isPremium: true),

                    // // MARK: - Pathfinder #68: The Shackled Hut
        )
        try await db.insertSpell(
        .make("Martyr's Last Blessing", school: "Conjuration (Healing)", levels: "cleric 3, hunter 3, oracle 3, ranger 3, warpriest 3 (Milani)",
                          castingTime: "1 minute", components: "V, S, DF",
                          range: "personal (see text)", area: "", targets: "you and one ally/level, no two of which can be more than 30 ft. apart (see text)",
                          duration: "1 hour/level or instantaneous (see text)",
                          savingThrow: "Will half (harmless, see text);", sr: true,
                          summary: "You charge your body with healing energy, which erupts from you if you are dying or are killed before 1 hour per level has passed.",
                          desc: "You charge your body with healing energy, which erupts from you if you are dying or are killed before 1 hour per level has passed. If you’re brought below 0 hit points or killed (including by effects that kill without dealing damage, such as phantasmal killer and",
                          source: "Pathfinder #68: The Shackled Hut", isPremium: true)
        )
        try await db.insertSpell(
        .make("Peasant Armaments", school: "Transmutation", levels: "arcanist 1, cleric 1, hunter 1, inquisitor 1, oracle 1, ranger 1, redmantisassassin 1, sorcerer 1, warpriest 1, wizard 1 (Milani)",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "1 improvised weapon/level",
                          duration: "1 minute/level (D)",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "You transform one or more improvised weapons into equivalent simple or martial weapons.",
                          desc: "You transform one or more improvised weapons into equivalent simple or martial weapons. The bearer of such a weapon can wield it with proficiency (no penalty for using an improvised weapon or not having the required proficiency). This does not alter the weapon’s shape or appearance in any way. For example, if cast on a chair leg, butter knife, and pitchfork, the weapons function as a club, dagger, and trident, respectively, and anyone who wields them does so without a nonproficiency penalty, but the weapons look no different than they were before the spell. The spell has no effect on items that are not improvised weapons. For example, if cast on a short sword, it does not grant proficiency to anyone wielding it.",
                          source: "Pathfinder #68: The Shackled Hut", isPremium: true),

                    // // MARK: - Pathfinder #69: Maiden, Mother, Crone
        )
        try await db.insertSpell(
        .make("Frosthammer", school: "Evocation", levels: "antipaladin 3, cleric 3, hunter 3, inquisitor 3, oracle 3, ranger 3, warpriest 3 (Kostchtchie)",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: true,
                          summary: "You create a warhammer of magically hardened ice and send it hurling toward the target. You must succeed at a ranged touch attack to strike the target.",
                          desc: "You create a warhammer of magically hardened ice and send it hurling toward the target. You must succeed at a ranged touch attack to strike the target. If hit, the target takes 1d8 points of damage per 2 caster levels you possess (maximum 5d8); half this damage is bludgeoning damage, half is cold damage. The",
                          source: "Pathfinder #69: Maiden, Mother, Crone", isPremium: true),

                    // // MARK: - Pathfinder #71: Rasputin Must Die!
        )
        try await db.insertSpell(
        .make("Black Sword of War", school: "Necromancy", levels: "antipaladin 3, arcanist 3, cleric 3, hunter 3, oracle 3, ranger 3, sorcerer 3, warpriest 3, wizard 3 (Szuriel)",
                          castingTime: "1 standard action", components: "V, S, F",
                          range: "touch", area: "", targets: "piercing or slashing manufactured weapon touched",
                          duration: "1 minute/level (D)",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "The target weapon turns a glossy black color and deals bleed damage if it deals hit point damage to a creature. The amount of bleed damage is equal to 1/2 your caster level (maximum bleed 5).",
                          desc: "The target weapon turns a glossy black color and deals bleed damage if it deals hit point damage to a creature. The amount of bleed damage is equal to 1/2 your caster level (maximum bleed 5).",
                          source: "Pathfinder #71: Rasputin Must Die!", isPremium: true)
        )
        try await db.insertSpell(
        .make("Bloody Tears and Jagged Smile", school: "Necromancy", levels: "arcanist 2, cleric 2, oracle 2, sorcerer 2, warpriest 2, wizard 2 (Szuriel)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal and see text", area: "", targets: "you and see text",
                          duration: "10 minutes/level",
                          savingThrow: "none;", sr: true,
                          summary: "Your eyes turn black and weep blood, and your teeth become jagged fangs. You gain a bite attack (1d3 points of damage if you are Small, 1d4 points of damage if you are Medium).",
                          desc: "Your eyes turn black and weep blood, and your teeth become jagged fangs. You gain a bite attack (1d3 points of damage if you are Small, 1d4 points of damage if you are Medium). You gain a +4 profane bonus on Intimidate checks and on your spell DCs for spells with the fear descriptor. You perceive creatures as",
                          source: "Pathfinder #71: Rasputin Must Die!", isPremium: true),

                    // // MARK: - Pathfinder #74: Sword of Valor
        )
        try await db.insertSpell(
        .make("Apparent Treachery", school: "Enchantment (Compulsion)", levels: "arcanist 4, bard 3, inquisitor 3, skald 3, sorcerer 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature/level, no two of which can be more than 30 ft. apart",
                          duration: "1 round/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You shroud a number of creatures in an aura of suspicion and fill them with extreme paranoia regarding their allies.",
                          desc: "You shroud a number of creatures in an aura of suspicion and fill them with extreme paranoia regarding their allies. Affected targets believe their companions are behaving erratically, nervously, and seemingly with an eye towards betrayal. Creatures under the effect of apparent treachery do not have allies and are not considered to be an ally to any other creature, including other creatures affected by this spell. They cannot move freely through their allies’ spaces, flank creatures with them, cooperate with them using teamwork feats, or give or receive benefits from the aid another action or any spells or effect that affects only allies. If creatures affected by this spell are able to take attacks of opportunity, they always do so against provoking opponents, including those who were their allies before being affected by this spell. A creature not under the effects of the spell who is trying to cast a spell against an affected target must succeed at an attack roll to touch the target, even if the spell is harmless, though the affected creature is not forced to attempt saving throws against harmless effects.",
                          source: "Pathfinder #74: Sword of Valor", isPremium: true)
        )
        try await db.insertSpell(
        .make("Film of Filth", school: "Transmutation", levels: "arcanist 4, cleric 4, druid 4, hunter 3, oracle 4, ranger 3, redmantisassassin 4, sorcerer 4, warpriest 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 round/level (D)",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "You cause the target’s flesh to exude a layer of putrescent slime so foul that the target is sickened (Fortitude negates) for the duration of the spell and for 1d4 rounds thereafter.",
                          desc: "You cause the target’s flesh to exude a layer of putrescent slime so foul that the target is sickened (Fortitude negates) for the duration of the spell and for 1d4 rounds thereafter. All creatures within 20 feet also become sickened (Fortitude negates), and remain sickened for as long as they remain within 20 feet of the target and for 1d4 rounds thereafter. A creature that strikes the target with a bite attack must succeed at an additional save or become nauseated for 1d4 rounds. Creatures immune to poison are unaffected.",
                          source: "Pathfinder #74: Sword of Valor", isPremium: true)
        )
        try await db.insertSpell(
        .make("Lightning Lash", school: "Evocation", levels: "cleric 3, hunter 2, inquisitor 3, oracle 3, ranger 2, warpriest 3, witch 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "20-foot-radius spread", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "You create a crackling lash of unholy lightning that flickers and flashes in your hand like a whip, shifting color in response to your mood and will.",
                          desc: "You create a crackling lash of unholy lightning that flickers and flashes in your hand like a whip, shifting color in response to your mood and will. Once per round, you can make a melee touch attack with the lightning lash against a target within 15 feet. If the attack is successful, it deals 1d6 points of electricity damage and 1d6 points of damage from divine power (similar to",
                          source: "Pathfinder #74: Sword of Valor", isPremium: true)
        )
        try await db.insertSpell(
        .make("Maw of Chaos", school: "Conjuration (Teleportation)", levels: "arcanist 8, cleric 8, oracle 8, sorcerer 8, wizard 8",
                          castingTime: "1 standard action", components: "V, S, F/DF (a gold-plated, cold iron ring that was forged in the Abyss)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "5-foot-radius spread", targets: "",
                          duration: "concentration (maximum 1 round/level)",
                          savingThrow: "see text;", sr: true,
                          summary: "This spell creates a rip in reality that plunges into the interspatial vortices that constantly churn with the raw destructive chaos of the Abyss.",
                          desc: "This spell creates a rip in reality that plunges into the interspatial vortices that constantly churn with the raw destructive chaos of the Abyss. Each round at the beginning of your turn, the maw of chaos attempts a drag combat maneuver check against every creature within 40 feet, using your caster level plus your primary spellcasting ability modifier in place of a CMB. If a creature is dragged into a",
                          source: "Pathfinder #74: Sword of Valor", isPremium: true)
        )
        try await db.insertSpell(
        .make("Summon Greater Demon", school: "Conjuration (Summoning)", levels: "arcanist 9, cleric 9, oracle 9, sorcerer 9, witch 9, wizard 9",
                          castingTime: "1 round", components: "V, S, F/DF (a tiny bag and a small candle)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one summoned creature", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like summon monster , except it allows you to summon a single coloxus (",
                          desc: "This spell functions like summon monster , except it allows you to summon a single coloxus (",
                          source: "Pathfinder #74: Sword of Valor", isPremium: true)
        )
        try await db.insertSpell(
        .make("Summon Lesser Demon", school: "Conjuration (Summoning)", levels: "arcanist 5, cleric 5, oracle 5, sorcerer 5, summoner 4, summoner (unchained) 4, warpriest 5, witch 5, wizard 5",
                          castingTime: "1 round", components: "V, S, F/DF (a tiny bag and a small candle)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one summoned creature", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like summon monster , except it allows you to summon a single brimorak (",
                          desc: "This spell functions like summon monster , except it allows you to summon a single brimorak (",
                          source: "Pathfinder #74: Sword of Valor", isPremium: true)
        )
        try await db.insertSpell(
        .make("Unleash Pandemonium", school: "Conjuration", levels: "cleric 5, oracle 5, summoner 5, summoner (unchained) 5, warpriest 5, witch 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "30-foot-radius spread", targets: "",
                          duration: "concentration (maximum 1 round/level) +1 round (D)",
                          savingThrow: "Will partial, see text;", sr: false,
                          summary: "You call upon the wild winds of the Abyssal atmosphere, howling with the screams of damned and demented souls in torment.",
                          desc: "You call upon the wild winds of the Abyssal atmosphere, howling with the screams of damned and demented souls in torment. The area is filled with winds of windstorm strength ( Core Rulebook 439), blowing in a random direction each round. Creatures within the area of effect are deafened as long as they remain within the area and for 1d4 rounds thereafter; however, they continue to hear the sounds of screams in their minds with painful intensity, causing them to become shaken for as long as they remain deafened. A successful Will save negates the shaken condition but not the deafness.",
                          source: "Pathfinder #74: Sword of Valor", isPremium: true)
        )
        try await db.insertSpell(
        .make("Vermicious Assumption", school: "Conjuration (Calling)", levels: "cleric 6, oracle 6, summoner 6, summoner (unchained) 6, warpriest 6",
                          castingTime: "10 minutes", components: "V, S, M (a handful of worms)",
                          range: "touch", area: "", targets: "one Medium humanoid corpse",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "You call a single vermlek demon ( Lords of Chaos 54) to invade and inhabit the body of the target corpse, taking on its likeness.",
                          desc: "You call a single vermlek demon ( Lords of Chaos 54) to invade and inhabit the body of the target corpse, taking on its likeness. The vermlek can remain on the Material Plane indefinitely as long as it has a body to inhabit; however, if it remains outside of a host for more than 1 minute, it’s banished back to the Abyss. The vermlek’s initial attitude towards you is friendly, but you must succeed at an opposed Charisma check to convince it to obey your commands, similar to a charmed creature. You gain a +2 circumstance bonus on this Charisma check if you offer it a fresh humanoid corpse to inhabit.",
                          source: "Pathfinder #74: Sword of Valor", isPremium: true),

                    // // MARK: - Pathfinder #77: Herald of the Ivory Labyrinth
        )
        try await db.insertSpell(
        .make("Bleeding Strike", school: "Necromancy", levels: "antipaladin 1, cleric 1, hunter 1, oracle 1, ranger 1, warpriest 1, witch 1 (Baphomet)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "one slashing melee weapon touched", targets: "",
                          duration: "1 round/level or until discharged",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "You imbue a slashing melee weapon with the ability to create a bleeding wound.",
                          desc: "You imbue a slashing melee weapon with the ability to create a bleeding wound. As a free action when the weapon hits a living creature, the wielder can discharge this spell to add 1 point of bleed damage to the weapon’s base damage. This bleeding is difficult to stop; add your spellcasting ability modifier (Wisdom for clerics, and so on) to the DC to stop the bleeding.",
                          source: "Pathfinder #77: Herald of the Ivory Labyrinth", isPremium: true)
        )
        try await db.insertSpell(
        .make("Rune of Jandelay", school: "Transmutation", levels: "arcanist 9, sorcerer 9, witch 9, wizard 9",
                          castingTime: "3 rounds", components: "V, S, M (cold iron, powdered diamond, and ground adamantine worth a total of 5,000 gp)",
                          range: "0 ft.; see text", area: "one rune", targets: "",
                          duration: "10 minutes/level",
                          savingThrow: "see below;", sr: false,
                          summary: "You scribe a potent rune of power upon a surface, similar to the way in which a symbol spell is cast.",
                          desc: "You scribe a potent rune of power upon a surface, similar to the way in which a symbol spell is cast. When inscribed, the rune of Jandelay manifests as a shape that evokes the face of a monstrous elephantine creature—the legendary Oliphant of Jandelay itself. The rune is 5 feet across when created, and the surface on which it is to be inscribed must be large enough to bear it.",
                          source: "Pathfinder #77: Herald of the Ivory Labyrinth", isPremium: true),

                    // // MARK: - Pathfinder #78: City of Locusts
        )
        try await db.insertSpell(
        .make("Abyssal Vermin", school: "Transmutation", levels: "antipaladin 2, arcanist 4, cleric 4, oracle 4, redmantisassassin 4, sorcerer 4, warpriest 4, witch 4, wizard 4 (Deskari)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one vermin or vermin swarm",
                          duration: "1 minute/level",
                          savingThrow: "Fortitude negates (see text);", sr: true,
                          summary: "You infuse the target with power from the Abyss, granting it the fiendish creature simple template. The swarm gains DR 5/good if it has at least 5 Hit Dice, or DR 10/good it if has at least 11 HD.",
                          desc: "You infuse the target with power from the Abyss, granting it the fiendish creature simple template. The swarm gains DR 5/good if it has at least 5 Hit Dice, or DR 10/good it if has at least 11 HD. It gains cold resistance 5 and fire resistance 5 if it has at least 5 HD, or cold resistance 10 and fire resistance 10 if it has at least 11 HD. It gains spell resistance equal to its CR + 6. Once per day, it can smite good (as a swift action against a good opponent, the vermin adds its Charisma bonus to its attack rolls and its HD to its damage rolls until the opponent is dead). If the targeted vermin is under your command, it automatically fails its saving throw against this spell. This spell has no effect on vermin that already have the fiendish creature simple template.",
                          source: "Pathfinder #78: City of Locusts", isPremium: true),

                    // // MARK: - Pathfinder #80: Empty Graves
        )
        try await db.insertSpell(
        .make("Summon Lesser Psychopomp", school: "Conjuration (Summoning)", levels: "arcanist 5, cleric 5, oracle 5, sorcerer 5, summoner 4, summoner (unchained) 4, warpriest 5, witch 5, wizard 5",
                          castingTime: "1 round", components: "V, S, F/DF (a crocodile skull funerary mask)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one or more summoned psychopomps (see text)", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like summon monster , except that it summons 1d3 esobok psychopomps or 1d4+1 nosoi psychopomps. Esobok psychopomps are detailed on page 84.",
                          desc: "This spell functions like summon monster , except that it summons 1d3 esobok psychopomps or 1d4+1 nosoi psychopomps. Esobok psychopomps are detailed on page 84. Nosoi psychopomps are detailed on page 220 of",
                          source: "Pathfinder #80: Empty Graves", isPremium: true)
        )
        try await db.insertSpell(
        .make("Summon Vanth", school: "Conjuration (Summoning)", levels: "arcanist 6, cleric 6, oracle 6, sorcerer 6, summoner 5, summoner (unchained) 5, warpriest 6, witch 6, wizard 6",
                          castingTime: "1 round", components: "V, S, F/DF (a vulture skull funerary mask)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one summoned vanth psychopomp", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like summon monster , except that it summons a single vanth psychopomp. Vanth psychopomps are detailed on page 221 of",
                          desc: "This spell functions like summon monster , except that it summons a single vanth psychopomp. Vanth psychopomps are detailed on page 221 of",
                          source: "Pathfinder #80: Empty Graves", isPremium: true),

                    // // MARK: - Pathfinder #81: Shifting Sands
        )
        try await seedSpellsJ()
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