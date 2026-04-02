import Foundation

// Pathfinder Society (Premium)
extension SeedDataBuilder {
    func seedPathfinderSociety() async throws {

        // MARK: - Society Backgrounds

        let backgrounds: [BackgroundEntry] = [

            .make("Pathfinder Hopeful",
                  abilityBoosts: "Constitution, Intelligence, or Free",
                  trainedSkills: "Society and Lore (Pathfinder Society)",
                  skillFeat: "Additional Lore",
                  summary: "You've dreamed of joining the Pathfinder Society since childhood.",
                  desc: "You've admired the Pathfinder Society since you were young and have prepared yourself for the day you could join. You've studied their history, memorized their motto, and trained your body and mind to meet their standards.",
                  source: "Pathfinder Society", isPremium: true),

            .make("Field Commissioner",
                  abilityBoosts: "Dexterity, Charisma, or Free",
                  trainedSkills: "Diplomacy and Lore (Pathfinder Society)",
                  skillFeat: "Group Impression",
                  summary: "You served as a field coordinator for Pathfinder Society operations.",
                  desc: "You spent years coordinating Pathfinder field operations, managing agents, resources, and communications between the Grand Lodge and far-flung expeditions. Your organizational skills and people management are second to none.",
                  source: "Pathfinder Society", isPremium: true),

            .make("Scrollmaster",
                  abilityBoosts: "Intelligence, Wisdom, or Free",
                  trainedSkills: "Arcana and Lore (Library)",
                  skillFeat: "Assurance (Arcana)",
                  summary: "You trained with the Scrolls, the Pathfinder Society's academic school.",
                  desc: "You studied under the Scrolls school of the Pathfinder Society, focusing on gathering knowledge, deciphering ancient texts, and cataloguing discoveries. Your academic rigor makes you invaluable on any expedition.",
                  source: "Pathfinder Society", isPremium: true),

            .make("Swordmaster",
                  abilityBoosts: "Strength, Dexterity, or Free",
                  trainedSkills: "Athletics and Lore (Warfare)",
                  skillFeat: "Quick Jump",
                  summary: "You trained with the Swords, the Pathfinder Society's martial school.",
                  desc: "You studied under the Swords school of the Pathfinder Society, focusing on martial prowess, tactical thinking, and physical endurance. You're the first through the door and the last to retreat.",
                  source: "Pathfinder Society", isPremium: true),

            .make("Spellmaster",
                  abilityBoosts: "Intelligence, Charisma, or Free",
                  trainedSkills: "Occultism and Lore (Academia)",
                  skillFeat: "Recognize Spell",
                  summary: "You trained with the Spells, the Pathfinder Society's magical school.",
                  desc: "You studied under the Spells school of the Pathfinder Society, focusing on magical theory, identifying enchantments, and neutralizing arcane threats. Your understanding of the mystical arts serves the Society well.",
                  source: "Pathfinder Society", isPremium: true),

            .make("Envoy Alliance Champion",
                  abilityBoosts: "Constitution, Charisma, or Free",
                  trainedSkills: "Diplomacy and Lore (Pathfinder Society)",
                  skillFeat: "Hobnobber",
                  summary: "You champion the Envoy's Alliance, advocating for agent welfare.",
                  desc: "You are a vocal advocate within the Envoy's Alliance, a faction of the Pathfinder Society dedicated to ensuring agents are well-equipped, fairly compensated, and properly supported. You believe the Society's greatest asset is its people.",
                  source: "Pathfinder Society", isPremium: true),

            .make("Grand Archive Scholar",
                  abilityBoosts: "Intelligence, Wisdom, or Free",
                  trainedSkills: "Religion and Lore (Archaeology)",
                  skillFeat: "Assurance (Religion)",
                  summary: "You preserve knowledge for the Grand Archive faction.",
                  desc: "As a member of the Grand Archive faction, your primary mission is preserving knowledge. Whether translating ancient tablets, cataloguing artifacts, or ensuring dangerous texts are safely stored, you protect the world's accumulated wisdom.",
                  source: "Pathfinder Society", isPremium: true),

            .make("Horizon Hunter",
                  abilityBoosts: "Dexterity, Wisdom, or Free",
                  trainedSkills: "Survival and Lore (Geography)",
                  skillFeat: "Experienced Tracker",
                  summary: "You seek new horizons as part of the Horizon Hunters faction.",
                  desc: "You belong to the Horizon Hunters, a faction driven by the thrill of exploration and discovery. You're at home in uncharted territory, always pushing toward the next unexplored ruin, undiscovered cave, or forgotten land.",
                  source: "Pathfinder Society", isPremium: true),

            .make("Vigilant Seal Guardian",
                  abilityBoosts: "Strength, Wisdom, or Free",
                  trainedSkills: "Occultism and Lore (Planar)",
                  skillFeat: "Quick Identification",
                  summary: "You guard against dangerous relics as part of the Vigilant Seal.",
                  desc: "As a member of the Vigilant Seal, you understand that not everything discovered should be used. Your mission is to identify, contain, and when necessary destroy dangerous artifacts, cursed items, and planar threats before they can cause harm.",
                  source: "Pathfinder Society", isPremium: true),

            .make("Radiant Oath Exemplar",
                  abilityBoosts: "Strength, Charisma, or Free",
                  trainedSkills: "Religion and Lore (Celestial)",
                  skillFeat: "Assurance (Religion)",
                  summary: "You uphold righteous ideals as a member of the Radiant Oath.",
                  desc: "You've sworn the Radiant Oath, pledging to use your abilities to protect the innocent, fight evil, and be a beacon of hope. You believe the Pathfinder Society's resources should be directed toward making the world a better place.",
                  source: "Pathfinder Society", isPremium: true),

            .make("Verdant Wheel Naturalist",
                  abilityBoosts: "Constitution, Wisdom, or Free",
                  trainedSkills: "Nature and Lore (Herbalism)",
                  skillFeat: "Natural Medicine",
                  summary: "You protect the natural world as part of the Verdant Wheel.",
                  desc: "As a member of the Verdant Wheel, you are dedicated to preserving the natural world. Whether protecting endangered species, restoring damaged ecosystems, or studying the relationship between civilization and nature, you are nature's advocate.",
                  source: "Pathfinder Society", isPremium: true),

            .make("Confirmed Field Agent",
                  abilityBoosts: "Dexterity, Intelligence, or Free",
                  trainedSkills: "Thievery and Lore (Pathfinder Society)",
                  skillFeat: "Pickpocket",
                  summary: "You completed the Pathfinder Society's confirmation trial.",
                  desc: "You've undergone the Pathfinder Society's confirmation process, proving your worth through a dangerous trial. The experience has left you resourceful and quick-thinking, able to adapt to unexpected challenges.",
                  source: "Pathfinder Society", isPremium: true),

            .make("Ruins Reclaimer",
                  abilityBoosts: "Strength, Intelligence, or Free",
                  trainedSkills: "Athletics and Lore (Archaeology)",
                  skillFeat: "Hefty Hauler",
                  summary: "You specialize in exploring and reclaiming ancient ruins.",
                  desc: "Dangerous ruins are your specialty. Whether clearing collapses, disarming ancient traps, or hauling priceless artifacts to safety, you combine physical capability with academic knowledge to bring the past into the present.",
                  source: "Pathfinder Society", isPremium: true),

            .make("Lodge Apprentice",
                  abilityBoosts: "Intelligence, Charisma, or Free",
                  trainedSkills: "Society and Lore (Pathfinder Society)",
                  skillFeat: "Multilingual",
                  summary: "You grew up around a Pathfinder lodge, absorbing its culture.",
                  desc: "You grew up in or around a Pathfinder lodge, surrounded by tales of adventure, shelves of ancient texts, and agents from across the world. You picked up languages, customs, and skills simply by being in the right place.",
                  source: "Pathfinder Society", isPremium: true),

            .make("Treasure Hunter",
                  abilityBoosts: "Dexterity, Charisma, or Free",
                  trainedSkills: "Thievery and Lore (Underworld)",
                  skillFeat: "Subtle Theft",
                  summary: "You have a knack for finding hidden treasures and secret compartments.",
                  desc: "Your keen eye for valuables and hidden compartments has served you well in the Pathfinder Society. Whether discovering a hidden cache in a dungeon or identifying a forgery in a market, your treasure-finding instincts are nearly supernatural.",
                  source: "Pathfinder Society", isPremium: true),

            .make("Diplomatic Courier",
                  abilityBoosts: "Constitution, Charisma, or Free",
                  trainedSkills: "Diplomacy and Lore (Government)",
                  skillFeat: "Group Impression",
                  summary: "You carried sensitive messages between Pathfinder lodges.",
                  desc: "You served as a courier for the Pathfinder Society, carrying sensitive documents and messages between lodges across Golarion. Speed, discretion, and the ability to talk your way out of trouble were essential to your survival.",
                  source: "Pathfinder Society", isPremium: true),
        ]

        for background in backgrounds {
            try await db.insertBackground(background)
        }

        // MARK: - Society Rules

        let rules: [RuleEntry] = [

            .init(id: seededUUID("PFSOrganizedPlayRules"), title: "Pathfinder Society: Organized Play",
                  category: "Pathfinder Society",
                  summary: "Overview of how Pathfinder Society organized play campaigns are structured.",
                  body: """
                  Pathfinder Society (PFS) is Paizo's organized play campaign. It allows players to create characters that can be played at any sanctioned event worldwide, with progress tracked between sessions.

                  Key Rules:
                  - Characters start at level 1. Advancement follows standard PF2E rules.
                  - Each adventure (scenario) is designed for a specific level range. Characters must be within the valid range to participate.
                  - At the end of each scenario, players earn Chronicle Sheets recording XP, gold, item access, and boons.
                  - Characters gain 4 XP per standard scenario. Leveling occurs at 12 XP (every 3 scenarios).
                  - Gold earned per scenario is fixed based on character level, ensuring fair wealth progression.
                  - All Pathfinder Society characters must be registered online with a unique character number.
                  """,
                  isPremium: true, source: "Pathfinder Society"),

            .init(id: seededUUID("PFSFactionSystem"), title: "Pathfinder Society: Factions",
                  category: "Pathfinder Society",
                  summary: "The major factions within the Pathfinder Society and their goals.",
                  body: """
                  The Pathfinder Society is divided into several factions, each with different goals and philosophies:

                  Envoy's Alliance: Focuses on agent welfare, training, and support. Members advocate for better equipment, fair treatment, and ensuring no Pathfinder is left behind.

                  Grand Archive: Dedicated to the preservation and study of knowledge. Members focus on recovering lost texts, cataloguing discoveries, and protecting dangerous information.

                  Horizon Hunters: Driven by the thrill of exploration and discovery. Members seek out new lands, uncharted ruins, and the unknown edges of the world.

                  Vigilant Seal: Guards against dangerous relics and supernatural threats. Members work to contain or destroy cursed items, seal planar breaches, and prevent catastrophes.

                  Characters can earn Reputation with factions by completing faction-aligned objectives during scenarios. Higher Reputation unlocks special boons and rewards.
                  """,
                  isPremium: true, source: "Pathfinder Society"),

            .init(id: seededUUID("PFSCharacterCreation"), title: "Pathfinder Society: Character Creation",
                  category: "Pathfinder Society",
                  summary: "Special rules and restrictions for creating Pathfinder Society characters.",
                  body: """
                  Pathfinder Society character creation follows standard PF2E rules with these additional guidelines:

                  Allowed Sources: Only content from sanctioned Paizo publications is allowed. The current sanctioning list is maintained on paizo.com.

                  Alignment: Characters must not be evil. Most scenarios assume characters are willing to cooperate with the Society and fellow agents.

                  Ancestry and Class: All common ancestries and classes from sanctioned sources are allowed. Uncommon and rare options require special access (boons earned through play).

                  Starting Equipment: Characters begin with 15 gp worth of equipment as normal.

                  Rebuilding: Characters below level 2 can be completely rebuilt between sessions for free. This allows players to try different builds without penalty.

                  Rarity: Common items, spells, and feats are available to all characters. Uncommon options require access through a Chronicle Sheet, boon, or specific character origin.
                  """,
                  isPremium: true, source: "Pathfinder Society"),

            .init(id: seededUUID("PFSChronicleSheets"), title: "Pathfinder Society: Chronicle Sheets",
                  category: "Pathfinder Society",
                  summary: "How Chronicle Sheets track character progress, rewards, and item access.",
                  body: """
                  Chronicle Sheets are the official record of a character's participation in Pathfinder Society events.

                  Contents of a Chronicle Sheet:
                  - Scenario name and number
                  - XP earned (typically 4 XP per scenario)
                  - Gold earned (based on character level and subtier)
                  - Reputation earned with factions
                  - Item access: Specific uncommon or rare items the character can now purchase
                  - Boons: Special rewards that grant unique abilities, access to rare options, or story benefits
                  - Downtime: 8 days of downtime between scenarios

                  Tracking: Players must keep their Chronicle Sheets organized and available for GM review. Digital tracking through paizo.com is the standard method.

                  Replaying: Characters cannot replay the same scenario for credit, though players can replay scenarios with different characters. Some scenarios are marked as replayable.
                  """,
                  isPremium: true, source: "Pathfinder Society"),

            .init(id: seededUUID("PFSSchools"), title: "Pathfinder Society: Training Schools",
                  category: "Pathfinder Society",
                  summary: "The three training schools of the Pathfinder Society: Scrolls, Swords, and Spells.",
                  body: """
                  The Pathfinder Society trains its agents through three primary schools, each emphasizing different skills:

                  The Scrolls: The academic branch of the Society. Scroll-trained agents focus on knowledge gathering, research, puzzle-solving, and documentation. They are often the ones who identify artifacts, translate ancient texts, and plan expeditions. Key skills: Arcana, Nature, Occultism, Religion, Society, and Lore.

                  The Swords: The martial branch. Sword-trained agents are the Society's frontline, handling physical threats, navigating dangerous terrain, and protecting their allies. They excel in combat, athletics, and tactical operations. Key skills: Athletics, Acrobatics, Stealth, and Intimidation.

                  The Spells: The magical branch. Spell-trained agents specialize in magical theory, identifying enchantments, and using magic to solve problems. They counter magical threats and provide arcane or divine support. Key skills: Arcana, Occultism, Religion, and any spellcasting tradition.

                  While agents choose a primary school, they are encouraged to develop broad competencies. The best Pathfinders combine skills from all three schools.
                  """,
                  isPremium: true, source: "Pathfinder Society"),

            .init(id: seededUUID("PFSDowntimeRules"), title: "Pathfinder Society: Downtime",
                  category: "Pathfinder Society",
                  summary: "How downtime works between Pathfinder Society scenarios.",
                  body: """
                  Between each Pathfinder Society scenario, characters receive 8 days of downtime, which can be used for various activities:

                  Earn Income: Use a trained skill (Crafting, Lore, Performance) to earn gold. The task level is determined by your character level.

                  Craft: Create items if you have the Crafting skill and appropriate formulas. You must spend 4 days of setup, then additional days reduce the remaining cost.

                  Retrain: Spend downtime to retrain a feat, skill, or class feature. Typically requires 1 week (using all 8 days plus extra from future scenarios if needed).

                  Learn a Spell: Spend time and money to add spells to your repertoire or spellbook.

                  Special Downtime: Some Chronicle Sheets grant special downtime activities or reduce the time needed for certain tasks.

                  Note: Unused downtime does not accumulate between scenarios. If you don't use it, it is lost.
                  """,
                  isPremium: true, source: "Pathfinder Society"),
        ]

        for rule in rules {
            try await db.insertRule(rule)
        }
    }
}
