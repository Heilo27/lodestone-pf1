import Foundation
import CryptoKit

/// Generates a deterministic UUID from a seed string using SHA-256.
/// Same title+source always produces the same UUID, so INSERT OR REPLACE deduplicates correctly on re-seed.
func seededUUID(_ seed: String) -> UUID {
    let hash = SHA256.hash(data: Data(seed.utf8))
    var bytes = Array(hash.prefix(16))
    // Set version 4 bits (so it looks like a valid UUID)
    bytes[6] = (bytes[6] & 0x0F) | 0x40
    bytes[8] = (bytes[8] & 0x3F) | 0x80
    return UUID(uuid: (
        bytes[0], bytes[1], bytes[2], bytes[3],
        bytes[4], bytes[5], bytes[6], bytes[7],
        bytes[8], bytes[9], bytes[10], bytes[11],
        bytes[12], bytes[13], bytes[14], bytes[15]
    ))
}

/// Orchestrates seeding of all PF1 OGL content into the database.
/// Content versioning: bump `currentSeedVersion` when content is updated.
/// LodestoneApp checks this value to trigger a re-seed on existing installs.
actor SeedDataBuilder {

    static let currentSeedVersion = 10

    let db: DatabaseService

    init(db: DatabaseService) {
        self.db = db
    }

    func seed() async throws {
        try await db.beginTransaction()
        do {
            // Wipe all existing content and FTS index before re-seeding
            try await db.clearAllContent()
            try await db.clearFTSIndex()
            try await seedSpells()
            try await seedClasses()
            try await seedFeats()
            try await seedMonsters()
            try await seedItems()
            try await seedRaces()
            try await seedTraits()
            try await seedRules()
            try await seedAPG()
            try await seedUltimateMagic()
            try await seedUltimateCombat()
            try await seedBestiary2()
            try await seedUltimateEquipment()
            try await seedAdvancedClassGuide()
            try await seedUnchained()
            try await seedNPCCodex()
            try await seedGameMasteryGuide()
            try await seedMythicAdventures()
            try await seedOccultAdventures()
            try await seedAdvancedRaceGuide()
            try await seedUltimateCampaign()
            try await seedUltimateWilderness()
            try await seedUltimateIntrigue()
            try await seedBestiary3()
            try await seedBestiary4()
            try await seedBestiary5()
            try await db.commitTransaction()
        } catch {
            await db.rollbackTransaction()
            throw error
        }
    }
}
