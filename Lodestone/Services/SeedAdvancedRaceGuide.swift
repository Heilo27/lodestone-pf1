import Foundation

extension SeedDataBuilder {
    func seedAdvancedRaceGuide() async throws {
        try await seedARGRaces()
        try await seedARGTraits()
    }

    // MARK: - ARG Featured Races

    private func seedARGRaces() async throws {
        let races: [RaceEntry] = [

            // MARK: - Advanced Race Guide Featured Races

            .make("Aasimar",
                  size: "Medium",
                  speed: "30 ft.",
                  abilityModifiers: "+2 Wisdom, +2 Charisma",
                  racialTraits: [
                      "Darkvision: Aasimars can see in the dark up to 60 feet.",
                      "Celestial Resistance: Aasimars have acid resistance 5, cold resistance 5, and electricity resistance 5.",
                      "Skilled: Aasimars have a +2 racial bonus on Diplomacy and Perception checks.",
                      "Spell-Like Ability: Aasimars can use daylight once per day as a spell-like ability (caster level equals the aasimar's class level).",
                      "Outsider (Native): Aasimars are outsiders with the native subtype. They can be raised and resurrected.",
                      "Languages: Aasimars begin play speaking Common and Celestial."
                  ],
                  languages: ["Common", "Celestial"],
                  summary: "Touched by celestial heritage, aasimars carry the spark of the divine.",
                  desc: """
                  Aasimars are humans touched by the power of the heavens. Descended from humans with celestial heritage or touched directly by divine power, aasimars walk the mortal world as beings of extraordinary beauty and purpose. Their radiant eyes, lustrous hair, and otherworldly calm mark them as different from birth.

                  Aasimars often feel a deep calling toward good and righteousness, though not all answer that call. Their celestial blood manifests as resistance to elemental energy, a touch of divine sight in darkness, and the ability to call down the light of day. These traits make them natural paladins, clerics, and oracles.

                  Mechanically, aasimars receive excellent ability bonuses for divine spellcasters. Their elemental resistances provide meaningful survivability, and daylight is a powerful tool against undead and shadow creatures. The +2 to Diplomacy and Perception make them socially capable as well as perceptive in dangerous situations.
                  """,
                  source: "Advanced Race Guide",
                  isPremium: true),

            .make("Catfolk",
                  size: "Medium",
                  speed: "30 ft.",
                  abilityModifiers: "+2 Dexterity, +2 Charisma, -2 Wisdom",
                  racialTraits: [
                      "Low-Light Vision: Catfolk can see twice as far as humans in dim light.",
                      "Cat's Luck: Once per day when a catfolk makes a Reflex saving throw, she can roll the saving throw twice and take the better result.",
                      "Natural Hunter: Catfolk receive a +2 racial bonus on Perception, Stealth, and Survival checks.",
                      "Sprinter: Catfolk gain a 10-foot racial bonus to their speed when using the charge, run, or withdraw action.",
                      "Languages: Catfolk begin play speaking Common and Catfolk."
                  ],
                  languages: ["Common", "Catfolk"],
                  summary: "Feline humanoids with natural agility and an independent spirit.",
                  desc: """
                  Catfolk are lithe humanoids with feline features — pointed ears, slitted eyes, retractable claws, and a sinuous grace in all their movements. They are curious, independent, and at times frustratingly self-directed, but their natural athleticism and predatory instincts make them formidable allies and fearsome opponents.

                  Catfolk society values personal freedom and individual accomplishment. They have little patience for rigid hierarchies or bureaucratic convention, preferring fluid social structures that reward skill and personality. This independence drives many catfolk to adventure, where their abilities can be fully expressed.

                  Mechanically, catfolk excel at Dexterity-based combat and skills. Their Cat's Luck ability provides a powerful Reflex reroll once per day — invaluable for avoiding area effects. Natural Hunter gives them broad skill bonuses useful in wilderness and urban settings alike. Popular classes include rogue, ranger, swashbuckler, and monk.
                  """,
                  source: "Advanced Race Guide",
                  isPremium: true),

            .make("Dhampir",
                  size: "Medium",
                  speed: "30 ft.",
                  abilityModifiers: "+2 Dexterity, +2 Charisma, -2 Constitution",
                  racialTraits: [
                      "Undead Resistance: Dhampirs gain a +2 racial bonus on saving throws against disease and mind-affecting effects.",
                      "Negative Energy Affinity: Dhampirs react to positive and negative energy as if they were undead — positive energy harms them, negative energy heals them.",
                      "Resist Level Drain: Dhampirs take no penalties from energy drain, though they can still be killed by it. After 24 hours, any negative levels are removed.",
                      "Light Sensitivity: Dhampirs are dazzled in areas of bright sunlight or within the radius of a daylight spell.",
                      "Manipulative: Dhampirs gain a +2 racial bonus on Bluff and Perception checks.",
                      "Spell-Like Abilities: Dhampirs can use detect undead three times per day as a spell-like ability (caster level equals the dhampir's class level).",
                      "Languages: Dhampirs begin play speaking Common."
                  ],
                  languages: ["Common"],
                  summary: "Half-undead children of vampires, walking between life and death.",
                  desc: """
                  Dhampirs are the unnatural progeny of vampires and mortal humans, infused with the chill of undeath yet still drawing breath. They exist in a painful liminal state — feared by the living for their dark heritage and rejected by undead as pale imitations. Many dhampirs struggle with this dual nature all their lives, channeling their inner conflict into formidable purpose.

                  Their undead heritage grants them resilience against the afflictions of the grave and an intuitive sense for the undead around them. Yet negative energy heals rather than harms them, and sunlight dulls their senses. These traits make them extraordinarily effective undead hunters — perhaps because it takes one to know one.

                  Mechanically, dhampirs are premier undead hunters and subtle social operators. Their resistance to level drain is exceptional at high levels where such effects are common. Detect undead three times per day provides tactical awareness in undead-heavy campaigns. Popular classes include inquisitor, ranger (undead favored enemy), oracle, and investigator.
                  """,
                  source: "Advanced Race Guide",
                  isPremium: true),

            .make("Fetchling",
                  size: "Medium",
                  speed: "30 ft.",
                  abilityModifiers: "+2 Dexterity, -2 Wisdom, +2 Charisma",
                  racialTraits: [
                      "Darkvision: Fetchlings can see in the dark up to 60 feet.",
                      "Low-Light Vision: Fetchlings can see twice as far as humans in conditions of dim light.",
                      "Shadow Blending: Attacks against a fetchling in dim light have a 50% miss chance instead of the normal 20% miss chance. This doesn't grant total concealment.",
                      "Shadowy Resistance: Fetchlings have cold resistance 5 and electricity resistance 5.",
                      "Skilled: Fetchlings have a +2 racial bonus on Knowledge (planes) and Stealth checks.",
                      "Spell-Like Abilities: Fetchlings can use disguise self once per day as a spell-like ability. At 9th level, they can use shadow walk once per day.",
                      "Languages: Fetchlings begin play speaking Common."
                  ],
                  languages: ["Common"],
                  summary: "Humanoids drawn to shadow, descendants of those who fled to the Shadow Plane.",
                  desc: """
                  Fetchlings are the descendants of humans who long ago fled to or became trapped on the Shadow Plane. Generations of existence in that lightless realm have transformed them: their skin has turned ashen, their eyes reflect light like a cat's, and they move with an eerie, fluid silence. They are not undead, but they carry the touch of shadow in their very blood.

                  Fetchlings who find their way back to the Material Plane often struggle to reintegrate into human society. Their unsettling appearance and affinity for darkness mark them as outsiders. Many become thieves, assassins, or spies — professions that take advantage of their natural stealth and shadow-walking abilities.

                  Mechanically, fetchlings excel in dim-light environments where Shadow Blending effectively grants them significant defensive miss chance. Their resistances and spell-like abilities combine well with shadow magic traditions. Popular classes include rogue, shadowdancer (prestige class), sorcerer (Shadow bloodline), and slayer.
                  """,
                  source: "Advanced Race Guide",
                  isPremium: true),

            .make("Goblin",
                  size: "Small",
                  speed: "30 ft.",
                  abilityModifiers: "+4 Dexterity, -2 Strength, -2 Charisma",
                  racialTraits: [
                      "Darkvision: Goblins can see in the dark up to 60 feet.",
                      "Fast: Goblins have a base speed of 30 feet despite being Small.",
                      "Skilled: Goblins have a +4 racial bonus on Ride and Stealth checks.",
                      "Small: Goblins gain a +1 size bonus to their AC, a +1 size bonus on attack rolls, a –1 penalty to their CMB and CMD, and a +4 size bonus on Stealth checks.",
                      "Languages: Goblins begin play speaking Goblin. Those with high Intelligence scores can choose from Common, Draconic, Dwarf, Gnoll, Gnome, Halfling, and Orc."
                  ],
                  languages: ["Goblin"],
                  summary: "Frenetic, pyromaniacal scavengers driven by impulse and hunger.",
                  desc: """
                  Goblins are small, vicious humanoids who combine alarming Dexterity with an almost complete absence of wisdom or restraint. They are drawn irresistibly to fire, shiny objects, horses (which they hate), and dogs (which hate them). Goblin society is chaotic and often self-destructive, organized into loose tribes dominated by the strongest and most cunning individuals.

                  A goblin adventurer is a strange creature indeed — one who has either been exiled from their tribe or who has seen enough of the wider world to develop a modicum of self-preservation. Despite their reputation, goblins who apply their manic energy constructively can be remarkably capable rogues, alchemists, and martial characters.

                  Mechanically, goblins have a remarkable +4 to Dexterity — the highest raw ability bonus among common races. Combined with Small size bonuses to attack and AC, they are exceptional at hit-and-run combat and skill-based play. Their Fast trait means they don't suffer the typical Small-race speed penalty. Popular classes include rogue, alchemist, ranger, and slayer.
                  """,
                  source: "Advanced Race Guide",
                  isPremium: true),

            .make("Hobgoblin",
                  size: "Medium",
                  speed: "30 ft.",
                  abilityModifiers: "+2 Dexterity, +2 Constitution",
                  racialTraits: [
                      "Darkvision: Hobgoblins can see in the dark up to 60 feet.",
                      "Sneaky: Hobgoblins receive a +4 racial bonus on Stealth checks.",
                      "Battle-Hardened: Hobgoblins gain a +1 racial bonus to their CMD.",
                      "Languages: Hobgoblins begin play speaking Common and Goblin. Those with high Intelligence scores can choose from Draconic, Dwarven, Infernal, Giant, and Orc."
                  ],
                  languages: ["Common", "Goblin"],
                  summary: "Disciplined and militaristic goblinoids who value strength through order.",
                  desc: """
                  Where goblins are chaotic and impulsive, hobgoblins are their opposite: disciplined, organized, and militaristic. They build armies, construct fortifications, and wage war with cold efficiency. Hobgoblin society values martial excellence and ranks are earned through victory in battle. Weak or cowardly hobgoblins are eliminated or enslaved.

                  Hobgoblin adventurers are often warriors who have either been outcast for failure or who seek greater glory than their tribe can provide. They bring a soldier's discipline to adventuring companies and are often natural tacticians and commanders.

                  Mechanically, hobgoblins are excellent martial characters. Their dual ability bonuses (Dexterity and Constitution) are among the most broadly useful in the game — good for any class that fights. Sneaky gives them significant Stealth capability unusual for a Medium-sized race. Battle-Hardened's CMD bonus protects against combat maneuvers. Popular classes include fighter, slayer, ranger, and cavalier.
                  """,
                  source: "Advanced Race Guide",
                  isPremium: true),

            .make("Ifrit",
                  size: "Medium",
                  speed: "30 ft.",
                  abilityModifiers: "+2 Dexterity, +2 Charisma, -2 Wisdom",
                  racialTraits: [
                      "Darkvision: Ifrits can see in the dark up to 60 feet.",
                      "Fire Resistance: Ifrits have fire resistance 5.",
                      "Spell-Like Ability: Ifrits can use burning hands once per day as a spell-like ability (caster level equals the ifrit's class level).",
                      "Energy Resistance: Ifrits have fire resistance 5.",
                      "Skilled: Ifrits have a +2 racial bonus on Bluff and Diplomacy checks when dealing with fire creatures.",
                      "Languages: Ifrits begin play speaking Common and Ignan."
                  ],
                  languages: ["Common", "Ignan"],
                  summary: "Fiery-blooded descendants of efreet, passionate and headstrong.",
                  desc: """
                  Ifrits are the mortal descendants of efreet — the fiery, arrogant genies of the Plane of Fire. Their blood runs hot in more than the metaphorical sense: ifrits are short-tempered, passionate, and prone to dramatic emotional expression. They thrive on conflict and challenge, drawn to situations that would overwhelm lesser beings.

                  Ifrit skin tones run toward copper, bronze, and deep amber, and many display subtle signs of their heritage — eyes like glowing embers, hair that smolders at the tips, or a faint warmth that never fully dissipates. In combat, their fire resistance and burning hands ability give them both offense and defense against elemental threats.

                  Mechanically, ifrits are well-suited to arcane spellcasting, particularly fire-themed sorcerers and wizards. Their Dexterity and Charisma bonuses benefit bards and sorcerers particularly well. Burning hands provides reliable early-level AoE damage. Popular classes include sorcerer (Djinn or Efreet bloodline), magus, bard, and oracle.
                  """,
                  source: "Advanced Race Guide",
                  isPremium: true),

            .make("Tiefling",
                  size: "Medium",
                  speed: "30 ft.",
                  abilityModifiers: "+2 Dexterity, +2 Intelligence, -2 Charisma",
                  racialTraits: [
                      "Darkvision: Tieflings can see in the dark up to 60 feet.",
                      "Skilled: Tieflings have a +2 racial bonus on Bluff and Stealth checks.",
                      "Spell-Like Ability: Tieflings can use darkness once per day as a spell-like ability (caster level equals the tiefling's class level).",
                      "Fiendish Resistance: Tieflings have cold resistance 5, electricity resistance 5, and fire resistance 5.",
                      "Fiendish Sorcery: Tiefling sorcerers with the Abyssal or Infernal bloodline treat their Charisma score as 2 points higher for all sorcerer class abilities.",
                      "Languages: Tieflings begin play speaking Common and either Abyssal or Infernal."
                  ],
                  languages: ["Common", "Abyssal"],
                  summary: "Marked by fiendish heritage, tieflings struggle against their dark nature.",
                  desc: """
                  Tieflings are mortals tainted by fiendish blood — descendants of humans who made dark pacts with devils or demons, or whose ancestors were corrupted by proximity to the Lower Planes. They are born with physical markers of this heritage: horns, tails, hooves, glowing eyes, or skin tinged red, blue, or black. Society fears and mistrusts them, and many tieflings are forced to conceal their nature or live on the margins.

                  The tiefling's struggle is fundamentally one of identity: are they defined by their dark blood, or by the choices they make? Many tieflings become paladins or clerics specifically to prove that heritage does not determine destiny. Others embrace the darkness and become exactly what the world fears.

                  Mechanically, tieflings are exceptional arcane spellcasters, particularly wizards and magi. Their Intelligence and Dexterity bonuses are excellent for these classes. Triple elemental resistance (cold, electricity, fire) provides remarkable durability against common damage types. Darkness as a spell-like ability is tactically powerful in the right situations. Popular classes include wizard, magus, rogue, and antipaladin.
                  """,
                  source: "Advanced Race Guide",
                  isPremium: true)
        ]

        for race in races {
            try await db.insertRace(race)
        }
    }

