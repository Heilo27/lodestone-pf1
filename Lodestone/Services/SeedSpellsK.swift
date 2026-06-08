import Foundation

extension SeedDataBuilder {
    func seedSpellsK() async throws {
        try await db.insertSpell(
        .make("Litany of Escape", school: "Conjuration (Teleportation)", levels: "antipaladin 3, inquisitor 4, paladin 3",
                          castingTime: "1 swift action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one willing creature that is grappled",
                          duration: "instantaneous",
                          savingThrow: "no;", sr: true,
                          summary: "With a powerful prayer, you call upon the servants of your god to whisk a friend out of a grapple. The target loses the grappled and pinned conditions and is teleported 10 feet.",
                          desc: "With a powerful prayer, you call upon the servants of your god to whisk a friend out of a grapple. The target loses the grappled and pinned conditions and is teleported 10 feet. If there is no available space for the target to teleport to, the spell fails.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Litany of Madness", school: "Enchantment (Charm)", levels: "antipaladin 4, inquisitor 6",
                          castingTime: "1 swift action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 or more rounds (see below)",
                          savingThrow: "no, see below;", sr: true,
                          summary: "This litany is a sermon of madness. The target is confused. At the start of each of its turns, it can make a Will saving throw against the confused effect (DC of the spell).",
                          desc: "This litany is a sermon of madness. The target is confused. At the start of each of its turns, it can make a Will saving throw against the confused effect (DC of the spell). If the target fails the save, it continues to be confused. If it makes the save, the effect ends. While subject to this spell, the target cannot be the target of another spell that has the word \"litany\" in the title.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Litany of Righteousness", school: "Evocation", levels: "inquisitor 3, paladin 2",
                          castingTime: "1 swift action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round",
                          savingThrow: "Will negates;", sr: true,
                          summary: "Calling down a litany of anathema, you make an evil more susceptible to the attacks of good creatures.",
                          desc: "Calling down a litany of anathema, you make an evil more susceptible to the attacks of good creatures. If the target is evil, it takes double damage from attacks made by creatures with a good aura (from a class feature or as a creature with the good subtype). If the target also has the evil subtype; when it is hit with attacks made by creatures with a good aura, it is also dazzled for 1d4 rounds. If this spell targets a nonevil creature (or one that lacks the evil subtype), it has no effect, and the spell is wasted. While subject to this spell, the target cannot be the target of another spell that has the word \"litany\" in the title.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Litany of Sight", school: "Divination", levels: "antipaladin 3, inquisitor 4, paladin 3",
                          castingTime: "1 swift action", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round",
                          savingThrow: "no;", sr: true,
                          summary: "This litany reveals the unseen to you. You can see invisible creatures and objects within 30 feet.",
                          desc: "This litany reveals the unseen to you. You can see invisible creatures and objects within 30 feet. While subject to this spell, the target cannot be the target of another spell that has the word \"litany\" in the title.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Litany of Sloth", school: "Enchantment (Compulsion)", levels: "antipaladin 1, inquisitor 1, paladin 1",
                          castingTime: "1 swift action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round",
                          savingThrow: "Will negates;", sr: true,
                          summary: "With a litany against the wages of sloth, you slow the target’s defenses. The target cannot make attacks of opportunity or cast spells defensively.",
                          desc: "With a litany against the wages of sloth, you slow the target’s defenses. The target cannot make attacks of opportunity or cast spells defensively. While subject to this spell, the target cannot be the target of another spell that has the word \"litany\" in the title.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Litany of Thunder", school: "Evocation", levels: "antipaladin 4, inquisitor 5, paladin 4",
                          castingTime: "1 swift action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "You call down a thunderous boom upon your enemy. The target becomes deafened until the condition is removed, and is confused for 1 round.",
                          desc: "You call down a thunderous boom upon your enemy. The target becomes deafened until the condition is removed, and is confused for 1 round. While subject to this spell, the target cannot be the target of another spell that has the word \"litany\" in the title.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Litany of Vengeance", school: "Transmutation", levels: "antipaladin 4, inquisitor 5, paladin 4",
                          castingTime: "1 swift action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round",
                          savingThrow: "no;", sr: true,
                          summary: "This litany causes your enemy to feel the pain of blows more sharply.",
                          desc: "This litany causes your enemy to feel the pain of blows more sharply. Anyone who hits the target with an attack gains a +5 sacred or profane bonus (depending on the alignment of the caster) to that attack’s damage. While subject to this spell, the target cannot be the target of another spell that has the word \"litany\" in the title.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Litany of Warding", school: "Transmutation", levels: "antipaladin 2, inquisitor 3, paladin 2",
                          castingTime: "1 swift action", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round",
                          savingThrow: "None", sr: false,
                          summary: "With this litany, you become more aware of your opponents. You can make two additional attacks of opportunity this round. Furthermore, you gain a +2 sacred bonus to AC against attacks of opportunity.",
                          desc: "With this litany, you become more aware of your opponents. You can make two additional attacks of opportunity this round. Furthermore, you gain a +2 sacred bonus to AC against attacks of opportunity. While subject to this spell, the target cannot be the target of another spell that has the word \"litany\" in the title.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Litany of Weakness", school: "Necromancy", levels: "antipaladin 1, inquisitor 1",
                          castingTime: "1 swift action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round",
                          savingThrow: "no;", sr: true,
                          summary: "Your litany proclaims your target weak, sapping its strength. The target is fatigued for 1 round.",
                          desc: "Your litany proclaims your target weak, sapping its strength. The target is fatigued for 1 round. While subject to this spell, the target cannot be the target of another spell that has the word \"litany\" in the title.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Locate Weakness", school: "Divination", levels: "arcanist 3, bloodrager 3, hunter 2, inquisitor 3, magus 3, occultist 3, psychic 3, ranger 2, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M/DF (a pickled predator’s eye)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "You can sense your foes’ weak points, granting you greater damage with critical hits.",
                          desc: "You can sense your foes’ weak points, granting you greater damage with critical hits. Whenever you score a critical hit, roll the attack’s damage dice (but not extra or precision damage dice) twice and take the highest result.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Lock Gaze", school: "Enchantment (Compulsion)", levels: "arcanist 1, bard 1, inquisitor 1, magus 1, mesmerist 1, psychic 1, skald 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You compel the target to look at you and only you for the spell’s duration or until the spell is discharged.",
                          desc: "You compel the target to look at you and only you for the spell’s duration or until the spell is discharged. While staring at you, the target is considered to be averting its eyes from every creature but you, granting creatures other than you concealment against the target’s attacks. If the target willingly leaves your line of sight, it is blinded for 1 round and the spell ends. If you willingly leave the target’s line of sight or become unconscious or dead, the spell creature suffers no ill effects. Blind creatures and creatures immune to gaze attacks are immune to this spell.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Longshot", school: "Transmutation", levels: "alchemist 1, antipaladin 1, arcanist 1, hunter 1, inquisitor 1, investigator 1, magus 1, occultist 1, paladin 1, psychic 1, ranger 1, redmantisassassin 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M/DF (a piece of fletching)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "This spell reduces the effect of range, granting a +10-foot bonus to the range increment of any weapon used by the subject.",
                          desc: "This spell reduces the effect of range, granting a +10-foot bonus to the range increment of any weapon used by the subject.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Magic Siege Engine", school: "Transmutation", levels: "antipaladin 2, arcanist 2, cleric 2, inquisitor 2, occultist 2, oracle 2, paladin 2, redmantisassassin 2, sorcerer 2, warpriest 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "one siege engine touched",
                          duration: "1 minutes/level",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "This spell permits an indirect fire siege engine to bombard its targets with greater accuracy, delivering more damage.",
                          desc: "This spell permits an indirect fire siege engine to bombard its targets with greater accuracy, delivering more damage. The siege weapon receives a +1 enhancement bonus on targeting rolls and damage rolls. If used on a direct fire siege weapon, this spell acts a magic weapon . Magic Siege Engine, Greater",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Magic Siege Engine, Greater", school: "Transmutation", levels: "antipaladin 2, arcanist 2, cleric 2, inquisitor 2, occultist 2, oracle 2, paladin 2, redmantisassassin 2, sorcerer 2, warpriest 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "one siege engine touched",
                          duration: "1 minutes/level",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "This spell functions like magic siege weapon , except it gives an indirect fire siege weapon an enhancement bonus on targeting and damage rolls of +1 per four caster levels (maximum +5).",
                          desc: "This spell functions like magic siege weapon , except it gives an indirect fire siege weapon an enhancement bonus on targeting and damage rolls of +1 per four caster levels (maximum +5). If used on a direct-fire siege weapon, this spell functions as",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mirror Strike", school: "Transmutation", levels: "arcanist 1, bloodrager 1, magus 1, psychic 1, redmantisassassin 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M (a shard of mirror)",
                          range: "personal", area: "", targets: "you",
                          duration: "see text",
                          savingThrow: "None", sr: false,
                          summary: "You briefly alter the flow of time to split a melee attack into two attacks.",
                          desc: "You briefly alter the flow of time to split a melee attack into two attacks. Before the end of your next turn, when you make your next melee attack roll, compare the result to the AC of two opponents within your reach. If the selected opponents are flanking you, you gain a +2 bonus on your attack roll (and confirmation attack roll, see below). If you hit both enemies, you can deal half damage to each. Hitting only one opponent allows you to deal that opponent normal damage for your attack. On a critical threat, you can make only one attack roll to confirm the critical hit against both opponents. If you confirm against both, you deal half your critical hit damage to each. Your hit is a normal hit rather than a critical if you confirm against only one opponent. If you fail to use the effect before the end of your next turn, the spell ends.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Moment of Greatness", school: "Enchantment (Compulsion)", levels: "arcanist 1, bard 1, cleric 1, oracle 1, psychic 1, skald 1, sorcerer 1, warpriest 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M/DF (rabbit fur)",
                          range: "50 ft.", area: "", targets: "The caster and allies within a 50-ft. burst centered on the caster",
                          duration: "1 minute/level or until discharged",
                          savingThrow: "none;", sr: true,
                          summary: "Each creature affected by this spell is given the potential for greater success and glory.",
                          desc: "Each creature affected by this spell is given the potential for greater success and glory. If the affected creature is benefiting from a morale bonus of any type, it can double that morale bonus on one roll or check, before making the roll. Once an affected creature uses this spell’s effect, the spell is discharged for that subject.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mutagenic Touch", school: "Transmutation", levels: "alchemist 4, investigator 4",
                          castingTime: "1 standard action", components: "V, S, M (a whole fingernail)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "special (see below)",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "When you are under of the effects of your mutagen, you can cast this spell to safely pass it to another creature with a touch. You must make a successful touch attack against the target.",
                          desc: "When you are under of the effects of your mutagen, you can cast this spell to safely pass it to another creature with a touch. You must make a successful touch attack against the target. On a hit, the effect of the mutagen passes to the target touched, though in a lesser form. The mutagen’s effect ends for you, and passes on to the creature touched, but the target only gets half of the alchemical bonus to the physical ability modifier you chose when took the mutagen, and twice the penalty to the corresponding mental ability score. If the target’s mental ability score drops below 3, the target is also confused for the remaining duration of the mutagen. The mutagen continues until the duration has ended. It can be ended earlier if the target drinks or is fed the contents of a vial of antitoxin, but with only 50% chance of success. You can use this spell on a mutagen with either the greater mutagen or advance mutagen discoveries. When you do, you always pass on half the alchemical bonus to physical abilities and twice the penalty to the mental ability score.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Named Bullet", school: "Divination", levels: "arcanist 4, hunter 3, inquisitor 4, psychic 4, ranger 3, sorcerer 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M/DF (an item from the selected creature or creature type)",
                          range: "touch", area: "", targets: "one piece of ammunition or one thrown weapon",
                          duration: "10 minutes/level or until discharged",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "You imbue the target with deadly accuracy against a selected creature type (and subtype for humanoids or outsiders) or a specific creature you know and can name.",
                          desc: "You imbue the target with deadly accuracy against a selected creature type (and subtype for humanoids or outsiders) or a specific creature you know and can name. When used against the selected creature, the ammunition never misfires and is unaffected by concealment (but not total concealment), and at a range of 30 feet or less, the attack targets the selected creature’s touch AC. When the target hits the selected creature, you must overcome that creature’s spell resistance, or this spell has no effect. A normal hit scored using the target against the selected creature is considered to be a critical threat and deals 1 extra point of damage per caster level (maximum 20), which is not multiplied on a critical hit. A natural critical hit deals the same extra damage, but that damage is multiplied due to the critical. Once the target is used to attack the selected creature, successfully or not, this spell is discharged.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Named Bullet, Greater", school: "Divination", levels: "arcanist 4, hunter 3, inquisitor 4, psychic 4, ranger 3, sorcerer 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M/DF (an item from the selected creature or creature type)",
                          range: "touch", area: "", targets: "one piece of ammunition or one thrown weapon",
                          duration: "10 minutes/level or until discharged",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "This spell functions like named bullet , except it deals 2 extra points of damage per caster level (maximum 40).",
                          desc: "This spell functions like named bullet , except it deals 2 extra points of damage per caster level (maximum 40).",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Negative Reaction", school: "Illusion (Glamer)", levels: "arcanist 1, bard 1, magus 1, medium 1, psychic 1, redmantisassassin 1, skald 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "The target’s actions and words fail to impress. The target of this spell takes a –10 penalty on any Bluff, Diplomacy, and Intimidate checks as well as any performance combat checks it attempts.",
                          desc: "The target’s actions and words fail to impress. The target of this spell takes a –10 penalty on any Bluff, Diplomacy, and Intimidate checks as well as any performance combat checks it attempts.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Obsidian Flow", school: "Transmutation", levels: "arcanist 4, druid 4, hunter 4, redmantisassassin 4, sorcerer 4, summoner 3, summoner (unchained) 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M/DF (a small piece of obsidian)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "20-ft.-radius burst", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Reflex partial, see text;", sr: false,
                          summary: "You convert a thin layer of the ground to molten glass that cools quickly. Creatures in the area take 1d6 points of fire damage per two caster levels (maximum of 10d6) and become entangled.",
                          desc: "You convert a thin layer of the ground to molten glass that cools quickly. Creatures in the area take 1d6 points of fire damage per two caster levels (maximum of 10d6) and become entangled. Any creature within the area that makes a successful Reflex save takes half damage and is not entangled. An entangled creature can attempt to free itself by spending a move action to attempt a Strength check or Escape Artist check (the DC equals the spell’s saving throw DC). The ground is covered with slippery expanses and sharp shards of obsidian. The area of effect is difficult terrain, and the DC of Acrobatics checks within the area of effect increases by 5. A successful DC 15 Acrobatics check is required to run or charge across the area. A creature that falls prone in the area takes 1d6 points of damage from sharp obsidian.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Peacebond", school: "Abjuration", levels: "arcanist 1, inquisitor 1, occultist 1, psychic 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one sheathed or slung weapon",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "You lock a weapon in place on its owner’s body, or within the weapon’s sheath or holster.",
                          desc: "You lock a weapon in place on its owner’s body, or within the weapon’s sheath or holster. Anyone who then tries to draw the weapon must spend a standard action and succeed at a Strength check (DC equal to the saving throw DC) to do so, provoking attacks of opportunity whether the attempt succeeds or fails. Peacebond, Greater",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Peacebond, Greater", school: "Abjuration", levels: "arcanist 1, inquisitor 1, occultist 1, psychic 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one sheathed or slung weapon",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "If a target weapon is sheathed or slung as the spell is cast, this functions as peacebond UC , locking the target’s weapon in place on its owner’s body or within the weapon’s sheath or holster.",
                          desc: "If a target weapon is sheathed or slung as the spell is cast, this functions as peacebond UC , locking the target’s weapon in place on its owner’s body or within the weapon’s sheath or holster. Anyone who then tries to draw the weapon must spend a standard action and succeed at a Strength check to do so, provoking attacks of opportunity whether the attempt succeeds or fails. The DC for Strength checks required by this spell is equal to the spell’s save DC. If a target weapon is not currently sheathed or slung as the spell is cast, the weapon immediately attempts to sheathe itself, and its wielder must succeed at a Strength check to prevent it from doing so. Once sheathed or slung in this way, the weapon is difficult to draw, as previously noted above. Unattended weapons that are not currently sheathed or slung are anchored in place by the spell, and require a successful Strength check to pick up; each attempt requires a standard action. If the wielder doesn’t have a sheath or sling available for the weapon, failure on the Strength check causes the weapon to fall to the ground, at which point it requires a Strength check to pick up, as with unattended weapons.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Pellet Blast", school: "Conjuration (Creation)", levels: "arcanist 3, bloodrager 4, magus 4, psychic 3, sorcerer 3, summoner 3, summoner (unchained) 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a handful of metal pellets or handful of cold iron, silver, or adamantine pellets; see descriptions for cost)",
                          range: "30 ft.", area: "cone-shaped burst", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Reflex half;", sr: false,
                          summary: "This spell creates an explosion of conjured metal pellets, striking everything within its area and dealing 1d8 points of piercing damage per two caster levels, maximum 5d8.",
                          desc: "This spell creates an explosion of conjured metal pellets, striking everything within its area and dealing 1d8 points of piercing damage per two caster levels, maximum 5d8. This damage is subject to damage reduction. If the material component is made of cold iron (costing 50 gp), silver (costing 20 gp), or adamantine (costing 100 gp), the resulting blast can overcome damage reduction of the appropriate type. The pellets disappear after the spell is cast and the damage is dealt.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Phantom Chariot", school: "Conjuration (Creation)", levels: "arcanist 4, occultist 4, sorcerer 4, spiritualist 4, summoner 3, wizard 4",
                          castingTime: "10 minutes", components: "V, S",
                          range: "0 ft.", area: "one quasi-real chariot and draft team", targets: "",
                          duration: "1 hour/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You conjure a quasi-real heavy chariot with four horselike creatures in a team to pull it.",
                          desc: "You conjure a quasi-real heavy chariot with four horselike creatures in a team to pull it. (The exact description can be customized as you wish.) The chariot has all the normal qualities of a heavy chariot. You or a person you designate while casting the spell must drive the chariot, which can carry up to six passengers (including the driver). The team and chariot make no sound and the team does not fight, although the driver can use the chariot like any normal chariot. The chariot and team are essentially a single entity with an AC of 19 (–2 size, +6 natural armor, +5 Dex), and 10 hit points + 2 hit points per caster level (maximum 50). If the entity loses all its hit points, it disappears, possibly subjecting all aboard to a crash (treat as wrecked). The entity gains certain powers according to caster level, just like a mount does in the phantom steed spell.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Phantom Driver", school: "Conjuration (Creation)", levels: "arcanist 3, bard 3, occultist 3, skald 3, sorcerer 3, spiritualist 3, wizard 3",
                          castingTime: "10 minutes", components: "V, S",
                          range: "10 ft.", area: "one quasi-real, humanlike creature", targets: "",
                          duration: "1 hour/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You conjure a Small or Medium, quasi-real, humanlike creature (the exact physical features can be customized as you wish). This creation can drive any vehicle you command it to.",
                          desc: "You conjure a Small or Medium, quasi-real, humanlike creature (the exact physical features can be customized as you wish). This creation can drive any vehicle you command it to. This phantom creature does not fight, and while animals that power a muscle-propelled vehicle driven by the creature do respond to its commands, animals otherwise shun the creature and refuse to attack it. The rider has an AC of 20 (+1 size, +4 natural armor, +5 Dex) if it is a Small creature or an AC of 19 (+4 natural armor, +5 Dexterity) if it is a Medium creature. It has 7 hit points + 1 hit point per caster level. If it loses all its hit points, the phantom driver disappears. A phantom driver has a land speed of 30 feet, and makes all driver skill checks (no matter what skills are needed to drive the vehicle) as your caster level + your Intelligence modifier.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Pilfering Hand", school: "Evocation", levels: "arcanist 2, bard 2, cleric 2, magus 2, medium 2, mesmerist 2, occultist 2, oracle 2, psychic 2, skald 2, sorcerer 2, spiritualist 2, warpriest 2, wizard 2",
                          castingTime: "1 standard action", components: "S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one object",
                          duration: "see text",
                          savingThrow: "none;", sr: true,
                          summary: "You create and control an invisible telekinetic force, manipulating it with either startling abruptness or careful deliberateness, allowing you to seize an object from an opponent or remotely…",
                          desc: "You create and control an invisible telekinetic force, manipulating it with either startling abruptness or careful deliberateness, allowing you to seize an object from an opponent or remotely manipulate an object. You can utilize this force to one of two ends. Abrupt Maneuver : You instantaneously attempt a disarm or steal combat maneuver against a target within range. Use your caster level as your Combat Maneuver Bonus, adding your Charisma modifier (bard, oracle, sorcerer), Intelligence modifier (magus, wizard), or Wisdom modifier (cleric) in place of your Strength or Dexterity modifier. This combat maneuver attempt does not provoke an attack of opportunity from its target, but casting this spell might. If you are successful, you pull the target object to you, and if you have enough hands free, you can catch it. Otherwise, the object lands in your square as if you dropped it.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Pup Shape", school: "Transmutation (Polymorph)", levels: "arcanist 3, druid 3, hunter 3, redmantisassassin 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a rag doll)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one animal",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates (and Will special, see text);", sr: true,
                          summary: "You transform the subject animal into a Small magical beast (or a magical beast one size category smaller than the original creature, whichever is smaller), creating a young magical version of itself…",
                          desc: "You transform the subject animal into a Small magical beast (or a magical beast one size category smaller than the original creature, whichever is smaller), creating a young magical version of itself for a short period of time. While in this form, the target has only 1 HD (maximum hit points), and the target takes a –4 penalty to Strength, Constitution, Intelligence and Wisdom (minimum 1). The creature also gains a +4 size bonus to Dexterity and a +2 natural bonus. Any nonevil creature that attempts to attack a creature in this form must succeed at a Will saving throw (using the DC of the spell) to overcome feelings of guilt and protectiveness toward the young and innocent-seeming creature. On a failed saving throw, it cannot follow through with the attack, that part of the action is lost, and it can’t directly attack the transformed creature for the duration of the spell or until the spell’s target attacks it. This part of the spell is a mind-affecting emotion effect. Evil creatures have no qualms about attacking the target of this spell, in fact, some particularly heinous creatures might go out of their ways to do the target harm.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Qualm", school: "Enchantment (Compulsion)", levels: "arcanist 2, bard 2, inquisitor 2, medium 2, mesmerist 2, psychic 2, skald 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 minute/level or until discharged",
                          savingThrow: "Will negates;", sr: true,
                          summary: "The target is suddenly beset with unexplainable doubts about the effectiveness of its actions and the righteousness of its cause.",
                          desc: "The target is suddenly beset with unexplainable doubts about the effectiveness of its actions and the righteousness of its cause. The creature takes a –10 penalty on its ability checks, skill checks, and concentration checks, until the duration ends, or until it spends its entire turn doing absolutely nothing (it spends a full-round action gaining focus). Spending an entire turn doing nothing discharges the spell.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Recoil Fire", school: "Transmutation", levels: "arcanist 2, redmantisassassin 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (hoof shavings from a mule)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "1 firearm",
                          duration: "instantaneous",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "The target firearm suddenly fires of its own volition, even if it is unloaded, generating a recoil so great that the wielder or carrier of the firearm must scramble to hold onto it and becomes…",
                          desc: "The target firearm suddenly fires of its own volition, even if it is unloaded, generating a recoil so great that the wielder or carrier of the firearm must scramble to hold onto it and becomes flat-footed until the start of his next turn. If the wielder is already flat-footed, he is instead knocked prone. If the firearm was loaded, that ammunition is wasted.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Reinforce Armaments", school: "Transmutation", levels: "arcanist 1, cleric 1, magus 1, occultist 1, oracle 1, redmantisassassin 1, sorcerer 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M/DF (a metal pin)",
                          range: "touch", area: "", targets: "one armor suit or weapon touched",
                          duration: "10 minutes/level",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "You reinforce a weapon or armor suit to give it a temporarily upgrade or mitigate the fragile quality.",
                          desc: "You reinforce a weapon or armor suit to give it a temporarily upgrade or mitigate the fragile quality. A suit of armor or weapon touched that has the fragile quality is not considered to have the fragile quality for the spell’s duration. Normal armor suits or weapons subjected to this spell instead gain the masterwork quality for the spell’s duration and their hardness is doubled. If this spell is cast on masterwork or magical armor or weapons, their hardness is doubled for the duration of the spell. Reinforce Armaments, Communal",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Reinforce Armaments, Communal", school: "Transmutation", levels: "arcanist 1, cleric 1, magus 1, occultist 1, oracle 1, redmantisassassin 1, sorcerer 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M/DF (a metal pin)",
                          range: "touch", area: "", targets: "one armor suit or weapon touched",
                          duration: "10 minutes/level",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "This spell functions like reinforce armaments , except you divide the duration in 10-minute intervals among the objects touched.",
                          desc: "This spell functions like reinforce armaments , except you divide the duration in 10-minute intervals among the objects touched.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Reloading Hands", school: "Conjuration (Creation)", levels: "arcanist 2, hunter 2, magus 2, ranger 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "projectile weapon touched",
                          duration: "1 round/caster level (D)",
                          savingThrow: "None", sr: false,
                          summary: "Once per round, phantom hands load a single ranged weapon or firearm with conjured ammunition.",
                          desc: "Once per round, phantom hands load a single ranged weapon or firearm with conjured ammunition. This ammunition counts as magical for overcoming damage reduction and attacking incorporeal creatures, but is the standard for its type (a normal bullet or pellets and black powder in the case of firearms). Conjured ammunition ceases to exist 1 round after it is removed from the weapon, or at the end of the duration, whichever comes first.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Resinous Skin", school: "Transmutation", levels: "alchemist 3, arcanist 3, bloodrager 3, druid 3, hunter 3, investigator 3, psychic 3, redmantisassassin 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "10 minutes/level",
                          savingThrow: "see text;", sr: false,
                          summary: "You coat your body with a resinous substance, protecting you from attacks and binding weapons that strike you.",
                          desc: "You coat your body with a resinous substance, protecting you from attacks and binding weapons that strike you. You gain DR 5/piercing, as well as a +4 circumstance bonus to your CMD against disarm attempts and on saving throws against effects that cause you to drop something you are holding. Additionally, you gain a +2 circumstance bonus on combat maneuver checks to initiate a grapple, maintain a grapple, and pin a foe. Any enemy you grapple takes a –2 penalty on attempts to break the grapple and to escape the grapple using Escape Artist. Any weapon, that strikes you becomes stuck unless its wielder succeeds at a Reflex saving throw. Such a weapon can be pulled free of you only with a successful Strength check (DC = your saving throw DC for this spell). This spell has no effect on unarmed strikes or natural weapons.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Returning Weapon", school: "Conjuration (Teleportation)", levels: "arcanist 2, bard 2, bloodrager 1, cleric 2, hunter 1, inquisitor 1, magus 1, occultist 1, oracle 2, psychic 2, ranger 1, skald 2, sorcerer 2, warpriest 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one weapon that can be thrown",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "For the duration of the spell, the target weapon acts as if it had the returning weapon special ability. This spell can be used as the prerequisite for the",
                          desc: "For the duration of the spell, the target weapon acts as if it had the returning weapon special ability. This spell can be used as the prerequisite for the",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Returning Weapon, Communal", school: "Conjuration (Teleportation)", levels: "arcanist 2, bard 2, bloodrager 1, cleric 2, hunter 1, inquisitor 1, magus 1, occultist 1, oracle 2, psychic 2, ranger 1, skald 2, sorcerer 2, warpriest 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one weapon that can be thrown",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "This spell functions like returning weapon , except you divide the duration in 1-minute intervals among the targeted weapons.",
                          desc: "This spell functions like returning weapon , except you divide the duration in 1-minute intervals among the targeted weapons.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ricochet Shot", school: "Evocation", levels: "arcanist 2, hunter 2, ranger 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a wishbone)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one projectile weapon",
                          duration: "1 round/level or until discharged",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "You imbue a projectile weapon with the ability to ricochet any projectiles that hit one target so that they also hit another.",
                          desc: "You imbue a projectile weapon with the ability to ricochet any projectiles that hit one target so that they also hit another. When the wielder ricochets a projectile, she selects a primary target to attack. If she hits the primary target, the projectile ricochets instead of being destroyed. The wielder can then select a secondary target that is within 20 feet of the primary target. She makes an attack roll against the secondary target at the same base attack bonus, but does not gain the benefit from any enhancement bonuses or magic qualities on the projectile. If the shot comes from a firearm, the ricochet targets normal AC rather than touch AC. While the spell lasts, the target weapon’s wielder can ricochet one projectile per three caster levels you possess, to a maximum of six at caster level 18th. Once the target weapon’s wielder ricochets that many shots, the spell is discharged. If the weapon’s wielder fails to use all the ricochets before the spell end, those ricochets are wasted.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("See Alignment", school: "Divination", levels: "alchemist 1, arcanist 1, bard 1, investigator 1, psychic 1, skald 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M (eye of newt)",
                          range: "personal", area: "", targets: "you",
                          duration: "1/round per level",
                          savingThrow: "None", sr: false,
                          summary: "When you cast this spell, select a single alignment (such as lawful good or chaotic evil). Creatures of that alignment glow with a ghostly radiance while they are within your vision.",
                          desc: "When you cast this spell, select a single alignment (such as lawful good or chaotic evil). Creatures of that alignment glow with a ghostly radiance while they are within your vision. Though you can see this radiance, other creatures cannot. Spells and effects that obscure alignment, like undetectable alignment , also obscure the effects of this spell.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Shadow Bomb Admixture", school: "Conjuration (Creation)", levels: "alchemist 2, investigator 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "special, see below;", sr: false,
                          summary: "Upon drinking an extract created with this formula, you make a significant change to your magical reserve that modifies the nature of all bombs you create and throw during this extract’s duration.",
                          desc: "Upon drinking an extract created with this formula, you make a significant change to your magical reserve that modifies the nature of all bombs you create and throw during this extract’s duration. This effect on your magical reserve has no effect on any discoveries that you use to modify your bombs, but you can only have one admixture effect (formula with the word “bomb admixture” in its title) active at a time. If you drink another bomb admixture, the effects of the former bomb admixture end and the new one becomes active. When you throw a bomb and hit a direct target, a shadowy substance is released from the bomb covering the direct target and up to three creatures that take damage from the bomb’s splash (alchemist’s choice). The affected creatures must successfully make a Fortitude saving throw, or they gain concealment but treat all other creatures as having concealment for the duration of the shadow bomb admixture . This effect does not ignore spell resistance.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Shock Shield", school: "Abjuration", levels: "alchemist 1, arcanist 1, bloodrager 1, investigator 1, magus 1, occultist 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minutes/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This spell creates an invisible shield similar to but not as strong as the shield spell. This shield hovers in front of you and negates",
                          desc: "This spell creates an invisible shield similar to but not as strong as the shield spell. This shield hovers in front of you and negates",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Shocking Image", school: "Illusion (Figment)", levels: "arcanist 4, bard 4, bloodrager 4, mesmerist 4, occultist 4, redmantisassassin 4, skald 4, sorcerer 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "none;", sr: false,
                          summary: "This spell works like mirror image , except the illusory doubles it creates discharge an electric shock when destroyed.",
                          desc: "This spell works like mirror image , except the illusory doubles it creates discharge an electric shock when destroyed. An opponent that uses a melee attack to destroy one of your images takes 2d6 points of electricity damage. You must overcome a target’s spell resistance the first time you deal this electricity damage to it. Failure renders the target immune to damage from this spell.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Siege of Trees", school: "Transmutation", levels: "druid 7",
                          castingTime: "10 minutes", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one Large plant per three caster levels",
                          duration: "1 hour/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You imbue inanimate plants with limited mobility and a semblance of life.",
                          desc: "You imbue inanimate plants with limited mobility and a semblance of life. Each plant targeted acts as a light catapult until the end of the spell’s duration, though you must spend a standard action to aim each of these tree catapults before the first time they fire, and anytime thereafter when you want the trees to fire at a new target. The catapult uses your caster level as its targeting bonus. With a free action, you can command one or all of the trees under your command to stop firing. You do not need to supply ammunition to these tree catapults; they will automatically load themselves with rocks and boulders in the area, digging them deep from the ground if need be. You can supply the trees ammunition if you desire. The tree will not load flaming ammunition, and these catapult trees cannot be affected by energy siege shot if the energy selected is fire. Siege of Trees, Greater",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Siege of Trees, Greater", school: "Transmutation", levels: "druid 7",
                          castingTime: "10 minutes", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one Large plant per three caster levels",
                          duration: "1 hour/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "As siege of trees , but you can affect larger-sized plants. Each plant acts as a catapult of its size.",
                          desc: "As siege of trees , but you can affect larger-sized plants. Each plant acts as a catapult of its size.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Stabilize Powder", school: "Transmutation", levels: "arcanist 2, redmantisassassin 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a few drops of liquor)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "1 loaded firearm",
                          duration: "instantaneous",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "Ammunition currently loaded in the target firearm is less prone to misfire.",
                          desc: "Ammunition currently loaded in the target firearm is less prone to misfire. Decrease the misfire range by 1 + 1 per five caster levels (maximum +5, minimum misfire 0) for the ammunition currently loaded into that firearm.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Summoner Conduit", school: "Necromancy", levels: "arcanist 5, cleric 4, occultist 4, oracle 4, psychic 5, sorcerer 5, summoner 4, summoner (unchained) 4, warpriest 4, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (two flies)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one summoned creature or eidolon",
                          duration: "1 minute/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You exploit the invisible, mystic connection between the target creature and its summoner to harm that summoner.",
                          desc: "You exploit the invisible, mystic connection between the target creature and its summoner to harm that summoner. Whenever the target’s summoned creature is the target of a spell that deals damage, the target’s summoner is also considered to be a target of that spell. Such a summoner gains his normal defenses against the spell, such as a saving throw and spell resistance, and cannot be affected if he is on another plane of existence.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Symbol of Striking", school: "Illusion (Shadow)", levels: "arcanist 5, cleric 5, magus 5, occultist 4, oracle 5, sorcerer 5, warpriest 5, witch 5, wizard 5",
                          castingTime: "10 minutes", components: "V, S, M (a masterwork melee weapon costing at least 300 gp)",
                          range: "0 ft.; see text", area: "one symbol", targets: "",
                          duration: "see text",
                          savingThrow: "Will half, see text;", sr: true,
                          summary: "This spell functions like symbol of death , except that using the material component, you scribe a",
                          desc: "This spell functions like symbol of death , except that using the material component, you scribe a",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Tactical Acumen", school: "Enchantment (Compulsion)", levels: "arcanist 2, bard 2, inquisitor 2, magus 2, medium 2, occultist 2, paladin 1, psychic 2, skald 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (a small piece of a map)",
                          range: "30 ft.", area: "The caster and all allies within a 30-ft.-radius burst, centered on the caster", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "Tactical acumen grants you and your allies a mastery of battlefield tactics.",
                          desc: "Tactical acumen grants you and your allies a mastery of battlefield tactics. Whenever you would gain a bonus on attack rolls or to AC due to battlefield position, such as flanking, higher ground, or cover, you gain an additional +1 insight bonus. This bonus increases by +1 for every five caster levels above 5th you possess (maximum +4).",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Tar Pool", school: "Transmutation", levels: "arcanist 6, druid 6, hunter 6, sorcerer 6, summoner 5, summoner (unchained) 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S, M/DF (a ball of hardened tar)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "20-ft.-radius burst", targets: "",
                          duration: "1 round/level",
                          savingThrow: "Reflex partial, see text;", sr: false,
                          summary: "You convert a layer of the ground to hot tar. Creatures in the area when the tar appears take 1d6 points of fire damage per two caster levels (maximum of 10d6) and must succeed at a Reflex save or…",
                          desc: "You convert a layer of the ground to hot tar. Creatures in the area when the tar appears take 1d6 points of fire damage per two caster levels (maximum of 10d6) and must succeed at a Reflex save or become entangled. An entangled creature receives a saving throw each round to free itself from the tar, and can also attempt to free itself by spending a move action to attempt a Strength check or Escape Artist check (DC = spell saving throw DC). It costs 2 squares of movement to enter a square in the area of effect, and the DC of Acrobatics checks within the area of effect increases by 5. The area is difficult terrain. A creature that moves into or starts its turn in the area takes 2d6 points of fire damage and must reattempt this Reflex save or become entangled. A creature that falls prone in the area takes a –4 penalty on its Reflex save against the tar and on Strength and Escape Artist checks to escape the tar. A creature that escapes the tar still takes fire damage from the tar until the spell ends or that creature spends a full-round action removing the tar. A creature with tar on it takes a –4 penalty on Acrobatics and Fly checks made to fly with wings or similar appendages.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Targeted Bomb Admixture", school: "Transmutation", levels: "alchemist 1, investigator 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "Upon drinking an extract created with this formula, you make a significant change to your magical reserve that modifies the nature of all bombs you create and throw during this extract’s duration.",
                          desc: "Upon drinking an extract created with this formula, you make a significant change to your magical reserve that modifies the nature of all bombs you create and throw during this extract’s duration. This effect on your magical reserve has no effect on any discoveries that you use to modify your bombs, but you can only have one admixture effect (formula with the word “bomb admixture” in its title) active at a time. If you drink another bomb admixture, the effects of the former bomb admixture end and the new one becomes active. When you throw bombs, they can only hit a direct target; they do not splash. However, the bomb deals its base damage plus double your Intelligence modifier instead of just its base damage plus your Intelligence modifier.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Telekinetic Assembly", school: "Transmutation", levels: "arcanist 2, magus 2, occultist 2, psychic 2, redmantisassassin 2, sorcerer 2, wizard 2",
                          castingTime: "1 minute", components: "V, S, F (a miniature of the target siege engine, costing 10 gp)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one disassembled siege engine",
                          duration: "instantaneous",
                          savingThrow: "None", sr: false,
                          summary: "You assemble a siege engine, using up to one fewer worker per two caster levels you possess.",
                          desc: "You assemble a siege engine, using up to one fewer worker per two caster levels you possess. You can do without one additional worker if you have any ranks in Knowledge (engineering), plus one additional worker per 5 ranks you have in that skill. If your caster level combined with Knowledge (engineering) fails to eliminate the need for workers, this spell fails.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Telekinetic Charge", school: "Evocation", levels: "arcanist 4, bloodrager 4, psychic 4, sorcerer 4, spiritualist 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one willing creature",
                          duration: "instantaneous",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You telekinetically launch an ally across the battlefield to anywhere within this spell’s range. While moving, your ally is flying just above the ground unless you wish otherwise.",
                          desc: "You telekinetically launch an ally across the battlefield to anywhere within this spell’s range. While moving, your ally is flying just above the ground unless you wish otherwise. Movement from this spell provokes attacks of opportunity as normal, although you can lift your ally over objects or out of enemy reach, as long as your ally remains within this spell’s range. If your ally lands adjacent to an opponent, he can spend an immediate action to make a melee attack against that opponent with a +2 bonus on the attack roll.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Terrain Bond", school: "Enchantment (Compulsion)", levels: "hunter 4, ranger 4",
                          castingTime: "1 standard action", components: "V, S, M (a pinch of earth taken from your most favored terrain)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 hour/2 levels (D)",
                          savingThrow: "None", sr: false,
                          summary: "You call upon the spirits of nature to help you adapt to your environment. You treat the terrain you are in as your most favored terrain until this spell ends.",
                          desc: "You call upon the spirits of nature to help you adapt to your environment. You treat the terrain you are in as your most favored terrain until this spell ends. If you do not have the favored terrain class feature, you gain no benefit from this spell.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Thunder Fire", school: "Transmutation", levels: "arcanist 2, bard 2, redmantisassassin 2, skald 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a piece of spent thunderstone)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "1 loaded firearm",
                          duration: "instantaneous",
                          savingThrow: "Will negates (object), see text;", sr: true,
                          summary: "The firearm targeted creates a thunderous report, even if the firearm is not loaded.",
                          desc: "The firearm targeted creates a thunderous report, even if the firearm is not loaded. Every creature within 15 feet of the creature wielding or carrying the firearm must succeed at a Fortitude save or be deafened for 1 minute. The creature wielding or carrying the firearm takes a –4 penalty on this saving throw, and his misfire range increases by 1 for 1d4 rounds. If the firearm was loaded when it was targeted by this spell, that ammunition is wasted.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Touch Injection", school: "Transmutation", levels: "alchemist 2, arcanist 3, investigator 2, psychic 3, redmantisassassin 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 hour/level",
                          savingThrow: "none;", sr: false,
                          summary: "You must hold an elixir, infused extract, poison, or potion in hand as you cast this spell. The held substance drains from its container into a magical sac in your body.",
                          desc: "You must hold an elixir, infused extract, poison, or potion in hand as you cast this spell. The held substance drains from its container into a magical sac in your body. While the spell lasts, you can deliver the substance with a mere touch. To do so to an opponent, you must make a successful melee touch attack. If you hit, the substance takes effect immediately, despite any onset period, and that opponent receives the normal saving throw (if any) against the substance. In the case of a personal infused extract, the opponent receives both a Fortitude save and spell resistance. If you miss, the substance remains in the magical sac for you to use later. This spell protects you from poison in the sac, but unless you have the poison use class feature, you suffer a 5% chance of exposing yourself to the poison when you first cast the spell. If you roll a natural 1 while attempting to inject the poison into an enemy, you are exposed to it.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Twisted Space", school: "Transmutation", levels: "arcanist 2, magus 2, psychic 2, redmantisassassin 2, sorcerer 2, summoner 2, summoner (unchained) 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a length of wire bent into a circle)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You distort the space around a creature, twisting the path of its melee attacks unpredictably, but always toward a nearby creature that the target threatens.",
                          desc: "You distort the space around a creature, twisting the path of its melee attacks unpredictably, but always toward a nearby creature that the target threatens. Until the start of your next turn, melee attacks made by the target creature affect a random target instead of their intended target.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Unerring Weapon", school: "Transmutation", levels: "arcanist 1, bloodrager 1, inquisitor 1, magus 1, medium 1, occultist 2, psychic 1, redmantisassassin 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one weapon or 20 projectiles, all of which must be together at the time of casting",
                          duration: "1 round/level",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "This spell causes a weapon to veer closer to vital areas, improving the result of a critical threat.",
                          desc: "This spell causes a weapon to veer closer to vital areas, improving the result of a critical threat. This transmutation grants a +2 bonus on attack rolls to confirm critical hits plus 1 additional bonus point per four caster levels (maximum total bonus +7). If the spell is cast on projectiles, the effect ends on a specific projectile whenever that projectile is used to make an attack, regardless of whether the attack hits. For this spell, shuriken are considered projectiles.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Viper Bomb Admixture", school: "Conjuration (Creation)", levels: "alchemist 4, investigator 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "Upon drinking an extract created with this formula, you make a significant change to your magical reserve that modifies the nature of all bombs you create and throw during this extract’s duration.",
                          desc: "Upon drinking an extract created with this formula, you make a significant change to your magical reserve that modifies the nature of all bombs you create and throw during this extract’s duration. This effect on your magical reserve has no effect on any discoveries that you use to modify your bombs, but you can only have one admixture effect (formula with the word “bomb admixture” in its title) active at a time. If you drink another bomb admixture, the effects of the former bomb admixture end and the new one becomes active. When you throw a bomb and hit a target directly, up to four vipers are released from the bomb. One viper attacks the target of the direct hit, and the other vipers attack up to three creatures that take damage from the splash damage. The vipers make melee touch attacks (using your base attack bonus + Intelligence modifier) and on a hit deal 1d4 + your Intelligence modifier damage, and the target is poisoned as if by a venomous snake. Hit or miss, the conjured vipers disappear after they make the attack. The conjured snakes are not damaged or adversely affected by the bombs you throw.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Walk through Space", school: "Conjuration (Teleportation)", levels: "alchemist 6, arcanist 7, investigator 6, magus 6, psychic 7, sorcerer 7, summoner 6, witch 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S, M (a wren’s egg)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "When under the effects of this spell, you can teleport up to 30 feet as a move action. You must end this movement in an unoccupied space that you can stand on within line of sight.",
                          desc: "When under the effects of this spell, you can teleport up to 30 feet as a move action. You must end this movement in an unoccupied space that you can stand on within line of sight. Alternatively, you can spend a move action to teleport to a standing position from lying prone. Teleporting does not provoke attacks of opportunity.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Warding Weapon", school: "Abjuration", levels: "arcanist 2, bloodrager 1, magus 1, occultist 1, psychic 2, sorcerer 2, summoner 2, summoner (unchained) 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, F (one melee weapon you are proficient in and you are holding)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "The focus of this spell flies upward above your head and takes a defensive position within your space.",
                          desc: "The focus of this spell flies upward above your head and takes a defensive position within your space. It lunges at opponents, as if guided by a martially trained hand, parrying and turning back melee attacks aimed at you, but does not strike back at any opponent nor does it damage them. The weapon serves only as a defense. While it protects you, you can cast spells without provoking attacks of opportunity, without the need to cast them defensively. A creature with the Disruptive feat can easily bypass this spell’s defenses. You provoke attacks of opportunity for casting spells against these creatures even when subject to this spell, though you can still choose to cast defensively.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Weaken Powder", school: "Transmutation", levels: "arcanist 1, druid 1, hunter 1, redmantisassassin 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M/DF (an empty paper cartridge)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "1 loaded firearm",
                          duration: "instantaneous",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "Ammunition in the target firearm generates less of an explosive charge when fired. With such ammunition, the firearm’s range increment is halved and the firer takes a –2 penalty on damage rolls.",
                          desc: "Ammunition in the target firearm generates less of an explosive charge when fired. With such ammunition, the firearm’s range increment is halved and the firer takes a –2 penalty on damage rolls. If aware of this spell’s effect prior to firing the altered ammunition (a DC 16 Spellcraft check to identify the spell being cast or similar effect), the firearm’s user can spend a standard action to clear the altered ammunition from the firearm. Doing so destroys that ammunition.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Wilderness Soldiers", school: "Transmutation", levels: "druid 2, hunter 2, ranger 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "30 ft.", area: "30-ft.-radius emanation, centered on you", targets: "",
                          duration: "1 round/level",
                          savingThrow: "none;", sr: false,
                          summary: "You call on the plants nearby to aid you in combat. This spell is ineffective if no plants you can direct are within the area.",
                          desc: "You call on the plants nearby to aid you in combat. This spell is ineffective if no plants you can direct are within the area. You can spend a swift action and/or a standard action on each of your turns to direct one of the following attacks. The attack bonus or CMB for these attacks equals your base attack bonus + your Wisdom modifier. You grant a +1 bonus per three caster levels (maximum +5) on damage rolls due to this spell. Your wilderness soldiers never provoke attacks of opportunity, and they do not count as allies for flanking or other purposes.",
                          source: "Ultimate Combat", isPremium: true)
        )
        try await db.insertSpell(
        .make("Wreath of Blades", school: "Abjuration", levels: "arcanist 5, bloodrager 4, magus 4, occultist 4, psychic 5, sorcerer 5, summoner 5, summoner (unchained) 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, F (four mithral daggers, each worth at least 502 gp each)",
                          range: "personal", area: "5-foot-radius emanation centered on you", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "Reflex half (special, see below);", sr: false,
                          summary: "The daggers serving as focus of this spell take on a deadly sharpness as they animate and spin around you, creating a 5-foot-radius emanation of spinning mithral blades that moves with you.",
                          desc: "The daggers serving as focus of this spell take on a deadly sharpness as they animate and spin around you, creating a 5-foot-radius emanation of spinning mithral blades that moves with you. Any creature that starts its turn within the area of the spinning blades takes 1d4 points of damage for every two caster levels (maximum 10d4 at 20th level) and the damage bypasses DR/silver. Furthermore, the daggers ward off some attacks, in a way similar to the warding weapon spell. While subject to this spell, you do not provoke attacks of opportunity for casting spells, even from creatures with the Disruptive feat. Creatures with the Spellbreaker feat can easily bypass this defensive property, though they still take damage from the spell. Your casting (even failing to cast defensively) still provokes attacks of opportunity from creatures with that feat. Lastly, the blades that serve as the focus for this spell can be enchanted for greater effect. When all of the blades share the same enhancement bonus and special weapon qualities, a creature that is damaged by this spell is also treated as if hit by one of these weapons. For example, if a 12th-level magus casts this spell using four",
                          source: "Ultimate Combat", isPremium: true),

                    // // MARK: - Ultimate Combat, Orcs of Golarion
        )
        try await db.insertSpell(
        .make("Spontaneous Immolation", school: "Evocation", levels: "arcanist 2, psychic 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (pinch of saltpeter)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "Fortitude half and Reflex (see description);", sr: true,
                          summary: "You point your finger at a creature, causing it to spontaneously burst into flame. The target takes 3d6 points of fire damage and catches on fire.",
                          desc: "You point your finger at a creature, causing it to spontaneously burst into flame. The target takes 3d6 points of fire damage and catches on fire. A successful Fortitude save reduces this damage by half and prevents the target from catching on fire. Each round on your turn, a burning target can attempt a new save to extinguish the flames (DC equal to the DC of the spell); otherwise it takes another 1d6 fire damage.",
                          source: "Ultimate Combat, Orcs of Golarion", isPremium: true),

                    // // MARK: - Ultimate Intrigue
        )
        try await db.insertSpell(
        .make("Absolution", school: "Abjuration", levels: "cleric 4, oracle 4, paladin 4, warpriest 4",
                          castingTime: "1 round", components: "V, S, M (a vial of holy water), DF",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "You purge impure thoughts from the target’s mind and fill him with exultant relief at the forgiveness of his sins.",
                          desc: "You purge impure thoughts from the target’s mind and fill him with exultant relief at the forgiveness of his sins. Absolution ends all charm or compulsion effects affecting the target (including harmless compulsions, such as",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Aerial Tracks", school: "Divination", levels: "druid 4, hunter 3, inquisitor 4, ranger 3, shaman 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "circle centered on you, with a radius of 100 feet + 10 feet per level", targets: "",
                          duration: "1 hour/level",
                          savingThrow: "none;", sr: false,
                          summary: "You cause the air in the area to ripple where creatures have flown through it up to 1 day ago per caster level.",
                          desc: "You cause the air in the area to ripple where creatures have flown through it up to 1 day ago per caster level. These aerial ripples are tinged by glowing wisps, providing enough illumination to follow the tracks without penalties due to poor lighting. The area moves with you, allowing you to follow the tracks through the air over long distances provided you can fly or follow the route along the ground within range to read the aerial tracks. Other creatures can also follow the trail as long as they move with you. The base DC of Survival checks to track creatures through the air with this spell is the same as tracking creatures across soft ground.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Animal Ambassador", school: "Enchantment (Compulsion)", levels: "bard 4, druid 4, hunter 3, ranger 3, shaman 4, skald 4",
                          castingTime: "10 minutes", components: "V, S, M (a morsel of food the animal likes)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one Medium or smaller animal",
                          duration: "1 day/level or until message is delivered",
                          savingThrow: "none (see text);", sr: false,
                          summary: "You compel a single animal to travel to a spot you designate and deliver a message to a creature you identify. This spell is similar to animal messenger , but can affect larger animals.",
                          desc: "You compel a single animal to travel to a spot you designate and deliver a message to a creature you identify. This spell is similar to animal messenger , but can affect larger animals. In addition, the target animal is temporarily awakened to sentience (as the",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Aphasia", school: "Enchantment (Compulsion)", levels: "arcanist 1, bard 1, mesmerist 1, psychic 1, skald 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "Will negates (see text);", sr: true,
                          summary: "You render the target unable to understand any language, including spoken language, written language, sign language, gestures attempting to mimic a crude language, or even truespeech and telepathy.",
                          desc: "You render the target unable to understand any language, including spoken language, written language, sign language, gestures attempting to mimic a crude language, or even truespeech and telepathy. The affected creature is unable to communicate, use command words, cast spells with verbal components, or use any other abilities that requires language. At the end of each of its turns, the subject can attempt a new saving throw to end the effect. Tongues counters and dispels",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Audiovisual Hallucination", school: "Illusion (Phantasm)", levels: "arcanist 1, bard 1, magus 1, medium 1, mesmerist 1, occultist 1, psychic 1, skald 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "S",
                          range: "long (400 ft. + 40 ft./level)", area: "", targets: "one creature/level, no two of which can be more than 30 ft. apart",
                          duration: "concentration",
                          savingThrow: "Will disbelief;", sr: true,
                          summary: "This spell functions as auditory hallucination , except that you can include the image of any object, creature, or force you imagine or identify for the targets to imagine.",
                          desc: "This spell functions as auditory hallucination , except that you can include the image of any object, creature, or force you imagine or identify for the targets to imagine. You can move the image while you concentrate. After you cease concentration, you can define simple movements or changes for the phantasm to perform that can be explained in 25 words or fewer. The image disappears when struck by an opponent unless you cause the illusion to react appropriately or instruct it to do so. Its AC is equal to 10 + the level of this spell.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Auditory Hallucination", school: "Illusion (Phantasm)", levels: "arcanist 1, bard 1, magus 1, medium 1, mesmerist 1, occultist 1, psychic 1, skald 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "S",
                          range: "long (400 ft. + 40 ft./level)", area: "", targets: "one creature/level, no two of which can be more than 30 ft. apart",
                          duration: "concentration",
                          savingThrow: "Will disbelief;", sr: true,
                          summary: "You cause the targets to believe they hear any sound you imagine. The sound can include intelligible speech.",
                          desc: "You cause the targets to believe they hear any sound you imagine. The sound can include intelligible speech. Instead of precisely imagining a sound, you can identify a sound the subjects know and they imagine it doing what you describe as you cast the spell. For example, you could cast this spell on orc warriors and have them imagine the sound of their chieftain calling for help, even if you’ve never heard their chieftain and even if the chieftain speaks in a language you don’t understand. All targets hear the same hallucination. You can change the sound as part of concentrating on the spell. Audiovisual Hallucination",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Bountiful Banquet", school: "Conjuration (Creation)", levels: "bard 4, cleric 4, druid 4, hunter 4, oracle 4, shaman 4, skald 4, warpriest 4",
                          castingTime: "10 minutes", components: "V, S, M (a turkey bone)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "feast for two creatures/level", targets: "",
                          duration: "1 hour; see text",
                          savingThrow: "none;", sr: false,
                          summary: "You conjure a beautiful and delicious feast with hors d’oeuvres, four courses worth of food, and plentiful drink.",
                          desc: "You conjure a beautiful and delicious feast with hors d’oeuvres, four courses worth of food, and plentiful drink. The food appears on ornate serving trays or in exquisite covered tureens, as appropriate to each type of dish. Place settings and serving utensils also appear—enough for each creature that will participate in the feast—along with elegant tablecloths and table linens. The spell doesn’t create furniture, but the feast does adapt to appear on top of existing tables (or similar objects in the environment). Though the feast and all the finery last only 1 hour, creatures that partake remain nourished and sated for 24 hours. Though you have little control over the fine details of the feast, you can specify what type of dish you want for each course and what sorts of beverages are provided. The feast automatically adjusts depending on the type of spellcaster you are. For instance, a druid casting this spell typically creates a spread of natural berries, whole roasted animals, and sweet (and possibly fermented) nectar for beverages, all on rough-hewn wooden plates with chopsticks instead of silverware and sizable leaves replacing napkins.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Build Trust", school: "Divination", levels: "bard 2, cleric 2, inquisitor 2, mesmerist 2, oracle 2, paladin 1, psychic 2, skald 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S, M (a gold piece)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 day/level; see text",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You get a sense of the best way to interact with the target in order to encourage positive regard and fellowship toward you.",
                          desc: "You get a sense of the best way to interact with the target in order to encourage positive regard and fellowship toward you. You gain a +2 circumstance bonus on all Charisma checks and Charisma-based skill checks you attempt when interacting with the target. In addition, whenever you fail a Charisma check or Charisma-based skill check when interacting with the target, you can reroll the check as an immediate action. Attempting this reroll grants the target a new saving throw to end the spell. The target doesn’t become hostile to you when the spell ends, but it does become disillusioned of its new trust in you. Attacking the target or taking an obvious hostile action against it automatically ends the spell. If you are using the contacts rules ( Ultimate Campaign 148 ), your trust score with the target increases by 1 for the duration of the spell. If you’re using the individual influence system (see pages 102–109), if the target fails its initial saving throw you learn one of its influence skills, strengths, or weaknesses as though you had succeeded at a discovery check.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Complex Hallucination", school: "Illusion (Phantasm)", levels: "arcanist 1, bard 1, magus 1, medium 1, mesmerist 1, occultist 1, psychic 1, skald 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "S",
                          range: "long (400 ft. + 40 ft./level)", area: "", targets: "one creature/level, no two of which can be more than 30 ft. apart",
                          duration: "concentration",
                          savingThrow: "Will disbelief;", sr: true,
                          summary: "This spell functions as audiovisual hallucination , except that the phantasm you create can also include olfactory, tactile, and thermal effects.",
                          desc: "This spell functions as audiovisual hallucination , except that the phantasm you create can also include olfactory, tactile, and thermal effects.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Compulsive Liar", school: "Enchantment (Compulsion)", levels: "arcanist 2, bard 1, mesmerist 1, psychic 2, skald 1, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 hour/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "The target becomes unable to speak the truth. Lies the target speaks don’t need to be convincing, nor do they even need to be consistent, but they can’t be true as far as the target is aware.",
                          desc: "The target becomes unable to speak the truth. Lies the target speaks don’t need to be convincing, nor do they even need to be consistent, but they can’t be true as far as the target is aware. This extends to non-verbal communication, such as hand signs or written notes. The spell allows talking in metaphors and talking about fictional figures. The spell doesn’t affect the target’s ability to say things that are neither true nor false, such as questions, commands, or verbal spell components. If the target of this spell is simultaneously compelled to tell the truth (for instance, by being within a zone of truth), the target is only able to say things that are neither true nor false.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Conditional Favor", school: "Abjuration", levels: "antipaladin 1, bard 2, cleric 2, inquisitor 2, mesmerist 2, occultist 2, oracle 2, paladin 1, skald 2, warpriest 2, witch 2",
                          castingTime: "1 swift action", components: "V",
                          range: "", area: "", targets: "one creature",
                          duration: "1 day/level (D)",
                          savingThrow: "none (see below);", sr: true,
                          summary: "You must cast this spell immediately before casting another spell on the same creature, eliciting a promise or warning against a behavior and binding the target to the paired spell.",
                          desc: "You must cast this spell immediately before casting another spell on the same creature, eliciting a promise or warning against a behavior and binding the target to the paired spell. If you don’t cast a paired spell, conditional favor has no effect. The paired spell must be from the abjuration, conjuration (healing), enchantment, or transmutation school or subschool, and must be cast on a willing creature. If the spell’s recipient violates the oath or prohibition while conditional favor remains in effect, the paired spell is undone as if never cast. If the spell was a healing spell, the hit point damage or condition you removed returns immediately, even if the subject has enjoyed subsequent rest or healing. Poisons, diseases, curses, restored ability damage, and negative levels removed by the paired spell return as well.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Conjuration Foil", school: "Abjuration", levels: "arcanist 4, bard 4, magus 3, medium 4, occultist 4, psychic 4, skald 4, sorcerer 4, spiritualist 4, summoner 3, summoner (unchained) 3, witch 4, wizard 4",
                          castingTime: "1 immediate action", components: "S",
                          range: "medium (100 ft. + 10 ft./level)", area: "20-foot radius spread", targets: "",
                          duration: "1 round",
                          savingThrow: "Will partial (see text);", sr: true,
                          summary: "All creatures in the area gain a +4 bonus on saving throws against teleportation effects.",
                          desc: "All creatures in the area gain a +4 bonus on saving throws against teleportation effects. If any creature would enter or depart the area via a summoning or teleportation effect, that creature takes 1d6 points of damage per spell level of the triggering effect (or half the HD of the originating creature if the effect has no spell level) and arrives in a random similar location within the triggering effect’s range, rather than the intended destination. A successful Will save halves the damage and negates the altered destination.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Conjure Carriage", school: "Conjuration (Creation)", levels: "arcanist 3, bard 3, magus 3, skald 3, sorcerer 3, summoner 3, summoner (unchained) 3, witch 3, wizard 3",
                          castingTime: "1 round", components: "V, S, M (a gourd)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one quasi-real carriage, horses, and driver", targets: "",
                          duration: "1 hour/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You create a fine wooden carriage with whatever cosmetic embellishments you desire. It is well constructed, although not exceptionally ostentatious.",
                          desc: "You create a fine wooden carriage with whatever cosmetic embellishments you desire. It is well constructed, although not exceptionally ostentatious. The carriage can carry up to six Medium or Small passengers. When conjured, the carriage comes with a team of two quasi-real light horses, which are already harnessed to the carriage. At your command, an invisible coachman similar to an unseen servant can assume the role of driver and direct the carriage, although it can’t perform any complex or dangerous driving, and fails any checks made to drive the carriage in such conditions. At the end of the spell’s duration, the carriage, horses, and coachman disappear into nothingness, depositing everything on or in it on the ground in its space.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Contingent Venom", school: "Necromancy", levels: "alchemist 2, arcanist 2, investigator 2, shaman 2, skald 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (herbs used in antitoxin worth 25 gp)",
                          range: "touch", area: "", targets: "one dose of poison or one venomous creature",
                          duration: "permanent until discharged (D)",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "This spell functions as languid venom , but you can stipulate a specific condition or circumstance that will end the poison’s onset time and cause it to take effect.",
                          desc: "This spell functions as languid venom , but you can stipulate a specific condition or circumstance that will end the poison’s onset time and cause it to take effect. The conditions for triggering the poison can be as general or as detailed as desired, but the triggers must be visual or audible (as per",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Crime Wave", school: "Enchantment (Compulsion)", levels: "antipaladin 4, arcanist 7, bard 5, mesmerist 5, psychic 7, sorcerer 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S, M (a tarnished coin)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature/level, no two of which can be more than 30 ft. apart",
                          duration: "1 round/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You instill overwhelming avarice in the targets and impel them toward a wild spree of larceny.",
                          desc: "You instill overwhelming avarice in the targets and impel them toward a wild spree of larceny. Creatures affected by a crime wave must roll percentile dice each round to determine what action they take. d% Behavior",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Crime of Opportunity", school: "Enchantment (Compulsion)", levels: "antipaladin 4, arcanist 7, bard 5, mesmerist 5, psychic 7, sorcerer 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S, M (a tarnished coin)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature/level, no two of which can be more than 30 ft. apart",
                          duration: "1 round/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You awaken a sudden criminal impulse in the target, compelling it to commit a criminal act as if affected by the crime wave spell.",
                          desc: "You awaken a sudden criminal impulse in the target, compelling it to commit a criminal act as if affected by the crime wave spell.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Cultural Adaptation", school: "Divination", levels: "arcanist 1, bard 1, cleric 1, medium 1, occultist 1, oracle 1, psychic 1, skald 1, sorcerer 1, warpriest 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M/DF (a document written in the language of the culture to be emulated)",
                          range: "personal", area: "", targets: "you",
                          duration: "10 minutes/level",
                          savingThrow: "None", sr: false,
                          summary: "When casting this spell, you must concentrate on a culture or subculture to which you wish to adapt.",
                          desc: "When casting this spell, you must concentrate on a culture or subculture to which you wish to adapt. If you speak the native language of the culture in question, then for the duration of this spell, you speak the language with a native accent. The spell doesn’t teach you the language in question, but can be combined with tongues or a similar spell. Your body language and gestures mark you as a native of the culture, and you unconsciously make small decisions that help you blend in. Combined, these grant you a +2 circumstance bonus on Diplomacy checks to influence members of the culture to which you have adapted, which doesn’t stack with other circumstance bonuses you might possess by virtue of being a member of the chosen culture. You also gain a +2 circumstance bonus on Disguise checks to pass yourself off as if you were a member of the culture, if you are not. This doesn’t provide benefits when disguising yourself as a specific member of the culture, though it negates any circumstance penalties you might otherwise have taken due to not acting appropriately for that person’s culture. Finally, the DCs of enchantment (charm) spells you cast against natives of the culture to which you are attuned increase by 1.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Curse of the Outcast", school: "Enchantment (Compulsion)", levels: "bard 4, cleric 6, inquisitor 4, mesmerist 4, oracle 6, shaman 6, skald 5, warpriest 6, witch 6",
                          castingTime: "1 standard action", components: "V, S, M (a handful of earthworms)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "permanent",
                          savingThrow: "Will negates;", sr: true,
                          summary: "Everything about the target seems off-putting and grating, and everyone he meets is compelled to see the worst in him.",
                          desc: "Everything about the target seems off-putting and grating, and everyone he meets is compelled to see the worst in him. Whenever the target attempts a Bluff, Diplomacy, Intimidate, or Perform check, he must roll twice and take the lower result. Additionally, each creature he encounters has its initial attitude toward him reduced by one step (helpful becomes friendly, friendly becomes indifferent, and so on).",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Dark Whispers", school: "Illusion (Shadow)", levels: "antipaladin 1, arcanist 2, bard 2, cleric 2, oracle 2, skald 2, sorcerer 2, summoner 2, summoner (unchained) 2, warpriest 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, F/DF (a scrap of black cloth)",
                          range: "long (400 ft. + 40 ft./level)", area: "", targets: "one creature/level",
                          duration: "10 minutes/level (D)",
                          savingThrow: "none;", sr: true,
                          summary: "You communicate through the shadows of one or more targets within range. The shadows have no physical presence and don’t move or animate.",
                          desc: "You communicate through the shadows of one or more targets within range. The shadows have no physical presence and don’t move or animate. Instead, your words emerge from the shadow as a clear whisper, absent any accent or other identifying features. The targets can make conversation with the shadow, but must speak aloud to do so. The targets’ voices emerge from your own shadow only when they intend to speak to the shadow, but you hear no other sounds from the target’s immediate area. Their responses also emerge as clear whispers, absent identifying features, but you can instinctively identify which target is speaking to you through the shadow. Once the spell has been cast, you don’t need to have line of effect to the targets or their shadows to communicate back and forth. The shadow communication is audible, so it can be intercepted by adversaries who succeed at a DC 25 Perception check. The spell can be silenced . You can’t cast spells on subjects or otherwise establish line of effect through the shadows, but spells that allow you to speak or understand languages work normally across",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Deceitful Veneer", school: "Illusion (Glamer)", levels: "antipaladin 3, bard 4, inquisitor 4, medium 3, mesmerist 4, psychic 4, skald 4, wizard 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "10 minutes/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You subtly alter both the target’s aura and subtle cues in its body language, tone of voice, and word choice, which makes everything that the target says seem to be a lie.",
                          desc: "You subtly alter both the target’s aura and subtle cues in its body language, tone of voice, and word choice, which makes everything that the target says seem to be a lie. Every statement that the target makes appears to be a lie under both magical scrutiny (such as discern lies ) and mundane scrutiny (such as using the Sense Motive skill). Someone who closely scrutinizes the target can determine when it is actually telling the truth with a successful Sense Motive check (DC = 15 + your caster level). As long as you are within close range of the target, as a standard action you can suppress or resume the effects of this spell, allowing you to let the target seem to be telling the truth at some times and still seem to be lying at others.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Deflect Blame", school: "Enchantment (Compulsion)", levels: "arcanist 3, bard 2, mesmerist 2, psychic 2, skald 2, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 immediate action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You can cast this spell immediately after attacking a creature, causing that creature to believe that a different creature that threatens it was responsible for the attack rather than you.",
                          desc: "You can cast this spell immediately after attacking a creature, causing that creature to believe that a different creature that threatens it was responsible for the attack rather than you. You can instead cast this spell immediately after a failed Bluff, Diplomacy, or Intimidate check, causing the target of that check to believe that a different creature you designate within spell range was responsible for the content of that failed check. Using the spell in these ways doesn’t compel the target to undertake a specific action in response to its belief of where the blame lies.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Desperate Weapon", school: "Conjuration (Creation)", levels: "antipaladin 1, arcanist 1, bard 1, bloodrager 1, cleric 1, hunter 1, inquisitor 1, magus 1, occultist 1, oracle 1, ranger 1, skald 1, sorcerer 1, warpriest 1, wizard 1",
                          castingTime: "1 swift action", components: "V",
                          range: "personal", area: "one-handed improvised weapon", targets: "",
                          duration: "1 minute/level",
                          savingThrow: "none;", sr: false,
                          summary: "You create a one-handed object that you might expect to see in your current surroundings, which you can then use as an improvised weapon.",
                          desc: "You create a one-handed object that you might expect to see in your current surroundings, which you can then use as an improvised weapon. The spell conjures such an object near your hand such that you can retrieve it as you complete the spell. No matter what sort of object you picked, it functions as a one-handed improvised weapon appropriate for your size and that deals 1d6 points of damage for a Medium creature (1d4 for Small creatures). The item deals the type of damage you choose (bludgeoning, piercing, or slashing) when casting the spell, though the object you request must conform to the damage type. The spell ends prematurely if the improvised weapon leaves your grasp. The object has no value and can’t be used for other functions other than as an improvised weapon (for instance, this spell doesn’t allow you to conjure an expensive spyglass and sell it or use its other abilities, but you could still use it to beat someone over the head). The conjured object can’t already be a manufactured weapon, even in a location where you might expect to see manufactured weapons. It can be an object that would normally make for an unusual improvised weapon, like a herring at a fish market, and it still deals its full damage.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Disrupt Silence", school: "Abjuration", levels: "bard 2, cleric 3, inquisitor 3, oracle 3, psychic 3, skald 2, warpriest 3",
                          castingTime: "1 standard action", components: "S, M (tiny silver bell, chime, or gong)",
                          range: "touch", area: "10-ft.-radius emanation centered on a creature, object, or point in space", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You suppress magical sound-dampening effects within the area. Disrupt silence temporarily negates magical silence within its area, so that normal sounds can be heard within the overlapping areas of…",
                          desc: "You suppress magical sound-dampening effects within the area. Disrupt silence temporarily negates magical silence within its area, so that normal sounds can be heard within the overlapping areas of effect. Additionally,",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Dress Corpse", school: "Necromancy", levels: "arcanist 2, cleric 2, oracle 2, sorcerer 2, warpriest 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a pickled herring)",
                          range: "touch", area: "", targets: "corpse touched",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "You cause the flesh and bones of a corpse to shift themselves to suit a narrative of your choosing.",
                          desc: "You cause the flesh and bones of a corpse to shift themselves to suit a narrative of your choosing. This spell can hide or create telltale wounds, bruising, and other subtle clues as to the nature of the target’s death, and the final hours leading up to it, allowing you to make the corpse appear to have died in just about any way. You could, for example, make stab wounds close up as though they were never there, rearrange bruises on the neck, evaporate traces of poison within the body into nothingness, make burn marks grow to cover the corpse’s skin, or shrivel the target’s body as though the creature had starved. This spell can’t hide extreme alterations to the body (such as the loss of a limb), nor can it restore flesh to a skeletal corpse or strip a corpse down to skeletal form. It is also unable to change the apparent identity of the corpse. Anyone who closely examines the corpse can attempt a Perception check (DC = 10 + your caster level) to notice that the corpse’s wounds (or lack thereof) don’t look natural, but this doesn’t allow the observer to determine what the corpse looked like before this spell was cast. Closely examining the corpse with a successful Heal check (DC = 15 + your caster level) not only reveals that the target’s apparent wounds are false, but also what the originally obscured wounds were.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Entice Fey", school: "Conjuration (Calling)", levels: "bard 4, druid 5, hunter 4, medium 3, ranger 4, shaman 5, skald 4",
                          castingTime: "10 minutes", components: "V, S, M (offerings worth 500 gp plus payment, see text), DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one called fey, with 6 Hit Dice or fewer", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as lesser entice fey , except that the spell’s whimsical calling can produce a single fey of 12 Hit Dice or less, or two fey of the same kind whose Hit Dice total no more than…",
                          desc: "This spell functions as lesser entice fey , except that the spell’s whimsical calling can produce a single fey of 12 Hit Dice or less, or two fey of the same kind whose Hit Dice total no more than 12. Entice Fey, Greater",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Entice Fey, Greater", school: "Conjuration (Calling)", levels: "bard 4, druid 5, hunter 4, medium 3, ranger 4, shaman 5, skald 4",
                          castingTime: "10 minutes", components: "V, S, M (offerings worth 500 gp plus payment, see text), DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one called fey, with 6 Hit Dice or fewer", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as lesser entice fey , except the spell’s whimsical calling can produce a single fey of 18 Hit Dice or less, or up to three fey of the same kind whose Hit Dice total no more than…",
                          desc: "This spell functions as lesser entice fey , except the spell’s whimsical calling can produce a single fey of 18 Hit Dice or less, or up to three fey of the same kind whose Hit Dice total no more than 18.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Entice Fey, Lesser", school: "Conjuration (Calling)", levels: "bard 4, druid 5, hunter 4, medium 3, ranger 4, shaman 5, skald 4",
                          castingTime: "10 minutes", components: "V, S, M (offerings worth 500 gp plus payment, see text), DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one called fey, with 6 Hit Dice or fewer", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as lesser planar ally , except that you entice a fey of 6 HD or fewer to lend you its aid with an offering of music or something else it finds appealing. Like",
                          desc: "This spell functions as lesser planar ally , except that you entice a fey of 6 HD or fewer to lend you its aid with an offering of music or something else it finds appealing. Like",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Fabricate Disguise", school: "Transmutation", levels: "alchemist 1, antipaladin 1, arcanist 1, bard 1, inquisitor 1, investigator 1, psychic 1, skald 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "S",
                          range: "personal", area: "", targets: "you",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "You change outfits or create a disguise out of materials you are wearing or carrying (potentially including a disguise kit).",
                          desc: "You change outfits or create a disguise out of materials you are wearing or carrying (potentially including a disguise kit). The spell can’t alter your body or change the structure of objects, but can style wigs, apply makeup or piercings, and otherwise make use of tools to make superficial changes. In an instant, you have a nonmagical disguise or clothing change. Attempt a Disguise check to determine the effectiveness of the disguise.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("False Belief", school: "Enchantment (Compulsion)", levels: "bard 2, mesmerist 2, psychic 2, skald 2",
                          castingTime: "10 minutes, plus length of memory to be altered", components: "V, S, M (lemon juice and a scrap of parchment)",
                          range: "touch", area: "", targets: "willing creature touched",
                          duration: "1 hour/level",
                          savingThrow: "none;", sr: true,
                          summary: "You temporarily alter the target’s memory (similar to modify memory ) to eliminate, change, or implant a memory of up to 1 hour in length.",
                          desc: "You temporarily alter the target’s memory (similar to modify memory ) to eliminate, change, or implant a memory of up to 1 hour in length. When the duration of this expires, the target’s real memory returns, and the false memory fades to little more than a vague outline, like a dream. This false memory seems true to the target, so effects that detect lies or force the target to speak the truth (as the subject understands it) don’t detect the falsehood.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("False Future", school: "Illusion (Glamer)", levels: "arcanist 5, bard 3, cleric 4, medium 3, mesmerist 3, oracle 4, psychic 4, shaman 4, skald 3, sorcerer 5, spiritualist 4, warpriest 4, witch 4, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (crushed jade worth 100 gp)",
                          range: "touch", area: "", targets: "creature or object touched",
                          duration: "1 hour/level (D)",
                          savingThrow: "Will negates or Will disbelief (see text);", sr: true,
                          summary: "You interfere with attempts to predict the target’s future by preventing divinations from revealing what the target will do and what will befall the target while under the spell’s effects.",
                          desc: "You interfere with attempts to predict the target’s future by preventing divinations from revealing what the target will do and what will befall the target while under the spell’s effects. Instead of the target’s true actions or experiences, divinations resolve as if the target will experience some different future you describe as you cast false future . The target creature can attempt a Will save to avoid the initial effect, and creatures using divinations get a Will save to disbelieve the illusion. This spell doesn’t prevent divinations cast after the duration’s end from determining what the subject actually did during the time you obscured using",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ghost Brand", school: "Transmutation", levels: "bard 4, occultist 3, skald 4, spiritualist 4, witch 4",
                          castingTime: "1 standard action", components: "V, S, M (a branding iron an a strip of white silk worth 10 gp)",
                          range: "touch", area: "", targets: "one willing creature and one object touched",
                          duration: "1 day/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You alter the fundamental substance of a single object up to 2 cubic feet per level in size and at least one size category smaller than the target creature, causing it to become shadowy and…",
                          desc: "You alter the fundamental substance of a single object up to 2 cubic feet per level in size and at least one size category smaller than the target creature, causing it to become shadowy and intangible, as though made out of quasi-real shadowstuff. You link the intangible item to the target’s flesh by making a brand shaped like the item on the target’s skin. The intangible item merges with the target’s flesh and is contained within the target’s body, moving with the target wherever it goes. The creature can retrieve the item or reabsorb it as a full-round action, and can do so as many times as it wants. When worn or wielded by the target, the item regains its solidity and functions normally, though the target can’t drop or remove the item (other than by using the full-round action), nor can it be disarmed or stolen. If the item is destroyed, the spell ends. If the ghost brand spell is dispelled while the object is inside the target’s body, the object bursts out of the target’s flesh, dealing 3d6 points of piercing and slashing damage to the target that bypasses DR, as well as 1d6 points of bleed damage.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Handy Grapnel", school: "Transmutation", levels: "arcanist 1, hunter 1, inquisitor 1, ranger 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M (an arrowhead)",
                          range: "touch", area: "", targets: "one ropelike object, length up to 50 ft. + 5 ft./level",
                          duration: "1 minute/level (D)",
                          savingThrow: "Fortitude negates (object);", sr: false,
                          summary: "You cause the target rope to shrink and reshape itself into an arrow, bolt, or similar piece of ammunition, which you can shoot at any Medium or larger object.",
                          desc: "You cause the target rope to shrink and reshape itself into an arrow, bolt, or similar piece of ammunition, which you can shoot at any Medium or larger object. With a successful attack roll against an AC equal to 5 plus the hardness of the target object, the handy grapnel strikes and embeds itself in that object with the strength of an iron grappling hook. As a move action, you can command the rope to extend from the arrow. If you are within a distance equal to the length of the rope and have a hand free, the end of the rope swings directly into your hand. With another move action, you can command the handy grapnel to retract itself up to the grappling hook, pulling up any creature or object supported by the rope at a speed of 50 feet per round. Once embedded, the rope can be used for climbing or any other purpose a rope could serve, and it can bear up to 200 pounds per level of the caster at a time (maximum 1,000 pounds). If this weight limit is exceeded, the handy grapnel comes loose and any creature or object supported by the rope falls.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hidden Presence", school: "Enchantment (Compulsion)", levels: "arcanist 2, bard 2, inquisitor 2, mesmerist 2, psychic 2, skald 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (eye drops made with extract of poppy)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "up to one creature per 3 caster levels",
                          duration: "1 minute/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You prevent the targets from having conscious awareness of your presence. You make yourself completely undetectable to the subjects by erasing all awareness of your presence from their minds.",
                          desc: "You prevent the targets from having conscious awareness of your presence. You make yourself completely undetectable to the subjects by erasing all awareness of your presence from their minds. The targets can’t see, hear, smell, feel, or taste you, including with extraordinary or supernatural senses such as blindsense, blindsight, scent, or tremorsense. They can’t pinpoint your location by any means, including detect spells. The targets remain unaware of your actions, provided you don’t make any attacks or cause any obvious or directly threatening changes in the targets’ environment. If you attack any of the target creatures, the effect ends. If you take an action that creates a sustained and obvious change in the target’s environment—for example, attacking a creature other than a target or moving a sizeable or attended object the target can see—the target immediately receives a new saving throw.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Illusion of Treachery", school: "Illusion (Glamer)", levels: "antipaladin 3, arcanist 4, magus 4, mesmerist 3, occultist 4, psychic 4, sorcerer 4, wizard 4",
                          castingTime: "1 standard action", components: "S, F (a tiny marionette)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round/level (D)",
                          savingThrow: "Will disbelief;", sr: true,
                          summary: "You create an illusion that takes the same space as a foe and mimics its movements perfectly.",
                          desc: "You create an illusion that takes the same space as a foe and mimics its movements perfectly. Whenever you cast a spell or throw a weapon, the illusion ceases mimicking the target’s actions just long enough to make it look like the target cast the spell or threw the weapon simultaneously with you, such that witnesses who can see both you and the target can’t tell with certainty who truly cast the spell or threw the weapon. Witnesses who can see only the target see it as the only apparent source. The subject of this spell doesn’t provoke attacks of opportunity from these illusory actions. Each target of the attack or spell counts as interacting with the illusion and thus receives a save to disbelieve. Illusion of Treachery, Greater",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Illusion of Treachery, Greater", school: "Illusion (Glamer)", levels: "antipaladin 3, arcanist 4, magus 4, mesmerist 3, occultist 4, psychic 4, sorcerer 4, wizard 4",
                          castingTime: "1 standard action", components: "S, F (a tiny marionette)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round/level (D)",
                          savingThrow: "Will disbelief;", sr: true,
                          summary: "This spell functions as illusion of treachery except that it also conceals your own actions (as",
                          desc: "This spell functions as illusion of treachery except that it also conceals your own actions (as",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Insect Spies", school: "Divination", levels: "arcanist 4, druid 3, hunter 3, ranger 3, sorcerer 4, summoner 3, summoner (unchained) 3, witch 4, wizard 4",
                          castingTime: "1 round", components: "V, S, M (a drop of honey)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "up to one insect spy/4 levels", targets: "",
                          duration: "10 minutes/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You summon one or more glossy black beetles, which have a measure of intelligence and make for excellent spies.",
                          desc: "You summon one or more glossy black beetles, which have a measure of intelligence and make for excellent spies. When they are in your presence, the insects obey your mental commands, and you can issue orders to any number of them as a single standard action, provided that you issue the same orders to each one. In order to issue different orders to different insects, you must spend a separate standard action for each set of orders. An insect in physical contact with you can answer simple questions about what it has observed, at a rate of one question per round. It can relate only what it perceived with its senses, and can’t repeat speech. It has difficulty making subjective judgments, and questions that demand such reasoning are unlikely to yield a clear answer. For example, an insect is unable to relay someone’s emotional state or determine who among several people it saw might be in charge. Each insects’ size is Fine. Each insect has 1 hit point, AC 20 (+2 Dexterity, +8 size), a movement speed of 5 feet, a climb speed of 5 feet, and a fly speed of 20 feet (perfect maneuverability). The insects use your saving throw bonuses, have a total Perception skill bonus equal to 5 + 1/2 your caster level, and can’t make attacks. Due to their incredibly small size and magical nature, they can make Stealth checks to avoid being noticed even if they lack a source of cover or concealment, and they have a total Stealth skill bonus equal to 18 + 1/2 your caster level. The insects can even climb onto creatures of Tiny or larger size while using Stealth, possibly riding on those creatures unnoticed. A Tiny creature gains a +16 bonus on Perception checks made to notice one of these insects currently climbing on it. For each size category larger than Tiny the creature being climbed is, this bonus is reduced by 4 (to a minimum of +0 for Huge or larger creatures). You also maintain a faint mystical connection with these insects, which allows you to sense where they are. As a full-round action, you can concentrate on the spell in order to learn the direction and relative distance of each of the insects. Insect Spies, Greater",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Insect Spies, Greater", school: "Divination", levels: "arcanist 4, druid 3, hunter 3, ranger 3, sorcerer 4, summoner 3, summoner (unchained) 3, witch 4, wizard 4",
                          castingTime: "1 round", components: "V, S, M (a drop of honey)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "up to one insect spy/4 levels", targets: "",
                          duration: "10 minutes/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "As insect spies , but you can also borrow the senses of the summoned insects.",
                          desc: "As insect spies , but you can also borrow the senses of the summoned insects. As a move action, you can choose to receive sensory input from one of the insects, seeing what it sees and hearing what it hears. While doing so, you are treated as being blind and deaf. You can change to another insect, or return to your own senses, with another move action.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Instant Fake", school: "Illusion (Figment)", levels: "arcanist 4, bard 3, hunter 3, inquisitor 3, magus 4, mesmerist 3, occultist 3, ranger 3, sorcerer 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (a piece of costume jewlery)",
                          range: "1 object touched", area: "", targets: "one object weighting no more than 1 lb./level",
                          duration: "1 minute/level",
                          savingThrow: "Will disbelief (if interacted with);", sr: false,
                          summary: "You create an illusory duplicate of the target item. If you hold the charge on this spell, you can deliver it while touching an object you steal with Sleight of Hand or a steal APG combat maneuver;…",
                          desc: "You create an illusory duplicate of the target item. If you hold the charge on this spell, you can deliver it while touching an object you steal with Sleight of Hand or a steal APG combat maneuver; in this case, the illusion phases into existence exactly as you remove the genuine article, allowing you to instantaneously replace a protected or guarded item with no change in appearance, weight, or other factors. The illusion appears to be a perfect replica. Actively examining the fake with an Appraise or Perception check grants a creature a Will save, but on a failed saving throw, it concludes that the fake is the genuine article. The illusion isn’t a functional item, nor does it have any magical properties of the original. For example, an instant fake of a set of thieves’ tools can’t be used to pick a lock, a false warhammer can’t harm a person or break an object, a suit of unreal chainmail offers no actual protection, and an illusory potion of",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Know Peerage", school: "Divination", levels: "arcanist 2, bard 1, cleric 2, inquisitor 2, medium 1, mesmerist 2, occultist 2, oracle 2, paladin 1, psychic 2, skald 1, sorcerer 2, warpriest 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (thread from a tabard of livery)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 minutes/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You impart your knowledge of nobility and peerage to the target, allowing her to recognize members of noble households, differentiate one set of heraldry from another, and otherwise identify who’s…",
                          desc: "You impart your knowledge of nobility and peerage to the target, allowing her to recognize members of noble households, differentiate one set of heraldry from another, and otherwise identify who’s who at a royal gala or other noteworthy social event. The target is able to identify noble individuals, noble family names, and noble crests, signets, heraldry, and other symbols. The target treats her number of ranks in Knowledge (nobility) as though it were equal to your number of ranks in Knowledge (nobility), to a maximum of 5 ranks and a minimum of 0. If the target’s number of ranks is greater than yours, she uses her own number of ranks instead. In addition, if the target’s new total skill bonus on Knowledge (nobility) checks is at least +0, she automatically succeeds on all Knowledge (nobility) checks with a DC of 10 or lower.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Languid Venom", school: "Necromancy", levels: "alchemist 2, arcanist 2, investigator 2, shaman 2, skald 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (herbs used in antitoxin worth 25 gp)",
                          range: "touch", area: "", targets: "one dose of poison or one venomous creature",
                          duration: "permanent until discharged (D)",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "You greatly extend the time it takes for the poison you touch to take effect, giving that poison an onset time up to 1 hour per caster level.",
                          desc: "You greatly extend the time it takes for the poison you touch to take effect, giving that poison an onset time up to 1 hour per caster level. (You touch the poison’s container, so you don’t risk exposing yourself to a contact poison.) The target doesn’t attempt a saving throw when initially exposed to the languid venom , but instead saves at the end of the poison’s onset time. If the poison is neutralized or otherwise cured prior to the end of its onset time, it is rendered harmless. Failing saves against multiple doses of",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Life of Crime", school: "Enchantment (Compulsion)", levels: "antipaladin 4, arcanist 8, bard 6, mesmerist 6, psychic 8, skald 6, sorcerer 8, wizard 8",
                          castingTime: "1 standard action", components: "V, S, M (a black mask)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "permanent",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You unleash the basest instincts of iniquity in the target and cause them to become his overriding reason for being.",
                          desc: "You unleash the basest instincts of iniquity in the target and cause them to become his overriding reason for being. The target neither gains nor provides benefit from teamwork feats or the aid another action and can’t willingly accept harmless magical effects from others. The target moves by Stealth whenever possible, and lies and deceives others instinctively to further its personal agenda. In addition, when the target is conscious, it must succeed at a Will save against the spell’s save DC each hour (or each round during combat or a similarly stressful situation) or behave as if affected by a crime wave spell for 1 round.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mage's Decree", school: "Evocation", levels: "arcanist 6, bard 5, cleric 6, inquisitor 5, mesmerist 5, oracle 6, psychic 6, skald 5, sorcerer 6, summoner 5, summoner (unchained) 5, warpriest 6, witch 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S, F (a brass cone or trumpet)",
                          range: "up to 1 mile/level, see text", area: "", targets: "see text",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "You speak a short message (up to 25 words), and it is immediately transmitted to each target, who hear it as clearly as if you were standing next to them.",
                          desc: "You speak a short message (up to 25 words), and it is immediately transmitted to each target, who hear it as clearly as if you were standing next to them. By default, the spell targets every creature with an Intelligence score of 3 or greater that is within the spell’s range, but at your discretion, you can choose to restrict the spell to certain creatures, causing it to either only deliver its message to creatures meeting a certain criteria, or to deliver it to all creatures except those meeting that criteria. The criteria must be something objective and observable. For example, you could cause the mage’s decree to reach only creatures of a certain race. You can’t choose recipients that rely on unobservable information, such as creatures of a certain alignment or of a particular class. You can’t pick and choose individual creatures to target or exclude. While the spell’s range defaults to 1 mile per caster level, you can choose to reduce it to a smaller radius, although the spell’s area can’t be shaped. The nature of the spell prevents the message it carries from having any magical power; the message can’t be used to transmit spells or abilities that are conveyed via speech. The message is transmitted in your voice in whatever language you use to speak it, and is not automatically translated. Any steps you take to disguise your voice are just as effective for messages delivered via this spell as they are for your normal speech. Mage’s decree isn’t a language-dependent spell; all targeted creatures receive the message, but might not understand it if they don’t understand the language in which you spoke the message.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Majestic Image", school: "Transmutation", levels: "arcanist 4, bard 4, cleric 4, medium 4, mesmerist 4, occultist 4, oracle 4, skald 4, sorcerer 4, spiritualist 4, warpriest 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (a drop of paint and a ball of clay)",
                          range: "200 ft./level", area: "transfer consciousness to an object bearing your likeness", targets: "",
                          duration: "concentration",
                          savingThrow: "Will negates (see text);", sr: true,
                          summary: "You cast your consciousness into a single object within range that bears your likeness, as if choosing a specific image with the spell enter image APG .",
                          desc: "You cast your consciousness into a single object within range that bears your likeness, as if choosing a specific image with the spell enter image APG . In addition to observing your surroundings, speaking, and manipulating the image you inhabit, however, you can converse with nearby creatures and use your normal social skills. You gain a +5 bonus on Bluff checks to tell lies and Diplomacy checks to make a request. You gain a +2 bonus on Intimidate checks and use the object’s size to determine whether you gain a bonus or penalty on Intimidate checks for size.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Matchmaker", school: "Enchantment (Charm)", levels: "arcanist 3, bard 2, mesmerist 2, skald 2, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "S, M (a rose petal)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "two living creatures",
                          duration: "1 hour/level",
                          savingThrow: "Will partial, see text;", sr: true,
                          summary: "You entice the target creatures to become romantically interested in one another. Each creature saves and applies spell resistance separately. Both must be affected for the spell to have an effect.",
                          desc: "You entice the target creatures to become romantically interested in one another. Each creature saves and applies spell resistance separately. Both must be affected for the spell to have an effect. If either creatures has a prior unfriendly or hostile attitude toward the other, it receives a +4 bonus on its saving throw. This spell doesn’t override the targets’ normal sexual preferences or other limitations. If romantic feelings are incompatible for this reason, the creature instead feels an intimate platonic bond with the other.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Meticulous Match", school: "Divination", levels: "arcanist 4, bard 3, hunter 3, inquisitor 3, occultist 3, ranger 3, skald 3, sorcerer 4, witch 4, wizard 4",
                          castingTime: "10 minutes", components: "V, S",
                          range: "touch", area: "", targets: "two objects touched",
                          duration: "instantaneous",
                          savingThrow: "Fort negates (object);", sr: true,
                          summary: "You compare two similar items and know if they are identical to one another or not. The spell can indicate an identical match, a categorical match, or no match.",
                          desc: "You compare two similar items and know if they are identical to one another or not. The spell can indicate an identical match, a categorical match, or no match. For instance, blood samples are identical if they are from the same creature. They are categorical if they are from the same species. There is no match if they are from different species, or if one sample is merely stage blood. Alternatively, you can compare dissimilar items and know if they have a potential relationship. For instance, you can compare a creature’s tooth against a bite mark and know if that creature could have caused the bite mark. This spell is not infallible—an identical match can result from comparing items or creatures that are duplicates of one another. For instance, a knife might have an identical match with a stab wound if an identical knife was used to inflict the wound, and twins might have identical blood or tissues.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Obscure Poison", school: "Abjuration", levels: "alchemist 1, antipaladin 1, arcanist 1, bard 1, cleric 1, druid 1, hunter 1, investigator 1, mesmerist 1, oracle 1, shaman 1, skald 1, sorcerer 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "S, M (herbs used in antitoxin worth 10 gp)",
                          range: "touch", area: "", targets: "one dose of poison or one venomous creature touched",
                          duration: "1 hour/level",
                          savingThrow: "none;", sr: false,
                          summary: "You make the touched poison difficult to detect or identify. Detect poison and similar effects detect an obscured poison only with a successful caster level check against a DC equal to 15 + your…",
                          desc: "You make the touched poison difficult to detect or identify. Detect poison and similar effects detect an obscured poison only with a successful caster level check against a DC equal to 15 + your caster level (rolled secretly by the GM). Even if the poison is detected, the DC of Craft (alchemy) or Wisdom checks to identify the poison is increased by 10. If cast upon a venomous creature,",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Open Book", school: "Divination", levels: "antipaladin 2, arcanist 3, bard 2, inquisitor 2, mesmerist 2, psychic 2, skald 2, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a page torn from a book)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "permanent",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You lay bare not only the mind of a target, but the target’s history as well.",
                          desc: "You lay bare not only the mind of a target, but the target’s history as well. The target takes a –2 penalty on saving throws against divinations, and Diplomacy checks to gather information about the target gain a bonus equal to half your caster level (maximum +10).",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Open and Shut", school: "Illusion (Glamer)", levels: "arcanist 1, bard 1, inquisitor 1, skald 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 swift action", components: "V, S, F (a doornail, doorknob, or hinge)",
                          range: "touch", area: "", targets: "one door, window, or similar portal no more than 10 feet by 10 feet in area",
                          duration: "1 round/level (D)",
                          savingThrow: "Will disbelief;", sr: false,
                          summary: "You alter the appearance of a door and disguise whether it is open or closed.",
                          desc: "You alter the appearance of a door and disguise whether it is open or closed. You can cause the touched door to appear closed regardless of whether it is open or closed, to appear open regardless of whether it is open or closed, or to appear to open or close. After you cast the spell, you can change between these options as a move action. Creatures using a move action to open or shut the door can attempt a Will save to disbelieve the illusion. Regardless of how you alter the appearance of the door, creatures that believe the illusion take a –5 penalty on Perception checks regarding the door itself or creatures on the other side of the door. This spell affects windows, gates, and similar openings in the same way it affects doors.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Overwhelming Poison", school: "Necromancy", levels: "antipaladin 4, cleric 6, druid 6, hunter 4, oracle 6, ranger 4, shaman 6, warpriest 6, witch 6",
                          castingTime: "1 standard action", components: "V, S, M (an adder's fang)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature or one dose of poison; see text",
                          duration: "10 minutes/level",
                          savingThrow: "none;", sr: false,
                          summary: "This spell increases the virulence of the targeted dose of poison, making the poison more difficult to resist. The poison is unaffected by delay poison , and the DC to remove it with",
                          desc: "This spell increases the virulence of the targeted dose of poison, making the poison more difficult to resist. The poison is unaffected by delay poison , and the DC to remove it with",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Pack Empathy", school: "Divination", levels: "arcanist 3, bloodrager 3, druid 3, hunter 2, inquisitor 3, medium 2, ranger 2, sorcerer 3, spiritualist 3, summoner 3, summoner (unchained) 3, warpriest 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "you plus one willing living creature per 3 levels, no two of which can be more than 30 ft. apart",
                          duration: "1 hour/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You create an instinctual connection between the targets. Each can sense the others’ overall emotional states, which allows them to communicate basic emotional concepts (such as alerting each other…",
                          desc: "You create an instinctual connection between the targets. Each can sense the others’ overall emotional states, which allows them to communicate basic emotional concepts (such as alerting each other of danger due to increased stress). Once the spell has been cast on the subjects, the distance between them and the caster doesn’t affect the spell as long as they are on the same plane of existence. If a subject leaves the plane, or if it dies, the spell ceases to function for it.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Permanent Hallucination", school: "Illusion (Phantasm)", levels: "arcanist 1, bard 1, magus 1, medium 1, mesmerist 1, occultist 1, psychic 1, skald 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "S",
                          range: "long (400 ft. + 40 ft./level)", area: "", targets: "one creature/level, no two of which can be more than 30 ft. apart",
                          duration: "concentration",
                          savingThrow: "Will disbelief;", sr: true,
                          summary: "This spell functions as audiovisual hallucination , except that the phantasm you create includes visual, auditory, olfactory, tactile, and thermal components, and the phantasm follows a complex…",
                          desc: "This spell functions as audiovisual hallucination , except that the phantasm you create includes visual, auditory, olfactory, tactile, and thermal components, and the phantasm follows a complex script. The phantasm follows that script without your having to concentrate on it and can react to stimuli the target perceives, as appropriate for the script. Unlike most illusions with a save to disbelieve, if the target disbelieves a",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Phantasmal Affliction", school: "Illusion (Phantasm)", levels: "arcanist 3, mesmerist 2, psychic 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a drop of cod liver oil)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "living creature",
                          duration: "see text",
                          savingThrow: "Will disbelief, then Fortitude or Will negates (see text);", sr: true,
                          summary: "You cause the creature to believe she has a debilitating affliction. The target can attempt a Will save to recognize the affliction as unreal.",
                          desc: "You cause the creature to believe she has a debilitating affliction. The target can attempt a Will save to recognize the affliction as unreal. If that save fails, the creature suffers an imaginary affliction of your choice. Curse : The target believes she has been cursed. She takes a permanent –4 penalty on attack rolls, saves, ability checks, and skill checks for 1 hour per caster level. After her save to disbelieve, the target attempts a second Will save to negate this effect.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Pocketful of Vipers", school: "Conjuration (Summoning)", levels: "druid 3, hunter 3, occultist 3, shaman 3, witch 3",
                          castingTime: "1 round", components: "V, S, M (a snake scale and fang)",
                          range: "touch", area: "", targets: "object touched",
                          duration: "1 hour/level or until discharged (D)",
                          savingThrow: "Fortitude negates (object);", sr: false,
                          summary: "You set a magical ward upon the object touched, which must be a container such as a pouch, bag, backpack, or pocket.",
                          desc: "You set a magical ward upon the object touched, which must be a container such as a pouch, bag, backpack, or pocket. If any creature opens the container without first speaking a command word, 1d3 summoned venomous snakes ( Pathfinder RPG Bestiary 255 ) appear, slithering out of the container and attacking that creature for 1 round/level before disappearing. They attack other creatures only if they themselves are attacked.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Poisonous Balm", school: "Conjuration (Healing)", levels: "cleric 4, druid 5, hunter 5, occultist 4, oracle 4, shaman 4, witch 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "instantaneous, then 1 hour or until triggered plus 6 rounds; see text",
                          savingThrow: "Will partial (harmless), then Fortitude negates (see text);", sr: true,
                          summary: "You mend the target’s injuries, curing 3d8 hit points + 1 point per caster level (maximum +15) as cure serious wounds , but leaving its body laced with a subtle toxin that remains inert until you…",
                          desc: "You mend the target’s injuries, curing 3d8 hit points + 1 point per caster level (maximum +15) as cure serious wounds , but leaving its body laced with a subtle toxin that remains inert until you activate it. A target that decides to attempt the Will save and succeeds is healed for half (as",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Pox of Rumors", school: "Enchantment (Compulsion)", levels: "arcanist 7, bard 5, cleric 7, mesmerist 5, oracle 7, psychic 7, skald 5, sorcerer 7, spiritualist 5, witch 7, wizard 7",
                          castingTime: "8 hours", components: "V, S, M (a physical connection to the target; see text)",
                          range: "see text", area: "", targets: "one creature",
                          duration: "1 day/level",
                          savingThrow: "Will negates, then Will partial (see text);", sr: true,
                          summary: "You curse the target to attract negative assumptions and rumors of a sort you specify when you cast the spell.",
                          desc: "You curse the target to attract negative assumptions and rumors of a sort you specify when you cast the spell. If the target fails the initial save to negate the curse, every day that it spends in a settlement, it must attempt a Will save. If it fails, it accidentally says or does something that makes others assume the rumor you specified is true in some way that is unflattering or incriminating. If the creature is not aware of the nature of the rumors, it takes a –4 penalty on these secondary saves. After the first failed save, the attitude each resident in the settlement has regarding the target is worsened by one step. For each additional failure, the target becomes the victim of focused harassment. A group of residents taunts or attacks the creature, potentially sending the authorities to investigate if the rumor indicates criminal guilt. The spell can be cast at any distance. The difficulty of the save depends on your knowledge of the subject and what sort of physical connection you have to that creature. The target gains the same bonuses and penalties on its Will save to resist this spell as the bonuses and penalties that apply to the scrying spell (including a +5 bonus if the target is on another plane), except that you can’t cast",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Quieting Weapons", school: "Illusion (Glamer)", levels: "arcanist 4, bard 4, cleric 4, hunter 3, inquisitor 4, magus 4, occultist 4, oracle 4, psychic 4, ranger 3, skald 4, sorcerer 4, spiritualist 4, warpriest 4, wizard 4",
                          castingTime: "1 standard action", components: "S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "up to one natural or manufactured weapon per 3 caster levels",
                          duration: "10 minutes/level",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "The target weapons and any ammunition they fire make no sound as part of their normal functions as a weapon.",
                          desc: "The target weapons and any ammunition they fire make no sound as part of their normal functions as a weapon. For instance, a firearm’s firing would not make an explosive sound, but if you cast this spell on a creature’s bite attack, it would not prevent it from vocalizing from its mouth. The first time a creature is struck by a weapon affected by this spell, it must succeed at a Will save (SR applies to this effect) or it becomes unable to make noise louder than a whisper (Perception DC 10 to hear) whether vocally or by other means for the duration of the effect. Because the creature can still whisper, this doesn’t interfere with verbal spell components. Whether it succeeds or fails its saving throw, the creature is immune to further effects from this casting of quieting weapons .",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Red Hand of the Killer", school: "Necromancy", levels: "arcanist 5, bard 4, cleric 4, inquisitor 4, medium 3, occultist 4, oracle 4, paladin 4, psychic 5, skald 4, sorcerer 5, spiritualist 4, warpriest 4, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (a black candle), F (a corpse slain no more than 1 day ago per caster level)",
                          range: "see text", area: "", targets: "one creature",
                          duration: "1 day/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "Drawing upon the spiritual link between a corpse and its killer, you reach out across space to brand the killer of the corpse you used as a focus for this spell, creating a physical manifestation of…",
                          desc: "Drawing upon the spiritual link between a corpse and its killer, you reach out across space to brand the killer of the corpse you used as a focus for this spell, creating a physical manifestation of the killer’s guilt. The killer’s right hand becomes stained indelibly red, and this stain can’t be removed (although it can be hidden by magical or mundane means, such as disguise self or by wearing gloves). If the killer is not humanoid, or doesn’t have a right hand for some other reason, the spell instead causes a red stain in the shape of a hand to appear elsewhere on the creature’s body (typically on the chest). This spell affects only the creature that directly killed the targeted corpse. Other individuals that contributed to the target’s death are unaffected, and if the victim did not die from violence or died indirectly (for instance, if the creature died from suffocating after someone trapped it in a room filling with water), then the spell has no effect. The killer can attempt a Will save to resist the spell’s effects. Distance is not a factor, but the killer must be on the same plane as you at the time you cast the spell, or the spell fails. Once a corpse has acted as the focus for red hand of the killer, it can never act as the focus for another casting of",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Resplendent Mansion", school: "Conjuration (Creation)", levels: "arcanist 9, psychic 9, sorcerer 9, wizard 9",
                          castingTime: "1 minute", components: "V, S, F (a miniature cornerstone carved from precious gemstones worth 500 gp)",
                          range: "long (400 ft. + 40 ft./level)", area: "opulent mansion, up to 300 feet on a side and one story tall/4 levels", targets: "",
                          duration: "1 day/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell creates a towering mansion. While casting the spell, you hold an image of the mansion and its desired appearance in your mind.",
                          desc: "This spell creates a towering mansion. While casting the spell, you hold an image of the mansion and its desired appearance in your mind. The mansion can contain as many or as few rooms as you desire, and is decorated to match your image. You can imagine a purpose for each room of the mansion, and the proper accouterments appear within. Any furniture or other mundane fixtures function normally for anyone inside the mansion, but cease to exist if taken beyond its walls. No fixture created with this spell can create magical effects, but magical devices brought into the mansion function normally. A resplendent mansion contains the same types of foodstuffs and servants as a",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Rumormonger", school: "Divination", levels: "bard 2, inquisitor 2, medium 1, mesmerist 2, psychic 3, skald 2",
                          castingTime: "1 standard action", components: "V",
                          range: "long (400 ft. + 40 ft./level)", area: "1 rumor", targets: "",
                          duration: "1 day/level (D)",
                          savingThrow: "Will negates (see text);", sr: true,
                          summary: "You utter a brief anecdote or bit of news as the verbal component of this spell and track its progress through a social gathering or other crowd.",
                          desc: "You utter a brief anecdote or bit of news as the verbal component of this spell and track its progress through a social gathering or other crowd. When someone who heard the rumor directly from you and repeated the rumor is within your range, they glow silver to your sight, though this glow doesn’t occur if the creature is in disguise (unless it was in the same disguise at the time of casting). You can choose to follow the rumor by selecting any such creature in range, at which point the creatures who heard the rumor from you no longer glow silver, and now the creatures who heard the rumor from your chosen creature glow silver instead. You can follow the rumor’s path until you reach a creature that heard the rumor but didn’t repeat it (or repeated it incorrectly). The glow identifies only creatures who heard the same information you conveyed. Minor cosmetic changes in the rumor don’t interrupt the chain, but when the rumor no longer resembles the information you imparted, the trail stops and the spell ends. You can instead use this spell to trace a rumor back to its source once you hear it. In this case, you repeat the rumor as you heard it for the spell’s verbal component. The person who told you the rumor can attempt a Will save to end the effect. Failure indicates the silver glow leads to the individual that told her. This process continues each time you locate the next individual spreading the same information. Each individual attempts the save until one of them succeeds (in which case the spell ends and you can’t attempt to trace this particular rumor again) or you trace the rumor to its original source. As with the other application of the spell, tracing a rumor back fails to cause a creature to glow if it is in disguise, unless it was in the same disguise at the time of speaking the rumor.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Scripted Hallucination", school: "Illusion (Phantasm)", levels: "arcanist 1, bard 1, magus 1, medium 1, mesmerist 1, occultist 1, psychic 1, skald 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "S",
                          range: "long (400 ft. + 40 ft./level)", area: "", targets: "one creature/level, no two of which can be more than 30 ft. apart",
                          duration: "concentration",
                          savingThrow: "Will disbelief;", sr: true,
                          summary: "This spell functions as audiovisual hallucination , except that the phantasm includes visual, auditory, olfactory, tactile, and thermal components, and the phantasm follows a complex script.",
                          desc: "This spell functions as audiovisual hallucination , except that the phantasm includes visual, auditory, olfactory, tactile, and thermal components, and the phantasm follows a complex script. The phantasm follows that script without your concentration and can react to stimuli the targets perceive.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Shamefully Overdressed", school: "Enchantment (Compulsion)", levels: "bard 2, inquisitor 2, mesmerist 2, psychic 3, skald 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "creature touched",
                          duration: "1 round/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "The target sees its own attire as hopelessly out of fashion, ostentatious, and embarrassing, and is filled with a compulsion to strip off all clothing.",
                          desc: "The target sees its own attire as hopelessly out of fashion, ostentatious, and embarrassing, and is filled with a compulsion to strip off all clothing. Each round, the target must spend a move action to remove a worn item that can be removed with a move action, dropping the item once it is removed. The target doesn’t distinguish between magical and nonmagical items when removing them. Each round it removes an item as determined randomly from the following slots: belt, body, chest, eyes, feet, hands, head, headband, shoulders, or wrists. When determining randomly, don’t include any slots if the character has no item of that sort, and don’t include items that take more than one move action to remove. Though creatures can’t have more than one magic item in any of those slots, they can have multiple mundane items that fit each slot, in which case randomly decide which one they remove. If a target is wearing clothing that doesn’t fit in any of those slots, such as breeches or a quiver, add it to the list of possibilities at the GM’s discretion. The target regards the discarded items with revulsion, and if forced to touch such an item (such as with a melee or ranged touch attack using the item as an improvised weapon), the target becomes sickened for 1d3 rounds. Other than the move action to remove items, the character can take whatever actions it chooses.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Shifted Steps", school: "Illusion (Glamer)", levels: "alchemist 2, antipaladin 2, arcanist 2, bard 2, inquisitor 2, investigator 2, magus 2, medium 2, mesmerist 2, occultist 2, psychic 2, skald 2, sorcerer 2, spiritualist 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature or object up to 10 feet across",
                          duration: "concentration + 1 round/level (D)",
                          savingThrow: "Will negates (harmless) and Will disbelief (if interacted with); see text;", sr: false,
                          summary: "You cause the target to sound as if it is elsewhere within range, including its movements, speech, and all other sounds.",
                          desc: "You cause the target to sound as if it is elsewhere within range, including its movements, speech, and all other sounds. As long as you concentrate, you can cause the sound’s apparent location to change as you see fit within range from your current location. Once you cease concentrating, the sound moves so that it remains the same relative distance and direction from the target. This spell can fool any sound-based blindsense or blindsight (including echolocation), but it can’t fool other forms of detection such as other forms of blindsense or blindsight, lifesense, normal vision, and tremorsense. The target receives a saving throw against the effect if it doesn’t wish for you to shift its sound, and any creature that interacts with the illusion receives a Will save to disbelieve the glamer.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Swallow Poison", school: "Transmutation", levels: "alchemist 5, druid 5, hunter 5, investigator 5, shaman 5, witch 5",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "1 hour/level or until discharged",
                          savingThrow: "None", sr: false,
                          summary: "A special gland grows on the inside of your throat, which absorbs any poisons that you ingest, and can be used to expel them in a toxic spray.",
                          desc: "A special gland grows on the inside of your throat, which absorbs any poisons that you ingest, and can be used to expel them in a toxic spray. Any time you consume ingested poison during the spell’s duration, you can roll a caster level check against the poison’s save DC in order to harmlessly absorb the poison, ignoring its effects. The spell can absorb up to 1 dose of poison per 3 caster levels, after which the gland is unable to process any more poison, and any further doses of ingested poison affect you normally. You store each dose of absorbed poison within the gland, and you can end the spell to spray one dose of absorbed poison out of your mouth as a standard action. This sprays the poison in a 15-foot cone. Each creature in the area must succeed at a Reflex save (at swallow poison’s DC) or be exposed to the sprayed poison, which is treated as though it were a contact poison for this purpose. Everything about the poison other than its type, including its frequency, effect, and saving throw DC, are unaffected by this spell. Any other doses of poison you had absorbed instantly become inert when you end the spell. If the spell’s duration ends without you spraying a poison, all poisons you had absorbed become inert.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("They Know", school: "Enchantment (Compulsion)", levels: "bard 3, inquisitor 3, mesmerist 3, paladin 3, psychic 4, shaman 4, skald 3, witch 4",
                          castingTime: "1 standard action", components: "V, S, F/DF, M (a drop of black ink)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one intelligent creature",
                          duration: "1 minute/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You instill a target with the fear that the nearest other intelligent creature knows her darkest secret.",
                          desc: "You instill a target with the fear that the nearest other intelligent creature knows her darkest secret. If she is in the midst of another situation as vital as protecting her darkest secret, such as combat, this doesn’t cause her to cease participating, but otherwise, she becomes compelled to use her abilities and skills to determine exactly how much the other individual knows. Even if she isn’t around other creatures or otherwise avoids confronting her paranoia for a time, the nagging fear causes the target to become shaken for the duration of the spell (though this doesn’t stack with other fear effects to make the target frightened or panicked). The subject’s paranoia increases over time, forcing her to take additional steps to protect herself from the other creature. Depending on her personality (or subject to the GM’s discretion), she might confess, publicly demand to know what the other creature knows, attack the other creature to silence it, or offer the other creature a bribe. The spell fails if the target truly feels she has nothing to hide.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Trace Teleport", school: "Divination", levels: "arcanist 5, psychic 4, sorcerer 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, F (a magnifying lens)",
                          range: "40 feet", area: "40-ft.-radius emanation centered on you", targets: "",
                          duration: "1 minute/level",
                          savingThrow: "none;", sr: false,
                          summary: "You immediately become aware of any teleportation effects that begin or end within the spell’s area. The spell’s area radiates from you and moves as you move.",
                          desc: "You immediately become aware of any teleportation effects that begin or end within the spell’s area. The spell’s area radiates from you and moves as you move. You know the exact origin point of any teleportation effect that originates within the spell’s area, and the exact end point of any teleportation effect that terminates within the spell’s area. Further, you can detect the lingering traces of any teleportation effect that occurred up to 1 hour previously, in the same fashion. You intuitively know, to the nearest minute, when the teleportation effect occurred. Whenever you detect the origin point or termination point of any teleportation effect with this spell, you can study that origin point or termination point for 1 round. If you do, you can attempt a caster level check (DC = 11 + the teleportation effect’s caster level), taking a –5 penalty if the effect occurred more than 1 minute ago. If you succeed, you gain a glimpse of the teleportation effect’s termination point (if you detected an origin point) or origin point (if you detected a termination point). This glimpse lasts long enough for you to get a brief look at the area, but not long enough to scrutinize it in detail. It doesn’t come with any geographic knowledge of the location, so it is not sufficient for teleport or similar magic. You can’t retry the caster level check, even if you cast",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Trade Items", school: "Conjuration (Teleportation)", levels: "arcanist 4, bard 3, mesmerist 3, skald 3, sorcerer 4, summoner 3, summoner (unchained) 3, wizard 4",
                          castingTime: "1 standard action", components: "V, S, F (any held object weighing no more than 5 lbs./level)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one object weighing no more than 5 lbs./level",
                          duration: "instantaneous",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "You cause the target object and the object used as a focus for the spell to immediately swap places.",
                          desc: "You cause the target object and the object used as a focus for the spell to immediately swap places. The target object appears in your hand (or falls to the ground in your square if you are unable to hold it). The stronger the connection between the two objects, the more difficult the spell is to resist, as indicated on the table below. The modifiers are cumulative. Similarity DC The two objects are the same type of object (such as “keys,” “swords,” “scrolls”)",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Triggered Hallucination", school: "Illusion (Phantasm)", levels: "arcanist 1, bard 1, magus 1, medium 1, mesmerist 1, occultist 1, psychic 1, skald 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "S",
                          range: "long (400 ft. + 40 ft./level)", area: "", targets: "one creature/level, no two of which can be more than 30 ft. apart",
                          duration: "concentration",
                          savingThrow: "Will disbelief;", sr: true,
                          summary: "This spell functions as audiovisual hallucination , except that this spell’s phantasm has no apparent effect until a specific condition occurs.",
                          desc: "This spell functions as audiovisual hallucination , except that this spell’s phantasm has no apparent effect until a specific condition occurs. You must overcome the target’s spell resistance to plant the",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Underbrush Decoy", school: "Transmutation", levels: "druid 1, hunter 1, ranger 1, shaman 1",
                          castingTime: "1 swift action", components: "S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one non-creature plant of size Tiny, Small, or Medium",
                          duration: "1 round",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "You cause a plant to rustle noisily, distracting nearby creatures.",
                          desc: "You cause a plant to rustle noisily, distracting nearby creatures. You can attempt a Bluff check to create a distraction to hide, using your caster level + your Wisdom modifier in place of your total Bluff skill bonus and applying the result to all creatures within 30 feet. You count the target as distracted, as do any creatures that knew about your distraction in advance. Creatures might not be distracted if they detect you casting the spell or otherwise anticipate your subterfuge.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Undetectable Trap", school: "Illusion (Glamer)", levels: "antipaladin 2, hunter 2, occultist 3, ranger 2",
                          castingTime: "10 minutes (see text)", components: "V, S, M (a square of black silk worth 50 gp)",
                          range: "touch", area: "", targets: "trap touched",
                          duration: "1 day/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You shroud a single trap with a powerful illusion to make it more difficult to locate. Spells like detect magic can’t locate any magic aura from either the target trap or from",
                          desc: "You shroud a single trap with a powerful illusion to make it more difficult to locate. Spells like detect magic can’t locate any magic aura from either the target trap or from",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Unerring Tracker", school: "Divination", levels: "alchemist 5, druid 6, hunter 4, investigator 5, occultist 4, ranger 4",
                          castingTime: "10 minutes", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "10 minutes/level",
                          savingThrow: "none;", sr: false,
                          summary: "During this spell’s duration, you can touch the sign of a creature’s passage that you have identified using the Survival skill to make the other steps in the creature’s path perfectly clear to you,…",
                          desc: "During this spell’s duration, you can touch the sign of a creature’s passage that you have identified using the Survival skill to make the other steps in the creature’s path perfectly clear to you, no matter how minute. This trail can’t be more than 24 hours old. You can follow the trail at any speed, provided you have line of sight to the trail. You can distinguish the trail of the particular creature followed even if it joins and splits with other trails. Once you have selected a trail to follow using this spell, it can’t be changed. The spell is unable to follow teleportation or interplanar travel for any distance. The trail appears to end where the creature teleported (though a successful Spellcraft check allows you to determine the method of teleportation, if a spell was used). Unerring tracker can’t track creatures under the effect of a",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Urban Step", school: "Conjuration (Teleportation)", levels: "arcanist 3, bard 2, magus 3, occultist 3, skald 2, sorcerer 3, summoner 3, summoner (unchained) 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (scrap of cobweb)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "two doors or other portals in range",
                          duration: "1 round",
                          savingThrow: "None", sr: false,
                          summary: "You set up a magical connection between two doors (or other physical portals, such as windows) that both must be within range, line of sight, and line of effect.",
                          desc: "You set up a magical connection between two doors (or other physical portals, such as windows) that both must be within range, line of sight, and line of effect. During the spell’s duration, you can move through one of the two portals. When you do, you teleport to the other portal, emerging in either direction. Both portals must be open and unobstructed when you cast the spell and enter the first portal, and they both must be large enough for you to fit through, otherwise the spell ends and the teleportation fails. You can bring along objects as long as their combined weight doesn’t exceed your maximum load. You can’t bring other creatures with you, and other creatures that go through the portals don’t teleport. Once you step through, the spell ends and you can’t take any other actions until your next turn.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Vicarious View", school: "Divination (Scrying)", levels: "arcanist 4, bard 4, medium 3, mesmerist 4, occultist 4, psychic 4, shaman 4, skald 4, sorcerer 4, spiritualist 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "magical sensor", targets: "",
                          duration: "1 minute/level (D)",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "You plant a scrying sensor on a touched creature, object, or point in space, allowing you to see and hear the creature, object, or point and its surroundings (approximately 10 feet in all…",
                          desc: "You plant a scrying sensor on a touched creature, object, or point in space, allowing you to see and hear the creature, object, or point and its surroundings (approximately 10 feet in all directions). If the creature or object on moves, the sensor moves with it. Unlike other scrying spells, vicarious view doesn’t allow magically or supernaturally enhanced senses to work through it.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Voluminous Vocabulary", school: "Divination", levels: "alchemist 3, arcanist 3, bard 2, cleric 3, inquisitor 2, investigator 3, medium 2, mesmerist 2, occultist 2, oracle 3, psychic 3, shaman 4, skald 2, sorcerer 3, spiritualist 3, warpriest 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a quill)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "8 hours (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You choose any language (except for secret languages, such as Druidic). The target gains the ability to speak, understand, read, and write that language.",
                          desc: "You choose any language (except for secret languages, such as Druidic). The target gains the ability to speak, understand, read, and write that language. When you cast this spell, you can attempt a DC 15 Linguistics check. If you succeed, choose an additional language, plus one more language for every 10 by which your check result exceeded the DC. Written material can be read at the rate of one page (250 words) per minute. As with comprehend languages , this spell doesn’t impart insight into material the target read, just the literal meaning, and it doesn’t allow the target to read magical writing or decipher codes. If the target lacks the mental capacity to grasp a language, it still gains enough knowledge to respond to and carry out even extremely complex commands or suggestions coached in the language (whether written or spoken). However, since this spell endows the target merely with a temporarily enhanced vocabulary, the person offering instructions to nonsentient creatures must take care to avoid metaphors or any other ambiguity.",
                          source: "Ultimate Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Wizened Appearance", school: "Transmutation (Polymorph)", levels: "alchemist 1, arcanist 1, bard 1, investigator 1, medium 1, mesmerist 1, occultist 1, psychic 1, skald 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 hour/level",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "You polymorph your target to look like an older version of itself. You select how much older (for example, “10 years older” or “as an adult”).",
                          desc: "You polymorph your target to look like an older version of itself. You select how much older (for example, “10 years older” or “as an adult”). You can’t otherwise change the target’s appearance other than those details directly associated with aging (for example, a target’s hair might turn gray or the target might develop liver spots). This spell allows children of creatures that are Medium or smaller when fully grown to grow one size category to the normal, adult size of that type of creature, but otherwise the selected age increase doesn’t alter the creature’s size. A change in size doesn’t alter the target’s ability scores. This spell doesn’t affect or cause any age-based modifications to ability scores or other age-related effects like dragon age categories or natural metamorphoses. Wizened appearance and",
                          source: "Ultimate Intrigue", isPremium: true),

