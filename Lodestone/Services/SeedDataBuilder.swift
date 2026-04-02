import Foundation

/// Orchestrates seeding of all PF1 OGL content into the database.
/// Content versioning: bump `currentSeedVersion` when content is updated.
/// LodestoneApp checks this value to trigger a re-seed on existing installs.
actor SeedDataBuilder {

    static let currentSeedVersion = 7

    let db: DatabaseService

    init(db: DatabaseService) {
        self.db = db
    }

    func seed() async throws {
        try await db.beginTransaction()
        do {
            // Clear FTS index before re-seeding to prevent duplicate entries
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
