import Foundation

extension SeedDataBuilder {
    func seedAncestries() async throws {
        let ancestries: [AncestryEntry] = [

            .make("Dwarf", hp: 10, size: "Medium", speed: 20,
                  abilityBoosts: "Constitution, Wisdom, Free",
                  abilityFlaws: "Charisma",
                  vision: "Darkvision",
                  languages: ["Common", "Dwarven"],
                  traits: "Dwarf, Humanoid",
                  features: ["Darkvision", "Clan Dagger"],
                  summary: "Dwarves are a short, stocky people who are often stubborn, fierce, and devoted.",
                  desc: "Dwarves have a well-earned reputation as a stoic and stern people, known for their distinctive ancient culture. Their tenacity and incredible work ethic have built many marvels of the world. Dwarves take pride in their craftsmanship, their heritage, and their clans.",
                  isPremium: false),

            .make("Elf", hp: 6, size: "Medium", speed: 30,
                  abilityBoosts: "Dexterity, Intelligence, Free",
                  abilityFlaws: "Constitution",
                  vision: "Low-Light Vision",
                  languages: ["Common", "Elven"],
                  traits: "Elf, Humanoid",
                  features: ["Low-Light Vision", "Elven Lore", "Elven Weapon Familiarity"],
                  summary: "A tall, slender people with pointed ears and an otherworldly grace.",
                  desc: "As a people, elves are tall, slender, and long-lived, with pointed ears and an otherworldly grace that commands both awe and curiosity. Their long lifespans mean they accumulate more knowledge and experiences than most other ancestries, and this sometimes makes them seem aloof or detached.",
                  isPremium: false),

            .make("Gnome", hp: 8, size: "Small", speed: 25,
                  abilityBoosts: "Constitution, Charisma, Free",
                  abilityFlaws: "Strength",
                  vision: "Low-Light Vision",
                  languages: ["Common", "Gnomish", "Sylvan"],
                  traits: "Gnome, Humanoid",
                  features: ["Low-Light Vision", "Gnome Obsession", "Gnome Weapon Familiarity", "Illusion Sense"],
                  summary: "Gnomes are small people with an intense curiosity about the world.",
                  desc: "Long ago, early gnome ancestors emigrated from the First World, the plane of the fey, and they've never quite forgotten their heritage. Gnomes are small and brightly colored, and they often have impulsive, energetic personalities.",
                  isPremium: false),

            .make("Goblin", hp: 6, size: "Small", speed: 25,
                  abilityBoosts: "Dexterity, Charisma, Free",
                  abilityFlaws: "Wisdom",
                  vision: "Darkvision",
                  languages: ["Common", "Goblin"],
                  traits: "Goblin, Humanoid",
                  features: ["Darkvision", "Goblin Weapon Familiarity", "Junk Tinker", "Rough Rider", "Very Sneaky"],
                  summary: "Goblins are a short, scrappy, energetic people known for their love of fire.",
                  desc: "The convoluted histories many suggest that goblins are, perhaps, one of the stranger accidents of an uncaring universe—a fact that most goblins gladly embrace. While goblins' culture is known for its destructive traditions, they have also developed a capacity for adaptation.",
                  isPremium: false),

            .make("Halfling", hp: 6, size: "Small", speed: 25,
                  abilityBoosts: "Dexterity, Wisdom, Free",
                  abilityFlaws: "Strength",
                  vision: "Normal",
                  languages: ["Common", "Halfling"],
                  traits: "Halfling, Humanoid",
                  features: ["Halfling Luck", "Halfling Weapon Familiarity", "Sure Feet", "Keen Eyes"],
                  summary: "Halflings are a short, resilient people who have adapted to their precarious lives.",
                  desc: "Claiming no place as their own, halflings control few settlements larger than villages. Instead, they frequently live among humans within the walls of larger cities, carving out small communities alongside taller folk. Many halflings lead nomadic lives, moving from place to place to follow crops or the whims of fate.",
                  isPremium: false),

            .make("Human", hp: 8, size: "Medium", speed: 25,
                  abilityBoosts: "Free, Free",
                  abilityFlaws: "",
                  vision: "Normal",
                  languages: ["Common"],
                  traits: "Human, Humanoid",
                  features: ["Skilled", "Versatile Heritage"],
                  summary: "Humans are incredibly diverse and one of the most adaptable ancestries.",
                  desc: "Humans are incredibly diverse. Some humans are tall, light-skinned, and dark-haired, while others have dark skin and light hair. Some trace their lineage back thousands of years to an ancient empire; others are proud inheritors of a pioneer spirit. Humans have risen to prominence in the Inner Sea region, and their nations and cities dot the landscape.",
                  isPremium: false),

            .make("Leshy", hp: 8, size: "Small", speed: 25,
                  abilityBoosts: "Constitution, Wisdom, Free",
                  abilityFlaws: "Intelligence",
                  vision: "Low-Light Vision",
                  languages: ["Common", "Sylvan"],
                  traits: "Leshy, Plant, Humanoid",
                  features: ["Low-Light Vision", "Plant Nourishment", "Leshy Lore", "Leshy Superstition"],
                  summary: "Leshies are small nature spirits who inhabit tiny plant bodies.",
                  desc: "Leshies are nature spirits that inhabit small plant bodies, created and then set free by druidic rituals. They have a deep connection to the natural world and to Gozreh, the deity of nature. Though tiny compared to most humanoids, leshies have big hearts and fierce wills.",
                  isPremium: false),
        ]

        for ancestry in ancestries {
            try await db.insertAncestry(ancestry)
        }
    }
}
