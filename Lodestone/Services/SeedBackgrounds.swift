import Foundation

extension SeedDataBuilder {
    func seedBackgrounds() async throws {
        let backgrounds: [BackgroundEntry] = [

            .make("Acolyte",
                  abilityBoosts: "Intelligence, Wisdom, or Free",
                  trainedSkills: "Religion and Lore (Scribing)",
                  skillFeat: "Student of the Canon",
                  summary: "You spent your early years in a religious institution.",
                  desc: "You spent your early years studying religion and helping with religious rites, becoming familiar with theology, holy rites, and the history of your faith. You may be a devout follower of a specific deity or you may have studied many gods and religions.",
                  isPremium: false),

            .make("Acrobat",
                  abilityBoosts: "Strength, Dexterity, or Free",
                  trainedSkills: "Acrobatics and Lore (Circus)",
                  skillFeat: "Steady Balance",
                  summary: "You trained as an acrobat and performer.",
                  desc: "You worked as an acrobat, perhaps in a circus, at a fair, or even on the stage. You've developed a natural balance and an eye for entertainment.",
                  isPremium: false),

            .make("Animal Whisperer",
                  abilityBoosts: "Wisdom, Charisma, or Free",
                  trainedSkills: "Nature and Lore (Plains)",
                  skillFeat: "Train Animal",
                  summary: "You have a way with animals.",
                  desc: "You grew up working with and around animals. Whether on a farm, in the wild, or as a stablehand, you developed an innate ability to calm and train animals.",
                  isPremium: false),

            .make("Artisan",
                  abilityBoosts: "Strength, Intelligence, or Free",
                  trainedSkills: "Crafting and Lore (Guild)",
                  skillFeat: "Specialty Crafting",
                  summary: "You learned your trade as an apprentice to a skilled artisan.",
                  desc: "You spent years as an apprentice to an experienced craftsperson, learning the skills needed to produce quality goods. You may have worked with metal, cloth, wood, stone, or any number of other materials.",
                  isPremium: false),

            .make("Criminal",
                  abilityBoosts: "Dexterity, Intelligence, or Free",
                  trainedSkills: "Stealth and Lore (Underworld)",
                  skillFeat: "Experienced Smuggler",
                  summary: "As an underworld denizen, you learned to get in and out of trouble.",
                  desc: "You survived in the criminal underworld, whether as a thief, a fence, an assassin, or simply a lackey. You know how to move quietly, avoid notice, and get access to hard-to-find goods.",
                  isPremium: false),

            .make("Detective",
                  abilityBoosts: "Intelligence, Wisdom, or Free",
                  trainedSkills: "Society and Lore (Legal)",
                  skillFeat: "Experienced Tracker",
                  summary: "You solved crimes and investigated mysterious events.",
                  desc: "Whether you worked for the city guard, a noble family, or as a freelance investigator, you spent years honing your skills at finding clues, identifying suspects, and piecing together the truth.",
                  isPremium: false),

            .make("Entertainer",
                  abilityBoosts: "Dexterity, Charisma, or Free",
                  trainedSkills: "Performance and Lore (Theater)",
                  skillFeat: "Fascinating Performance",
                  summary: "You've always had a way with an audience.",
                  desc: "Performing comes naturally to you. Whether you sang, danced, played an instrument, acted, or juggled, crowds gathered to see your talents. You may have performed on the street, in a tavern, or before royalty.",
                  isPremium: false),

            .make("Farmhand",
                  abilityBoosts: "Constitution, Wisdom, or Free",
                  trainedSkills: "Athletics and Lore (Farming)",
                  skillFeat: "Assurance (Athletics)",
                  summary: "You grew up working the land.",
                  desc: "Your childhood was spent laboring on a farm or ranch. Hard work gave you strong muscles and a sturdy constitution. You know how to grow crops, care for animals, and read the signs of the weather.",
                  isPremium: false),

            .make("Herbalist",
                  abilityBoosts: "Constitution, Wisdom, or Free",
                  trainedSkills: "Nature and Lore (Herbalism)",
                  skillFeat: "Natural Medicine",
                  summary: "You have extensive knowledge of plants and their properties.",
                  desc: "You spent your formative years among the wild plants of the countryside, learning how to identify and harvest medicinal herbs. You can use your knowledge of plants to heal the sick and injured.",
                  isPremium: false),

            .make("Hunter",
                  abilityBoosts: "Dexterity, Wisdom, or Free",
                  trainedSkills: "Survival and Lore (Hunting)",
                  skillFeat: "Experienced Tracker",
                  summary: "You guided hunting expeditions or track prey as a trapper.",
                  desc: "You spent time hunting or trapping in the wilderness, learning to follow tracks, set snares, and survive off the land. Your keen eye and steady hand come from years of patient observation.",
                  isPremium: false),

            .make("Merchant",
                  abilityBoosts: "Intelligence, Charisma, or Free",
                  trainedSkills: "Diplomacy and Lore (Mercantile)",
                  skillFeat: "Bargain Hunter",
                  summary: "You worked as a trader or merchant.",
                  desc: "You spent years learning the fine art of trade, whether as a traveling merchant, a shop owner, or a trade representative. You know how to negotiate, identify quality goods, and find buyers for almost anything.",
                  isPremium: false),

            .make("Noble",
                  abilityBoosts: "Intelligence, Charisma, or Free",
                  trainedSkills: "Society and Lore (Genealogy)",
                  skillFeat: "Courtly Graces",
                  summary: "You were born to a life of privilege.",
                  desc: "You were raised in a noble household, taught the ways of court etiquette and the responsibilities of the ruling class. Though your background of privilege may have made you somewhat out of touch with common folk, it also gave you connections and resources others lack.",
                  isPremium: false),

            .make("Scholar",
                  abilityBoosts: "Intelligence, Wisdom, or Free",
                  trainedSkills: "Arcana, Nature, Occultism, or Religion, plus Lore (Academia)",
                  skillFeat: "Assurance (chosen skill)",
                  summary: "You dedicated yourself to scholarly pursuits.",
                  desc: "You spent your early years in an academy, library, or university, studying whatever subjects piqued your curiosity. Your love of learning and disciplined study make you an invaluable resource of knowledge in almost any field.",
                  isPremium: false),

            .make("Street Urchin",
                  abilityBoosts: "Dexterity, Constitution, or Free",
                  trainedSkills: "Thievery and Lore (City)",
                  skillFeat: "Pickpocket",
                  summary: "You grew up on the mean streets of a city.",
                  desc: "Survival on the streets forced you to learn quickly. You begged, stole, and scrounged your way through life, learning every shortcut and escape route in your home city while dodging the city guard.",
                  isPremium: false),
        ]

        for background in backgrounds {
            try await db.insertBackground(background)
        }
    }
}
