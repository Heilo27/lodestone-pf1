import Foundation

extension SeedDataBuilder {
    func seedRaces() async throws {
        let races: [RaceEntry] = [

            // MARK: - Core Rulebook Races

            .make("Human",
                  size: "Medium",
                  speed: "30 ft.",
                  abilityModifiers: "+2 to one ability score of your choice",
                  racialTraits: [
                      "Bonus Feat: Humans select one extra feat at 1st level.",
                      "Skilled: Humans gain 1 additional skill rank at each level.",
                      "Languages: Humans begin play speaking Common and one bonus language of their choice.",
                      "Bonus Language: Humans can learn any language (except secret languages like Druidic)."
                  ],
                  languages: ["Common"],
                  summary: "Versatile and ambitious, humans excel through determination and adaptability.",
                  desc: """
                  Humans are the most adaptable, flexible, and ambitious people among the common races. Whatever their goals, humans work hard to attain them, and their potential seems to have no bounds. Human culture is incredibly diverse, ranging from nomadic tribes on the open plains to sophisticated city-states with advanced magical traditions.

                  Humans are the most common race in most campaign settings and are the standard by which other races are often measured. Their racial traits are simple: a bonus ability score of their choice, an extra feat at first level, and a bonus skill rank at every level. These traits combine to make humans incredibly flexible — they can succeed in any class and fill any role.

                  The bonus feat and extra skill rank mean that by level 20, a human has 20 more skill ranks than a comparable non-human character and has taken one additional feat. In terms of overall character build optimization, humans are among the strongest choices for almost any class.
                  """,
                  source: "Core Rulebook"),

            .make("Dwarf",
                  size: "Medium",
                  speed: "20 ft.",
                  abilityModifiers: "+2 Constitution, +2 Wisdom, -2 Charisma",
                  racialTraits: [
                      "Darkvision: Dwarves can see in the dark up to 60 feet.",
                      "Defensive Training: Dwarves gain a +4 dodge bonus to AC against monsters of the giant subtype.",
                      "Greed: Dwarves gain a +2 racial bonus on Appraise checks made to determine the price of nonmagical goods that contain precious metals or gemstones.",
                      "Hatred: Dwarves gain a +1 racial bonus on attack rolls against humanoid creatures of the orc and goblinoid subtypes.",
                      "Hardy: Dwarves gain a +2 racial bonus on saving throws against poison, spells, and spell-like abilities.",
                      "Slow and Steady: Dwarves have a base speed of 20 feet, but their speed is never modified by armor or encumbrance.",
                      "Stability: Dwarves gain a +4 racial bonus to their CMD when resisting bull rush or trip attempts.",
                      "Stonecunning: Dwarves gain a +2 bonus on Perception checks to notice unusual stonework. They can check automatically when within 10 feet.",
                      "Weapon Familiarity: Dwarves are proficient with battleaxes, heavy picks, and warhammers, and treat any weapon with 'dwarven' in its name as a martial weapon."
                  ],
                  languages: ["Common", "Dwarven"],
                  summary: "Stout and resilient, dwarves are master craftsmen with deep ties to stone and clan.",
                  desc: """
                  Dwarves are a stoic but stern race, ensconced in cities carved from the hearts of mountains and fiercely devoted to clan and tradition. Hardened by life in the unforgiving underground, they are a people of action and practicality. The individual dwarf is solid and strong, resistant to magic and poison, and deeply stubborn in their ways.

                  Dwarves are known throughout the world for their craftsmanship — both in weapons and armor and in architecture and stonework. They have an intuitive understanding of stone and underground environments that goes beyond simple training. Their darkvision allows them to operate effectively in the darkness of underground tunnels.

                  Mechanically, dwarves are exceptional at tanking and survivability. Their Constitution bonus makes them harder to kill; their Wisdom bonus makes them better clerics. Their Hardy and Stability traits make them difficult to disable in combat. Their 20-foot movement speed (not slowed by armor) makes them ideal heavy armor wearers, as they suffer less penalty relative to faster races.
                  """,
                  source: "Core Rulebook"),

            .make("Elf",
                  size: "Medium",
                  speed: "30 ft.",
                  abilityModifiers: "+2 Dexterity, +2 Intelligence, -2 Constitution",
                  racialTraits: [
                      "Elven Immunities: Elves are immune to magic sleep effects and gain a +2 racial bonus on saving throws against enchantment spells and effects.",
                      "Elven Magic: Elves receive a +2 racial bonus on caster level checks made to overcome spell resistance. They also receive a +2 racial bonus on Spellcraft checks made to identify the properties of magic items.",
                      "Keen Senses: Elves receive a +2 racial bonus on Perception checks.",
                      "Low-Light Vision: Elves can see twice as far as humans in dim light.",
                      "Weapon Familiarity: Elves are proficient with longbows (including composite longbows), longswords, rapiers, and shortbows (including composite shortbows), and treat any weapon with 'elven' in its name as a martial weapon.",
                      "Languages: Elves begin play speaking Common and Elven. Elves with high Intelligence scores can choose from Celestial, Draconic, Gnoll, Gnome, Goblin, Orc, and Sylvan."
                  ],
                  languages: ["Common", "Elven"],
                  summary: "Long-lived and graceful, elves excel at magic and precision.",
                  desc: """
                  The long-lived elves are children of the natural world, similar in many superficial ways to fey creatures. They are graceful but frail, inquisitive and ever-vigilant, with an innate connection to magic that makes them exceptional spellcasters. Elves have an almost preternatural understanding of arcane magic, absorbed through long centuries of observation and study.

                  Elves live for centuries, and their long lives give them a unique perspective on the world. They can afford to take the long view on events, and their society reflects this leisurely approach to time. Elven craftsmanship, music, art, and magic are unsurpassed in their elegance, though elves can sometimes seem aloof or distant to shorter-lived races.

                  Mechanically, elves are prime arcane spellcasters. Their Intelligence bonus makes them better wizards; their Dexterity bonus helps with AC and initiative. Elven Immunities protect against some of the most dangerous enchantment spells in the game. Their Constitution penalty makes them fragile, which is the main trade-off. Elves are excellent choices for wizards, magus, and ranger.
                  """,
                  source: "Core Rulebook"),

            .make("Gnome",
                  size: "Small",
                  speed: "20 ft.",
                  abilityModifiers: "+2 Constitution, +2 Charisma, -2 Strength",
                  racialTraits: [
                      "Defensive Training: Gnomes gain a +4 dodge bonus to AC against monsters of the giant subtype.",
                      "Gnome Magic: Gnomes add +1 to the DC of any illusion spells they cast. Gnomes with a Charisma score of 11 or higher gain speak with animals (burrowing mammals only) once per day as a spell-like ability.",
                      "Hatred: Gnomes receive a +1 racial bonus on attack rolls against humanoid creatures of the reptilian and goblinoid subtypes.",
                      "Illusion Resistance: Gnomes gain a +2 racial bonus on saving throws against illusion spells and effects.",
                      "Keen Senses: Gnomes receive a +2 racial bonus on Perception checks.",
                      "Low-Light Vision: Gnomes can see twice as far as humans in dim light.",
                      "Obsessive: Gnomes receive a +2 racial bonus on a Craft or Profession skill of their choice.",
                      "Small: +1 size bonus to AC and attack rolls; –1 to CMB and CMD; +4 size bonus on Stealth checks.",
                      "Weapon Familiarity: Gnomes treat any weapon with 'gnome' in its name as a martial weapon."
                  ],
                  languages: ["Common", "Gnome", "Sylvan"],
                  summary: "Small and curious, gnomes have a natural affinity for illusion magic and invention.",
                  desc: """
                  Gnomes are distant relatives of the fey, and their playful nature reflects a basic desire to experience everything. As a result, they find themselves drawn to adventure as a natural outlet for their curiosity and energy. Gnomes are inventive tinkerers, dedicated alchemists, whimsical illusionists, and sometimes just trouble-making explorers.

                  Gnomish society is built around individual expression and the pursuit of passion. Gnomes who lose their sense of wonder and curiosity fall victim to the Bleaching — a gnome-specific affliction that drains the color from their hair, skin, and eyes as they lose their connection to the world and their own inner spark. Gnomes therefore approach life with a deep passion for new experiences.

                  Mechanically, gnomes make excellent illusionists thanks to their Gnome Magic trait and Illusion Resistance. They are also popular choices for alchemists (Constitution bonus, Gnome Magic, obsessive trait), bards, and oracles. Their Small size gives them defensive and Stealth benefits but reduces their physical damage and CMB.
                  """,
                  source: "Core Rulebook"),

            .make("Half-Elf",
                  size: "Medium",
                  speed: "30 ft.",
                  abilityModifiers: "+2 to one ability score of your choice",
                  racialTraits: [
                      "Adaptability: Half-elves receive Skill Focus as a bonus feat at 1st level.",
                      "Elven Immunities: Half-elves are immune to magic sleep effects and gain a +2 racial bonus on saving throws against enchantment spells and effects.",
                      "Keen Senses: Half-elves receive a +2 racial bonus on Perception checks.",
                      "Low-Light Vision: Half-elves can see twice as far as humans in dim light.",
                      "Multitalented: Half-elves choose two favored classes at 1st level and gain +1 hit point or +1 skill point whenever they take a level in either of those classes.",
                      "Elf Blood: Half-elves count as both elves and humans for any effect related to race."
                  ],
                  languages: ["Common", "Elven"],
                  summary: "Children of both worlds, half-elves combine human adaptability with elven grace.",
                  desc: """
                  Caught between the worlds of their progenitor races, half-elves are a race of both grace and grief. Their dual nature makes them difficult to categorize and often difficult to fit in with either parent culture. Despite this — or perhaps because of it — half-elves are among the most versatile and capable of the core races.

                  The life of a half-elf is one of constant negotiation. They can move between human and elven societies with relatively little friction, but they are fully welcomed by neither. This outsider status often drives half-elves to take up adventuring, where their unique combination of traits makes them valuable companions regardless of background.

                  Mechanically, half-elves are extremely flexible. They receive a free ability bonus like humans, gain a bonus Skill Focus feat, two favored classes, and the protective elven immunities. They lack the sharp specialization of either parent race, but their multitalented trait can allow them to excel at multiclassed builds. Popular classes for half-elves include bard, ranger, paladin, and sorcerer.
                  """,
                  source: "Core Rulebook"),

            .make("Half-Orc",
                  size: "Medium",
                  speed: "30 ft.",
                  abilityModifiers: "+2 to one ability score of your choice",
                  racialTraits: [
                      "Darkvision: Half-orcs can see in the dark up to 60 feet.",
                      "Intimidating: Half-orcs receive a +2 racial bonus on Intimidate skill checks due to their fearsome nature.",
                      "Orc Blood: Half-orcs count as both humans and orcs for any effect related to race.",
                      "Orc Ferocity: Once per day, when a half-orc is brought below 0 hit points but not killed, they can fight on for 1 more round as if disabled. At the end of their next turn, they lose consciousness unless brought above 0 hp.",
                      "Weapon Familiarity: Half-orcs are proficient with greataxes and falchions, and treat any weapon with 'orc' in its name as a martial weapon.",
                      "Sacred Tattoo (optional): Many half-orcs decorate themselves with tattoos that grant a +1 luck bonus on all saving throws."
                  ],
                  languages: ["Common", "Orc"],
                  summary: "Fierce and resilient, half-orcs survive on strength and tenacity.",
                  desc: """
                  Half-orcs are monstrosities, their tragic births the result of violence and horror. That they rise above this is a testament to their fierce will. Most half-orcs are ill-favored and mistrusted wherever they go, which forces them to prove themselves through action rather than words. Many become adventurers simply because the adventuring life is one of the few where raw power and determination can earn genuine respect.

                  Half-orcs combine the hardiness of their orcish heritage with the flexibility of human blood. Orc Ferocity allows them to fight on past the brink of death, which can be the difference between victory and defeat. Intimidating means they are naturally frightening, a trait that can be leveraged through the Intimidate skill in various creative ways.

                  Mechanically, half-orcs mirror humans in their ability score flexibility and are popular choices for classes that want Intimidate as a class skill combined with high Strength. They excel as barbarians, fighters, rangers, and bloodragers. Their Orc Ferocity trait makes them particularly difficult to finish in a fight, and various alternate racial traits can customize them for specific roles.
                  """,
                  source: "Core Rulebook"),

            .make("Halfling",
                  size: "Small",
                  speed: "20 ft.",
                  abilityModifiers: "+2 Dexterity, +2 Charisma, -2 Strength",
                  racialTraits: [
                      "Fearless: Halflings receive a +2 racial bonus on all saving throws against fear. This bonus stacks with the bonus granted by the halfling's Fortunate trait.",
                      "Halfling Luck: Halflings receive a +1 racial bonus on all saving throws.",
                      "Keen Senses: Halflings receive a +2 racial bonus on Perception checks.",
                      "Sure-Footed: Halflings receive a +2 racial bonus on Acrobatics and Climb checks.",
                      "Weapon Familiarity: Halflings are proficient with slings and treat any weapon with 'halfling' in its name as a martial weapon.",
                      "Small: +1 size bonus to AC and attack rolls; –1 to CMB and CMD; +4 size bonus on Stealth checks.",
                      "Slow Speed: Halflings have a base speed of 20 feet."
                  ],
                  languages: ["Common", "Halfling"],
                  summary: "Small and lucky, halflings are nimble survivors with an irrepressible spirit.",
                  desc: """
                  Halflings rise to a humble three feet tall, yet they have proven themselves to be one of the most capable and adaptable of the common races. Their small size belies their formidable nature, and halflings are often underestimated by those who don't know them well. A halfling's smile rarely hides a calculating mind and iron nerve.

                  Halflings are commonly found in human communities, where they blend in reasonably well given their need for stability and comfort. Yet they are also travelers and wanderers by nature, and many halflings take to the adventuring life with enthusiasm. Their lucky nature (reflected in their +1 to all saves) and fearlessness make them surprisingly durable despite their small size.

                  Mechanically, halflings are excellent rogues and bards. Their Dexterity and Charisma bonuses support both classes well. The +1 to all saves (stacking with their +2 vs. fear) makes halflings remarkably resilient. Their Small size gives them Stealth and AC bonuses. Their Strength penalty is the main drawback, limiting their carrying capacity and melee damage. Popular builds include rogue, swashbuckler, oracle, and bard.
                  """,
                  source: "Core Rulebook")
        ]

        for race in races {
            try await db.insertRace(race)
        }
    }
}

// MARK: - RaceEntry factory
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
        source: String = "Core Rulebook",
        isPremium: Bool = false
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
