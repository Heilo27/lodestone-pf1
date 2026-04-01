import Testing
@testable import Lodestone

@Suite("Lodestone Tests")
struct LodestoneTests {

    @Test("ContentType display names")
    func contentTypeDisplayNames() {
        #expect(ContentType.spell.displayName == "Spells")
        #expect(ContentType.class_.displayName == "Classes")
        #expect(ContentType.monster.displayName == "Monsters")
    }

    @Test("ContentType icon names exist")
    func contentTypeIcons() {
        for type in ContentType.allCases {
            #expect(!type.iconName.isEmpty)
        }
    }

    @Test("SpellEntry conforms to ContentEntry")
    func spellEntryConformance() {
        let spell = SpellEntry.placeholder
        #expect(spell.contentType == .spell)
        #expect(!spell.title.isEmpty)
        #expect(!spell.summary.isEmpty)
    }

    @Test("FavoritesService toggle")
    func favoritesToggle() {
        let service = FavoritesService()
        let id = UUID()
        #expect(!service.isFavorite(id))
        service.toggle(id)
        #expect(service.isFavorite(id))
        service.toggle(id)
        #expect(!service.isFavorite(id))
    }
}
