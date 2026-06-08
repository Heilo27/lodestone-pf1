import Foundation

extension SeedDataBuilder {
    func seedSpellsG() async throws {
        try await db.insertSpell(
        .make("Contact Nalfeshnee", school: "Divination", levels: "arcanist 6, cleric 6, oracle 6, sorcerer 6, warpriest 6, witch 6, wizard 6",
                          castingTime: "1 round", components: "V, S, M (powdered sapphire worth 250 gp), F (bejeweled cold iron mirror worth at least 2,000 gp)",
                          range: "personal", area: "", targets: "you",
                          duration: "concentration",
                          savingThrow: "None", sr: false,
                          summary: "When you cast this spell, you fall into a trance and become helpless as long as you continue concentrating. Choose any one Knowledge skill other than arcana or planes.",
                          desc: "When you cast this spell, you fall into a trance and become helpless as long as you continue concentrating. Choose any one Knowledge skill other than arcana or planes. Your mind is placed in telepathic contact with a nalfeshnee demon skilled at that particular Knowledge skill, in addition to arcana and planes. Each round that you continue to concentrate, you may ask the nalfeshnee one question and it will answer as best it can. If you ask a question about arcana or planes, the nalfeshnee has a +23 bonus to the skill check. If you ask about the Knowledge skill you selected, the nalfeshnee has a +20 bonus. It cannot answer questions pertaining to other Knowledge skills—to do so, you must cast the spell again. Contact with Abyssal minds is dangerous, and each time the nalfeshnee answers a question, you suffer 1d4 points of ability drain to Intelligence, Wisdom, or Charisma (determined randomly) unless you make a DC 22 Will save. Each additional question you ask with this spell over the course of a single 24-hour period imparts a cumulative –1 penalty on this saving throw. Chaotic evil spellcasters always gain a +4 bonus on this saving throw.",
                          source: "Demons Revisited", isPremium: true),

                    // // MARK: - Dirty Tactics Toolbox
        )
        try await db.insertSpell(
        .make("Blend with Surroundings", school: "Illusion (Glamer)", levels: "arcanist 1, bard 1, cleric 1, druid 1, hunter 1, oracle 1, shaman 1, skald 1, sorcerer 1, summoner 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 round", components: "V, S, M/DF (a chess piece)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "10 minutes/level",
                          savingThrow: "Fortitude negates (harmless) or Will disbelieves (if interacted with);", sr: true,
                          summary: "This spell changes the appearance of the affected creature so that it better blends in with its surroundings.",
                          desc: "This spell changes the appearance of the affected creature so that it better blends in with its surroundings. As chosen by you, the affected creature takes on the appearance of a statue, furniture, a tree, a bush, a rock, or another object of similar size. As long as the target stays still, it gains a +20 bonus on Stealth checks, and it can use Stealth even if it is being observed. The target’s armor blends in perfectly with the illusory shape, and the target’s armor check penalty on Stealth checks is negated for the duration of the spell. If the target moves at all while this spell is in effect, the spell ends.",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Body Double", school: "Illusion (Glamer)", levels: "arcanist 2, bard 2, bloodrager 2, magus 2, skald 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (two glass beads)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "two creatures; see text",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "Upon casting this spell, choose a primary target and a secondary target, both of which must be within range.",
                          desc: "Upon casting this spell, choose a primary target and a secondary target, both of which must be within range. If the primary target fails or forfeits its saving throw, its appearance, scent, sounds, and mannerisms change to match those of the secondary target. As long as the two targets are of the same size category, they are indistinguishable. As a consequence, if the targets are adjacent and a creature takes an action that would affect one of the targets (such as an attack, a targeted spell, or an area effect), that action has a 50% chance of affecting the other target instead. Any action that would affect both of the creatures affects them both normally. This spell does not deceive creatures that have true seeing. Likewise, a creature that can’t perceive one of the targets is not fooled by this spell (even if the spell fooled that creature earlier), and its attacks, targeted spells, and other actions affect targets as normal.",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Drain Poison", school: "Transmutation", levels: "alchemist 3, antipaladin 3, cleric 3, druid 3, hunter 3, investigator 3, oracle 3, ranger 3, warpriest 3, witch 3",
                          castingTime: "1 standard action", components: "V, S, M/DF (the fang of a poisonous creature)",
                          range: "touch", area: "", targets: "one weapon or a single piece of ammunition",
                          duration: "24 hours",
                          savingThrow: "none;", sr: false,
                          summary: "By touching a weapon against the fang of a poisonous creature and casting this spell, you drain 1 dose of the creature’s poison, which is magically applied to your weapon without risk of poisoning…",
                          desc: "By touching a weapon against the fang of a poisonous creature and casting this spell, you drain 1 dose of the creature’s poison, which is magically applied to your weapon without risk of poisoning yourself. The poison remains on the weapon until either it strikes a creature, you touch the weapon, or you wipe off the poison. It otherwise functions exactly like a dose of a manufactured poison applied to a weapon. You can use this spell with natural as well as manufactured weapons. This spell does not prevent you from exposing yourself to the poison if you roll a natural 1 on an attack roll while the poison is applied to your weapon. The spell has no effect if the creature whose fang is touched is a summoned creature, if it has been dead for more than 1 minute, or if its poison has already been extracted from it.",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Garden of Peril", school: "Conjuration (Creation)", levels: "arcanist 2, druid 2, hunter 2, ranger 2, sorcerer 2, summoner 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (a pinch of spores)",
                          range: "medium (100 ft. + 10 ft./level)", area: "one poisonous mushroom/level, no two of which can be more than 30 ft. apart", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "Fortitude negates;", sr: false,
                          summary: "Vividly colored poisonous mushrooms instantly spring into existence in squares you select.",
                          desc: "Vividly colored poisonous mushrooms instantly spring into existence in squares you select. The mushrooms can appear on any solid surface, even growing horizontally from walls or upside down from the ceiling. Once per round as a move action, starting the round after you cast this spell, you can command the mushrooms to release poisonous spores. Each creature adjacent to a mushroom or in a mushroom’s square must then succeed at a Fortitude save or become sickened for 1d4 rounds. The condition of creatures that fail multiple saving throws does not worsen, but each additional failed saving throw adds 1d4 rounds to the duration the creature is sickened. The mushrooms are Tiny and cannot provide cover, but they are fairly sturdy (AC 7, hp 30, break DC 20). Creatures can move through squares containing mushrooms as normal. When destroyed, a mushroom evaporates and releases one last cloud of spores.",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hide Weapon", school: "Transmutation", levels: "antipaladin 1, arcanist 1, bloodrager 1, hunter 1, inquisitor 1, magus 1, ranger 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 hour/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "Upon casting this spell, a light or one-handed melee weapon in your hand melds with your flesh, accompanied by a disgusting sucking sound.",
                          desc: "Upon casting this spell, a light or one-handed melee weapon in your hand melds with your flesh, accompanied by a disgusting sucking sound. The weapon disappears completely inside your arm, and thereafter for the duration of the spell, you can extend and retract the weapon as a move action. While extended, the weapon remains partially melded with your hand and arm, providing a +5 bonus to your CMD against disarm combat maneuvers. While the weapon is retracted, its shape adjusts to fit inside your arm, and you retain the use of your hand. Spotting the weapon on casual inspection is impossible, but anyone frisking you can attempt a DC 25 Perception check to notice a light weapon or a DC 20 Perception check to notice a one-handed weapon hidden inside your arm. If the weapon grants a bonus on Sleight of Hand checks to hide it (as does a dagger), the bonus is added to the DC to find the item. Anyone who sees you casting this spell doesn’t need to succeed at a Perception check to know you have the hidden weapon. If you cast this spell a second time, you can hide another weapon inside your other arm. You can extend and retract both weapons as part of the same action.",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Invigorating Poison", school: "Transmutation", levels: "alchemist 2, cleric 2, druid 2, hunter 2, investigator 2, oracle 2, shaman 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (an apple seed)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 minutes/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "The body of the target creature gains a metabolic response that allows it to benefit from normally deadly toxins.",
                          desc: "The body of the target creature gains a metabolic response that allows it to benefit from normally deadly toxins. When a poison would cause ability damage to the target creature, the target instead gains a +4 alchemical bonus to that ability score. The spell then immediately ends, but the bonus lasts for a number of minutes equal to the amount of ability damage the poison would have caused. If the poison would deal more than one type of ability damage, each bonus has a separate duration. If the poison has effects other than ability damage (such as unconsciousness or ability drain), these effects apply normally. This spell affects only a single poison; if multiple poisons affect the target simultaneously, this spell prevents only ability damage and grants the appropriate bonuses for the poison that would cause the most damage.",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Poison Breath", school: "Evocation", levels: "cleric 7, druid 6, hunter 6, oracle 7, witch 7",
                          castingTime: "1 standard action", components: "V, S, M/DF (a spider’s mandible)",
                          range: "15 ft.", area: "cone-shaped burst", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "You expel a cone-shaped burst of toxic mist from your mouth, subjecting everyone caught in the area to a deadly poison, as per the poison spell.",
                          desc: "You expel a cone-shaped burst of toxic mist from your mouth, subjecting everyone caught in the area to a deadly poison, as per the poison spell.",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Selective Invisibility", school: "Illusion (Glamer)", levels: "alchemist 3, antipaladin 3, arcanist 3, bard 3, inquisitor 3, investigator 3, magus 3, skald 3, sorcerer 3, summoner 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M/DF (three translucent pebbles)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "you and one other creature",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: true,
                          summary: "Upon casting this spell, you turn invisible, as per the invisibility spell, and you choose a second target.",
                          desc: "Upon casting this spell, you turn invisible, as per the invisibility spell, and you choose a second target. That creature can still see you as though you were not invisible, and you can attack that creature without ending the invisibility effect on you. However, if you attack any other creature, this spell ends. If you cast this spell multiple times, you can attack any of the affected creatures without ending the spell.",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sense Vitals", school: "Divination", levels: "antipaladin 2, arcanist 2, bard 2, hunter 2, ranger 2, skald 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a drop of blood)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "This spell makes your eyes shine blood red and allows you to see the vital areas and weak points of creatures within 30 feet of you as a warm glow.",
                          desc: "This spell makes your eyes shine blood red and allows you to see the vital areas and weak points of creatures within 30 feet of you as a warm glow. This allows you to use any manufactured weapon to make sneak attacks, as the rogue ability of the same name, dealing an additional 1d6 points of damage; this additional damage increases by 1d6 for every 3 caster levels you possess beyond 3rd, to a maximum of +5d6 at 15th level. This additional damage stacks with other sources of precision damage.",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Shifting Shadows", school: "Evocation", levels: "arcanist 3, bard 3, skald 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a drop of ink)",
                          range: "medium (100 ft. + 10 ft./level)", area: "20-ft.-radius emanation centered on a point in space", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none, see text;", sr: false,
                          summary: "Waves of shifting shadows obscure the appearance of all creatures caught within the emanation, making it harder to tell friends from foes.",
                          desc: "Waves of shifting shadows obscure the appearance of all creatures caught within the emanation, making it harder to tell friends from foes. This spell does not cause affected creatures to risk accidentally attacking their allies, but it does require them to concentrate harder to keep track of their allies and foes. While this spell is in effect, every creature in the area can treat any other creature in the area as an allied threatening creature for the purpose of flanking. Further, whenever a creature in the area would provoke an attack of opportunity from an enemy, that creatures’ allies in the area must succeed at a Reflex save or lose one attack of opportunity for that round as they suppress the instinct to attack a vulnerable target that might be an ally. The shadows do not hinder precision-based attacks or create areas of dim light. Creatures under the effect of",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sword to Snake", school: "Transmutation", levels: "arcanist 4, cleric 4, druid 4, hunter 4, oracle 4, shaman 4, sorcerer 4, summoner 4, warpriest 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M/DF (a hair from a spider)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one Medium or smaller item",
                          duration: "1 round/level (D)",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "When you make an undulating gesture using your hand, the target item changes slightly in shape and appearance to resemble a cross between its original form and that of a venomous animal.",
                          desc: "When you make an undulating gesture using your hand, the target item changes slightly in shape and appearance to resemble a cross between its original form and that of a venomous animal. For example, a staff might change to resemble a snake, a shield might change to resemble an enormous venomous beetle, or the hilt of a sword might change to resemble a scorpion’s tail. If this spell is cast on a held item, the wielder adds his Will save bonus to the saving throw. You must be able to see the item to cast this spell on it. The item retains all its properties, but whenever a creature picks up, attacks with, activates, or otherwise manipulates the item (with the exception of dropping the item) after this spell is cast, it animates and bites the creature. The attack is resolved before the action that triggered it. This spell otherwise does not affect the creature’s ability to use the item. If the item is a nonmagical weapon, it has an attack bonus equal to your caster level plus your spellcasting ability score modifier, and its attack deals 1d4 points of piercing damage. If the target item is a magic weapon, it retains any magical qualities, and its enhancement bonus is still added to both the attack roll and the damage roll. A creature that takes damage from the bite is affected as if by a venomous snake’s poison (",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Toxic Rupture", school: "Necromancy", levels: "arcanist 3, druid 3, hunter 3, shaman 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M/DF (a viper’s fang)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one poisonous creature",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates see text;", sr: true,
                          summary: "With a squeezing hand gesture, you cause internal bleeding in the target creature’s venom glands or similar organs.",
                          desc: "With a squeezing hand gesture, you cause internal bleeding in the target creature’s venom glands or similar organs. The target must attempt a saving throw against its own poison using the DC for this spell. If it fails, the creature is poisoned and suffers the full effect of its poison. Any subsequent saving throws that the target must attempt against the poison use the normal DC for the poison rather than this spell’s DC.",
                          source: "Dirty Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Venomous Bite", school: "Transmutation", levels: "alchemist 2, druid 2, hunter 2, investigator 2, ranger 2, shaman 2, summoner 2, witch 2",
                          castingTime: "1 standard action", components: "V, S, M (a vial of injury poison worth at least 75 gp), DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 round/level (D)",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "When you touch the poison vial against the target creature and cast this spell, the vial drains and the target’s teeth become envenomed with the same poison.",
                          desc: "When you touch the poison vial against the target creature and cast this spell, the vial drains and the target’s teeth become envenomed with the same poison. The creature gains the use of 1 dose of the poison for every 5 caster levels you possess (maximum 4 doses). The creature gains immunity to that poison while this spell is in effect. The poison retains its normal properties, and this spell does not alter the DC to resist or cure the poison. Each successful bite attack counts as an expended dose. When all the poison is used, the spell ends. If the target creature doesn’t have a bite attack, or if the target’s bite attack is already poisonous, the spell has no effect. If the target has multiple heads, the spell affects only one bite attack. When this spell ends, any unused poison is harmlessly expelled from the target’s mouth and cannot be used again.",
                          source: "Dirty Tactics Toolbox", isPremium: true),

