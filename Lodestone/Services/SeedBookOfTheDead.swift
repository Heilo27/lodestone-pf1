import Foundation

// Book of the Dead (Premium)
extension SeedDataBuilder {
    func seedBookOfTheDead() async throws {
        let classes: [ClassEntry] = [
            .make("Thaumaturge", keyAbility: "Charisma", hp: 8,
                  perception: "Expert", fort: "Trained", ref: "Trained", will: "Expert",
                  skills: "Arcana, Nature, Occultism, and Religion, plus 2 + Intelligence modifier",
                  features: "Esoterica (1), Implement (1), Exploit Vulnerability (1), Intensify Vulnerability (1)",
                  summary: "You harness the power of esoterica to exploit your foes' vulnerabilities.",
                  desc: "Thaumaturges use their knowledge of the supernatural world to identify and exploit the weaknesses of all creatures.",
                  source: "Secrets of Magic", isPremium: true),
        ]

        for cls in classes { try await db.insertClass(cls) }
    }
}
