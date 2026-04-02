import Foundation

private extension ItemEntry {
    static func make(
        _ title: String,
        itemType: String,
        price: String,
        weight: String,
        slot: String,
        aura: String,
        casterLevel: Int,
        summary: String,
        desc: String,
        source: String = "Ultimate Equipment",
        isPremium: Bool = true
    ) -> ItemEntry {
        ItemEntry(
            id: seededUUID(title + source),
            title: title,
            summary: summary,
            isPremium: isPremium,
            price: price,
            weight: weight,
            slot: slot,
            aura: aura,
            casterLevel: casterLevel,
            itemType: itemType,
            description: desc,
            source: source
        )
    }
}

extension SeedDataBuilder {
    func seedUltimateEquipment() async throws {
        let items: [ItemEntry] = [

            // MARK: - Weapon Special Abilities

            .make("Bane", itemType: "Weapon Special Ability", price: "+1 bonus", weight: "—", slot: "weapon",
                  aura: "Moderate conjuration", casterLevel: 8,
                  summary: "+1 bonus ability; grants +2 attack and +2d6 damage vs. a chosen creature type.",
                  desc: "A bane weapon excels at fighting certain types of creatures. Against its designated foe, the weapon's enhancement bonus is 2 higher than normal, and it deals an extra 2d6 points of damage against the foe. Designating a foe is part of creating the weapon; it cannot be changed. Bane bows bestow the bane quality on their arrows or bolts.",
                  source: "Ultimate Equipment", isPremium: true),

            .make("Conductive", itemType: "Weapon Special Ability", price: "+1 bonus", weight: "—", slot: "weapon",
                  aura: "Moderate necromancy", casterLevel: 8,
                  summary: "+1 bonus ability; channel a spell-like or supernatural ability through the weapon on a hit.",
                  desc: "A conductive weapon is able to channel the energy of a spell-like or supernatural ability that requires a melee touch attack through the weapon's blade and into the target on a successful hit. Rather than making a separate touch attack, the wielder can deliver the ability as part of the attack. The ability must be one with a range of touch and a target of one creature.",
                  source: "Ultimate Equipment", isPremium: true),

            .make("Corrosive", itemType: "Weapon Special Ability", price: "+1 bonus", weight: "—", slot: "weapon",
                  aura: "Moderate evocation", casterLevel: 10,
                  summary: "+1 bonus ability; deals +1d6 acid damage on every hit.",
                  desc: "Upon command, a corrosive weapon is sheathed in a crackling aura of acidic energy that deals an extra 1d6 points of acid damage on a successful hit. The acid does not harm the wielder. The effect remains until another command is given. The weapon has no effect on undead creatures immune to acid.",
                  source: "Ultimate Equipment", isPremium: true),

            .make("Corrosive Burst", itemType: "Weapon Special Ability", price: "+2 bonus", weight: "—", slot: "weapon",
                  aura: "Moderate evocation", casterLevel: 12,
                  summary: "+2 bonus ability; +1d6 acid damage plus 1d10 bonus acid damage on a critical hit.",
                  desc: "A corrosive burst weapon functions as a corrosive weapon that also explodes with acid upon a successful critical hit. The acid does not harm the wielder. In addition to the extra acid damage from the corrosive ability, a corrosive burst weapon deals an extra 1d10 points of acid damage on a successful critical hit. If the weapon's critical multiplier is ×3, add an extra 2d10 points of acid damage instead, and if the multiplier is ×4, add an extra 3d10 points of acid damage.",
                  source: "Ultimate Equipment", isPremium: true),

            .make("Courageous", itemType: "Weapon Special Ability", price: "+1 bonus", weight: "—", slot: "weapon",
                  aura: "Moderate enchantment", casterLevel: 8,
                  summary: "+1 bonus ability; morale bonuses from the wielder's class abilities are increased by half.",
                  desc: "A courageous weapon bolsters its wielder's bravery in combat. Morale bonuses the wielder gains from any source are increased by half, rounded down (minimum +1). For example, a barbarian wielding a courageous weapon while raging gains a +4 morale bonus to Strength and Constitution instead of the normal +2, and a bard using inspire courage with this weapon gains an extra +1 to the morale bonus.",
                  source: "Ultimate Equipment", isPremium: true),

            .make("Cunning", itemType: "Weapon Special Ability", price: "+1 bonus", weight: "—", slot: "weapon",
                  aura: "Moderate divination", casterLevel: 6,
                  summary: "+1 bonus ability; determines and bypasses one type of damage reduction.",
                  desc: "A cunning weapon is keenly sensitive to weaknesses in foes' defenses. Three times per day, when the wielder makes an attack against a creature with damage reduction, the weapon bypasses the creature's damage reduction as if the weapon had the property needed to overcome that DR. The weapon must be attacking the same creature as the previous round for the ability to take effect automatically; the wielder may also use this as a free action.",
                  source: "Ultimate Equipment", isPremium: true),

            .make("Deadly", itemType: "Weapon Special Ability", price: "+1 bonus", weight: "—", slot: "weapon",
                  aura: "Moderate transmutation", casterLevel: 8,
                  summary: "+1 bonus ability; increases the weapon's damage die by one step.",
                  desc: "A deadly weapon is particularly dangerous, its edges preternaturally keen. Its damage die is increased by one step: 1d4 becomes 1d6, 1d6 becomes 1d8, 1d8 becomes 1d10, and so on. For weapons that deal multiple dice of damage (such as a falchion's 2d4), only one of the dice is increased. This property cannot increase a die above d12.",
                  source: "Ultimate Equipment", isPremium: true),

            .make("Defiant (Weapon)", itemType: "Weapon Special Ability", price: "+1 bonus", weight: "—", slot: "weapon",
                  aura: "Moderate abjuration", casterLevel: 8,
                  summary: "+1 bonus ability; +2 attack and damage against the wielder's favored enemy.",
                  desc: "A defiant weapon is attuned to its wielder's designated enemies. When the wielder attacks a creature that is one of their favored enemy types (ranger favored enemy or inquisitor's judgment against a specific creature type), the weapon grants a +2 bonus on attack rolls and damage rolls. The wielder designates one favored enemy type when the weapon is first created; this selection cannot be changed.",
                  source: "Ultimate Equipment", isPremium: true),

            // MARK: - Armor Special Abilities

            .make("Benevolent", itemType: "Armor Special Ability", price: "+1 bonus", weight: "—", slot: "armor",
                  aura: "Moderate enchantment", casterLevel: 7,
                  summary: "+1 bonus ability; adds armor's enhancement bonus to aid another attempts.",
                  desc: "A suit of benevolent armor helps the wearer protect and assist allies. Whenever the wearer uses the aid another action to assist an adjacent ally, the ally gains an additional bonus equal to the armor's enhancement bonus. For example, a wearer of +2 benevolent chainmail who uses aid another grants the ally a +4 bonus on the relevant check or AC instead of the usual +2.",
                  source: "Ultimate Equipment", isPremium: true),

            .make("Bolstering", itemType: "Armor Special Ability", price: "+1 bonus", weight: "—", slot: "armor",
                  aura: "Moderate abjuration", casterLevel: 7,
                  summary: "+1 bonus ability; +2 morale bonus on saves vs. fear, and can share this bonus with nearby allies.",
                  desc: "Bolstering armor reinforces the wearer's courage. The wearer gains a +2 morale bonus on saving throws against fear effects. Once per day as a standard action, the wearer can extend this bonus to all allies within 10 feet for 1 minute. The wearer does not lose their own bonus while it is being shared.",
                  source: "Ultimate Equipment", isPremium: true),

            .make("Creeping", itemType: "Armor Special Ability", price: "+1 bonus", weight: "—", slot: "armor",
                  aura: "Faint illusion", casterLevel: 5,
                  summary: "+1 bonus ability; automatically makes a Stealth check to move silently.",
                  desc: "Creeping armor muffles the sound of movement magically, allowing the wearer to move without making noise. Whenever the wearer moves, the armor automatically makes a Stealth check with a result equal to 15 + the armor's enhancement bonus. This check is made regardless of the wearer's own Stealth skill. If the wearer uses their own Stealth, they use whichever result is higher.",
                  source: "Ultimate Equipment", isPremium: true),

            .make("Dastard", itemType: "Armor Special Ability", price: "+1 bonus", weight: "—", slot: "armor",
                  aura: "Faint necromancy", casterLevel: 5,
                  summary: "+1 bonus ability; increases each sneak attack damage die by 1.",
                  desc: "Dastard armor enhances the wearer's ability to exploit unguarded moments. Whenever the wearer makes a sneak attack, each of the extra sneak attack damage dice deals 1 additional point of damage. For example, if the wearer rolls 3d6 sneak attack, each die is treated as dealing 1 extra point (maximum 7 per d6 instead of 6). This does not affect the number of dice rolled.",
                  source: "Ultimate Equipment", isPremium: true),

            .make("Deathless", itemType: "Armor Special Ability", price: "+1 bonus", weight: "—", slot: "armor",
                  aura: "Moderate conjuration", casterLevel: 9,
                  summary: "+1 bonus ability; 1/day, reroll a saving throw against a death effect.",
                  desc: "Deathless armor protects the wearer against death's touch. Once per day when the wearer fails a saving throw against a death effect, they may immediately reroll the saving throw. The second result stands even if it is also a failure. This ability functions automatically — the wearer need not expend any action to trigger it.",
                  source: "Ultimate Equipment", isPremium: true),

            .make("Defiant (Armor)", itemType: "Armor Special Ability", price: "+1 bonus", weight: "—", slot: "armor",
                  aura: "Moderate abjuration", casterLevel: 8,
                  summary: "+1 bonus ability; +1 AC against attacks from one chosen creature type.",
                  desc: "Defiant armor is particularly effective against a specific type of creature, chosen when the armor is created. The wearer gains a +1 deflection bonus to AC against attacks made by creatures of that type. The creature type is selected from the ranger favored enemy list. This selection cannot be changed once made and cannot stack with other defiant armor.",
                  source: "Ultimate Equipment", isPremium: true),

            .make("Fortification (Light)", itemType: "Armor Special Ability", price: "+1 bonus", weight: "—", slot: "armor",
                  aura: "Strong abjuration", casterLevel: 13,
                  summary: "+1 bonus ability; 25% chance to negate a critical hit or sneak attack.",
                  desc: "This suit of armor is reinforced with a magical force that protects against critical hits and sneak attacks. When a critical hit or sneak attack is scored against the wearer, there is a 25% chance that the critical hit or sneak attack is negated and damage is instead rolled normally. This does not require any action by the wearer.",
                  source: "Ultimate Equipment", isPremium: true),

            // MARK: - Wondrous Items

            .make("Amulet of Bullet Protection +1", itemType: "Wondrous Item", price: "1,500 gp", weight: "—", slot: "neck",
                  aura: "Faint abjuration", casterLevel: 5,
                  summary: "+1 deflection bonus to AC against firearm attacks.",
                  desc: "This amulet is fashioned from a flattened lead bullet fused with silver and strung on a sturdy cord. It grants the wearer a +1 deflection bonus to Armor Class, but only against attacks made with firearms. It provides no benefit against other ranged or melee attacks.",
                  source: "Ultimate Equipment", isPremium: true),

            .make("Amulet of Mighty Fists +2", itemType: "Wondrous Item", price: "16,000 gp", weight: "—", slot: "neck",
                  aura: "Moderate transmutation", casterLevel: 10,
                  summary: "Grants a +2 enhancement bonus on attack and damage with unarmed strikes and natural attacks.",
                  desc: "This amulet grants an enhancement bonus on attack rolls and damage rolls made with unarmed strikes and natural weapons. The +2 bonus functions as a standard weapon enhancement bonus; it stacks with other enhancement bonuses but does not count as magic for the purposes of overcoming damage reduction unless the bonus is +3 or higher.",
                  source: "Ultimate Equipment", isPremium: true),

            .make("Bag of Holding (Type III)", itemType: "Wondrous Item", price: "7,400 gp", weight: "35 lbs.", slot: "none",
                  aura: "Moderate conjuration", casterLevel: 9,
                  summary: "Extradimensional space; 250 lb. capacity, holds up to 1,000 lbs.",
                  desc: "This appears to be a common cloth bag. When opened, it reveals an extradimensional space that can hold up to 1,000 pounds of material without exceeding its 250-cubic-foot volume limit. Despite the contents, the bag always weighs about 35 pounds. If a bag of holding is turned inside out, its contents spill out unharmed. Placing a bag of holding inside another bag of holding creates a planar rift.",
                  source: "Ultimate Equipment", isPremium: true),

            .make("Belt of Dwarvenkind", itemType: "Wondrous Item", price: "14,900 gp", weight: "1 lb.", slot: "belt",
                  aura: "Strong transmutation", casterLevel: 12,
                  summary: "+4 Constitution, darkvision, stonecunning, and various dwarven resistances and social bonuses.",
                  desc: "This wide belt is made of dwarven metalwork and set with gemstones. The belt grants a +4 enhancement bonus to Constitution and darkvision to 60 feet (or extends existing darkvision by 60 feet). The wearer gains stonecunning as a dwarf, a +4 bonus on saves against poison and spells cast by giants, and a +2 bonus on Appraise and Craft checks related to stone or metal. Dwarves regard the wearer as trustworthy; non-dwarves must pass a DC 10 Will save when the belt is first donned or become compelled to speak in a dwarven accent.",
                  source: "Ultimate Equipment", isPremium: true),

            .make("Belt of Giant Strength +4", itemType: "Wondrous Item", price: "16,000 gp", weight: "1 lb.", slot: "belt",
                  aura: "Moderate transmutation", casterLevel: 8,
                  summary: "Grants a +4 enhancement bonus to Strength.",
                  desc: "This broad leather belt set with iron studs grants the wearer a +4 enhancement bonus to Strength. This increases attack rolls, damage rolls, and Strength-based skill checks accordingly. It does not stack with other enhancement bonuses to Strength.",
                  source: "Ultimate Equipment", isPremium: true),

            .make("Boots of the Winterlands", itemType: "Wondrous Item", price: "2,500 gp", weight: "1 lb.", slot: "feet",
                  aura: "Faint abjuration and transmutation", casterLevel: 5,
                  summary: "Move through snow/ice without penalty and gain cold resistance 10.",
                  desc: "These thick fur-lined boots are perfectly adapted to arctic conditions. The wearer can move through snow and icy terrain without any movement penalty. They also grant cold resistance 10 and protect the wearer against nonlethal damage from cold environments. The boots have no effect against cold attacks from creatures or spells.",
                  source: "Ultimate Equipment", isPremium: true),

            .make("Bracers of Archery (Greater)", itemType: "Wondrous Item", price: "25,000 gp", weight: "1 lb.", slot: "wrists",
                  aura: "Moderate transmutation", casterLevel: 8,
                  summary: "Grants proficiency with all bows and a +2 competence bonus on ranged attacks with bows.",
                  desc: "These bracers appear to be made of leather but are actually crafted from the sinew of great serpents. While wearing these bracers, the wearer gains proficiency with all bows (but not crossbows) and a +2 competence bonus on attack rolls with any bow (not crossbows or firearms). The greater bracers stack with the competence bonus of lesser bracers of archery.",
                  source: "Ultimate Equipment", isPremium: true),

            .make("Brooch of Shielding", itemType: "Wondrous Item", price: "1,500 gp", weight: "—", slot: "neck",
                  aura: "Faint abjuration", casterLevel: 1,
                  summary: "Absorbs magic missiles directed at the wearer, up to 101 points of damage.",
                  desc: "This appears to be an ordinary brooch, but it protects the wearer from magic missiles. Magic missiles directed at the wearer deal no damage; instead the brooch absorbs them, suffering up to 101 points of damage total before becoming nonmagical. Once the brooch has absorbed 101 points of magic missile damage, it is destroyed and falls away as fragments.",
                  source: "Ultimate Equipment", isPremium: true),

            .make("Candle of Invocation", itemType: "Wondrous Item", price: "8,400 gp", weight: "—", slot: "none",
                  aura: "Strong conjuration and evocation", casterLevel: 17,
                  summary: "Opens a gate to an aligned plane and grants +2 CL to casters of matching alignment.",
                  desc: "Each of these candles is dedicated to one alignment. When lit, it sheds a pale light aligned to its dedication and functions for up to 4 hours. Creatures of the dedicated alignment within 30 feet gain a +2 effective caster level. Once per use, the lighter can use the candle to cast gate to call a creature of the matching alignment. Burning the entire candle at once produces the gate effect immediately.",
                  source: "Ultimate Equipment", isPremium: true),

            .make("Cape of the Mountebank", itemType: "Wondrous Item", price: "10,080 gp", weight: "1 lb.", slot: "shoulders",
                  aura: "Moderate conjuration", casterLevel: 9,
                  summary: "Dimension door 1/day, teleporting the wearer up to 600 feet.",
                  desc: "This bright red and gold cape billows dramatically even in still air. Once per day, the wearer can use it to dimension door (as the spell) to teleport themselves and up to 600 pounds of gear up to 600 feet. Using the ability requires a standard action. The wearer appears in a puff of colorful smoke at the destination.",
                  source: "Ultimate Equipment", isPremium: true),

            .make("Carpet of Flying (5 ft. × 5 ft.)", itemType: "Wondrous Item", price: "20,000 gp", weight: "8 lbs.", slot: "none",
                  aura: "Moderate transmutation", casterLevel: 10,
                  summary: "Carries up to 200 lbs. at fly speed 40 ft. (good maneuverability).",
                  desc: "This magical flying carpet transports its passengers through the air. The 5×5-foot carpet can carry up to 200 pounds at a fly speed of 40 feet with good maneuverability. The carpet responds to simple verbal commands and can carry a single Medium creature comfortably. It hovers in place when not directed. The carpet cannot fly in areas where magic does not function.",
                  source: "Ultimate Equipment", isPremium: true),

            .make("Cloak of Resistance +3", itemType: "Wondrous Item", price: "9,000 gp", weight: "1 lb.", slot: "shoulders",
                  aura: "Moderate abjuration", casterLevel: 9,
                  summary: "Grants a +3 resistance bonus on all saving throws.",
                  desc: "This silky cloak, often stitched with intricate runes, protects the wearer against a wide variety of magical effects. It grants a +3 resistance bonus on all saving throws (Fortitude, Reflex, and Will). Multiple cloaks of resistance do not stack; only the highest bonus applies.",
                  source: "Ultimate Equipment", isPremium: true),

            .make("Crystal Ball (with Telepathy)", itemType: "Wondrous Item", price: "51,000 gp", weight: "7 lbs.", slot: "none",
                  aura: "Strong divination", casterLevel: 17,
                  summary: "Scry at will and communicate telepathically with the observed subject.",
                  desc: "This clear crystal sphere functions as a standard crystal ball (scrying, DC 16 Will to prevent viewing) but additionally allows the user to communicate telepathically with any creature observed through the ball. The communication is two-way — the observed creature hears the user's thoughts and can respond — but the creature can choose not to respond. The telepathic communication requires the creature be within range of the scrying effect.",
                  source: "Ultimate Equipment", isPremium: true),

            .make("Cube of Force", itemType: "Wondrous Item", price: "62,000 gp", weight: "0.5 lbs.", slot: "none",
                  aura: "Moderate evocation", casterLevel: 10,
                  summary: "36 charges; creates a force barrier blocking specific threats based on face activated.",
                  desc: "This small cube has 6 faces, each of which can be pressed to activate a different force barrier costing charges. The cube has 36 charges renewed daily. Face settings range from blocking gases (1 charge/turn), non-living matter (2/turn), living matter (3/turn), magic (4/turn), all matter (5/turn), or nothing (0). The barrier takes the form of a cube 10 feet on a side centered on the wielder. The cube recharges to 36 charges each morning.",
                  source: "Ultimate Equipment", isPremium: true),

            .make("Daern's Instant Fortress", itemType: "Wondrous Item", price: "55,000 gp", weight: "1 lb.", slot: "none",
                  aura: "Strong conjuration", casterLevel: 13,
                  summary: "A small metal cube that expands into a 20-ft. iron tower as a move action.",
                  desc: "This small metal cube can be thrown to the ground (move action) whereupon it instantly transforms into a tower 20 feet square and 30 feet high, with arrow slits, a door, and a stair inside. The battlements are crenellated. The tower has AC 3, 200 hit points, and hardness 10. The fortress can only be collapsed (returning to cube form) when empty. Creatures inside when it expands are pushed out harmlessly.",
                  source: "Ultimate Equipment", isPremium: true),

        ]

        for item in items {
            try await db.insertItem(item)
        }
    }
}
