import Foundation

extension SeedDataBuilder {
    func seedItems() async throws {
        let items: [ItemEntry] = [

            // MARK: - Armor (Magic)

            .make("+1 Chain Shirt", itemType: "Armor", price: "1,250 gp", weight: "25 lbs.", slot: "armor",
                  aura: "Faint transmutation", casterLevel: 3,
                  summary: "A chain shirt with a +1 enhancement bonus to AC.",
                  desc: "This finely woven chain shirt grants a +1 enhancement bonus to the wearer's armor class on top of its normal +4 armor bonus. It is considered a masterwork item."),

            .make("+2 Chain Shirt", itemType: "Armor", price: "4,250 gp", weight: "25 lbs.", slot: "armor",
                  aura: "Faint transmutation", casterLevel: 6,
                  summary: "A chain shirt with a +2 enhancement bonus to AC.",
                  desc: "This chain shirt grants a +2 enhancement bonus to the wearer's armor class on top of its normal +4 armor bonus. Arcane spell failure chance is 20%."),

            .make("+1 Chainmail", itemType: "Armor", price: "1,300 gp", weight: "40 lbs.", slot: "armor",
                  aura: "Faint transmutation", casterLevel: 3,
                  summary: "Chainmail with a +1 enhancement bonus to AC.",
                  desc: "This heavy armor provides a +6 armor bonus plus a +1 enhancement bonus. The mail rings are perfectly tempered, granting its wearer better protection without additional weight penalties."),

            .make("+2 Chainmail", itemType: "Armor", price: "4,300 gp", weight: "40 lbs.", slot: "armor",
                  aura: "Faint transmutation", casterLevel: 6,
                  summary: "Chainmail with a +2 enhancement bonus to AC.",
                  desc: "This +2 chainmail provides exceptional protection for medium and heavy armor wearers. Its interlocking rings are infused with magical reinforcement."),

            .make("+1 Full Plate", itemType: "Armor", price: "1,650 gp", weight: "50 lbs.", slot: "armor",
                  aura: "Faint transmutation", casterLevel: 3,
                  summary: "Full plate armor with a +1 enhancement bonus to AC.",
                  desc: "This suit of full plate armor provides a +9 armor bonus plus a +1 enhancement bonus. The articulated plates move with the wearer through magical reinforcement."),

            .make("+2 Full Plate", itemType: "Armor", price: "4,650 gp", weight: "50 lbs.", slot: "armor",
                  aura: "Faint transmutation", casterLevel: 6,
                  summary: "Full plate armor with a +2 enhancement bonus to AC.",
                  desc: "This masterwork full plate is enhanced with a +2 bonus, giving a total +11 to AC. Warriors who wear it report that the armor seems to anticipate blows."),

            .make("+3 Full Plate", itemType: "Armor", price: "9,650 gp", weight: "50 lbs.", slot: "armor",
                  aura: "Moderate transmutation", casterLevel: 9,
                  summary: "Full plate armor with a +3 enhancement bonus to AC.",
                  desc: "This +3 full plate provides extraordinary protection. The metal gleams with a faint inner light and the bonus makes it among the finest mundane-looking armor available."),

            .make("+1 Leather Armor", itemType: "Armor", price: "1,160 gp", weight: "15 lbs.", slot: "armor",
                  aura: "Faint transmutation", casterLevel: 3,
                  summary: "Leather armor with a +1 enhancement bonus to AC.",
                  desc: "This supple leather armor has been treated with magical oils, granting a +1 enhancement bonus on top of its +2 armor bonus. It remains flexible enough for rogues and scouts."),

            .make("+2 Leather Armor", itemType: "Armor", price: "4,160 gp", weight: "15 lbs.", slot: "armor",
                  aura: "Faint transmutation", casterLevel: 6,
                  summary: "Leather armor with a +2 enhancement bonus to AC.",
                  desc: "This +2 leather armor is favored by arcane spellcasters who need some protection without arcane spell failure. The supple leather moves like a second skin."),

            .make("+1 Scale Mail", itemType: "Armor", price: "1,200 gp", weight: "30 lbs.", slot: "armor",
                  aura: "Faint transmutation", casterLevel: 3,
                  summary: "Scale mail with a +1 enhancement bonus to AC.",
                  desc: "This scale mail consists of overlapping metal scales treated with protective magic. It grants a +5 armor bonus plus a +1 enhancement bonus."),

            .make("Celestial Armor", itemType: "Armor", price: "22,400 gp", weight: "20 lbs.", slot: "armor",
                  aura: "Faint transmutation", casterLevel: 5,
                  summary: "Shining chainmail that grants flight 3/day and a +3 enhancement bonus.",
                  desc: "This bright silver or gold +3 chainmail is so fine and light that it can be worn under normal clothing. It grants a fly speed of 30 feet (average maneuverability) for up to 10 minutes per day. The armor has a maximum Dex bonus of +8 and an arcane spell failure chance of only 15%."),

            .make("Demon Armor", itemType: "Armor", price: "52,260 gp", weight: "50 lbs.", slot: "armor",
                  aura: "Strong necromancy", casterLevel: 13,
                  summary: "Cursed +4 full plate that deals damage when removed and corrupts the wearer.",
                  desc: "This intimidating suit of +4 full plate is fashioned to make the wearer look like a demon. The wearer can make a claw attack each round as a free action dealing 1d10 damage. However, removing the armor deals 2d6 points of damage, and the wearer gradually becomes more evil over time."),

            .make("Banded Mail of Luck", itemType: "Armor", price: "18,900 gp", weight: "35 lbs.", slot: "armor",
                  aura: "Moderate enchantment", casterLevel: 7,
                  summary: "+3 banded mail that allows the wearer to reroll one die roll per day.",
                  desc: "This ornate +3 banded mail is decorated with golden filigree. Once per day, the wearer may reroll any one die roll as a free action, keeping the better result. This ability must be declared before the GM reveals the outcome."),

            .make("Breastplate of Command", itemType: "Armor", price: "25,400 gp", weight: "30 lbs.", slot: "armor",
                  aura: "Moderate enchantment", casterLevel: 7,
                  summary: "+2 breastplate that inspires allies to fight more effectively.",
                  desc: "This +2 breastplate bears elaborate reliefs of battle scenes. All of the wearer's allies within 360 feet receive a +1 morale bonus on attack rolls, saves, and skill checks. The wearer's hostile opponents take a –1 penalty on attack rolls against the wearer."),

            .make("Plate Armor of the Deep", itemType: "Armor", price: "24,650 gp", weight: "50 lbs.", slot: "armor",
                  aura: "Moderate abjuration", casterLevel: 11,
                  summary: "+1 full plate that functions underwater as if under the effect of freedom of movement.",
                  desc: "This +1 full plate allows the wearer to move and attack normally underwater, as if under a freedom of movement effect. The wearer can breathe water as well as air, and takes no penalties from deep water pressure."),

            .make("Rhino Hide", itemType: "Armor", price: "5,165 gp", weight: "25 lbs.", slot: "armor",
                  aura: "Moderate transmutation", casterLevel: 9,
                  summary: "+2 hide armor that deals extra damage when charging.",
                  desc: "This +2 hide armor is made from the thick skin of a rhinoceros. When the wearer makes a charge attack, the armor deals an additional 2d6 points of damage on a successful hit. The wearer also gains the benefit of the Run feat."),

            .make("Full Plate of Speed", itemType: "Armor", price: "13,650 gp", weight: "50 lbs.", slot: "armor",
                  aura: "Moderate transmutation", casterLevel: 7,
                  summary: "+1 full plate that allows an extra attack each round as a free action.",
                  desc: "This +1 full plate is magically lightened and responsive. Once per round as a free action, the wearer can make one extra attack as if under the effect of a haste spell. This extra attack does not stack with haste or other speed effects."),

            .make("Glamered Armor", itemType: "Armor", price: "+2,700 gp", weight: "—", slot: "armor",
                  aura: "Moderate illusion", casterLevel: 7,
                  summary: "Armor that can change its appearance to look like normal clothing.",
                  desc: "A suit of armor with this property appears to be a normal set of clothing. The armor retains all its normal properties but looks like whatever mundane garment the wearer desires. Only a true seeing spell or similar magic reveals the armor's true nature."),

            // MARK: - Shields

            .make("+1 Buckler", itemType: "Shield", price: "1,165 gp", weight: "5 lbs.", slot: "shield",
                  aura: "Faint transmutation", casterLevel: 3,
                  summary: "A buckler with a +1 enhancement bonus to AC.",
                  desc: "This small +1 buckler straps to the forearm. It provides a +1 shield bonus plus a +1 enhancement bonus to AC, and does not interfere with spellcasting."),

            .make("+1 Heavy Steel Shield", itemType: "Shield", price: "1,170 gp", weight: "15 lbs.", slot: "shield",
                  aura: "Faint transmutation", casterLevel: 3,
                  summary: "A heavy steel shield with a +1 enhancement bonus to AC.",
                  desc: "This heavy steel shield provides a +2 shield bonus plus a +1 enhancement bonus to AC. Its polished surface can be used as a mirror in a pinch."),

            .make("+2 Heavy Steel Shield", itemType: "Shield", price: "4,170 gp", weight: "15 lbs.", slot: "shield",
                  aura: "Faint transmutation", casterLevel: 6,
                  summary: "A heavy steel shield with a +2 enhancement bonus to AC.",
                  desc: "This +2 heavy steel shield provides solid protection for warriors who prefer a balance of offense and defense. The metal is reinforced with magical energy."),

            .make("+3 Tower Shield", itemType: "Shield", price: "9,180 gp", weight: "45 lbs.", slot: "shield",
                  aura: "Moderate transmutation", casterLevel: 9,
                  summary: "A tower shield with a +3 enhancement bonus to AC.",
                  desc: "This massive +3 tower shield provides a +4 shield bonus plus a +3 enhancement bonus to AC. Despite its bulk, magical reinforcement makes it slightly easier to maneuver than a mundane tower shield."),

            .make("Arrow Deflection Shield", itemType: "Shield", price: "9,170 gp", weight: "15 lbs.", slot: "shield",
                  aura: "Moderate abjuration", casterLevel: 5,
                  summary: "+2 shield that deflects arrows as if using the Deflect Arrows feat.",
                  desc: "This +2 shield deflects ranged attacks. Once per round when the wielder would normally be struck by a ranged weapon attack, they may deflect it so that it deals no damage. This functions even if the wielder doesn't have the Deflect Arrows feat."),

            .make("Animated Shield", itemType: "Shield", price: "9,159 gp", weight: "15 lbs.", slot: "none",
                  aura: "Strong transmutation", casterLevel: 12,
                  summary: "+2 shield that floats and defends independently, freeing both hands.",
                  desc: "As a move action, the wielder can command this +2 shield to animate. It floats in the air and defends the user normally, leaving both hands free. It lasts for 4 rounds before needing to be reactivated. The wielder can deactivate it as a free action."),

            .make("Lion's Shield", itemType: "Shield", price: "9,170 gp", weight: "15 lbs.", slot: "shield",
                  aura: "Moderate conjuration", casterLevel: 10,
                  summary: "+2 heavy steel shield whose lion's head boss can make bite attacks.",
                  desc: "This +2 heavy steel shield is decorated with a lion's head boss. Three times per day, the lion's head can be commanded to attack. It makes one bite attack per round at the wielder's highest base attack bonus, dealing 2d6 points of damage with a critical threat range of 20/×2."),

            .make("Spined Shield", itemType: "Shield", price: "5,580 gp", weight: "15 lbs.", slot: "shield",
                  aura: "Moderate evocation", casterLevel: 6,
                  summary: "+1 shield that can fire its spines as magic missiles.",
                  desc: "This +1 heavy steel shield is covered in spines. Three times per day, the wielder can fire one spine as if it were a magic missile (1d4+1 force damage, automatically hits). The wielder can fire up to 3 spines per round, and the shield regrows spent spines each day."),

            .make("Winged Shield", itemType: "Shield", price: "17,257 gp", weight: "10 lbs.", slot: "shield",
                  aura: "Faint transmutation", casterLevel: 5,
                  summary: "+3 wooden shield whose wings grant a fly speed of 60 ft. for 5 minutes/day.",
                  desc: "This +3 wooden shield has wings carved into its surface. Once per day, the wings become real and grant the wielder a fly speed of 60 feet with good maneuverability for up to 5 minutes. The shield retains its defensive properties while flying."),

            // MARK: - Weapons

            .make("+1 Longsword", itemType: "Weapon", price: "2,315 gp", weight: "4 lbs.", slot: "none",
                  aura: "Faint evocation", casterLevel: 3,
                  summary: "A longsword with a +1 enhancement bonus on attack and damage rolls.",
                  desc: "This longsword is perfectly balanced and bears a faint magical aura. It grants a +1 enhancement bonus on attack rolls and damage rolls. The blade never dulls and resists the elements."),

            .make("+2 Longsword", itemType: "Weapon", price: "8,315 gp", weight: "4 lbs.", slot: "none",
                  aura: "Moderate evocation", casterLevel: 6,
                  summary: "A longsword with a +2 enhancement bonus on attack and damage rolls.",
                  desc: "This +2 longsword provides a significant combat advantage. Its edge holds supernaturally, and it strikes with greater force than any mundane blade of comparable quality."),

            .make("+3 Longsword", itemType: "Weapon", price: "18,315 gp", weight: "4 lbs.", slot: "none",
                  aura: "Moderate evocation", casterLevel: 9,
                  summary: "A longsword with a +3 enhancement bonus on attack and damage rolls.",
                  desc: "This +3 longsword is a prized weapon among veteran warriors. The blade hums faintly when drawn and leaves a glowing afterimage with each swing."),

            .make("+1 Greatsword", itemType: "Weapon", price: "2,350 gp", weight: "8 lbs.", slot: "none",
                  aura: "Faint evocation", casterLevel: 3,
                  summary: "A greatsword with a +1 enhancement bonus on attack and damage rolls.",
                  desc: "This massive two-handed sword bears a +1 enhancement bonus. Despite its size, it feels well-balanced in the hands of anyone with the strength to wield it."),

            .make("+2 Greatsword", itemType: "Weapon", price: "8,350 gp", weight: "8 lbs.", slot: "none",
                  aura: "Moderate evocation", casterLevel: 6,
                  summary: "A greatsword with a +2 enhancement bonus on attack and damage rolls.",
                  desc: "This +2 greatsword is forged from high-quality steel treated with magical processes. Its powerful swings can cleave through light armor with ease."),

            .make("+1 Dagger", itemType: "Weapon", price: "2,302 gp", weight: "1 lb.", slot: "none",
                  aura: "Faint evocation", casterLevel: 3,
                  summary: "A dagger with a +1 enhancement bonus on attack and damage rolls.",
                  desc: "This slim +1 dagger can be used for both melee and ranged attacks. It returns to its sheath as if by magic after being thrown, and never loses its edge."),

            .make("+2 Dagger", itemType: "Weapon", price: "8,302 gp", weight: "1 lb.", slot: "none",
                  aura: "Moderate evocation", casterLevel: 6,
                  summary: "A dagger with a +2 enhancement bonus on attack and damage rolls.",
                  desc: "This +2 dagger is favored by assassins and rogues. It can be thrown with remarkable accuracy and its edge holds through even the most grueling combat."),

            .make("+1 Shortbow", itemType: "Weapon", price: "2,330 gp", weight: "2 lbs.", slot: "none",
                  aura: "Faint evocation", casterLevel: 3,
                  summary: "A shortbow with a +1 enhancement bonus on attack and damage rolls.",
                  desc: "This +1 shortbow is crafted from laminated wood and horn. Its string never frays and arrows fired from it fly true with a +1 bonus to attack and damage."),

            .make("+2 Longbow", itemType: "Weapon", price: "8,375 gp", weight: "3 lbs.", slot: "none",
                  aura: "Moderate evocation", casterLevel: 6,
                  summary: "A longbow with a +2 enhancement bonus on attack and damage rolls.",
                  desc: "This elegant +2 longbow is carved from a single piece of yew. Arrows loosed from it strike with greater force than physics alone should allow."),

            .make("+1 Shortsword", itemType: "Weapon", price: "2,310 gp", weight: "2 lbs.", slot: "none",
                  aura: "Faint evocation", casterLevel: 3,
                  summary: "A shortsword with a +1 enhancement bonus on attack and damage rolls.",
                  desc: "This +1 shortsword is a reliable sidearm. Its compact size makes it ideal for close quarters, and the magical edge never dulls."),

            .make("Berserking Sword", itemType: "Weapon", price: "17,315 gp", weight: "4 lbs.", slot: "none",
                  aura: "Strong enchantment", casterLevel: 13,
                  summary: "Cursed +2 greatsword that forces the wielder into a rage once drawn.",
                  desc: "This +2 greatsword appears to be a sword of sharpness. When drawn, the wielder must make a DC 15 Will save or fly into a berserk rage, attacking the nearest creature until dead or unconscious. The curse manifests after the first battle in which it is used."),

            .make("Dancing Sword", itemType: "Weapon", price: "47,315 gp", weight: "4 lbs.", slot: "none",
                  aura: "Strong transmutation", casterLevel: 15,
                  summary: "+4 longsword that fights independently for 4 rounds before returning.",
                  desc: "As a standard action, the wielder can command this +4 longsword to attack independently. It flies and attacks on its own for up to 4 rounds, using the wielder's attack bonus. After 4 rounds it falls and must be recovered. It can be recalled as a free action."),

            .make("Defending Sword", itemType: "Weapon", price: "13,315 gp", weight: "4 lbs.", slot: "none",
                  aura: "Moderate abjuration", casterLevel: 8,
                  summary: "+1 longsword that can transfer its enhancement bonus to AC each round.",
                  desc: "This +1 longsword allows its wielder to transfer some or all of the sword's enhancement bonus to their AC as a free action. For example, a +3 defending sword could grant +3 to AC while acting as a +0 sword, or any combination summing to +3."),

            .make("Disruption Mace", itemType: "Weapon", price: "38,312 gp", weight: "8 lbs.", slot: "none",
                  aura: "Strong conjuration", casterLevel: 14,
                  summary: "+2 heavy mace that destroys undead on a hit if they fail a DC 14 Will save.",
                  desc: "This +2 heavy mace is the bane of undead creatures. Any undead creature struck by this weapon must make a DC 14 Will save or be utterly destroyed. Good-aligned clerics and paladins favor this weapon above almost any other."),

            .make("Flame Tongue", itemType: "Weapon", price: "20,715 gp", weight: "4 lbs.", slot: "none",
                  aura: "Strong evocation", casterLevel: 12,
                  summary: "+1 flaming burst longsword that deals extra fire damage and can shed light.",
                  desc: "This +1 flaming burst longsword deals an extra 1d6 fire damage on each hit (2d10 on a critical), and can be ignited as a free action to shed light as a torch. On command it produces a jet of flame up to 30 feet long, dealing 4d6 fire damage (Reflex DC 14 half)."),

            .make("Frost Brand", itemType: "Weapon", price: "54,475 gp", weight: "8 lbs.", slot: "none",
                  aura: "Strong evocation", casterLevel: 14,
                  summary: "+3 frost greatsword that quenches nonmagical fires and grants fire resistance.",
                  desc: "This +3 frost greatsword deals an extra 1d6 cold damage on each hit. The wielder gains fire resistance 10. The blade automatically extinguishes nonmagical fires it touches and has a 50% chance to dispel fire magic on contact. It appears as a blade of pure ice."),

            .make("Holy Avenger", itemType: "Weapon", price: "120,630 gp", weight: "4 lbs.", slot: "none",
                  aura: "Strong abjuration", casterLevel: 18,
                  summary: "+2 longsword that becomes +5 holy in a paladin's hands and grants spell resistance.",
                  desc: "In the hands of a paladin this +2 longsword becomes a +5 holy longsword and grants spell resistance 5 (plus the paladin's level) to the wielder and all allies within 10 feet. It dispels evil magic on a hit. In anyone else's hands it functions only as a +2 longsword."),

            .make("Luck Blade", itemType: "Weapon", price: "22,060 gp", weight: "2 lbs.", slot: "none",
                  aura: "Strong evocation", casterLevel: 17,
                  summary: "+2 short sword that grants a +1 luck bonus on saves and may contain wishes.",
                  desc: "This +2 short sword grants its wielder a +1 luck bonus on saving throws. It may contain up to 3 wishes that can be used at the wielder's discretion. Once a wish is used it is gone. A luck blade with no wishes remaining is still a +2 short sword with the luck bonus."),

            .make("Nine Lives Stealer", itemType: "Weapon", price: "23,057 gp", weight: "4 lbs.", slot: "none",
                  aura: "Strong necromancy", casterLevel: 13,
                  summary: "+2 longsword that can kill a living creature outright on a critical hit (9 charges).",
                  desc: "This +2 longsword has the power to drain the life force from its victims. On a confirmed critical hit against a living creature with 9 or fewer HD, the victim must make a DC 20 Fortitude save or die instantly. The sword has 9 charges; each kill expends one charge permanently."),

            .make("Oathbow", itemType: "Weapon", price: "25,600 gp", weight: "3 lbs.", slot: "none",
                  aura: "Strong evocation", casterLevel: 15,
                  summary: "+2 longbow that designates a sworn enemy and deals greatly increased damage against it.",
                  desc: "When drawn, the wielder speaks a target creature's name; that creature becomes the sworn enemy. Against the sworn enemy, the bow gains +5 bonus on attack rolls and deals +2d6 damage per attack. Until the sworn enemy is dead, the wielder takes a –1 penalty on all other ranged attacks."),

            .make("Rapier of Puncturing", itemType: "Weapon", price: "50,320 gp", weight: "2 lbs.", slot: "none",
                  aura: "Strong necromancy", casterLevel: 13,
                  summary: "+2 rapier that deals 1d6 Constitution damage on a touch attack 3/day.",
                  desc: "Three times per day, this +2 rapier can make a touch attack as a standard action to deal 1d6 points of Constitution damage. This drains the victim's vitality directly, bypassing armor. The touch attack does not deal normal weapon damage."),

            .make("Scimitar of Speed", itemType: "Weapon", price: "38,815 gp", weight: "4 lbs.", slot: "none",
                  aura: "Moderate transmutation", casterLevel: 7,
                  summary: "+2 scimitar that grants one additional attack per round.",
                  desc: "This +2 scimitar grants its wielder one additional attack per round as if under the effect of a haste spell. This extra attack applies only to attacks made with this scimitar and does not stack with haste or other speed effects."),

            .make("Trident of Fish Command", itemType: "Weapon", price: "18,648 gp", weight: "4 lbs.", slot: "none",
                  aura: "Moderate enchantment", casterLevel: 7,
                  summary: "+1 trident that allows the wielder to command sea creatures.",
                  desc: "This +1 trident allows its wielder to charm up to 14 HD worth of aquatic animals within 60 feet (Will DC 16 negates). The charmed creatures obey the wielder's spoken commands. The effect lasts for 1 hour, and the power can be used three times per day."),

            .make("Vorpal Sword", itemType: "Weapon", price: "75,335 gp", weight: "4 lbs.", slot: "none",
                  aura: "Strong necromancy and transmutation", casterLevel: 18,
                  summary: "+5 longsword that severs the head of any foe on a roll of 20.",
                  desc: "This +5 longsword has a razor-sharp edge that can sever a creature's head on a roll of 20. A creature killed this way cannot be raised without the body, though regeneration and similar magic can regrow a lost head. Creatures immune to critical hits are immune to this effect."),

            .make("Greatsword of Life Stealing", itemType: "Weapon", price: "25,350 gp", weight: "8 lbs.", slot: "none",
                  aura: "Strong necromancy", casterLevel: 17,
                  summary: "+2 greatsword that grants temporary hit points to the wielder on a critical hit.",
                  desc: "This +2 greatsword grants the wielder 1d6 temporary hit points on a confirmed critical hit against a living creature. These temporary hit points last for 10 minutes and can accumulate, though they never exceed the creature's maximum total hit points."),

            .make("Trident of Warning", itemType: "Weapon", price: "10,648 gp", weight: "4 lbs.", slot: "none",
                  aura: "Moderate divination", casterLevel: 7,
                  summary: "+2 trident that warns its wielder of approaching enemies within 240 feet.",
                  desc: "This +2 trident vibrates when aquatic creatures come within 240 feet, alerting the wielder to their presence. Wielders gain a +4 insight bonus on initiative checks and can never be surprised while in contact with the trident."),

            // MARK: - Potions

            .make("Potion of Cure Light Wounds", itemType: "Potion", price: "50 gp", weight: "—", slot: "none",
                  aura: "Faint conjuration", casterLevel: 1,
                  summary: "Heals 1d8+1 hit points when consumed.",
                  desc: "This potion contains a small amount of divine energy. When consumed, it heals 1d8+1 points of damage. It is the most common healing potion and can be found in nearly every adventuring supply shop."),

            .make("Potion of Cure Moderate Wounds", itemType: "Potion", price: "300 gp", weight: "—", slot: "none",
                  aura: "Faint conjuration", casterLevel: 3,
                  summary: "Heals 2d8+3 hit points when consumed.",
                  desc: "This potion of moderate healing energy restores 2d8+3 hit points to the drinker. It is a staple item for adventurers expecting significant combat."),

            .make("Potion of Cure Serious Wounds", itemType: "Potion", price: "750 gp", weight: "—", slot: "none",
                  aura: "Moderate conjuration", casterLevel: 5,
                  summary: "Heals 3d8+5 hit points when consumed.",
                  desc: "This potent healing draught restores 3d8+5 hit points. Adventurers in need of serious recovery rely on these when lesser potions prove insufficient."),

            .make("Potion of Cure Critical Wounds", itemType: "Potion", price: "1,050 gp", weight: "—", slot: "none",
                  aura: "Moderate conjuration", casterLevel: 7,
                  summary: "Heals 4d8+7 hit points when consumed.",
                  desc: "This powerful healing potion restores 4d8+7 hit points. Often used as a last resort, it can pull adventurers back from the brink of death."),

            .make("Potion of Bull's Strength", itemType: "Potion", price: "300 gp", weight: "—", slot: "none",
                  aura: "Faint transmutation", casterLevel: 3,
                  summary: "Grants +4 enhancement bonus to Strength for 3 minutes.",
                  desc: "The drinker of this potion gains a +4 enhancement bonus to Strength for 3 minutes (30 rounds). This improves melee attack rolls, damage rolls, and related skill checks."),

            .make("Potion of Bear's Endurance", itemType: "Potion", price: "300 gp", weight: "—", slot: "none",
                  aura: "Faint transmutation", casterLevel: 3,
                  summary: "Grants +4 enhancement bonus to Constitution for 3 minutes.",
                  desc: "This potion grants a +4 enhancement bonus to Constitution for 3 minutes, temporarily increasing hit points and Fortitude saves."),

            .make("Potion of Cat's Grace", itemType: "Potion", price: "300 gp", weight: "—", slot: "none",
                  aura: "Faint transmutation", casterLevel: 3,
                  summary: "Grants +4 enhancement bonus to Dexterity for 3 minutes.",
                  desc: "This potion grants a +4 enhancement bonus to Dexterity for 3 minutes, improving ranged attacks, AC, Reflex saves, and relevant skills."),

            .make("Potion of Eagle's Splendor", itemType: "Potion", price: "300 gp", weight: "—", slot: "none",
                  aura: "Faint transmutation", casterLevel: 3,
                  summary: "Grants +4 enhancement bonus to Charisma for 3 minutes.",
                  desc: "This shimmering potion grants a +4 enhancement bonus to Charisma for 3 minutes, improving social skills, spells per day for charisma-based casters, and turning attempts."),

            .make("Potion of Fox's Cunning", itemType: "Potion", price: "300 gp", weight: "—", slot: "none",
                  aura: "Faint transmutation", casterLevel: 3,
                  summary: "Grants +4 enhancement bonus to Intelligence for 3 minutes.",
                  desc: "This potion temporarily sharpens the mind, granting a +4 enhancement bonus to Intelligence for 3 minutes. Intelligence-based skills and spells per day for wizards improve accordingly."),

            .make("Potion of Owl's Wisdom", itemType: "Potion", price: "300 gp", weight: "—", slot: "none",
                  aura: "Faint transmutation", casterLevel: 3,
                  summary: "Grants +4 enhancement bonus to Wisdom for 3 minutes.",
                  desc: "This pale blue potion grants a +4 enhancement bonus to Wisdom for 3 minutes, improving Will saves, perception, and divine spellcasting for wisdom-based classes."),

            .make("Potion of Fly", itemType: "Potion", price: "750 gp", weight: "—", slot: "none",
                  aura: "Moderate transmutation", casterLevel: 5,
                  summary: "Grants flight at 60 ft. speed (average maneuverability) for 5 minutes.",
                  desc: "This potion grants the drinker a fly speed of 60 feet with average maneuverability for 5 minutes. The drinker can move in three dimensions freely, though they must land or hover at the end of the duration."),

            .make("Potion of Gaseous Form", itemType: "Potion", price: "750 gp", weight: "—", slot: "none",
                  aura: "Moderate transmutation", casterLevel: 5,
                  summary: "Transforms the drinker into a gaseous state for 5 minutes.",
                  desc: "The drinker becomes insubstantial, vaporous, and transparent for 5 minutes. They can fly at 10 feet per round, pass through small holes, and are immune to most attacks. They cannot attack or cast spells while gaseous."),

            .make("Potion of Haste", itemType: "Potion", price: "750 gp", weight: "—", slot: "none",
                  aura: "Moderate transmutation", casterLevel: 5,
                  summary: "Grants one additional attack, +1 to hit/AC/Reflex, and +30 ft. speed for 5 rounds.",
                  desc: "This potion infuses the drinker with speed, granting one extra attack per round, a +1 bonus on attack rolls, AC, and Reflex saves, and a 30-foot increase to base speed for 5 rounds. The after-effect leaves the drinker fatigued."),

            .make("Potion of Heroism", itemType: "Potion", price: "210 gp", weight: "—", slot: "none",
                  aura: "Moderate enchantment", casterLevel: 5,
                  summary: "Grants +2 morale bonus on attack rolls, saves, and skill checks for 10 minutes.",
                  desc: "This draft of heroism grants the drinker a +2 morale bonus on attack rolls, saving throws, and skill checks for 10 minutes. Warriors often consume these before major battles."),

            .make("Potion of Invisibility", itemType: "Potion", price: "300 gp", weight: "—", slot: "none",
                  aura: "Faint illusion", casterLevel: 3,
                  summary: "Renders the drinker invisible for 3 minutes or until they attack.",
                  desc: "The drinker becomes invisible for 3 minutes or until they attack or cast a spell. Their equipment and clothing also become invisible. Detection requires magical means."),

            .make("Potion of Spider Climb", itemType: "Potion", price: "150 gp", weight: "—", slot: "none",
                  aura: "Faint transmutation", casterLevel: 3,
                  summary: "Grants the ability to climb walls and ceilings at full speed for 3 minutes.",
                  desc: "The drinker can climb sheer walls and ceilings for 3 minutes with a climb speed equal to their base land speed. No hands are needed; the feet alone suffice. The effect ends if the drinker removes their footwear."),

            .make("Potion of Remove Fear", itemType: "Potion", price: "50 gp", weight: "—", slot: "none",
                  aura: "Faint abjuration", casterLevel: 1,
                  summary: "Removes fear effects and grants +4 morale bonus on saves vs. fear for 10 minutes.",
                  desc: "This calming potion suppresses all fear effects currently affecting the drinker and grants a +4 morale bonus on saving throws against fear for 10 minutes. If the drinker fails a fear save during this time, the bonus is lost."),

            .make("Potion of Water Breathing", itemType: "Potion", price: "750 gp", weight: "—", slot: "none",
                  aura: "Moderate transmutation", casterLevel: 5,
                  summary: "Allows the drinker to breathe underwater for 2 hours.",
                  desc: "This blue-tinted potion allows the drinker to breathe water as easily as air for 2 hours. It does not interfere with normal air breathing. Aquatic adventurers frequently stock these before deep dives."),

            // MARK: - Rings

            .make("Ring of Evasion", itemType: "Ring", price: "25,000 gp", weight: "—", slot: "ring",
                  aura: "Moderate transmutation", casterLevel: 7,
                  summary: "Grants the evasion ability, taking no damage on a successful Reflex save.",
                  desc: "This ring grants its wearer the evasion ability. If the wearer makes a successful Reflex saving throw against an attack that normally deals half damage on a successful save, they instead take no damage."),

            .make("Ring of Feather Falling", itemType: "Ring", price: "2,200 gp", weight: "—", slot: "ring",
                  aura: "Faint transmutation", casterLevel: 1,
                  summary: "Automatically activates feather fall when the wearer falls.",
                  desc: "This ring activates immediately whenever the wearer falls, slowing descent to a harmless 60 feet per round. The effect is automatic, requires no action, and lasts until the wearer lands safely. It cannot be used to fly."),

            .make("Ring of Force Shield", itemType: "Ring", price: "8,500 gp", weight: "—", slot: "ring",
                  aura: "Moderate evocation", casterLevel: 9,
                  summary: "Creates a +4 shield bonus to AC on command, as an instant action.",
                  desc: "This ring creates an invisible shield of force that provides a +4 shield bonus to AC. Activating the ring is an immediate action. The shield can be dismissed as a free action. Unlike a normal shield, it provides no penalty to attack rolls and doesn't interfere with spellcasting."),

            .make("Ring of Freedom of Movement", itemType: "Ring", price: "40,000 gp", weight: "—", slot: "ring",
                  aura: "Moderate abjuration", casterLevel: 7,
                  summary: "Allows normal movement under freedom of movement as a continuous effect.",
                  desc: "This ring allows the wearer to move and attack normally even while under the influence of magic that would normally impede movement. This includes being grappled, entangled, held, paralyzed, or slowed. It functions continuously."),

            .make("Ring of Invisibility", itemType: "Ring", price: "20,000 gp", weight: "—", slot: "ring",
                  aura: "Faint illusion", casterLevel: 3,
                  summary: "Renders the wearer invisible on command.",
                  desc: "This ring turns the wearer invisible on command. The invisibility lasts until the wearer attacks or dismisses it. The wearer can reactivate it after attacking. The ring provides the same invisibility as the invisibility spell."),

            .make("Ring of Protection +1", itemType: "Ring", price: "2,000 gp", weight: "—", slot: "ring",
                  aura: "Faint abjuration", casterLevel: 5,
                  summary: "Grants a +1 deflection bonus to AC.",
                  desc: "This ring is engraved with protective runes. It grants a +1 deflection bonus to Armor Class, which stacks with all other bonuses to AC except other deflection bonuses."),

            .make("Ring of Protection +2", itemType: "Ring", price: "8,000 gp", weight: "—", slot: "ring",
                  aura: "Moderate abjuration", casterLevel: 5,
                  summary: "Grants a +2 deflection bonus to AC.",
                  desc: "This silver ring is engraved with overlapping protective runes and grants a +2 deflection bonus to Armor Class, protecting the wearer from attacks that would otherwise find their mark."),

            .make("Ring of Protection +3", itemType: "Ring", price: "18,000 gp", weight: "—", slot: "ring",
                  aura: "Moderate abjuration", casterLevel: 5,
                  summary: "Grants a +3 deflection bonus to AC.",
                  desc: "This finely crafted ring provides a +3 deflection bonus to Armor Class. The powerful protective magic forms an invisible barrier that deflects blows at the last moment."),

            .make("Ring of Protection +4", itemType: "Ring", price: "32,000 gp", weight: "—", slot: "ring",
                  aura: "Strong abjuration", casterLevel: 5,
                  summary: "Grants a +4 deflection bonus to AC.",
                  desc: "This gold ring set with a single clear gem provides a +4 deflection bonus to Armor Class. It is one of the most powerful defensive rings commonly available."),

            .make("Ring of Protection +5", itemType: "Ring", price: "50,000 gp", weight: "—", slot: "ring",
                  aura: "Strong abjuration", casterLevel: 5,
                  summary: "Grants a +5 deflection bonus to AC.",
                  desc: "This ring, set with a brilliant gem of pure force, provides a +5 deflection bonus to Armor Class. Legends tell of heroes who survived certain death due to the protection it provides."),

            .make("Ring of Regeneration", itemType: "Ring", price: "90,000 gp", weight: "—", slot: "ring",
                  aura: "Strong conjuration", casterLevel: 15,
                  summary: "Slowly regenerates hit points and lost limbs continuously.",
                  desc: "This white gold ring slowly heals the wearer, regenerating 1 hit point every 10 minutes. It also regenerates severed body members, lost organs, and similar wounds. The ring must be worn for at least 24 hours before it begins healing such damage."),

            .make("Ring of Spell Storing", itemType: "Ring", price: "50,000 gp", weight: "—", slot: "ring",
                  aura: "Moderate evocation", casterLevel: 9,
                  summary: "Stores up to 5 levels of spells that can be cast by the wearer.",
                  desc: "This ring stores up to 5 levels of spells cast into it. Any creature can cast a spell of 1st through 3rd level into the ring, and those stored spells can be released by the wearer as if they had cast them. The ring resets when all stored spells are used."),

            .make("Ring of Sustenance", itemType: "Ring", price: "2,500 gp", weight: "—", slot: "ring",
                  aura: "Faint conjuration", casterLevel: 5,
                  summary: "Provides the wearer with nourishment and reduces sleep to 2 hours per day.",
                  desc: "This ring magically provides the wearer with nourishment, making food and water unnecessary. Additionally, the wearer only needs 2 hours of sleep per night to be fully rested. The ring takes one week to attune to a new wearer."),

            .make("Ring of Swimming", itemType: "Ring", price: "2,500 gp", weight: "—", slot: "ring",
                  aura: "Faint transmutation", casterLevel: 2,
                  summary: "Grants a +5 competence bonus on Swim checks.",
                  desc: "This silver ring bears an engraved fish motif and continuously grants a +5 competence bonus on all Swim checks. The wearer also never tires from swimming."),

            .make("Ring of Three Wishes", itemType: "Ring", price: "120,000 gp", weight: "—", slot: "ring",
                  aura: "Strong universal", casterLevel: 20,
                  summary: "Contains 3 wishes that can be activated on command.",
                  desc: "This legendary ring contains three wishes. Each wish functions as the wish spell. Once all three wishes have been used, the ring becomes a nonmagical piece of jewelry. Finding one of these rings is considered an extraordinary stroke of luck."),

            .make("Ring of Wizardry I", itemType: "Ring", price: "20,000 gp", weight: "—", slot: "ring",
                  aura: "Strong (no school)", casterLevel: 17,
                  summary: "Doubles the wearer's 1st-level spell slots.",
                  desc: "This ring doubles the number of 1st-level spells a wizard can prepare per day. This does not affect bonus spells from a high Intelligence score. Only wizards benefit from this ring."),

            // MARK: - Rods

            .make("Immovable Rod", itemType: "Rod", price: "5,000 gp", weight: "5 lbs.", slot: "none",
                  aura: "Moderate transmutation", casterLevel: 10,
                  summary: "Can be fixed in space, able to hold up to 8,000 lbs.",
                  desc: "This flat iron rod has a button on one end. When activated as a free action, the rod becomes fixed in space and can support up to 8,000 lbs. It can be used as a climbing aid, to block a door, or to create an impromptu anchor. A DC 30 Strength check moves it."),

            .make("Rod of Absorption", itemType: "Rod", price: "50,000 gp", weight: "5 lbs.", slot: "none",
                  aura: "Strong abjuration", casterLevel: 15,
                  summary: "Absorbs spells targeted at the wielder and converts them to charges for spells.",
                  desc: "This rod absorbs spells or spell-like abilities that directly target the wielder. Absorbed spell energy is stored as charges (1 charge per spell level). The wielder can then expend these charges to power their own spells, gaining additional spell slots at a ratio of 2 charges per spell level."),

            .make("Rod of Cancellation", itemType: "Rod", price: "11,000 gp", weight: "5 lbs.", slot: "none",
                  aura: "Strong abjuration", casterLevel: 17,
                  summary: "Drains the magical properties from any item it touches.",
                  desc: "This dreaded implement permanently drains a magic item of all its magical properties if it touches the item (and the rod makes a melee touch attack against the item's wielder or the item itself). A drained item becomes nonmagical. The rod can be used only once."),

            .make("Rod of Metamagic: Empower", itemType: "Rod", price: "9,000 gp", weight: "5 lbs.", slot: "none",
                  aura: "Strong (no school)", casterLevel: 17,
                  summary: "Applies the Empower Spell metamagic to spells up to 3rd level, 3/day.",
                  desc: "The lesser version of this rod allows up to three spells per day of 3rd level or lower to be cast as if using the Empower Spell feat, increasing all variable, numeric effects by 50%, without increasing the spell's effective level."),

            .make("Rod of Metamagic: Extend", itemType: "Rod", price: "3,000 gp", weight: "5 lbs.", slot: "none",
                  aura: "Strong (no school)", casterLevel: 17,
                  summary: "Applies the Extend Spell metamagic to spells up to 3rd level, 3/day.",
                  desc: "The lesser version of this rod allows up to three spells per day of 3rd level or lower to be cast as if using the Extend Spell feat, doubling the spell's duration, without increasing the spell's effective level."),

            .make("Rod of Metamagic: Maximize", itemType: "Rod", price: "14,000 gp", weight: "5 lbs.", slot: "none",
                  aura: "Strong (no school)", casterLevel: 17,
                  summary: "Applies the Maximize Spell metamagic to spells up to 3rd level, 3/day.",
                  desc: "This rod allows up to three spells per day of 3rd level or lower to be cast as if using the Maximize Spell feat, treating all variable, numeric effects as their maximum values, without increasing the spell's effective level."),

            .make("Rod of Metamagic: Quicken", itemType: "Rod", price: "35,000 gp", weight: "5 lbs.", slot: "none",
                  aura: "Strong (no school)", casterLevel: 17,
                  summary: "Applies the Quicken Spell metamagic to spells up to 3rd level, 3/day.",
                  desc: "This powerful rod allows up to three spells per day of 3rd level or lower to be cast as a swift action as if using the Quicken Spell feat, without increasing the spell's effective level."),

            .make("Rod of Metamagic: Silent", itemType: "Rod", price: "3,000 gp", weight: "5 lbs.", slot: "none",
                  aura: "Strong (no school)", casterLevel: 17,
                  summary: "Applies the Silent Spell metamagic to spells up to 3rd level, 3/day.",
                  desc: "This rod allows the wielder to cast up to three spells per day of 3rd level or lower without any verbal components as if using the Silent Spell feat, without increasing the spell's effective level."),

            .make("Rod of Lordly Might", itemType: "Rod", price: "70,000 gp", weight: "10 lbs.", slot: "none",
                  aura: "Strong transmutation", casterLevel: 19,
                  summary: "Multipurpose weapon rod with six magical functions and three weapon forms.",
                  desc: "This rod is a combination weapon and magic tool with six spell-like functions and the ability to transform into a +2 flaming sword, a +4 longsword, or a spike for climbing. Its spell functions include fear, hold person, dominate person, bull's strength, and cure moderate wounds (once per day each)."),

            .make("Rod of Wonder", itemType: "Rod", price: "12,000 gp", weight: "5 lbs.", slot: "none",
                  aura: "Strong enchantment", casterLevel: 10,
                  summary: "Produces a random, unpredictable magical effect when activated.",
                  desc: "This chaotic rod produces a random effect each time it is used, rolled on a table of 100 possible outcomes. Effects range from harmless (a puff of smoke) to devastating (a lightning bolt) to bizarre (the target becomes fatigued). No two uses are guaranteed to produce the same result."),

            .make("Rod of Python", itemType: "Rod", price: "13,000 gp", weight: "10 lbs.", slot: "none",
                  aura: "Moderate transmutation", casterLevel: 10,
                  summary: "Transforms into a giant constrictor snake that fights for the wielder.",
                  desc: "This 10-foot-long rod transforms into a giant constrictor snake when the wielder throws it to the ground as a free action. The snake has the statistics of a giant constrictor snake and obeys the wielder's commands. It reverts to rod form at the wielder's command or after 1 hour."),

            .make("Rod of Rulership", itemType: "Rod", price: "60,000 gp", weight: "8 lbs.", slot: "none",
                  aura: "Strong enchantment", casterLevel: 20,
                  summary: "Commands 300 HD of creatures within 120 ft. for 8 hours, 1/day.",
                  desc: "When activated once per day, this rod commands every creature within 120 feet with 12 or fewer HD (up to 300 HD total) as if by a dominate monster spell (Will DC 20 negates). Creatures that fail their saves obey the wielder's commands for 8 hours."),

            // MARK: - Staves

            .make("Staff of Abjuration", itemType: "Staff", price: "65,000 gp", weight: "5 lbs.", slot: "none",
                  aura: "Strong abjuration", casterLevel: 13,
                  summary: "Staff containing dispel magic, globe of invulnerability, resist energy, and similar abjurations.",
                  desc: "This white and blue staff allows use of the following spells: dispel magic (1 charge), lesser globe of invulnerability (1 charge), resist energy (1 charge), protection from energy (1 charge), and greater dispel magic (2 charges). The staff has 50 charges."),

            .make("Staff of Fire", itemType: "Staff", price: "18,950 gp", weight: "5 lbs.", slot: "none",
                  aura: "Moderate evocation", casterLevel: 8,
                  summary: "Staff containing flaming sphere, fireball, and wall of fire.",
                  desc: "This charred and blackened staff allows use of the following spells: flaming sphere (1 charge), fireball (1 charge), and wall of fire (2 charges). It is warm to the touch and smells faintly of sulfur. It has 50 charges."),

            .make("Staff of Frost", itemType: "Staff", price: "41,400 gp", weight: "5 lbs.", slot: "none",
                  aura: "Moderate evocation", casterLevel: 10,
                  summary: "Staff containing ice storm, wall of ice, cone of cold, and similar cold spells.",
                  desc: "This icy blue-white staff allows use of the following spells: ice storm (1 charge), wall of ice (1 charge), and cone of cold (2 charges). The staff is cold to the touch and leaves a faint frost wherever it rests."),

            .make("Staff of Healing", itemType: "Staff", price: "27,750 gp", weight: "5 lbs.", slot: "none",
                  aura: "Moderate conjuration", casterLevel: 8,
                  summary: "Staff containing cure spells, lesser restoration, and remove blindness/deafness.",
                  desc: "This white staff allows use of the following spells: cure serious wounds (1 charge), lesser restoration (1 charge), and remove blindness/deafness (2 charges). It is a staple item for adventuring healers. It has 50 charges."),

            .make("Staff of Illumination", itemType: "Staff", price: "51,500 gp", weight: "5 lbs.", slot: "none",
                  aura: "Strong evocation", casterLevel: 15,
                  summary: "Staff containing dancing lights, flare, daylight, and sunburst.",
                  desc: "This brilliant staff allows use of the following spells: dancing lights (1 charge), flare (1 charge), daylight (2 charges), and sunburst (3 charges). It glows faintly at all times and can be used as a torch without expending charges."),

            .make("Staff of Necromancy", itemType: "Staff", price: "82,000 gp", weight: "5 lbs.", slot: "none",
                  aura: "Strong necromancy", casterLevel: 13,
                  summary: "Staff containing cause fear, ray of enfeeblement, spectral hand, and animate dead.",
                  desc: "This bone-white staff allows use of the following spells: cause fear (1 charge), ray of enfeeblement (1 charge), spectral hand (1 charge), animate dead (3 charges). It radiates an aura of cold and death. It has 50 charges."),

            .make("Staff of the Woodlands", itemType: "Staff", price: "100,400 gp", weight: "5 lbs.", slot: "none",
                  aura: "Strong varied", casterLevel: 13,
                  summary: "Staff containing speak with animals, barkskin, wall of thorns, animate plants, and more.",
                  desc: "This oak staff allows use of the following spells: speak with animals (1 charge), barkskin (2 charges), wall of thorns (3 charges), animate plants (4 charges), and awaken (5 charges). The wielder can also use it as a +2 quarterstaff. It has 50 charges."),

            .make("Staff of Power", itemType: "Staff", price: "235,000 gp", weight: "5 lbs.", slot: "none",
                  aura: "Strong varied", casterLevel: 15,
                  summary: "Legendary staff with magic missile, ray of enfeeblement, fireball, lightning bolt, cone of cold, and more.",
                  desc: "This staff allows use of the following spells: magic missile (1 charge), ray of enfeeblement (1 charge), fireball (2 charges), lightning bolt (2 charges), cone of cold (3 charges), hold monster (3 charges), and wall of force (4 charges). It also functions as a +2 quarterstaff. Has 50 charges; breaking it triggers a retributive strike."),

            .make("Staff of Transmutation", itemType: "Staff", price: "65,000 gp", weight: "5 lbs.", slot: "none",
                  aura: "Strong transmutation", casterLevel: 13,
                  summary: "Staff containing alter self, blink, polymorph, and disintegrate.",
                  desc: "This amber staff allows use of the following spells: alter self (1 charge), blink (1 charge), polymorph (2 charges), and disintegrate (3 charges). The wood shifts color subtly depending on the light, never quite the same shade twice."),

            // MARK: - Wands

            .make("Wand of Cure Light Wounds", itemType: "Wand", price: "750 gp", weight: "—", slot: "none",
                  aura: "Faint conjuration", casterLevel: 1,
                  summary: "50 charges; each charge cures 1d8+1 hit points.",
                  desc: "This wand contains 50 charges of cure light wounds. Each use heals a touched creature for 1d8+1 hit points. It is the most common healing wand, found in virtually every adventuring supply shop."),

            .make("Wand of Fireball", itemType: "Wand", price: "11,250 gp", weight: "—", slot: "none",
                  aura: "Moderate evocation", casterLevel: 5,
                  summary: "50 charges; each charge launches a fireball dealing 5d6 fire damage.",
                  desc: "This singed red wand contains 50 charges of fireball at 5th caster level. Each fireball deals 5d6 fire damage (Reflex DC 14 half) in a 20-foot radius. It is a highly destructive but reliable combat wand."),

            .make("Wand of Lightning Bolt", itemType: "Wand", price: "11,250 gp", weight: "—", slot: "none",
                  aura: "Moderate evocation", casterLevel: 5,
                  summary: "50 charges; each charge fires a lightning bolt dealing 5d6 electricity damage.",
                  desc: "This crackling blue wand contains 50 charges of lightning bolt at 5th caster level. Each bolt deals 5d6 electricity damage (Reflex DC 14 half) in a 120-foot line. It is preferred by wizards who fight in narrow corridors."),

            .make("Wand of Magic Missile", itemType: "Wand", price: "750 gp", weight: "—", slot: "none",
                  aura: "Faint evocation", casterLevel: 1,
                  summary: "50 charges; each charge fires a single magic missile dealing 1d4+1 force damage.",
                  desc: "This pale blue wand contains 50 charges of magic missile at 1st caster level. Each magic missile automatically hits a target for 1d4+1 force damage with no saving throw or attack roll required."),

            .make("Wand of Detect Magic", itemType: "Wand", price: "375 gp", weight: "—", slot: "none",
                  aura: "Faint divination", casterLevel: 1,
                  summary: "50 charges; each charge detects magical auras within 60 feet.",
                  desc: "This simple wand allows the user to detect magical auras within 60 feet for 1 minute per charge expended. It is an essential tool for adventurers who want to identify magic items and traps."),

            .make("Wand of Fly", itemType: "Wand", price: "11,250 gp", weight: "—", slot: "none",
                  aura: "Moderate transmutation", casterLevel: 5,
                  summary: "50 charges; each charge grants a fly speed of 60 ft. for 5 minutes.",
                  desc: "This feather-light wand contains 50 charges of the fly spell. Each use grants the target a fly speed of 60 feet with average maneuverability for 5 minutes. A staple for arcane spellcasters who need aerial mobility."),

            .make("Wand of Invisibility", itemType: "Wand", price: "4,500 gp", weight: "—", slot: "none",
                  aura: "Faint illusion", casterLevel: 3,
                  summary: "50 charges; each charge renders a touched creature invisible.",
                  desc: "This translucent wand contains 50 charges of the invisibility spell. Each use renders a touched creature invisible until they attack or until 3 minutes elapse. Rogues and infiltrators prize these wands highly."),

            .make("Wand of Knock", itemType: "Wand", price: "4,500 gp", weight: "—", slot: "none",
                  aura: "Moderate transmutation", casterLevel: 3,
                  summary: "50 charges; each charge opens locked doors, containers, and similar closures.",
                  desc: "This iron-and-brass wand contains 50 charges of the knock spell. Each use opens a locked door, chest, or similar closure, suppressing the lock for 10 minutes. It does not bypass magical lock spells without a caster level check."),

            // MARK: - Wondrous Items

            .make("Amulet of Health +2", itemType: "Wondrous Item", price: "4,000 gp", weight: "—", slot: "neck",
                  aura: "Faint transmutation", casterLevel: 8,
                  summary: "Grants a +2 enhancement bonus to Constitution.",
                  desc: "This amulet is crafted from dense, resilient materials and grants a +2 enhancement bonus to the wearer's Constitution score. This increases hit points, Fortitude saves, and Constitution-based skills."),

            .make("Amulet of Health +4", itemType: "Wondrous Item", price: "16,000 gp", weight: "—", slot: "neck",
                  aura: "Moderate transmutation", casterLevel: 8,
                  summary: "Grants a +4 enhancement bonus to Constitution.",
                  desc: "This heavy iron amulet grants a +4 enhancement bonus to Constitution, significantly bolstering the wearer's endurance and resilience. Warriors and adventurers who expect prolonged combat favor this item."),

            .make("Amulet of Natural Armor +1", itemType: "Wondrous Item", price: "2,000 gp", weight: "—", slot: "neck",
                  aura: "Faint transmutation", casterLevel: 5,
                  summary: "Grants a +1 natural armor bonus to AC.",
                  desc: "This amulet, often made from bone or hide, toughens the wearer's skin. It grants a +1 natural armor bonus to Armor Class that stacks with all other types of AC bonuses."),

            .make("Amulet of Natural Armor +2", itemType: "Wondrous Item", price: "8,000 gp", weight: "—", slot: "neck",
                  aura: "Moderate transmutation", casterLevel: 5,
                  summary: "Grants a +2 natural armor bonus to AC.",
                  desc: "The wearer of this amulet gains exceptionally tough, almost scale-like skin. It grants a +2 natural armor bonus to Armor Class, providing protection against all attacks."),

            .make("Amulet of Mighty Fists +1", itemType: "Wondrous Item", price: "5,000 gp", weight: "—", slot: "neck",
                  aura: "Faint evocation", casterLevel: 5,
                  summary: "Grants a +1 enhancement bonus on unarmed and natural weapon attacks.",
                  desc: "This amulet grants a +1 enhancement bonus on attack and damage rolls for the wearer's unarmed strikes and natural weapons. Monks and characters who rely on natural attacks prize this item."),

            .make("Amulet of the Planes", itemType: "Wondrous Item", price: "120,000 gp", weight: "—", slot: "neck",
                  aura: "Strong conjuration", casterLevel: 15,
                  summary: "Allows the wearer to use plane shift once per day.",
                  desc: "This amulet allows the wearer to use plane shift once per day. The wearer can transport themselves and up to 8 willing companions to any plane of existence. A DC 15 Intelligence check is required; failure sends the travelers to a random plane."),

            .make("Amulet of Proof against Detection and Location", itemType: "Wondrous Item", price: "35,000 gp", weight: "—", slot: "neck",
                  aura: "Strong abjuration", casterLevel: 8,
                  summary: "Blocks all divination spells that would reveal the wearer's location.",
                  desc: "This amulet renders the wearer immune to detect thoughts, locate creature, and all forms of divination magic that attempt to locate or track the wearer. The wearer cannot be found by magical means while wearing this item."),

            .make("Bag of Holding (Type I)", itemType: "Wondrous Item", price: "2,500 gp", weight: "15 lbs.", slot: "none",
                  aura: "Moderate conjuration", casterLevel: 9,
                  summary: "Holds up to 250 lbs. / 30 cubic ft. in an extradimensional space.",
                  desc: "This appears to be a simple cloth sack, but it opens into an extradimensional space. Type I holds up to 250 pounds (30 cubic feet). The bag itself weighs 15 pounds regardless of contents. Retrieving an item requires a move action."),

            .make("Bag of Holding (Type II)", itemType: "Wondrous Item", price: "5,000 gp", weight: "25 lbs.", slot: "none",
                  aura: "Moderate conjuration", casterLevel: 9,
                  summary: "Holds up to 500 lbs. / 70 cubic ft. in an extradimensional space.",
                  desc: "This larger bag of holding can hold up to 500 pounds (70 cubic feet) in its extradimensional space. The bag itself weighs 25 pounds regardless of contents. It is the most commonly used size for serious adventuring parties."),

            .make("Bag of Holding (Type III)", itemType: "Wondrous Item", price: "7,400 gp", weight: "35 lbs.", slot: "none",
                  aura: "Moderate conjuration", casterLevel: 9,
                  summary: "Holds up to 1,000 lbs. / 150 cubic ft. in an extradimensional space.",
                  desc: "This oversized bag holds up to 1,000 pounds (150 cubic feet) in its extradimensional space. The bag itself weighs 35 pounds. Favored by merchants and treasure-hunters who expect large hauls."),

            .make("Bag of Holding (Type IV)", itemType: "Wondrous Item", price: "10,000 gp", weight: "60 lbs.", slot: "none",
                  aura: "Moderate conjuration", casterLevel: 9,
                  summary: "Holds up to 1,500 lbs. / 250 cubic ft. in an extradimensional space.",
                  desc: "The largest standard bag of holding, this item stores up to 1,500 pounds (250 cubic feet). The bag itself weighs 60 pounds. If placed inside another bag of holding or a portable hole, it causes a catastrophic rift to the Astral Plane."),

            .make("Belt of Giant Strength +2", itemType: "Wondrous Item", price: "4,000 gp", weight: "1 lb.", slot: "waist",
                  aura: "Moderate transmutation", casterLevel: 8,
                  summary: "Grants a +2 enhancement bonus to Strength.",
                  desc: "This wide leather belt is set with iron buckles and grants a +2 enhancement bonus to the wearer's Strength score, improving melee attack rolls, damage rolls, carrying capacity, and related skills."),

            .make("Belt of Giant Strength +4", itemType: "Wondrous Item", price: "16,000 gp", weight: "1 lb.", slot: "waist",
                  aura: "Moderate transmutation", casterLevel: 8,
                  summary: "Grants a +4 enhancement bonus to Strength.",
                  desc: "This thick belt of giant-hide leather grants a +4 enhancement bonus to Strength. Warriors who wear this belt become notably more physically powerful than without it."),

            .make("Belt of Incredible Dexterity +2", itemType: "Wondrous Item", price: "4,000 gp", weight: "1 lb.", slot: "waist",
                  aura: "Moderate transmutation", casterLevel: 8,
                  summary: "Grants a +2 enhancement bonus to Dexterity.",
                  desc: "This slender belt of supple leather grants a +2 enhancement bonus to the wearer's Dexterity, improving ranged attack rolls, AC, Reflex saves, and related skills."),

            .make("Belt of Physical Might +2", itemType: "Wondrous Item", price: "10,000 gp", weight: "1 lb.", slot: "waist",
                  aura: "Moderate transmutation", casterLevel: 8,
                  summary: "Grants a +2 enhancement bonus to two physical ability scores.",
                  desc: "This belt grants a +2 enhancement bonus to two physical ability scores (Strength and Dexterity, Strength and Constitution, or Dexterity and Constitution) chosen when the belt is created. Only one belt of this type can be worn at a time."),

            .make("Boots of Elvenkind", itemType: "Wondrous Item", price: "2,500 gp", weight: "1 lb.", slot: "feet",
                  aura: "Faint transmutation", casterLevel: 5,
                  summary: "Grants a +5 competence bonus on Stealth checks.",
                  desc: "These soft leather boots are made from elven hide and grant a +5 competence bonus on all Stealth checks. The wearer's footsteps are nearly silent on any surface, from stone to dry leaves."),

            .make("Boots of Speed", itemType: "Wondrous Item", price: "12,000 gp", weight: "1 lb.", slot: "feet",
                  aura: "Moderate transmutation", casterLevel: 10,
                  summary: "Grants the effect of haste for up to 10 rounds per day.",
                  desc: "These boots allow the wearer to use haste (as the spell) for up to 10 rounds per day. Activating or deactivating the boots is a free action. The rounds need not be consecutive. After use, the boots leave the wearer fatigued for 1 round per round they were active."),

            .make("Boots of Levitation", itemType: "Wondrous Item", price: "7,500 gp", weight: "1 lb.", slot: "feet",
                  aura: "Moderate transmutation", casterLevel: 9,
                  summary: "Allows the wearer to levitate at will.",
                  desc: "These boots allow the wearer to levitate at will, as per the levitate spell. The wearer can ascend or descend at up to 20 feet per round and remain at a fixed elevation indefinitely. They cannot move horizontally without something to push against."),

            .make("Boots of Teleportation", itemType: "Wondrous Item", price: "49,000 gp", weight: "1 lb.", slot: "feet",
                  aura: "Strong conjuration", casterLevel: 9,
                  summary: "Allows the wearer to use teleport 3 times per day.",
                  desc: "These unassuming boots grant the wearer the ability to use teleport three times per day. The teleport functions exactly as the spell, allowing instantaneous travel to any familiar destination. An essential escape tool for arcane spellcasters."),

            .make("Boots of Striding and Springing", itemType: "Wondrous Item", price: "5,500 gp", weight: "1 lb.", slot: "feet",
                  aura: "Moderate transmutation", casterLevel: 3,
                  summary: "Increases base land speed by 10 ft. and grants a +5 bonus on Acrobatics (jump) checks.",
                  desc: "These boots grant a 10-foot enhancement bonus to the wearer's base land speed and a +5 competence bonus on Acrobatics checks involving jumping. The wearer can make incredible leaps far beyond normal human capability."),

            .make("Bracers of Armor +1", itemType: "Wondrous Item", price: "1,000 gp", weight: "1 lb.", slot: "wrists",
                  aura: "Faint conjuration", casterLevel: 7,
                  summary: "Grants a +1 armor bonus to AC.",
                  desc: "These bracers surround the wearer with an invisible but tangible field of force, granting a +1 armor bonus to AC. They function as actual armor and are useful for spellcasters who cannot wear armor."),

            .make("Bracers of Armor +2", itemType: "Wondrous Item", price: "4,000 gp", weight: "1 lb.", slot: "wrists",
                  aura: "Moderate conjuration", casterLevel: 7,
                  summary: "Grants a +2 armor bonus to AC.",
                  desc: "These bracers encase the wearer in a stronger field of protective force, granting a +2 armor bonus to AC. Arcane spellcasters who need protection without spell failure risk prize these bracers."),

            .make("Bracers of Armor +4", itemType: "Wondrous Item", price: "16,000 gp", weight: "1 lb.", slot: "wrists",
                  aura: "Moderate conjuration", casterLevel: 7,
                  summary: "Grants a +4 armor bonus to AC.",
                  desc: "These potent bracers surround the wearer with a strong force field equivalent to medium armor, providing a +4 armor bonus to AC without any of the normal penalties associated with worn armor."),

            .make("Bracers of Archery, Lesser", itemType: "Wondrous Item", price: "5,000 gp", weight: "1 lb.", slot: "wrists",
                  aura: "Faint transmutation", casterLevel: 4,
                  summary: "Grants +1 competence bonus on attack rolls with bows.",
                  desc: "These leather bracers grant the wearer proficiency with longbows and shortbows and a +1 competence bonus on attack rolls when using any bow. They are favored by fighters who want to supplement their ranged combat abilities."),

            .make("Brooch of Shielding", itemType: "Wondrous Item", price: "1,500 gp", weight: "—", slot: "neck",
                  aura: "Faint abjuration", casterLevel: 1,
                  summary: "Absorbs up to 101 points of magic missile damage before becoming inert.",
                  desc: "This intricate metal brooch absorbs magic missiles directed at its wearer, preventing all damage from such attacks. The brooch can absorb up to 101 points of damage from magic missiles before it becomes nonmagical and crumbles to dust."),

            .make("Broom of Flying", itemType: "Wondrous Item", price: "17,000 gp", weight: "3 lbs.", slot: "none",
                  aura: "Moderate transmutation", casterLevel: 9,
                  summary: "Flies at 40 ft. (30 ft. with rider) with up to 200 lbs. capacity.",
                  desc: "This broom can carry the owner through the air as if using the fly spell. It flies at 40 feet per round unloaded or 30 feet when carrying its rider. It can carry up to 200 pounds. The broom can be called from up to 300 feet away by speaking its command word."),

            .make("Cloak of Elvenkind", itemType: "Wondrous Item", price: "2,500 gp", weight: "1 lb.", slot: "shoulders",
                  aura: "Faint illusion", casterLevel: 5,
                  summary: "Grants a +5 competence bonus on Stealth checks.",
                  desc: "This cloak of grey-green elven make grants a +5 competence bonus on Stealth checks. Its coloring shifts to match its environment, making the wearer blend into shadows and natural surroundings with uncanny ease."),

            .make("Cloak of Resistance +1", itemType: "Wondrous Item", price: "1,000 gp", weight: "1 lb.", slot: "shoulders",
                  aura: "Faint abjuration", casterLevel: 5,
                  summary: "Grants a +1 resistance bonus on all saving throws.",
                  desc: "This cloak of rough wool is infused with protective magic. It grants a +1 resistance bonus on all saving throws (Fortitude, Reflex, and Will). It is one of the most cost-effective protective items available."),

            .make("Cloak of Resistance +2", itemType: "Wondrous Item", price: "4,000 gp", weight: "1 lb.", slot: "shoulders",
                  aura: "Faint abjuration", casterLevel: 5,
                  summary: "Grants a +2 resistance bonus on all saving throws.",
                  desc: "This finely woven cloak grants a +2 resistance bonus on all saving throws, providing solid protection against spells and other effects that require saving throws."),

            .make("Cloak of Resistance +3", itemType: "Wondrous Item", price: "9,000 gp", weight: "1 lb.", slot: "shoulders",
                  aura: "Moderate abjuration", casterLevel: 5,
                  summary: "Grants a +3 resistance bonus on all saving throws.",
                  desc: "This dark cloak grants a +3 resistance bonus on all saving throws. The magic woven into its fabric helps the wearer resist harmful magical effects that would otherwise devastate them."),

            .make("Cloak of Resistance +4", itemType: "Wondrous Item", price: "16,000 gp", weight: "1 lb.", slot: "shoulders",
                  aura: "Moderate abjuration", casterLevel: 5,
                  summary: "Grants a +4 resistance bonus on all saving throws.",
                  desc: "This richly lined cloak provides a +4 resistance bonus on all saving throws. High-level adventurers prize these cloaks for their superior magical protection against a wide variety of threats."),

            .make("Cloak of Resistance +5", itemType: "Wondrous Item", price: "25,000 gp", weight: "1 lb.", slot: "shoulders",
                  aura: "Strong abjuration", casterLevel: 5,
                  summary: "Grants a +5 resistance bonus on all saving throws.",
                  desc: "This shimmering blue-silver cloak provides the maximum standard resistance bonus on saving throws. It is virtually required equipment for high-level adventurers facing powerful magic."),

            .make("Cloak of Displacement, Minor", itemType: "Wondrous Item", price: "24,000 gp", weight: "1 lb.", slot: "shoulders",
                  aura: "Moderate illusion", casterLevel: 7,
                  summary: "Causes attacks to have a 20% miss chance continuously.",
                  desc: "This dark, shadowy cloak continuously creates a displacement effect, causing melee and ranged attacks to have a 20% miss chance as attackers cannot properly judge the wearer's exact location. This is a continuous effect requiring no activation."),

            .make("Efficient Quiver", itemType: "Wondrous Item", price: "1,800 gp", weight: "2 lbs.", slot: "none",
                  aura: "Moderate conjuration", casterLevel: 9,
                  summary: "Holds 60 arrows, 18 javelins, and 6 bows or similar items in separate extradimensional spaces.",
                  desc: "This quiver has three compartments, each with its own extradimensional space: the first holds 60 objects the size of an arrow, the second holds 18 objects the size of a javelin, and the third holds 6 objects up to 6 feet long. Retrieving any item is a free action."),

            .make("Gauntlets of Ogre Power", itemType: "Wondrous Item", price: "4,000 gp", weight: "4 lbs.", slot: "hands",
                  aura: "Moderate transmutation", casterLevel: 6,
                  summary: "Grants a +2 enhancement bonus to Strength.",
                  desc: "These sturdy iron gauntlets grant a +2 enhancement bonus to the wearer's Strength score. Originally crafted by ogres for their own kind, humanoids who wear them find themselves capable of feats of brute strength well beyond their normal ability."),

            .make("Handy Haversack", itemType: "Wondrous Item", price: "2,000 gp", weight: "5 lbs.", slot: "none",
                  aura: "Moderate conjuration", casterLevel: 9,
                  summary: "Backpack with extradimensional space holding 120 lbs.; retrieval is always a move action.",
                  desc: "This backpack has a large central pouch and two side pouches. The central pouch holds up to 80 pounds (8 cubic feet); each side pouch holds 20 pounds (2 cubic feet). Reaching into any of the pouches for a specific item is always a move action, and the desired item is always found on top."),

            .make("Hat of Disguise", itemType: "Wondrous Item", price: "1,800 gp", weight: "—", slot: "head",
                  aura: "Faint illusion", casterLevel: 1,
                  summary: "Allows the wearer to alter self at will.",
                  desc: "This ordinary-looking hat allows its wearer to alter their appearance at will, as per the alter self spell. The hat itself is illusory when the effect is active, appearing as a hat that matches the new guise. The effect lasts as long as the hat is worn."),

            .make("Headband of Alluring Charisma +2", itemType: "Wondrous Item", price: "4,000 gp", weight: "—", slot: "head",
                  aura: "Moderate transmutation", casterLevel: 8,
                  summary: "Grants a +2 enhancement bonus to Charisma.",
                  desc: "This silken headband grants a +2 enhancement bonus to the wearer's Charisma score, improving social interactions, spells per day for Charisma-based casters, and relevant skills."),

            .make("Headband of Inspired Wisdom +2", itemType: "Wondrous Item", price: "4,000 gp", weight: "—", slot: "head",
                  aura: "Moderate transmutation", casterLevel: 8,
                  summary: "Grants a +2 enhancement bonus to Wisdom.",
                  desc: "This leather headband grants a +2 enhancement bonus to the wearer's Wisdom score, improving Will saves, Perception, and divine spellcasting for Wisdom-based classes."),

            .make("Headband of Vast Intelligence +2", itemType: "Wondrous Item", price: "4,000 gp", weight: "—", slot: "head",
                  aura: "Moderate transmutation", casterLevel: 8,
                  summary: "Grants a +2 enhancement bonus to Intelligence.",
                  desc: "This metal headband grants a +2 enhancement bonus to the wearer's Intelligence score, improving knowledge skills, spells per day for wizards, and qualifying for feats with Intelligence prerequisites. The wearer also gains a bonus language or skill rank."),

            .make("Helm of Brilliance", itemType: "Wondrous Item", price: "125,000 gp", weight: "3 lbs.", slot: "head",
                  aura: "Strong evocation", casterLevel: 13,
                  summary: "Helm set with gems granting fire immunity, multiple spell-like abilities, and radiant light.",
                  desc: "This shining helm is studded with gems that grant its wearer fire resistance 30 and the ability to cast fireball (from rubies), wall of fire (from fire opals), daylight (from opals), and prismatic spray (from diamonds). The wearer also sheds light and undead within 30 feet take 1d6 radiance damage per round."),

            .make("Helm of Comprehending Languages", itemType: "Wondrous Item", price: "5,200 gp", weight: "3 lbs.", slot: "head",
                  aura: "Faint divination", casterLevel: 4,
                  summary: "Continuously grants comprehend languages.",
                  desc: "This unadorned iron helm allows its wearer to understand all spoken and written languages, as per the comprehend languages spell. The effect is continuous and requires no activation. The wearer can read magical writing as well as mundane text."),

            .make("Helm of Telepathy", itemType: "Wondrous Item", price: "27,000 gp", weight: "3 lbs.", slot: "head",
                  aura: "Moderate divination and enchantment", casterLevel: 5,
                  summary: "Allows detect thoughts at will and suggestion 3/day.",
                  desc: "This helm allows the wearer to use detect thoughts at will and to implant a suggestion (Will DC 14 negates) three times per day. The wearer can also communicate telepathically with any creature they can see within 60 feet."),

            .make("Ioun Stone (Dusty Rose Prism)", itemType: "Wondrous Item", price: "5,000 gp", weight: "—", slot: "none",
                  aura: "Moderate divination", casterLevel: 12,
                  summary: "Orbiting stone that grants a +1 insight bonus to AC.",
                  desc: "This dusty rose prism-shaped stone orbits the head of its owner, granting a +1 insight bonus to Armor Class. It glows faintly when active. The insight bonus stacks with all other types of AC bonuses."),

            .make("Ioun Stone (Pale Blue Rhomboid)", itemType: "Wondrous Item", price: "8,000 gp", weight: "—", slot: "none",
                  aura: "Moderate transmutation", casterLevel: 12,
                  summary: "Orbiting stone that grants a +2 enhancement bonus to Strength.",
                  desc: "This pale blue rhomboid orbits its owner and grants a +2 enhancement bonus to Strength. It functions as an enhancement bonus to the ability score, and does not stack with other enhancement bonuses to Strength."),

            .make("Ioun Stone (Scarlet and Blue Sphere)", itemType: "Wondrous Item", price: "8,000 gp", weight: "—", slot: "none",
                  aura: "Moderate transmutation", casterLevel: 12,
                  summary: "Orbiting stone that grants a +2 enhancement bonus to Intelligence.",
                  desc: "This scarlet and blue sphere orbits its owner and grants a +2 enhancement bonus to Intelligence, potentially expanding the owner's knowledge and improving their mental acuity."),

            .make("Ioun Stone (Deep Red Sphere)", itemType: "Wondrous Item", price: "8,000 gp", weight: "—", slot: "none",
                  aura: "Moderate transmutation", casterLevel: 12,
                  summary: "Orbiting stone that grants a +2 enhancement bonus to Dexterity.",
                  desc: "This deep red sphere orbits its owner and grants a +2 enhancement bonus to Dexterity, improving ranged attacks, AC, Reflex saves, and Dexterity-based skills."),

            .make("Necklace of Fireballs (Type I)", itemType: "Wondrous Item", price: "1,650 gp", weight: "—", slot: "neck",
                  aura: "Moderate evocation", casterLevel: 10,
                  summary: "Necklace with 1d6+1 bead charges that each create a fireball when thrown.",
                  desc: "This necklace has several beads that can be detached and thrown as grenades (range increment 10 feet). A Type I has 3 beads: one 5d6 bead (DC 14) and two 3d6 beads (DC 12). All beads detonate simultaneously if the necklace is destroyed."),

            .make("Pearl of Power (1st level)", itemType: "Wondrous Item", price: "1,000 gp", weight: "—", slot: "none",
                  aura: "Strong transmutation", casterLevel: 17,
                  summary: "Allows a spellcaster to recall a 1st-level spell once per day.",
                  desc: "This lustrous white pearl allows a spellcaster to recall one spell of 1st level that they have already cast that day. Once used, the pearl becomes dull until the next day. The spellcaster must hold the pearl and concentrate for 1 full round to recall the spell."),

            .make("Pearl of Power (2nd level)", itemType: "Wondrous Item", price: "4,000 gp", weight: "—", slot: "none",
                  aura: "Strong transmutation", casterLevel: 17,
                  summary: "Allows a spellcaster to recall a 2nd-level spell once per day.",
                  desc: "This large lustrous pearl allows a spellcaster to recall one previously cast 2nd-level spell per day. It is an essential item for arcane spellcasters who frequently expend their most useful mid-level spells early in the day."),

            .make("Pearl of Power (3rd level)", itemType: "Wondrous Item", price: "9,000 gp", weight: "—", slot: "none",
                  aura: "Strong transmutation", casterLevel: 17,
                  summary: "Allows a spellcaster to recall a 3rd-level spell once per day.",
                  desc: "This large, perfectly round pearl allows a spellcaster to recall one 3rd-level spell already cast that day. Highly valued by wizards who rely on dispel magic, fireball, and other key 3rd-level spells."),

            .make("Portable Hole", itemType: "Wondrous Item", price: "20,000 gp", weight: "—", slot: "none",
                  aura: "Strong conjuration", casterLevel: 12,
                  summary: "A cloth that creates a 10-ft.-deep extradimensional cylindrical space.",
                  desc: "This piece of magical cloth unfolds to create a 6-foot-diameter, 10-foot-deep extradimensional space when spread on any surface. It weighs nothing and can be folded to a small size. Items inside are unaffected by time. If placed inside a bag of holding, both are destroyed and their contents are scattered across the Astral Plane."),

            .make("Rope of Climbing", itemType: "Wondrous Item", price: "3,000 gp", weight: "3 lbs.", slot: "none",
                  aura: "Moderate transmutation", casterLevel: 5,
                  summary: "60-ft. rope that can animate and climb on command.",
                  desc: "This 60-foot hempen rope obeys spoken commands. It can animate itself and climb, attach to a surface, coil, or perform other maneuvers. It knots and unknots itself and can hold up to 3,000 pounds. The rope has hardness 0 and 6 hit points."),

            .make("Scarab of Protection", itemType: "Wondrous Item", price: "38,000 gp", weight: "—", slot: "neck",
                  aura: "Strong abjuration and necromancy", casterLevel: 18,
                  summary: "Grants spell resistance 20 and absorbs up to 12 death effects.",
                  desc: "This magical scarab grants the wearer spell resistance 20. Additionally, it can absorb up to 12 death effects (including energy drain, death spells, and negative energy) before being destroyed. Each absorbed effect uses one charge."),

            .make("Stone of Good Luck (Luckstone)", itemType: "Wondrous Item", price: "20,000 gp", weight: "—", slot: "none",
                  aura: "Faint evocation", casterLevel: 5,
                  summary: "Grants a +1 luck bonus on saving throws and skill checks.",
                  desc: "This polished stone is usually a bit of agate or similar mineral. While kept on the owner's person, it grants a +1 luck bonus on saving throws and skill checks. The stone must be carried in a pocket, pouch, or similar location to function."),

            .make("Winged Boots (Wings of Flying)", itemType: "Wondrous Item", price: "54,000 gp", weight: "2 lbs.", slot: "feet",
                  aura: "Moderate transmutation", casterLevel: 9,
                  summary: "Grants a fly speed of 60 ft. (good) for up to 5 minutes, 3/day.",
                  desc: "These boots sprout feathered wings when activated. The wearer gains a fly speed of 60 feet with good maneuverability for up to 5 minutes per activation, usable up to three times per day. The remaining duration recharges at dawn."),

            .make("Gloves of Swimming and Climbing", itemType: "Wondrous Item", price: "6,500 gp", weight: "—", slot: "hands",
                  aura: "Faint transmutation", casterLevel: 5,
                  summary: "Grants a +5 competence bonus on Swim and Climb checks.",
                  desc: "These tight-fitting gloves grant a +5 competence bonus on all Swim checks and all Climb checks. The wearer never tires from swimming or climbing. They are popular among naval adventurers and mountaineers alike."),

            .make("Candle of Invocation", itemType: "Wondrous Item", price: "8,400 gp", weight: "1 lb.", slot: "none",
                  aura: "Strong conjuration", casterLevel: 17,
                  summary: "Candle aligned to a deity that grants +2 caster level to same-aligned clerics and allows gate.",
                  desc: "This slender candle is attuned to a specific deity's alignment. When lit, it grants +2 caster levels to clerics of the same alignment and allows them to cast gate once while the candle burns. The candle burns for 4 hours and cannot be extinguished by normal means."),

            .make("Cape of the Mountebank", itemType: "Wondrous Item", price: "10,080 gp", weight: "1 lb.", slot: "shoulders",
                  aura: "Moderate conjuration", casterLevel: 9,
                  summary: "Allows the wearer to use dimension door once per day.",
                  desc: "This bright red-and-gold cape allows the wearer to use dimension door once per day, teleporting up to 400 feet to any location they can see. The wearer arrives in a puff of smoke and the cape billows dramatically upon arrival."),

            .make("Cloak of the Bat", itemType: "Wondrous Item", price: "26,000 gp", weight: "1 lb.", slot: "shoulders",
                  aura: "Moderate transmutation", casterLevel: 7,
                  summary: "Grants +5 Stealth bonus, blindsense 20 ft., and polymorph into bat 1/day.",
                  desc: "This dark cloak grants a +5 bonus on Stealth checks in dim light or darkness. The wearer also gains blindsense out to 20 feet and can polymorph into a bat once per day (as per the beast shape I spell). The transformation lasts 1 hour or until dismissed."),

            .make("Decanter of Endless Water", itemType: "Wondrous Item", price: "9,000 gp", weight: "2 lbs.", slot: "none",
                  aura: "Moderate conjuration", casterLevel: 9,
                  summary: "Produces fresh or salt water in controlled streams or a powerful geyser.",
                  desc: "This ceramic decanter produces water on command. It can stream 1 gallon per round, fountain 5 gallons per round, or geyser 30 gallons per round (the geyser deals 1d4 bludgeoning damage and can knock creatures prone). The water produced is fresh unless commanded to produce salt water."),

            .make("Folding Boat", itemType: "Wondrous Item", price: "7,200 gp", weight: "4 lbs.", slot: "none",
                  aura: "Moderate transmutation", casterLevel: 6,
                  summary: "Box that transforms into a rowboat or a keelboat on command.",
                  desc: "This item normally appears to be a small wooden box. When a command word is spoken, it unfolds into a 10-foot-long rowboat. A second command transforms it into a 24-foot keelboat with a mast and rudder. A third command returns it to box form."),

            .make("Gem of Seeing", itemType: "Wondrous Item", price: "75,000 gp", weight: "—", slot: "none",
                  aura: "Moderate divination", casterLevel: 10,
                  summary: "Allows the use of true seeing for 10 rounds per day.",
                  desc: "This finely cut and polished gem allows its user to see as though under the effect of a true seeing spell (as per the spell, but without the component requirements) for up to 10 rounds per day. The rounds need not be consecutive."),

            .make("Horn of Blasting", itemType: "Wondrous Item", price: "20,000 gp", weight: "1 lb.", slot: "none",
                  aura: "Strong evocation", casterLevel: 16,
                  summary: "Deals 5d6 sonic damage in a 40-ft. cone and potentially shatters objects.",
                  desc: "This horn can be used twice per day. When blown, it deals 5d6 points of sonic damage in a 40-foot cone (Fortitude DC 16 half). Crystalline creatures take double damage. The horn has a 10% chance per use of exploding, dealing 5d6 damage to all within 10 feet."),

            .make("Instant Fortress", itemType: "Wondrous Item", price: "55,000 gp", weight: "1 lb.", slot: "none",
                  aura: "Strong conjuration", casterLevel: 13,
                  summary: "Small metal cube that expands into a 20-ft. iron tower with battlements.",
                  desc: "This item is a small metal cube, a few inches on a side. When the command word is spoken and it is thrown to the ground, it expands into a 20-foot-square, 30-foot-tall iron tower with arrow slits, a crenellated top, and an iron door. It can hold up to 16 soldiers. It returns to cube form on command."),

            .make("Manual of Bodily Health +1", itemType: "Wondrous Item", price: "27,500 gp", weight: "5 lbs.", slot: "none",
                  aura: "Strong transmutation", casterLevel: 17,
                  summary: "Permanently increases Constitution by 1 when read.",
                  desc: "This tome contains physical exercises and health regimens so effective that reading it grants a permanent +1 inherent bonus to Constitution. The manual is destroyed after being read; its magic cannot be used again. A character can only benefit from each type of inherent bonus once."),

            .make("Necklace of Adaptation", itemType: "Wondrous Item", price: "9,000 gp", weight: "—", slot: "neck",
                  aura: "Moderate transmutation", casterLevel: 7,
                  summary: "Allows the wearer to breathe in any environment and grants immunity to airborne hazards.",
                  desc: "This necklace continually adapts the wearer's breathing to the surrounding environment. The wearer can breathe underwater, in a vacuum, in poisonous gases, in smoke, and in any other environment that does not involve a lack of air molecules. It does not protect against extreme temperatures."),

            .make("Robe of the Archmagi (White)", itemType: "Wondrous Item", price: "75,000 gp", weight: "1 lb.", slot: "body",
                  aura: "Strong varied", casterLevel: 14,
                  summary: "Grants +5 AC, spell resistance 18, +4 saves vs. spells, and +4 to DCs for good arcane casters.",
                  desc: "This simple white robe is one of the most powerful items available to arcane spellcasters of good alignment. It grants a +5 armor bonus to AC, spell resistance 18, a +4 resistance bonus on saves against spells, and a +4 bonus to the DCs of the wearer's spells. Only good-aligned arcane spellcasters can use the white version."),

            .make("Robe of Eyes", itemType: "Wondrous Item", price: "120,000 gp", weight: "1 lb.", slot: "body",
                  aura: "Moderate divination", casterLevel: 11,
                  summary: "Embroidered with eyes that grant all-around vision and see invisibility.",
                  desc: "This robe is covered in embroidered eyes that grant the wearer all-around vision (no flanking or loss of Dex bonus to AC from invisible attackers), see invisibility continuously, and darkvision 120 feet. However, the wearer cannot avert or close their eyes and is dazzled in bright light."),

            .make("Sphere of Annihilation", itemType: "Wondrous Item", price: "150,000 gp", weight: "—", slot: "none",
                  aura: "Strong transmutation", casterLevel: 20,
                  summary: "A globe of nothingness that destroys any matter it contacts.",
                  desc: "This black, spherical hole in space is 2 feet in diameter. Any matter that contacts it (except the talisman of the sphere) is instantly and utterly annihilated. The sphere is controlled mentally by anyone who succeeds on a DC 30 Will save; failure means losing control of it. If two spheres meet, they create a temporary rift to the Far Realm."),

            .make("Tome of Clear Thought +1", itemType: "Wondrous Item", price: "27,500 gp", weight: "5 lbs.", slot: "none",
                  aura: "Strong transmutation", casterLevel: 17,
                  summary: "Permanently increases Intelligence by 1 when read.",
                  desc: "This heavy leather-bound tome contains complex mathematical proofs and logical puzzles. Reading it requires one week of study, after which the reader gains a permanent +1 inherent bonus to Intelligence. The tome loses its magic once read and cannot be used again."),

            .make("Tome of Leadership and Influence +1", itemType: "Wondrous Item", price: "27,500 gp", weight: "5 lbs.", slot: "none",
                  aura: "Strong transmutation", casterLevel: 17,
                  summary: "Permanently increases Charisma by 1 when read.",
                  desc: "This richly illustrated book contains persuasion techniques, social strategies, and charismatic exercises. Reading it requires one week of study, after which the reader gains a permanent +1 inherent bonus to Charisma. The tome is destroyed after reading."),

            .make("Tome of Understanding +1", itemType: "Wondrous Item", price: "27,500 gp", weight: "5 lbs.", slot: "none",
                  aura: "Strong transmutation", casterLevel: 17,
                  summary: "Permanently increases Wisdom by 1 when read.",
                  desc: "This slim volume contains meditations, philosophical treatises, and spiritual exercises. Reading it requires one week of study, after which the reader gains a permanent +1 inherent bonus to Wisdom. The tome is consumed by its magic after use."),

            .make("Well of Many Worlds", itemType: "Wondrous Item", price: "82,000 gp", weight: "—", slot: "none",
                  aura: "Strong conjuration", casterLevel: 17,
                  summary: "Cloth that creates a two-way gate to a random plane when spread on the ground.",
                  desc: "This mysterious item looks just like a portable hole when folded. When unfolded and spread on the ground, it creates a two-way gate to a random plane, functioning in all ways like a gate spell. The destination is random each time and cannot be controlled. It functions once per day."),

            .make("Wind Fan", itemType: "Wondrous Item", price: "5,500 gp", weight: "—", slot: "none",
                  aura: "Faint evocation", casterLevel: 5,
                  summary: "Creates a gust of wind effect once per day.",
                  desc: "This delicate fan can be used to create a gust of wind effect (as the spell) once per day. The strong wind can extinguish unprotected flames, deflect ranged attacks, and push smaller creatures. There is a 1 in 20 chance each use that the fan disintegrates."),

            .make("Gloves of Dexterity +2", itemType: "Wondrous Item", price: "4,000 gp", weight: "—", slot: "hands",
                  aura: "Moderate transmutation", casterLevel: 8,
                  summary: "Grants a +2 enhancement bonus to Dexterity.",
                  desc: "These supple leather gloves grant a +2 enhancement bonus to the wearer's Dexterity score. The fingers are cut away to expose the fingertips, a common design among nimble-fingered rogues and archers."),

            .make("Belt of Dwarvenkind", itemType: "Wondrous Item", price: "14,900 gp", weight: "3 lbs.", slot: "waist",
                  aura: "Strong conjuration and transmutation", casterLevel: 12,
                  summary: "Grants Constitution bonus, darkvision, and dwarven traits to non-dwarves.",
                  desc: "This belt grants a +4 enhancement bonus to Constitution. The wearer also gains darkvision 60 feet (or extends existing darkvision by 30 feet), a +2 bonus on saving throws against poison, spells, and spell-like abilities. Non-dwarven wearers gradually develop dwarven characteristics over time."),

            .make("Slippers of Spider Climbing", itemType: "Wondrous Item", price: "4,800 gp", weight: "—", slot: "feet",
                  aura: "Faint transmutation", casterLevel: 4,
                  summary: "Allows the wearer to climb walls and ceilings as per spider climb.",
                  desc: "These soft cloth slippers grant the wearer the ability to move on vertical surfaces and ceilings at half their normal speed, as per the spider climb spell. They function continuously but require that the hands remain free to maintain the climbing effect."),

            .make("Phylactery of Faithfulness", itemType: "Wondrous Item", price: "1,000 gp", weight: "—", slot: "head",
                  aura: "Faint divination", casterLevel: 1,
                  summary: "Warns the wearer of any action that would violate their alignment or deity's code.",
                  desc: "This item is a small box containing religious scripture. The wearer is immediately warned when about to take an action that would violate their alignment or religious code. The warning comes as a feeling of unease. It requires 1 hour of study to attune to a new wearer."),

            .make("Lantern of Revealing", itemType: "Wondrous Item", price: "30,000 gp", weight: "2 lbs.", slot: "none",
                  aura: "Moderate divination", casterLevel: 5,
                  summary: "Illuminates a 30-ft. radius and reveals invisible creatures and objects.",
                  desc: "This lantern sheds light in a 30-foot radius and reveals the presence of invisible creatures and objects within that area. Invisible creatures and objects glow with a faint aura visible only in the lantern's light. It burns for 6 hours on a flask of oil."),

            .make("Medallion of Thoughts", itemType: "Wondrous Item", price: "12,000 gp", weight: "—", slot: "neck",
                  aura: "Faint divination", casterLevel: 5,
                  summary: "Allows the use of detect thoughts at will.",
                  desc: "This medallion allows the wearer to use detect thoughts at will, as per the spell. Surface thoughts of those within 30 feet can be read (Will DC 13 negates). The wearer can attempt to probe deeper thoughts with concentration as per the spell's normal rules."),

            .make("Periapt of Wisdom +2", itemType: "Wondrous Item", price: "4,000 gp", weight: "—", slot: "neck",
                  aura: "Moderate transmutation", casterLevel: 8,
                  summary: "Grants a +2 enhancement bonus to Wisdom.",
                  desc: "This small gem on a delicate chain grants a +2 enhancement bonus to Wisdom. Clerics, druids, and rangers favor this item for the improvement it provides to their divine spellcasting and Will saves."),

            .make("Periapt of Wound Closure", itemType: "Wondrous Item", price: "15,000 gp", weight: "—", slot: "neck",
                  aura: "Moderate conjuration", casterLevel: 10,
                  summary: "Automatically stabilizes the wearer when dying and doubles natural healing.",
                  desc: "This stone amulet automatically stabilizes any creature wearing it that is reduced to negative hit points. Additionally, the wearer heals at twice the normal natural healing rate (2 hit points per level per 8 hours of rest). It also negates the need for a successful Heal check to stabilize."),

            .make("Rope of Entanglement", itemType: "Wondrous Item", price: "21,000 gp", weight: "5 lbs.", slot: "none",
                  aura: "Strong transmutation", casterLevel: 12,
                  summary: "30-ft. rope that can entangle up to 8 creatures on command.",
                  desc: "This 30-foot-long rope can animate and entangle creatures on command. It attacks up to 8 creatures per round in a 15-foot radius at the end of the rope (touch attack +15). Entangled creatures are treated as if under the effect of an entangle spell. The rope has AC 22 and 20 hit points."),

            .make("Vest of Escape", itemType: "Wondrous Item", price: "5,200 gp", weight: "—", slot: "chest",
                  aura: "Faint conjuration and transmutation", casterLevel: 4,
                  summary: "Grants +4 competence bonus on Escape Artist and enables picking one lock per day.",
                  desc: "This vest has many hidden pockets and compartments. It grants a +4 competence bonus on Escape Artist checks and on Disable Device checks made to pick locks. Once per day, the wearer can attempt to pick any lock as a full-round action without tools."),

        ]
        for item in items {
            try await db.insertItem(item)
        }
    }
}

// MARK: - ItemEntry factory
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
        source: String = "Core Rulebook",
        isPremium: Bool = false
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