                    // // MARK: - Ultimate Intrigue, Second Darkness Player's Guide, Black Markets
        )
        try await db.insertSpell(
        .make("Codespeak", school: "Transmutation", levels: "arcanist 2, bard 2, medium 2, mesmerist 2, occultist 2, psychic 2, skald 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard actino", components: "V, S, M (a complex rune inscribed on a slip of paper that is then placed under your tongue)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "you plus one willing creature per 2 levels, no two of which can be more than 30 ft. apart",
                          duration: "10 min./level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "Upon casting this spell, all recipients gain the ability to speak a new language.",
                          desc: "Upon casting this spell, all recipients gain the ability to speak a new language. This language sounds like random, babbling syllables to anyone not under the influence of the spell, but the targets understand each other perfectly. Anyone using codespeak can read and write in this new language as well. Once the spell expires, however, any coded writing suddenly appears as gibberish. If the exact same group of individuals become the targets of a",
                          source: "Ultimate Intrigue, Second Darkness Player's Guide, Black Markets", isPremium: true),

                    // // MARK: - Ultimate Magic
        )
        try await db.insertSpell(
        .make("Acidic Spray", school: "Conjuration (Creation)", levels: "arcanist 5, magus 5, sorcerer 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (a vial of acid worth 10 gp)",
                          range: "60 ft.", area: "60-ft. line", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Reflex partial (see text);", sr: true,
                          summary: "A spray of acid erupts from your outstretched hand, dealing 1d6 points of acid damage per caster level (maximum 15d6) to each creature within its area (Reflex half).",
                          desc: "A spray of acid erupts from your outstretched hand, dealing 1d6 points of acid damage per caster level (maximum 15d6) to each creature within its area (Reflex half). This acid continues to burn for 1 round, dealing 1d6 points of acid damage per two caster levels (maximum 7d6) to any creature that failed its saving throw against the spell (a second Reflex save on the creature's turn negates this additional damage).",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Acute Senses", school: "Transmutation", levels: "alchemist 2, bard 2, hunter 2, inquisitor 2, investigator 2, psychic 2, ranger 2, skald 2",
                          castingTime: "1 standard action", components: "V, S, M (a glass lens)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The target gains a +10 enhancement bonus on Perception checks. The bonus increases to +20 at caster level 8th, and +30 (the maximum) at caster level 16th.",
                          desc: "The target gains a +10 enhancement bonus on Perception checks. The bonus increases to +20 at caster level 8th, and +30 (the maximum) at caster level 16th.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Age Resistance", school: "Transmutation", levels: "alchemist 3, arcanist 4, druid 4, hunter 4, investigator 3, occultist 3, psychic 4, redmantisassassin 4, sorcerer 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "24 hours",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as lesser age resistance , except you ignore the Strength, Dexterity, and Constitution penalties gained at middle and old age. Age Resistance, Greater",
                          desc: "This spell functions as lesser age resistance , except you ignore the Strength, Dexterity, and Constitution penalties gained at middle and old age. Age Resistance, Greater",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Age Resistance, Greater", school: "Transmutation", levels: "alchemist 3, arcanist 4, druid 4, hunter 4, investigator 3, occultist 3, psychic 4, redmantisassassin 4, sorcerer 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "24 hours",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as lesser age resistance , except you ignore all Strength, Dexterity, and Constitution penalties gained from middle age, old age, and venerable age.",
                          desc: "This spell functions as lesser age resistance , except you ignore all Strength, Dexterity, and Constitution penalties gained from middle age, old age, and venerable age.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Age Resistance, Lesser", school: "Transmutation", levels: "alchemist 3, arcanist 4, druid 4, hunter 4, investigator 3, occultist 3, psychic 4, redmantisassassin 4, sorcerer 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "24 hours",
                          savingThrow: "None", sr: false,
                          summary: "You ignore the physical detriments of being middle-aged. This spell does not cause you to look younger, nor does it prevent you from dying of old age, but as long as the spell is in effect, you…",
                          desc: "You ignore the physical detriments of being middle-aged. This spell does not cause you to look younger, nor does it prevent you from dying of old age, but as long as the spell is in effect, you ignore the –1 penalties to Strength, Dexterity, and Constitution that accrue once you become middle-aged. You retain the age-related bonuses to Intelligence, Wisdom, and Charisma while under the effects of this spell. Additional penalties that you accrue upon becoming old or venerable apply in full. Age Resistance",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Allegro", school: "Transmutation", levels: "bard 2, skald 2",
                          castingTime: "1 standard action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level (D) or until discharged",
                          savingThrow: "None", sr: false,
                          summary: "This spell allows you to act more swiftly while maintaining a bardic performance. You must already be maintaining a bardic performance before you can cast allegro . You gain the benefits of the spell",
                          desc: "This spell allows you to act more swiftly while maintaining a bardic performance. You must already be maintaining a bardic performance before you can cast allegro . You gain the benefits of the spell",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Anthropomorphic Animal", school: "Transmutation (Polymorph)", levels: "arcanist 3, druid 3, hunter 3, redmantisassassin 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a humanoid thumb bone)",
                          range: "touch", area: "", targets: "animal touched",
                          duration: "1 hour/level",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "You transform the touched animal into a bipedal hybrid of its original form with a humanoid form, similar to how a lycanthrope’s hybrid form is a mix of a humanoid and animal form.",
                          desc: "You transform the touched animal into a bipedal hybrid of its original form with a humanoid form, similar to how a lycanthrope’s hybrid form is a mix of a humanoid and animal form. The animal’s size, type, and ability scores do not change. It loses its natural attacks except for bite (if it had one as an animal), all types of movement other than its land speed, and special attacks that rely on its natural attacks. One pair of its limbs is able to manipulate objects and weapons as well as human hands do; limbless animals like snakes temporarily grow a pair of arms. The creature’s Intelligence increases to 3, and it gains the ability to speak one language you know. It is not considered proficient in any manufactured weapons. It can attack with unarmed strikes, dealing unarmed strike damage for a creature of its size (unless it has a bite attack, which is a natural attack). Anthropomorphic animal can be made permanent with a",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Anticipate Peril", school: "Divination", levels: "alchemist 1, arcanist 1, bard 1, hunter 1, investigator 1, medium 1, mesmerist 1, occultist 1, psychic 1, ranger 1, skald 1, sorcerer 1, spiritualist 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 minute/level or until activated",
                          savingThrow: "Will negates;", sr: true,
                          summary: "A creature affected by anticipate peril gains a preternatural sense of danger.",
                          desc: "A creature affected by anticipate peril gains a preternatural sense of danger. The first time during this spell’s duration that the target has to make an initiative check, the creature adds an insight bonus on that initiative check equal to the spell’s caster level (maximum +5). Once this bonus applies, the effects of the spell end.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Arboreal Hammer", school: "Transmutation", levels: "druid 4, hunter 4",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one Huge or larger tree",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell animates a tree’s branch and directs it against your foes. At caster level 10th or lower, you can target a Huge tree.",
                          desc: "This spell animates a tree’s branch and directs it against your foes. At caster level 10th or lower, you can target a Huge tree. At caster level 11th–15th, you can target a Gargantuan tree, and at caster level 16th or higher you can target a Colossal tree. The animated branch makes slam attacks with a Strength score equal to 10 + your caster level. The branch strikes once per round with an attack bonus equal to your caster level + the branch’s Strength modifier, adjusted by the appropriate size modifier (–2 for Huge, –4 for Gargantuan, –8 for Colossal). A Huge tree’s slam deals 2d6 points of damage, a Gargantuan tree’s slam deals 3d6 points of damage, and a Colossal tree’s slam deals 4d6 points of damage; the tree adds 1-1/2 times its Strength modifier to this damage. A Huge tree has reach 15 feet, a Gargantuan has reach 20 feet, and a Colossal has reach 30 feet. The tree attacks the creature you designate when you cast the spell, and is unable to move. You can direct the tree against a new target as a move action. The tree does not gain a bonus for flanking, nor can it help another combatant flank. It cannot attack a foe you cannot see.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Arcana Theft", school: "Abjuration", levels: "magus 4, psychic 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: true,
                          summary: "This spell functions as a targeted dispel magic spell, except it only affects creatures and it requires a melee touch attack.",
                          desc: "This spell functions as a targeted dispel magic spell, except it only affects creatures and it requires a melee touch attack. If the melee touch attack is successful and the spell successfully dispels one spell affecting the target, that spell is instead transferred to you, treating you as the original target. You do not receive a new saving throw or spell resistance check against this spell and must accept its affects even if they are not beneficial. This does not alter the spell’s duration; for example, if the spell only has 4 rounds of duration remaining when it is stolen, it only affects you for 4 rounds. If the spell or effect has a duration of permanent, its duration continues for 1 hour per caster level of the original caster, after which it ends. The stolen spell does not revert to the original target.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Archon's Aura", school: "Evocation", levels: "cleric 3, oracle 3, paladin 3, warpriest 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "20 ft.", area: "20-ft. radius centered on you", targets: "",
                          duration: "1 minute/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You gain a powerful aura, similar to an archon’s aura of menace. Any hostile creature within a 20-foot radius of you must make a Will save to resist the effects of this aura.",
                          desc: "You gain a powerful aura, similar to an archon’s aura of menace. Any hostile creature within a 20-foot radius of you must make a Will save to resist the effects of this aura. If the creature fails, it takes a –2 penalty on attack rolls and saving throws and to Armor Class for the duration of this spell, or until it successfully hits you with an attack. A creature that has resisted or broken the effect cannot be affected again by this particular casting of archon’s aura .",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Arrow of Law", school: "Evocation", levels: "cleric 2, oracle 2, paladin 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S, DF (a holy symbol)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "arrow-shaped projectile of lawful energy", targets: "",
                          duration: "instantaneous (1 round); see text",
                          savingThrow: "Will partial (see text);", sr: true,
                          summary: "You fire a shimmering arrow of pure order from your holy symbol at any one target in range as a ranged touch attack.",
                          desc: "You fire a shimmering arrow of pure order from your holy symbol at any one target in range as a ranged touch attack. A chaotic creature struck by an arrow of law takes 1d8 points of damage per two caster levels (maximum 5d8). A chaotic outsider instead takes 1d6 points of damage per caster level (maximum 10d6) and is dazed for 1 round. A successful Will save reduces the damage to half and negates the daze effect. This spell deals only half damage to creatures that are neither chaotic nor lawful, and they are not dazed. The arrow has no effect on lawful creatures.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ash Storm", school: "Conjuration (Creation)", levels: "arcanist 3, druid 3, hunter 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M/DF (a pinch of ash)",
                          range: "long (400 ft. + 40 ft./level)", area: "cylinder (40-ft. radius, 20 ft. high)", targets: "",
                          duration: "1 round/level",
                          savingThrow: "none;", sr: false,
                          summary: "Driving ash blocks all sight (even darkvision) within the spell’s area of effect, and falling cinders cause the ground in the area to become difficult terrain.",
                          desc: "Driving ash blocks all sight (even darkvision) within the spell’s area of effect, and falling cinders cause the ground in the area to become difficult terrain.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Atavism", school: "Transmutation", levels: "druid 4, hunter 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one animal",
                          duration: "1 minute/level",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "By bringing forth the primeval ancestry of the target animal, you awaken a savage engine of destruction. The animal immediately gains the advanced creature simple template.",
                          desc: "By bringing forth the primeval ancestry of the target animal, you awaken a savage engine of destruction. The animal immediately gains the advanced creature simple template. It gains a +2 bonus on all rolls, including damage rolls and special ability DCs, a +4 bonus to AC and CMD, and +2 hit points per HD. The animal’s primal instincts take hold for the duration of this spell—if the animal knows tricks granted by the Handle Animal skill, it loses access to all of those tricks save for “attack.” This spell has no effect on animals that already have the advanced creature template. Atavism, Mass",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Atavism, Mass", school: "Transmutation", levels: "druid 4, hunter 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one animal",
                          duration: "1 minute/level",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "This spell functions as atavism , except that it affects multiple creatures.",
                          desc: "This spell functions as atavism , except that it affects multiple creatures.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Aura of Doom", school: "Necromancy", levels: "cleric 4, oracle 4, psychic 4, spiritualist 4, warpriest 4",
                          castingTime: "1 standard action", components: "V, S, M/DF (powdered bone)",
                          range: "personal", area: "20-ft.-radius emanation centered on you", targets: "",
                          duration: "10 minute/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You emanate an almost palpable aura of horror. All non-allies within this spell’s area, or that later enter the area, must make a Will save to avoid becoming shaken.",
                          desc: "You emanate an almost palpable aura of horror. All non-allies within this spell’s area, or that later enter the area, must make a Will save to avoid becoming shaken. A successful save suppresses the effect. Creatures that leave the area and come back must save again to avoid being affected by the effect.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Badger's Ferocity", school: "Transmutation", levels: "arcanist 2, cleric 3, druid 3, hunter 2, occultist 2, oracle 3, ranger 2, redmantisassassin 2, sorcerer 2, warpriest 3, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one weapon/3 levels",
                          duration: "concentration",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This functions like keen edge , except it affects multiple weapons and requires your concentration. You select the weapons to be affected, and can only affect one weapon per creature.",
                          desc: "This functions like keen edge , except it affects multiple weapons and requires your concentration. You select the weapons to be affected, and can only affect one weapon per creature. If a creature's weapon exceeds the spell's range, the spell ends for that weapon.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Battlemind Link", school: "Divination", levels: "arcanist 6, inquisitor 4, medium 4, mesmerist 4, occultist 5, psychic 6, sorcerer 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal and close (25 ft. + 5 ft./2 levels)", area: "", targets: "you and 1 ally",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You fuse your thoughts with an ally’s, allowing the two of you to fight in tandem, perfectly coordinated.",
                          desc: "You fuse your thoughts with an ally’s, allowing the two of you to fight in tandem, perfectly coordinated. You and the ally each roll initiative in combat and use the higher die result before adding modifiers. This has three effects. Melee : If you both make melee attacks against the same creature, you both make attack rolls and both use the higher of the two dice for your attack rolls (plus bonuses).",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Bestow Grace of the Champion", school: "Transmutation", levels: "cleric 7, oracle 7, paladin 4",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "lawful good creature touched",
                          duration: "1 round/level (see text)",
                          savingThrow: "yes (harmless);", sr: true,
                          summary: "You channel the power of good and law into the target, temporarily giving it powers similar to those of a paladin.",
                          desc: "You channel the power of good and law into the target, temporarily giving it powers similar to those of a paladin. The target gains the ability to use detect evil at will as a spell-like ability, immunity to disease (suppressing any diseases currently affecting it), and immunity to fear (ending any fear effects currently affecting it); can lay on hands (on itself only) once as a paladin of 1/2 your caster level; and can smite evil once as a paladin of 1/2 your caster level. It adds its Charisma bonus to all its saving throws. It can use spell completion, spell trigger, or other magic items that require the ability to cast spells as a paladin. Any abilities not used by the time the spell expires are lost. This spell has no effect if cast on a paladin.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Blade of Bright Victory", school: "Transmutation", levels: "paladin 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "your paladin bonded weapon",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "You strengthen the bond between your divine bond weapon and its celestial spirit. The weapon gains the ghost touch property.",
                          desc: "You strengthen the bond between your divine bond weapon and its celestial spirit. The weapon gains the ghost touch property. You may change your weapon’s damage type (bludgeoning, piercing, slashing) as a swift action. You gain a sacred bonus to your CMD against disarm and sunder attacks directed at your bonded weapon; this bonus is equal to half your caster level.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Blade of Dark Triumph", school: "Transmutation", levels: "antipaladin 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "your fiendish boon weapon",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "You strengthen the bond between your fiendish boon weapon and its unholy spirit. The weapon gains the ghost touch property.",
                          desc: "You strengthen the bond between your fiendish boon weapon and its unholy spirit. The weapon gains the ghost touch property. You may change your weapon’s damage type (bludgeoning, piercing, slashing) as a swift action. You gain a profane bonus to your CMD against disarm and sunder attacks directed at your boon weapon; this bonus is equal to half your caster level.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Blessing of the Mole", school: "Transmutation", levels: "cleric 3, hunter 3, inquisitor 3, oracle 3, paladin 3, ranger 3, warpriest 3",
                          castingTime: "1 round", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "1 creature/level", targets: "",
                          duration: "1 minute/level",
                          savingThrow: "none (harmless);", sr: true,
                          summary: "The targets gain darkvision 30 feet and a +2 competence bonus on Stealth checks.",
                          desc: "The targets gain darkvision 30 feet and a +2 competence bonus on Stealth checks.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Blood Crow Strike", school: "Evocation", levels: "cleric 4, oracle 4, warpriest 4",
                          castingTime: "1 round", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: true,
                          summary: "Your unarmed strikes release blasts of energy in the form of bolts of fire or glowing red crows, which fly instantaneously to strike your target.",
                          desc: "Your unarmed strikes release blasts of energy in the form of bolts of fire or glowing red crows, which fly instantaneously to strike your target. You can make unarmed strike or flurry of blows attacks against the target as if it were in your threatened area; each successful attack deals damage as if you had hit it with your unarmed strike, except half the damage is fire and half is negative energy (this negative energy does not heal undead). For example, if you are a 14th-level monk, you can use a flurry of blows to attack five times, creating one energy crow for each successful attack against the target, and dealing 2d6 points of damage (plus appropriate unarmed strike modifiers) with each crow.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Blood Mist", school: "Conjuration (Creation)", levels: "druid 8, shaman 8",
                          castingTime: "1 standard action", components: "V, S, M (a pinch of dried red algae)",
                          range: "medium (100 ft. + 10 ft./level)", area: "60-ft. radius", targets: "",
                          duration: "1 minute/level",
                          savingThrow: "Fortitude negates (see text);", sr: true,
                          summary: "This spell summons forth a misty cloud of rust-red toxic algae. Any creature within the mist is coated by it, turning the creature the same reddish color.",
                          desc: "This spell summons forth a misty cloud of rust-red toxic algae. Any creature within the mist is coated by it, turning the creature the same reddish color. All targets within the mist gain concealment. Any creature within the mist must save or take 1d4 points of Wisdom damage and become enraged, attacking any creatures it detects nearby (as the “attack nearest creature” result of the confused condition). An enraged creature remains so as long as the spell is in effect. A creature only needs to save once each time it is within the mist (though leaving and returning requires another save).",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Blood Transcription", school: "Divination", levels: "alchemist 2, arcanist 2, investigator 2, magus 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "one dead spellcaster",
                          duration: "24 hours",
                          savingThrow: "none;", sr: false,
                          summary: "By consuming 1 pint of blood from a spellcaster killed within the last 24 hours, you can attempt to learn a spell that spellcaster knew.",
                          desc: "By consuming 1 pint of blood from a spellcaster killed within the last 24 hours, you can attempt to learn a spell that spellcaster knew. Select one spell available to the dead spellcaster (this must be a spell on your spell list); you gain the knowledge of this spell for 24 hours. During this time, you may write it down (or teach it to your familiar, if you are a witch) using the normal rules for copying a spell from another source. Once you have learned it, you may prepare the spell normally.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Boiling Blood", school: "Transmutation", levels: "arcanist 2, bard 2, bloodrager 2, cleric 2, oracle 2, psychic 2, redmantisassassin 2, skald 2, sorcerer 2, warpriest 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature per three levels, no two of which may be more than 30 ft. apart",
                          duration: "concentration + 1 round/level (D)",
                          savingThrow: "Fortitude negates (see text);", sr: true,
                          summary: "The blood of the targeted creatures begins to boil. If a target fails its save, it takes 1 point of fire damage per round. This spell has no effect on creatures that don’t have blood.",
                          desc: "The blood of the targeted creatures begins to boil. If a target fails its save, it takes 1 point of fire damage per round. This spell has no effect on creatures that don’t have blood. If a target has the orc subtype, it doesn’t take fire damage and instead gains a +2 morale bonus to Strength.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Bungle", school: "Enchantment (Compulsion)", levels: "arcanist 1, mesmerist 1, psychic 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one humanoid",
                          duration: "concentration + 2 rounds or until triggered",
                          savingThrow: "Will negates;", sr: true,
                          summary: "The target takes a –20 penalty on its next attack roll or check that requires a d20 roll. The action must be one deliberately taken by the target on its turn.",
                          desc: "The target takes a –20 penalty on its next attack roll or check that requires a d20 roll. The action must be one deliberately taken by the target on its turn. Creatures with more than 10 HD are unaffected by this spell.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Burrow", school: "Transmutation", levels: "alchemist 3, arcanist 3, bloodrager 3, druid 3, hunter 3, investigator 3, ranger 3, redmantisassassin 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The subject can burrow at a speed of 15 feet (or 10 feet if it wears medium or heavy armor, or if it carries a medium or heavy load) through sand, loose soil, or gravel, or at a speed of 5 feet…",
                          desc: "The subject can burrow at a speed of 15 feet (or 10 feet if it wears medium or heavy armor, or if it carries a medium or heavy load) through sand, loose soil, or gravel, or at a speed of 5 feet through stone. Using burrow requires only as much concentration as walking, so the subject can attack or cast spells normally. The burrowing creature cannot charge or run. Loose material collapses behind the target 1 round after it leaves the area. This spell does not give the target the ability to breathe underground, so when passing through loose material, the creature must hold its breath and take only short trips, or else it may suffocate.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Burst of Nettles", school: "Conjuration", levels: "druid 3, hunter 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "10-ft.-radius burst", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Reflex half;", sr: true,
                          summary: "You release a burst of barbed, acid-filled nettles. Creatures caught in the burst take 3d6 points of damage plus 1d6 points of acid damage on the next round.",
                          desc: "You release a burst of barbed, acid-filled nettles. Creatures caught in the burst take 3d6 points of damage plus 1d6 points of acid damage on the next round. Those that save take half damage from the initial burst and no damage on the next round.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Cackling Skull", school: "Illusion (Glamer)", levels: "witch 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one skull",
                          duration: "permanent until discharged",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions as magic mouth , except rather than creating an illusory mouth on any surface, it affects a skull.",
                          desc: "This spell functions as magic mouth , except rather than creating an illusory mouth on any surface, it affects a skull. In addition, when the skull’s magic is triggered, it releases wild and unnerving cackles before speaking its message. All creatures that can hear the cackles must save or become shaken for 1d4 rounds.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Call Construct", school: "Conjuration (Teleportation)", levels: "arcanist 8, cleric 8, occultist 6, oracle 8, psychic 8, sorcerer 8, wizard 8",
                          castingTime: "10 minutes", components: "V, S, M (a sapphire worth 1,000 or 5,000 gp; see text)",
                          range: "touch", area: "", targets: "construct touched",
                          duration: "permanent until discharged",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as instant summons , except it can only summon a construct you control.",
                          desc: "This spell functions as instant summons , except it can only summon a construct you control. For constructs such as golems that are immune to magic, the value of the specially inscribed sapphire must be at least 5,000 gp. For other constructs, a 1,000 gp sapphire suffices. If the construct is no longer under your control or destroyed, the spell fails, but you know roughly where the construct or its remains are located.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Cape of Wasps", school: "Conjuration (Summoning)", levels: "druid 4, hunter 4, witch 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "You summon a wasp swarm, which fills your space (up to 5 feet by 5 feet) but does not attack you. The dense cloud of vermin gives you partial concealment against ranged attacks.",
                          desc: "You summon a wasp swarm, which fills your space (up to 5 feet by 5 feet) but does not attack you. The dense cloud of vermin gives you partial concealment against ranged attacks. Any creature that makes a successful melee attack against you takes 2d6 points of swarm damage and poison from the wasp swarm, but is not affected by the swarm’s distraction ability. As a free action on your turn, you may have the swarm cling to you tightly, giving you a fly speed of 20 feet (poor maneuverability); when using the swarm to fly, it does not provide concealment or harm creatures that strike you. You can return the swarm to its protective shape as a free action on your turn.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Caustic Eruption", school: "Conjuration (Creation)", levels: "arcanist 7, sorcerer 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S",
                          range: "30 ft", area: "30-ft.-radius burst", targets: "",
                          duration: "instantaneous and 2 rounds; see text",
                          savingThrow: "Reflex half (see text);", sr: false,
                          summary: "Acid erupts from your space in all directions, causing 1d6 points of damage per caster level (maximum 20d6) to creatures and unattended objects in the area.",
                          desc: "Acid erupts from your space in all directions, causing 1d6 points of damage per caster level (maximum 20d6) to creatures and unattended objects in the area. On your turn in each of the next 2 rounds, creatures and objects that failed their saves against the initial burst take an additional 1d6 points of acid damage per 2 caster levels (maximum 10d6) unless the acid is neutralized, dispelled, or washed away.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Chord of Shards", school: "Evocation", levels: "bard 1, skald 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "15 ft.", area: "cone-shaped burst", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Reflex negates;", sr: false,
                          summary: "During your bardic performance, you can strike a chord whose notes transform into a shower of razor sharp, crystalline shards.",
                          desc: "During your bardic performance, you can strike a chord whose notes transform into a shower of razor sharp, crystalline shards. The shards deal 2d6 points of piercing damage to all creatures caught in the area of effect.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Circle of Clarity", school: "Abjuration", levels: "arcanist 7, cleric 7, oracle 7, psychic 7, shaman 8, sorcerer 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S, F (a crystal lens worth 100 gp)",
                          range: "medium (100 ft. + 10 ft./level)", area: "20-ft.-radius emanation centered on a creature, object or point in space", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You create a magical emanation that interferes with all figments and glamers within it, giving creatures a +4 bonus on saving throws to recognize them as illusions.",
                          desc: "You create a magical emanation that interferes with all figments and glamers within it, giving creatures a +4 bonus on saving throws to recognize them as illusions. The emanation negates concealment less than total concealment within the area. Perception checks to notice creatures or objects within the area gain a bonus equal to half your caster level (maximum +10). The spell is stationary if cast on a point in space. It is mobile if centered on a creature or object, though creatures or attended objects can negate the spell with a saving throw or spell resistance.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Cold Ice Strike", school: "Evocation", levels: "arcanist 6, cleric 6, occultist 6, oracle 6, sorcerer 6, warpriest 6, wizard 6",
                          castingTime: "1 swift action", components: "V, S",
                          range: "30 ft.", area: "30-ft. line", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Reflex half;", sr: true,
                          summary: "You create a shredding flurry of ice slivers, which blast from your hand in a line. The line deals 1d6 points of cold damage per caster level (maximum 15d6).",
                          desc: "You create a shredding flurry of ice slivers, which blast from your hand in a line. The line deals 1d6 points of cold damage per caster level (maximum 15d6).",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Compassionate Ally", school: "Enchantment (Compulsion)", levels: "arcanist 2, bard 2, cleric 2, medium 2, mesmerist 2, oracle 2, psychic 2, skald 2, sorcerer 2, warpriest 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "At the sight of an injured ally, the target immediately disengages from its current course of action and rushes to provide aid.",
                          desc: "At the sight of an injured ally, the target immediately disengages from its current course of action and rushes to provide aid. If the target possesses curative spells or magic items, it utilizes them to help the injured ally. If not, the target provides aid by performing a Heal check. The target remains with the injured ally to assure her safety and refuses to leave the ally’s side until her wounds are fully treated or the spell ends, but can otherwise defend itself and make attacks.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Conjure Black Pudding", school: "Conjuration (Summoning)", levels: "arcanist 6, psychic 6, sorcerer 6, summoner 5, summoner (unchained) 5, wizard 6",
                          castingTime: "1 round", components: "V, S, M (a flask of acid worth 10 gp)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one summoned black pudding", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You summon a black pudding that immediately attacks creatures near it. You have no control over the creature, and it may attack you if there are no more obvious opponents.",
                          desc: "You summon a black pudding that immediately attacks creatures near it. You have no control over the creature, and it may attack you if there are no more obvious opponents. The black pudding is treated as a summoned creature and has the extraplanar subtype. The black pudding’s split ability works normally, but all puddings derived from the summoned one disappear when the spell ends.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Control Construct", school: "Transmutation", levels: "arcanist 7, occultist 6, sorcerer 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one construct",
                          duration: "concentration",
                          savingThrow: "none (see text);", sr: false,
                          summary: "You wrest the control of a construct from its master. For as long as you concentrate, you can control the construct as if you were its master.",
                          desc: "You wrest the control of a construct from its master. For as long as you concentrate, you can control the construct as if you were its master. You must make a Spellcraft check each round to maintain control. The DC of the Spellcraft check is (10 + the construct’s HD). If the construct’s creator or master is present and trying to control the construct, you both must make opposed Spellcraft checks each round to control the construct.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Control Summoned Creature", school: "Enchantment (Compulsion)", levels: "arcanist 4, bard 3, cleric 4, mesmerist 3, occultist 3, oracle 4, psychic 4, skald 3, sorcerer 4, summoner 3, summoner (unchained) 3, warpriest 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one summoned creature",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You seize control of a summoned creature by disrupting the bond between it and the caster who summoned it. If the creature fails its save, you may command it as if you had summoned it.",
                          desc: "You seize control of a summoned creature by disrupting the bond between it and the caster who summoned it. If the creature fails its save, you may command it as if you had summoned it. The original caster can attempt to regain control of the creature as a standard action by making an opposed Spellcraft check against you. When your spell ends, control reverts to the original summoner. If the summoning spell ends before this spell ends, the remaining duration of this spell is lost.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Corrosive Consumption", school: "Conjuration (Creation)", levels: "arcanist 5, magus 5, sorcerer 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "3 rounds",
                          savingThrow: "none;", sr: true,
                          summary: "With a touch, this spell causes a small, rapidly growing patch of corrosive acid to appear on the target. On the first round, the acid deals 1 point of acid damage per caster level (maximum 15).",
                          desc: "With a touch, this spell causes a small, rapidly growing patch of corrosive acid to appear on the target. On the first round, the acid deals 1 point of acid damage per caster level (maximum 15). On the second round, the acid patch grows and deals 1d4 points of acid damage per caster level (maximum 15d4). On the third and final round, the acid patch covers the entire creature and deals 1d6 points of acid damage per caster level (maximum 15d6). The target can spend a full-round action to scrape off the acid, or can wash it off with at least 1 gallon of liquid to halve the damage for that round and negate the remaining rounds of the spell.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Corrosive Touch", school: "Conjuration (Creation)", levels: "arcanist 1, bloodrager 1, magus 1, sorcerer 1, summoner 1, summoner (unchained) 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature or object touched",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: true,
                          summary: "Your successful melee touch attack deals 1d4 points of acid damage per caster level (maximum 5d4).",
                          desc: "Your successful melee touch attack deals 1d4 points of acid damage per caster level (maximum 5d4).",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Countless Eyes", school: "Transmutation", levels: "alchemist 3, arcanist 3, bloodrager 3, inquisitor 3, investigator 3, occultist 3, psychic 3, redmantisassassin 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 hour/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The target sprouts extra eyes all over its body, including on the back of its head. It gains all-around vision and cannot be flanked.",
                          desc: "The target sprouts extra eyes all over its body, including on the back of its head. It gains all-around vision and cannot be flanked.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Create Demiplane", school: "Conjuration (Creation)", levels: "arcanist 7, cleric 7, occultist 5, oracle 7, psychic 7, sorcerer 7, summoner 5, summoner (unchained) 6, witch 7, wizard 7",
                          castingTime: "2 hours", components: "V, S, F (a forked metal rod worth at least 500 gp)",
                          range: "0 ft.", area: "extradimensional demiplane, up to three 10-ft. cubes/level (S)", targets: "",
                          duration: "1 day/level",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as create lesser demiplane , except the area is larger and you can add more features to the plane. You can use this spell to expand a demiplane you created with",
                          desc: "This spell functions as create lesser demiplane , except the area is larger and you can add more features to the plane. You can use this spell to expand a demiplane you created with",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Create Demiplane, Greater", school: "Conjuration (Creation)", levels: "arcanist 7, cleric 7, occultist 5, oracle 7, psychic 7, sorcerer 7, summoner 5, summoner (unchained) 6, witch 7, wizard 7",
                          castingTime: "2 hours", components: "V, S, F (a forked metal rod worth at least 500 gp)",
                          range: "0 ft.", area: "extradimensional demiplane, up to three 10-ft. cubes/level (S)", targets: "",
                          duration: "1 day/level",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as create demiplane , except the area is larger and you can add more features to the plane. You can use this spell to expand a demiplane you created with",
                          desc: "This spell functions as create demiplane , except the area is larger and you can add more features to the plane. You can use this spell to expand a demiplane you created with",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Create Demiplane, Lesser", school: "Conjuration (Creation)", levels: "arcanist 7, cleric 7, occultist 5, oracle 7, psychic 7, sorcerer 7, summoner 5, summoner (unchained) 6, witch 7, wizard 7",
                          castingTime: "2 hours", components: "V, S, F (a forked metal rod worth at least 500 gp)",
                          range: "0 ft.", area: "extradimensional demiplane, up to three 10-ft. cubes/level (S)", targets: "",
                          duration: "1 day/level",
                          savingThrow: "none;", sr: false,
                          summary: "You create a small, finite demiplane. You must be on the Astral or Ethereal Plane or on a plane that has access to one of those planes (such as the Material Plane) to cast this spell.",
                          desc: "You create a small, finite demiplane. You must be on the Astral or Ethereal Plane or on a plane that has access to one of those planes (such as the Material Plane) to cast this spell. When you cast the spell, you decide whether the demiplane is within the Astral or the Ethereal Plane. It is filled with air or water (decided by you). The plane is generally flat and featureless, such as an earth, stone, water, or wood floor. The “walls” and “ceiling” of the plane may appear like solid earth, stone, wood, or water, or they may end in mist, a featureless void, or a similar unreal-looking border. The plane’s environmental conditions are those of a temperate spring day on the Material Plane. You determine the plane’s light level (bright, normal, dim, or darkness), which affects the entire plane. There are no native creatures or plants on this plane, though you may bring some there (if the plane’s light is bright or normal, it counts as sunlight for growing plants). The environment of the plane counts as normal terrain for the purpose of effects that target earth, stone, wood, and so on. For example, you could use",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Curse of Disgust", school: "Enchantment (Compulsion)", levels: "arcanist 5, bard 3, mesmerist 3, occultist 4, psychic 6, skald 3, sorcerer 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "permanent",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You place a curse upon a creature, causing it to avoid the sight of a specific trigger, which is a kind of creature, object, or condition designated by you.",
                          desc: "You place a curse upon a creature, causing it to avoid the sight of a specific trigger, which is a kind of creature, object, or condition designated by you. When the target is within 30 feet of a trigger and is aware of the trigger, it gains the sickened condition and feels an urge to leave. A successful Will save negates the urge to leave, but the sickened condition persists as long as the target is within 30 feet of a trigger and aware of it. Example triggers include beggars, filthy clothing, diseased creatures, the king, blood, spiders, rats, corpses, and sewage.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Curse of Magic Negation", school: "Abjuration", levels: "arcanist 4, cleric 5, inquisitor 4, mesmerist 3, occultist 4, oracle 5, psychic 4, sorcerer 4, warpriest 5, witch 4, wizard 4",
                          castingTime: "1 round", components: "V, S, M (powdered lead and platinum worth 250 gp)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "10 minute/level",
                          savingThrow: "Will negates;", sr: false,
                          summary: "You disrupt the target creature’s ability to draw upon magical energies. For the duration of the spell, it gains the negated spellblight (see page 97).",
                          desc: "You disrupt the target creature’s ability to draw upon magical energies. For the duration of the spell, it gains the negated spellblight (see page 97). Dispel checks to remove the spellblight take a –5 penalty due to this spell’s interference with magical energies.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Cursed Earth", school: "Necromancy", levels: "arcanist 9, cleric 9, oracle 9, sorcerer 9, witch 9, wizard 9",
                          castingTime: "10 minutes", components: "V, S, M (powdered onyx 10,000 gp), DF",
                          range: "touch", area: "1-mile radius emanating from the touched point", targets: "",
                          duration: "permanent",
                          savingThrow: "none (see text);", sr: false,
                          summary: "You lay a terrible curse upon the land, blighting those who live and die there. Choose one of the following effects.",
                          desc: "You lay a terrible curse upon the land, blighting those who live and die there. Choose one of the following effects. Famine : All normal plants in the area reduce their growth and food production by half, as if affected by the stunt growth effect of",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Cushioning Bands", school: "Conjuration (Creation)", levels: "arcanist 2, psychic 2, sorcerer 2, summoner 2, summoner (unchained) 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S,",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 hour/level or until discharged (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "Invisible bands of force encircle vital areas of the target. The bands resist crushing forces and impacts without interfering with movement.",
                          desc: "Invisible bands of force encircle vital areas of the target. The bands resist crushing forces and impacts without interfering with movement. The target gains DR 2/piercing or slashing and takes half damage from constriction, falling, and being buried, as well as from similar crushing effects such as crushing hand . Grapple checks for attacks other than constricting (such as pinning or swallowing whole) are not affected. Once the spell has blocked 12 points of damage per caster level (to a maximum of 120 points at 10th level), it is discharged. The bands have no effect on incorporeal attacks unless they deal damage from constriction or crushing, or unless the attacks would be subject to damage reduction.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Dance of a Hundred Cuts", school: "Transmutation", levels: "bard 4, skald 4",
                          castingTime: "1 standard action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "You become a lethal combat dancer, swirling and spinning with grace and precision. You gain a morale bonus on melee attack rolls, melee damage rolls, and Acrobatics checks, and to Armor Class.",
                          desc: "You become a lethal combat dancer, swirling and spinning with grace and precision. You gain a morale bonus on melee attack rolls, melee damage rolls, and Acrobatics checks, and to Armor Class. This bonus is equal to +1 per 3 caster levels (maximum +5 at 15th level). The bonus to AC is lost under any circumstances that would cause you to lose your Dexterity bonus to AC. You must remain moving for the spell to stay in effect. If in any round you do not either move at least 10 feet or make a melee attack, the spell’s duration ends. Dance of a Thousand Cuts",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Dance of a Thousand Cuts", school: "Transmutation", levels: "bard 4, skald 4",
                          castingTime: "1 standard action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as dance of a hundred cuts , except you also gain the benefits of",
                          desc: "This spell functions as dance of a hundred cuts , except you also gain the benefits of",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Decompose Corpse", school: "Necromancy", levels: "arcanist 1, cleric 1, druid 1, hunter 1, medium 1, occultist 1, oracle 1, psychic 1, sorcerer 1, spiritualist 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M (a pinch of dried toadstool)",
                          range: "touch", area: "", targets: "one corpse or corporeal undead",
                          duration: "instantaneous or 1 minute; see text",
                          savingThrow: "Fortitude negates (object);", sr: true,
                          summary: "Using this spell, the caster rapidly decomposes the flesh from a single corpse of size Huge or smaller, leaving behind a perfectly cleaned skeleton.",
                          desc: "Using this spell, the caster rapidly decomposes the flesh from a single corpse of size Huge or smaller, leaving behind a perfectly cleaned skeleton. If it is cast on a non-skeletal corporeal undead, the creature takes a –2 penalty on all rolls and to its Armor Class and CMD for 1 minute.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Defensive Shock", school: "Evocation", levels: "alchemist 2, arcanist 2, bloodrager 2, investigator 2, magus 2, occultist 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a hollow metal sphere)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level or until discharged",
                          savingThrow: "None", sr: false,
                          summary: "Electrical energy floods your body, shocking the next creature that touches you.",
                          desc: "Electrical energy floods your body, shocking the next creature that touches you. Any creature striking you with its body or a handheld weapon takes 1d6 points of electricity damage per two caster levels (maximum 6d6). If the attacker has spell resistance, it applies against this damage. Each time the spell discharges, the number of damage dice it deals is halved (rounded down); when the spell’s damage dice reach 0, the spell ends.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Delay Pain", school: "Enchantment", levels: "arcanist 2, bard 2, bloodrager 2, cleric 2, inquisitor 2, mesmerist 2, oracle 2, psychic 2, skald 2, sorcerer 2, warpriest 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 hour/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You override the target’s ability to feel pain. Pain effects (such as pain strike and",
                          desc: "You override the target’s ability to feel pain. Pain effects (such as pain strike and",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Delusional Pride", school: "Enchantment (Compulsion)", levels: "arcanist 1, bard 1, medium 1, mesmerist 1, psychic 1, skald 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 minute",
                          savingThrow: "Will negates;", sr: true,
                          summary: "The target becomes so distracted by an overblown sense of its worth that it takes a –2 penalty on attacks and skill checks.",
                          desc: "The target becomes so distracted by an overblown sense of its worth that it takes a –2 penalty on attacks and skill checks. However, this feeling also gives the target a +2 morale bonus on saves against charm and compulsion effects.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Diagnose Disease", school: "Divination", levels: "cleric 1, druid 1, hunter 1, mesmerist 1, occultist 1, oracle 1, paladin 1, psychic 1, ranger 1, warpriest 1, witch 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "You determine whether a creature, object, or area carries any sort of disease or infestation (including molds, slimes, and similar hazards), or any exceptional or supernatural effects causing the…",
                          desc: "You determine whether a creature, object, or area carries any sort of disease or infestation (including molds, slimes, and similar hazards), or any exceptional or supernatural effects causing the sickened or nauseated effects. If there is disease present, you know what disease it is and its effects. If the target is a creature, you gain a +4 bonus on Heal checks to treat the creature’s disease. The spell can penetrate many barriers, but 1 foot of stone, 1 inch of common metal, a thin sheet of lead, or 3 feet of wood or dirt blocks it.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Distracting Cacophony", school: "Evocation", levels: "arcanist 3, bard 2, psychic 3, skald 2, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "20-ft. spread", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: true,
                          summary: "The air fills with loud and discordant noise, making concentration difficult. Casting a spell in this area of cacophony requires a concentration check (DC 15 + the level of the spell being cast).",
                          desc: "The air fills with loud and discordant noise, making concentration difficult. Casting a spell in this area of cacophony requires a concentration check (DC 15 + the level of the spell being cast). Any other concentration checks in the area have their DCs increased by 5. The DC of Perception checks involving hearing is likewise increased by 5.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Distressing Tone", school: "Evocation", levels: "bard 2, inquisitor 2, skald 2",
                          castingTime: "1 round", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "1d4 living creatures",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "You create a powerful tone that vibrates living flesh. Targets must save or gain the sickened condition. Creatures that are immune to critical hits are immune to this spell.",
                          desc: "You create a powerful tone that vibrates living flesh. Targets must save or gain the sickened condition. Creatures that are immune to critical hits are immune to this spell.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Divine Pursuit", school: "Transmutation", levels: "inquisitor 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level; see text",
                          savingThrow: "None", sr: false,
                          summary: "Select one creature within 60 feet that you have damaged. If that creature has a burrow, climb, fly, or swim speed, you gain that form of movement for the duration of the spell at the same speed and…",
                          desc: "Select one creature within 60 feet that you have damaged. If that creature has a burrow, climb, fly, or swim speed, you gain that form of movement for the duration of the spell at the same speed and maneuverability as the selected creature. If this gives you the burrow or swim speed, you can breathe while burrowing or swimming. If the creature moves 1,000 feet or more from you, the spell ends. If the creature has more than one of these types of movement, you select one from the types available to the creature.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Dread Bolt", school: "Evocation", levels: "cleric 2, oracle 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "arrow-shaped projectile of evil energy", targets: "",
                          duration: "instantaneous (1d4 rounds)",
                          savingThrow: "Will partial (see text);", sr: true,
                          summary: "You unleash a crackling missile of darkness from your unholy symbol at any one target in range as a ranged touch attack.",
                          desc: "You unleash a crackling missile of darkness from your unholy symbol at any one target in range as a ranged touch attack. A good creature struck by dread bolt takes 1d8 points of damage per two caster levels (maximum 5d8). A good outsider instead takes 1d6 points of damage per caster level (maximum 10d6) and is sickened for 1 round. A successful Will save reduces the damage to half and negates the sickened effect. This spell deals only half damage to creatures that are neither good nor evil, and they are not sickened. The bolt has no effect on evil creatures.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Eagle Aerie", school: "Conjuration (Summoning)", levels: "druid 6, hunter 6, summoner 6, summoner (unchained) 6",
                          castingTime: "1 round", components: "V, S, DF",
                          range: "long (400 ft. + 40 ft./level)", area: "summoned eagles", targets: "",
                          duration: "1 hour/level",
                          savingThrow: "none;", sr: false,
                          summary: "You summon a flight of giant eagles (one per three caster levels, maximum of six; Bestiary 118) to ferry you and your allies across the skies.",
                          desc: "You summon a flight of giant eagles (one per three caster levels, maximum of six; Bestiary 118) to ferry you and your allies across the skies. The eagles avoid combat if possible but defend themselves if attacked; if the eagles attack, the remaining duration of the spell changes from 1 hour per level to 1 round per level (so if the spell had 5 full hours left, the eagles remain in combat for 5 rounds before the spell ends).",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ear-Piercing Scream", school: "Evocation", levels: "arcanist 1, bard 1, bloodrager 1, inquisitor 1, medium 1, psychic 1, skald 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "instantaneous; see text",
                          savingThrow: "Fortitude partial (see text);", sr: true,
                          summary: "You unleash a powerful scream, inaudible to all but a single target. The target is dazed for 1 round and takes 1d6 points of sonic damage per two caster levels (maximum 5d6).",
                          desc: "You unleash a powerful scream, inaudible to all but a single target. The target is dazed for 1 round and takes 1d6 points of sonic damage per two caster levels (maximum 5d6). A successful save negates the daze effect and halves the damage.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Echolocation", school: "Transmutation", levels: "alchemist 4, arcanist 5, bard 4, druid 4, hunter 4, investigator 4, occultist 4, psychic 5, skald 4, sorcerer 5, wizard 5",
                          castingTime: "1 standard action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "10 minutes/level",
                          savingThrow: "None", sr: false,
                          summary: "You can perceive the world by creating high-pitched noises and listening to their echoes. This gives you blindsight to a range of 40 feet.",
                          desc: "You can perceive the world by creating high-pitched noises and listening to their echoes. This gives you blindsight to a range of 40 feet. The echo-producing noises are too high-pitched to be heard by most creatures, and can only be detected by dragons, other creatures with this ability (such as bats), and creatures with hearing-based blindsense or blindsight. You cannot use this ability if you are deaf, and cannot detect anything in an area of silence .",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Eldritch Fever", school: "Necromancy", levels: "arcanist 3, inquisitor 3, psychic 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "The target gains the eldritch ague spellblight (see Ultimate Magic ).",
                          desc: "The target gains the eldritch ague spellblight (see Ultimate Magic ).",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Envious Urge", school: "Enchantment (Compulsion)", levels: "arcanist 6, bard 4, mesmerist 4, psychic 6, skald 4, sorcerer 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature/level, no two of which can be more than 30 ft. apart",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You fill creatures with feelings of seething envy. Affected targets turn upon the nearest creature (whether an ally or enemy) and attempt to disarm it of a valuable weapon, steal something it is…",
                          desc: "You fill creatures with feelings of seething envy. Affected targets turn upon the nearest creature (whether an ally or enemy) and attempt to disarm it of a valuable weapon, steal something it is holding, or grapple it and strip it of something it prizes (your choice). Affected targets can attempt a new Will save each round as a free action to end this effect.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Epidemic", school: "Necromancy", levels: "arcanist 7, cleric 6, druid 6, hunter 6, oracle 6, sorcerer 7, warpriest 6, witch 6, wizard 7",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "living creature",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "The target contracts one of the following diseases: blinding sickness, bubonic plague, cackle fever, filth fever, leprosy, mindfire, red ache, shakes, or slimy doom, as the spell contagion .",
                          desc: "The target contracts one of the following diseases: blinding sickness, bubonic plague, cackle fever, filth fever, leprosy, mindfire, red ache, shakes, or slimy doom, as the spell contagion . However, the disease is highly contagious, and any creature that touches the infected target, is touched by the target, or spends more than an hour in a confined space with the target must make a save against the disease’s normal DC (not the spell DC) or contract the disease. If the initial target overcomes the disease by making the required number of saving throws, it remains a carrier of the disease for a length of time equal to the disease’s frequency, and can continue to infect others during this time.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Eruptive Pustules", school: "Transmutation", levels: "alchemist 3, arcanist 3, bloodrager 3, investigator 3, redmantisassassin 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "Fortitude partial (see text);", sr: true,
                          summary: "Your skin erupts in swollen, pus-filled bumps that burst open if you are struck.",
                          desc: "Your skin erupts in swollen, pus-filled bumps that burst open if you are struck. Any creature that strikes you with its body or a handheld weapon deals normal damage, but at the same time the attacker takes 1d6 points of acid damage and must save or be sickened for 1 round. If the attack against you is a critical hit, the attacker must save or be nauseated instead of sickened. This damage can harm a swarm.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Excruciating Deformation", school: "Transmutation (Polymorph)", levels: "arcanist 3, bloodrager 3, psychic 3, redmantisassassin 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 round/level",
                          savingThrow: "Fortitude partial;", sr: true,
                          summary: "Your touch attack causes your target to become painfully malformed. Its limbs twist and buckle, while its body contorts uncontrollably, shifting and warping.",
                          desc: "Your touch attack causes your target to become painfully malformed. Its limbs twist and buckle, while its body contorts uncontrollably, shifting and warping. Each round the target suffers excruciating pain and takes 2d6 points of nonlethal damage, 1 point of Dexterity damage, and 1 point of Constitution damage, and its speed is reduced by 10 feet. Once per round as a free action on its turn, the target can attempt a new Fortitude saving throw to resist the spell for 1 round.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Exquisite Accompaniment", school: "Illusion (Shadow)", levels: "bard 3, skald 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "phantom instrument", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You create a phantom instrument, a glowing construct of magic in the form of a portable musical instrument of your choice. The instrument floats beside you, moving as you move (even if you teleport).",
                          desc: "You create a phantom instrument, a glowing construct of magic in the form of a portable musical instrument of your choice. The instrument floats beside you, moving as you move (even if you teleport). It cannot be damaged, but can be dispelled. The instrument plays as you direct, and as long as it plays, you do not have to expend rounds of bardic performance from your daily allotment to maintain an effect. Activating a bardic performance or switching to a new effect still costs a round of your overall bardic performances per day.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Familiar Melding", school: "Necromancy", levels: "arcanist 4, shaman 4, sorcerer 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "your familiar",
                          duration: "1 hour/level or until you return to your body",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You project your soul into your familiar, taking over its body while leaving its consciousness intact. When you transfer your soul upon casting, your body is, as near as anyone can tell, dead.",
                          desc: "You project your soul into your familiar, taking over its body while leaving its consciousness intact. When you transfer your soul upon casting, your body is, as near as anyone can tell, dead. While possessing your familiar, you can communicate with it telepathically. You keep your Intelligence, Wisdom, Charisma, level, class, base attack bonus, base save bonuses, alignment, and mental abilities. The familiar’s body retains its own Strength, Dexterity, Constitution, hit points, natural abilities, and automatic abilities. A body with extra limbs does not allow you to make more attacks (or more advantageous two-weapon attacks) than normal. You may use any abilities the familiar has, including spells and spell-like abilities. You cannot speak unless your familiar has the ability to speak a language. You cannot cast spells with somatic components if your familiar does not have anthropomorphic limbs that can perform the appropriate motions. As a standard action, you can return to your body as long as it is within range. If your familiar is slain while your soul is in it and your body is within range, your soul returns to your own body, unharmed. If your familiar is out of range when slain, you die. The spell ends when you shift from the familiar to your own body.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Fickle Winds", school: "Transmutation", levels: "arcanist 5, cleric 5, druid 5, hunter 3, oracle 5, ranger 3, sorcerer 5, spiritualist 5, warpriest 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M/DF (a tiny fan and an exotic feather)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one or more Medium creatures/level, no two of which can be more than 30 ft. apart",
                          duration: "1 minute/level (D)",
                          savingThrow: "none (see text);", sr: true,
                          summary: "You create a mobile cylinder of wind encompassing every target of the spell and protecting them as wind wall , but not interfering with them in any way.",
                          desc: "You create a mobile cylinder of wind encompassing every target of the spell and protecting them as wind wall , but not interfering with them in any way. For example, arrows and bolts fired at the targets are deflected upward and miss, but the targets’ own arrows or bolts pass through the wall as if it were not there. A Large creature counts as 4 Medium creatures for the purpose of how many targets you can effect with the spell; a Huge creature counts as 8, a Gargantuan creature as 16, and a Colossal creature as 32. This spell has no effect within the area of a higher-level wind or weather spell.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Fleshworm Infestation", school: "Conjuration (Summoning)", levels: "arcanist 4, cleric 4, inquisitor 4, oracle 4, psychic 4, sorcerer 4, warpriest 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 round/level (D)",
                          savingThrow: "Fortitude partial (see text);", sr: true,
                          summary: "With a touch, you cause an infestation of ravenous worms to manifest in the target’s flesh. The target must make a Fortitude save every round.",
                          desc: "With a touch, you cause an infestation of ravenous worms to manifest in the target’s flesh. The target must make a Fortitude save every round. Failure means it takes 1d6 hit points of damage and 2 points of Dexterity damage, and is staggered for 1 round. If it makes the save, it takes no hit point or Dexterity damage and is only sickened for 1 round rather than staggered. Fleshworm infestation cannot be ended early by",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Forbid Action", school: "Enchantment (Compulsion)", levels: "cleric 1, inquisitor 1, mesmerist 1, occultist 1, oracle 1, psychic 1, warpriest 1",
                          castingTime: "1 standard action", components: "V",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You forbid the target a single course of action, which it avoids to the best of its ability. You may demand the target not take actions that fall into one of the following options.",
                          desc: "You forbid the target a single course of action, which it avoids to the best of its ability. You may demand the target not take actions that fall into one of the following options. Attack : The target cannot take any action that involves an attack roll, or uses a spell or ability that targets a foe or an area that includes a foe.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Forbid Action, Greater", school: "Enchantment (Compulsion)", levels: "cleric 1, inquisitor 1, mesmerist 1, occultist 1, oracle 1, psychic 1, warpriest 1",
                          castingTime: "1 standard action", components: "V",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions as forbid action , except up to one creature per level may be affected. Each creature must receive the same forbidden action.",
                          desc: "This spell functions as forbid action , except up to one creature per level may be affected. Each creature must receive the same forbidden action.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Force Hook Charge", school: "Evocation", levels: "bloodrager 3, magus 3, psychic 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature or object within range and you",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: true,
                          summary: "You create a hook of force that strikes the target and drags you to a space adjacent to it.",
                          desc: "You create a hook of force that strikes the target and drags you to a space adjacent to it. Make a ranged touch attack against the target; if the touch attack succeeds, the target takes 1 point of force damage per caster level. Whether or not the touch attack hits, the force hook drags you in a straight line to a square adjacent to the target. This movement provokes attacks of opportunity as normal. The pulling hook keeps you from falling as part of this movement; therefore you can use it to cross a pit or chasm, or reach a higher or lower elevation. If the line of effect from you to the target passes through an area that is too small to fit your body (such as a portcullis or arrow slit), the hook pulls you to that location and you take damage as if you had fallen the distance from your starting point to that location. If you are restrained, such as being chained to a wall, the hook pulls you to the maximum extent of your restraints but does not break the restraints. If your travel to the destination is not blocked, you land on your feet, unharmed by the sudden motion. However, the spell does not guarantee you a safe landing space when you arrive. For example, if your target is flying or on a ledge with no room for you to stand, once the hook pulls you adjacent to the target, you begin to fall. If you use this spell with your spell combat class ability, you can make your melee attack from your starting position or your ending position.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Force Punch", school: "Evocation", levels: "arcanist 3, bloodrager 3, magus 3, psychic 3, sorcerer 3, spiritualist 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "instantaneous",
                          savingThrow: "Fortitude partial;", sr: true,
                          summary: "This spell charges your hand with telekinetic force. Your successful melee touch attack deals 1d4 points of force damage per level (maximum 10d4) and causes the target to be pushed away from you in a…",
                          desc: "This spell charges your hand with telekinetic force. Your successful melee touch attack deals 1d4 points of force damage per level (maximum 10d4) and causes the target to be pushed away from you in a straight line up to 5 feet per two caster levels. For every size category of the target above Medium, reduce the distance pushed by 5 feet (–5 feet for Large, –10 feet for Huge, –15 for Gargantuan, and –20 feet for Colossal) to a minimum of 0 feet. A successful Fortitude save negates the movement but not the damage.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Forced Quiet", school: "Transmutation", levels: "arcanist 1, bard 1, inquisitor 1, mesmerist 1, psychic 1, redmantisassassin 1, skald 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "With a gesture, you muffle sound around the target, making it unable to yell or otherwise make loud noises. This does not affect spellcasting by the target.",
                          desc: "With a gesture, you muffle sound around the target, making it unable to yell or otherwise make loud noises. This does not affect spellcasting by the target. The target can still use sonic effects, but the DC of these effects decreases by 2. The target gains a +2 bonus on saving throws against sonic effects. The target gains a +4 circumstance bonus on Stealth checks.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Frigid Touch", school: "Evocation", levels: "arcanist 2, bloodrager 2, druid 2, hunter 2, magus 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: true,
                          summary: "This spell causes your hand to glow with a pale blue radiance. Your melee touch attack deals 4d6 points of cold damage and causes the target to be staggered for 1 round.",
                          desc: "This spell causes your hand to glow with a pale blue radiance. Your melee touch attack deals 4d6 points of cold damage and causes the target to be staggered for 1 round. If the attack is a critical hit, the target is staggered for 1 minute instead.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Frostbite", school: "Transmutation", levels: "bloodrager 1, druid 1, hunter 1, magus 1, shaman 1, witch 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: true,
                          summary: "Your melee touch attack deals 1d6 points of nonlethal cold damage + 1 point per level, and the target is fatigued. The fatigued condition ends when the target recovers from the nonlethal damage.",
                          desc: "Your melee touch attack deals 1d6 points of nonlethal cold damage + 1 point per level, and the target is fatigued. The fatigued condition ends when the target recovers from the nonlethal damage. This spell cannot make a creature exhausted even if it is already fatigued. You can use this melee touch attack up to one time per level.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Fumbletongue", school: "Enchantment (Compulsion)", levels: "bard 1, mesmerist 1, psychic 1, skald 1, witch 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1d4 rounds",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This enchantment causes a creature to be unable to speak intelligibly. Any effort the target makes to talk, in any language, comes out as a useless mix of unconnected words and noises.",
                          desc: "This enchantment causes a creature to be unable to speak intelligibly. Any effort the target makes to talk, in any language, comes out as a useless mix of unconnected words and noises. Even magic words are affected to some extent; the target has a 20% spell failure chance for any spell it attempts to cast with verbal components, and a 20% chance to incorrectly use a command word to activate a magic item. This spell has no effect on telepathic communication, or the vocalizations of creatures that lack a spoken language.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Fungal Infestation", school: "Necromancy", levels: "druid 3, hunter 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1d3 days",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "You coat the target in necrotic fungus that makes its flesh soft and fragile. Toadstools, ringworm, and other disgusting fungal growths sprout from its skin.",
                          desc: "You coat the target in necrotic fungus that makes its flesh soft and fragile. Toadstools, ringworm, and other disgusting fungal growths sprout from its skin. The target takes 1d3 points of Charisma damage. Any physical attack against the target automatically adds 1d6 points of bleed damage.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ghostly Disguise", school: "Illusion (Glamer)", levels: "alchemist 2, arcanist 2, bard 2, inquisitor 2, investigator 2, medium 2, mesmerist 2, occultist 2, psychic 2, redmantisassassin 2, skald 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "10 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "You make yourself—including clothing, armor, weapons, and equipment—appear translucent like a ghost.",
                          desc: "You make yourself—including clothing, armor, weapons, and equipment—appear translucent like a ghost. Any mundane or magical disguise on you is affected by this illusion as well; for example, if you are disguised as the king or a sahuagin, you look like a ghostly version of the king or a sahuagin. Your ghostly form may have a pale green, blue, or violet coloration, or a muted version of your normal appearance. The spell does not actually make you ghostly or provide any incorporeal abilities. If you choose, the illusion can make you appear to float slightly above the ground, though you are actually still on the ground. A creature that interacts with the glamer gets a Will save to recognize it as an illusion.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Haunting Choir", school: "Necromancy", levels: "bard 3, mesmerist 3, skald 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "30-ft.-radius emanation", targets: "",
                          duration: "concentration + 2 rounds",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You create a spectral choir and conduct its tortured, ghostly moans, deluding listeners into believing they are suffering the torments of the dead.",
                          desc: "You create a spectral choir and conduct its tortured, ghostly moans, deluding listeners into believing they are suffering the torments of the dead. The transparent singers occupy a 10-foot cube, but they are intangible and do not interfere with creatures in any physical way, nor can they be attacked. Creatures within 30 feet of the choir experience wracking pain that causes them to take a –2 penalty on attack rolls, skill checks, and ability checks. Individuals who exit the area of effect take these penalties for an additional 2 rounds before the delusion wears off.",
                          source: "Ultimate Magic", isPremium: true)
        )
        try await seedSpellsL()
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