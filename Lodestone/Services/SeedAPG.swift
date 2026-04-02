import Foundation

// Advanced Player's Guide (Premium)
extension SeedDataBuilder {
    func seedAPG() async throws {
        // Ancestries
        let ancestries: [AncestryEntry] = [
            .make("Catfolk", hp: 8, size: "Medium", speed: 25,
                  abilityBoosts: "Dexterity, Charisma, Free",
                  abilityFlaws: "Wisdom",
                  vision: "Low-Light Vision",
                  languages: ["Common", "Amurrun"],
                  traits: "Catfolk, Humanoid",
                  features: ["Low-Light Vision", "Land on Your Feet", "Cat's Luck"],
                  summary: "Catfolk are curious and wandering creatures who hail from distant lands.",
                  desc: "Catfolk are a diverse people known for their natural curiosity and wandering ways. They are found across Golarion, usually in smaller communities within larger cities.",
                  source: "Advanced Player's Guide", isPremium: true),

            .make("Kobold", hp: 6, size: "Small", speed: 25,
                  abilityBoosts: "Dexterity, Charisma, Free",
                  abilityFlaws: "Constitution",
                  vision: "Darkvision",
                  languages: ["Common", "Draconic"],
                  traits: "Humanoid, Kobold",
                  features: ["Darkvision", "Draconic Exemplar"],
                  summary: "Kobolds are small, reptilian creatures who dwell in underground warrens.",
                  desc: "Kobolds are small and nimble, with a fierce connection to draconic power. They often serve as scouts and trapmakers for their clans.",
                  source: "Advanced Player's Guide", isPremium: true),
        ]

        // Classes
        let classes: [ClassEntry] = [
            .make("Investigator", keyAbility: "Intelligence", hp: 8,
                  perception: "Expert", fort: "Trained", ref: "Expert", will: "Expert",
                  skills: "Society, plus 4 + Intelligence modifier",
                  features: "Devise a Stratagem (1), Strategic Strike (1), Pursue a Lead (1), Methodology (1)",
                  summary: "You piece together clues and formulate devastating, precise attacks.",
                  desc: "You're a brilliant detective who pieces together clues and uses your intellect to devise devastating strikes against your foes.",
                  source: "Advanced Player's Guide", isPremium: true),

            .make("Oracle", keyAbility: "Charisma", hp: 8,
                  fort: "Trained", ref: "Trained", will: "Expert",
                  skills: "Religion, plus 3 + Intelligence modifier",
                  features: "Mystery (1), Oracle's Curse (1), Revelation Spells (1), Divine Spellcasting (1)",
                  summary: "You're a divine spellcaster cursed by divine power that infuses your bloodline.",
                  desc: "Oracles are divine spellcasters who draw power not from devotion to a single deity but from a mysterious wellspring of divine magic called a mystery.",
                  source: "Advanced Player's Guide", isPremium: true),

            .make("Swashbuckler", keyAbility: "Dexterity", hp: 10,
                  perception: "Expert", fort: "Trained", ref: "Expert", will: "Trained",
                  skills: "Acrobatics, plus 3 + Intelligence modifier",
                  features: "Panache (1), Swashbuckler Style (1), Precise Strike (1), Opportune Riposte (1)",
                  summary: "You move and fight with flair, building momentum to land devastating strikes.",
                  desc: "Others might disregard the flair you bring to a fight, but you know style is a crucial part of superior combat technique.",
                  source: "Advanced Player's Guide", isPremium: true),

            .make("Witch", keyAbility: "Intelligence or Charisma", hp: 6,
                  fort: "Trained", ref: "Trained", will: "Expert",
                  skills: "plus 2 + Intelligence modifier",
                  features: "Familiar (1), Patron (1), Hexes (1), Spellcasting (1), Cackle (1)",
                  summary: "You draw power from a pact with an otherworldly patron.",
                  desc: "Your power comes from a pact made with a mysterious, extraplanar patron. This entity teaches you magic aligned with its mysterious motives.",
                  source: "Advanced Player's Guide", isPremium: true),
        ]

        for ancestry in ancestries { try await db.insertAncestry(ancestry) }
        for cls in classes { try await db.insertClass(cls) }
    }
}
