import Foundation

extension SeedDataBuilder {
    func seedItems() async throws {
        let items: [ItemEntry] = [

            // MARK: - Adventuring Gear (Player Core, free)
            .make("Adventurer's Pack", level: 0, price: "7 sp", bulk: "1", usage: "carried",
                  traits: "", type: "Adventuring Gear",
                  summary: "A backpack full of essential adventuring supplies.",
                  desc: "This pack contains the following gear: a backpack, bedroll, two belt pouches, 10 pieces of chalk, flint and steel, 50 feet of rope, 2 weeks' rations, soap, 5 torches, and a waterskin.",
                  isPremium: false),

            .make("Lantern (Bullseye)", level: 0, price: "3 gp", bulk: "1", usage: "held in 1 hand",
                  traits: "", type: "Adventuring Gear",
                  summary: "A bullseye lantern with a hinged lid that creates a 60-foot cone of light.",
                  desc: "A bullseye lantern has a hinged lid to cover or expose the flame. An open bullseye lantern illuminates a 60-foot cone, with the rest of the light being bright out to 20 feet and dim out to 60 feet.",
                  isPremium: false),

            .make("Rope (50 feet)", level: 0, price: "5 cp", bulk: "1", usage: "carried",
                  traits: "", type: "Adventuring Gear",
                  summary: "50 feet of hemp rope.",
                  desc: "50 feet of hemp rope. It has 2 Hit Points and can be burst with a DC 23 Athletics check.",
                  isPremium: false),

            // MARK: - Weapons
            .make("Longsword", level: 0, price: "1 gp", bulk: "1", usage: "held in 1 hand",
                  traits: "Versatile P", type: "Martial Weapon",
                  summary: "A sword with a double-edged blade about 3 feet long.",
                  desc: "Damage: 1d8 S. A sword with a double-edged blade about 3 feet long. Traits: Versatile P.",
                  isPremium: false),

            .make("Shortbow", level: 0, price: "3 gp", bulk: "1", usage: "held in 2 hands",
                  traits: "Deadly d10", type: "Martial Weapon",
                  summary: "A shortbow made from composite materials.",
                  desc: "Damage: 1d6 P. Range: 60 feet. Reload: 0. A shortbow made of composite materials. Traits: Deadly d10.",
                  isPremium: false),

            .make("Dagger", level: 0, price: "2 sp", bulk: "L", usage: "held in 1 hand",
                  traits: "Agile, Finesse, Thrown 10 ft., Versatile S", type: "Simple Weapon",
                  summary: "A short blade with a pointed tip.",
                  desc: "Damage: 1d4 P. A short blade with a pointed tip, excellent for close-quarters work. Traits: Agile, Finesse, Thrown 10 ft., Versatile S.",
                  isPremium: false),

            // MARK: - Armor
            .make("Leather Armor", level: 0, price: "2 gp", bulk: "1", usage: "worn armor",
                  traits: "", type: "Light Armor",
                  summary: "Flexible armor made of thick leather.",
                  desc: "AC Bonus: +1. Dex Cap: +4. Check Penalty: 0. Speed Penalty: none. Strength: 10. Flexible and light, this armor is a favorite of rogues and rangers. Made from tanned hides.",
                  isPremium: false),

            .make("Chain Mail", level: 2, price: "6 gp", bulk: "2", usage: "worn armor",
                  traits: "Flexible, Noisy", type: "Medium Armor",
                  summary: "Interlocking metal rings forming a coat of protection.",
                  desc: "AC Bonus: +4. Dex Cap: +1. Check Penalty: -2. Speed Penalty: -5 ft. Strength: 16. Flexible and protective, chain mail is favored by those needing defense without sacrificing maneuverability. Traits: Flexible, Noisy.",
                  isPremium: false),

            .make("Full Plate", level: 2, price: "30 gp", bulk: "4", usage: "worn armor",
                  traits: "Bulwark", type: "Heavy Armor",
                  summary: "Complete metal armor covering the entire body.",
                  desc: "AC Bonus: +6. Dex Cap: +0. Check Penalty: -3. Speed Penalty: -10 ft. Strength: 18. Comprising interconnected metal plates covering the whole body, full plate is the pinnacle of personal protection. Traits: Bulwark.",
                  isPremium: false),

            // MARK: - Magic Items (Level 2+, premium)
            .make("Cloak of Elvenkind", level: 4, price: "90 gp", bulk: "L", usage: "worn cloak",
                  traits: "Invested, Magical, Transmutation", type: "Worn Item",
                  activate: "1 action (Interact) to raise the hood",
                  summary: "This cloak has a deep hood and is made from gray cloth.",
                  desc: "This cloak has a deep hood and is made from gray cloth that shimmers and shifts colors to blend into whatever environment you are in. You gain a +1 item bonus to Stealth checks. When you activate the cloak, you pull up the hood, gaining the effects of an invisibility spell until you pull the hood down or make a hostile action.",
                  isPremium: true),

            .make("Ring of Sustenance", level: 5, price: "175 gp", bulk: "—", usage: "worn (1 ring)",
                  traits: "Invested, Magical, Necromancy", type: "Ring",
                  summary: "This silver ring bears arcane engravings.",
                  desc: "This silver ring, engraved with arcane sigils, provides mystical sustenance to its wearer. You require only 2 hours of sleep per day and need not eat or drink.",
                  isPremium: true),

            .make("Boots of Elvenkind", level: 5, price: "150 gp", bulk: "L", usage: "worn shoes",
                  traits: "Invested, Magical, Transmutation", type: "Worn Item",
                  summary: "Soft shoes with pointed tips in an elven style.",
                  desc: "These light shoes make no sound whatsoever when you walk. You gain a +1 item bonus to Stealth checks, and you can use Stealth checks to move silently without the normal speed penalty.",
                  isPremium: true),
        ]

        for item in items {
            try await db.insertItem(item)
        }
    }
}
