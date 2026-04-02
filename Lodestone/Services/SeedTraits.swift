import Foundation

extension SeedDataBuilder {
    func seedTraits() async throws {
        let traits: [TraitEntry] = [

            // MARK: - Spell/Magic Traits
            .make("Arcane", traitType: "Magical Tradition",
                  summary: "This magic comes from the arcane tradition.",
                  desc: "This magic comes from the arcane tradition, which is built on logic and rationality. Anything with this trait is magical.",
                  isPremium: false),
            .make("Divine", traitType: "Magical Tradition",
                  summary: "This magic comes from the divine tradition.",
                  desc: "This magic comes from a divine source, such as a deity, otherworldly power, or ancient god. Anything with this trait is magical.",
                  isPremium: false),
            .make("Occult", traitType: "Magical Tradition",
                  summary: "This magic comes from the occult tradition.",
                  desc: "This magic comes from the occult tradition, calling upon bizarre and ephemeral connections to reality to create strange effects. Anything with this trait is magical.",
                  isPremium: false),
            .make("Primal", traitType: "Magical Tradition",
                  summary: "This magic comes from the primal tradition.",
                  desc: "This magic comes from the primal tradition, connecting to the natural world and the primal spirits of nature. Anything with this trait is magical.",
                  isPremium: false),

            // MARK: - Damage Traits
            .make("Fire", traitType: "Energy",
                  summary: "Effects with this trait deal fire damage or manipulate fire.",
                  desc: "Effects with the fire trait deal fire damage or either manipulate or summon fire. Those that manipulate fire have no effect in an area without fire. Creatures with this trait consist primarily of fire or have a magical connection to that element.",
                  isPremium: false),
            .make("Cold", traitType: "Energy",
                  summary: "Effects with this trait deal cold damage or create cold.",
                  desc: "Effects with the cold trait deal cold damage or create areas of cold. Creatures with this trait have a connection to cold magic.",
                  isPremium: false),
            .make("Electricity", traitType: "Energy",
                  summary: "Effects with this trait deal electricity damage.",
                  desc: "Effects with the electricity trait deal electricity damage. Creatures with this trait have a connection to lightning magic.",
                  isPremium: false),
            .make("Acid", traitType: "Energy",
                  summary: "Effects with this trait deal acid damage.",
                  desc: "Effects with the acid trait deal acid damage. Creatures with this trait have a corrosive physiology.",
                  isPremium: false),
            .make("Force", traitType: "Energy",
                  summary: "Spells with this trait create or manipulate magical force.",
                  desc: "Spells with the force trait create or manipulate magical force. Force effects bypass all types of hardness and resistance.",
                  isPremium: false),
            .make("Mental", traitType: "Energy",
                  summary: "Effects with this trait affect or manipulate the mind.",
                  desc: "A mental effect can alter the target's mind. If a mental effect is turned back on its creator via Return Spell or similar mechanics, that does not subject the creator to a mental effect since they were the source.",
                  isPremium: false),

            // MARK: - Creature Traits
            .make("Humanoid", traitType: "Creature Type",
                  summary: "Creatures of roughly humanoid form.",
                  desc: "Humanoid creatures reason and act much like humans. They typically have two arms, two legs, and one head, or a closely related form. Humanoid monsters usually have additional descriptive traits that indicate their ancestry.",
                  isPremium: false),
            .make("Undead", traitType: "Creature Type",
                  summary: "Creatures that were once alive but have been brought back.",
                  desc: "Once living, these creatures were brought back to life through foul necromancy or dark supernatural means. Undead creatures are immune to bleed damage, disease, paralyzed, poison, and sleep. Undead don't breathe, eat, or sleep.",
                  isPremium: false),
            .make("Beast", traitType: "Creature Type",
                  summary: "A creature of bestial nature.",
                  desc: "A creature similar to an animal but more intelligent, more innately magical, or otherwise more refined. Each of the following traits can describe a beast, and each indicates the creature's origin or provides additional details about it.",
                  isPremium: false),
            .make("Dragon", traitType: "Creature Type",
                  summary: "A powerful, winged reptile.",
                  desc: "These powerful creatures are among the most feared in the world. They typically have wings and breath weapons, and are inherently magical. True dragons include red, blue, green, black, white, brass, bronze, copper, gold, and silver dragons.",
                  isPremium: false),
            .make("Fiend", traitType: "Creature Type",
                  summary: "A creature native to the outer planes of evil.",
                  desc: "Fiends are creatures native to the outer planes of evil: the Abyss, Hell, Abaddon, or similar planes. They are typically evil, and often seek to bring ruin to the mortal world.",
                  isPremium: false),

            // MARK: - Action Traits
            .make("Attack", traitType: "Action",
                  summary: "An ability with this trait involves making an attack roll.",
                  desc: "An ability with this trait involves making an attack roll against one or more targets. Anything that causes you to be off-guard applies to these attacks.",
                  isPremium: false),
            .make("Cantrip", traitType: "Spell",
                  summary: "Cantrips are spells cast at the maximum rank you can cast.",
                  desc: "A cantrip is a special type of spell that doesn't use spell slots. You can cast a cantrip at will, any number of times per day. A cantrip is automatically heightened to half your level rounded up—this is usually equal to the highest level of spell you can cast as a spellcaster.",
                  isPremium: false),
            .make("Concentrate", traitType: "Action",
                  summary: "An action with this trait requires a degree of mental concentration.",
                  desc: "An action with this trait requires a degree of mental concentration and discipline.",
                  isPremium: false),
            .make("Flourish", traitType: "Action",
                  summary: "Actions with this trait are complex combat maneuvers.",
                  desc: "Actions with this trait are combat maneuvers that require some degree of training to perform correctly and are meant to be used once per turn. You can use only 1 action with the flourish trait per turn.",
                  isPremium: false),
            .make("Manipulate", traitType: "Action",
                  summary: "You must physically manipulate an item or make hand gestures.",
                  desc: "You must physically manipulate an item or make gestures to use an action with this trait. Creatures without a suitable appendage can't perform actions with this trait. Manipulate actions often trigger reactions.",
                  isPremium: false),

            // MARK: - Alignment/Rarity Traits
            .make("Rare", traitType: "Rarity",
                  summary: "This content is very difficult to acquire.",
                  desc: "This rarity indicates that a rules element is very difficult to acquire and not typically available without the GM's approval. Powerful spells, dangerous monsters, and legendary items often have this rarity.",
                  isPremium: false),
            .make("Uncommon", traitType: "Rarity",
                  summary: "This content is available with effort or GM approval.",
                  desc: "Something of uncommon rarity requires special training or comes from a particular culture or part of the world. Some character choices give access to uncommon options, and the GM can choose to allow access to uncommon options that aren't otherwise available.",
                  isPremium: false),
        ]

        for trait in traits {
            try await db.insertTrait(trait)
        }
    }
}
