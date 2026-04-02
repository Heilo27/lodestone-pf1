import Foundation

// Secrets of Magic (Premium)
extension SeedDataBuilder {
    func seedSecretsOfMagic() async throws {
        let classes: [ClassEntry] = [
            .make("Magus", keyAbility: "Strength or Dexterity", hp: 8,
                  perception: "Trained", fort: "Expert", ref: "Expert", will: "Trained",
                  skills: "Arcana, plus 2 + Intelligence modifier",
                  features: "Hybrid Study (1), Spellcasting (1), Arcane Cascade (1), Spellstrike (1), Conflux Spells (1)",
                  summary: "You fuse arcane spells into your weapon attacks.",
                  desc: "The magus fuses sword and spell into a deadly combination, combining martial prowess with arcane power.",
                  source: "Secrets of Magic", isPremium: true),

            .make("Summoner", keyAbility: "Charisma", hp: 10,
                  fort: "Trained", ref: "Trained", will: "Expert",
                  skills: "Arcana, Nature, Occultism, or Religion, plus 2 + Intelligence modifier",
                  features: "Eidolon (1), Act Together (1), Tandem Strike (1), Link Spells (1), Spellcasting (1)",
                  summary: "You and your bonded eidolon are a single powerful team.",
                  desc: "The summoner forms a powerful bond with an eidolon, a magical creature that serves as an extension of the summoner's own soul.",
                  source: "Secrets of Magic", isPremium: true),
        ]

        for cls in classes { try await db.insertClass(cls) }
    }
}