    // MARK: - ARG Race Traits

    private func seedARGTraits() async throws {
        let traits: [TraitEntry] = [

            // MARK: - Aasimar Race Traits

            .make("Blessed Touch",
                  traitType: "Race",
                  prerequisites: "Aasimar",
                  benefit: "You heal 1 additional hit point whenever you use lay on hands or cast a cure spell.",
                  summary: "Heal 1 extra HP when using lay on hands or cure spells.",
                  desc: "Your celestial blood flows toward the injured and suffering, granting your healing touch an extra measure of divine potency.",
                  source: "Advanced Race Guide",
                  isPremium: true),

            .make("Heavenly Radiance",
                  traitType: "Race",
                  prerequisites: "Aasimar",
                  benefit: "You gain one additional spell-like ability from the heavenly radiance list, usable once per day at a caster level equal to your character level.",
                  summary: "Gain one spell-like ability from the heavenly radiance list 1/day.",
                  desc: "The light of the heavens flows through you in ways beyond the standard gifts of your kind, granting you an additional expression of celestial power.",
                  source: "Advanced Race Guide",
                  isPremium: true),

            // MARK: - Catfolk Race Traits

            .make("Cat's Claws",
                  traitType: "Race",
                  prerequisites: "Catfolk",
                  benefit: "You gain two claw attacks (1d4 damage each) as primary natural attacks.",
                  summary: "Gain 2 claw attacks (1d4 each) as primary natural attacks.",
                  desc: "Your feline heritage has sharpened your natural weapons, granting you retractable claws capable of rending flesh.",
                  source: "Advanced Race Guide",
                  isPremium: true),

            .make("Nimble Faller",
                  traitType: "Race",
                  prerequisites: "Catfolk",
                  benefit: "You always land on your feet when you fall, and you are never knocked prone from being tripped or bull rushed.",
                  summary: "Always land on feet after falling; never knocked prone from trip or bull rush.",
                  desc: "Your catlike reflexes allow you to twist in midair and absorb impacts that would flatten others.",
                  source: "Advanced Race Guide",
                  isPremium: true),

            // MARK: - Dhampir Race Traits

            .make("Dayborn",
                  traitType: "Race",
                  prerequisites: "Dhampir",
                  benefit: "You lose your light sensitivity and gain a +1 racial bonus on saving throws against undead abilities.",
                  summary: "Lose light sensitivity; gain +1 vs. undead abilities.",
                  desc: "Born at dawn rather than in darkness, you carry a fragment of light within your undead heritage that shields you from the sun's harshness.",
                  source: "Advanced Race Guide",
                  isPremium: true),

            .make("Fangs",
                  traitType: "Race",
                  prerequisites: "Dhampir",
                  benefit: "You gain a bite attack (1d4 damage) that also allows you to drain 1 point of Constitution per day from a living creature you bite.",
                  summary: "Gain bite attack (1d4) that can drain 1 Con/day from a living target.",
                  desc: "Your vampire heritage has manifested in a set of functional fangs capable of drawing blood and sapping vitality.",
                  source: "Advanced Race Guide",
                  isPremium: true),

            // MARK: - Fetchling Race Trait

            .make("Gloom Shimmer",
                  traitType: "Race",
                  prerequisites: "Fetchling",
                  benefit: "Once per day as a move action, you can teleport up to 10 feet to an unoccupied space you can see, provided both spaces are in dim light or darkness.",
                  summary: "Teleport 10 ft. through shadows as move action 1/day.",
                  desc: "You can partially slip through the Shadow Plane to reappear nearby, as long as darkness offers cover for the passage.",
                  source: "Advanced Race Guide",
                  isPremium: true),

            // MARK: - Goblin Race Trait

            .make("Flame Heart",
                  traitType: "Race",
                  prerequisites: "Goblin",
                  benefit: "You gain a +2 racial bonus on saving throws against fire effects, and your fire spells deal +1 additional damage per die.",
                  summary: "+2 saves vs. fire; fire spells deal +1 damage per die.",
                  desc: "Your obsession with fire has given you a supernatural connection to it — you resist its bite and it burns hotter at your command.",
                  source: "Advanced Race Guide",
                  isPremium: true),

            // MARK: - Hobgoblin Race Trait

            .make("Tactical Adaptation",
                  traitType: "Race",
                  prerequisites: "Hobgoblin",
                  benefit: "You gain one teamwork feat of your choice as a bonus feat.",
                  summary: "Gain one teamwork feat as a bonus feat.",
                  desc: "Raised in a militaristic culture that prizes coordinated action, you have internalized the art of fighting in formation with allies.",
                  source: "Advanced Race Guide",
                  isPremium: true),

            // MARK: - Ifrit Race Trait

            .make("Fire Insight",
                  traitType: "Race",
                  prerequisites: "Ifrit",
                  benefit: "Increase the DC of your fire spells by 1, and gain a +2 bonus on Spellcraft checks to identify fire spells and effects.",
                  summary: "+1 DC on fire spells; +2 Spellcraft to identify fire spells.",
                  desc: "Your efreeti blood grants you an intuitive mastery of fire magic, making your flames more potent and easier to read in others.",
                  source: "Advanced Race Guide",
                  isPremium: true),

            // MARK: - Tiefling Race Traits

            .make("Fiendish Darkness",
                  traitType: "Race",
                  prerequisites: "Tiefling",
                  benefit: "You can use your darkness spell-like ability 2 times per day instead of once per day.",
                  summary: "Darkness spell-like ability usable 2/day instead of 1/day.",
                  desc: "The darkness that flows in your blood is unusually potent, granting you greater command over shadow than most of your kind.",
                  source: "Advanced Race Guide",
                  isPremium: true),

            .make("Maw or Claw",
                  traitType: "Race",
                  prerequisites: "Tiefling",
                  benefit: "You gain either a bite attack (1d6 damage) or two claw attacks (1d4 damage each) as primary natural attacks.",
                  summary: "Gain bite (1d6) or 2 claws (1d4 each) as primary natural attacks.",
                  desc: "Your fiendish heritage has expressed itself physically in natural weapons drawn from the dark bestiary of your ancestry.",
                  source: "Advanced Race Guide",
                  isPremium: true),

            // MARK: - General Race Traits

            .make("Racial Heritage",
                  traitType: "Race",
                  prerequisites: "Human",
                  benefit: "Choose one humanoid race. You count as both human and that race for the purpose of taking feats, traits, and meeting prerequisites.",
                  summary: "Count as both human and one chosen race for feat and trait purposes.",
                  desc: "Somewhere in your ancestry, the blood of another race flows — thin but real. You can tap into racial abilities and traditions from that bloodline.",
                  source: "Advanced Race Guide",
                  isPremium: true),

            .make("Racial Paragon",
                  traitType: "Race",
                  prerequisites: "",
                  benefit: "Choose one ability score associated with your race's ability modifiers. You gain a +2 trait bonus to that ability score.",
                  summary: "+2 to one ability score associated with your race.",
                  desc: "You are a shining example of your race's greatest qualities, exhibiting the physical or mental excellence your people are known for.",
                  source: "Advanced Race Guide",
                  isPremium: true),

            .make("Expanded Resistance",
                  traitType: "Race",
                  prerequisites: "",
                  benefit: "Choose one energy type (acid, cold, electricity, fire, or sonic). You gain resistance 5 to that energy type, or increase an existing resistance to that type by 5 (maximum 10).",
                  summary: "Gain resist 5 to one energy type, or increase existing resistance by 5.",
                  desc: "Your racial heritage has manifested in a particularly robust elemental resistance, whether through outsider blood, alchemical training, or elemental exposure.",
                  source: "Advanced Race Guide",
                  isPremium: true)
        ]

        for trait in traits {
            try await db.insertTrait(trait)
        }
    }
}

// MARK: - RaceEntry factory (ARG)
private extension RaceEntry {
    static func make(
        _ title: String,
        size: String,
        speed: String,
        abilityModifiers: String,
        racialTraits: [String],
        languages: [String],
        summary: String,
        desc: String,
        source: String,
        isPremium: Bool
    ) -> RaceEntry {
        RaceEntry(
            id: seededUUID(title + source),
            title: title,
            summary: summary,
            isPremium: isPremium,
            size: size,
            speed: speed,
            abilityModifiers: abilityModifiers,
            racialTraits: racialTraits,
            languages: languages,
            description: desc,
            source: source
        )
    }
}

// MARK: - TraitEntry factory (ARG)
private extension TraitEntry {
    static func make(
        _ title: String,
        traitType: String,
        prerequisites: String = "",
        benefit: String,
        summary: String,
        desc: String = "",
        source: String,
        isPremium: Bool
    ) -> TraitEntry {
        TraitEntry(
            id: seededUUID(title + source),
            title: title,
            summary: summary,
            isPremium: isPremium,
            traitType: traitType,
            prerequisites: prerequisites,
            benefit: benefit,
            description: desc.isEmpty ? benefit : desc,
            source: source
        )
    }
}
