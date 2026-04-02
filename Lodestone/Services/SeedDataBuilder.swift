import Foundation
import CryptoKit

/// Generates a deterministic UUID from a seed string using SHA-256.
func seededUUID(_ seed: String) -> UUID {
    let hash = SHA256.hash(data: Data(seed.utf8))
    var bytes = Array(hash.prefix(16))
    bytes[6] = (bytes[6] & 0x0F) | 0x40
    bytes[8] = (bytes[8] & 0x3F) | 0x80
    return UUID(uuid: (
        bytes[0], bytes[1], bytes[2], bytes[3],
        bytes[4], bytes[5], bytes[6], bytes[7],
        bytes[8], bytes[9], bytes[10], bytes[11],
        bytes[12], bytes[13], bytes[14], bytes[15]
    ))
}

/// Orchestrates seeding of all PF2 OGL content into the database.
/// Content versioning: bump `currentSeedVersion` when content is updated.
actor SeedDataBuilder {

    static let currentSeedVersion = 1

    let db: DatabaseService

    init(db: DatabaseService) {
        self.db = db
    }

    func seed() async throws {
        try await db.beginTransaction()
        do {
            try await db.clearAllContent()
            try await db.clearFTSIndex()

            // Player Core (free tier)
            try await seedSpells()
            try await seedClasses()
            try await seedFeats()
            try await seedAncestries()
            try await seedItems()
            try await seedTraits()
            try await seedRules()
            try await seedBackgrounds()
            try await seedConditions()

            // Premium: Monster Core
            try await seedMonsters()

            // Premium: Advanced Player's Guide
            try await seedAPG()

            // Premium: Secrets of Magic
            try await seedSecretsOfMagic()

            // Premium: Guns & Gears
            try await seedGunsAndGears()

            // Premium: Book of the Dead
            try await seedBookOfTheDead()

            try await db.commitTransaction()
        } catch {
            await db.rollbackTransaction()
            throw error
        }
    }
}
