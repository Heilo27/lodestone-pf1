import Foundation

// Guns & Gears (Premium)
extension SeedDataBuilder {
    func seedGunsAndGears() async throws {
        let classes: [ClassEntry] = [
            .make("Gunslinger", keyAbility: "Dexterity", hp: 8,
                  perception: "Expert", fort: "Expert", ref: "Expert", will: "Trained",
                  skills: "Nature or Crafting, plus 3 + Intelligence modifier",
                  features: "Gunslinger's Way (1), Singular Expertise (1), Spellslinger's Eye (1), Vigilant Senses (3)",
                  summary: "You rely on potent combinations of firearms and footwork.",
                  desc: "Gunslingers move and fight with a swagger through dangerous places. They rely on a loaded firearm and dead-aim accuracy, taking advantage of the opponent's weak points.",
                  source: "Guns & Gears", isPremium: true),

            .make("Inventor", keyAbility: "Intelligence", hp: 8,
                  perception: "Trained", fort: "Expert", ref: "Trained", will: "Trained",
                  skills: "Crafting, plus 3 + Intelligence modifier",
                  features: "Innovation (1), Overdrive (1), Breakthrough (7), Weapon Mastery (9)",
                  summary: "You create and rely on powerful inventions of your own making.",
                  desc: "Brilliant tinkerers whose mastery of gadgets and constructions is unparalleled. Inventors create their own tools, weapons, and helpers.",
                  source: "Guns & Gears", isPremium: true),
        ]

        for cls in classes { try await db.insertClass(cls) }
    }
}