                    // // MARK: - Dragon Empires Primer
        )
        try await db.insertSpell(
        .make("Call the Void", school: "Evocation", levels: "arcanist 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level (D)",
                          savingThrow: "Reflex for half, see text;", sr: true,
                          summary: "This spell surrounds you with an aura of nothingness that channels the mysterious energies of the Dark Tapestry.",
                          desc: "This spell surrounds you with an aura of nothingness that channels the mysterious energies of the Dark Tapestry. Creatures adjacent to you when this spell is cast and at the start of your turn take 2d6 points of damage. In addition, creatures affected by your aura are fatigued, cannot breathe, and cannot speak or cast spells with somatic components. Creatures adjacent to you are allowed a Reflex save to halve the damage and negate the fatigue effect, but cannot breathe or speak regardless of whether their save is successful as long as they are adjacent to you.",
                          source: "Dragon Empires Primer", isPremium: true),

                    // // MARK: - Dragonslayer's Handbook
        )
        try await db.insertSpell(
        .make("Draconic Suppression", school: "Abjuration", levels: "arcanist 5, sorcerer 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one dragon",
                          duration: "1 round/level (D)",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "A dragon that fails its saving throw cannot use its breath weapon for the duration of the spell and is treated as one age category younger for determining which special abilities it can use.",
                          desc: "A dragon that fails its saving throw cannot use its breath weapon for the duration of the spell and is treated as one age category younger for determining which special abilities it can use. For example, an ancient green dragon would revert to the special abilities of a very old dragon and lose access to its miasma ability and its",
                          source: "Dragonslayer's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Dragon Turtle Shell", school: "Abjuration", levels: "alchemist 3, arcanist 3, cleric 3, druid 2, hunter 2, investigator 3, oracle 3, sorcerer 3, warpriest 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a piece of turtle shell)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "When you are struck by an opponent’s natural attacks, the damage is resolved as if the attack came from a creature one size smaller per 5 caster levels (maximum of four size categories smaller at CL…",
                          desc: "When you are struck by an opponent’s natural attacks, the damage is resolved as if the attack came from a creature one size smaller per 5 caster levels (maximum of four size categories smaller at CL 20th). Refer to Table 3–1 in the",
                          source: "Dragonslayer's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Dragonvoice", school: "Transmutation", levels: "alchemist 2, arcanist 2, bard 2, investigator 2, redmantisassassin 2, skald 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "By magically altering the way your vocal cords create sounds, you can emulate the vocal inflections of dragons.",
                          desc: "By magically altering the way your vocal cords create sounds, you can emulate the vocal inflections of dragons. This grants a +6 circumstance bonus on Charisma checks and Charismarelated skill checks when dealing with dragons. In addition, your voice is much louder than normal, halving the penalties to others’ Perception checks to hear you due to distance, intervening doors, and so on.",
                          source: "Dragonslayer's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Dungeonsight", school: "Divination", levels: "arcanist 5, bard 4, cleric 5, inquisitor 4, oracle 5, skald 4, sorcerer 5, warpriest 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, F (a small glass orb worth 150 gp)",
                          range: "personal", area: "60-ft.-radius emanation", targets: "",
                          duration: "instantaneous",
                          savingThrow: "None", sr: false,
                          summary: "You receive a clear and memorable view of the layout of chambers, barriers, and connecting passages within the area of effect.",
                          desc: "You receive a clear and memorable view of the layout of chambers, barriers, and connecting passages within the area of effect. This spell does not reveal the contents or inhabitants of any of these locations, only the basic architecture of the space. For example, a staircase leading up to a pair of doors would be apparent, but the iron golems guarding the doors would not. This spell does identify the locations of secret doors and hidden passages but gives no clue as to the means of opening or accessing them.",
                          source: "Dragonslayer's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Erode Defenses", school: "Transmutation", levels: "arcanist 3, magus 2, redmantisassassin 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates (see below);", sr: true,
                          summary: "Your spell slowly begins to eat away at the defenses of your target. If the target fails its saving throw, it loses 1 point from any damage reduction and natural armor bonus it may have.",
                          desc: "Your spell slowly begins to eat away at the defenses of your target. If the target fails its saving throw, it loses 1 point from any damage reduction and natural armor bonus it may have. If the initial save was not successful, the target may attempt a new saving throw each round for the duration of the spell or continue to suffer cumulative losses. If the first save fails but a subsequent save succeeds, the eroding effects stop at that point, though any of the penalties already accrued remain until the spell expires. At the end of the spell’s duration, the target’s damage reduction and natural armor bonus immediately return to normal.",
                          source: "Dragonslayer's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Gravity Well", school: "Transmutation", levels: "arcanist 5, druid 6, hunter 6, sorcerer 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (a small lead weight)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "1 round/level (D)",
                          savingThrow: "Fortitude negates;", sr: false,
                          summary: "You bring into being a localized region of increased gravity that crushes a creature to the ground.",
                          desc: "You bring into being a localized region of increased gravity that crushes a creature to the ground. Affected targets weigh twice as much as normal, can move only at half speed, jump only half as far as normal, and can lift and carry only half as much as normal. Any flying target has its maneuverability worsened by two steps (from good to poor, for example; minimum clumsy) and plummets to the ground unless it succeeds at a DC 25 Fly check to remain in the air.",
                          source: "Dragonslayer's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Heart of the Mammoth", school: "Transmutation", levels: "arcanist 8, cleric 8, druid 8, oracle 8, sorcerer 8, witch 8, wizard 8",
                          castingTime: "1 standard action", components: "V, S, F (a fetish of mammoth hair soaked in dragon’s blood)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 round/level",
                          savingThrow: "Will (harmless);", sr: false,
                          summary: "The target creature becomes stronger, hardier, and imbued with the courage of the greatest megafauna of the tundra.",
                          desc: "The target creature becomes stronger, hardier, and imbued with the courage of the greatest megafauna of the tundra. The spell grants a +8 enhancement bonus to Strength and Constitution, immunity to fear, a +4 morale bonus to Will saves, and doubles the critical threat range of all its attacks against creatures of the dragon type (this does not stack with Improved Critical,",
                          source: "Dragonslayer's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Illusory Hoard", school: "Illusion (Phantasm)", levels: "arcanist 5, bard 4, skald 4, sorcerer 5, wizard 5",
                          castingTime: "1 standard action", components: "S, M (an item from the hoard, see below)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "1 hour/level (D)",
                          savingThrow: "Will negates (and see below);", sr: true,
                          summary: "The spell forces the target to believe that nothing in its hoard is missing or has been disturbed.",
                          desc: "The spell forces the target to believe that nothing in its hoard is missing or has been disturbed. This spell fools all the senses, convincing the target that its hoard feels and behaves as it should. Only if the target tries to use an item from this illusory hoard for some other purpose does it receive another saving throw to disbelieve the effects of the spell (a wizard trying to use an illusory wand or a dragon trying to unlock a door with an illusory key). For the purposes of this spell, a hoard is any amount of treasure that is too big to be carried by the treasure’s owner without magical tools such as",
                          source: "Dragonslayer's Handbook", isPremium: true),

                    // // MARK: - Dungeon Denizens Revisited
        )
        try await db.insertSpell(
        .make("Flesh to Ooze", school: "Transmutation (Polymorph)", levels: "arcanist 6, sorcerer 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S, M (alchemical reagents worth 100 gp)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "1 creature or see text",
                          duration: "permanent",
                          savingThrow: "Fortitude negates, Will partial, see text;", sr: false,
                          summary: "This functions like baleful polymorph , except the target becomes an ooze.",
                          desc: "This functions like baleful polymorph , except the target becomes an ooze. A creature of 3 HD or less becomes a gray ooze, 4–9 HD becomes a gelatinous cube or ochre jelly, and 10+ HD becomes a black pudding. Alternatively, instead of a creature you may target a quantity of inert flesh (such as that created by the",
                          source: "Dungeon Denizens Revisited", isPremium: true),

                    // // MARK: - Dungeoneer's Handbook
        )
        try await db.insertSpell(
        .make("Conjure Deadfall", school: "Conjuration (Creation)", levels: "arcanist 4, magus 5, sorcerer 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (fistful of mithral tacks)",
                          range: "medium (100 ft. + 10 ft./level)", area: "see text", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Reflex negates (see text);", sr: true,
                          summary: "You conjure a large metal cube covered in sharp spikes. If you conjure the block so that it appears in midair, it immediately plummets downward onto all creatures below it.",
                          desc: "You conjure a large metal cube covered in sharp spikes. If you conjure the block so that it appears in midair, it immediately plummets downward onto all creatures below it. When you cast this spell, you select the size of the square area you wish it to affect. If you choose to create a deadfall over a single 5-foot square, the block deals 1d6 points of bludgeoning damage per caster level (maximum 15d6) to each creature in the area. A deadfall over a 10-foot square deals 1d6 points of bludgeoning damage per 2 caster levels (maximum 7d6), a deadfall over a 15- foot square deals 1d6 points of bludgeoning damage per 3 caster levels (maximum 5d6), and so on, to a maximum size of a 25- foot square. Only creatures that are on the outer edge of the area affected by a conjure deadfall spell can attempt Reflex saves to avoid the effect; creatures whose space does not touch the edge of the deadfall do not receive a save. In order to deal damage, the conjured deadfall must start at least 10 feet above the tallest creature in the area to be affected. A conjured deadfall is as tall as it is wide, and the spell fails if you attempt to conjure a deadfall in an area already occupied by a creature or object (including the ceiling). Regardless, a deadfall conjured by this spell disappears as soon as it deals damage or strikes the ground.",
                          source: "Dungeoneer's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Create Holds", school: "Transmutation", levels: "arcanist 4, druid 4, hunter 3, ranger 3, redmantisassassin 4, sorcerer 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (handful of pebbles)",
                          range: "medium (100 ft. + 10 ft./level)", area: "path of handholds", targets: "",
                          duration: "1 hour/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You create a path of handholds on earthen, plaster, stone, or wooden walls (not on walls made of metal or other, harder materials).",
                          desc: "You create a path of handholds on earthen, plaster, stone, or wooden walls (not on walls made of metal or other, harder materials). The handholds are created in pairs and are approximately 3 feet apart, located in a specific path indicated by your gestures while casting the spell. The handholds’ path can span up to 30 feet out from you plus an additional 10 feet per 3 caster levels (maximum 90 feet at 18th level). The handholds protrude approximately 6 inches from the wall, measure 10 inches lengthwise, and are perfectly suited for gripping with fingers or claws. At the end of the spell’s duration, any creature being supported by the handholds immediately begins to fall.",
                          source: "Dungeoneer's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Determine Depth", school: "Divination", levels: "arcanist 2, bard 2, druid 2, hunter 2, skald 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "solid surface touched",
                          duration: "concentration, up to 1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "With a touch, you can determine the exact thickness of a wall, ceiling, or other solid barrier, measuring from the point you are touching to the direct opposite side of the barrier in a straight…",
                          desc: "With a touch, you can determine the exact thickness of a wall, ceiling, or other solid barrier, measuring from the point you are touching to the direct opposite side of the barrier in a straight line. You can only detect depths or widths of up to 10 feet per caster level (maximum 200 feet at 20th level); amounts in excess of this limit are detected as being the maximum you are able to detect. So, for example, a 5th-level wizard using this spell on a 60-foot-thick wall would detect that the wall is 50 feet thick. Determine depth can be used on earthen, plaster, stone, or wooden surfaces, but not on walls made of metal or other, harder materials. This spell is useful to casters who want to get an idea of their surroundings, and as a preliminary measure to casting spells such as",
                          source: "Dungeoneer's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Discern Value", school: "Divination", levels: "arcanist 3, bard 3, skald 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, F (platinum monocle worth 100 gp)",
                          range: "60 ft.", area: "cone-shaped emanation", targets: "",
                          duration: "concentration, up to 1 minute/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You can quickly analyze the monetary value of objects and identify which are most valuable to an average trader.",
                          desc: "You can quickly analyze the monetary value of objects and identify which are most valuable to an average trader. You must specify a minimum value to detect when you cast this spell (such as 1 gp, 100 gp, or 1,000 gp). The amount of information revealed depends on how long you study a particular area or subject. 1st Round : Presence or absence of objects worth at least the specified amount.",
                          source: "Dungeoneer's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Nature's Ravages", school: "Necromancy", levels: "cleric 4, oracle 4, warpriest 4, witch 3",
                          castingTime: "1 minute/HD of target", components: "V, S, M/DF (dried maggots)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "corpse of creature whose total number of HD does not exceed your caster level",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "You greatly speed up the decomposition process of a nearby corpse and warp the fibers of time that permeate it, aging the corpse an additional amount of time equal to up to 1 day per 2 caster levels…",
                          desc: "You greatly speed up the decomposition process of a nearby corpse and warp the fibers of time that permeate it, aging the corpse an additional amount of time equal to up to 1 day per 2 caster levels (maximum 10 days at 20th level). This spell prompts all the natural effects of the intended decomposition period, including crumbled clothing, rotted or liquefied flesh, maggot infestations, and the infiltration of any surrounding vegetation. In addition to hindering mundane autopsies and investigations, this spell may effectively prohibit the use of raise dead on the target, though more powerful magic such as resurrection",
                          source: "Dungeoneer's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Nature's Ravages, Greater", school: "Necromancy", levels: "cleric 4, oracle 4, warpriest 4, witch 3",
                          castingTime: "1 minute/HD of target", components: "V, S, M/DF (dried maggots)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "corpse of creature whose total number of HD does not exceed your caster level",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like nature’s ravages , except the target corpse ages a number of years equal to up to 1 year per caster level (maximum 20 years at 20th level).",
                          desc: "This spell functions like nature’s ravages , except the target corpse ages a number of years equal to up to 1 year per caster level (maximum 20 years at 20th level).",
                          source: "Dungeoneer's Handbook", isPremium: true),

                    // // MARK: - Dungeons of Golarion
        )
        try await db.insertSpell(
        .make("Battering Blast", school: "Evocation", levels: "arcanist 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature or unattended object",
                          duration: "instantaneous",
                          savingThrow: "Reflex partial (see text);", sr: true,
                          summary: "You hurl a fist-sized ball of force resembling a sphere of spikes to ram a designated creature or object. You must succeed on a ranged touch attack to strike your target.",
                          desc: "You hurl a fist-sized ball of force resembling a sphere of spikes to ram a designated creature or object. You must succeed on a ranged touch attack to strike your target. On a successful hit, you deal 1d6 points of force damage per two caster levels (maximum 5d6). For every 5 caster levels you possess beyond 5th, you gain a second ball of force. A creature struck by any of these is subject to a bull rush attempt. The force has a Strength modifier equal to your Intelligence, Wisdom, or Charisma modifier (whichever is highest). The CMB for the force’s bull rush uses your caster level as its base attack bonus, adding the force’s Strength modifier and a +10 bonus for each additional blast directed against the same target. Each sphere of force makes its own separate bull rush attempt—if multiple spheres strike one target, you make multiple CMB checks but only take the highest result to determine success. If the bull rush succeeds, the force pushes the creature away from you in a straight line, and the creature must make a Reflex save or fall prone. This spell pushes an unattended object struck by it 20 feet away from you, provided it weighs no more than 25 pounds per level (maximum 250 pounds). This spell cannot move creatures or objects beyond your range. Used on a door or other obstacle, the spell attempts a Strength check to destroy it if the sheer damage inflicted by the spell doesn’t do the job.",
                          source: "Dungeons of Golarion", isPremium: true)
        )
        try await db.insertSpell(
        .make("Undeath Ward", school: "Abjuration", levels: "arcanist 6, cleric 5, inquisitor 4, oracle 5, sorcerer 6, warpriest 5, witch 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S, M/DF (powdered silver)",
                          range: "10 ft.", area: "10-ft.-radius emanantion, centered on you", targets: "",
                          duration: "1 minute/level (D)",
                          savingThrow: "none or Will negates (see text);", sr: true,
                          summary: "You create a pale silver barrier that repels undead. Mindless undead and intelligent undead with fewer Hit Dice than your caster level cannot enter the area or penetrate the barrier.",
                          desc: "You create a pale silver barrier that repels undead. Mindless undead and intelligent undead with fewer Hit Dice than your caster level cannot enter the area or penetrate the barrier. Undead of Hit Dice equal to or greater than your caster level can pass through this barrier by making a successful Will save against the spell, but as they do so, they take 3d6 points of damage. Once an undead creature makes its save against this spell and takes this damage, it can come and go without further penalty. This spell may only be used defensively, not aggressively. Forcing an undeath ward against creatures that the spell keeps at bay collapses the barrier.",
                          source: "Dungeons of Golarion", isPremium: true),

                    // // MARK: - Dwarves of Golarion
        )
        try await db.insertSpell(
        .make("Ancestral Communion", school: "Divination", levels: "bard 2, cleric 2, oracle 2, skald 2, warpriest 2",
                          castingTime: "1 minute", components: "V, S, F/DF (stone or metal image of your ancestor)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "You contact the spirits of your ancestors and use their great wisdom to bolster your own knowledge. Consulting with the spirits is a full-round action.",
                          desc: "You contact the spirits of your ancestors and use their great wisdom to bolster your own knowledge. Consulting with the spirits is a full-round action. If you consult with the spirits before making a Knowledge check, you gain a +4 insight bonus on the check. If you have already failed at a Knowledge check, you may consult with your ancestors and make another attempt. The insight bonus on these checks increases to +6 at caster level 7th and +8 at caster level 11th. You may consult with the spirits for this purpose as often as you like while the spell remains in effect. Only you can hear the spirits speak to you.",
                          source: "Dwarves of Golarion", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ancestral Gift", school: "Conjuration (Summoning)", levels: "bard 4, cleric 4, oracle 4, skald 4, warpriest 4",
                          castingTime: "1 standard action", components: "V, S, F/DF (stone or metal image of your ancestor)",
                          range: "personal", area: "magical weapon", targets: "",
                          duration: "10 minutes/level",
                          savingThrow: "None", sr: false,
                          summary: "A ghostly manifestation of one of your ancestors appears before you bearing a weapon of your choice in its hands. The weapon may be any simple, martial, or dwarven weapon.",
                          desc: "A ghostly manifestation of one of your ancestors appears before you bearing a weapon of your choice in its hands. The weapon may be any simple, martial, or dwarven weapon. It has a +1 enhancement bonus and one weapon special ability (your choice) from the Pathfinder RPG Core Rulebook with a price equivalent to a +1 bonus (if the weapon is a double weapon, the ability and the enhancement bonus only apply to one end, or the weapon can have a +1 enhancement bonus on both ends but no other magical abilities). You may use the weapon as if you were proficient in it. The weapon may not be wielded by anyone else, and if removed from your grasp, it vanishes and the spell ends immediately. If you conjure a weapon with the",
                          source: "Dwarves of Golarion", isPremium: true)
        )
        try await db.insertSpell(
        .make("Bloodsworn Retribution", school: "Necromancy", levels: "cleric 6, hunter 4, oracle 6, paladin 4, ranger 4, warpriest 6 (Dranngvit)",
                          castingTime: "1 round", components: "V, S, M (your blood)",
                          range: "personal", area: "", targets: "you",
                          duration: "special (see text)",
                          savingThrow: "None", sr: false,
                          summary: "When you cast this spell, you cut yourself and swear an oath of retribution on your own blood. You decide how much damage you want to take from this attack, up to 25 points.",
                          desc: "When you cast this spell, you cut yourself and swear an oath of retribution on your own blood. You decide how much damage you want to take from this attack, up to 25 points. This damage cannot be healed for as long as the spell is in effect. Anytime you perform an attack, save, or check that is directly related to the oath and brings you closer to the fulfillment of that oath, you gain a morale bonus to that roll equal to the number of hit points of damage you took from the oath divided by 5. The GM is the final arbiter over whether or not an action qualifies for this bonus. When you fulfill the oath (or choose to forsake it), the spell ends, and the lost hit points can be healed as normal. For example, a notorious bandit leader killed Stigur’s brother, and Stigur wants to avenge his brother’s death. Stigur casts this spell and sacrifices 20 hit points. Thereafter Stigur gains a +4 morale bonus on attack rolls against the bandit leader’s minions, saves against spells from said minions, Intimidate checks to coerce an informant to tell him where the bandit leader is camped, and so on.",
                          source: "Dwarves of Golarion", isPremium: true)
        )
        try await db.insertSpell(
        .make("Dwarven Veil", school: "Transmutation", levels: "cleric 2, oracle 2, paladin 2, warpriest 2 (Bolka)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "10 minutes/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell enhances the target’s dwarven or dwarf-like qualities, making it appear more attractive, personable, and worthy of respect and admiration by dwarves.",
                          desc: "This spell enhances the target’s dwarven or dwarf-like qualities, making it appear more attractive, personable, and worthy of respect and admiration by dwarves. The target is still recognizable as itself. The target gains a +2 circumstance bonus to checks to influence dwarves (such as Diplomacy, Intimidate, and so on).",
                          source: "Dwarves of Golarion", isPremium: true)
        )
        try await db.insertSpell(
        .make("Invigorating Repose", school: "Conjuration (Healing)", levels: "cleric 5, oracle 5, warpriest 5 (Magrim)",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "1 hour or until discharged",
                          savingThrow: "None", sr: false,
                          summary: "This spell enhances your spells that bring the dead back to life. If you cast raise dead , the target creature is restored to full hit points. If you cast",
                          desc: "This spell enhances your spells that bring the dead back to life. If you cast raise dead , the target creature is restored to full hit points. If you cast",
                          source: "Dwarves of Golarion", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mighty Strength", school: "Transmutation", levels: "cleric 4, oracle 4, paladin 4, warpriest 4 (Trudd)",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "As bull’s strength , except it grants a +8 enhancement bonus to Strength.",
                          desc: "As bull’s strength , except it grants a +8 enhancement bonus to Strength.",
                          source: "Dwarves of Golarion", isPremium: true)
        )
        try await db.insertSpell(
        .make("Oath of Justice", school: "Necromancy", levels: "cleric 3, oracle 3, paladin 2, warpriest 3 (Kols)",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "two creatures touched",
                          duration: "permanent (see text)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell seals a solemn vow between two creatures. When this spell is cast, the targets must clasp hands and swear their oath in Kols’s name.",
                          desc: "This spell seals a solemn vow between two creatures. When this spell is cast, the targets must clasp hands and swear their oath in Kols’s name. The spell functions like mark of justice , except as noted above and rather than being cursed, the oath-breaker gains a mark on the face indicating to all dwarves who see it that the target has broken a sacred oath, which gives the oath-breaker a –4 penalty to influence dwarves. The mark can be removed as described in the",
                          source: "Dwarves of Golarion", isPremium: true)
        )
        try await db.insertSpell(
        .make("Peacemaker's Parley", school: "Enchantment (Charm)", levels: "cleric 2, oracle 2, warpriest 2 (Grundinnar)",
                          castingTime: "1 swift action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "creatures in a 20-ft.-radius spread", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You can attempt to influence unfriendly or hostile creatures, altering their attitudes toward you.",
                          desc: "You can attempt to influence unfriendly or hostile creatures, altering their attitudes toward you. After casting, make a Diplomacy check against the creatures as a free action; you gain a +2 sacred bonus on this check against creatures that failed their saves against the spell. Even if you favorably manipulate the attitude of the affected targets, they quickly revert to their previous attitude if threatened or treated poorly.",
                          source: "Dwarves of Golarion", isPremium: true)
        )
        try await db.insertSpell(
        .make("Planned Assault", school: "Transmutation", levels: "cleric 3, hunter 4, oracle 3, paladin 3, ranger 4, warpriest 3 (Angradd)",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one creature/level, no two of which can be more than 30 ft. apart", targets: "",
                          duration: "1 minute/level or until discharged",
                          savingThrow: "none;", sr: false,
                          summary: "This spell increases the effectiveness of a planned action. If the targets spend at least 1 minute studying a situation, they receive bonuses to their first actions in response to the situation.",
                          desc: "This spell increases the effectiveness of a planned action. If the targets spend at least 1 minute studying a situation, they receive bonuses to their first actions in response to the situation. All targets must declare in advance what their intended actions are. If they perform those actions, they receive a +2 sacred bonus to AC, saving throws, and checks for the first round. This bonus increases to +4 at 10th level and +6 at 15th level. For example, the PCs discover a camp of orcs; the PC cleric casts tactical assault , the group spends 1 minute analyzing the layout of the camp, and then declares its actions. As long as the PCs stick to the plan, they gain a +2 morale bonus to AC, saving throws, and all actions for the first round.",
                          source: "Dwarves of Golarion", isPremium: true)
        )
        try await db.insertSpell(
        .make("Rune of Durability", school: "Transmutation", levels: "arcanist 3, redmantisassassin 3, sorcerer 3, wizard 3",
                          castingTime: "1 minute", components: "V, S, M (iron fillings)",
                          range: "touch", area: "", targets: "weapon touched",
                          duration: "permanent",
                          savingThrow: "none;", sr: false,
                          summary: "You inscribe an angular rune upon the surface of a weapon, increasing its hit points.",
                          desc: "You inscribe an angular rune upon the surface of a weapon, increasing its hit points. A weapon that bears this rune multiplies its hit points by 2, as if it were one size category larger than it actually is. Placing more than one rune of this type on a weapon has no effect.",
                          source: "Dwarves of Golarion", isPremium: true)
        )
        try await db.insertSpell(
        .make("Rune of Warding", school: "Abjuration", levels: "arcanist 3, sorcerer 3, wizard 3",
                          castingTime: "1 hour", components: "V, S, M (powdered adamantine, diamond, or mithral worth 200 gp)",
                          range: "touch", area: "", targets: "doorway or portal touched",
                          duration: "permanent until discharged (D)",
                          savingThrow: "Reflex half;", sr: true,
                          summary: "You inscribe a series of runes upon the surface of a door or around the border of an entryway. They function as a glyph of warding (blast glyph), though unlike a",
                          desc: "You inscribe a series of runes upon the surface of a door or around the border of an entryway. They function as a glyph of warding (blast glyph), though unlike a",
                          source: "Dwarves of Golarion", isPremium: true)
        )
        try await db.insertSpell(
        .make("See Through Stone", school: "Divination", levels: "druid 4, hunter 3, ranger 3",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "concentration, up to 1 round/level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You gain the ability to see through solid rock as if it were transparent glass. You may see through 1 foot of stone per caster level.",
                          desc: "You gain the ability to see through solid rock as if it were transparent glass. You may see through 1 foot of stone per caster level. You see within the stone as if you were looking at the area in normal light, even if there is no illumination, though low-light vision and darkvision have no effect on your ability to see through stone. Metal at least 1 inch thick or wood or dirt at least 3 feet thick blocks your vision. The spell does not negate concealment for those creatures hiding behind stone objects (the stone is still an obstacle to your attacks).",
                          source: "Dwarves of Golarion", isPremium: true)
        )
        try await db.insertSpell(
        .make("Summon Ancestral Guardian", school: "Conjuration (Summoning)", levels: "bard 3, cleric 3, oracle 3, skald 3, warpriest 3",
                          castingTime: "1 standard action", components: "V, S, F/DF (stone or metal image of your ancestor)",
                          range: "medium (100 ft. + 10 ft./level)", area: "two summoned ancestor spirits", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: true,
                          summary: "You call the spirits of two ancestors to manifest in the mortal world and attack your enemies.",
                          desc: "You call the spirits of two ancestors to manifest in the mortal world and attack your enemies. Each appears as a transparent image of a powerful, wise dwarf armed with a traditional dwarven weapon of your choice. These spirits move and attack at your direction, each having the abilities of a spiritual weapon , except they can attack different targets and deal physical damage (bludgeoning, piercing, or slashing, according to the weapon the spirit wields) instead of force damage. Like creatures conjured with a",
                          source: "Dwarves of Golarion", isPremium: true)
        )
        try await db.insertSpell(
        .make("Tactical Formation", school: "Abjuration", levels: "cleric 3, hunter 4, oracle 3, paladin 3, ranger 4, warpriest 3 (Torag)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "up to one creature/level, no two of which may be more than 30 ft. apart", targets: "",
                          duration: "10 minutes/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell increases the effectiveness of a group’s formation in battle.",
                          desc: "This spell increases the effectiveness of a group’s formation in battle. When cast, all creatures under the effect of the spell must be adjacent to one another, forming an unbroken chain of squares (which may include creatures sharing the same square). This chain does not need to be a straight line. Each target in the chain receives a +2 deflection bonus to AC as long as the targets stay adjacent to at least one other creature affected by the spell; moving more than 5 feet from another target ends the spell with respect to that creature only. For example, a cleric could cast it on himself and four dwarves blocking a 20-foot-wide corridor; the cleric can move freely from the left side of the formation to the right side (whether in front of or behind the other targets) and not break the spell as long as he stays within 5 feet of at least one of them.",
                          source: "Dwarves of Golarion", isPremium: true)
        )
        try await db.insertSpell(
        .make("Watchful Eye", school: "Abjuration", levels: "cleric 1, oracle 1, paladin 1, warpriest 1 (Folgrit)",
                          castingTime: "1 standard action", components: "V, S, F (a pair of silver or gold rings worth 10 gp, worn by both you and the target)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell emulates Folgrit’s motherly protection. It functions as shield other , except as noted above, and you must maintain line of effect to the target.",
                          desc: "This spell emulates Folgrit’s motherly protection. It functions as shield other , except as noted above, and you must maintain line of effect to the target.",
                          source: "Dwarves of Golarion", isPremium: true),

                    // // MARK: - Elemental Master's Handbook
        )
        try await db.insertSpell(
        .make("Carrying Wind", school: "Conjuration", levels: "druid 3, hunter 3, shaman 3",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "10 minutes/level",
                          savingThrow: "None", sr: false,
                          summary: "When you cast this spell, a wind spirit envelopes you and carries you with it at your direction. You gain a +10-foot enhancement bonus to your base speed and fly speed while this spell is in effect.",
                          desc: "When you cast this spell, a wind spirit envelopes you and carries you with it at your direction. You gain a +10-foot enhancement bonus to your base speed and fly speed while this spell is in effect. If you don’t have a fly speed, you instead gain a fly speed of 10 feet with poor maneuverability. If your caster level is 10th–14th, the enhancement bonus to these speeds is +20 feet (if applicable, your temporary fly speed is 20 feet with average maneuverability). If your caster level is 15th or higher, the enhancement bonus to these speeds is +30 feet (if applicable, your temporary fly speed is 30 feet with average maneuverability).",
                          source: "Elemental Master's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Expel Blood", school: "Conjuration", levels: "arcanist 7, sorcerer 7, summoner 6, summoner (unchained) 6, witch 7, wizard 7",
                          castingTime: "1 round", components: "V, S, M (a drop of blood from each of three different creatures)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one Small or larger living creature",
                          duration: "instantaneous and 1 round/level; see text",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "You animate a portion of the target’s blood, causing it to force itself out of the victim’s body and form a corrupted water elemental.",
                          desc: "You animate a portion of the target’s blood, causing it to force itself out of the victim’s body and form a corrupted water elemental. The target takes 2d4 points of Constitution damage unless it succeeds at a Fortitude saving throw. Additionally, if the target fails the saving throw, blood (or an analogous internal fluid, such as ichor) pours from the target’s body and pools in an empty adjacent square of your choice. The fluids immediately form into a fiendish water elemental ( Pathfinder RPG Bestiary 294, 126) of the same size as the target (but not larger than a Large fiendish water elemental). This fiendish water elemental does not have the vortex ability, but it has the blood drain special attack (",
                          source: "Elemental Master's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Lightning Conductor", school: "Transmutation", levels: "arcanist 3, bloodrager 2, druid 3, hunter 3, magus 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M/DF (a miniature metal rod)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "You become capable of absorbing electricity with your body. For the duration, you absorb all electricity damage dealt to you until you have stored a total of 18 points of damage.",
                          desc: "You become capable of absorbing electricity with your body. For the duration, you absorb all electricity damage dealt to you until you have stored a total of 18 points of damage. Any excess damage affects you as normally. The energy remains stored until it is expended or the spell expires. If you have at least 6 points of damage stored, you can expend all the energy stored in you as a swift action, charging your hand or a metal weapon in your hand. As a standard action while your hand is charged, you can make a melee touch attack that doesn’t provoke attacks of opportunity, or you can shoot the energy as a ray with a range of 30 feet. If the attack hits, you deal 1d6 points of electricity damage for every 6 points stored and the energy is expended (any remaining points are wasted). A weapon charged with this energy deals the damage as extra damage the first time you score a hit with the weapon. If your hand or weapon is still charged at the end of your turn, or if the charged weapon leaves your hand before the end of the turn, the energy dissipates harmlessly. Once you have spent the absorbed energy, or if the absorbed energy dissipates, you can absorb more electricity damage. The maximum amount of damage you can store in your body at a time increases by 6 points for every 2 levels beyond 5th (to a maximum of 60 points of damage at 19th level). If you are immune to electricity or have any amount of electricity resistance, you cannot absorb or expend energy with this spell.",
                          source: "Elemental Master's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Rising Water", school: "Conjuration", levels: "arcanist 4, bloodrager 3, druid 4, hunter 3, magus 4, occultist 4, psychic 4, ranger 3, shaman 4, sorcerer 4, summoner 4, summoner (unchained) 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (a lily pad)",
                          range: "medium (100 ft. + 10 ft./level)", area: "cylinder (20-ft. radius, 10 ft. high)", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You conjure a cylinder of calm water on an area of solid ground or on top of a body of water.",
                          desc: "You conjure a cylinder of calm water on an area of solid ground or on top of a body of water. The water forms quickly but displaces only air; it doesn’t push away objects or creatures, though anything in the area when the spell is cast is submerged. Unconscious air-breathing creatures caught in the area immediately begin to drown, but other air-breathing creatures can hold their breath while in the cylinder. Movement through the cylinder at normal speed requires a successful DC 10 Swim check (otherwise, creatures move at one-quarter speed). If conjured in an area with insufficient room for the entire cylinder, the cylinder attains its maximum possible size. It retains its shape in defiance of gravity for the spell’s duration, and any creature can enter or exit the cylinder’s sides as easily as stepping into or out of a pool of ordinary water. The water disappears at the end of the spell’s duration, so creatures swimming in the water immediately fall to the ground.",
                          source: "Elemental Master's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Second Wind", school: "Conjuration (Healing)", levels: "antipaladin 3, cleric 3, hunter 3, inquisitor 3, oracle 3, paladin 3, ranger 3, warpriest 3",
                          castingTime: "1 swift action or 1 immediate action; see text", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "instantaneous",
                          savingThrow: "None", sr: false,
                          summary: "You can cast this spell only when you have fewer than one-quarter of your total hit points. With a gasping utterance, you summon invigorating air to fill your lungs.",
                          desc: "You can cast this spell only when you have fewer than one-quarter of your total hit points. With a gasping utterance, you summon invigorating air to fill your lungs. You heal 2d8 points of damage + 1 point per caster level (maximum +10). You can cast this spell either as a swift action on your turn or as an immediate action when you are brought to below 0 hit points. If you do not breathe, you can’t benefit from this spell.",
                          source: "Elemental Master's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Spindrift Spritz", school: "Conjuration (Healing)", levels: "cleric 2, druid 2, hunter 1, inquisitor 2, oracle 2, paladin 1, ranger 1, shaman 2, spiritualist 2, warpriest 2",
                          castingTime: "1 immediate action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You can cast this spell only as a response to a target attempting a saving throw against an effect that would cause the fatigued, shaken, sickened, or staggered conditions.",
                          desc: "You can cast this spell only as a response to a target attempting a saving throw against an effect that would cause the fatigued, shaken, sickened, or staggered conditions. The target can roll its saving throw twice and take the higher result. Spindrift Spritz, Mass",
                          source: "Elemental Master's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Spindrift Spritz, Mass", school: "Conjuration (Healing)", levels: "cleric 2, druid 2, hunter 1, inquisitor 2, oracle 2, paladin 1, ranger 1, shaman 2, spiritualist 2, warpriest 2",
                          castingTime: "1 immediate action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions as spindrift spritz , except as noted above.",
                          desc: "This spell functions as spindrift spritz , except as noted above.",
                          source: "Elemental Master's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Wall of Mist", school: "Conjuration (Creation)", levels: "arcanist 3, magus 3, shaman 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "wall of thin fog 10 ft. long/level or dense fog 5 ft. long/level; either form 20 ft. high", targets: "",
                          duration: "1 minute/level",
                          savingThrow: "none;", sr: false,
                          summary: "With a whispered incantation, you conjure a stationary vertical wall of misty vapor. The wall is straight, is 1 foot thick, and has a length up to 10 feet per caster level.",
                          desc: "With a whispered incantation, you conjure a stationary vertical wall of misty vapor. The wall is straight, is 1 foot thick, and has a length up to 10 feet per caster level. The wall obscures vision, granting concealment (20% miss chance) against creatures on the other side of the wall. A creature that shares a square with the wall counts as being on neither side of the wall and neither benefits nor suffers from the concealment. Alternatively, you can create a wall with increased density, but doing so reduces the maximum length of the wall to 5 feet per caster level. In addition to granting concealment, this denser wall also hinders movement. Any creature moving into or attempting to pass through the wall must succeed at a DC 15 Strength check or be entangled (and unable to move) until the start of its next turn. A creature that starts its turn in the wall can freely move within it or move out of the wall in either direction. Only a severe or stronger wind (31+ mph) disperses the wall, and it does so in 1 round.",
                          source: "Elemental Master's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Waterproof", school: "Abjuration", levels: "alchemist 1, arcanist 1, bard 1, bloodrager 1, cleric 1, druid 1, hunter 1, investigator 1, magus 1, oracle 1, ranger 1, shaman 1, skald 1, sorcerer 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "one touched creature, or one touched object of up to 10 lbs./level",
                          duration: "24 hours",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell renders a touched object waterproof for the duration of the spell. The object must be no larger than 10 pounds per caster level.",
                          desc: "This spell renders a touched object waterproof for the duration of the spell. The object must be no larger than 10 pounds per caster level. The spell protects the object from any mundane liquids (such as alcohol or oil) but not from magically created liquids. If this spell is cast on a creature, all of that creature’s equipment is rendered waterproof as long as it is carried by the target creature. If the creature drops or discards an item, the item is no longer protected by this spell, even if the targeted creature picks it up later. Mundane combustibles under the effects of this spell still need exposure to air in order to ignite.",
                          source: "Elemental Master's Handbook", isPremium: true),

                    // // MARK: - Faction Guide
        )
        try await db.insertSpell(
        .make("Arcane Reinforcement", school: "Transmutation", levels: "arcanist 3, redmantisassassin 3, sorcerer 3, wizard 3",
                          castingTime: "1 round", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "concentration (up to 8 hours)",
                          savingThrow: "None", sr: false,
                          summary: "You cast this spell as you begin crafting an item using a Craft skill, and add your Spellcraft ranks to Craft checks made to create that item.",
                          desc: "You cast this spell as you begin crafting an item using a Craft skill, and add your Spellcraft ranks to Craft checks made to create that item. As part of concentrating on the spell, you must continue chanting the verbal components, pausing at most for a few seconds at a time to speak, chew, and so on. If the crafting takes more than 1 day to complete, you must cast the spell each day to gain its benefit. This spell originated among wizards of the Arcanamirium, though the Pathfinder Society also uses it.",
                          source: "Faction Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Chastise", school: "Transmutation", levels: "arcanist 1, bard 1, redmantisassassin 1, skald 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "You gain a +5 bonus on Bluff, Diplomacy, and Intimidate checks to convince a listener that they will get in trouble with their superiors or with the law if they don’t do what you ask.",
                          desc: "You gain a +5 bonus on Bluff, Diplomacy, and Intimidate checks to convince a listener that they will get in trouble with their superiors or with the law if they don’t do what you ask. This spell is primarily used by the Eagle Knights, though they did not create it; Hellknights also use it extensively to gather information and foster cooperation.",
                          source: "Faction Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hibernate", school: "Necromancy", levels: "druid 1, hunter 1",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 minute/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You place a willing subject into a cataleptic state. It remains aware of its surroundings but is paralyzed, appearing dead unless observers make a DC 20 Heal check.",
                          desc: "You place a willing subject into a cataleptic state. It remains aware of its surroundings but is paralyzed, appearing dead unless observers make a DC 20 Heal check. Hibernate delays the effects of poison, disease, and bleed effects for the spell’s duration, and half of any hit point damage suffered by the subject is converted to nonlethal damage. This spell originated with the Green Faith, but has spread to all other druidic religions.",
                          source: "Faction Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sotto Voce", school: "Necromancy", levels: "arcanist 0, bard 1, cleric 0, oracle 0, skald 1, sorcerer 0, warpriest 0, wizard 0",
                          castingTime: "1 standard action", components: "V",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one humanoid creature of 4 HD or less",
                          duration: "1 round",
                          savingThrow: "Will negates;", sr: true,
                          summary: "Your dry, rasping whisper fills a living creature of 4 or fewer Hit Dice with unnatural dread. The affected creature must make a Will save or be shaken for 1 round.",
                          desc: "Your dry, rasping whisper fills a living creature of 4 or fewer Hit Dice with unnatural dread. The affected creature must make a Will save or be shaken for 1 round. This spell originated among the followers of the Whispering Way, but necromancers and other intimidating folk outside that group are known to use it.",
                          source: "Faction Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Summon Elemental Steed", school: "Conjuration (Summoning)", levels: "druid 9",
                          castingTime: "10 minutes", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one chariot", targets: "",
                          duration: "10 minutes/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You summon a greater elemental (air, earth, fire, or water) bound in the form of a mighty chariot that moves at your command and can carry up to nine Medium creatures.",
                          desc: "You summon a greater elemental (air, earth, fire, or water) bound in the form of a mighty chariot that moves at your command and can carry up to nine Medium creatures. Passengers inside are not harmed by the elemental, and can see, breathe, and act normally, suffering no environmental damage even when the elemental chariot is flying, underwater, burrowing, or using earth glide. Passengers are not otherwise protected, though the elemental chariot does provide cover like a normal chariot. The elemental keeps all of its statistics and abilities, except it loses its slam attacks and gains a trample attack ( Pathfinder RPG Bestiary 305). When you use a summoning spell to summon an air, earth, fire, or water creature, it is a spell of that type. This spell is almost exclusively used by the Green Faith.",
                          source: "Faction Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Tripvine", school: "Transmutation", levels: "arcanist 1, bard 1, druid 1, hunter 1, redmantisassassin 1, skald 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "10-foot-long rope or vine",
                          duration: "10 minutes/level",
                          savingThrow: "Reflex negates;", sr: false,
                          summary: "You animate a rope, vine, or similar object so that it attempts to trip any creature that comes near. The rope attacks anything in a 10-foot-square area you designate.",
                          desc: "You animate a rope, vine, or similar object so that it attempts to trip any creature that comes near. The rope attacks anything in a 10-foot-square area you designate. The rope does not provoke an attack of opportunity. Its CMB is equal to your caster level +2. A tripped target that was running, jumping, or charging takes 1d6 points of nonlethal damage. Creatures aware of the tripvine gain a +4 bonus to their CMD against it. The Green Faith created this spell, but it is now common.",
                          source: "Faction Guide", isPremium: true),

                    // // MARK: - Faction Guide, Osirion, Land of the Pharaohs
        )
        try await db.insertSpell(
        .make("Canopic Conversion", school: "Necromancy", levels: "arcanist 9, cleric 9, oracle 9, sorcerer 9, wizard 9",
                          castingTime: "1 round", components: "V, S, F (four alabaster canopic jars worth 100 gp each), M (black onyx worth 100 gp per hit die of the target)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living humanoid",
                          duration: "instantaneous and see text",
                          savingThrow: "Fortitude half;", sr: true,
                          summary: "This spell eviscerates the target, drawing forth its life essence as well as its internal organs. The target takes 1d6 hit points of damage per caster level (maximum 20d6).",
                          desc: "This spell eviscerates the target, drawing forth its life essence as well as its internal organs. The target takes 1d6 hit points of damage per caster level (maximum 20d6). If this damage kills the target, the spell pulls the creature’s organs into a set of 4 canopic jars and seals them; 1d4 rounds later, the corpse revives as a mummy (if 8 HD or fewer) or an advanced mummy (if 9 HD or more). The mummy is not under your control, but the canopic jars give the bearer certain powers over it. Anyone holding one of the jars can communicate with the mummy as if the two shared a common language. The bearer gains the benefits of protection from evil",
                          source: "Faction Guide, Osirion, Land of the Pharaohs", isPremium: true)
        )
        try await db.insertSpell(
        .make("Tomb Legion", school: "Necromancy", levels: "arcanist 8, cleric 8, oracle 8, sorcerer 8, wizard 8",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "three or more advanced mummies, no two of which can be more than 30 ft. apart; see text", targets: "",
                          duration: "7 days or 7 months (D); see text",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like shambler , except that it calls into existence 1d4+2 advanced mummies rather than shambling mounds.",
                          desc: "This spell functions like shambler , except that it calls into existence 1d4+2 advanced mummies rather than shambling mounds. Though the spell has fallen out of favor among the Risen Guard because the Ruby Prince frowns on the use of undead, this spell is popular among followers of the Whispering Way.",
                          source: "Faction Guide, Osirion, Land of the Pharaohs", isPremium: true),

                    // // MARK: - Faiths of Corruption
        )
        try await db.insertSpell(
        .make("Vampiric Hunger", school: "Necromancy (Polymorph)", levels: "antipaladin 3, arcanist 3, cleric 3, druid 3, hunter 3, oracle 3, sorcerer 3, warpriest 3, witch 3, wizard 3",
                          castingTime: "1 round", components: "V, S",
                          range: "touch", area: "", targets: "one creature",
                          duration: "1 minute/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "The target of this spell grows the fangs of a vampire, as well as a thirst for blood.",
                          desc: "The target of this spell grows the fangs of a vampire, as well as a thirst for blood. For the duration of this spell, the target gains the ability to drain an opponent’s blood during a grapple; if the target establishes or maintains a pin, it drains blood, dealing 1d4 points of Constitution damage. Each round it drains blood in this way, the target heals 5 hit points or gains 5 temporary hit points for the duration of the spell (up to a maximum number of temporary hit points equal to its full normal hit points). If the target does not drain blood in this way while under the effects of this spell, it becomes exhausted at the end of the spell’s duration.",
                          source: "Faiths of Corruption", isPremium: true),

                    // // MARK: - Faiths of Purity
        )
        try await db.insertSpell(
        .make("Trail of the Rose", school: "Illusion (Phantasm)", levels: "bard 2, cleric 2, oracle 2, skald 2, warpriest 2 (Shelyn)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "1 rose touched",
                          duration: "1 hour/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell creates an illusory trail in the form of a misty and visible scent coming from the rose used as this spell’s material component.",
                          desc: "This spell creates an illusory trail in the form of a misty and visible scent coming from the rose used as this spell’s material component. When you cast this spell, the scent of the rose leaves a faint pink-tinged illusion that ripples and flows in the area. Only you and up to six creatures you designate upon casting the spell can see the illusion. To designate a creature, you must know it well. It is not enough simply to have met that creature once or heard of the creature. When you move, this illusory scent leaves a trail, though there are no telltale signs of which direction you moved if creatures designated by this spell find a middle section of the trail. This is typically used to create backtracking method for the caster’s handpicked allies, useful for navigating in and out of mazes or labyrinthine cave complexes without leaving behind an obvious trail.",
                          source: "Faiths of Purity", isPremium: true),

                    // // MARK: - Familiar Folio
        )
        try await db.insertSpell(
        .make("Disrupt Link", school: "Abjuration", levels: "antipaladin 2, arcanist 2, bard 3, inquisitor 3, skald 3, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature and her animal companion, familiar, or other bonded creature (which may be no more than 30 ft. apart)",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "The target has her link with her bonded creature temporarily severed.",
                          desc: "The target has her link with her bonded creature temporarily severed. If the subject has a familiar, she loses the benefits of the alertness, deliver touch spells, empathic link, scry on familiar, share spells, and speak with master abilities. If the target has an animal companion, she loses the benefits of the link, share spells, and devotion abilities. The target and her familiar or animal companion also lose any other abilities (such as those from archetypes or feats) that rely on the two having a connection.",
                          source: "Familiar Folio", isPremium: true)
        )
        try await db.insertSpell(
        .make("Duplicate Familiar", school: "Conjuration (Creation)", levels: "alchemist 4, arcanist 5, investigator 4, sorcerer 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (alchemically preserved mockingfey feathers), F (familiar)",
                          range: "touch", area: "temporary duplicate of familiar touched", targets: "",
                          duration: "10 minutes/level",
                          savingThrow: "Fortitude negates;", sr: false,
                          summary: "You create a duplicate of a familiar. The familiar’s master can use the duplicate as if it were his familiar in all respects, though he doesn’t gain the bonus special ability from more than one…",
                          desc: "You create a duplicate of a familiar. The familiar’s master can use the duplicate as if it were his familiar in all respects, though he doesn’t gain the bonus special ability from more than one familiar at a time. When the spell’s duration expires, the familiar duplicate shrivels into nothing, even if petrified or otherwise transformed.",
                          source: "Familiar Folio", isPremium: true)
        )
        try await db.insertSpell(
        .make("Empathy Conduit", school: "Necromancy", levels: "arcanist 5, shaman 5, sorcerer 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, F (a glass rod)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "an animal companion, familiar, or other bonded creature and its master (which may be no more than 30 ft. apart)",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You make a conduit between the targeted master and her familiar, allowing you to target the master or the familiar with your spells in order to affect the other.",
                          desc: "You make a conduit between the targeted master and her familiar, allowing you to target the master or the familiar with your spells in order to affect the other. If the master succeeds at its save to resist this spell but the familiar fails, you can choose to have your spells that target the master affect the familiar instead. If the familiar resists but the master doesn’t, your spells that target the familiar can affect the master instead. If both the familiar and the master fail to resist this spell, you can affect either the familiar or the master when you target either with a spell. When you target the master to affect her familiar or vice versa, the target attempts a save (if one is allowed) with its own saving throw bonus, but the other creature is affected by the spell. Only spells that target one or more creatures can be cast through empathy conduit . The creature to be affected must still be a valid target of the spell being cast; for example, you can’t affect a familiar with",
                          source: "Familiar Folio", isPremium: true)
        )
        try await db.insertSpell(
        .make("Soulswitch", school: "Necromancy", levels: "arcanist 5, bard 5, cleric 5, druid 5, hunter 5, inquisitor 5, magus 5, oracle 5, shaman 5, skald 5, sorcerer 5, warpriest 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, F (two brass collars worth 50 gp each)",
                          range: "touch", area: "", targets: "you and your familiar",
                          duration: "10 minutes/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You may only cast this spell if you currently have a familiar. You place your soul into the body of your familiar, and your familiar’s soul is placed in your body.",
                          desc: "You may only cast this spell if you currently have a familiar. You place your soul into the body of your familiar, and your familiar’s soul is placed in your body. This functions as if you possessed your familiar using magic jar ; your familiar simultaneously possesses your body in the same manner. You can’t freely transfer your soul between your body and your familiar’s—if you choose to return to your body as a standard action, the spell ends. If either body is killed, both spirits return to their original bodies, the spell ends, and the original owner of the slain body dies.",
                          source: "Familiar Folio", isPremium: true)
        )
        try await db.insertSpell(
        .make("Transfer Familiar", school: "Evocation", levels: "arcanist 6, sorcerer 6, witch 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "your familiar and one willing creature",
                          duration: "1 day/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You temporarily grant control of your familiar to another willing creature. You, your familiar, and the target creature must all be touching each other when you cast this spell.",
                          desc: "You temporarily grant control of your familiar to another willing creature. You, your familiar, and the target creature must all be touching each other when you cast this spell. The target gains all the benefits and abilities normally associated with having a familiar, including the ability to share spells, speak with the familiar, and so on. You lose all of these benefits for the duration of the spell. If the target already has a familiar, the spell fails.",
                          source: "Familiar Folio", isPremium: true),

                    // // MARK: - Giant Hunter's Handbook
        )
        try await db.insertSpell(
        .make("Burdened Thoughts", school: "Enchantment (Compulsion)", levels: "arcanist 3, druid 2, hunter 2, shaman 2, sorcerer 3, witch 2, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a lead bearing wrapped in clay)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You fill a creature’s mind with the realization of its earthly weight and responsibilities.",
                          desc: "You fill a creature’s mind with the realization of its earthly weight and responsibilities. Disheartened and wearied by these thoughts, the creature gains heavy encumbrance and is unable to fly (if already flying, it must land as soon as possible). If the creature is three or more size categories larger than you, it’s also staggered.",
                          source: "Giant Hunter's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hollow Blades", school: "Transmutation", levels: "arcanist 3, hunter 1, magus 2, ranger 1, shaman 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 round", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "All melee and natural attacks from the target deal damage as if the target were one size category smaller than it actually is.",
                          desc: "All melee and natural attacks from the target deal damage as if the target were one size category smaller than it actually is. While the target is under the effects of this spell, weapons dropped by the target function normally for other creatures, while any melee weapons picked up by the target deal damage as if one size smaller. Ranged attacks and weapons are unaffected by this spell.",
                          source: "Giant Hunter's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Resize Item", school: "Transmutation", levels: "arcanist 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (silver calipers worth 25 gp)",
                          range: "touch", area: "", targets: "one weapon or suit of armor weighing up to 25 lbs./level",
                          duration: "24 hours (D)",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "You alter a magic weapon or suit of armor to be up to two size categories larger or smaller.",
                          desc: "You alter a magic weapon or suit of armor to be up to two size categories larger or smaller. If the spell on a resized suit of armor ends while the armor is being worn, the armor falls off harmlessly. If the spell would cause an item to grow too large for the area containing it, its growth halts just before that point. Resize item can be made permanent with a",
                          source: "Giant Hunter's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Runic Overload", school: "Evocation", levels: "arcanist 5, bloodrager 3, magus 4, sorcerer 5, witch 6, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (a small rune carved from stone)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature or object",
                          duration: "instantaneous",
                          savingThrow: "see text;", sr: false,
                          summary: "This spell charges magical runes to an explosive degree. If cast on a creature with magical runes on its body, such as a rune giant or a runescarred creature ( Pathfinder Campaign Setting: Lost…",
                          desc: "This spell charges magical runes to an explosive degree. If cast on a creature with magical runes on its body, such as a rune giant or a runescarred creature ( Pathfinder Campaign Setting: Lost Cities of Golarion 60), it deals 1d6 points of sonic damage per caster level (maximum 20d6) to the target and stuns the target for 1 round. When the spell is cast in this way, it must overcome the target’s spell resistance. A successful Will save halves the damage and negates the stun effect. The spell can also be cast on other magical runes, such as those from",
                          source: "Giant Hunter's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Siphon Might", school: "Necromancy", levels: "arcanist 3, druid 3, hunter 3, magus 3, sorcerer 3, summoner 3, summoner (unchained) 3, witch 3, wizard 3",
                          castingTime: "1 round", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "Fortitude half;", sr: true,
                          summary: "You drain the might of the target and transfer that power to another creature. The subject takes a penalty to Strength equal to 1d6 + 1 per 2 caster levels (maximum 1d6 + 5).",
                          desc: "You drain the might of the target and transfer that power to another creature. The subject takes a penalty to Strength equal to 1d6 + 1 per 2 caster levels (maximum 1d6 + 5). This effect can’t cause the subject’s Strength score to drop below 1. A successful Fortitude save halves this penalty. This penalty doesn’t stack with itself or the penalty applied from ray of enfeeblement . You can grant any one creature adjacent to you (including yourself) an enhancement bonus to Strength equal to the Strength penalty imposed by this spell.",
                          source: "Giant Hunter's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Steal Size", school: "Transmutation", levels: "arcanist 2, bloodrager 2, druid 3, hunter 3, magus 3, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a piece of iron shaped like a scale tray)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one humanoid creature larger than you",
                          duration: "1 minute/level (D)",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "This spell reduces the target’s size by one size category, as if it were affected by reduce person . You grow in size by one category, as if affected by",
                          desc: "This spell reduces the target’s size by one size category, as if it were affected by reduce person . You grow in size by one category, as if affected by",
                          source: "Giant Hunter's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Stone Throwing", school: "Transmutation", levels: "arcanist 2, bloodrager 1, cleric 2, druid 2, hunter 1, magus 2, oracle 2, ranger 1, sorcerer 2, warpriest 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (powdered stone)",
                          range: "", area: "", targets: "creature touched",
                          duration: "1 minute/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "The subject gains the rock throwing and rock catching abilities ( Pathfinder RPG Bestiary 303). It can use these abilities with any solid, mostly inflexible object with a hardness of at least 5.",
                          desc: "The subject gains the rock throwing and rock catching abilities ( Pathfinder RPG Bestiary 303). It can use these abilities with any solid, mostly inflexible object with a hardness of at least 5. The subject can hurl rocks up to two categories smaller than its own size. The range increment for this attack is 20 feet, and rocks can be hurled a maximum of 5 range increments. Damage is based on the size of the subject—1d8 points of damage for a Large creature, 1d6 for a Medium creature, or 1d4 for a Small creature—plus 1-1/2 times the thrower’s Strength bonus. For every size category smaller than Large the subject is, it receives a cumulative –5 penalty on Reflex saves to catch rocks (or similar projectiles) thrown at it.",
                          source: "Giant Hunter's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Twisted Futures", school: "Divination", levels: "arcanist 2, bard 1, cleric 2, druid 1, hunter 1, oracle 2, shaman 1, skald 1, sorcerer 2, warpriest 2, witch 1, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a small die with the faces scratched off)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature/level, no two of which can be more than 30 ft. apart",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "By rearranging the threads of fate, you disrupt fortunate outcomes for other creatures.",
                          desc: "By rearranging the threads of fate, you disrupt fortunate outcomes for other creatures. A creature affected by this spell is unable to benefit from effects that grant the ability to roll multiple times and take the higher result (like the swashbuckler’s charmed life ability) or to choose the die result in lieu of rolling (like the wizard’s prescience school power or the cyclops’s flash of insight ability). This doesn’t affect abilities that force a creature to take the lower of two rolls, such as ill omen or a pugwampi’s unluck aura (",
                          source: "Giant Hunter's Handbook", isPremium: true),

                    // // MARK: - Gnomes of Golarion
        )
        try await db.insertSpell(
        .make("Illusory Poison", school: "Illusion (Phantasm)", levels: "arcanist 3, redmantisassassin 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "1d3 Str damage;", targets: "weapon touched",
                          duration: "1 minute/level or until discharged (see text)",
                          savingThrow: "Will disbelief, then Fortitude (see text);", sr: true,
                          summary: "You create a phantasm of an oily green phantasmal poison on the target weapon.",
                          desc: "You create a phantasm of an oily green phantasmal poison on the target weapon. The first creature hit by the poisoned weapon must make a Will save against the illusion spell; success means the spell has no effect and is expended from the weapon. If the creature fails its save, it believes it has been poisoned and must make Fortitude saves at the spell’s DC to avoid suffering illusory poison damage. Delay poison allows the target to ignore the effects of the phantasmal poison until the",
                          source: "Gnomes of Golarion", isPremium: true),

                    // // MARK: - Goblins of Golarion
        )
        try await db.insertSpell(
        .make("Blot", school: "Transmutation", levels: "arcanist 3, bard 3, cleric 3, oracle 3, redmantisassassin 3, skald 3, sorcerer 3, warpriest 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a bit of cloth made wet with saliva)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "10 ft.-radius burst", targets: "",
                          duration: "24 hours",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "This spell reduces all types of writing and other recognizable symbols found on any sort of surface within range into illegible smears.",
                          desc: "This spell reduces all types of writing and other recognizable symbols found on any sort of surface within range into illegible smears. It affects books, carvings on stone, or even tattoos with equal ease. It does not affect writing that is not actually on a surface, such as an illusion, projection, reflection, or anything similar. Spellbooks and magical items that contain writing (such as scrolls) gain a saving throw to resist the effects of this spell. Against magical writing created by spell effects (such as glyphs of warding or",
                          source: "Goblins of Golarion", isPremium: true)
        )
        try await db.insertSpell(
        .make("Fire Sneeze", school: "Evocation", levels: "alchemist 2, arcanist 2, druid 2, hunter 2, investigator 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (hot pepper soaked in oil)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round + 1 round/2 levels",
                          savingThrow: "Reflex half;", sr: true,
                          summary: "This spell causes you to begin sneezing gouts of fire that can not only set creatures ablaze but also drop them flat on their backs.",
                          desc: "This spell causes you to begin sneezing gouts of fire that can not only set creatures ablaze but also drop them flat on their backs. Once you cast this spell, you must sneeze each round as a standard action—you can take no other standard action as long as this spell is in effect, nor can you take full-round actions. Each time you sneeze, you produce a 10-foot-long cone of fire and wind. All creatures caught in this cone take 2d6 points of fire damage—a successful Reflex save halves this damage. Any creature that fails to resist this spell with a Reflex save must immediately make a DC 12 Fortitude save or be knocked prone by the blast of wind associated with the sneeze.",
                          source: "Goblins of Golarion", isPremium: true)
        )
        try await db.insertSpell(
        .make("Limp Lash", school: "Necromancy", levels: "arcanist 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a dead wasp)",
                          range: "20 ft.", area: "", targets: "1 creature",
                          duration: "special (see below)",
                          savingThrow: "none;", sr: true,
                          summary: "You create a dark whip-shaped field of energy that wraps around an enemy’s neck, leaving everything except his head paralyzed until you let go of the whip or it is destroyed.",
                          desc: "You create a dark whip-shaped field of energy that wraps around an enemy’s neck, leaving everything except his head paralyzed until you let go of the whip or it is destroyed. You must make a ranged touch attack with this spell. If you strike your target, he takes a 1d6 penalty to his Strength, Dexterity, and Constitution each round. This penalty cannot reduce any attribute to less than 1, and once any of these attributes reaches 1 the target collapses and his body, except his head, becomes paralyzed. While paralyzed in this way, the target retains full use of his senses, including the ability to feel pain, and can speak (including casting spells with only verbal components). The whip has a maximum length of 20 feet, 15 hit points, and a hardness of 5. The spell ends immediately if you let go of the whip or it is destroyed. When the spell ends, all penalties the target took from this spell also end.",
                          source: "Goblins of Golarion", isPremium: true),

                    // // MARK: - Guide to the River Kingdoms
        )
        try await db.insertSpell(
        .make("Silverlight", school: "Evocation", levels: "arcanist 3, bard 3, cleric 3, druid 3, hunter 3, oracle 3, paladin 3, skald 3, sorcerer 3, warpriest 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (1 sp)",
                          range: "touch", area: "", targets: "object touched",
                          duration: "1 minute/level",
                          savingThrow: "Fortitude partial (see text);", sr: false,
                          summary: "As daylight , except the object touched sheds bright silvery light in a 20-foot radius.",
                          desc: "As daylight , except the object touched sheds bright silvery light in a 20-foot radius. In addition to providing illumination, the area of bright light is painful to creatures that are susceptible to alchemical silver. A creature with DR/silver that begins its turn within the light of this spell is automatically dazzled and becomes sickened unless it succeeds on a Fortitude save. These effects disappear 1 round after the target leaves the",
                          source: "Guide to the River Kingdoms", isPremium: true),

                    // // MARK: - Haunted Heroes Handbook
        )
        try await db.insertSpell(
        .make("Besmara's Grasping Depths", school: "Necromancy (Haunted)", levels: "cleric 6, inquisitor 6, oracle 6, shaman 6, spiritualist 5, witch 6",
                          castingTime: "1 standard action", components: "V, S, M/DF (a vial of sea water)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one 5-ft. cube/level (S)", targets: "",
                          duration: "see text",
                          savingThrow: "Will partial; see text;", sr: true,
                          summary: "You call upon the restless souls of those who died at sea. This spell can be cast only on an area of deep water.",
                          desc: "You call upon the restless souls of those who died at sea. This spell can be cast only on an area of deep water. When a creature enters the area, the haunt manifests, automatically grabbing the creature and dragging it under the water on initiative count 10. Each round, the haunt deals 1d6 points of nonlethal damage as it drags its victim down 10 feet; a successful DC 15 Swim check reduces the descent to 5 feet and negates the nonlethal damage. Each round in the haunt’s clutches reduces the duration the victim can hold her breath by 2 rounds ( Pathfinder RPG Core Rulebook 445 ). A victim can make a single move or standard action each round while in the haunt’s grasp if she succeeds at a Will save; on a failed save, she can only struggle helplessly against the haunt. A victim cannot use her actions to swim toward the surface while the haunt is active. If the haunt reaches the bottom of its body of water, it pounds its victim against the bottom, dealing 2d6 points of nonlethal damage per round to the victim and reducing the duration the victim can hold her breath by an additional round. This continues until either the haunt is neutralized (in which case the victim must still swim to the surface) or the victim drowns. The haunt can grab and attempt to drown multiple creatures in its area on its initiative count. The magic holding the haunt together is unstable and deteriorates while the haunt is active. Each round at the end of its turn, the haunt automatically loses 1d6 hit points per creature it is currently affecting. Furthermore, the spell’s haunt-like manifestation is active throughout the spell’s duration, rendering it vulnerable to effects that damage haunts. When the haunt reaches 0 hit points, the spell ends.",
                          source: "Haunted Heroes Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Crafter's Nightmare", school: "Necromancy (Haunted)", levels: "arcanist 2, bard 2, druid 2, hunter 2, medium 1, mesmerist 2, occultist 2, psychic 2, sorcerer 2, spiritualist 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a broken tool)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one 5-ft. cube/level (S)", targets: "",
                          duration: "1 day/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You concentrate feelings of competitiveness, envy, and ill will into a poltergeist-like haunt that wreaks havoc on its victim’s long-term endeavors.",
                          desc: "You concentrate feelings of competitiveness, envy, and ill will into a poltergeist-like haunt that wreaks havoc on its victim’s long-term endeavors. Every time a creature in the affected area attempts a Craft or Profession check to generate income, create an item, or earn capital ( Pathfinder RPG Ultimate Campaign 85 ), any skill check required for crafting or repairing a magic item, or any skill check required for an occult ritual ( Pathfinder RPG Occult Adventures 208 ), the haunt imposes a –5 penalty on the check. If the creature fails its check by 5 or more, the haunt’s mischief deals 1d6 points of damage to the creature in addition to any other negative effects from such a failure. If the creature attempts to cast a spell with a casting time of 1 minute or longer, the haunt becomes similarly disruptive, requiring the caster to succeed at a concentration check (DC = 15 + spell level) or lose the spell and take 1d6 points of damage from the mischief. Each time the haunt is disruptive, the spell’s haunt-like manifestation occurs during that round.",
                          source: "Haunted Heroes Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Frigid Souls", school: "Necromancy (Haunted)", levels: "arcanist 4, cleric 4, druid 4, hunter 3, oracle 4, ranger 3, shaman 4, sorcerer 4, warpriest 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M/DF (a bloody icicle)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one 5-ft. cube/level", targets: "",
                          duration: "1 hour/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You harness the Irriseni people’s palpable fear of their frozen environment and cruel Jadwiga overlords into a haunt that withers defenses against the cold.",
                          desc: "You harness the Irriseni people’s palpable fear of their frozen environment and cruel Jadwiga overlords into a haunt that withers defenses against the cold. Any creature that enters the affected area must succeed at a Will save or gain spell resistance equal to 11 + your caster level against any abjuration effect that provides resistance to or protection against cold damage or cold climates. This spell resistance cannot be voluntarily lowered. Once every 30 minutes as an immediate action, the haunt attempts a dispel check (1d20 + your caster level) against an active abjuration effect currently protecting a creature in the affected area against cold, even if it was active before the creature was haunted or it successfully bypassed the spell resistance imposed by the haunt. Against creatures with multiple layers of protection, these dispel checks start with the highest-level abjuration effects and work their way down the list. Each time the haunt attempts a dispel check, the spell’s haunt-like manifestation occurs during that round. Haunt Statistics Notice Perception 25 (to feel a biting chill as if through the touch of a frozen hand)",
                          source: "Haunted Heroes Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Grim Stalker", school: "Necromancy (Haunted)", levels: "arcanist 7, cleric 7, magus 6, oracle 7, shaman 7, sorcerer 7, summoner 6, summoner (unchained) 6, witch 7, wizard 7",
                          castingTime: "1 minute", components: "V, S, M/DF (a hound's fang)",
                          range: "touch", area: "", targets: "",
                          duration: "1 day/level (D)",
                          savingThrow: "Will negates (object); see text;", sr: true,
                          summary: "You bind spirits of ill fate to an object, focusing their wrath onto the next creature that touches the object.",
                          desc: "You bind spirits of ill fate to an object, focusing their wrath onto the next creature that touches the object. When a creature touches the target object, it can attempt a Will save to negate the spell’s effect. Although a successful save prevents the creature from becoming haunted, the haunt still resides within the object, and targets either the next creature to touch the object or the same creature again if it still holds the object after 24 hours. The haunt remains within the object until a creature fails its save or the spell’s duration ends. Once a creature is affected by the haunt, it begins noticing a large, black mastiff with ominous green eyes watching and following it from a distance, always just beyond the range of focus or interaction. The grim stalker terrorizes the creature’s sleep, affecting it as per nightmare every night during the spell’s duration (Will negates for one night). Each time the creature takes hit point damage, the grim stalker lunges closer, causing the creature to become shaken for 1 round (Will negates). Each time the creature is reduced to less than one-tenth of its maximum hit points, the grim stalker lunges at the creature as an immediate action, affecting it as per",
                          source: "Haunted Heroes Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Horrifying Visage", school: "Necromancy (Haunted)", levels: "arcanist 3, bard 3, cleric 3, inquisitor 3, magus 3, oracle 3, psychic 3, shaman 3, skald 3, sorcerer 3, spiritualist 3, warpriest 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a live spider)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one 5-ft. cube/level (S)", targets: "",
                          duration: "1 day/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You channel residual feelings of terror into the minds of creatures within the area, causing those fears to manifest when confronted with a specific object.",
                          desc: "You channel residual feelings of terror into the minds of creatures within the area, causing those fears to manifest when confronted with a specific object. All creatures in the area must succeed at a Will save or acquire a phobia ( Pathfinder RPG GameMastery Guide 250 ) for the spell’s duration. You choose one kind of creature, object, or image within the area of the spell when it is cast that triggers the phobia. The kind of creature, object, or image that triggers the phobia must be named specifically. A creature type or subtype is not specific enough. The phobia can be cured using traditional methods of treating insanity, and spells or effects that prevent possession or mind control suppress the phobia for their duration. Each time the phobia is triggered in an affected creature, the spell’s haunt-like manifestation occurs during that round.",
                          source: "Haunted Heroes Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mischievous Shadow", school: "Necromancy (Haunted)", levels: "arcanist 4, bard 4, magus 4, medium 3, shaman 4, skald 4, sorcerer 4, spiritualist 4, summoner 4, summoner (unchained) 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (a black candle)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one 5-ft. cube/level", targets: "",
                          duration: "1 day/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You direct spirits into the shadows of creatures. The shadows of creatures that fail their Will saving throws appear slightly different for the duration of the spell, bearing small horns, unusually…",
                          desc: "You direct spirits into the shadows of creatures. The shadows of creatures that fail their Will saving throws appear slightly different for the duration of the spell, bearing small horns, unusually long and slender arms, or other small discrepancies. This spell does not work on creatures that do not cast shadows or reflections. At will as an immediate action (but no more often than once every 10 minutes), a mischievous shadow can interfere with its host’s actions or the actions of adjacent creatures by interacting with their shadows in ways that affect their physical counterparts, such as grabbing the shadow of a crossbow to redirect the physical weapon’s aim. Each disruption either imposes a –8 penalty on a single attack roll, combat maneuver check, or Strength- or Dexterity-based skill check, or requires a spellcaster to succeed at a concentration check (DC = 15 + spell level) or lose a spell being cast. If you are within range of the spell effect, you can decide how these shadows interfere; otherwise, their actions are timed and decided by the GM as needed, typically manifesting during important or crucial roles. Each time a mischievous shadow makes such a disruption, the spell’s haunt-like manifestation occurs during that round.",
                          source: "Haunted Heroes Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Skin Tag", school: "Necromancy (Haunted)", levels: "alchemist 1, arcanist 1, medium 1, occultist 1, shaman 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 minute", components: "V, S, M (beverage or food item, plus special reagents worth 25 gp)",
                          range: "touch (object); 1 mile (remote effects)", area: "", targets: "1 beverage or piece of food touched",
                          duration: "1 day plus 1 day/level (D)",
                          savingThrow: "none (object), Fortitude negates; see text;", sr: true,
                          summary: "You mix a malign spirit into a piece of food, a drink, or some other item to be consumed (including alchemical items, potions, elixirs, or similar items).",
                          desc: "You mix a malign spirit into a piece of food, a drink, or some other item to be consumed (including alchemical items, potions, elixirs, or similar items). The skin tag spell discharges when the item is consumed, affecting the creature that used the item unless it succeeds at a Fortitude save. The spirit embeds itself somewhere in the affected creature’s skin, forming a painless set of wrinkles and tags of skin that looks vaguely like a face when the haunt activates. You are considered to have a body part from the affected creature for the purpose of",
                          source: "Haunted Heroes Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Unsettling Presence", school: "Necromancy (Haunted)", levels: "arcanist 2, bard 2, medium 1, mesmerist 2, occultist 2, psychic 2, shaman 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one 5-ft. cube/level (S)", targets: "",
                          duration: "1 hour/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "Those in this spell’s area who fail their Will saving throws harbor a faint sense of paranoia and evoke the same feeling in others for the duration of the spell.",
                          desc: "Those in this spell’s area who fail their Will saving throws harbor a faint sense of paranoia and evoke the same feeling in others for the duration of the spell. Domesticated animals (not including familiars and animal companions) don’t willingly approach affected creatures unless the animal’s master succeeds at a DC 25 Handle Animal, Ride, or wild empathy check. Affected creatures take a –4 penalty on Handle Animal, Ride, and wild empathy checks against familiars, animal companions, animal cohorts, and other permanent companions provided by class abilities for the spell’s duration. Anyone an affected creature interacts with must succeed at a Will save or have its initial attitude automatically worsened by one step for the spell’s duration. Every time an affected creature attempts a Sense Motive check to get a hunch or detect a Bluff from another creature (or vice versa), it must succeed at a Will save or automatically assume the other party is lying or otherwise harbors ill will against it. Each time this spell causes an affected creature (or someone interacting with the affected creature) to attempt a Will saving throw, the spell’s hauntlike manifestation occurs. Haunt Statistics Notice Perception DC DC 20 (to feel a sudden sense of dread, or to hear victims’ names whispered behind their backs)",
                          source: "Haunted Heroes Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Urgathoa's Beacon", school: "Necromancy (Haunted)", levels: "antipaladin 2, cleric 2, inquisitor 2, oracle 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one 5-ft cube/level (S)", targets: "",
                          duration: "1 hour/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You shroud an area in Urgathoa’s unclean influence, rendering those who pass through it and fail their Will saving throws more enticing to ravenous undead.",
                          desc: "You shroud an area in Urgathoa’s unclean influence, rendering those who pass through it and fail their Will saving throws more enticing to ravenous undead. When an affected creature comes within 60 feet of an undead creature, the spell immediately draws the undead creature’s attention, granting it a +4 bonus on Perception checks to notice the affected creature and on saving throws to resist spells that hide or disguise the affected creature (such as hide from undead ). Once the undead creature notices the affected creature, it feels compelled to kill and devour the affected creature, and gains a +1 profane bonus on attack rolls made against the affected creature and a +1 profane bonus on saving throws against the affected creature’s spells and special abilities. The undead also ignores any concealment less than total concealment that an affected creature has. Each time the spell draws an undead creature’s attention to an affected creature, the spell’s haunt-like manifestation occurs during that round.",
                          source: "Haunted Heroes Handbook", isPremium: true),

                    // // MARK: - Healer's Handbook
        )
        try await db.insertSpell(
        .make("Balance of Suffering", school: "Conjuration (Healing)", levels: "cleric 6, inquisitor 6, occultist 6, oracle 6, shaman 6, spiritualist 6, warpriest 6, witch 6",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "1 living creature and another single living or undead creature",
                          duration: "instantaneous",
                          savingThrow: "Will half; see text;", sr: true,
                          summary: "You borrow life force from a living creature and infuse it into another living creature, potentially wreaking destruction on the former and bolstering the life of the latter.",
                          desc: "You borrow life force from a living creature and infuse it into another living creature, potentially wreaking destruction on the former and bolstering the life of the latter. Choose an initial target, which must be alive, and a secondary target, which must be alive or undead. The initial target is dealt a number of points of damage equal to 9d6 + 1 point per caster level. A successful Will saving throw halves the damage dealt. The target might die from damage even if it succeeds on its saving throw. If the secondary target is a living creature, it regains a number of hit points equal to the amount of damage taken by the initial target. If the secondary target is undead, it instead takes an amount of damage equal to that dealt to the initial target. The secondary target can halve the healing imparted or harm inflicted to it with a successful Will saving throw (although a secondary target receiving healing can forgo this saving throw as normal). This spell is subject to the spell resistance of the initial target; if the secondary target is unwilling, this spell is also subject to the secondary target’s spell resistance. If the spell does not penetrate the initial target’s spell resistance, it fizzles with no effect. If it does not penetrate the secondary target’s spell resistance, the initial target is still harmed as described, but the secondary target is not healed or harmed.",
                          source: "Healer's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Befuddled Combatant", school: "Enchantment (Compulsion)", levels: "arcanist 5, bard 5, mesmerist 5, psychic 5, shaman 5, skald 5, sorcerer 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (cooked noodles)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 hour/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "As a way to befuddle your target, you fill its mind with all manner of swirling images as well as baffling and incoherent thoughts, making the target an ineffective combatant and rendering its…",
                          desc: "As a way to befuddle your target, you fill its mind with all manner of swirling images as well as baffling and incoherent thoughts, making the target an ineffective combatant and rendering its spellcasting and other such abilities much more feeble. For the spell’s duration, the DCs of all of the target’s spells, spell-like abilities, supernatural abilities, and extraordinary abilities are reduced by 4. Any of its attacks that would deal hit point damage, including its melee and ranged physical attacks, deal minimum damage for the duration of this spell. This curse applies only to effects created by the creature while this spell is actively affecting the target; applying or removing this curse doesn’t alter the ongoing damage of effects previously created by the target (such as an",
                          source: "Healer's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Curative Distillation", school: "Conjuration (Healing)", levels: "alchemist 2, cleric 3, investigator 2, oracle 3, warpriest 3",
                          castingTime: "1 standard action", components: "V, S, M (healing herb, alchemical remady, or potion of a healing spell worth at least 50 gp)",
                          range: "touch", area: "", targets: "one living creature touched",
                          duration: "instantaneous",
                          savingThrow: "Will half (harmless);", sr: true,
                          summary: "You concentrate the healing potential of the material component so that it’s exceptionally potent and restorative.",
                          desc: "You concentrate the healing potential of the material component so that it’s exceptionally potent and restorative. This spell restores a number of hit points equal to 1d8 + 1 point per caster level (maximum +10) to the target, and also grants the target the benefits of the material component. Roll the hit points restored separately when determining how many total hit points this spell and the material component restore.",
                          source: "Healer's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Healing Flames", school: "Conjuration (Healing)", levels: "cleric 4, inquisitor 4, oracle 4, paladin 4, warpriest 4",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "", area: "10-ft.-radius burst, centered on you", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Reflex half; see text;", sr: true,
                          summary: "You unleash a blast of holy flames that washes over all creatures in the area in a glorious display of divine power. This deals damage to evil creatures and heals good creatures in the area.",
                          desc: "You unleash a blast of holy flames that washes over all creatures in the area in a glorious display of divine power. This deals damage to evil creatures and heals good creatures in the area. The amount of damage dealt and the number of hit points restored in each case is 1d8 points per 2 caster levels (maximum 5d8). Half of the damage this spell deals to evil creatures is fire damage, and half of the damage is pure divine power that is therefore not subject to reduction by energy resistance to fire-based attacks. Neutral enemies within the spell’s area of effect also take the fire damage, but do not take the divine damage. Neutral allies within the area are healed by half as much as good creatures. A successful Reflex saving throw halves the damage taken in all cases.",
                          source: "Healer's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Healing Token", school: "Conjuration (Healing)", levels: "cleric 2, druid 2, hunter 2, inquisitor 2, oracle 2, paladin 2, ranger 2, shaman 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "one touched holy symbol per 3 caster levels",
                          duration: "10 minutes/level",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "You imbue one touched holy symbol per 3 caster levels with a connection to your own divine power, turning the touched holy symbols into tokens of healing.",
                          desc: "You imbue one touched holy symbol per 3 caster levels with a connection to your own divine power, turning the touched holy symbols into tokens of healing. Each of the targeted holy symbols can represent any deity regardless of the deity’s actual alignment. As long as you wear or carry your divine focus, any creature carrying a token of healing can make a plea for healing in a language you understand as a standard action. When they do this, you are silently alerted to the plea for healing and can magically heal the target as an immediate action anytime before the end of your next turn. The magical healing you use to do this can be either a supernatural ability that heals damage (if you have uses available) or a spell or spell-like ability that belongs to the healing subschool (if you can cast any). In either case, to use the ability or cast the spell through this spell, you must be able to include or target that creature, and the ability’s activation time or spell’s casting time must be no longer than one standard action. If the ability or healing spell you use through a token would affect multiple creatures, such as",
                          source: "Healer's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Inspiring Recovery", school: "Conjuration (Healing)", levels: "cleric 6, hunter 4, inquisitor 6, oracle 6, paladin 4, ranger 4, warpriest 6",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one target creature and all its allies within 60 feet; see text",
                          duration: "instantaneous and 1 minute",
                          savingThrow: "Will half (harmless);", sr: true,
                          summary: "You can heal a creature, harm an undead creature, or call upon a very recently dead creature to fight beyond death’s reach.",
                          desc: "You can heal a creature, harm an undead creature, or call upon a very recently dead creature to fight beyond death’s reach. The target creature regains 1d8 hit points per 2 caster levels (maximum 10d8). This healing can even bring back to life creatures that have been dead within the previous 1 round (but they cannot have been dead for any longer). If you apply this spell’s healing to such a creature and its hit point total is at a negative amount less than its Constitution score, it comes back to life and stabilizes at its new hit point total. If you awaken a dead creature in this way, all allies of that creature within 60 feet who can see it regain consciousness gain a +2 morale bonus on attack rolls, damage rolls, and saving throws for 1 minute thereafter, as the healing powers of your deity have imbued them with renewed vigor. Creatures killed by death effects cannot be revived this way. This spell deals damage to undead creatures rather than curing them, and it cannot bring them back to life.",
                          source: "Healer's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Purify Body", school: "Conjuration (Healing)", levels: "alchemist 4, cleric 4, medium 4, oracle 4, paladin 4, psychic 5, warpriest 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "instantaneous and 1 hour or until discharged",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You align the target’s chakras and soothe any unwanted imperfections found within its physical form, leaving its body pristine and without any pain or weakness.",
                          desc: "You align the target’s chakras and soothe any unwanted imperfections found within its physical form, leaving its body pristine and without any pain or weakness. You restore a number of hit points to the creature equal to 3d8 + 1 per caster level (maximum +20). If the healing would cause the target to exceed its maximum hit points, the target immediately gains half the excess healing from this spell as temporary hit points that last for 1 hour. These temporary hit points are lost first when the target takes damage (although some temporary hit points are lost even before these temporary hit points, such as the temporary hit points from the shell of succor oracle mystery or the shell of succor hex granted by the restoration spirit specialization). This spell also ends any pain",
                          source: "Healer's Handbook", isPremium: true),

                    // // MARK: - Hell's Vengeance Player's Guide
        )
        try await db.insertSpell(
        .make("Infernal Healing, Greater", school: "Conjuration (Healing)", levels: "arcanist 1, bloodrager 1, cleric 1, magus 1, oracle 1, sorcerer 1, summoner 1, summoner (unchained) 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 round", components: "V, S, M (1 drop of devil blood or 1 dose of unholy water)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 minute",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "As per infernal healing , except the target gains fast healing 4 and the target detects as an evil cleric.",
                          desc: "As per infernal healing , except the target gains fast healing 4 and the target detects as an evil cleric.",
                          source: "Hell's Vengeance Player's Guide", isPremium: true),

                    // // MARK: - Hell's Vengeance Player's Guide, Pathfinder #29: Mother of Flies, Gods and Magic, Inner Sea World Guide
        )
        try await db.insertSpell(
        .make("Infernal Healing", school: "Conjuration (Healing)", levels: "arcanist 1, bloodrager 1, cleric 1, magus 1, oracle 1, sorcerer 1, summoner 1, summoner (unchained) 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 round", components: "V, S, M (1 drop of devil blood or 1 dose of unholy water)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 minute",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You anoint a wounded creature with devil’s blood or unholy water, giving it fast healing 1.",
                          desc: "You anoint a wounded creature with devil’s blood or unholy water, giving it fast healing 1. This ability cannot repair damage caused by silver weapons, good-aligned weapons, or spells or effects with the good descriptor. The target detects as evil for the duration of the spell and can sense the evil of the magic, though this has no long-term effect on the target’s alignment. Infernal Healing, Greater",
                          source: "Hell's Vengeance Player's Guide, Pathfinder #29: Mother of Flies, Gods and Magic, Inner Sea World Guide", isPremium: true),

                    // // MARK: - Heroes of the Darklands
        )
        try await db.insertSpell(
        .make("Animus Mine", school: "Abjuration", levels: "mesmerist 2, psychic 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "",
                          duration: "1 hour/level or until discharged",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "You implant a mental mine within your psyche that triggers against anyone attempting to manipulate your thoughts.",
                          desc: "You implant a mental mine within your psyche that triggers against anyone attempting to manipulate your thoughts. Any creature that uses a mind-affecting effect against you triggers the mine, causing psychic backlash against the offending creature. This backlash deals 1d6 points of damage per caster level (maximum 10d6) and staggers the target for 1d4 rounds. If the target succeeds at a Will saving throw, it takes only half damage and negates the staggered effect. The mine does not disrupt the mind-affecting effect that triggered the spell. You can use a swift action to suppress the trigger of your mine for 1 round to allow someone to use a mind-affecting effect on you. You can have only one mental mine active at a time. Animus Mine, Greater",
                          source: "Heroes of the Darklands", isPremium: true)
        )
        try await db.insertSpell(
        .make("Animus Mine, Greater", school: "Abjuration", levels: "mesmerist 2, psychic 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "",
                          duration: "1 hour/level or until discharged",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "This functions as per animus mine , except the triggering creature is stunned for 1d4 rounds instead of staggered.",
                          desc: "This functions as per animus mine , except the triggering creature is stunned for 1d4 rounds instead of staggered. If the target succeeds at a Will saving throw, it takes only half damage and negates the stunned effect. If the target fails this Will saving throw, you automatically succeed at any saving throw against the mind-affecting effect that triggered the mine.",
                          source: "Heroes of the Darklands", isPremium: true)
        )
        try await db.insertSpell(
        .make("Concealed Breath", school: "Transmutation", levels: "alchemist 4, arcanist 4, cleric 4, druid 4, hunter 4, investigator 4, oracle 4, shaman 4, sorcerer 4, summoner 4, summoner (unchained) 4, warpriest 4, wizard 4",
                          castingTime: "1 standard action", components: "S, M/DF (a palm-sized stone)",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "1 hour/level; see text",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell allows affected creatures to hold their breath freely without negative effects or risk of suffocation. Divide the duration evenly among all creatures touched.",
                          desc: "This spell allows affected creatures to hold their breath freely without negative effects or risk of suffocation. Divide the duration evenly among all creatures touched. A creature that doesn’t need to breathe because of this spell is not at risk of drowning and is immune to effects that require breathing, such as inhaled poisons. This does not grant immunity to cloud or gas attacks that don’t require breathing. While a creature is holding its breath, it can’t speak or cast spells with a verbal component (unless it’s using Silent Spell). This spell does not prevent a creature from breathing normally; it just removes the need for the creature to breathe.",
                          source: "Heroes of the Darklands", isPremium: true)
        )
        try await db.insertSpell(
        .make("Entomb", school: "Transmutation", levels: "arcanist 8, druid 8, shaman 8, sorcerer 8, wizard 8",
                          castingTime: "1 minute", components: "V, S, M (a pristine geode worth at least 1,000 gp)",
                          range: "medium (100 ft. + 10 ft./level)", area: "up to three 10-ft. cubes/level (S)", targets: "",
                          duration: "permanent",
                          savingThrow: "none;", sr: false,
                          summary: "You designate an aboveground area and send it deep within the earth. During the casting of this spell, the chosen area is rocked by minor tremors that alert nearby creatures to the impending danger.",
                          desc: "You designate an aboveground area and send it deep within the earth. During the casting of this spell, the chosen area is rocked by minor tremors that alert nearby creatures to the impending danger. Once the spell is complete, the chosen area is drawn into the earth and buried in a self-contained vault, with the uppermost point at a depth of up to 10 feet per caster level below the surface. The surrounding atmosphere and all creatures within the selected area at the end of the spell’s casting time are entombed in this vault. The magic of the vault maintains the natural light, temperature, and air quality of the area as it originally existed aboveground, but any magical effects that affected these qualities do not have their duration extended. For example, a sunny field would remain brightly lit indefinitely, despite being buried underground, while a daylight spell would expire at the end of that spell’s duration. When creating the vault, you can leave a tunnel to the surface world (up to 20 feet wide), or you can completely isolate the vault from the outside world. Casting this spell does not destroy or damage anything that may have existed in the ground where you choose to place this vault, but instead pushes it farther down into the earth. Should your vault be dispelled, the entombed area returns to the surface, and anything that may have been displaced by the vault returns to its original place. If there is something already on the surface that blocks the vault’s path, the vault pushes it harmlessly aside when returning.",
                          source: "Heroes of the Darklands", isPremium: true)
        )
        try await db.insertSpell(
        .make("Grasp", school: "Divination", levels: "arcanist 0, bard 0, cleric 0, druid 0, hunter 0, magus 0, oracle 0, psychic 0, skald 0, sorcerer 0, warpriest 0, witch 0, wizard 0",
                          castingTime: "1 immediate action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "You can cast this spell as an immediate action when you fail a Climb check and would fall. You can immediately attempt another Climb check as a free action at a –2 penalty.",
                          desc: "You can cast this spell as an immediate action when you fail a Climb check and would fall. You can immediately attempt another Climb check as a free action at a –2 penalty. Each successive use of this spell in a particular situation increases the penalty by 2. If successful, you don’t fall, but you don’t progress at climbing.",
                          source: "Heroes of the Darklands", isPremium: true)
        )
        try await db.insertSpell(
        .make("Intensify Psyche", school: "Enchantment", levels: "arcanist 2, bard 1, cleric 2, medium 2, mesmerist 1, oracle 2, psychic 2, skald 1, sorcerer 2, spiritualist 2, warpriest 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "one creature", targets: "",
                          duration: "1 minute/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "A sense of euphoria suffuses the target, amplifying all sensations, good or bad. The target creature gains a +2 competence bonus on Diplomacy, Handle Animal, Perform, and Sense Motive checks.",
                          desc: "A sense of euphoria suffuses the target, amplifying all sensations, good or bad. The target creature gains a +2 competence bonus on Diplomacy, Handle Animal, Perform, and Sense Motive checks. In addition, the DC for any spells or effects with the emotion or pain descriptors cast or caused by the target increases by 1 while the target is under the effects of the spell. However, increased sensitivity causes the target to take a –2 penalty on saving throws against spells and effects with the emotion or pain descriptor.",
                          source: "Heroes of the Darklands", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mage's Crawl Space", school: "Transmutation", levels: "arcanist 2, bard 2, shaman 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a piece of clay)",
                          range: "personal", area: "5-foot sphere centered on yourself", targets: "",
                          duration: "1 hour/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "When you cast this spell, you merge with an adjacent natural stone surface, forming a 5-foot pocket within.",
                          desc: "When you cast this spell, you merge with an adjacent natural stone surface, forming a 5-foot pocket within. If the stone surface does not have enough volume to safely contain a 5-foot sphere of empty space, the spell fails. When created, there is sufficient air within the pocket for up to one Medium creature to survive for the spell’s duration, including one additional Tiny or smaller creature, such as a familiar. At the end of the spell’s duration, you are immediately expelled into the nearest available open space adjacent to the surface you merged with.",
                          source: "Heroes of the Darklands", isPremium: true)
        )
        try await db.insertSpell(
        .make("Morning Sun", school: "Evocation", levels: "cleric 7, druid 7, inquisitor 6, oracle 7, shaman 7",
                          castingTime: "1 standard action", components: "V, S, M (500 gp worth of gold dust)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "60-ft. radius", targets: "",
                          duration: "1 minute/level (D)",
                          savingThrow: "Fortitude negates and Reflex half; see text;", sr: false,
                          summary: "This spell conjures a miniature sphere of sunlight, approximately the size of a human fist, at a desired location within range. The sphere sheds bright light in a 60-foot-radius burst.",
                          desc: "This spell conjures a miniature sphere of sunlight, approximately the size of a human fist, at a desired location within range. The sphere sheds bright light in a 60-foot-radius burst. Creatures that take penalties in bright light do so while within the sphere’s area of illumination. Creatures that start their turns within the area of illumination and that are damaged or destroyed by sunlight must succeed at a Fortitude save or become staggered until 1d4+1 rounds after they leave the affected area. Non-creatures, such as hazardous fungi and mold that are destroyed by sunlight, become inert for the duration of the spell. The sphere cannot be moved from the place it was cast. The sphere deals 10d6 points of fire damage to anything it touches and anything that passes within 5 feet of it. A successful Reflex save reduces this damage by half.",
                          source: "Heroes of the Darklands", isPremium: true)
        )
        try await db.insertSpell(
        .make("Radiation Ward", school: "Abjuration", levels: "alchemist 2, arcanist 2, cleric 2, druid 2, hunter 1, oracle 2, ranger 1, shaman 2, sorcerer 2, warpriest 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 hour/level (D)",
                          savingThrow: "Fort negates (harmless);", sr: true,
                          summary: "A creature warded by this spell gains a +4 bonus on saving throws against radiation-based effects.",
                          desc: "A creature warded by this spell gains a +4 bonus on saving throws against radiation-based effects. In addition, the warded creature is immediately aware when it enters an area of radiation, as well as the radiation level (low, medium, high, or severe) suffusing the area.",
                          source: "Heroes of the Darklands", isPremium: true)
        )
        try await db.insertSpell(
        .make("Rock Whip", school: "Conjuration (Creation)", levels: "arcanist 2, cleric 2, druid 2, hunter 1, magus 2, oracle 2, ranger 1, shaman 2, sorcerer 2, warpriest 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "0 ft", area: "whip of earth and stone", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "A 15-foot-long lash of crumbling crystal and earth emerges from the palm of your hand. This weapon is treated as a nonmagical whip that deals 1d8 points of bludgeoning damage.",
                          desc: "A 15-foot-long lash of crumbling crystal and earth emerges from the palm of your hand. This weapon is treated as a nonmagical whip that deals 1d8 points of bludgeoning damage. You can wield this weapon as a whip as if you were proficient with it, and it isn’t subject to the disarm or sunder combat maneuver. The whip passes through natural unworked stone effortlessly, allowing you to ignore cover between you and your target from such sources. Armor and natural armor have no effect on the damage dealt by a rock whip (unlike a normal whip), but the whip deals no damage to outsiders with the earth subtype. Attacks with a",
                          source: "Heroes of the Darklands", isPremium: true)
        )
        try await db.insertSpell(
        .make("Shadowfade", school: "Illusion (Shadow)", levels: "arcanist 1, bard 1, inquisitor 1, mesmerist 1, skald 1, sorcerer 1, summoner 1, summoner (unchained) 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M (a blindfold)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 minute/level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "In areas of darkness, the target of shadowfade is invisible to creatures using darkvision to see. In areas of dim light, the target gains concealment against creatures using darkvision.",
                          desc: "In areas of darkness, the target of shadowfade is invisible to creatures using darkvision to see. In areas of dim light, the target gains concealment against creatures using darkvision. This spell has no effect in areas of normal light or brighter, and is automatically dispelled if the target enters an area of bright light or takes a hostile action.",
                          source: "Heroes of the Darklands", isPremium: true)
        )
        try await db.insertSpell(
        .make("Skyshroud", school: "Divination (Scrying)", levels: "arcanist 3, bard 3, cleric 3, oracle 3, skald 3, sorcerer 3, warpriest 3, wizard 3",
                          castingTime: "1 minute", components: "V, S, F (a jar of earth from the surface)",
                          range: "long (400 ft. + 40 ft./level); see text", area: "hemisphere that cannot extend beyond four 10-ft. cubes + one 10-ft. cube/level (S)", targets: "",
                          duration: "1 hour/level",
                          savingThrow: "none;", sr: false,
                          summary: "The caster designates the area of a hemisphere within the spell’s range.",
                          desc: "The caster designates the area of a hemisphere within the spell’s range. If a solid object would block the creation of the hemisphere (such as a ceiling or wall), the spell instead conforms to the geometry of the location up to the maximum area of effect for the spell. The hemisphere displays an image of the sky as it appears directly above where the spell was cast. This effect bypasses natural impediments, such as rock or stone, that would obstruct the targeted location from the sky. The image of the sky created by this spell counts as the actual sky for purposes of effects that require view of the sky, sun, stars, or other features (including for spell preparation or deific obediences). It does not enable spells or effects that draw effects from the sky (such as call lightning ). Light created by this effect functions normally and harms creatures vulnerable to bright light or direct sunlight.",
                          source: "Heroes of the Darklands", isPremium: true)
        )
        try await db.insertSpell(
        .make("Surface Excursion", school: "Conjuration (Teleportation)", levels: "arcanist 5, magus 5, occultist 4, psychic 5, shaman 5, sorcerer 5, spiritualist 4, summoner 4, summoner (unchained) 4, witch 5, wizard 5",
                          castingTime: "3 rounds", components: "V, S, M (a handful of soil that has been in the sun for at least 6 hours)",
                          range: "touch", area: "", targets: "you plus up to one willing creature per 3 levels",
                          duration: "1 hour/level (D)",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "You instantly transport yourself and touched allies onto the nearest sky-facing surface directly above you.",
                          desc: "You instantly transport yourself and touched allies onto the nearest sky-facing surface directly above you. The destination surface may be solid ground or the surface of a body of water (or other liquid), depending on your position. If reaching the surface would require crossing planar boundaries or no sky-facing surface exists directly above your position, the spell fails and has no effect. When the spell is cast, a magical beacon appears at both your departure and arrival points, suspended 3 feet in the air. These beacons are invisible to everyone but you and those allies touched when the spell was cast. You and every creature originally targeted by the spell can touch the beacon at your arrival point to teleport back to your original departure point. Each creature that chooses to return in this manner is transported to a free space adjacent to the beacon at your original departure point. If the area around the departure beacon is occupied by a solid body (for instance, rubble from a cave-in), then you and each creature traveling with you take 1d6 points of damage and are shunted to a random open space on a solid surface within 100 feet of the beacon. If there is no free space within 100 feet, the spell effect ends with no return transportation.",
                          source: "Heroes of the Darklands", isPremium: true),

                    // // MARK: - Heroes of the High Court
        )
        try await db.insertSpell(
        .make("Enchantment Sight", school: "Divination", levels: "alchemist 2, arcanist 2, bard 2, cleric 2, inquisitor 2, investigator 2, medium 2, mesmerist 2, occultist 2, oracle 2, paladin 2, psychic 2, skald 2, sorcerer 2, spiritualist 2, warpriest 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "10 minutes/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "Your irises take on a purplish tinge and you can see whether creatures within 60 feet of you are affected by an enchantment effect.",
                          desc: "Your irises take on a purplish tinge and you can see whether creatures within 60 feet of you are affected by an enchantment effect. To your eyes only, a creature under the effects of an enchantment spell glows with a simple white light around its head. You can immediately discern whether the brightness of the light is faint, moderate, strong, or overwhelming depending on the highest spell level of enchantment currently in effect (as per detect magic ). Enchantments of the charm or compulsion subschool glow with a scarlet or emerald hue, respectively. If a creature under an enchantment effect is in your line of sight, you can attempt a Spellcraft check as a move action to determine the highest-level spell or spell effect (DC = 15 + the spell level, or 15 + 1/2 the caster level for a non-spell effect). Effects that block divination magic also block this spell.",
                          source: "Heroes of the High Court", isPremium: true)
        )
        try await db.insertSpell(
        .make("False Face", school: "Transmutation (Polymorph)", levels: "alchemist 1, arcanist 1, bard 1, inquisitor 1, investigator 1, mesmerist 1, skald 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M (a folded-paper mask)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 hour/level",
                          savingThrow: "None", sr: false,
                          summary: "This spell alters details of your appearance so that you are no longer recognizable as yourself. Your new appearance is within the norms for your race, ethnicity, and gender.",
                          desc: "This spell alters details of your appearance so that you are no longer recognizable as yourself. Your new appearance is within the norms for your race, ethnicity, and gender. You lack control over the details of your appearance; however, when casting false face , you can choose an appearance you previously used, allowing you to maintain specific identities.",
                          source: "Heroes of the High Court", isPremium: true)
        )
        try await db.insertSpell(
        .make("Perceive Betrayal", school: "Divination", levels: "arcanist 7, cleric 6, inquisitor 4, oracle 6, sorcerer 7, warpriest 6, witch 6, wizard 7",
                          castingTime: "1 minute", components: "V, S, M (12 drops of blood), F (a silver circlet worth 500 gp)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 hour/level",
                          savingThrow: "None", sr: false,
                          summary: "By donning a silver circlet anointed with blood, you gain the ability to sense traitorous intent toward a single person to whom you defer, designated when you cast the spell.",
                          desc: "By donning a silver circlet anointed with blood, you gain the ability to sense traitorous intent toward a single person to whom you defer, designated when you cast the spell. The spell alerts you when a creature with traitorous intent is within 200 feet, although it doesn’t identify the source. By concentrating, you can learn the strength of the greatest threat, based on the following categories. Ill Will : Someone dislikes your liege, but isn’t planning to act against her.",
                          source: "Heroes of the High Court", isPremium: true)
        )
        try await db.insertSpell(
        .make("Pierce Facade", school: "Divination", levels: "alchemist 1, arcanist 1, bard 1, cleric 1, inquisitor 1, investigator 1, oracle 1, psychic 1, skald 1, sorcerer 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M/DF (an eagle's eye)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 minutes/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The target gains a +5 insight bonus on Perception checks to see through disguises. This bonus increases to +10 at caster level 7th.",
                          desc: "The target gains a +5 insight bonus on Perception checks to see through disguises. This bonus increases to +10 at caster level 7th.",
                          source: "Heroes of the High Court", isPremium: true)
        )
        try await db.insertSpell(
        .make("Reveal Emotions", school: "Divination", levels: "medium 3, mesmerist 4, occultist 4, psychic 4, spiritualist 4",
                          castingTime: "1 minute", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "40-ft.-radius spread", targets: "",
                          duration: "1 hour/level (D)",
                          savingThrow: "none;", sr: true,
                          summary: "You create an area that draws out a creature’s emotion aura ( Pathfinder RPG Occult Adventures 198 ).",
                          desc: "You create an area that draws out a creature’s emotion aura ( Pathfinder RPG Occult Adventures 198 ). Creatures within this area constantly glow with colors that represent their current overall emotional state and continue to do so for 1d4 rounds after leaving the area. This glow is clearly visible to any creature that can see the creature. Emotionless creatures or creatures unaffected by this spell glow with a dull purple hue while within the area.",
                          source: "Heroes of the High Court", isPremium: true)
        )
        try await db.insertSpell(
        .make("Shroud of Innocuity", school: "Illusion (Glamer)", levels: "arcanist 3, bard 3, medium 3, mesmerist 3, psychic 3, shaman 3, skald 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 minute", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one willing creature plus one/2 caster levels, no two of which can be more than 30 ft. apart",
                          duration: "1 hour/level (D)",
                          savingThrow: "none (harmless); see text;", sr: false,
                          summary: "All affected creatures are veiled with a commonplace appearance. This appearance varies based on the viewer, but is always an ordinary member of that viewer’s race, ethnicity, or nationality.",
                          desc: "All affected creatures are veiled with a commonplace appearance. This appearance varies based on the viewer, but is always an ordinary member of that viewer’s race, ethnicity, or nationality. This familiarity grants a +2 bonus on Diplomacy checks attempted by affected targets against those not affected by the spell. Creatures with an attitude of unfriendly or hostile toward an affected target can attempt a Will save to disbelieve the effect the first time they encounter that target.",
                          source: "Heroes of the High Court", isPremium: true)
        )
        try await db.insertSpell(
        .make("Speechreader's Sight", school: "Divination", levels: "alchemist 1, arcanist 1, bard 1, cleric 1, inquisitor 1, investigator 1, medium 1, mesmerist 1, occultist 1, oracle 1, psychic 1, skald 1, sorcerer 1, spiritualist 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 hour/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "If a creature within 100 feet that you can see is speaking a language you understand, you can read its lips with perfect accuracy.",
                          desc: "If a creature within 100 feet that you can see is speaking a language you understand, you can read its lips with perfect accuracy. Reading lips in this manner gives the exact wording of conversation and does not assist in deciphering any obfuscated ideas such as secret messages or slang. Reading lips requires moderate concentration, and you take a –4 penalty on other Perception checks while doing so. Speechreader’s sight can be made permanent with a",
                          source: "Heroes of the High Court", isPremium: true),

                    // // MARK: - Heroes of the Streets
        )
        try await db.insertSpell(
        .make("Beloved of the Forge", school: "Divination", levels: "alchemist 2, bard 2, cleric 2, investigator 2, oracle 2, shaman 2, skald 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 hour/level",
                          savingThrow: "None", sr: false,
                          summary: "You gain an innate sense of the direction to your home or to the place where you last attempted a Craft check, whichever you choose when you cast the spell.",
                          desc: "You gain an innate sense of the direction to your home or to the place where you last attempted a Craft check, whichever you choose when you cast the spell. You gain a +10 insight bonus on Survival checks made to find your way back to the chosen place. While under the effects of this spell, items in your possession gain a +2 luck bonus on saving throws against spells and effects, and you gain a +5 luck bonus on Craft checks to create or repair objects with Craft skills in which you are trained.",
                          source: "Heroes of the Streets", isPremium: true)
        )
        try await db.insertSpell(
        .make("Blessing of Liberty", school: "Abjuration", levels: "bard 2, shaman 2, skald 2",
                          castingTime: "1 standard action", components: "V, S, M (a feather or small object that symbolizes good fortune)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "You imbue yourself with the blessings of liberty. You gain a +1 luck bonus per 6 caster levels (minimum +1, maximum +3) to your CMD and on saving throws against spells and traps that would move you…",
                          desc: "You imbue yourself with the blessings of liberty. You gain a +1 luck bonus per 6 caster levels (minimum +1, maximum +3) to your CMD and on saving throws against spells and traps that would move you or impede your movement. You can end the spell’s effects as a swift action to gain a +20 foot enhancement bonus to your base speed for 1 round per whole minute of duration remaining.",
                          source: "Heroes of the Streets", isPremium: true)
        )
        try await db.insertSpell(
        .make("Cloak of Secrets", school: "Illusion (Glamer)", levels: "antipaladin 1, arcanist 1, bard 1, cleric 1, inquisitor 1, oracle 1, skald 1, sorcerer 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 minute", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "5-ft.-radius emanation centered on a point in space", targets: "",
                          duration: "10 minutes/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell forms an invisible bubble that filters all speech coming from inside the affected area so that creatures outside hear a completely different version of the conversation.",
                          desc: "This spell forms an invisible bubble that filters all speech coming from inside the affected area so that creatures outside hear a completely different version of the conversation. The bubble also disguises lip movements to match the false conversation. Any creature listening to the conversation for at least 1 round can attempt a DC 15 Sense Motive check to realize that the apparent conversation doesn’t actually make any sense. The bubble also obscures the verbal components of spells cast within the area so it’s impossible to identify spells by their verbal components alone, and anyone outside the bubble attempting a Spellcraft check to identify a spell cast within the bubble takes a –5 penalty on the check. Furthermore, the bubble renders any language-dependent spells and effects used within the bubble ineffective against creatures outside the area.",
                          source: "Heroes of the Streets", isPremium: true)
        )
        try await db.insertSpell(
        .make("Coin Shot", school: "Transmutation", levels: "alchemist 1, antipaladin 1, arcanist 1, bard 1, bloodrager 1, investigator 1, magus 1, skald 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "S",
                          range: "touch", area: "", targets: "up to three coins touched",
                          duration: "10 minutes or until discharged",
                          savingThrow: "none;", sr: true,
                          summary: "You turn up to three coins into deadly projectiles that gain the velocity of a bullet when thrown.",
                          desc: "You turn up to three coins into deadly projectiles that gain the velocity of a bullet when thrown. The coins retain their normal appearance but can be used as simple thrown weapons with a range increment of 20 feet and a critical multiplier of ×2. The transmuted coins are treated as ammunition for the purposes of drawing them. Like firearm bullets, the coins deal bludgeoning and piercing damage, and attacks with them are resolved as touch attacks within the first range increment. Regardless of whether a transmuted coin hits or misses the target, it is destroyed after the attack. Only you can make attacks with the coins, though other creatures can safely handle them without discharging the spell. You can make a single ranged attack with a coin as part of casting this spell. Different types of coins create different bullet effects. Copper coins deal 1d4 points of damage. Silver coins deal 1d6 points of damage and count as silver for the purpose of overcoming damage reduction. Gold coins deal 1d8 points of damage and count as masterwork weapons. Platinum coins deal 1d10 points of damage, count as masterwork weapons, and are treated as adamantine weapons for the purposes of overcoming damage reduction and bypassing hardness. All coin bullets deal an additional 1 point of damage per 2 caster levels (to a maximum of an extra 10 points of damage at 20th level).",
                          source: "Heroes of the Streets", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ears of the City", school: "Divination", levels: "arcanist 1, bard 1, cleric 1, inquisitor 1, oracle 1, shaman 1, skald 1, sorcerer 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M/DF (a small piece of a brick)",
                          range: "touch", area: "", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The target of this spell sees and hears a stream of past scenes and pieces of conversations related to local people and events.",
                          desc: "The target of this spell sees and hears a stream of past scenes and pieces of conversations related to local people and events. The flashes are so brief that it is impossible to identify individual people or places, but when the target concentrates on a particular topic or individual, she can piece together a coherent narrative told in a multitude of changing voices in her mind. Each round for the duration of the spell, the target can attempt a Diplomacy check to gather information as though she had spent 1d4 hours talking to local people. Since the information gathering doesn’t involve actual interaction with people, only observation, the target can use her Perception skill instead of her Diplomacy skill. While thus concentrating, the target is effectively blind and deaf.",
                          source: "Heroes of the Streets", isPremium: true)
        )
        try await db.insertSpell(
        .make("Harmless Form", school: "Transmutation (Polymorph)", levels: "arcanist 2, druid 2, hunter 2, ranger 2, shaman 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "one willing animal companion, familiar, or spirit animal",
                          duration: "8 hours (D)",
                          savingThrow: "Fort negates (harmless);", sr: true,
                          summary: "You transform the target into a harmless animal of the same approximate body type.",
                          desc: "You transform the target into a harmless animal of the same approximate body type. The form assumed must be one considered unobtrusive by local communities, such as a cat, a dog, a hunting hawk, a horse, or a rat. This transformation can reduce the target by up to two size categories, but cannot make an animal smaller than Tiny. It cannot increase the size of the target or give it new natural attacks or new forms of movement. The spell otherwise functions as beast shape II .",
                          source: "Heroes of the Streets", isPremium: true)
        )
        try await db.insertSpell(
        .make("Harvest Season", school: "Abjuration", levels: "druid 2, hunter 2, shaman 2",
                          castingTime: "1 minute", components: "V, S, M",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one plant",
                          duration: "instantaneous; see text",
                          savingThrow: "none;", sr: false,
                          summary: "You cause an explosive burst of growth in a single plant, causing it to grow through a cycle of flower, fruit, or grain production as appropriate.",
                          desc: "You cause an explosive burst of growth in a single plant, causing it to grow through a cycle of flower, fruit, or grain production as appropriate. If the plant is not one that normally produces food fit for humanoid consumption, it produces edible flowers under the effect of this spell. The plant produces enough food to nourish one Medium creature per caster level. Food harvested through this spell rots if not eaten within 24 hours. This spell nourishes, fertilizes, and pollinates the plant, and doesn’t harm the plant in any way. This spell has no effect on plant creatures.",
                          source: "Heroes of the Streets", isPremium: true)
        )
        try await db.insertSpell(
        .make("Illusory Crowd", school: "Illusion (Figment)", levels: "bard 1, shaman 1, skald 1, witch 1",
                          castingTime: "1 standard action", components: "V, S, M (a shirt button)",
                          range: "medium (100 ft. + 10 ft./level)", area: "one 10-ft. cube of illusory people", targets: "",
                          duration: "1 minute/level (D)",
                          savingThrow: "Will disbelief (if interacted with);", sr: false,
                          summary: "This spell creates an illusion of a stationary group of people milling about.",
                          desc: "This spell creates an illusion of a stationary group of people milling about. They can be of any humanoid race or ethnicity you are familiar with, and they speak a language of your choice that you know. To anyone not paying close attention, their conversations sound perfectly normal but are in fact repetitive and essentially meaningless. The crowd appears to be a group of typical citizens, and cannot duplicate any specific group, guild, or military squad. The crowd affects movement and provides cover like a real crowd ( Pathfinder RPG Core Rulebook 436), b ut a nyone who disbelieves the illusion can move and attack through the crowd without impediment. Each round a creature enters or makes an attack through a crowd-filled square, it can attempt a save to disbelieve the illusion. Similarly, any creature that spends a round listening to or talking to the crowd can attempt a save to disbelieve the illusion. If the group is placed in any terrain other than urban, each creature attempting a save to disbelieve the spell gains a +5 bonus on the save.",
                          source: "Heroes of the Streets", isPremium: true)
        )
        try await db.insertSpell(
        .make("Locksight", school: "Divination", levels: "alchemist 1, antipaladin 1, arcanist 1, bard 1, inquisitor 1, investigator 1, skald 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M/DF (a small key)",
                          range: "touch", area: "", targets: "one creature",
                          duration: "1 hour/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The target can observe for 1 full round a lock that he is aware of (or object that includes a lock, such as a chest or door) that is within 60 feet to automatically determine whether it is open,…",
                          desc: "The target can observe for 1 full round a lock that he is aware of (or object that includes a lock, such as a chest or door) that is within 60 feet to automatically determine whether it is open, closed, or jammed. If the target creature is trained in Disable Device, by concentrating on a lock for 3 rounds, he can also determine the quality of the lock (simple, average, good, or superior). This spell does not enable the target to see hidden locks, such as those on secret doors.",
                          source: "Heroes of the Streets", isPremium: true)
        )
        try await db.insertSpell(
        .make("Peace Bond", school: "Abjuration", levels: "arcanist 1, bard 1, cleric 1, druid 1, hunter 1, inquisitor 1, oracle 1, paladin 1, shaman 1, skald 1, sorcerer 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M/DF (a glass cube)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one or more 5-ft. cubes, no two of which can be more than 30 ft. apart", targets: "",
                          duration: "1 minute/level",
                          savingThrow: "none;", sr: false,
                          summary: "This spell creates one glowing rune of peace, plus one per 2 caster levels above 1st (to a maximum of five runes at 9th level).",
                          desc: "This spell creates one glowing rune of peace, plus one per 2 caster levels above 1st (to a maximum of five runes at 9th level). An identical symbol appears on your forehead for the duration of the spell and cannot be disguised (though it is visible only if you are visible). Each rune illuminates a 5-foot cube, preventing any spell you cast of up to 3rd level and that has a defined area (as opposed to targets or an effect) from entering or affecting the 5-foot cube. For example, creatures and items within any square affected by peace bond take no damage from a",
                          source: "Heroes of the Streets", isPremium: true)
        )
        try await db.insertSpell(
        .make("Speak Local Language", school: "Divination", levels: "arcanist 1, bard 1, cleric 1, hunter 1, inquisitor 1, oracle 1, ranger 1, skald 1, sorcerer 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, M/DF (a worn-out coin)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 min./level",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "This spell functions as tongues , except the creature touched gains only the ability to speak and understand a regional human language, such as Varisian or Common (Taldane in the Inner Sea region or…",
                          desc: "This spell functions as tongues , except the creature touched gains only the ability to speak and understand a regional human language, such as Varisian or Common (Taldane in the Inner Sea region or Tien in Tian Xia), and the language granted must be one you know. You must select the language at the time of casting. The language can’t be a dead language, such as Ancient Osiriani or Jistka. The target speaks the language with a native accent, but the spell doesn’t impart knowledge about any culture associated with the language, nor does it change the target’s appearance.",
                          source: "Heroes of the Streets", isPremium: true)
        )
        try await db.insertSpell(
        .make("Wall of Clockwork", school: "Conjuration (Creation)", levels: "arcanist 5, cleric 5, oracle 5, sorcerer 5, warpriest 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "wall of bronze clockworks whose area is up to one 5-ft.-square/level (S)", targets: "",
                          duration: "1 minute/level",
                          savingThrow: "Reflex half or Reflex negates, see text;", sr: true,
                          summary: "An immobile, vertical wall of spinning cogs and gears springs into existence.",
                          desc: "An immobile, vertical wall of spinning cogs and gears springs into existence. Any creature passing through the wall takes 1d6 points of piercing and slashing damage per 2 caster levels (maximum 10d6); a successful Reflex save halves the damage. The wall cannot be conjured so that it occupies the same space as a creature or another object. It must always be a flat plane, though you can shape its edges to fit the available space. A",
                          source: "Heroes of the Streets", isPremium: true),

                    // // MARK: - Heroes of the Wild
        )
        try await db.insertSpell(
        .make("Cheetah's Sprint", school: "Transmutation", levels: "bloodrager 1, druid 1, hunter 1, ranger 1, shaman 1, witch 1",
                          castingTime: "1 swift action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round",
                          savingThrow: "None", sr: false,
                          summary: "A wild surge of energy courses through your body and propels you into a sprint.",
                          desc: "A wild surge of energy courses through your body and propels you into a sprint. If you take a charge or run action before the end of your turn, you can move a total distance of up to 10 times your base land speed. This adjustment is an enhancement bonus. There is no effect on other modes of movement, such as burrow, climb, fly, or swim. As with other effects that increase your speed, this spell affects your jumping distance.",
                          source: "Heroes of the Wild", isPremium: true)
        )
        try await db.insertSpell(
        .make("Clear Grove", school: "Transmutation", levels: "druid 3, hunter 2, ranger 2, shaman 3, witch 3",
                          castingTime: "10 minutes", components: "V, S, M/DF (a miniature hoe)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "20-ft.-radius clearing", targets: "",
                          duration: "2 hours/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "Trees, shrubs, and other thick vegetation move out of the spell’s area. The affected area is cleared of all vegetation thick enough to provide cover or concealment.",
                          desc: "Trees, shrubs, and other thick vegetation move out of the spell’s area. The affected area is cleared of all vegetation thick enough to provide cover or concealment. This also creates a hole in any tree canopy, allowing sunlight to pass through. Affected trees and undergrowth form a 5-foot-wide ring along the edge of the clearing, which may provide cover or concealment based on the thickness of the vegetation (at the GM’s discretion). This spell doesn’t affect creatures of the plant type. The spell can affect vegetation altered with spells of equal or lower level (such as entangle",
                          source: "Heroes of the Wild", isPremium: true)
        )
        try await db.insertSpell(
        .make("Globe of Tranquil Water", school: "Abjuration", levels: "arcanist 5, cleric 4, druid 4, hunter 4, oracle 4, shaman 4, sorcerer 5, warpriest 4, witch 4, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M/DF (a glass globe)",
                          range: "20 ft.", area: "20-ft.-radius emanation, centered on you", targets: "",
                          duration: "1 minute/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "Upon casting this spell, a rippling bubble of calm water extends outward from you to a radius of 20 feet and remains centered on you when you move.",
                          desc: "Upon casting this spell, a rippling bubble of calm water extends outward from you to a radius of 20 feet and remains centered on you when you move. The bubble blocks all natural and magical precipitation such as rain, snow, and hail (including spells such as ice storm ). This bubble also pushes out any fog or mist within the area, though it does not affect temperature and can’t block natural or magical lightning. All water in this radius counts as calm water for the purposes of Swim checks, and the bubble prevents sprays and blasts of mundane and magic water from striking with enough force to deal damage, move creatures or halt their movement, or perform any action that requires an attack roll or combat maneuver check. Water elementals are affected by a",
                          source: "Heroes of the Wild", isPremium: true)
        )
        try await db.insertSpell(
        .make("Oasis", school: "Transmutation", levels: "arcanist 6, cleric 6, druid 5, hunter 5, oracle 6, sorcerer 6, warpriest 6, wizard 6",
                          castingTime: "30 minutes", components: "V, S, M/DF (1 gallon of water)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "water source similar to a natural spring", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions in any natural terrain on the Material Plane.",
                          desc: "This spell functions in any natural terrain on the Material Plane. It redirects the flow of water in the ground toward the surface at the designated point, creating a permanent water source similar to a natural spring. The spring discharges 5 gallons of pure drinking water per caster level each hour. If the shape of the terrain is suitable, a pond forms around the spring. If there is already a natural spring within 1 mile, its water output is reduced by an amount equal to the water produced by this spell’s spring. A spring that has its water output reduced to 0 gallons per hour dries up and ceases to be a spring. This spell functions differently depending on the terrain in which it’s cast. In a desert, you must succeed at a DC 25 caster level check to actually create the spring, and its output is 1 gallon of drinking water per caster level each day. Furthermore, in dry areas, erosion may cause the flow of water to be blocked if the affected area is left untended before a sufficient amount of vegetation has grown around it to keep the soil in place. In an arctic environment, low temperatures may cause the water to freeze. In a tropical environment, parasites may contaminate the water if the spring is created in a place where the water stands in a stagnant pool.",
                          source: "Heroes of the Wild", isPremium: true)
        )
        try await db.insertSpell(
        .make("Planar Refuge", school: "Conjuration (Creation)", levels: "arcanist 7, cleric 7, druid 7, oracle 7, shaman 7, sorcerer 7, summoner 6, witch 7, wizard 7",
                          castingTime: "1 hour", components: "V, S, M (precious stones worth 500 gp)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "50-ft.-radius area of safe environment", targets: "",
                          duration: "1 day/level",
                          savingThrow: "none;", sr: false,
                          summary: "This spell enforces the rules of the Material Plane on other planes of existence. Upon casting this spell on another plane, a spherical pocket of wilderness terrain forms around the designated point.",
                          desc: "This spell enforces the rules of the Material Plane on other planes of existence. Upon casting this spell on another plane, a spherical pocket of wilderness terrain forms around the designated point. The affected area defies the local climate and planar traits, suppressing any harmful environmental effects such as toxicity, extreme temperatures, or lack of air (though this spell doesn’t affect gravity). The area also becomes lush with edible plants whose appearance, taste, and smell bear characteristics distinct to the environment. On a negative-dominant plane GMG , for example, the plants grow ghastly white leaves and taste bitter. Though",
                          source: "Heroes of the Wild", isPremium: true)
        )
        try await db.insertSpell(
        .make("Raven's Flight", school: "Transmutation", levels: "arcanist 2, bard 3, druid 3, hunter 2, inquisitor 3, magus 2, ranger 2, shaman 2, skald 3, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 swift action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round",
                          savingThrow: "None", sr: false,
                          summary: "You can cast this spell only if it is the first action you take on your turn.",
                          desc: "You can cast this spell only if it is the first action you take on your turn. In a burst of shadowy feathers, you turn into a Tiny blurred shape reminiscent of a black raven until the beginning of your next turn. You gain a fly speed of 50 feet with good maneuverability, and apply appropriate size modifiers (though your ability scores don’t change). Until the beginning of your next turn, you can take only the 5-foot step, move, run, or withdraw actions. If the spell is dispelled while you are still aloft, the power of flight dissipates slowly; you float downward 60 feet on your next turn, then fall any remaining distance.",
                          source: "Heroes of the Wild", isPremium: true)
        )
        try await db.insertSpell(
        .make("Wild Instinct", school: "Divination", levels: "bloodrager 2, druid 2, hunter 2, ranger 2, shaman 2",
                          castingTime: "standard action", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "8 hours",
                          savingThrow: "None", sr: false,
                          summary: "This spell sharpens your senses, allowing you to perceive threats you would otherwise miss.",
                          desc: "This spell sharpens your senses, allowing you to perceive threats you would otherwise miss. You become aware of sounds and smells you would normally overlook, and even retain the ability to detect threats when soundly asleep. For the duration of the spell, you gain a +5 bonus on Perception checks to act in a surprise round. Additionally, you don’t take a penalty on Perception checks while sleeping, and can choose to wake if you notice a threat while asleep.",
                          source: "Heroes of the Wild", isPremium: true),

                    // // MARK: - Humans of Golarion
        )
        try await db.insertSpell(
        .make("Ablative Sphere (Garundi)", school: "Abjuration", levels: "arcanist 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a crystalline sphere worth 10 gp)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "The Garundi tenaciously protect their homes, and through the years they have perfected magic to aid them in their defense. An immobile, crystalline, weblike globe surrounds you.",
                          desc: "The Garundi tenaciously protect their homes, and through the years they have perfected magic to aid them in their defense. An immobile, crystalline, weblike globe surrounds you. When the ablative sphere winks into existence, it provides you with improved cover (",
                          source: "Humans of Golarion", isPremium: true)
        )
        try await db.insertSpell(
        .make("Burning Arc (Keleshite)", school: "Evocation", levels: "arcanist 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one primary target plus one additional target/3 levels (each of which must be within 15 ft. of the primary target)",
                          duration: "instantaneous",
                          savingThrow: "Reflex half;", sr: true,
                          summary: "Keleshites brag that they stole this spell from genie-kind thousands of years ago while other civilizations struggled without fire.",
                          desc: "Keleshites brag that they stole this spell from genie-kind thousands of years ago while other civilizations struggled without fire. This spell causes an arc of flame to leap from your fingers, burning a number of enemies nearby. It deals 1d6 points of fire damage per caster level (maximum 10d6). For every additional target the discharge arcs to, reduce the number of damage dice by half (rounded down). Therefore, at 9th level, your burning arc deals 9d6 points of fire damage to the primary target, then 4d6 points of fire damage to a secondary target, then 2d6 points of fire damage to an additional target. Each target can attempt a Reflex saving throw for half damage. The Reflex DC to halve the damage of the secondary bolts is 2 lower than the DC to halve the damage of the primary bolt. You may choose secondary targets as you like, but they must all be within 15 feet of the primary target, and no target can be struck more than once. You can choose to affect fewer secondary targets than the maximum.",
                          source: "Humans of Golarion", isPremium: true)
        )
        try await db.insertSpell(
        .make("Cultural Adaptation (Taldan)", school: "Divination", levels: "arcanist 1, bard 1, cleric 1, oracle 1, skald 1, sorcerer 1, warpriest 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M/DF (a document written in the language of the culture to be emulated)",
                          range: "personal", area: "", targets: "you",
                          duration: "10 minutes/level",
                          savingThrow: "None", sr: false,
                          summary: "During the height of the Empire of Taldor’s expansionism, Taldan wizards developed this spell with the idea that it might make pacifying their “uncivilized” conquests easier.",
                          desc: "During the height of the Empire of Taldor’s expansionism, Taldan wizards developed this spell with the idea that it might make pacifying their “uncivilized” conquests easier. While the spell has since fallen out of favor with Taldans, it is much embraced by others, bards and Pathfinders in particular. When casting this spell, you must concentrate on the culture to which you wish to adapt. If you speak the native language of the culture in question, then for the duration of this spell, you speak the language with a native accent. The spell does not teach you the language in question, but may be combined with tongues or a similar spell. Your body language and gestures mark you as a native of the culture, and you unconsciously make small decisions that help you blend in. These combined new traits give you a +2 on Diplomacy checks made to influence members of the culture to which you have adapted. You also gain a +2 circumstance bonus on Disguise checks made to pass yourself off as a member of the culture. Additionally, the DCs of enchantment (charm) spells you cast against natives of the culture to which you are attuned increase by +1.",
                          source: "Humans of Golarion", isPremium: true)
        )
        try await db.insertSpell(
        .make("Snow Shape (Ulfen)", school: "Transmutation", levels: "arcanist 2, cleric 2, druid 1, hunter 1, oracle 2, redmantisassassin 2, sorcerer 2, warpriest 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (a miniature shovel)",
                          range: "touch", area: "", targets: "snow or snow-sculpted object touched, up to 5 cubic ft. + 1 cubic ft./level",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "In frozen northern lands, where the earth may be hidden beneath heavy drifts of snow, Ulfen druids developed a variation of stone shape that other spellcasters have since learned.",
                          desc: "In frozen northern lands, where the earth may be hidden beneath heavy drifts of snow, Ulfen druids developed a variation of stone shape that other spellcasters have since learned. You can form a mass of snow into any shape that suits your purpose, as per the spell",
                          source: "Humans of Golarion", isPremium: true)
        )
        try await db.insertSpell(
        .make("Summon Totem Creature (Shoanti)", school: "Conjuration (Summoning)", levels: "arcanist 3, cleric 3, druid 3, hunter 3, oracle 3, ranger 3, sorcerer 3, summoner 3, summoner (unchained) 3, warpriest 3, wizard 3",
                          castingTime: "10 minutes", components: "V, S, M/DF (a piece of bone from any one of your totem animals)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one summoned creature", targets: "",
                          duration: "1 hour (D)",
                          savingThrow: "none;", sr: false,
                          summary: "The Shoanti revere more than the deities of distant planes, but also the animals and natural forces of the rugged lands they call home.",
                          desc: "The Shoanti revere more than the deities of distant planes, but also the animals and natural forces of the rugged lands they call home. Shoanti spellcasters have learned ways to call upon the might of their quahs’ totem creatures in times of need. A character must have been raised by the Shoanti and be considered part of a quah to be able to cast this spell. Characters with access to this spell can only summon creatures revered by the quah they are a part of, as noted on the following lists. Except as noted above, this spell functions as summon nature’s ally III .",
                          source: "Humans of Golarion", isPremium: true),

                    // // MARK: - Inner Sea Gods
        )
        try await db.insertSpell(
        .make("Baphomet's Blessing", school: "Transmutation (Polymorph)", levels: "arcanist 4, bloodrager 4, cleric 4, druid 4, hunter 4, oracle 4, redmantisassassin 4, sorcerer 4, summoner 4, summoner (unchained) 4, warpriest 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, M/DF (powdered bull’s horn)",
                          range: "touch", area: "", targets: "one living creature",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "You change the target’s head into that of a bull. The creature’s Intelligence becomes 2, and it gains a gore melee attack that it can use as a primary or secondary attack.",
                          desc: "You change the target’s head into that of a bull. The creature’s Intelligence becomes 2, and it gains a gore melee attack that it can use as a primary or secondary attack. The gore attack uses the creature’s base attack bonus, and the creature gains a +2 bonus on attack and damage rolls with the gore attack. The gore attack deals a number of points of damage equal to 1d6 + Strength modifier if the target is Small, 1d8 + Strength modifier if the target is Medium, and 2d6 + Strength modifier if the target is Large or larger. The affected creature still retains its type, class, levels, and Hit Dice. The creature’s base attack bonus, base save bonuses, and hit points remain unmodified. It retains all of its class features and may still cast spells, though it must do so using its newly modified Intelligence score. Any items equipped in the creature’s head slot meld into its body. Affected items that grant passive bonuses continue to do so, though items that require activation become nonfunctional for the duration of the spell. If the target fails to resist",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertSpell(
        .make("Beacon of Luck", school: "Divination", levels: "bard 3, cleric 3, inquisitor 4, oracle 3, paladin 4, skald 3, warpriest 3 (Desna)",
                          castingTime: "1 standard action", components: "V, S, M/DF (a tuft of rabbit fur)",
                          range: "personal; see text", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "You send out a burst of luck with a 30-foot radius centered around you. While the beacon of luck is in effect, you gain a +2 sacred bonus on all saving throws.",
                          desc: "You send out a burst of luck with a 30-foot radius centered around you. While the beacon of luck is in effect, you gain a +2 sacred bonus on all saving throws. As an immediate action before a saving throw is made, allies within the area can choose to benefit from this luck, rolling twice for a saving throw and taking the better result. Once a creature benefits from the beacon of luck in this way, it cannot gain the benefit of this spell for 24 hours.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertSpell(
        .make("Blade Snare", school: "Abjuration", levels: "arcanist 3, bloodrager 3, druid 3, hunter 3, magus 3, ranger 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "none;", sr: false,
                          summary: "This spell creates an invisible magic field that does not stop weapons (whether manufactured or natural) from moving toward you, but impedes their motion when they are retracted.",
                          desc: "This spell creates an invisible magic field that does not stop weapons (whether manufactured or natural) from moving toward you, but impedes their motion when they are retracted. When you are hit with a melee attack, attempt a caster level check against your opponent’s CMD. If your check succeeds, your opponent’s attacking weapon or body part becomes caught in the field, as if magically affixed to your body. If your check fails, your opponent may retract its weapon. If your opponent’s melee weapon becomes trapped in the field, the opponent may release the weapon and move away from you. If your opponent attacked with a part of its body (such as a fist, a horn, a tail, etc.) or it attacked with a weapon but refuses to release it, your opponent gains the grappled condition. Because you are not using any part of your body to maintain control over your opponent, you do not gain the grappled condition. Once an opponent’s weapon is snared, you may attempt a new caster level check against that opponent’s CMD on each of your subsequent turns to maintain the grapple. This is a standard action, during which you may make any of the usual grappling actions, but if you choose to pin the opponent, you gain the grappled condition as well. On your opponent’s turn, it may try to retract its weapon or limb by attempting a combat maneuver check or Escape Artist check, the DC of which is equal to the spell’s saving throw.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertSpell(
        .make("Caustic Blood", school: "Transmutation", levels: "alchemist 4, arcanist 5, bloodrager 4, cleric 5, druid 4, hunter 4, investigator 4, magus 4, oracle 5, sorcerer 5, summoner 4, summoner (unchained) 4, warpriest 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (vial of black adder venom)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "Reflex half or negates, see text;", sr: false,
                          summary: "You imbue your blood with corrosive acid. Any time you take piercing or slashing damage, a spray of acidic blood spurts from your body in the direction of the opponent who inflicted the wound,…",
                          desc: "You imbue your blood with corrosive acid. Any time you take piercing or slashing damage, a spray of acidic blood spurts from your body in the direction of the opponent who inflicted the wound, dealing 1d6 points of acid damage per caster level (maximum 15d6, Reflex half). This spurt travels in a 10-foot line, damaging the first creature or object it touches, with no splash damage. After it contacts a creature or object, your acidic blood continues to burn that creature for 1 round, dealing 1d6 points of acid damage per 2 caster levels (maximum 7d6). A second successful Reflex save negates this additional damage.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertSpell(
        .make("Freedom's Toast", school: "Conjuration (Teleportation)", levels: "arcanist 4, bard 5, cleric 5, inquisitor 5, oracle 5, skald 5, sorcerer 4, warpriest 5, wizard 4 (Cayden Cailean)",
                          castingTime: "1 standard action", components: "V, S, M/DF (a small amount of ale in a flagon)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "When the caster hoists a flagon and delivers a toast to freedom, the target is transported up to 15 feet from its position to a space of your choice, though that space must be within your line of…",
                          desc: "When the caster hoists a flagon and delivers a toast to freedom, the target is transported up to 15 feet from its position to a space of your choice, though that space must be within your line of sight. If the target was prone at the time of casting, you can choose for the target to be standing upon reaching the destination. Furthermore, if the target was bound with nonmagical ropes, manacles, or other restraints, those restraints are not transported with the target, effectively freeing the target from those restraints. If the target is bound by magical restraints, you can bar those restraints from being transported with the target with a successful caster level check against a DC based on the restraints’ caster level (DC = 11 + the restraining magic item’s or spell’s caster level).",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hammer of Mending", school: "Transmutation", levels: "arcanist 5, cleric 6, oracle 6, sorcerer 5, summoner 5, summoner (unchained) 5, warpriest 6, wizard 5 (Torag)",
                          castingTime: "1 standard action", components: "V, S, F (a small mithral hammer worth 300 gp), DF",
                          range: "", area: "30-ft.-radius burst centered on you", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "Upon striking a piece of solid ground with the spell’s focus or a holy symbol, you let out a wave of energy that repairs items within its burst.",
                          desc: "Upon striking a piece of solid ground with the spell’s focus or a holy symbol, you let out a wave of energy that repairs items within its burst. All objects or constructs within the burst are repaired of 1d6 points of damage per level. When this spell affects constructs, the spell bypasses any immunity to magic as if the spell did not allow spell resistance. Hammer of mending can fix destroyed magic items (items with 0 hit points or fewer), and restores the magic properties of the item if your caster level is at least twice that of the item. Items with charges (such as wands) and single-use items (such as potions and scrolls) cannot be repaired in this way.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hunter's Blessing", school: "Transmutation", levels: "cleric 5, druid 5, hunter 5, inquisitor 5, oracle 5, shaman 5, warpriest 5 (Erastil)",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature/level, no two of which can be more than 30 ft. apart",
                          duration: "1 hour/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "When casting this spell, you designate a type or type and subtype of creature (using the ranger’s favored enemy categories; Pathfinder RPG Core Rulebook 64) and a type of terrain (using the list of…",
                          desc: "When casting this spell, you designate a type or type and subtype of creature (using the ranger’s favored enemy categories; Pathfinder RPG Core Rulebook 64) and a type of terrain (using the list of ranger’s favored terrain categories,",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertSpell(
        .make("Light Prison", school: "Evocation", levels: "arcanist 2, bard 2, cleric 2, inquisitor 2, magus 2, oracle 2, skald 2, sorcerer 2, warpriest 2, wizard 2 (Iomedae)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature/2 levels",
                          duration: "1 round/level (D)",
                          savingThrow: "Reflex negates;", sr: true,
                          summary: "Rays of light burst forth from your outstretched hand, encircling each target’s space with a cage of light. If a target fails its Reflex save, it becomes enclosed in the light prison .",
                          desc: "Rays of light burst forth from your outstretched hand, encircling each target’s space with a cage of light. If a target fails its Reflex save, it becomes enclosed in the light prison . A creature enclosed in a",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertSpell(
        .make("Lighten Object, Mass", school: "Transmutation", levels: "arcanist 1, bard 1, cleric 1, magus 1, oracle 1, redmantisassassin 1, skald 1, sorcerer 1, summoner 1, summoner (unchained) 1, warpriest 1, wizard 1 (Gorum)",
                          castingTime: "1 standard action", components: "V, M (goose down)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "1 object of up to 1 cubic ft./level",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "This spell functions like lighten object , except that it affects a number of objects equal to half your caster level.",
                          desc: "This spell functions like lighten object , except that it affects a number of objects equal to half your caster level.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertSpell(
        .make("Maddening Oubliette", school: "Conjuration (Teleportation)", levels: "arcanist 7, cleric 7, oracle 7, sorcerer 7, witch 7, wizard 7 (Zon-Kuthon)",
                          castingTime: "1 round", components: "V, S, M (the powdered bones of a creature that died in prison)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "special; see text",
                          savingThrow: "Will negates, see text;", sr: true,
                          summary: "The target is transported to a dark and dank prison in some unspecified horrific demiplane, where tentacles writhe around, clawed fingers grab at the creature (though they deal no damage), and harsh,…",
                          desc: "The target is transported to a dark and dank prison in some unspecified horrific demiplane, where tentacles writhe around, clawed fingers grab at the creature (though they deal no damage), and harsh, whispering voices speak blasphemies and maddening secrets. At the end of each round within this terrifying oubliette, the target can attempt a Will saving throw in order to escape the prison. The saving throw has a penalty equal to the number of rounds the target has spent in the oubliette (minimum –1 and maximum –5). If the target succeeds at its saving throw, it returns to its former space. If that space is occupied or otherwise unavailable, the target is shunted to the nearest available space. When the target returns from the oubliette, it is confused for a number of rounds equal to the number of rounds of imprisonment (minimum 1), unless it was confined in the oubliette for 10 or more rounds, in which case the target is affected as if it were subject to an insanity spell instead.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertSpell(
        .make("Plague Bearer", school: "Necromancy", levels: "alchemist 6, antipaladin 6, arcanist 7, cleric 6, druid 6, hunter 6, inquisitor 6, investigator 6, oracle 6, sorcerer 7, warpriest 6, witch 6, wizard 7 (Urgathoa)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "one living creature",
                          duration: "1 round/level; see text",
                          savingThrow: "Fortitude negates, see text;", sr: true,
                          summary: "You make the target an asymptomatic carrier for a host of virulent diseases.",
                          desc: "You make the target an asymptomatic carrier for a host of virulent diseases. Creatures that end their turn adjacent to the target must succeed at a Fortitude save or be affected as if by the spell contagion. The target itself does not become diseased, and suffers no ill effects from this spell. Once plague bearer ends, the target is no longer contagious, though any creature it infected remains diseased.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sadomasochism", school: "Necromancy", levels: "antipaladin 3, arcanist 4, bloodrager 4, cleric 3, inquisitor 3, magus 4, oracle 3, sorcerer 4, warpriest 3, witch 4, wizard 4 (Zon-Kuthon)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "Will negates, see text;", sr: true,
                          summary: "While subject to this spell, any time you are dealt damage, your attacker must roll damage for the attack twice and take the higher roll, but the attacker must also succeed at a Will saving throw or…",
                          desc: "While subject to this spell, any time you are dealt damage, your attacker must roll damage for the attack twice and take the higher roll, but the attacker must also succeed at a Will saving throw or become demoralized ( Core Rulebook 99) for 1 round. Each time you deal damage to a creature demoralized by this spell, you roll damage twice and take the higher result.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertSpell(
        .make("Spawn Calling", school: "Conjuration (Calling)", levels: "arcanist 9, cleric 9, oracle 9, sorcerer 9, witch 9, wizard 9 (Rovagug)",
                          castingTime: "1 week", components: "V, S, M/DF (bull’s blood, tallow, one or more humanoid victims totaling at least 15 Hit Dice)",
                          range: "medium (100 ft. + 10 ft./level)", area: "one Spawn of Rovagug", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "Having attained the highest and most profane form of magical achievement in the Great Destroyer’s service, you are able to call forth his most dreaded creations: the Spawn of Rovagug.",
                          desc: "Having attained the highest and most profane form of magical achievement in the Great Destroyer’s service, you are able to call forth his most dreaded creations: the Spawn of Rovagug. Casting this spell requires a week-long ritual involving the sacrifice of one or more sentient humanoid creatures that between them possess a total of at least 15 Hit Dice. You may not eat, sleep, or cast any other spells for the duration of this ritual. After the third day of the ritual, you must succeed at a Constitution check on each remaining day of the ritual (DC 10 + 1 for each previous check) or take 1d6 points of nonlethal damage from hunger. At the end of the ritual, you gain the exhausted condition from lack of sleep. Upon completion of the ritual, the ground rumbles in a 100- foot radius centered on you. This effect lasts for 1 round. Any creature on the ground in this area that attempts to cast a spell during this round must succeed at a concentration check (DC 20 + spell level) or lose the spell. Any creature on the ground in the area that attempts to attack or move during this round must succeed at a DC 15 Reflex save at the beginning of its turn or fall prone. At the beginning of your next turn, a massive fissure full of dark fire and shrieking cries appears at a point you designate within the spell’s range, and a Spawn of Rovagug emerges. This creature takes the form of a thunder behemoth (",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertSpell(
        .make("Spell Scourge", school: "Abjuration", levels: "arcanist 7, cleric 7, oracle 7, sorcerer 7, witch 7, wizard 7 (Nethys)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "instantaneous or 1d4 rounds; see text",
                          savingThrow: "Will negates;", sr: true,
                          summary: "A whip of cracking magical might appears in your hand, allowing you lash spells from the mind of enemy spellcasters.",
                          desc: "A whip of cracking magical might appears in your hand, allowing you lash spells from the mind of enemy spellcasters. With a lash of bluish-purple energy, you strip many protective spells and effects from a single creature. If the target of this spell is currently under the effects of any harmless spells or effects, it must succeed at a Will save or all of those spells and effects end, stripping the target of the benefit of those spells. If the target is not currently under the effect of least one harmless spell, the target is instead confused for 1d4 rounds.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertSpell(
        .make("Symbol of Debauchery", school: "Enchantment (Compulsion)", levels: "arcanist 8, bard 6, cleric 8, oracle 8, skald 6, sorcerer 8, witch 8, wizard 8",
                          castingTime: "10 minutes", components: "V, S, M (a set of bull genitals and powdered ruby worth 5,000 gp)",
                          range: "0 ft.; see text", area: "one symbol", targets: "",
                          duration: "see text",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You conjure a sizable symbol into being, a rune suggestive of bloated bodies, flung food, and flowing wine. This spell functions as symbol of death , except that all creatures within 60 feet of the",
                          desc: "You conjure a sizable symbol into being, a rune suggestive of bloated bodies, flung food, and flowing wine. This spell functions as symbol of death , except that all creatures within 60 feet of the",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertSpell(
        .make("Symbol of Dispelling", school: "Abjuration", levels: "arcanist 8, cleric 8, oracle 8, shaman 8, sorcerer 8, witch 8, wizard 8",
                          castingTime: "10 minutes", components: "V, S, M (pure grain alcohol and powdered diamond worth 5,000 gp)",
                          range: "0 ft.; see text", area: "one symbol", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as symbol of death , except that all creatures within 40 feet of the",
                          desc: "This spell functions as symbol of death , except that all creatures within 40 feet of the",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertSpell(
        .make("Transplant Visage", school: "Transmutation", levels: "alchemist 5, antipaladin 4, arcanist 5, cleric 4, inquisitor 4, investigator 5, magus 5, oracle 4, shaman 4, sorcerer 5, warpriest 4, witch 5, wizard 5",
                          castingTime: "1 round", components: "V, S, M (one corpse)",
                          range: "personal", area: "", targets: "you",
                          duration: "permanent",
                          savingThrow: "None", sr: false,
                          summary: "This spell allows you to add a creature’s stolen face to or remove such a face that you’ve already applied from your own.",
                          desc: "This spell allows you to add a creature’s stolen face to or remove such a face that you’ve already applied from your own. Before casting this spell, you must remove the face and eyes of a creature that has been dead no longer than 1 minute per caster level and place it over your own. Once you cast transplant visage , the creature’s stolen skin magically melds with your own, making the expressions and eye color on your new face seem perfectly natural. Your new appearance grants you a +10 bonus on Disguise checks. Because the alteration made by",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertSpell(
        .make("Unwelcome Halo", school: "Evocation", levels: "arcanist 1, cleric 1, oracle 1, paladin 1, sorcerer 1, warpriest 1, wizard 1 (Sarenrae)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one nongood creature",
                          duration: "1 minute/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell causes the target to glow as if surrounded by a halo of light.",
                          desc: "This spell causes the target to glow as if surrounded by a halo of light. This halo sheds normal light in a 20-foot radius from the creature, and increases the light level by one step for an additional 20 feet. This halo makes it impossible for the creature to gain concealment in nonmagical darkness, and in dim or darker conditions, the creature’s glow can be seen even if it is not within direct line of sight. If unwelcome halo is brought into an area of magical darkness (or vice versa), the effects of both spells are temporarily negated, so that the otherwise prevailing light conditions exist within the overlapping fields of effect.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertSpell(
        .make("Vengeful Stinger", school: "Transmutation (Polymorph)", levels: "arcanist 5, cleric 6, oracle 6, shaman 5, sorcerer 5, summoner 5, summoner (unchained) 5, warpriest 6, witch 5, wizard 5 (Calistria)",
                          castingTime: "1 standard action", components: "V, S, M (a living wasp), DF",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates, see text;", sr: false,
                          summary: "You grow a long, wasp-like tail complete with stinger that can strike those who dare attack you.",
                          desc: "You grow a long, wasp-like tail complete with stinger that can strike those who dare attack you. While you are under the effects of this spell, when a creature adjacent to you hits you with a melee attack, you can make an attack of opportunity with your stinging tail, even if your opponent’s attack would not otherwise provoke an attack of opportunity. You must otherwise be eligible to make an attack of opportunity to use this ability. The attack is made with your full attack bonus, and with a +2 sacred bonus on the attack roll. The stinging tail is considered a light weapon with a critical range of 19–20/×2. On a successful hit, the target takes 1d8 points of damage plus an amount of damage equal your Strength modifier and must succeed at a Fortitude save or it takes 1d4 points of Dexterity damage. This poison damage is also modified on a confirmed critical hit.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertSpell(
        .make("Vexing Miscalculation", school: "Enchantment (Compulsion)", levels: "cleric 2, inquisitor 2, oracle 2, warpriest 2, witch 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 minute/level or until discharged",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You frustrate an opponent with ill fortune that leads even its most accurate attacks astray.",
                          desc: "You frustrate an opponent with ill fortune that leads even its most accurate attacks astray. The target is unable to score critical threats for the duration of this spell, even if the result of its roll would normally be a critical threat. If the creature rolls a natural 20, the attack still hits regardless of its opponent’s AC, but the hit is not eligible for a critical confirmation roll. Once a critical threat has been foiled by vexing miscalculation , the spell is discharged.",
                          source: "Inner Sea Gods", isPremium: true),

                    // // MARK: - Inner Sea Gods, Faiths of Balance
        )
        try await db.insertSpell(
        .make("Abstemiousness", school: "Transmutation", levels: "bard 1, cleric 1, druid 1, hunter 1, oracle 1, skald 1, warpriest 1, witch 1 (Irori)",
                          castingTime: "1 standard action", components: "V",
                          range: "touch", area: "", targets: "a handful of berries, grains, nuts, or rice",
                          duration: "1 hour",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "Sometimes Irori smiles on his worshipers, granting them a reprieve from physical hunger.",
                          desc: "Sometimes Irori smiles on his worshipers, granting them a reprieve from physical hunger. This spell magically enhances a handful of simple food, imbuing it with enough nutrition to satisfy a Medium or smaller creature for a full day. The spell does not create food, and thus will not alone prevent someone from starving, but it can extend even limited reserves for lengthy periods.",
                          source: "Inner Sea Gods, Faiths of Balance", isPremium: true)
        )
        try await db.insertSpell(
        .make("Early Judgment", school: "Divination", levels: "cleric 2, inquisitor 2, oracle 2, warpriest 2, witch 1 (Pharasma)",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one humanoid creature",
                          duration: "1d4 rounds",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You show one creature the effect of its life so far and what it might expect when it passes under Pharasma’s impartial gaze at the end of its life.",
                          desc: "You show one creature the effect of its life so far and what it might expect when it passes under Pharasma’s impartial gaze at the end of its life. Depending on the creature’s alignment and its adherence to its ethos, you can provide it a brief glimpse of the reward or punishment that waits for it when it dies by showing it a mental image of its destined plane in the Great Beyond. If the target is good-aligned, it is fascinated for 1d4 rounds on a failed save. If the target is neutral-aligned, it is confused for 1d4 rounds on a failed save. If the target is evil-aligned, it is shaken for 1d4 rounds on a failed save.",
                          source: "Inner Sea Gods, Faiths of Balance", isPremium: true)
        )
        try await db.insertSpell(
        .make("Fairness", school: "Enchantment (Compulsion)", levels: "cleric 1, inquisitor 2, oracle 1, paladin 2, warpriest 1 (Abadar)",
                          castingTime: "1 round", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one humanoid creature per level",
                          duration: "1 minute/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "Humanoid creatures affected by this spell must trade fairly with others to the best of their knowledge.",
                          desc: "Humanoid creatures affected by this spell must trade fairly with others to the best of their knowledge. If they know the fair value (or even an estimated fair value) of a good or service, they cannot participate in a trade if it would benefit one side unfairly, and must attempt to stop such trades from occurring, preventing them from cheating another while under the influence of this spell. The symbol of Abadar appears above the heads of those affected by this spell, making those affected and unaffected by the spell immediately apparent.",
                          source: "Inner Sea Gods, Faiths of Balance", isPremium: true)
        )
        try await db.insertSpell(
        .make("Lighten Object", school: "Transmutation", levels: "arcanist 1, bard 1, cleric 1, magus 1, oracle 1, redmantisassassin 1, skald 1, sorcerer 1, summoner 1, summoner (unchained) 1, warpriest 1, wizard 1 (Gorum)",
                          castingTime: "1 standard action", components: "V, M (goose down)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "1 object of up to 1 cubic ft./level",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "The target’s weight decreases by half. If this spell is cast on armor, the armor’s armor check penalty decreases by 1, though its categorization as light, medium, or heavy does not change.",
                          desc: "The target’s weight decreases by half. If this spell is cast on armor, the armor’s armor check penalty decreases by 1, though its categorization as light, medium, or heavy does not change. Lighten Object, Mass",
                          source: "Inner Sea Gods, Faiths of Balance", isPremium: true)
        )
        try await db.insertSpell(
        .make("Read Weather", school: "Divination", levels: "bard 1, cleric 1, druid 1, hunter 1, oracle 1, ranger 1, shaman 1, skald 1, warpriest 1, witch 1 (Gozreh)",
                          castingTime: "1 minute", components: "V, S, F (a set of marked sticks or bones worth at least 25 gp)",
                          range: "personal", area: "", targets: "you",
                          duration: "instantaneous",
                          savingThrow: "None", sr: false,
                          summary: "This spell allows you to forecast the weather at your location for the next 48 hours, providing you with advance warning of storms, tornadoes, and so on.",
                          desc: "This spell allows you to forecast the weather at your location for the next 48 hours, providing you with advance warning of storms, tornadoes, and so on. This forecast reveals only the weather that would arise naturally, and does not take into account any magical occurrences that might change the weather.",
                          source: "Inner Sea Gods, Faiths of Balance", isPremium: true)
        )
        try await db.insertSpell(
        .make("Seducer's Eyes", school: "Enchantment (Charm)", levels: "arcanist 2, bard 2, skald 2, sorcerer 2, witch 2, wizard 2 (Calistria)",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "10 minutes/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "You gain a bonus on Charisma-based skill checks equal to 1 + 1 for every 4 caster levels you possess (to a maximum of +5), but only when interacting with those who might conceivably find you sexually…",
                          desc: "You gain a bonus on Charisma-based skill checks equal to 1 + 1 for every 4 caster levels you possess (to a maximum of +5), but only when interacting with those who might conceivably find you sexually attractive. You do not gain this bonus against those you or your allies are attacking or threatening.",
                          source: "Inner Sea Gods, Faiths of Balance", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sky Swim", school: "Transmutation", levels: "bloodrager 3, cleric 3, druid 3, hunter 3, oracle 3, shaman 3, warpriest 3, witch 3 (Gozreh)",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "Large or smaller creature touched",
                          duration: "1 minute/level",
                          savingThrow: "none (harmless);", sr: true,
                          summary: "This spell grants the target the ability to swim through the air. If the target has a swim speed, it can move through the air at that speed.",
                          desc: "This spell grants the target the ability to swim through the air. If the target has a swim speed, it can move through the air at that speed. Otherwise, it must succeed at Swim checks to move as normal. Still air is treated as calm water, light or moderate wind is treated as rough water, strong or severe wind is treated as stormy water, and the target cannot swim through stronger winds ( Core Rulebook 439). This spell does not grant the ability to breathe air to creatures that normally can’t.",
                          source: "Inner Sea Gods, Faiths of Balance", isPremium: true)
        )
        try await db.insertSpell(
        .make("Spell Gauge", school: "Divination", levels: "arcanist 2, bard 2, cleric 2, inquisitor 2, oracle 2, skald 2, sorcerer 2, warpriest 2, witch 2, wizard 2 (Nethys)",
                          castingTime: "1 standard action", components: "V, S, F (a silver piece)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You immediately discover some of the spells that the target knows or has prepared. The number of spells revealed to you is equal to your caster level.",
                          desc: "You immediately discover some of the spells that the target knows or has prepared. The number of spells revealed to you is equal to your caster level. The target’s lowest-level spells are revealed first—ignoring 0-level spells—in a random order. Once all of the target’s 1st-level spells are revealed, the spell begins revealing 2nd-level spells, then 3rd-level spells. This spell does not reveal spells of 4th level or higher, nor does it reveal spelllike abilities or other special abilities. If cast on a creature that is not a spellcaster, that has only 0-level spells or spells of 4th level or higher prepared, that has expended all of its spells, or that has not prepared any spells that day, the spell has no effect.",
                          source: "Inner Sea Gods, Faiths of Balance", isPremium: true),

                    // // MARK: - Inner Sea Gods, Faiths of Corruption
        )
        try await db.insertSpell(
        .make("Brittle Portal", school: "Transmutation", levels: "antipaladin 2, arcanist 2, cleric 2, druid 2, hunter 2, inquisitor 2, oracle 2, redmantisassassin 2, sorcerer 2, warpriest 2, witch 2, wizard 2 (Rovagug)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "5-ft.-radius spread", targets: "",
                          duration: "1 round/level",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "This spell weakens the bonds of existence, and reduces the hardness of any nonmagical surface within its area of effect by 2 per caster level.",
                          desc: "This spell weakens the bonds of existence, and reduces the hardness of any nonmagical surface within its area of effect by 2 per caster level. The spell is centered on a flat surface chosen by the caster, and the hardness reduction effect persists for the duration of the spell.",
                          source: "Inner Sea Gods, Faiths of Corruption", isPremium: true)
        )
        try await db.insertSpell(
        .make("Lose the Trail", school: "Illusion (Glamer)", levels: "antipaladin 2, arcanist 1, hunter 1, ranger 1, redmantisassassin 1, sorcerer 1, wizard 1 (Norgorber)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature/level",
                          duration: "1 hour/level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The target or targets of this spell can obscure their tracks when fleeing from a pursuer. This increases the DC of any Survival checks made to track the spell’s targets by 2 per level of the caster.",
                          desc: "The target or targets of this spell can obscure their tracks when fleeing from a pursuer. This increases the DC of any Survival checks made to track the spell’s targets by 2 per level of the caster.",
                          source: "Inner Sea Gods, Faiths of Corruption", isPremium: true)
        )
        try await db.insertSpell(
        .make("Monstrous Extremities", school: "Transmutation (Polymorph)", levels: "arcanist 3, bloodrager 3, cleric 3, oracle 3, redmantisassassin 3, sorcerer 3, warpriest 3, witch 4, wizard 3 (Lamashtu)",
                          castingTime: "1 minute", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 hour/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You change one of the extremities of the creature touched—arms or legs only—into another shape of approximately the same size and mass. You can choose a tentacle, a hoof, or a wing.",
                          desc: "You change one of the extremities of the creature touched—arms or legs only—into another shape of approximately the same size and mass. You can choose a tentacle, a hoof, or a wing. The subject must take approximately 10 minutes to familiarize itself with the function and movement of the new extremity to use it properly. These new forms do not allow the subject to fly, run faster, or swim better; however, they do act as natural weapons of the appropriate type, and the subject can use them to make secondary attacks while making attacks with weapons as a full-attack action. The secondary attacks are made using the creature’s base attack bonus –5 and adding only 1/2 the creature’s Strength bonus on damage rolls. The subject cannot hold a weapon or use any item that would ordinarily fit into the slot of the changed extremity. The subject can receive the benefits of this spell multiple times.",
                          source: "Inner Sea Gods, Faiths of Corruption", isPremium: true)
        )
        try await db.insertSpell(
        .make("Night of Blades", school: "Evocation", levels: "antipaladin 4, arcanist 3, hunter 4, inquisitor 3, ranger 4, sorcerer 3, summoner 3, summoner (unchained) 3, wizard 3 (Norgorber)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "wall of blades up to 10 ft. long/level and 10 ft. tall", targets: "",
                          duration: "1 minute/level (D)",
                          savingThrow: "Reflex half;", sr: true,
                          summary: "Useful primarily to those who skulk in the darkness, this spell is a temporary trap for the unwary. You create an immobile wall of tiny black blades that whirl and tear into creatures like a cyclone.",
                          desc: "Useful primarily to those who skulk in the darkness, this spell is a temporary trap for the unwary. You create an immobile wall of tiny black blades that whirl and tear into creatures like a cyclone. Anyone who enters this space takes 1d4 points of damage per caster level (maximum 10d4), though a successful Reflex save halves the damage. The spell cannot be cast so that it appears in a space already occupied by Small or larger creatures.",
                          source: "Inner Sea Gods, Faiths of Corruption", isPremium: true)
        )
        try await db.insertSpell(
        .make("Shared Sacrifice", school: "Necromancy", levels: "antipaladin 3, cleric 2, oracle 2, shaman 2, summoner 3, summoner (unchained) 3, warpriest 2, witch 2 (Asmodeus)",
                          castingTime: "1 round", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You create a link to a target and can direct pain and damage through this link. You take only half damage from effects and attacks that deal hit point damage.",
                          desc: "You create a link to a target and can direct pain and damage through this link. You take only half damage from effects and attacks that deal hit point damage. The target of this spell takes the remainder of the damage. Forms of harm that do not involve hit points, such as charm effects, temporary ability damage, level drain, and death effects cannot be shared through this link. If you suffer a reduction in hit points because of a lowered Constitution score, the reduction is not split with the target of this spell because it is not hit point damage. When the spell ends, subsequent damage is no longer divided between the subject and you, but damage already split is not reassigned back to you. If you and the target of the spell move out of range of each other, the spell immediately ends.",
                          source: "Inner Sea Gods, Faiths of Corruption", isPremium: true)
        )
        try await db.insertSpell(
        .make("Touch of Bloodletting", school: "Necromancy", levels: "antipaladin 2, arcanist 2, bloodrager 1, cleric 1, druid 1, hunter 1, oracle 1, shaman 2, sorcerer 2, warpriest 1, witch 2, wizard 2 (Zon-Kuthon)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell causes any existing wounds that the target possesses to bleed profusely.",
                          desc: "This spell causes any existing wounds that the target possesses to bleed profusely. If the creature’s current total hit points are less than its maximum, this spell causes the creature to take 1 point of bleed damage each round and become exhausted for the duration of the spell. A successful DC 15 Heal check or any spell that cures hit point damage negates the effects of this spell.",
                          source: "Inner Sea Gods, Faiths of Corruption", isPremium: true),

                    // // MARK: - Inner Sea Gods, Faiths of Purity
        )
        try await db.insertSpell(
        .make("Enhance Water", school: "Transmutation", levels: "bard 1, cleric 1, oracle 1, paladin 1, skald 1, warpriest 1 (Cayden Cailean)",
                          castingTime: "1 round", components: "V, S",
                          range: "touch", area: "", targets: "1 pint of water/level",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates (harmless, object);", sr: true,
                          summary: "This spell transforms water into an alcoholic beverage, typically ale, beer, mead, or wine. The alcohol is of middling quality but perfectly drinkable.",
                          desc: "This spell transforms water into an alcoholic beverage, typically ale, beer, mead, or wine. The alcohol is of middling quality but perfectly drinkable. The spell also serves to remove poisons, diseases, minerals, and other toxins from the water as it transforms. The more contaminants that exist in the water, the darker the ale or the more full-bodied the wine becomes. The beverage’s alcohol content is not affected by the presence or absence of contaminants. This spell does not work on unholy water, potions, or other liquids with magical power.",
                          source: "Inner Sea Gods, Faiths of Purity", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hairline Fractures", school: "Transmutation", levels: "cleric 1, druid 1, hunter 1, oracle 1, shaman 1, warpriest 1, witch 1 (Torag)",
                          castingTime: "1 standard action", components: "V, S, M (a broken twig)",
                          range: "touch", area: "", targets: "5-foot-square section of stone or a creature with the earth subtype",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates (object);", sr: true,
                          summary: "With a single touch, you create temporary hairline fractures in a piece of stone or a creature with the earth subtype.",
                          desc: "With a single touch, you create temporary hairline fractures in a piece of stone or a creature with the earth subtype. If you cast this spell on a section of stone, you reduce its hardness to 5 and its hit points to 10/inch of thickness. If you cast this spell on a creature with the earth subtype, that creature takes a –2 penalty to AC for the spell’s duration. Make whole reverses this spell’s effect.",
                          source: "Inner Sea Gods, Faiths of Purity", isPremium: true)
        )
        try await db.insertSpell(
        .make("Haze of Dreams", school: "Enchantment (Charm)", levels: "bard 1, cleric 1, inquisitor 1, oracle 1, paladin 1, shaman 1, skald 1, warpriest 1, witch 1 (Desna)",
                          castingTime: "1 standard action", components: "V, M (pinch of sand)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You fill an enemy’s head with waking dreams, a reminder of the pleasures, delights, and terrors to be found in the dream world.",
                          desc: "You fill an enemy’s head with waking dreams, a reminder of the pleasures, delights, and terrors to be found in the dream world. While in this strange dream state, the target moves at half its normal speed (round down to the next 5-foot increment), which affects the creature’s jumping distance as normal for decreased speed. Multiple haze of dreams effects do not stack, nor does this spell’s effect stack with",
                          source: "Inner Sea Gods, Faiths of Purity", isPremium: true)
        )
        try await db.insertSpell(
        .make("Tap Inner Beauty", school: "Divination", levels: "bard 1, cleric 1, oracle 1, skald 1, warpriest 1, witch 1 (Shelyn)",
                          castingTime: "1 standard action", components: "V, M (a tiny mirror)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "This spell allows you to tap into the natural beauty of your soul and let it shine from your eyes and your speech.",
                          desc: "This spell allows you to tap into the natural beauty of your soul and let it shine from your eyes and your speech. While the spell is active, you gain a +2 insight bonus on all Charisma ability checks and Charisma-based skill checks.",
                          source: "Inner Sea Gods, Faiths of Purity", isPremium: true)
        )
        try await db.insertSpell(
        .make("Weapons Against Evil", school: "Transmutation", levels: "cleric 1, inquisitor 1, oracle 1, paladin 1, warpriest 1 (Iomedae)",
                          castingTime: "1 standard action", components: "V, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one weapon/level, no two of which can be more than 20 ft. apart",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates (harmless, object);", sr: true,
                          summary: "Each weapon this spell affects each shines with pale light that dimly illuminates a 5-foot square.",
                          desc: "Each weapon this spell affects each shines with pale light that dimly illuminates a 5-foot square. These weapons also ignore the DR of evil creatures that have DR 5 or lower, as long as the damage reduction is not DR/epic.",
                          source: "Inner Sea Gods, Faiths of Purity", isPremium: true),

                    // // MARK: - Inner Sea Gods, Gods and Magic
        )
        try await db.insertSpell(
        .make("Burst of Glory", school: "Enchantment (Compulsion)", levels: "cleric 5, inquisitor 4, oracle 5, paladin 4, warpriest 5 (Iomedae)",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "10 ft.", area: "10-ft.-radius burst, centered on you", targets: "",
                          duration: "1 round/level (D; see text)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "Allies in the area of this spell at the time of casting gain a +1 sacred bonus on attack rolls and saves against fear effects, plus 1 temporary hit point per caster level (maximum 20).",
                          desc: "Allies in the area of this spell at the time of casting gain a +1 sacred bonus on attack rolls and saves against fear effects, plus 1 temporary hit point per caster level (maximum 20). You shine with a white or golden radiance equal to a torch for the spell’s duration, though you can dismiss the glow effect as a free action.",
                          source: "Inner Sea Gods, Gods and Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Channel Vigor", school: "Transmutation", levels: "alchemist 3, bloodrager 3, cleric 3, inquisitor 3, investigator 3, magus 3, oracle 3, warpriest 3 (Irori)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "You focus the energy of your mind, body, and spirit into a specific part of your being, granting yourself an exceptional ability to perform certain tasks.",
                          desc: "You focus the energy of your mind, body, and spirit into a specific part of your being, granting yourself an exceptional ability to perform certain tasks. When you cast the spell, choose one of the following portions of your self as your focus target. Thereafter, you may change the focus target as a move action. You can gain the benefit of only one channel vigor spell at a time. Limbs : You gain the benefits of a",
                          source: "Inner Sea Gods, Gods and Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Channel the Gift", school: "Evocation", levels: "arcanist 3, bard 3, cleric 3, druid 3, hunter 3, oracle 3, ranger 3, skald 3, sorcerer 3, warpriest 3, witch 3, wizard 3 (Nethys)",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "ally spellcaster touched",
                          duration: "1 round or see text",
                          savingThrow: "Will negates (harmless) or none;", sr: true,
                          summary: "You channel your magical power to fuel the target’s spellcasting.",
                          desc: "You channel your magical power to fuel the target’s spellcasting. The next spell the target casts of 3rd level or lower does not expend a spell slot; in effect, you are using your spell slot to power the target’s spell. The target must start casting this spell before your next turn, and the spell cannot have a casting time longer than 1 full round. Your alignment, prohibited wizard school, and other restrictions on your own spellcasting do not affect the target, nor do you suffer any backlash from the target’s choice of spell. If you target yourself with this spell, you may spontaneously cast any prepared spell of 3rd level or lower without expending its spell slot on your next turn (this aspect of the spell has no effect if you are a spontaneous caster). The spell that’s cast after channel the gift cannot have a casting time longer than 1 full round.",
                          source: "Inner Sea Gods, Gods and Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Deadeye's Arrow", school: "Evocation", levels: "bloodrager 1, cleric 2, druid 1, hunter 1, inquisitor 1, magus 1, oracle 2, paladin 1, ranger 1, warpriest 2 (Erastil)",
                          castingTime: "1 standard action", components: "V, S, M (one arrow)",
                          range: "Medium (100 ft. + 10 ft./level) or see text", area: "arrow of electricity", targets: "",
                          duration: "instantaneous or 1 round (see text)",
                          savingThrow: "none;", sr: true,
                          summary: "You create an arrow made of crackling electricity, which you may use for one of two effects. Attack : You may throw the arrow up to Medium range or fire it from a bow up to the bow’s maximum range.",
                          desc: "You create an arrow made of crackling electricity, which you may use for one of two effects. Attack : You may throw the arrow up to Medium range or fire it from a bow up to the bow’s maximum range. Either use is a ranged touch attack. The arrow deals 1d6 points of electricity damage + 1 point per level (maximum +5).",
                          source: "Inner Sea Gods, Gods and Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Defending Bone", school: "Necromancy", levels: "arcanist 2, cleric 2, inquisitor 2, magus 2, oracle 2, sorcerer 2, warpriest 2, witch 2, wizard 2 (Pharasma)",
                          castingTime: "1 standard action", components: "V, S, F (a Medium creature’s skull or femur), DF",
                          range: "personal", area: "", targets: "you",
                          duration: "1 hour/level or until discharged",
                          savingThrow: "None", sr: false,
                          summary: "You animate a bone with necromantic energy, giving it the power to float near your body and interpose itself against physical attacks. This gives you damage reduction 5/bludgeoning.",
                          desc: "You animate a bone with necromantic energy, giving it the power to float near your body and interpose itself against physical attacks. This gives you damage reduction 5/bludgeoning. Once the bone has prevented a total of 5 points of damage per caster level (maximum 50 points), it is destroyed and the spell is discharged. This spell has no effect if you have damage reduction from another source.",
                          source: "Inner Sea Gods, Gods and Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Fallback Strategy", school: "Abjuration", levels: "cleric 1, inquisitor 1, magus 1, oracle 1, paladin 1, warpriest 1 (Torag)",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level or until discharged; see text",
                          savingThrow: "None", sr: false,
                          summary: "While this spell is active, you may reroll one attack roll, combat maneuver check, or skill check before the result of the roll or check is known.",
                          desc: "While this spell is active, you may reroll one attack roll, combat maneuver check, or skill check before the result of the roll or check is known. You must take the result of the reroll, even if it’s worse than the original roll. Once the reroll is used, the spell ends. You can have no more than one fallback strategy active on you at the same time.",
                          source: "Inner Sea Gods, Gods and Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ghoul Hunger", school: "Necromancy", levels: "antipaladin 2, arcanist 2, cleric 2, oracle 2, sorcerer 2, warpriest 2, witch 2, wizard 2 (Urgathoa)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one humanoid creature",
                          duration: "1 round/level; see text",
                          savingThrow: "Will negates, see text;", sr: true,
                          summary: "You awaken an unnatural hunger in the target, compelling it to fall upon a nearby helpless or dead humanoid creature and begin eating its flesh.",
                          desc: "You awaken an unnatural hunger in the target, compelling it to fall upon a nearby helpless or dead humanoid creature and begin eating its flesh. The target defends itself normally but takes no other actions while eating. The target does not take extraordinary risks to satisfy this urge (it wouldn’t jump over a pit or swim through lava to reach a suitable victim). If the target can’t fulfill this urge on its next turn, the spell fails. Each round on its turn, the target can attempt a new saving throw to end the effect.",
                          source: "Inner Sea Gods, Gods and Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Gozreh's Trident", school: "Evocation", levels: "bloodrager 2, cleric 2, druid 2, hunter 2, oracle 2, warpriest 2, witch 2 (Gozreh)",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "0 ft.", area: "trident-like bolt of electricity", targets: "",
                          duration: "1 minute/level (D)",
                          savingThrow: "none;", sr: true,
                          summary: "A 4-foot-long, blazing, forked bolt of electricity springs forth from your hand. You wield this spear-like bolt as if it were a trident (you are considered proficient with the bolt).",
                          desc: "A 4-foot-long, blazing, forked bolt of electricity springs forth from your hand. You wield this spear-like bolt as if it were a trident (you are considered proficient with the bolt). Attacks with Gozreh’s trident are melee touch attacks. The bolt deals 1d8 points of electricity damage + 1 point per 2 caster levels (maximum +10). Since the bolt is immaterial, your Strength modifier does not apply to the damage. The bolt can ignite combustible materials such as parchment, straw, dry sticks, and cloth.",
                          source: "Inner Sea Gods, Gods and Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Pick Your Poison", school: "Conjuration (Healing)", levels: "bard 1, cleric 1, inquisitor 1, oracle 1, skald 1, warpriest 1, witch 1 (Cayden Cailean)",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 minute/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "This spell temporarily converts even the deadliest poison affecting a creature into an intoxicating alcohol.",
                          desc: "This spell temporarily converts even the deadliest poison affecting a creature into an intoxicating alcohol. If the subject is affected by a poison effect while under the effects of this spell, instead of the poison’s normal effect, she feels intoxicated as if she’d just had a very strong drink and takes a –2 penalty on attacks, saves, and checks for the duration of the spell. When the spell’s duration expires, the penalty ends and the poison’s normal effects apply. Pick your poison does not affect any poison effects that occurred before the spell was cast.",
                          source: "Inner Sea Gods, Gods and Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Poisoned Egg", school: "Transmutation", levels: "arcanist 1, bard 1, cleric 1, inquisitor 1, magus 1, oracle 1, redmantisassassin 1, shaman 1, skald 1, sorcerer 1, warpriest 1, witch 1, wizard 1 (Norgorber)",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "one egg",
                          duration: "1 minute/level",
                          savingThrow: "none (object);", sr: false,
                          summary: "You transform the contents of a normal egg into a single dose of small centipede poison (injury; save DC 11;",
                          desc: "You transform the contents of a normal egg into a single dose of small centipede poison (injury; save DC 11;",
                          source: "Inner Sea Gods, Gods and Magic", isPremium: true),

                    // // MARK: - Inner Sea Gods, Pathfinder #17: A Memory of Darkness
        )
        try await db.insertSpell(
        .make("Secret Speech", school: "Divination", levels: "arcanist 2, bard 1, cleric 2, inquisitor 1, oracle 2, shaman 2, skald 1, sorcerer 2, warpriest 2, wizard 2 (Calistria)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 minutes/level",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "This spell grants the target the ability to send secret messages embedded within normal speech.",
                          desc: "This spell grants the target the ability to send secret messages embedded within normal speech. This is similar to the secret messages ability of the Bluff skill, but no check is needed; the speaker’s intended recipient always understands the hidden message perfectly, but other listeners cannot perceive the message at all. The target can send only one message at a time, though it can send that message to multiple listeners. The secret message is considered to be in the same language the target is speaking, and intended recipients hear and understand both the actual speech and the secret message. The target can make itself understood as far as its voice carries. For example, at a fancy noble’s wedding, a jealous former suitor casts this spell on himself before making a speech. Everyone hears his glowing words of praise, but only his allies hear his secret message instructing them to attack the groom.",
                          source: "Inner Sea Gods, Pathfinder #17: A Memory of Darkness", isPremium: true),

                    // // MARK: - Inner Sea Gods, Pathfinder #23: The Impossible Eye
        )
        try await db.insertSpell(
        .make("Face of the Devourer", school: "Transmutation (Polymorph)", levels: "adept 1, antipaladin 1, arcanist 1, bloodrager 1, cleric 1, druid 1, hunter 1, oracle 1, redmantisassassin 1, sorcerer 1, warpriest 1, wizard 1 (Rovagug)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 minute/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "You transform the target’s face into a hideous shape, such as a half-melted visage with insect legs instead of teeth, seeping pits instead of eyes, and suckered tongues dangling from its misshapen…",
                          desc: "You transform the target’s face into a hideous shape, such as a half-melted visage with insect legs instead of teeth, seeping pits instead of eyes, and suckered tongues dangling from its misshapen mouth. You do not choose what shape the target’s face takes, and the shape is different every time you cast the spell. This transformation does not interfere with the target’s senses or its ability to breathe, though it might prevent it from speaking. The target gains a +4 circumstance bonus on Intimidate checks. If the target does not normally have a bite attack, it gains a bite attack as a natural weapon for the duration of the spell. This bite attack deals 1d6 points of damage if the target is Medium, 1d4 points of damage if the target is Small, or 1d8 points of damage if the creature is Large. The target may use this bite as a primary attack or a secondary attack.",
                          source: "Inner Sea Gods, Pathfinder #23: The Impossible Eye", isPremium: true),

                    // // MARK: - Inner Sea Gods, Pathfinder #23: The Impossible Eye, Gods and Magic
        )
        try await db.insertSpell(
        .make("Rovagug's Fury", school: "Transmutation", levels: "adept 2, arcanist 2, bloodrager 2, cleric 2, inquisitor 2, oracle 2, redmantisassassin 2, sorcerer 2, warpriest 2, witch 2, wizard 2 (Rovagug)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "30 ft.", area: "cone-shaped burst", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: true,
                          summary: "You create a minor earthquake that can trip creatures. Attempt a single combat maneuver check and apply the result against the CMD of every creature in the area.",
                          desc: "You create a minor earthquake that can trip creatures. Attempt a single combat maneuver check and apply the result against the CMD of every creature in the area. If your roll equals or exceeds a creature’s CMD, that creature is knocked prone. This trip attack does not provoke an attack of opportunity (though you do provoke one for casting the spell), nor are you knocked prone if you fail the check by 10 or more. Unlike with a regular trip attack, you can trip any creature touching the ground, regardless of size. Improved Trip does not affect this spell in any way. Though the earthquake is small and focused on the ground, if the area is particularly unstable, the spell might cause items to topple, stones to shake loose from the walls or ceiling, and so on at the GM’s discretion.",
                          source: "Inner Sea Gods, Pathfinder #23: The Impossible Eye, Gods and Magic", isPremium: true),

                    // // MARK: - Inner Sea Gods, Pathfinder #26: The Sixfold Trial
        )
        try await db.insertSpell(
        .make("Inheritor's Smite", school: "Transmutation", levels: "cleric 2, inquisitor 2, oracle 2, paladin 2, warpriest 2 (Iomedae)",
                          castingTime: "1 swift action", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "see text",
                          savingThrow: "None", sr: false,
                          summary: "You channel the power of righteousness into your weapon arm, allowing you to strike with great force.",
                          desc: "You channel the power of righteousness into your weapon arm, allowing you to strike with great force. Your next melee attack (if made before the end of your next turn) gains a +5 sacred bonus on the attack roll. If the attack hits, you may immediately attempt a bull rush combat maneuver (with a +5 sacred bonus on your combat maneuver check) against the target without provoking an attack of opportunity; if your combat maneuver check exceeds the defender’s CMD by more than 5, you do not need to move with the target to push it back more than 5 feet.",
                          source: "Inner Sea Gods, Pathfinder #26: The Sixfold Trial", isPremium: true),

                    // // MARK: - Inner Sea Gods, Pathfinder #2: The Skinsaw Murders
        )
        try await db.insertSpell(
        .make("Dream Feast", school: "Conjuration (Creation)", levels: "cleric 1, druid 1, hunter 1, oracle 1, ranger 1, shaman 1, warpriest 1 (Desna)",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "instantaneous",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The next time the target sleeps (within the next 8 hours), she dreams of a rich feast with her favorite foods and drinks.",
                          desc: "The next time the target sleeps (within the next 8 hours), she dreams of a rich feast with her favorite foods and drinks. When she awakens, she is sated as if she had eaten a nutritious meal, regardless of what she dreamed she ate. The target must sleep for at least 1 hour to gain the benefits of this spell. Being awakened during this period interrupts the spell and cancels its effects. If you sleep with this spell prepared, you may automatically expend it while you sleep to gain the spell’s benefit. This expenditure does not count as spellcasting for the purpose of determining available spell slots (you could go to sleep at midnight, expend this spell during an 8-hour period of sleep, and still prepare your full allotment of spells in the morning).",
                          source: "Inner Sea Gods, Pathfinder #2: The Skinsaw Murders", isPremium: true),

                    // // MARK: - Inner Sea Gods, Pathfinder #32: Rivers Run Red
        )
        try await db.insertSpell(
        .make("Tracking Mark", school: "Evocation", levels: "bloodrager 1, cleric 1, druid 1, hunter 1, oracle 1, paladin 1, ranger 1, warpriest 1 (Erastil)",
                          castingTime: "1 standard action", components: "S, DF",
                          range: "long (400 ft. + 40 ft./level)", area: "", targets: "one creature",
                          duration: "10 minutes/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You gain a supernatural ability to detect tracks and other clues left behind by the target.",
                          desc: "You gain a supernatural ability to detect tracks and other clues left behind by the target. You treat the DCs of all Survival checks made to track the target as if they were 5 lower than normal, and you gain a +5 bonus on Perception checks made to notice the target if it is using Stealth or recognize it if it is using Disguise.",
                          source: "Inner Sea Gods, Pathfinder #32: Rivers Run Red", isPremium: true),

                    // // MARK: - Inner Sea Gods, Pathfinder #38: Racing to Ruin
        )
        try await db.insertSpell(
        .make("Ice Armor", school: "Transmutation", levels: "bloodrager 1, cleric 1, druid 1, hunter 1, oracle 1, warpriest 1 (Gozreh)",
                          castingTime: "1 minute", components: "V, S, F (5 gallons of water)",
                          range: "0 ft.; see text", area: "a suit of armor made of ice", targets: "",
                          duration: "1 hour/level or until destroyed",
                          savingThrow: "none;", sr: false,
                          summary: "You create a suit of armor made of ice. While cold to the touch, it does not harm the wearer, especially if worn over normal clothing (though it can hasten the effects of exposure in cold…",
                          desc: "You create a suit of armor made of ice. While cold to the touch, it does not harm the wearer, especially if worn over normal clothing (though it can hasten the effects of exposure in cold environments). It offers the same protection as a breastplate, except it has hardness 0 and 30 hit points. If the intended wearer is immersed in water when you cast this spell, you may form the armor around the wearer (who may be you); otherwise the wearer must don the armor normally. Attacks against the wearer that create heat or fire degrade the armor, reducing its armor bonus by 1 for every 5 points of fire damage the wearer takes; when the armor’s bonus to AC reaches 0, the armor is destroyed and the spell ends. Because the ice is slightly buoyant, the wearer gains a +2 circumstance bonus on Swim checks, except when swimming downward. Druids can wear ice armor without penalty.",
                          source: "Inner Sea Gods, Pathfinder #38: Racing to Ruin", isPremium: true),

                    // // MARK: - Inner Sea Gods, Pathfinder #41: The Thousand Fangs Below
        )
        try await db.insertSpell(
        .make("Fractions of Heal and Harm", school: "Transmutation", levels: "arcanist 3, bard 3, bloodrager 3, cleric 3, oracle 3, redmantisassassin 3, skald 3, sorcerer 3, warpriest 3, wizard 3 (Nethys)",
                          castingTime: "1 swift action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "instantaneous",
                          savingThrow: "None", sr: false,
                          summary: "This spell channels a portion of the next spell you cast into magic that heals you.",
                          desc: "This spell channels a portion of the next spell you cast into magic that heals you. The next instantaneous area damage spell of 3rd level or lower that you cast deals only 75% of its damage, but heals you of a number of hit points equal to the remaining 25% of the spell’s damage. For example, if you cast this spell and followed it with a fireball that would normally deal 40 hit points of damage, the",
                          source: "Inner Sea Gods, Pathfinder #41: The Thousand Fangs Below", isPremium: true),

                    // // MARK: - Inner Sea Gods, Pathfinder #44: Trial of the Beast
        )
        try await db.insertSpell(
        .make("Smite Abomination", school: "Evocation", levels: "cleric 5, inquisitor 4, oracle 5, warpriest 5 (Pharasma)",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "Drawing upon positive energy, you emulate some of a paladin’s power to smite undead. Choose one undead creature as your target.",
                          desc: "Drawing upon positive energy, you emulate some of a paladin’s power to smite undead. Choose one undead creature as your target. Your melee attacks against that target gain a bonus equal to your Charisma or Wisdom modifier, whichever is higher, on your attack rolls, and a bonus equal to your caster level on damage rolls. Your melee attacks also bypass the target’s damage reduction. These bonuses do not stack with the bonuses from a paladin’s smite.",
                          source: "Inner Sea Gods, Pathfinder #44: Trial of the Beast", isPremium: true),

                    // // MARK: - Inner Sea Gods, Pathfinder #50: Night of Frozen Shadows
        )
        try await db.insertSpell(
        .make("Aspect of the Nightingale", school: "Transmutation (Polymorph)", levels: "bard 1, cleric 1, druid 1, hunter 1, inquisitor 1, oracle 1, paladin 1, ranger 1, shaman 1, skald 1, warpriest 1 (Shelyn)",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "You take on an aspect of a nightingale. Your voice becomes clear and pleasant. You gain a +2 competence bonus on Perform (sing) checks and a +2 competence bonus on Diplomacy checks.",
                          desc: "You take on an aspect of a nightingale. Your voice becomes clear and pleasant. You gain a +2 competence bonus on Perform (sing) checks and a +2 competence bonus on Diplomacy checks. Once per minute, if you are subject to a charm effect that allows a saving throw, you may roll twice and take the more favorable result.",
                          source: "Inner Sea Gods, Pathfinder #50: Night of Frozen Shadows", isPremium: true),

                    // // MARK: - Inner Sea Gods, Pathfinder #53: Tide of Honor
        )
        try await db.insertSpell(
        .make("Replenish Ki", school: "Conjuration (Healing)", levels: "cleric 4, oracle 4, warpriest 4 (Irori)",
                          castingTime: "1 minute", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "instantaneous",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You attune the target’s internal store of supernatural energy to the cosmos, replenishing its ki pool. If you are the target, you regain 2 ki points.",
                          desc: "You attune the target’s internal store of supernatural energy to the cosmos, replenishing its ki pool. If you are the target, you regain 2 ki points. If another creature is the target, it regains 1 ki point. This does not allow the target to exceed its ki pool’s maximum. This spell has no effect if the target does not have a ki pool.",
                          source: "Inner Sea Gods, Pathfinder #53: Tide of Honor", isPremium: true),

                    // // MARK: - Inner Sea Gods, Pathfinder #59: The Price of Infamy
        )
        try await db.insertSpell(
        .make("False Alibi", school: "Enchantment (Compulsion)", levels: "bard 3, cleric 3, inquisitor 3, oracle 3, skald 3, warpriest 3 (Norgorber)",
                          castingTime: "1 round", components: "V, S, M (emerald dust worth 100 gp)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "permanent; see text",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions similarly to modify memory , except you can modify the target’s memory only in a specific way.",
                          desc: "This spell functions similarly to modify memory , except you can modify the target’s memory only in a specific way. In response to a triggering condition you determine, up to the last 5 minutes of the target’s memory are eliminated and replaced with a memory of your choosing (or no memory at all). For example, you could cast this on an assassin, set it to trigger when he completes his kill, and replace his memory of the murder with the memory of him discovering the body and picking up the murder weapon. You can cast this spell multiple times on the same target, even with the same trigger, affecting different memories. A single casting of",
                          source: "Inner Sea Gods, Pathfinder #59: The Price of Infamy", isPremium: true),

                    // // MARK: - Inner Sea Gods, Pathfinder #62: Curse of the Lady's Light
        )
        try await db.insertSpell(
        .make("Firebelly", school: "Abjuration", levels: "alchemist 1, bloodrager 1, cleric 1, druid 1, hunter 1, investigator 1, oracle 1, paladin 1, warpriest 1 (Torag)",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "Reflex half, see text;", sr: true,
                          summary: "A magical fire warms your belly, granting fire resistance 5 and making your gut hot to the touch (but not enough to damage you or anything else).",
                          desc: "A magical fire warms your belly, granting fire resistance 5 and making your gut hot to the touch (but not enough to damage you or anything else). As a standard action, you can breathe a 15-foot cone of flame that deals 1d4 points of fire damage (Reflex half, SR applies). Each time you use this breath weapon, reduce the remaining duration of the spell by 1 minute.",
                          source: "Inner Sea Gods, Pathfinder #62: Curse of the Lady's Light", isPremium: true),

                    // // MARK: - Inner Sea Gods, Pathfinder #8: Seven Days to the Grave, Gods and Magic
        )
        try await db.insertSpell(
        .make("Abadar's Truthtelling", school: "Enchantment (Compulsion)", levels: "cleric 1, inquisitor 1, oracle 1, paladin 1, warpriest 1 (Abadar)",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 min./level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions identically to the spell zone of truth , except as noted above.",
                          desc: "This spell functions identically to the spell zone of truth , except as noted above. The target momentarily takes on the semblance of a being of perfect order, like an archon or inevitable, so that all who can see the target know it is affected by the spell. This divine guise flickers over the target for only an instant and does not allow it to pass as a member of a different race.",
                          source: "Inner Sea Gods, Pathfinder #8: Seven Days to the Grave, Gods and Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Blessing of the Watch", school: "Enchantment (Compulsion)", levels: "cleric 1, inquisitor 1, oracle 1, paladin 1, warpriest 1 (Abadar )",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "50 ft.", area: "The caster and all allies within a 50-ft. burst, centered on the caster", targets: "",
                          duration: "1 hour/level",
                          savingThrow: "none;", sr: true,
                          summary: "This spell functions like bless , except as noted. It works only in the caster’s home city, and in areas under the jurisdiction of the city watch.",
                          desc: "This spell functions like bless , except as noted. It works only in the caster’s home city, and in areas under the jurisdiction of the city watch. For example, if the watch patrols a shantytown outside the city walls but not the ruined subterranean tunnels that lie beneath the city, the spell works in the former area but not the latter.",
                          source: "Inner Sea Gods, Pathfinder #8: Seven Days to the Grave, Gods and Magic", isPremium: true),

                    // // MARK: - Inner Sea Intrigue
        )
        try await db.insertSpell(
        .make("Apathy", school: "Enchantment (Compulsion)", levels: "arcanist 5, bard 4, mesmerist 4, psychic 5, skald 4, sorcerer 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (a shiny bead)",
                          range: "long (400 ft. + 40 ft./level)", area: "", targets: "one creature",
                          duration: "1 hour/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You cause a creature to temporarily lose interest in a passion or pursuit, taking the heat off your trail to facilitate a getaway, the finalization of a scheme, or the elimination of incriminating…",
                          desc: "You cause a creature to temporarily lose interest in a passion or pursuit, taking the heat off your trail to facilitate a getaway, the finalization of a scheme, or the elimination of incriminating evidence. When casting the spell, you designate a subject or activity about which the target becomes indifferent. While under the effects of apathy, the target takes a –5 penalty on all skill checks and ability checks to investigate, pursue, or otherwise advance its goals in relation to the designated subject. In most cases, however, the target does not attempt such checks if they can be avoided, as it simply has no interest in putting effort into the endeavor. If the chosen activity is something that would be harmful for the target to refrain from doing (such as eating, sleeping, or holding its breath underwater), the target receives a +5 bonus on the saving throw or other check required by its inaction, and receives a new saving throw to negate the effects of this spell with the same +5 bonus immediately after. The bonus on these saving throws and checks increases by 1 for each subsequent check required by the same condition. If you directly interact with the target of this spell (such as engaging it in combat or targeting it with another spell or effect), the spell immediately ends.",
                          source: "Inner Sea Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Assumed Likeness", school: "Illusion (Phantasm)", levels: "arcanist 2, bard 1, magus 2, medium 1, mesmerist 1, occultist 2, psychic 2, skald 1, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature/level, no two of which can be more than 30 ft. apart",
                          duration: "10 minutes/level (D)",
                          savingThrow: "Will disbelief;", sr: true,
                          summary: "You draw upon the memories of the targets to create a visual disguise for yourself that only they can see. When you cast the spell, you choose an emotion from the table below.",
                          desc: "You draw upon the memories of the targets to create a visual disguise for yourself that only they can see. When you cast the spell, you choose an emotion from the table below. Each target perceives you as a creature it feels that way toward. If it doesn’t feel that way toward anyone, it instead perceives you as a stranger with features likely to evoke that emotion (e.g., if you choose respect, a guard who was taught to respect her elders but who currently knows no elders might see you as an elderly version of yourself). Since you don’t know how you will appear to each target, you must match your actions and statements to fit with the illusion as best you can. While the spell grants a +10 bonus on Disguise checks like disguise self does, you also take a –5 penalty on Disguise checks until you can get a sense of who the target thinks you are. Each target who fails to disbelieve the phantasm and is fooled by your Disguise check takes a –2 penalty on Sense Motive checks to notice your lies, and each emotion choice grants you an additional benefit against such targets, as listed in the table below. Emotion Effect",
                          source: "Inner Sea Intrigue", isPremium: true)
        )
        try await seedSpellsH()
    }
}

// MARK: - SpellEntry factory
private extension SpellEntry {
    static func make(
        _ title: String,
        school: String,
        levels: String,
        castingTime: String,
        components: String,
        range: String,
        area: String = "",
        targets: String = "",
        duration: String,
        savingThrow: String,
        sr: Bool,
        summary: String,
        desc: String,
        source: String = "Core Rulebook",
        isPremium: Bool = false
    ) -> SpellEntry {
        SpellEntry(
            id: UUID(),
            title: title,
            summary: summary,
            isPremium: isPremium,
            school: school,
            levels: levels,
            castingTime: castingTime,
            components: components,
            range: range,
            area: area,
            targets: targets,
            duration: duration,
            savingThrow: savingThrow,
            spellResistance: sr,
            description: desc,
            source: source
        )
    }
}