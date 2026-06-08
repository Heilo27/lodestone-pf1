import Foundation

extension SeedDataBuilder {
    func seedSpellsB() async throws {
        try await db.insertSpell(
        .make("Explosive Runes", school: "Abjuration", levels: "arcanist 3, occultist 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "one touched object weighing no more than 10 lbs.",
                          duration: "permanent until discharged (D)",
                          savingThrow: "see text;", sr: true,
                          summary: "You trace mystic runes upon a book, map, scroll, or similar object bearing written information. The explosive runes detonate when read, dealing 6d6 points of force damage. Anyone next to the",
                          desc: "You trace mystic runes upon a book, map, scroll, or similar object bearing written information. The explosive runes detonate when read, dealing 6d6 points of force damage. Anyone next to the",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Eyebite", school: "Necromancy", levels: "alchemist 6, arcanist 6, bard 6, investigator 6, mesmerist 6, skald 6, sorcerer 6, spiritualist 6, witch 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "Each round, you can target a single living creature, striking it with waves of power. Depending on the target's HD, this attack has as many as three effects. HD Effect",
                          desc: "Each round, you can target a single living creature, striking it with waves of power. Depending on the target's HD, this attack has as many as three effects. HD Effect",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Fabricate", school: "Transmutation", levels: "arcanist 5, occultist 5, psychic 5, sorcerer 5, wizard 5",
                          castingTime: "see text", components: "V, S, M (the original material, which costs the same amount as the raw materials required to craft the item to be created)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "up to 10 cu. ft./level; see text",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "You convert material of one sort into a product that is of the same material. Creatures or magic items cannot be created or transmuted by the fabricate spell.",
                          desc: "You convert material of one sort into a product that is of the same material. Creatures or magic items cannot be created or transmuted by the fabricate spell. The quality of items made by this spell is commensurate with the quality of material used as the basis for the new fabrication. If you work with a mineral, the target is reduced to 1 cubic foot per level instead of 10 cubic feet. You must make an appropriate Craft check to fabricate articles requiring a high degree of craftsmanship. Casting requires 1 round per 10 cubic feet of material to be affected by the spell.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Faerie Fire", school: "Evocation", levels: "druid 1, hunter 1, mesmerist 1",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "long (400 ft. + 40 ft./level)", area: "creatures and objects within a 5-ft.-radius burst", targets: "",
                          duration: "1 min./level (D)",
                          savingThrow: "none;", sr: true,
                          summary: "A pale glow surrounds and outlines the subjects. Outlined subjects shed light as candles. Creatures outlined by faerie fire take a –20 penalty on all Stealth checks.",
                          desc: "A pale glow surrounds and outlines the subjects. Outlined subjects shed light as candles. Creatures outlined by faerie fire take a –20 penalty on all Stealth checks. Outlined creatures do not benefit from the concealment normally provided by darkness (though a 2nd-level or higher magical",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("False Life", school: "Necromancy", levels: "alchemist 2, arcanist 2, bloodrager 2, investigator 2, medium 2, mesmerist 2, occultist 2, psychic 2, shaman 2, sorcerer 2, spiritualist 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a drop of blood)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 hour/level or until discharged; see text",
                          savingThrow: "None", sr: false,
                          summary: "You harness the power of unlife to grant yourself a limited ability to avoid death. While this spell is in effect, you gain temporary hit points equal to 1d10 + 1 per caster level (maximum +10).",
                          desc: "You harness the power of unlife to grant yourself a limited ability to avoid death. While this spell is in effect, you gain temporary hit points equal to 1d10 + 1 per caster level (maximum +10).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("False Life, Greater", school: "Necromancy", levels: "alchemist 2, arcanist 2, bloodrager 2, investigator 2, medium 2, mesmerist 2, occultist 2, psychic 2, shaman 2, sorcerer 2, spiritualist 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a drop of blood)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 hour/level or until discharged; see text",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as false life , except you gain temporary hit points equal to 2d10 + 1 point per caster level (maximum +20). The effects of this spell do not stack with those of",
                          desc: "This spell functions as false life , except you gain temporary hit points equal to 2d10 + 1 point per caster level (maximum +20). The effects of this spell do not stack with those of",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("False Resurrection", school: "Conjuration (Healing)", levels: "cleric 7, oracle 7, shaman 8, witch 8",
                          castingTime: "1 minute", components: "V, S, M (diamond worth 10,000 gp), DF",
                          range: "touch", area: "", targets: "dead creature touched",
                          duration: "instantaneous",
                          savingThrow: "none, see text;", sr: true,
                          summary: "This spell functions as resurrection except that instead of recalling the dead soul to life, the spell calls a shadow demon with the advanced simple template ( Pathfinder RPG Bestiary 67, 294 ) to…",
                          desc: "This spell functions as resurrection except that instead of recalling the dead soul to life, the spell calls a shadow demon with the advanced simple template ( Pathfinder RPG Bestiary 67, 294 ) to possess the body. If you fail to overcome the subject’s spell resistance, the subject’s soul can negate the calling and gain the option to return to life (as",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("False Resurrection, Greater", school: "Conjuration (Healing)", levels: "cleric 7, oracle 7, shaman 8, witch 8",
                          castingTime: "1 minute", components: "V, S, M (diamond worth 10,000 gp), DF",
                          range: "touch", area: "", targets: "dead creature touched",
                          duration: "instantaneous",
                          savingThrow: "none, see text;", sr: true,
                          summary: "This spell functions as false resurrection except that it calls a belier devil with the young simple template ( Pathfinder RPG Bestiary 2 85, 292 ) to possess the body and all parts of",
                          desc: "This spell functions as false resurrection except that it calls a belier devil with the young simple template ( Pathfinder RPG Bestiary 2 85, 292 ) to possess the body and all parts of",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("False Vision", school: "Illusion (Glamer)", levels: "arcanist 5, bard 5, medium 4, mesmerist 5, occultist 5, psychic 5, skald 5, sorcerer 5, spiritualist 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (crushed jade worth 250 gp)",
                          range: "touch", area: "40-ft.-radius emanation", targets: "one creature",
                          duration: "1 hour/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell creates a subtle illusion, causing any divination (scrying) spell used to view anything within the area of this spell to instead receive a false image (as the major image spell), as…",
                          desc: "This spell creates a subtle illusion, causing any divination (scrying) spell used to view anything within the area of this spell to instead receive a false image (as the major image spell), as defined by you at the time of casting. As long as the duration lasts, you can concentrate to change the image as desired. While you aren't concentrating, the image remains static. False Vision, Greater",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("False Vision, Greater", school: "Illusion (Glamer)", levels: "arcanist 5, bard 5, medium 4, mesmerist 5, occultist 5, psychic 5, skald 5, sorcerer 5, spiritualist 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (crushed jade worth 250 gp)",
                          range: "touch", area: "40-ft.-radius emanation", targets: "one creature",
                          duration: "1 hour/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This functions similarly to false vision , but instead of placing the illusion on a nearby area, you can tie it to a specific individual, and can do so from great distances.",
                          desc: "This functions similarly to false vision , but instead of placing the illusion on a nearby area, you can tie it to a specific individual, and can do so from great distances. The spell can be cast at any distance. The difficulty of the save depends on your knowledge of the subject and what sort of physical connection (if any) you have to that creature. The target gains the same bonuses and penalties on its Will save to resist this spell as the bonuses and penalties that apply to the",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Familiar Double", school: "Illusion (Shadow)", levels: "arcanist 7, bard 6, mesmerist 6, occultist 6, psychic 7, skald 6, sorcerer 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S, M (a small replica of you worth 5 gp)",
                          range: "medium (100 ft. + 10 ft./level)", area: "one shadow duplicate", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "Will disbelief (if interacted with);", sr: false,
                          summary: "This spell functions as project image , except the image appears in your familiar’s square and moves when your familiar moves.",
                          desc: "This spell functions as project image , except the image appears in your familiar’s square and moves when your familiar moves.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Fear", school: "Necromancy", levels: "antipaladin 4, arcanist 4, bard 3, bloodrager 4, inquisitor 4, medium 4, mesmerist 3, occultist 4, psychic 4, shaman 4, skald 3, sorcerer 4, spiritualist 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (the heart of a hen or a white feather)",
                          range: "30 ft.", area: "cone-shaped burst", targets: "",
                          duration: "1 round/level or 1 round; see text",
                          savingThrow: "Will partial;", sr: true,
                          summary: "An invisible cone of terror causes each living creature in the area to become panicked unless it succeeds on a Will save. If cornered, a panicked creature begins cowering.",
                          desc: "An invisible cone of terror causes each living creature in the area to become panicked unless it succeeds on a Will save. If cornered, a panicked creature begins cowering. If the Will save succeeds, the creature is shaken for 1 round.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Feather Fall", school: "Transmutation", levels: "arcanist 1, bard 1, bloodrager 1, magus 1, occultist 1, psychic 1, redmantisassassin 1, skald 1, sorcerer 1, spiritualist 1, summoner 1, summoner (unchained) 1, wizard 1",
                          castingTime: "1 immediate action", components: "V",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one Medium or smaller freefalling object or creature/level, no two of which may be more than 20 ft. apart",
                          duration: "until landing or 1 round/level",
                          savingThrow: "Will negates (harmless) or Will negates (object);", sr: true,
                          summary: "The affected creatures or objects fall slowly. Feather fall instantly changes the rate at which the targets fall to a mere 60 feet per round (equivalent to the end of a fall from a few feet), and the…",
                          desc: "The affected creatures or objects fall slowly. Feather fall instantly changes the rate at which the targets fall to a mere 60 feet per round (equivalent to the end of a fall from a few feet), and the subjects take no damage upon landing while the spell is in effect. When the spell duration expires, a normal rate of falling resumes. The spell affects one or more Medium or smaller creatures (including gear and carried objects up to each creature's maximum load) or objects, or the equivalent in larger creatures: a Large creature or object counts as two Medium creatures or objects, a Huge creature or object counts as four Medium creatures or objects, and so forth. This spell has no special effect on ranged weapons unless they are falling quite a distance. If the spell is cast on a falling item, the object does half normal damage based on its weight, with no bonus for the height of the drop.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Feeblemind", school: "Enchantment (Compulsion)", levels: "arcanist 5, medium 4, mesmerist 5, psychic 5, sorcerer 5, spiritualist 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (a handful of clay, crystal, or glass spheres)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "Will negates; see text;", sr: true,
                          summary: "Target creature's Intelligence and Charisma scores each drop to 1.",
                          desc: "Target creature's Intelligence and Charisma scores each drop to 1. The affected creature is unable to use Intelligence- or Charisma-based skills, cast spells, understand language, or communicate coherently. Still, it knows who its friends are and can follow them and even protect them. The subject remains in this state until a heal ,",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Fey Gate", school: "Conjuration (Creation Or Calling)", levels: "arcanist 9, cleric 9, oracle 9, psychic 9, sorcerer 9, wizard 9",
                          castingTime: "1 standard action", components: "V, S, M (see text)",
                          range: "medium (100 ft. + 10 ft./level)", area: "see text", targets: "",
                          duration: "instantaneous or concentration (up to 1 round/level); see text",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as the planar travel function of gate , except it can be used to travel only between points on the Material Plane and the First World, and it comes with additional dangers.",
                          desc: "This spell functions as the planar travel function of gate , except it can be used to travel only between points on the Material Plane and the First World, and it comes with additional dangers. This spell forms a circular portal between 5 and 20 feet in diameter (your choice) oriented in the direction you desire when it comes into being (typically vertical and facing you). The portal is full of gray fog that blocks line of sight. Anyone or anything that moves through the portal to enter the First World is shunted instantly to a random point on that plane (the same point for everything traveling via a particular casting). At the end of the spell’s duration, the caster can attempt a DC 30 Spellcraft check. On a success, the portal remains open for 1d4+1 days. Creatures exiting the First World through a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Find Traps", school: "Divination", levels: "cleric 2, inquisitor 2, medium 2, occultist 2, oracle 2, psychic 2, warpriest 2, witch 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 min./level",
                          savingThrow: "None", sr: false,
                          summary: "You gain intuitive insight into the workings of traps. You gain an insight bonus equal to 1/2 your caster level (maximum +10) on Perception checks made to find traps while the spell is in effect.",
                          desc: "You gain intuitive insight into the workings of traps. You gain an insight bonus equal to 1/2 your caster level (maximum +10) on Perception checks made to find traps while the spell is in effect. You receive a check to notice traps within 10 feet of you, even if you are not actively searching for them. Note that find traps grants no ability to disable the traps that you may find.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Find the Path", school: "Divination", levels: "bard 6, cleric 6, druid 6, hunter 6, inquisitor 6, occultist 6, oracle 6, psychic 6, shaman 6, skald 6, spiritualist 6, warpriest 6, witch 6",
                          castingTime: "3 rounds", components: "V, S, F (a set of divination counters)",
                          range: "personal or touch", area: "", targets: "you or creature touched",
                          duration: "10 min./level",
                          savingThrow: "none or Will negates (harmless);", sr: true,
                          summary: "The recipient of this spell can find the shortest, most direct physical route to a prominent specified destination, such as a city, keep, lake, or dungeon.",
                          desc: "The recipient of this spell can find the shortest, most direct physical route to a prominent specified destination, such as a city, keep, lake, or dungeon. The locale can be outdoors or underground, as long as it is prominent. For example, a hunter's cabin is not prominent enough, but a logging camp is. Find the path works with respect to locations, not objects or creatures at a locale. The location must be on the same plane as the subject at the time of casting. The spell enables the subject to sense the correct direction that will eventually lead it to its destination, indicating at appropriate times the exact path to follow or physical actions to take. For example, the spell enables the subject to sense what cavern corridor to take when a choice presents itself. The spell ends when the destination is reached or the duration expires, whichever comes first.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Finger of Death", school: "Necromancy", levels: "arcanist 7, druid 8, psychic 7, sorcerer 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "Fortitude partial;", sr: true,
                          summary: "This spell instantly delivers 10 points of damage per caster level. If the target's Fortitude saving throw succeeds, it instead takes 3d6 points of damage + 1 point per caster level.",
                          desc: "This spell instantly delivers 10 points of damage per caster level. If the target's Fortitude saving throw succeeds, it instead takes 3d6 points of damage + 1 point per caster level. The subject might die from damage even if it succeeds on its saving throw.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Fire Seeds", school: "Conjuration (Creation)", levels: "druid 6, hunter 6, shaman 6",
                          castingTime: "1 standard action", components: "V, S, M (acorns or holly berries)",
                          range: "touch", area: "", targets: "up to four acorns or up to eight holly berries",
                          duration: "10 min./level or until used",
                          savingThrow: "none or Reflex half; see text;", sr: false,
                          summary: "Depending on the version of fire seeds you choose, you turn acorns into splash weapons that you or another character can throw, or you turn holly berries into bombs that you can detonate on command.",
                          desc: "Depending on the version of fire seeds you choose, you turn acorns into splash weapons that you or another character can throw, or you turn holly berries into bombs that you can detonate on command. Acorn Grenades : As many as four acorns turn into special thrown splash weapons. An acorn grenade has a range increment of 20 feet. A ranged touch attack roll is required to strike the intended target. Together, the acorns are capable of dealing 1d4 points of fire damage per caster level (maximum 20d4) divided among the acorns as you wish. No acorn can deal more than 10d4 points of damage. Each acorn grenade explodes upon striking any hard surface. In addition to its regular fire damage, all creatures adjacent to the explosion take 1 point of fire damage per die of the explosion. This explosion of fire ignites any combustible materials adjacent to the target.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Fire Shield", school: "Evocation", levels: "alchemist 4, arcanist 4, bloodrager 4, investigator 4, magus 4, occultist 4, sorcerer 4, summoner 3, summoner (unchained) 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (phosphorus for the warm shield; a firefly or glowworm for the chill shield)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This spell wreathes you in flame and causes damage to each creature that attacks you in melee.",
                          desc: "This spell wreathes you in flame and causes damage to each creature that attacks you in melee. The flames also protect you from either cold-based or fire-based attacks, depending on if you choose cool or warm flames for your fire shield. Any creature striking you with its body or a handheld weapon deals normal damage, but at the same time the attacker takes 1d6 points of damage + 1 point per caster level (maximum +15). This damage is either cold damage (if you choose a chill shield ) or fire damage (if you choose a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Fire Storm", school: "Evocation", levels: "cleric 8, druid 7, oracle 8, shaman 8",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "two 10-ft. cubes per level (S)", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Reflex half;", sr: true,
                          summary: "When a fire storm spell is cast, the whole area is shot through with sheets of roaring flame.",
                          desc: "When a fire storm spell is cast, the whole area is shot through with sheets of roaring flame. The raging flames do not harm natural vegetation, ground cover, or any plant creatures in the area that you wish to exclude from damage. Any other creature within the area takes 1d6 points of fire damage per caster level (maximum 20d6). Creatures that fail their Reflex save catch on fire, taking 4d6 points of fire damage each round until the flames are extinguished. Extinguishing the flames is a full-round action that requires a DC 20 Reflex save.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Fire Trap", school: "Abjuration", levels: "arcanist 4, druid 2, hunter 2, occultist 4, sorcerer 4, wizard 4",
                          castingTime: "10 minutes", components: "V, S, M (gold dust worth 25 gp)",
                          range: "touch", area: "", targets: "object touched",
                          duration: "permanent until discharged (D)",
                          savingThrow: "Reflex half; see text;", sr: true,
                          summary: "Fire trap creates a fiery explosion when an intruder opens the item that the trap protects. A fire trap spell can ward any object that can be opened and closed.",
                          desc: "Fire trap creates a fiery explosion when an intruder opens the item that the trap protects. A fire trap spell can ward any object that can be opened and closed.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Fireball", school: "Evocation", levels: "arcanist 3, bloodrager 3, magus 3, occultist 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a ball of bat guano and sulfur)",
                          range: "long (400 ft. + 40 ft./level)", area: "20-ft.-radius spread", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Reflex half;", sr: true,
                          summary: "A fireball spell generates a searing explosion of flame that detonates with a low roar and deals 1d6 points of fire damage per caster level (maximum 10d6) to every creature within the area.",
                          desc: "A fireball spell generates a searing explosion of flame that detonates with a low roar and deals 1d6 points of fire damage per caster level (maximum 10d6) to every creature within the area. Unattended objects also take this damage. The explosion creates almost no pressure. You point your finger and determine the range (distance and height) at which the",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Flame Arrow", school: "Transmutation", levels: "arcanist 3, bloodrager 3, magus 3, occultist 3, redmantisassassin 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a drop of oil and a small piece of flint)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "fifty projectiles, all of which must be together at the time of casting",
                          duration: "10 min./level",
                          savingThrow: "none;", sr: false,
                          summary: "This spell allows you to turn ammunition (such as arrows, crossbow bolts, shuriken, and sling stones) into fiery projectiles.",
                          desc: "This spell allows you to turn ammunition (such as arrows, crossbow bolts, shuriken, and sling stones) into fiery projectiles. Each piece of ammunition deals an extra 1d6 points of fire damage to any target it hits. A flaming projectile can easily ignite a flammable object or structure, but it won't ignite a creature it strikes.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Flame Blade", school: "Evocation", levels: "druid 2, hunter 2, shaman 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "0 ft.", area: "sword-like beam", targets: "",
                          duration: "1 min./level",
                          savingThrow: "none;", sr: true,
                          summary: "A 3-foot-long, blazing beam of red-hot fire springs forth from your hand. You wield this blade-like beam as if it were a scimitar. Attacks with the flame blade are melee touch attacks.",
                          desc: "A 3-foot-long, blazing beam of red-hot fire springs forth from your hand. You wield this blade-like beam as if it were a scimitar. Attacks with the flame blade are melee touch attacks. The blade deals 1d8 points of fire damage + 1 point per two caster levels (maximum +10). Since the blade is immaterial, your Strength modifier does not apply to the damage. A",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Flame Steed", school: "Conjuration (Creation)", levels: "arcanist 3, bard 3, bloodrager 3, magus 3, occultist 3, skald 3, sorcerer 3, spiritualist 3, summoner 2, summoner (unchained) 2, wizard 3",
                          castingTime: "10 minutes", components: "V, S",
                          range: "0 ft.", area: "one quasi-real, horselike creature", targets: "",
                          duration: "1 hour/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You conjure a Large, quasi-real creature made of flame. It functions like phantom steed , except as follows. The flame steed is immune to fire and has acid, cold, and electricity resistance 10.",
                          desc: "You conjure a Large, quasi-real creature made of flame. It functions like phantom steed , except as follows. The flame steed is immune to fire and has acid, cold, and electricity resistance 10. If it or its rider is attacked, it automatically exhales a 15-foot cone of smoke and ash on your turn as a free action. Anyone in the cone must succeed at a Fortitude save (DC equal to the spell DC) or become sickened for 1d6 rounds after leaving the area. This smoke acts as",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Flame Strike", school: "Evocation", levels: "cleric 5, druid 4, hunter 4, inquisitor 5, oracle 5, shaman 5, warpriest 5",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "medium (100 ft. + 10 ft./level)", area: "cylinder (10-ft. radius, 40-ft. high)", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Reflex half;", sr: true,
                          summary: "A flame strike evokes a vertical column of divine fire. The spell deals 1d6 points of damage per caster level (maximum 15d6).",
                          desc: "A flame strike evokes a vertical column of divine fire. The spell deals 1d6 points of damage per caster level (maximum 15d6). Half the damage is fire damage, but the other half results directly from divine power and is therefore not subject to being reduced by resistance to fire-based attacks.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Flaming Sphere", school: "Evocation", levels: "arcanist 2, bloodrager 2, druid 2, hunter 2, magus 2, occultist 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (tallow, brimstone, and powdered iron)",
                          range: "medium (100 ft. + 10 ft./level)", area: "5-ft.-diameter sphere", targets: "",
                          duration: "1 round/level",
                          savingThrow: "Reflex negates;", sr: true,
                          summary: "A burning globe of fire rolls in whichever direction you point and burns those it strikes. It moves 30 feet per round.",
                          desc: "A burning globe of fire rolls in whichever direction you point and burns those it strikes. It moves 30 feet per round. As part of this movement, it can ascend or jump up to 30 feet to strike a target. If it enters a space with a creature, it stops moving for the round and deals 3d6 points of fire damage to that creature, though a successful Reflex save negates that damage. A flaming sphere rolls over barriers less than 4 feet tall. It ignites flammable substances it touches and illuminates the same area as a torch would. The sphere moves as long as you actively direct it (a move action for you); otherwise, it merely stays at rest and burns. It can be extinguished by any means that would put out a normal fire of its size. The surface of the sphere has a spongy, yielding consistency and so does not cause damage except by its flame. It cannot push aside unwilling creatures or batter down large obstacles. A",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Flaming Sphere, Greater", school: "Evocation", levels: "arcanist 2, bloodrager 2, druid 2, hunter 2, magus 2, occultist 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (tallow, brimstone, and powdered iron)",
                          range: "medium (100 ft. + 10 ft./level)", area: "5-ft.-diameter sphere", targets: "",
                          duration: "1 round/level",
                          savingThrow: "Reflex negates;", sr: true,
                          summary: "This spell functions as flaming sphere , except that it deals 6d6 points of fire damage to any creature it strikes.",
                          desc: "This spell functions as flaming sphere , except that it deals 6d6 points of fire damage to any creature it strikes. Any creature that fails its save against the sphere catches on fire (see page 444 of the",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Flare", school: "Evocation", levels: "arcanist 0, bard 0, druid 0, hunter 0, magus 0, medium 0, mesmerist 0, occultist 0, psychic 0, skald 0, sorcerer 0, wizard 0",
                          castingTime: "1 standard action", components: "V",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "burst of light", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "This cantrip creates a burst of light. If you cause the light to burst in front of a single creature, that creature is dazzled for 1 minute unless it makes a successful Fortitude save.",
                          desc: "This cantrip creates a burst of light. If you cause the light to burst in front of a single creature, that creature is dazzled for 1 minute unless it makes a successful Fortitude save. Sightless creatures, as well as creatures already dazzled, are not affected by flare .",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Flare Burst", school: "Evocation", levels: "arcanist 0, bard 0, druid 0, hunter 0, magus 0, medium 0, mesmerist 0, occultist 0, psychic 0, skald 0, sorcerer 0, wizard 0",
                          castingTime: "1 standard action", components: "V",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "burst of light", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "This spell functions as flare , except it affects all creatures in a 10-foot-radius burst from the target point.",
                          desc: "This spell functions as flare , except it affects all creatures in a 10-foot-radius burst from the target point.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Flesh to Stone", school: "Transmutation", levels: "arcanist 6, magus 6, shaman 6, sorcerer 6, witch 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S, M (lime, water, and earth)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "The subject, along with all its carried gear, turns into a mindless, inert statue.",
                          desc: "The subject, along with all its carried gear, turns into a mindless, inert statue. If the statue resulting from this spell is broken or damaged, the subject (if ever returned to its original state) has similar damage or deformities. The creature is not dead, but it does not seem to be alive either when viewed with spells such as deathwatch . Only creatures made of flesh are affected by this spell.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Floating Disk", school: "Evocation", levels: "arcanist 1, magus 1, occultist 1, psychic 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M (a drop of mercury)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "3-ft.-diameter disk of force", targets: "",
                          duration: "1 hour/level",
                          savingThrow: "none;", sr: false,
                          summary: "You create a slightly concave, circular plane of force that follows you about and carries loads for you. The disk is 3 feet in diameter and 1 inch deep at its center.",
                          desc: "You create a slightly concave, circular plane of force that follows you about and carries loads for you. The disk is 3 feet in diameter and 1 inch deep at its center. It can hold 100 pounds of weight per caster level. If used to transport a liquid, its capacity is 2 gallons. The disk floats approximately 3 feet above the ground at all times and remains level. It floats along horizontally within spell range and will accompany you at a rate of no more than your normal speed each round. If not otherwise directed, it maintains a constant interval of 5 feet between itself and you. The disk winks out of existence when the spell duration expires. The disk also winks out if you move beyond its range or try to take the disk more than 3 feet away from the surface beneath it. When the disk winks out, whatever it was supporting falls to the surface beneath it.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Fly", school: "Transmutation", levels: "alchemist 3, arcanist 3, bloodrager 3, investigator 3, magus 3, medium 3, occultist 3, psychic 3, redmantisassassin 3, shaman 3, sorcerer 3, spiritualist 3, summoner 3, summoner (unchained) 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, F (a wing feather)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 min./level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The subject can fly at a speed of 60 feet (or 40 feet if it wears medium or heavy armor, or if it carries a medium or heavy load).",
                          desc: "The subject can fly at a speed of 60 feet (or 40 feet if it wears medium or heavy armor, or if it carries a medium or heavy load). It can ascend at half speed and descend at double speed, and its maneuverability is good. Using a fly spell requires only as much concentration as walking, so the subject can attack or cast spells normally. The subject of a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Fly, Mass", school: "Transmutation", levels: "alchemist 3, arcanist 3, bloodrager 3, investigator 3, magus 3, medium 3, occultist 3, psychic 3, redmantisassassin 3, shaman 3, sorcerer 3, spiritualist 3, summoner 3, summoner (unchained) 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, F (a wing feather)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 min./level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions as fly (",
                          desc: "This spell functions as fly (",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Fog Cloud", school: "Conjuration (Creation)", levels: "arcanist 2, druid 2, hunter 2, magus 2, shaman 2, sorcerer 2, summoner (unchained) 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "fog spreads in 20-ft. radius", targets: "",
                          duration: "10 min./level",
                          savingThrow: "none;", sr: false,
                          summary: "A bank of fog billows out from the point you designate. The fog obscures all sight, including darkvision, beyond 5 feet. A creature within 5 feet has concealment (attacks have a 20% miss chance).",
                          desc: "A bank of fog billows out from the point you designate. The fog obscures all sight, including darkvision, beyond 5 feet. A creature within 5 feet has concealment (attacks have a 20% miss chance). Creatures farther away have total concealment (50% miss chance, and the attacker can't use sight to locate the target). A moderate wind (11+ mph) disperses the fog in 4 rounds; a strong wind (21+ mph) disperses the fog in 1 round. The spell does not function underwater.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Forbiddance", school: "Abjuration", levels: "cleric 6, inquisitor 6, occultist 6, oracle 6, warpriest 6",
                          castingTime: "6 rounds", components: "V, S, M (holy water and incense worth 1,500 gp, plus 1,500 gp per 60-foot cube), DF",
                          range: "medium (100 ft. + 10 ft./level)", area: "60-ft. cube/level (S)", targets: "",
                          duration: "permanent",
                          savingThrow: "see text;", sr: true,
                          summary: "Forbiddance seals an area against all planar travel into or within it. This includes all teleportation spells (such as dimension door",
                          desc: "Forbiddance seals an area against all planar travel into or within it. This includes all teleportation spells (such as dimension door",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Forcecage", school: "Evocation", levels: "arcanist 7, psychic 7, sorcerer 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S, M (ruby dust worth 500 gp)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "barred cage (20-ft. cube) or windowless cell (10-ft. cube)", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "Reflex negates;", sr: false,
                          summary: "This spell creates an immobile, invisible cubical prison composed of either bars of force or solid walls of force (your choice).",
                          desc: "This spell creates an immobile, invisible cubical prison composed of either bars of force or solid walls of force (your choice). Creatures within the area are caught and contained unless they are too big to fit inside, in which case the spell automatically fails. Teleportation and other forms of astral travel provide a means of escape, but the force walls or bars extend into the Ethereal Plane, blocking ethereal travel. Like a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Forceful Hand", school: "Evocation", levels: "arcanist 6, magus 6, occultist 6, psychic 6, sorcerer 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S, F (a soft glove)",
                          range: "medium (100 ft. + 10 ft./level)", area: "10-ft. hand", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: true,
                          summary: "This spell functions as interposing hand , except that it can also pursue and bull rush one opponent you select. The",
                          desc: "This spell functions as interposing hand , except that it can also pursue and bull rush one opponent you select. The",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Foresight", school: "Divination", levels: "arcanist 9, druid 9, psychic 9, shaman 9, sorcerer 9, witch 9, wizard 9",
                          castingTime: "1 standard action", components: "V, S, M/DF (a hummingbird's feather)",
                          range: "personal or touch", area: "", targets: "see text",
                          duration: "10 min./level",
                          savingThrow: "none or Will negates (harmless);", sr: true,
                          summary: "This spell grants you a powerful sixth sense in relation to yourself or another. Once foresight is cast, you receive instantaneous warnings of impending danger or harm to the subject of the spell.",
                          desc: "This spell grants you a powerful sixth sense in relation to yourself or another. Once foresight is cast, you receive instantaneous warnings of impending danger or harm to the subject of the spell. You are never surprised or flat-footed. In addition, the spell gives you a general idea of what action you might take to best protect yourself and gives you a +2 insight bonus to AC and on Reflex saves. This insight bonus is lost whenever you would lose a Dexterity bonus to AC. When another creature is the subject of the spell, you receive warnings about that creature. You must communicate what you learn to the other creature for the warning to be useful, and the creature can be caught unprepared in the absence of such a warning. Shouting a warning, yanking a person back, and even telepathically communicating (via an appropriate spell) can all be accomplished before some danger befalls the subject, provided you act on the warning without delay. The subject, however, does not gain the insight bonus to AC and Reflex saves.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Form of the Dragon I", school: "Transmutation (Polymorph)", levels: "alchemist 6, arcanist 6, investigator 6, magus 6, sorcerer 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S, M (a scale of the dragon type you plan to assume)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 min./level (D)",
                          savingThrow: "see below;", sr: false,
                          summary: "You become a Medium chromatic or metallic dragon. You gain a +4 size bonus to Strength, a +2 size bonus to Constitution, a +4 natural armor bonus, fly 60 feet (poor), darkvision 60 feet, a breath…",
                          desc: "You become a Medium chromatic or metallic dragon. You gain a +4 size bonus to Strength, a +2 size bonus to Constitution, a +4 natural armor bonus, fly 60 feet (poor), darkvision 60 feet, a breath weapon, and resistance to one element. You also gain one bite (1d8), two claws (1d6), and two wing attacks (1d4). Your breath weapon and resistance depend on the type of dragon. You can only use the breath weapon once per casting of this spell. All breath weapons deal 6d8 points of damage and allow a Reflex save for half damage. In addition, some of the dragon types grant additional abilities, as noted below. Black dragon : 60-foot line of acid, resist acid 20, swim 60 feet",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Form of the Dragon II", school: "Transmutation (Polymorph)", levels: "alchemist 6, arcanist 6, investigator 6, magus 6, sorcerer 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S, M (a scale of the dragon type you plan to assume)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 min./level (D)",
                          savingThrow: "see below;", sr: false,
                          summary: "This spell functions as form of the dragon I except that it also allows you to assume the form of a Large chromatic or metallic dragon.",
                          desc: "This spell functions as form of the dragon I except that it also allows you to assume the form of a Large chromatic or metallic dragon. You gain the following abilities: a +6 size bonus to Strength, a +4 size bonus to Constitution, a +6 natural armor bonus, fly 90 feet (poor), darkvision 60 feet, a breath weapon, DR 5/magic, and resistance to one element. You also gain one bite (2d6), two claws (1d8), two wing attacks (1d6), and one tail slap attack (1d8). You can only use the breath weapon twice per casting of this spell, and you must wait 1d4 rounds between uses. All breath weapons deal 8d8 points of damage and allow a Reflex save for half damage. Line breath weapons increase to 80-foot lines and cones increase to 40-foot cones.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Form of the Dragon III", school: "Transmutation (Polymorph)", levels: "alchemist 6, arcanist 6, investigator 6, magus 6, sorcerer 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S, M (a scale of the dragon type you plan to assume)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 min./level (D)",
                          savingThrow: "see below;", sr: false,
                          summary: "This spell functions as form of the dragon II save that it also allows you to take the form of a Huge chromatic or metallic dragon.",
                          desc: "This spell functions as form of the dragon II save that it also allows you to take the form of a Huge chromatic or metallic dragon. You gain the following abilities: a +10 size bonus to Strength, a +8 size bonus to Constitution, a +8 natural armor bonus, fly 120 feet (poor), blindsense 60 feet, darkvision 120 feet, a breath weapon, DR 10/magic, frightful presence (DC equal to the DC for this spell), and immunity to one element (of the same type",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Fox's Cunning", school: "Transmutation", levels: "alchemist 2, arcanist 2, bard 2, investigator 2, medium 2, psychic 2, redmantisassassin 2, skald 2, sorcerer 2, summoner 2, summoner (unchained) 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (hairs or dung from a fox)",
                          range: "touch", area: "", targets: "you",
                          duration: "1 min./level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The target becomes smarter. The spell grants a +4 enhancement bonus to Intelligence, adding the usual benefits to Intelligence-based skill checks and other uses of the Intelligence modifier.",
                          desc: "The target becomes smarter. The spell grants a +4 enhancement bonus to Intelligence, adding the usual benefits to Intelligence-based skill checks and other uses of the Intelligence modifier. Wizards (and other spellcasters who rely on Intelligence) affected by this spell do not gain any additional bonus spells for the increased Intelligence, but the save DCs for spells they cast while under this spell's effect do increase. This spell doesn't grant extra skill ranks. Fox's Cunning, Mass",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Fox's Cunning, Mass", school: "Transmutation", levels: "alchemist 2, arcanist 2, bard 2, investigator 2, medium 2, psychic 2, redmantisassassin 2, skald 2, sorcerer 2, summoner 2, summoner (unchained) 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (hairs or dung from a fox)",
                          range: "touch", area: "", targets: "you",
                          duration: "1 min./level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions like fox's cunning , except that it affects multiple creatures.",
                          desc: "This spell functions like fox's cunning , except that it affects multiple creatures.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Freedom", school: "Abjuration", levels: "arcanist 9, psychic 9, sorcerer 9, wizard 9",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels) or see text", area: "", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The subject is freed from spells and effects that restrict movement, including binding ,",
                          desc: "The subject is freed from spells and effects that restrict movement, including binding ,",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Freedom of Movement", school: "Abjuration", levels: "alchemist 4, bard 4, cleric 4, druid 4, hunter 4, inquisitor 4, investigator 4, medium 4, mesmerist 4, occultist 4, oracle 4, psychic 4, ranger 4, skald 4, spiritualist 4, warpriest 4",
                          castingTime: "1 standard action", components: "V, S, M (a leather strip bound to the target), DF",
                          range: "personal or touch", area: "", targets: "you or creature touched",
                          duration: "10 min./level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell enables you or a creature you touch to move and attack normally for the duration of the spell, even under the influence of magic that usually impedes movement, such as paralysis, solid fog…",
                          desc: "This spell enables you or a creature you touch to move and attack normally for the duration of the spell, even under the influence of magic that usually impedes movement, such as paralysis, solid fog ,",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Freezing Sphere", school: "Evocation", levels: "arcanist 6, magus 6, occultist 6, sorcerer 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S, F (a small crystal sphere)",
                          range: "long (400 ft. + 40 ft./level)", area: "", targets: "",
                          duration: "instantaneous or 1 round/level; see text",
                          savingThrow: "Reflex half; see text;", sr: true,
                          summary: "Freezing sphere creates a frigid globe of cold energy that streaks from your fingertips to the location you select, where it explodes in a 40-foot-radius burst, dealing 1d6 points of cold damage per…",
                          desc: "Freezing sphere creates a frigid globe of cold energy that streaks from your fingertips to the location you select, where it explodes in a 40-foot-radius burst, dealing 1d6 points of cold damage per caster level (maximum 15d6) to each creature in the area. A creature of the water subtype instead takes 1d8 points of cold damage per caster level (maximum 15d8) and is staggered for 1d4 rounds. If the",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Gaseous Form", school: "Transmutation", levels: "alchemist 3, arcanist 3, bard 3, investigator 3, magus 3, medium 3, occultist 3, psychic 3, redmantisassassin 3, skald 3, sorcerer 3, spiritualist 3, wizard 3",
                          castingTime: "1 standard action", components: "S, M/DF (a bit of gauze and a wisp of smoke)",
                          range: "touch", area: "", targets: "willing corporeal creature touched",
                          duration: "2 min./level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "The subject and all its gear become insubstantial, misty, and translucent.",
                          desc: "The subject and all its gear become insubstantial, misty, and translucent. Its material armor (including natural armor) becomes worthless, though its size, Dexterity, deflection bonuses, and armor bonuses from force effects still apply. The subject gains DR 10/magic and becomes immune to poison, sneak attacks, and critical hits. It can't attack or cast spells with verbal, somatic, material, or focus components while in gaseous form. This does not rule out the use of certain spells that the subject may have prepared using the feats Silent Spell, Still Spell, and Eschew Materials. The subject also loses supernatural abilities while in gaseous form. If it has a touch spell ready to use, that spell is discharged harmlessly when the gaseous form spell takes effect. A gaseous creature can't run, but it can fly at a speed of 10 feet and automatically succeeds on all Fly skill checks. It can pass through small holes or narrow openings, even mere cracks, with all it was wearing or holding in its hands, as long as the spell persists. The creature is subject to the effects of wind, and it can't enter water or other liquid. It also can't manipulate objects or activate items, even those carried along with its gaseous form. Continuously active items remain active, though in some cases their effects may be moot.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Gate", school: "Conjuration (Creation Or Calling)", levels: "arcanist 9, cleric 9, oracle 9, psychic 9, sorcerer 9, wizard 9",
                          castingTime: "1 standard action", components: "V, S, M (see text)",
                          range: "medium (100 ft. + 10 ft./level)", area: "see text", targets: "",
                          duration: "instantaneous or concentration (up to 1 round/level); see text",
                          savingThrow: "none;", sr: false,
                          summary: "Casting a gate spell has two effects. First, it creates an interdimensional connection between your plane of existence and a plane you specify, allowing travel between those two planes in either…",
                          desc: "Casting a gate spell has two effects. First, it creates an interdimensional connection between your plane of existence and a plane you specify, allowing travel between those two planes in either direction. Second, you may then call a particular individual or kind of being through the",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Geas, Lesser", school: "Enchantment (Compulsion)", levels: "arcanist 4, bard 3, inquisitor 4, mesmerist 3, psychic 4, skald 3, sorcerer 4, witch 4, wizard 4",
                          castingTime: "1 round", components: "V",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature with 7 HD or less",
                          duration: "1 day/level or until discharged (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "A lesser geas places a magical command on a creature to carry out some service or to refrain from some action or course of activity, as desired by you.",
                          desc: "A lesser geas places a magical command on a creature to carry out some service or to refrain from some action or course of activity, as desired by you. The creature must have 7 or fewer HD and be able to understand you. While a geas cannot compel a creature to kill itself or perform acts that would result in certain death, it can cause almost any other course of activity.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Geas/Quest", school: "Enchantment (Compulsion)", levels: "arcanist 4, bard 3, inquisitor 4, mesmerist 3, psychic 4, skald 3, sorcerer 4, witch 4, wizard 4",
                          castingTime: "1 round", components: "V",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature with 7 HD or less",
                          duration: "1 day/level or until discharged (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions similarly to lesser geas , except that it affects a creature of any HD and allows no saving throw. If the subject is prevented from obeying the",
                          desc: "This spell functions similarly to lesser geas , except that it affects a creature of any HD and allows no saving throw. If the subject is prevented from obeying the",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Gentle Repose", school: "Necromancy", levels: "arcanist 3, cleric 2, medium 2, occultist 3, oracle 2, shaman 2, sorcerer 3, spiritualist 2, warpriest 2, witch 2, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M/DF (salt and a copper piece for each of the corpse's eyes)",
                          range: "touch", area: "", targets: "corpse touched",
                          duration: "1 day/level",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "You preserve the remains of a dead creature so that they do not decay. Doing so effectively extends the time limit on raising that creature from the dead (see raise dead ).",
                          desc: "You preserve the remains of a dead creature so that they do not decay. Doing so effectively extends the time limit on raising that creature from the dead (see raise dead ). Days spent under the influence of this spell don't count against the time limit. Additionally, this spell makes transporting a slain (and thus decaying) comrade less unpleasant. The spell also works on severed body parts and the like.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Ghost Sound", school: "Illusion (Figment)", levels: "adept 0, arcanist 0, bard 0, magus 0, medium 0, mesmerist 0, occultist 0, psychic 0, skald 0, sorcerer 0, wizard 0",
                          castingTime: "1 standard action", components: "V, S, M (a bit of wool or a small lump of wax)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "illusory sounds", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "Will disbelief;", sr: false,
                          summary: "Ghost sound allows you to create a volume of sound that rises, recedes, approaches, or remains at a fixed place.",
                          desc: "Ghost sound allows you to create a volume of sound that rises, recedes, approaches, or remains at a fixed place. You choose what type of sound ghost sound creates when casting it and cannot thereafter change the sound's basic character. The volume of sound created depends on your level. You can produce as much noise as four normal humans per caster level (maximum 40 humans). Thus, talking, singing, shouting, walking, marching, or running sounds can be created. The noise a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Ghoul Touch", school: "Necromancy", levels: "arcanist 2, bloodrager 2, sorcerer 2, spiritualist 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (cloth from a ghoul or earth from a ghoul's lair)",
                          range: "touch", area: "", targets: "living humanoid touched",
                          duration: "1d6+2 rounds",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "Imbuing you with negative energy, this spell allows you to paralyze a single living humanoid for the duration of the spell with a successful melee touch attack.",
                          desc: "Imbuing you with negative energy, this spell allows you to paralyze a single living humanoid for the duration of the spell with a successful melee touch attack. A paralyzed subject exudes a carrion stench that causes all living creatures (except you) in a 10-foot-radius spread to become sickened (Fortitude negates). A neutralize poison spell removes the effect from a sickened creature, and creatures immune to poison are unaffected by the stench. This is a poison effect.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Giant Form I", school: "Transmutation (Polymorph)", levels: "alchemist 6, arcanist 7, investigator 6, sorcerer 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S, M (a piece of the creature whose form you plan to assume)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 min./level (D)",
                          savingThrow: "None", sr: false,
                          summary: "When you cast this spell you can assume the form of any Large humanoid creature of the giant subtype.",
                          desc: "When you cast this spell you can assume the form of any Large humanoid creature of the giant subtype. Once you assume your new form, you gain the following abilities: a +6 size bonus to Strength, a –2 penalty to Dexterity, a +4 size bonus to Constitution, a +4 natural armor bonus, and low-light vision. If the form you assume has any of the following abilities, you gain the listed ability: darkvision 60 feet, rend (2d6 damage), regeneration 5, rock catching, and rock throwing (range 60 feet, 2d6 damage). If the creature has immunity or resistance to any elements, you gain resistance 20 to those elements. If the creature has vulnerability to an element, you gain that vulnerability. Giant Form II",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Giant Form II", school: "Transmutation (Polymorph)", levels: "alchemist 6, arcanist 7, investigator 6, sorcerer 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S, M (a piece of the creature whose form you plan to assume)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 min./level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as giant form I except that it also allows you to assume the form of any Huge creature of the giant type.",
                          desc: "This spell functions as giant form I except that it also allows you to assume the form of any Huge creature of the giant type. You gain the following abilities: a +8 size bonus to Strength, a –2 penalty to Dexterity, a +6 size bonus to Constitution, a +6 natural armor bonus, low-light vision, and a +10 foot enhancement bonus to your speed. If the form you assume has any of the following abilities, you gain the listed ability: swim 60 feet, darkvision 60 feet, rend (2d8 damage), regeneration 5, rock catching, and rock throwing (range 120 feet, 2d10 damage). If the creature has immunity or resistance to one element, you gain that immunity or resistance. If the creature has vulnerability to an element, you gain that vulnerability.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Giant Vermin", school: "Transmutation", levels: "cleric 4, druid 4, hunter 4, oracle 4, shaman 4, warpriest 4",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "1 or more vermin, no two of which can be more than 30 ft. apart",
                          duration: "1 min./level",
                          savingThrow: "none;", sr: true,
                          summary: "You turn a number of normal-sized centipedes, scorpions, or spiders into their giant counterparts.",
                          desc: "You turn a number of normal-sized centipedes, scorpions, or spiders into their giant counterparts. Only one type of vermin can be transmuted (so a single casting cannot affect both a centipede and a spider). The number of vermin which can be affected by this spell depends on your caster level, as noted on the table below. Giant vermin created by this spell do not attempt to harm you, but your control of such creatures is limited to simple commands (“Attack,” “Defend,” “Stop,” and so forth). Orders to attack a certain creature when it appears or guard against a particular occurrence are too complex for the vermin to understand. Unless commanded to do otherwise, the giant vermin attack whomever or whatever is near them. Caster Level",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Glibness", school: "Transmutation", levels: "bard 3, mesmerist 3, skald 3",
                          castingTime: "1 standard action", components: "S",
                          range: "personal", area: "", targets: "you",
                          duration: "10 min./level (D)",
                          savingThrow: "None", sr: false,
                          summary: "Your speech becomes fluent and more believable, causing those who hear you to believe every word you say. You gain a +20 bonus on Bluff checks made to convince another of the truth of your words.",
                          desc: "Your speech becomes fluent and more believable, causing those who hear you to believe every word you say. You gain a +20 bonus on Bluff checks made to convince another of the truth of your words. This bonus doesn't apply to other uses of the Bluff skill, such as feinting in combat, creating a diversion to hide, or communicating a hidden message via innuendo. If a magical effect is used against you that would detect your lies or force you to speak the truth, the user of the effect must succeed on a caster level check (1d20 + caster level) against a DC of 15 + your caster level to succeed. Failure means the effect does not detect your lies or force you to speak only the truth.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Glimpse of Truth", school: "Divination", levels: "adept 5, alchemist 6, arcanist 6, cleric 5, druid 7, inquisitor 5, investigator 6, magus 6, medium 4, mesmerist 6, occultist 5, oracle 5, psychic 5, shaman 5, sorcerer 6, spiritualist 6, summoner 5, summoner (unchained) 6, warpriest 5, witch 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S, M (an eye ointment that costs 250 gp)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 min./level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions like true seeing , except as noted above.",
                          desc: "This spell functions like true seeing , except as noted above.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Glimpse the Hidden", school: "Divination", levels: "adept 2, alchemist 2, arcanist 2, bard 3, bloodrager 2, inquisitor 2, investigator 2, mesmerist 3, occultist 2, psychic 2, skald 3, sorcerer 2, spiritualist 2, summoner 2, summoner (unchained) 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (talc and powdered silver)",
                          range: "personal", area: "", targets: "you",
                          duration: "10 min./level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions as see invisibility , except as noted here. This spell cannot be made permanent.",
                          desc: "This spell functions as see invisibility , except as noted here. This spell cannot be made permanent.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Glitterdust", school: "Conjuration (Creation)", levels: "arcanist 2, bard 2, bloodrager 2, magus 2, mesmerist 2, occultist 2, skald 2, sorcerer 2, summoner 2, summoner (unchained) 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (ground mica)",
                          range: "medium (100 ft. + 10 ft./level)", area: "creatures and objects within 10-ft.-radius spread", targets: "",
                          duration: "1 round/level",
                          savingThrow: "Will negates (blinding only);", sr: false,
                          summary: "A cloud of golden particles covers everyone and everything in the area, causing creatures to become blinded and visibly outlining invisible things for the duration of the spell.",
                          desc: "A cloud of golden particles covers everyone and everything in the area, causing creatures to become blinded and visibly outlining invisible things for the duration of the spell. All within the area are covered by the dust, which cannot be removed and continues to sparkle until it fades. Each round at the end of their turn blinded creatures may attempt new saving throws to end the blindness effect. Any creature covered by the dust takes a –40 penalty on Stealth checks.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Globe of Invulnerability", school: "Abjuration", levels: "arcanist 6, occultist 6, psychic 6, sorcerer 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S, M (a glass or crystal bead)",
                          range: "10 ft.", area: "10-ft.-radius spherical emanation, centered on you", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like lesser globe of invulnerability , except that it also excludes 4th-level spells and spell-like effects.",
                          desc: "This spell functions like lesser globe of invulnerability , except that it also excludes 4th-level spells and spell-like effects.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Globe of Invulnerability, Lesser", school: "Abjuration", levels: "arcanist 6, occultist 6, psychic 6, sorcerer 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S, M (a glass or crystal bead)",
                          range: "10 ft.", area: "10-ft.-radius spherical emanation, centered on you", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "An immobile, faintly shimmering magical sphere surrounds you and excludes all spell effects of 3rd level or lower.",
                          desc: "An immobile, faintly shimmering magical sphere surrounds you and excludes all spell effects of 3rd level or lower. The area or effect of any such spells does not include the area of the lesser globe of invulnerability . Such spells fail to affect any target located within the globe. Excluded effects include spell-like abilities and spells or spell-like effects from items. Any type of spell, however, can be cast through or out of the magical globe. Spells of 4th level and higher are not affected by the globe, nor are spells already in effect when the globe is cast. The globe can be brought down by a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Glyph of Warding", school: "Abjuration", levels: "cleric 3, inquisitor 3, oracle 3, warpriest 3, witch 3",
                          castingTime: "10 minutes", components: "V, S, M (powdered diamond worth 200 gp)",
                          range: "touch", area: "", targets: "",
                          duration: "permanent until discharged (D)",
                          savingThrow: "see text;", sr: true,
                          summary: "This powerful inscription harms those who enter, pass, or open the warded area or object. A glyph of warding can guard a bridge or passage, ward a portal, trap a chest or box, and so on.",
                          desc: "This powerful inscription harms those who enter, pass, or open the warded area or object. A glyph of warding can guard a bridge or passage, ward a portal, trap a chest or box, and so on. You set all of the conditions of the ward. Typically, any creature entering the warded area or opening the warded object without speaking a password (which you set when casting the spell) is subject to the magic it stores. Alternatively or in addition to a password trigger, glyphs can be set according to physical characteristics (such as height or weight) or creature type, subtype, or kind. Glyphs can also be set with respect to good, evil, law, or chaos, or to pass those of your religion. They cannot be set according to class, HD, or level. Glyphs respond to invisible creatures normally but are not triggered by those who travel past them ethereally. Multiple glyphs cannot be cast on the same area. However, if a cabinet has three different drawers, each can be separately warded. When casting the spell, you weave a tracery of faintly glowing lines around the warding sigil. A glyph can be placed to conform to any shape up to the limitations of your total square footage. When the spell is completed, the glyph and tracery become nearly invisible. Glyphs cannot be affected or bypassed by such means as physical or magical probing, though they can be dispelled.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Glyph of Warding, Greater", school: "Abjuration", levels: "cleric 3, inquisitor 3, oracle 3, warpriest 3, witch 3",
                          castingTime: "10 minutes", components: "V, S, M (powdered diamond worth 200 gp)",
                          range: "touch", area: "", targets: "",
                          duration: "permanent until discharged (D)",
                          savingThrow: "see text;", sr: true,
                          summary: "This spell functions like glyph of warding , except that a",
                          desc: "This spell functions like glyph of warding , except that a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Good Hope", school: "Enchantment (Compulsion)", levels: "bard 3, skald 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one living creature/level, no two of which can be more than 30 ft. apart",
                          duration: "1 min./level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell instills powerful hope in the subjects. Each affected creature gains a +2 morale bonus on saving throws, attack rolls, ability checks, skill checks, and weapon damage rolls.",
                          desc: "This spell instills powerful hope in the subjects. Each affected creature gains a +2 morale bonus on saving throws, attack rolls, ability checks, skill checks, and weapon damage rolls. Good hope counters and dispels",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Goodberry", school: "Transmutation", levels: "druid 1, hunter 1, shaman 1",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "2d4 fresh berries touched",
                          duration: "1 day/level",
                          savingThrow: "none;", sr: true,
                          summary: "Casting goodberry makes 2d4 freshly picked berries magical. You (as well as any other druid of 3rd or higher level) can immediately discern which berries are affected.",
                          desc: "Casting goodberry makes 2d4 freshly picked berries magical. You (as well as any other druid of 3rd or higher level) can immediately discern which berries are affected. Each transmuted berry provides nourishment as if it were a normal meal for a Medium creature. The berry also cures 1 point of damage when eaten, subject to a maximum of 8 points of such curing in any 24-hour period.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Grasping Hand", school: "Evocation", levels: "arcanist 7, psychic 7, sorcerer 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S, F (a soft glove)",
                          range: "medium (100 ft. + 10 ft./level)", area: "10-ft. hand", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: true,
                          summary: "This spell functions as interposing hand , except that it can also grapple one opponent you select. The",
                          desc: "This spell functions as interposing hand , except that it can also grapple one opponent you select. The",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Grasping Tentacles", school: "Conjuration (Creation)", levels: "arcanist 4, bloodrager 4, magus 4, psychic 4, sorcerer 4, spiritualist 4, summoner 3, summoner (unchained) 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (octopus or squid tentacle)",
                          range: "medium (100 ft. + 10 ft./level)", area: "20-ft.-radius spread", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as black tentacles , except the tentacles blindly grasp at the targets’ eyes and ears, and tug at their hair, clothes, and equipment.",
                          desc: "This spell functions as black tentacles , except the tentacles blindly grasp at the targets’ eyes and ears, and tug at their hair, clothes, and equipment. Instead of grapple attempts, the tentacles attempt dirty trick combat maneuver checks (CMB = your caster level + 4 [the tentacles’ Strength bonus] + 1 [the tentacles’ size bonus]). Roll on the following table to determine the effect of a successful dirty trick combat maneuver check.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Grease", school: "Conjuration (Creation)", levels: "arcanist 1, bard 1, magus 1, mesmerist 1, skald 1, sorcerer 1, summoner 1, summoner (unchained) 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M (butter)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one object or 10-ft. square",
                          duration: "1 min./level (D)",
                          savingThrow: "see text;", sr: false,
                          summary: "A grease spell covers a solid surface with a layer of slippery grease. Any creature in the area when the spell is cast must make a successful Reflex save or fall.",
                          desc: "A grease spell covers a solid surface with a layer of slippery grease. Any creature in the area when the spell is cast must make a successful Reflex save or fall. A creature can walk within or through the area of grease at half normal speed with a DC 10 Acrobatics check. Failure means it can't move that round (and must then make a Reflex save or fall), while failure by 5 or more means it falls (see the Acrobatics skill for details). Creatures that do not move on their turn do not need to make this check and are not considered flat-footed. The spell can also be used to create a greasy coating on an item. Material objects not in use are always affected by this spell, while an object wielded or employed by a creature requires its bearer to make a Reflex saving throw to avoid the effect. If the initial saving throw fails, the creature immediately drops the item. A saving throw must be made in each round that the creature attempts to pick up or use the",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Grease, Greater", school: "Conjuration (Creation)", levels: "arcanist 1, bard 1, magus 1, mesmerist 1, skald 1, sorcerer 1, summoner 1, summoner (unchained) 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M (butter)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one object or 10-ft. square",
                          duration: "1 min./level (D)",
                          savingThrow: "see text;", sr: false,
                          summary: "This spell functions like grease , except as noted here. When you use this spell to cover a solid surface with slippery grease, the 10-foot squares must form a continuous area, each part of which…",
                          desc: "This spell functions like grease , except as noted here. When you use this spell to cover a solid surface with slippery grease, the 10-foot squares must form a continuous area, each part of which must be within the spell’s range. When you use this spell to create a greasy coating on items, no two of the targeted items can be more than 30 feet apart. You cannot target both items and surfaces with a single casting of this spell.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Guards and Wards", school: "Abjuration", levels: "arcanist 6, sorcerer 6, witch 6, wizard 6",
                          castingTime: "30 minutes", components: "V, S, M (burning incense, a small measure of brimstone and oil, a knotted string, and a small amount of blood), F (a small silver rod)",
                          range: "anywhere within the area to be warded", area: "up to 200 sq. ft./level (S)", targets: "",
                          duration: "2 hours/level (D)",
                          savingThrow: "see text;", sr: false,
                          summary: "This powerful spell is primarily used to defend a stronghold or fortress by creating a number of magical wards and effects. The ward protects 200 square feet per caster level.",
                          desc: "This powerful spell is primarily used to defend a stronghold or fortress by creating a number of magical wards and effects. The ward protects 200 square feet per caster level. The warded area can be as much as 20 feet high, and shaped as you desire. You can ward several stories of a stronghold by dividing the area among them; you must be somewhere within the area to be warded to cast the spell. The spell creates the following magical effects within the warded area. Fog : Fog fills all corridors, obscuring all sight, including darkvision, beyond 5 feet. A creature within 5 feet has concealment (attacks have a 20% miss chance). Creatures farther away have total concealment (50% miss chance, and the attacker cannot use sight to locate the target). Saving Throw: none. Spell Resistance: no.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Guidance", school: "Divination", levels: "adept 0, cleric 0, druid 0, hunter 0, inquisitor 0, medium 0, occultist 0, oracle 0, shaman 0, spiritualist 0, summoner 0, summoner (unchained) 0, warpriest 0, witch 0",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 minute or until discharged",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell imbues the subject with a touch of divine guidance. The creature gets a +1 competence bonus on a single attack roll, saving throw, or skill check.",
                          desc: "This spell imbues the subject with a touch of divine guidance. The creature gets a +1 competence bonus on a single attack roll, saving throw, or skill check. It must choose to use the bonus before making the roll to which it applies.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Gust of Wind", school: "Evocation", levels: "arcanist 2, bloodrager 2, druid 2, hunter 2, magus 2, occultist 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "60 ft.", area: "line-shaped gust of severe wind emanating out from you to the extreme of the range", targets: "",
                          duration: "1 round",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "This spell creates a severe blast of air (approximately 50 mph) that originates from you, affecting all creatures in its path. All flying creatures in this area take a –4 penalty on Fly skill checks.",
                          desc: "This spell creates a severe blast of air (approximately 50 mph) that originates from you, affecting all creatures in its path. All flying creatures in this area take a –4 penalty on Fly skill checks. Tiny or smaller flying creatures must make a DC 25 Fly skill check or be blown back 2d6 × 10 feet and take 2d6 points of damage. Small or smaller flying creatures must make a DC 20 Fly skill check to move against the force of the wind. A Tiny or smaller creature on the ground is knocked down and rolled 1d4 × 10 feet, taking 1d4 points of nonlethal damage per 10 feet. Small creatures are knocked prone by the force of the wind. Medium or smaller creatures are unable to move forward against the force of the wind unless they succeed at a DC 15 Strength check. Large or larger creatures may move normally within a gust of wind effect. This spell can't move a creature beyond the limit of it's range. Any creature, regardless of size, takes a –4 penalty on ranged attacks and Perception checks in the area of a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Hallow", school: "Evocation", levels: "cleric 5, druid 5, hunter 5, inquisitor 5, oracle 5, warpriest 5",
                          castingTime: "24 hours", components: "V, S, M (herbs, oils, and incense worth at least 1,000 gp, plus 1,000 gp per level of he spell to be included in the hallowed area), DF",
                          range: "touch", area: "40-ft. radius emanating from the touched point", targets: "",
                          duration: "instantaneous",
                          savingThrow: "see text;", sr: false,
                          summary: "Hallow makes a particular site, building, or structure a holy site. This has four major effects. First, the site is warded by a",
                          desc: "Hallow makes a particular site, building, or structure a holy site. This has four major effects. First, the site is warded by a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Hallucinatory Terrain", school: "Illusion (Glamer)", levels: "arcanist 4, bard 4, mesmerist 4, psychic 4, redmantisassassin 4, skald 4, sorcerer 4, wizard 4",
                          castingTime: "10 minutes", components: "V, S, M (a stone, a twig, and a green leaf)",
                          range: "long (400 ft. + 40 ft./level)", area: "one 30-ft. cube/level (S)", targets: "",
                          duration: "2 hours/level (D)",
                          savingThrow: "Will disbelief (if interacted with);", sr: false,
                          summary: "You make natural terrain look, sound, and smell like some other sort of natural terrain. Structures, equipment, and creatures within the area are not hidden or changed in appearance.",
                          desc: "You make natural terrain look, sound, and smell like some other sort of natural terrain. Structures, equipment, and creatures within the area are not hidden or changed in appearance.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Halt Undead", school: "Necromancy", levels: "arcanist 3, inquisitor 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a pinch of sulfur and powdered garlic)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "up to three undead creatures, no two of which can be more than 30 ft. apart",
                          duration: "1 round/level",
                          savingThrow: "Will negates (see text);", sr: true,
                          summary: "This spell renders as many as three undead creatures immobile. A nonintelligent undead creature gets no saving throw; an intelligent undead creature does.",
                          desc: "This spell renders as many as three undead creatures immobile. A nonintelligent undead creature gets no saving throw; an intelligent undead creature does. If the spell is successful, it renders the undead creature immobile for the duration of the spell (similar to the effect of hold person on a living creature). The effect is broken if the",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Harm", school: "Necromancy", levels: "cleric 6, inquisitor 6, occultist 6, oracle 6, shaman 7, spiritualist 6, warpriest 6, witch 7",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "instantaneous",
                          savingThrow: "Will half; see text;", sr: true,
                          summary: "Harm charges a subject with negative energy that deals 10 points of damage per caster level (to a maximum of 150 points at 15th level). If the creature successfully saves, harm deals half this amount.",
                          desc: "Harm charges a subject with negative energy that deals 10 points of damage per caster level (to a maximum of 150 points at 15th level). If the creature successfully saves, harm deals half this amount.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Haste", school: "Transmutation", levels: "alchemist 3, arcanist 3, bard 3, bloodrager 3, investigator 3, magus 3, medium 2, occultist 3, psychic 3, redmantisassassin 3, skald 3, sorcerer 3, spiritualist 3, summoner 2, summoner (unchained) 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a shaving of licorice root)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature/level, no two of which can be more than 30 ft. apart",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "The transmuted creatures move and act more quickly than normal. This extra speed has several effects.",
                          desc: "The transmuted creatures move and act more quickly than normal. This extra speed has several effects. When making a full attack action, a hasted creature may make one extra attack with one natural or manufactured weapon. The attack is made using the creature's full base attack bonus, plus any modifiers appropriate to the situation. (This effect is not cumulative with similar effects, such as that provided by a speed weapon, nor does it actually grant an extra action, so you can't use it to cast a second spell or otherwise take an extra action in the round.) A hasted creature gains a +1 bonus on attack rolls and a +1 dodge bonus to AC and Reflex saves. Any condition that makes you lose your Dexterity bonus to Armor Class (if any) also makes you lose dodge bonuses. All of the hasted creature's modes of movement (including land movement, burrow, climb, fly, and swim) increase by 30 feet, to a maximum of twice the subject's normal speed using that form of movement. This increase counts as an enhancement bonus, and it affects the creature's jumping distance as normal for increased speed. Multiple",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Heal", school: "Conjuration (Healing)", levels: "adept 5, alchemist 6, cleric 6, druid 7, inquisitor 6, investigator 6, occultist 6, oracle 6, shaman 7, spiritualist 6, warpriest 6, witch 7",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "instantaneous",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "Heal enables you to channel positive energy into a creature to wipe away injury and afflictions.",
                          desc: "Heal enables you to channel positive energy into a creature to wipe away injury and afflictions. It immediately ends any and all of the following adverse conditions affecting the target: ability damage, blinded, confused, dazed, dazzled, deafened, diseased, exhausted, fatigued, feebleminded, insanity, nauseated, poisoned, sickened, and stunned. It also cures 10 hit points of damage per level of the caster, to a maximum of 150 points at 15th level. Heal does not remove negative levels or restore permanently drained ability score points. If used against an undead creature,",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Heal Mount", school: "Conjuration (Healing)", levels: "paladin 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "your mount touched",
                          duration: "instantaneous",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions like heal , but it affects only the paladin's special mount (typically a horse).",
                          desc: "This spell functions like heal , but it affects only the paladin's special mount (typically a horse).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Heal, Mass", school: "Conjuration (Healing)", levels: "adept 5, alchemist 6, cleric 6, druid 7, inquisitor 6, investigator 6, occultist 6, oracle 6, shaman 7, spiritualist 6, warpriest 6, witch 7",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "instantaneous",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions like heal , except as noted above. The maximum number of hit points restored to each creature is 250.",
                          desc: "This spell functions like heal , except as noted above. The maximum number of hit points restored to each creature is 250.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Heat Metal", school: "Transmutation", levels: "druid 2, hunter 2, occultist 2, psychic 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "metal equipment of one creature per two levels, no two of which can be more than 30 ft. apart, or 25 lbs. of metal/level, all of which must be within a 30-ft. circle",
                          duration: "7 rounds",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "Heat metal causes metal objects to become red-hot. Unattended, nonmagical metal gets no saving throw. Magical metal is allowed a saving throw against the spell.",
                          desc: "Heat metal causes metal objects to become red-hot. Unattended, nonmagical metal gets no saving throw. Magical metal is allowed a saving throw against the spell. An item in a creature's possession uses the creature's saving throw bonus unless its own is higher. A creature takes fire damage if its equipment is heated. It takes full damage if its armor, shield, or weapon is affected. The creature takes minimum damage (1 point or 2 points; see the table) if it's not wearing or wielding such an item. On the first round of the spell, the metal becomes warm and uncomfortable to touch but deals no damage. The same effect also occurs on the last round of the spell's duration. During the second (and also the next-to-last) round, intense heat causes pain and damage. In the third, fourth, and fifth rounds, the metal is searing hot, and causes more damage, as shown on the table below.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Helping Hand", school: "Evocation", levels: "cleric 3, medium 2, oracle 3, psychic 3, spiritualist 3, warpriest 3",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "5 miles", area: "ghostly hand", targets: "",
                          duration: "1 hour/level",
                          savingThrow: "none;", sr: false,
                          summary: "You create the ghostly image of a hand, which you can send to find a creature within 5 miles. The hand then beckons to that creature and leads it to you if the creature is willing to follow.",
                          desc: "You create the ghostly image of a hand, which you can send to find a creature within 5 miles. The hand then beckons to that creature and leads it to you if the creature is willing to follow. When the spell is cast, you specify a person (or any creature) by physical description, which can include race, gender, and appearance but not ambiguous factors such as level, alignment, or class. When the description is done, the hand streaks off in search of a subject that fits the description. The amount of time it takes to find the subject depends on how far away he is, as detailed on the following table. Distance",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Heroes' Feast", school: "Conjuration (Creation)", levels: "bard 6, cleric 6, inquisitor 6, oracle 6, skald 6, warpriest 6",
                          castingTime: "10 minutes", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "feast for one creature/level", targets: "",
                          duration: "1 hour plus 12 hours; see text",
                          savingThrow: "none;", sr: false,
                          summary: "You bring forth a great feast, including a magnificent table, chairs, service, and food and drink. The feast takes 1 hour to consume, and the beneficial effects do not set in until this hour is over.",
                          desc: "You bring forth a great feast, including a magnificent table, chairs, service, and food and drink. The feast takes 1 hour to consume, and the beneficial effects do not set in until this hour is over. Every creature partaking of the feast is cured of all sickness and nausea, receives the benefits of both neutralize poison and",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Heroism", school: "Enchantment (Compulsion)", levels: "alchemist 3, arcanist 3, bard 2, bloodrager 3, inquisitor 3, investigator 3, medium 2, psychic 3, skald 2, sorcerer 3, spiritualist 3, summoner 3, summoner (unchained) 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 min./level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell imbues a single creature with great bravery and morale in battle. The target gains a +2 morale bonus on attack rolls, saves, and skill checks.",
                          desc: "This spell imbues a single creature with great bravery and morale in battle. The target gains a +2 morale bonus on attack rolls, saves, and skill checks.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Heroism, Greater", school: "Enchantment (Compulsion)", levels: "alchemist 3, arcanist 3, bard 2, bloodrager 3, inquisitor 3, investigator 3, medium 2, psychic 3, skald 2, sorcerer 3, spiritualist 3, summoner 3, summoner (unchained) 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 min./level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions like heroism , except the creature gains a +4 morale bonus on attack rolls, saves, and skill checks, immunity to fear effects, and temporary hit points equal to your caster level…",
                          desc: "This spell functions like heroism , except the creature gains a +4 morale bonus on attack rolls, saves, and skill checks, immunity to fear effects, and temporary hit points equal to your caster level (maximum 20).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Hide from Animals", school: "Abjuration", levels: "druid 1, hunter 1, ranger 1, shaman 1",
                          castingTime: "1 standard action", components: "S, DF",
                          range: "touch", area: "", targets: "one creature touched/level",
                          duration: "10 min./level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "Animals cannot sense the warded creatures. Even extraordinary or supernatural sensory capabilities, such as blindsense, blindsight, scent, and tremorsense, cannot detect or locate warded creatures.",
                          desc: "Animals cannot sense the warded creatures. Even extraordinary or supernatural sensory capabilities, such as blindsense, blindsight, scent, and tremorsense, cannot detect or locate warded creatures. Animals simply act as though the warded creatures are not there. If a warded character touches an animal or attacks any creature, even with a spell, the spell ends for all recipients.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Hide from Undead", school: "Abjuration", levels: "cleric 1, inquisitor 1, oracle 1, warpriest 1",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "one touched creature/level",
                          duration: "10 min./level (D)",
                          savingThrow: "Will negates (harmless); see text;", sr: true,
                          summary: "Undead cannot see, hear, or smell creatures warded by this spell.",
                          desc: "Undead cannot see, hear, or smell creatures warded by this spell. Even extraordinary or supernatural sensory capabilities, such as blindsense, blindsight, scent, and tremorsense, cannot detect or locate warded creatures. Nonintelligent undead creatures (such as skeletons or zombies) are automatically affected and act as though the warded creatures are not there. An intelligent undead creature gets a single Will saving throw. If it fails, the subject can't see any of the warded creatures. If it has reason to believe unseen opponents are present, however, it can attempt to find or strike them. If a warded creature attempts to channel positive energy, turn or command undead, touches an undead creature, or attacks any creature (even with a spell), the spell ends for all recipients. Hide from Undead, Greater",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Hide from Undead, Greater", school: "Abjuration", levels: "cleric 1, inquisitor 1, oracle 1, warpriest 1",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "one touched creature/level",
                          duration: "10 min./level (D)",
                          savingThrow: "Will negates (harmless); see text;", sr: true,
                          summary: "This spell functions as hide from undead , except the spell does not immediately end if a warded creature attempts to turn or command undead, channels positive energy, touches an undead creature, or…",
                          desc: "This spell functions as hide from undead , except the spell does not immediately end if a warded creature attempts to turn or command undead, channels positive energy, touches an undead creature, or attacks any creature. Instead, when the warded creature takes one of these actions, an intelligent undead creature can attempt another Will saving throw to negate the effects of the spell.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Hideous Laughter", school: "Enchantment (Compulsion)", levels: "arcanist 2, bard 1, medium 2, mesmerist 1, psychic 2, skald 1, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (tiny fruit tarts and a feather)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature; see text",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell afflicts the subject with uncontrollable laughter. It collapses into gales of manic laughter, falling prone. The subject can take no actions while laughing, but is not considered helpless.",
                          desc: "This spell afflicts the subject with uncontrollable laughter. It collapses into gales of manic laughter, falling prone. The subject can take no actions while laughing, but is not considered helpless. After the spell ends, it can act normally. On the creature's next turn, it may attempt a new saving throw to end the effect. This is a full round action that does not provoke attacks of opportunity. If this save is successful, the effect ends. If not, the creature continues laughing for the entire duration. A creature with an Intelligence score of 2 or lower is not affected. A creature whose type is different from the caster's receives a +4 bonus on its saving throw, because humor doesn't “translate” well.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Hold Animal", school: "Enchantment (Compulsion)", levels: "druid 2, hunter 2, mesmerist 2, psychic 2, ranger 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one animal",
                          duration: "1 round/level (D); see text",
                          savingThrow: "Will negates; see text;", sr: true,
                          summary: "This spell functions like hold person , except that it affects an animal instead of a humanoid.",
                          desc: "This spell functions like hold person , except that it affects an animal instead of a humanoid.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Hold Fey", school: "Enchantment (Compulsion)", levels: "antipaladin 2, arcanist 3, bard 2, bloodrager 3, cleric 2, inquisitor 2, medium 2, mesmerist 2, occultist 3, oracle 2, psychic 2, shaman 2, skald 2, sorcerer 3, warpriest 2, witch 2, wizard 3",
                          castingTime: "1 standard action", components: "V, S, F/DF (a small, straight piece of iron)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one humanoid creature",
                          duration: "1 round/level (D); see text",
                          savingThrow: "Will negates; see text;", sr: true,
                          summary: "This spell functions as per hold person , except it affects a fey instead of a humanoid. Hold Person, Mass",
                          desc: "This spell functions as per hold person , except it affects a fey instead of a humanoid. Hold Person, Mass",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Hold Monster", school: "Enchantment (Compulsion)", levels: "arcanist 5, bard 4, inquisitor 4, medium 4, mesmerist 4, occultist 4, psychic 5, skald 4, sorcerer 5, summoner 4, summoner (unchained) 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M/DF (one hard metal bar or rod, which can be as small as a three-penny nail)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one living creature",
                          duration: "1 round/level (D); see text",
                          savingThrow: "Will negates; see text;", sr: true,
                          summary: "This spell functions like hold person , except that it affects any living creature that fails its Will save. Hold Monster, Mass",
                          desc: "This spell functions like hold person , except that it affects any living creature that fails its Will save. Hold Monster, Mass",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Hold Monster, Mass", school: "Enchantment (Compulsion)", levels: "arcanist 5, bard 4, inquisitor 4, medium 4, mesmerist 4, occultist 4, psychic 5, skald 4, sorcerer 5, summoner 4, summoner (unchained) 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M/DF (one hard metal bar or rod, which can be as small as a three-penny nail)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one living creature",
                          duration: "1 round/level (D); see text",
                          savingThrow: "Will negates; see text;", sr: true,
                          summary: "This spell functions like hold person , except that it affects multiple creatures and holds any living creature that fails its Will save.",
                          desc: "This spell functions like hold person , except that it affects multiple creatures and holds any living creature that fails its Will save.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Hold Person", school: "Enchantment (Compulsion)", levels: "antipaladin 2, arcanist 3, bard 2, bloodrager 3, cleric 2, inquisitor 2, medium 2, mesmerist 2, occultist 3, oracle 2, psychic 2, shaman 2, skald 2, sorcerer 3, warpriest 2, witch 2, wizard 3",
                          castingTime: "1 standard action", components: "V, S, F/DF (a small, straight piece of iron)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one humanoid creature",
                          duration: "1 round/level (D); see text",
                          savingThrow: "Will negates; see text;", sr: true,
                          summary: "The subject becomes paralyzed and freezes in place. It is aware and breathes normally but cannot take any actions, even speech.",
                          desc: "The subject becomes paralyzed and freezes in place. It is aware and breathes normally but cannot take any actions, even speech. Each round on its turn, the subject may attempt a new saving throw to end the effect. This is a full-round action that does not provoke attacks of opportunity. A winged creature who is paralyzed cannot flap its wings and falls. A swimmer can't swim and may drown. Hold Fey",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Hold Person, Mass", school: "Enchantment (Compulsion)", levels: "antipaladin 2, arcanist 3, bard 2, bloodrager 3, cleric 2, inquisitor 2, medium 2, mesmerist 2, occultist 3, oracle 2, psychic 2, shaman 2, skald 2, sorcerer 3, warpriest 2, witch 2, wizard 3",
                          castingTime: "1 standard action", components: "V, S, F/DF (a small, straight piece of iron)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one humanoid creature",
                          duration: "1 round/level (D); see text",
                          savingThrow: "Will negates; see text;", sr: true,
                          summary: "This spell functions like hold person , except as noted above.",
                          desc: "This spell functions like hold person , except as noted above.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Hold Portal", school: "Abjuration", levels: "arcanist 1, occultist 1, psychic 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one portal, up to 20 sq. ft./level",
                          duration: "1 min./level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell magically holds shut a door, gate, window, or shutter of wood, metal, or stone. The magic affects the portal just as if it were securely closed and normally locked.",
                          desc: "This spell magically holds shut a door, gate, window, or shutter of wood, metal, or stone. The magic affects the portal just as if it were securely closed and normally locked. A knock spell or a successful",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Hollow Heroism", school: "Enchantment (Compulsion)", levels: "alchemist 3, arcanist 3, bard 2, bloodrager 3, inquisitor 3, investigator 3, medium 2, psychic 3, skald 2, sorcerer 3, spiritualist 3, summoner 3, summoner (unchained) 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 min./level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions as heroism , except that you can reverse the spell by issuing a special command as a standard action if you are within medium range (100 feet + 10 feet per caster level) of the…",
                          desc: "This spell functions as heroism , except that you can reverse the spell by issuing a special command as a standard action if you are within medium range (100 feet + 10 feet per caster level) of the target. The target loses the bonuses and instead takes a –2 penalty on attack rolls, saving throws, and skill checks until the spell’s duration ends (no save).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Hollow Heroism, Greater", school: "Enchantment (Compulsion)", levels: "alchemist 3, arcanist 3, bard 2, bloodrager 3, inquisitor 3, investigator 3, medium 2, psychic 3, skald 2, sorcerer 3, spiritualist 3, summoner 3, summoner (unchained) 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 min./level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions as greater heroism , except that you can reverse the spell by issuing a special command as a standard action if you are within medium range (100 feet + 10 feet per caster level)…",
                          desc: "This spell functions as greater heroism , except that you can reverse the spell by issuing a special command as a standard action if you are within medium range (100 feet + 10 feet per caster level) of the target. The target loses the bonuses and instead takes a –4 penalty on attack rolls, saving throws, and skill checks until the spell’s duration ends (no save), increasing to a –8 penalty against fear effects. Additionally, she takes damage equal to your caster level when you reverse the spell.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Holy Aura", school: "Abjuration", levels: "cleric 8, oracle 8",
                          castingTime: "1 standard action", components: "V, S, F (a tiny reliquary worth 500 gp)",
                          range: "20 ft.", area: "", targets: "one creature/level in a 20-ft.-radius burst centered on you",
                          duration: "1 round/level (D)",
                          savingThrow: "see text;", sr: true,
                          summary: "A brilliant divine radiance surrounds the subjects, protecting them from attacks, granting them resistance to spells cast by evil creatures, and causing evil creatures to become blinded when they…",
                          desc: "A brilliant divine radiance surrounds the subjects, protecting them from attacks, granting them resistance to spells cast by evil creatures, and causing evil creatures to become blinded when they strike the subjects. This abjuration has four effects. First, each warded creature gains a +4 deflection bonus to AC and a +4 resistance bonus on saves. Unlike protection from evil , this benefit applies against all attacks, not just against attacks by evil creatures. Second, each warded creature gains spell resistance 25 against evil spells and spells cast by evil creatures. Third, the abjuration protects the recipient from possession and mental influence, just as",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Holy Smite", school: "Evocation", levels: "cleric 4, inquisitor 4, oracle 4, warpriest 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "20-ft.-radius burst", targets: "",
                          duration: "instantaneous (1 round); see text",
                          savingThrow: "Will partial; see text;", sr: true,
                          summary: "You draw down holy power to smite your enemies. Only evil and neutral creatures are harmed by the spell; good creatures are unaffected.",
                          desc: "You draw down holy power to smite your enemies. Only evil and neutral creatures are harmed by the spell; good creatures are unaffected. The spell deals 1d8 points of damage per two caster levels (maximum 5d8) to each evil creature in the area (or 1d6 points of damage per caster level, maximum 10d6, to an evil outsider) and causes it to become blinded for 1 round. A successful Will saving throw reduces damage to half and negates the blinded effect. The spell deals only half damage to creatures who are neither good nor evil, and they are not blinded. Such a creature can reduce that damage by half (down to one-quarter of the roll) with a successful Will save.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Holy Sword", school: "Evocation", levels: "paladin 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "melee weapon touched",
                          duration: "1 round/level",
                          savingThrow: "none;", sr: false,
                          summary: "This spell allows you to channel holy power into your sword, or any other melee weapon you choose.",
                          desc: "This spell allows you to channel holy power into your sword, or any other melee weapon you choose. The weapon acts as a +5 holy weapon (+5 enhancement bonus on attack and damage rolls, extra 2d6 damage against evil opponents). It also emits a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Holy Word", school: "Evocation", levels: "cleric 7, inquisitor 6, oracle 7",
                          castingTime: "1 standard action", components: "V",
                          range: "40 ft.", area: "nongood creatures in a 40-ft.-radius spread centered on you", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Will partial;", sr: true,
                          summary: "Any nongood creature within the area of a holy word spell suffers the following ill effects.",
                          desc: "Any nongood creature within the area of a holy word spell suffers the following ill effects.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Homeward Bound", school: "Abjuration", levels: "arcanist 5, cleric 4, inquisitor 4, medium 4, occultist 4, oracle 4, psychic 5, shaman 4, sorcerer 5, spiritualist 5, summoner 4, summoner (unchained) 5, warpriest 4, wizard 5",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one extraplanar creature",
                          duration: "instantaneous",
                          savingThrow: "Will negates; see text;", sr: true,
                          summary: "This spell functions as dismissal , except as noted above.",
                          desc: "This spell functions as dismissal , except as noted above.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Horrid Wilting", school: "Necromancy", levels: "arcanist 8, shaman 8, sorcerer 8, witch 8, wizard 8",
                          castingTime: "1 standard action", components: "V, S, M/DF (a bit of sponge)",
                          range: "long (400 ft. + 40 ft./level)", area: "", targets: "living creatures, no two of which can be more than 60 ft. apart",
                          duration: "instantaneous",
                          savingThrow: "Fortitude half;", sr: true,
                          summary: "This spell evaporates moisture from the body of each subject living creature, causing flesh to wither and crack and crumble to dust. This deals 1d6 points of damage per caster level (maximum 20d6).",
                          desc: "This spell evaporates moisture from the body of each subject living creature, causing flesh to wither and crack and crumble to dust. This deals 1d6 points of damage per caster level (maximum 20d6). This spell is especially devastating to water elementals and plant creatures, which instead take 1d8 points of damage per caster level (maximum 20d8).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Hypnotic Pattern", school: "Illusion (Pattern)", levels: "arcanist 2, bard 2, mesmerist 2, psychic 2, redmantisassassin 2, skald 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V (bard only), S, M (a stick of incense or a crystal rod); see text",
                          range: "medium (100 ft. + 10 ft./level)", area: "colorful lights in a 10-ft.-radius spread", targets: "",
                          duration: "concentration + 2 rounds",
                          savingThrow: "Will negates;", sr: true,
                          summary: "A twisting pattern of subtle, shifting colors weaves through the air, fascinating creatures within it.",
                          desc: "A twisting pattern of subtle, shifting colors weaves through the air, fascinating creatures within it. Roll 2d4 and add your caster level (maximum 10) to determine the total number of HD of creatures affected. Creatures with the fewest HD are affected first; and, among creatures with equal HD, those who are closest to the spell's point of origin are affected first. HD that are not sufficient to affect a creature are wasted. Affected creatures become fascinated by the pattern of colors. Sightless creatures are not affected. A wizard or sorcerer need not utter a sound to cast this spell, but a bard must perform as a verbal component.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Hypnotism", school: "Enchantment (Compulsion)", levels: "arcanist 1, bard 1, mesmerist 1, occultist 1, psychic 1, skald 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 round", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "several living creatures, no two of which may be more than 30 ft. apart", targets: "",
                          duration: "2d4 rounds (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "Your gestures and droning incantation fascinate nearby creatures, causing them to stop and stare blankly at you.",
                          desc: "Your gestures and droning incantation fascinate nearby creatures, causing them to stop and stare blankly at you. In addition, you can use their rapt attention to make your suggestions and requests seem more plausible. Roll 2d4 to see how many total HD of creatures you affect. Creatures with fewer HD are affected before creatures with more HD. Only creatures that can see or hear you are affected, but they do not need to understand you to be fascinated. If you use this spell in combat, each target gains a +2 bonus on its saving throw. If the spell affects only a single creature not in combat at the time, the saving throw has a penalty of –2. While the subject is fascinated by this spell, it reacts as though it were two steps more friendly in attitude. This allows you to make a single request of the affected creature (provided you can communicate with it). The request must be brief and reasonable. Even after the spell ends, the creature retains its new attitude toward you, but only with respect to that particular request. A creature that fails its saving throw does not remember that you enspelled it. Hypnotism, Greater",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Hypnotism, Greater", school: "Enchantment (Compulsion)", levels: "arcanist 1, bard 1, mesmerist 1, occultist 1, psychic 1, skald 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 round", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "several living creatures, no two of which may be more than 30 ft. apart", targets: "",
                          duration: "2d4 rounds (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This functions as hypnotism , except it affects 2 Hit Die of creatures per caster level you have.",
                          desc: "This functions as hypnotism , except it affects 2 Hit Die of creatures per caster level you have. You can make up to five requests (instead of a single request) to each creature affected by the spell, and the requests can be as long and as complicated as you desire (though they still must be reasonable).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Ice Storm", school: "Evocation", levels: "arcanist 4, bloodrager 4, druid 4, hunter 4, magus 4, occultist 4, shaman 4, sorcerer 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M/DF (dust and water)",
                          range: "long (400 ft. + 40 ft./level)", area: "cylinder (20-ft. radius, 40 ft. high)", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: true,
                          summary: "Great magical hailstones pound down upon casting this spell, dealing 3d6 points of bludgeoning damage and 2d6 points of cold damage to every creature in the area.",
                          desc: "Great magical hailstones pound down upon casting this spell, dealing 3d6 points of bludgeoning damage and 2d6 points of cold damage to every creature in the area. This damage only occurs once, when the spell is cast. For the remaining duration of the spell, heavy snow and sleet rains down in the area. Creatures inside this area take a –4 penalty on Perception skill checks and the entire area is treated as difficult terrain. At the end of the duration, the snow and hail disappear, leaving no aftereffects (other than the damage dealt).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Identifier's Eye", school: "Divination", levels: "adept 0, arcanist 0, bard 0, cleric 0, druid 0, hunter 0, inquisitor 0, magus 0, medium 0, mesmerist 0, occultist 0, oracle 0, psychic 0, shaman 0, skald 0, sorcerer 0, spiritualist 0, summoner 0, summoner (unchained) 0, warpriest 0, witch 0, wizard 0",
                          castingTime: "1 standard action", components: "V, S",
                          range: "60 ft.", area: "cone-shaped emanation", targets: "creature touched",
                          duration: "concentration, up to 1 min./level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell infuses a spark of magical energy into the veins of the target, allowing it to feel the presence of magic the way one might feel the thrum of vibrations in the air.",
                          desc: "This spell infuses a spark of magical energy into the veins of the target, allowing it to feel the presence of magic the way one might feel the thrum of vibrations in the air. For the spell’s duration, the target gains the benefits of the spell detect magic and also gains a +5 enhancement bonus on Spellcraft checks to identify the properties and command words of magic items. Further, the target can attempt such checks untrained while under the effects of this spell. This ability does not allow the target to identify artifacts.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Identify", school: "Divination", levels: "alchemist 1, arcanist 1, bard 1, investigator 1, medium 1, occultist 1, psychic 1, skald 1, sorcerer 1, spiritualist 1, summoner 1, summoner (unchained) 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M (wine stirred with an owl's feather)",
                          range: "60 ft.", area: "cone-shaped emanation", targets: "",
                          duration: "3 rounds/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as detect magic , except that it gives you a +10 enhancement bonus on Spellcraft checks made to identify the properties and command words of magic items in your possession.",
                          desc: "This spell functions as detect magic , except that it gives you a +10 enhancement bonus on Spellcraft checks made to identify the properties and command words of magic items in your possession. This spell does not allow you to identify artifacts.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Illusory Script", school: "Illusion (Phantasm)", levels: "arcanist 3, bard 3, mesmerist 3, occultist 3, psychic 3, redmantisassassin 3, skald 3, sorcerer 3, wizard 3",
                          castingTime: "1 minute per page", components: "V, S, M (lead-based ink worth 50 gp)",
                          range: "touch", area: "", targets: "one touched object weighing no more than 10 lbs.",
                          duration: "one day/level (D)",
                          savingThrow: "Will negates; see text;", sr: true,
                          summary: "You write instructions or other information on parchment, paper, or any suitable writing material. The illusory script appears to be some form of foreign or magical writing.",
                          desc: "You write instructions or other information on parchment, paper, or any suitable writing material. The illusory script appears to be some form of foreign or magical writing. Only the person (or people) designated by you at the time of the casting can read the writing; it's unintelligible to any other character. Any unauthorized creature attempting to read the script triggers a potent illusory effect and must make a saving throw. A successful saving throw means the creature can look away with only a mild sense of disorientation. Failure means the creature is subject to a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Illusory Wall", school: "Illusion (Figment)", levels: "arcanist 4, mesmerist 4, occultist 4, psychic 4, redmantisassassin 4, sorcerer 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "image 1 ft. by 10 ft. by 10 ft.", targets: "",
                          duration: "permanent",
                          savingThrow: "Will disbelief (if interacted with);", sr: false,
                          summary: "This spell creates the illusion of a wall, floor, ceiling, or similar surface. It appears absolutely real when viewed, but physical objects can pass through it without difficulty.",
                          desc: "This spell creates the illusion of a wall, floor, ceiling, or similar surface. It appears absolutely real when viewed, but physical objects can pass through it without difficulty. When the spell is used to hide pits, traps, or normal doors, any detection abilities that do not require sight work normally. Touch or a probing search reveals the true nature of the surface, though such measures do not cause the illusion to disappear. Although the caster can see through his illusory wall , other creatures cannot, even if they succeed at their will save (but they do learn that it is not real).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Imbue with Spell Ability", school: "Evocation", levels: "cleric 4, oracle 4, shaman 4, spiritualist 4, warpriest 4",
                          castingTime: "10 minutes", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched; see text",
                          duration: "permanent until discharged (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You transfer some of your currently prepared spells, and the ability to cast them, to another creature.",
                          desc: "You transfer some of your currently prepared spells, and the ability to cast them, to another creature. Only a creature with an Intelligence score of at least 5 and a Wisdom score of at least 9 can receive this boon. Only cleric spells from the schools of abjuration, divination, and conjuration (healing) can be transferred. The number and level of spells that the subject can be granted depends on its Hit Dice; even multiple castings of imbue with spell ability can't exceed this limit.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Implosion", school: "Evocation", levels: "cleric 9, oracle 9, psychic 9",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one corporeal creature/round",
                          duration: "concentration (up to 1 round per 2 levels)",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "This spell causes a destructive resonance in a corporeal creature's body.",
                          desc: "This spell causes a destructive resonance in a corporeal creature's body. Each round you concentrate (including the first), you can cause one creature to collapse in on itself, inflicting 10 points of damage per caster level. If you break concentration, the spell immediately ends, though any implosions that have already happened remain in effect. You can target a particular creature only once with each casting of the spell. Implosion has no effect on creatures in gaseous form or on incorporeal creatures.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Imprisonment", school: "Abjuration", levels: "arcanist 9, psychic 9, sorcerer 9, wizard 9",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "instantaneous",
                          savingThrow: "Will negates; see text;", sr: true,
                          summary: "When you cast imprisonment and touch a creature, it is entombed in a state of suspended animation (see the",
                          desc: "When you cast imprisonment and touch a creature, it is entombed in a state of suspended animation (see the",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Incendiary Cloud", school: "Conjuration (Creation)", levels: "arcanist 8, sorcerer 8, summoner 6, wizard 8",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "cloud spreads in 20-ft. radius, 20 ft. high", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "Reflex half, see text;", sr: false,
                          summary: "An incendiary cloud spell creates a cloud of roiling smoke shot through with white-hot embers. The smoke obscures all sight as a fog cloud does.",
                          desc: "An incendiary cloud spell creates a cloud of roiling smoke shot through with white-hot embers. The smoke obscures all sight as a fog cloud does. In addition, the white-hot embers within the cloud deal 6d6 points of fire damage to everything within the cloud on your turn each round. All targets can make Reflex saves each round to take half damage.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Inflict Critical Wounds", school: "Necromancy", levels: "cleric 4, inquisitor 4, occultist 4, oracle 4, shaman 4, spiritualist 4, warpriest 4, witch 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "instantaneous",
                          savingThrow: "Will half;", sr: true,
                          summary: "This spell functions like inflict light wounds , except that you deal 4d8 points of damage + 1 point per caster level (maximum +20).",
                          desc: "This spell functions like inflict light wounds , except that you deal 4d8 points of damage + 1 point per caster level (maximum +20).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Inflict Critical Wounds, Mass", school: "Necromancy", levels: "cleric 4, inquisitor 4, occultist 4, oracle 4, shaman 4, spiritualist 4, warpriest 4, witch 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "instantaneous",
                          savingThrow: "Will half;", sr: true,
                          summary: "This spell functions like mass inflict light wounds , except that it deals 4d8 points of damage + 1 point per caster level (maximum +40).",
                          desc: "This spell functions like mass inflict light wounds , except that it deals 4d8 points of damage + 1 point per caster level (maximum +40).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Inflict Light Wounds", school: "Necromancy", levels: "antipaladin 1, cleric 1, inquisitor 1, occultist 1, oracle 1, shaman 1, spiritualist 1, warpriest 1, witch 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "instantaneous",
                          savingThrow: "Will half;", sr: true,
                          summary: "When laying your hand upon a creature, you channel negative energy that deals 1d8 points of damage + 1 point per caster level (maximum +5).",
                          desc: "When laying your hand upon a creature, you channel negative energy that deals 1d8 points of damage + 1 point per caster level (maximum +5). Since undead are powered by negative energy, this spell cures such a creature of a like amount of damage, rather than harming it.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Inflict Light Wounds, Mass", school: "Necromancy", levels: "antipaladin 1, cleric 1, inquisitor 1, occultist 1, oracle 1, shaman 1, spiritualist 1, warpriest 1, witch 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "instantaneous",
                          savingThrow: "Will half;", sr: true,
                          summary: "Negative energy spreads out in all directions from the point of origin, dealing 1d8 points of damage + 1 point per caster level (maximum +25) to nearby living enemies. Like other inflict spells,",
                          desc: "Negative energy spreads out in all directions from the point of origin, dealing 1d8 points of damage + 1 point per caster level (maximum +25) to nearby living enemies. Like other inflict spells,",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Inflict Moderate Wounds", school: "Necromancy", levels: "antipaladin 3, cleric 2, inquisitor 2, occultist 2, oracle 2, shaman 2, spiritualist 2, warpriest 2, witch 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "instantaneous",
                          savingThrow: "Will half;", sr: true,
                          summary: "This spell functions like inflict light wounds , except that you deal 2d8 points of damage + 1 point per caster level (maximum +10).",
                          desc: "This spell functions like inflict light wounds , except that you deal 2d8 points of damage + 1 point per caster level (maximum +10).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Inflict Moderate Wounds, Mass", school: "Necromancy", levels: "antipaladin 3, cleric 2, inquisitor 2, occultist 2, oracle 2, shaman 2, spiritualist 2, warpriest 2, witch 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "instantaneous",
                          savingThrow: "Will half;", sr: true,
                          summary: "This spell functions like mass inflict light wounds , except that it deals 2d8 points of damage + 1 point per caster level (maximum +30).",
                          desc: "This spell functions like mass inflict light wounds , except that it deals 2d8 points of damage + 1 point per caster level (maximum +30).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Inflict Serious Wounds", school: "Necromancy", levels: "antipaladin 4, cleric 3, inquisitor 3, occultist 3, oracle 3, shaman 3, spiritualist 3, warpriest 3, witch 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "instantaneous",
                          savingThrow: "Will half;", sr: true,
                          summary: "This spell functions like inflict light wounds , except that it deals 3d8 + 1 point per caster level (maximum +15).",
                          desc: "This spell functions like inflict light wounds , except that it deals 3d8 + 1 point per caster level (maximum +15).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Inflict Serious Wounds, Mass", school: "Necromancy", levels: "antipaladin 4, cleric 3, inquisitor 3, occultist 3, oracle 3, shaman 3, spiritualist 3, warpriest 3, witch 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "instantaneous",
                          savingThrow: "Will half;", sr: true,
                          summary: "This spell functions like mass inflict light wounds , except that it deals 3d8 points of damage + 1 point per caster level (maximum +35).",
                          desc: "This spell functions like mass inflict light wounds , except that it deals 3d8 points of damage + 1 point per caster level (maximum +35).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Insanity", school: "Enchantment (Compulsion)", levels: "arcanist 7, mesmerist 6, psychic 7, sorcerer 7, witch 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one living creature",
                          duration: "instantaneous",
                          savingThrow: "Will negates;", sr: true,
                          summary: "The affected creature suffers from a continuous confusion effect, as the spell.",
                          desc: "The affected creature suffers from a continuous confusion effect, as the spell.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Insect Plague", school: "Conjuration (Summoning)", levels: "cleric 5, druid 5, hunter 5, oracle 5, shaman 5, summoner 4, summoner (unchained) 5, warpriest 5",
                          castingTime: "1 round", components: "V, S, DF",
                          range: "long (400 ft. + 40 ft./level)", area: "one swarm of wasps per three levels, each of which be adjacent to at least one other swarm", targets: "",
                          duration: "1 min./level",
                          savingThrow: "none;", sr: false,
                          summary: "You summon a number of swarms of wasps (one per three levels, to a maximum of six swarms at 18th level).",
                          desc: "You summon a number of swarms of wasps (one per three levels, to a maximum of six swarms at 18th level). The swarms must be summoned so that each one is adjacent to at least one other swarm (that is, the swarms must fill one contiguous area). You may summon the wasp swarms so that they share the area of other creatures. Each swarm attacks any creatures occupying its area. The swarms are stationary after being summoned, and won't pursue creatures that flee.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Instant Summons", school: "Conjuration (Summoning)", levels: "arcanist 7, psychic 7, sorcerer 7, witch 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S, M (sapphire worth 1,000 gp)",
                          range: "see text", area: "", targets: "one object weighing 10 lbs. or less whose longest dimension is 6 ft. or less",
                          duration: "permanent until discharged",
                          savingThrow: "none;", sr: false,
                          summary: "You call some nonliving item directly to your hand from virtually any location. First, you must place your arcane mark on the item.",
                          desc: "You call some nonliving item directly to your hand from virtually any location. First, you must place your arcane mark on the item. Then you cast this spell, which magically and invisibly inscribes the name of the item on a sapphire worth at least 1,000 gp. Thereafter, you can summon the item by speaking a special word (set by you when the spell is cast) and crushing the gem. The item appears instantly in your hand. Only you can use the gem in this way. If the item is in the possession of another creature, the spell does not work, but you know who the possessor is and roughly where that creature is located when the summons occurs. The inscription on the gem is invisible. It is also unreadable, except by means of a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Instant Summons, Greater", school: "Conjuration (Summoning)", levels: "arcanist 7, psychic 7, sorcerer 7, witch 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S, M (sapphire worth 1,000 gp)",
                          range: "see text", area: "", targets: "one object weighing 10 lbs. or less whose longest dimension is 6 ft. or less",
                          duration: "permanent until discharged",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as instant summons , except that you can target multiple objects. You must use a separate sapphire worth 1,000 gp for each one.",
                          desc: "This spell functions as instant summons , except that you can target multiple objects. You must use a separate sapphire worth 1,000 gp for each one. For each item you target, you can touch a creature, granting that creature the ability to speak the special word for that item (each item has its own special word) while crushing the matched gem to call the item to hand. Only you or the touched creature can activate the gem or see the",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Interposing Hand", school: "Evocation", levels: "arcanist 5, magus 5, occultist 5, psychic 5, sorcerer 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, F (a soft glove)",
                          range: "medium (100 ft. + 10 ft./level)", area: "10-ft. hand", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: true,
                          summary: "Interposing hand creates a Large magic hand that appears between you and one opponent.",
                          desc: "Interposing hand creates a Large magic hand that appears between you and one opponent. This floating, disembodied hand then moves to remain between the two of you, regardless of where you move or how the opponent tries to get around it, providing cover (+4 AC) for you against that opponent. Nothing can fool the hand—it sticks with the selected opponent in spite of darkness , invisibility, polymorphing, or any other attempt at hiding or disguise. The hand does not pursue an opponent, however.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Invisibility", school: "Illusion (Glamer)", levels: "adept 2, alchemist 2, antipaladin 2, arcanist 2, bard 2, inquisitor 2, investigator 2, magus 2, medium 2, mesmerist 2, occultist 2, psychic 2, redmantisassassin 2, skald 2, sorcerer 2, spiritualist 2, summoner 2, summoner (unchained) 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (an eyelash encased in gum arabic)",
                          range: "personal or touch", area: "", targets: "you or a creature or object weighing no more than 100 lbs./level",
                          duration: "1 min./level (D)",
                          savingThrow: "Will negates (harmless) or Will negates (harmless, object);", sr: true,
                          summary: "The creature or object touched becomes invisible. If the recipient is a creature carrying gear, that vanishes, too.",
                          desc: "The creature or object touched becomes invisible. If the recipient is a creature carrying gear, that vanishes, too. If you cast the spell on someone else, neither you nor your allies can see the subject, unless you can normally see invisible things or you employ magic to do so. Items dropped or put down by an invisible creature become visible; items picked up disappear if tucked into the clothing or pouches worn by the creature. Light, however, never becomes invisible, although a source of light can become so (thus, the effect is that of a light with no visible source). Any part of an item that the subject carries but that extends more than 10 feet from it becomes visible. Of course, the subject is not magically silenced, and certain other conditions can render the recipient detectable (such as swimming in water or stepping in a puddle). If a check is required, a stationary invisible creature has a +40 bonus on its Stealth checks. This bonus is reduced to +20 if the creature is moving. The spell ends if the subject attacks any creature. For purposes of this spell, an attack includes any spell targeting a foe or whose area or effect includes a foe. Exactly who is a foe depends on the invisible character's perceptions. Actions directed at unattended objects do not break the spell. Causing harm indirectly is not an attack. Thus, an invisible being can open doors, talk, eat, climb stairs, summon monsters and have them attack, cut the ropes holding a rope bridge while enemies are on the bridge, remotely trigger traps, open a portcullis to release attack dogs, and so forth. If the subject attacks directly, however, it immediately becomes visible along with all its gear. Spells such as",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Invisibility Purge", school: "Evocation", levels: "cleric 3, inquisitor 3, occultist 3, oracle 3, spiritualist 3, warpriest 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 min./level (D)",
                          savingThrow: "None", sr: false,
                          summary: "You surround yourself with a sphere of power with a radius of 5 feet per caster level that negates all forms of invisibility. Anything invisible becomes visible while in the area.",
                          desc: "You surround yourself with a sphere of power with a radius of 5 feet per caster level that negates all forms of invisibility. Anything invisible becomes visible while in the area.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Invisibility Sphere", school: "Illusion (Glamer)", levels: "arcanist 3, bard 3, mesmerist 3, occultist 3, psychic 3, redmantisassassin 3, skald 3, sorcerer 3, summoner (unchained) 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M",
                          range: "personal or touch", area: "10-ft.-radius emanation around the creature", targets: "",
                          duration: "1 min./level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions like invisibility , except that this spell confers invisibility upon all creatures within 10 feet of the recipient at the time the spell is cast.",
                          desc: "This spell functions like invisibility , except that this spell confers invisibility upon all creatures within 10 feet of the recipient at the time the spell is cast. The center of the effect is mobile with the recipient. Those affected by this spell can see each other and themselves as if unaffected by the spell. Any affected creature moving out of the area becomes visible, but creatures moving into the area after the spell is cast do not become invisible. Affected creatures (other than the recipient) who attack negate the invisibility only for themselves. If the spell recipient attacks, the",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Invisibility, Greater", school: "Illusion (Glamer)", levels: "adept 2, alchemist 2, antipaladin 2, arcanist 2, bard 2, inquisitor 2, investigator 2, magus 2, medium 2, mesmerist 2, occultist 2, psychic 2, redmantisassassin 2, skald 2, sorcerer 2, spiritualist 2, summoner 2, summoner (unchained) 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (an eyelash encased in gum arabic)",
                          range: "personal or touch", area: "", targets: "you or a creature or object weighing no more than 100 lbs./level",
                          duration: "1 min./level (D)",
                          savingThrow: "Will negates (harmless) or Will negates (harmless, object);", sr: true,
                          summary: "This spell functions like invisibility , except that it doesn't end if the subject attacks. Invisibility, Mass",
                          desc: "This spell functions like invisibility , except that it doesn't end if the subject attacks. Invisibility, Mass",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Invisibility, Mass", school: "Illusion (Glamer)", levels: "adept 2, alchemist 2, antipaladin 2, arcanist 2, bard 2, inquisitor 2, investigator 2, magus 2, medium 2, mesmerist 2, occultist 2, psychic 2, redmantisassassin 2, skald 2, sorcerer 2, spiritualist 2, summoner 2, summoner (unchained) 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (an eyelash encased in gum arabic)",
                          range: "personal or touch", area: "", targets: "you or a creature or object weighing no more than 100 lbs./level",
                          duration: "1 min./level (D)",
                          savingThrow: "Will negates (harmless) or Will negates (harmless, object);", sr: true,
                          summary: "This spell functions like invisibility , except that the effect moves with the group and is broken when anyone in the group attacks. Individuals in the group cannot see each other.",
                          desc: "This spell functions like invisibility , except that the effect moves with the group and is broken when anyone in the group attacks. Individuals in the group cannot see each other. The spell is broken for any individual who moves more than 180 feet from the nearest member of the group. If only two individuals are affected, the one moving away from the other one loses its invisibility. If both are moving away from each other, they both become visible when the distance between them exceeds 180 feet.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Iron Body", school: "Transmutation", levels: "arcanist 8, psychic 8, sorcerer 8, wizard 8",
                          castingTime: "1 standard action", components: "V, S, M/DF (a piece of iron from an iron golem, a hero's armor, or a war machine)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 min./level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This spell transforms your body into living iron, which grants you several powerful resistances and abilities. You gain damage reduction 15/adamantine.",
                          desc: "This spell transforms your body into living iron, which grants you several powerful resistances and abilities. You gain damage reduction 15/adamantine. You are immune to blindness, critical hits, ability score damage, deafness, disease, drowning, electricity, poison, stunning, and all spells or attacks that affect your physiology or respiration, because you have no physiology or respiration while this spell is in effect. You take only half damage from acid and fire. However, you also become vulnerable to all special attacks that affect iron golems. You gain a +6 enhancement bonus to your Strength score, but you take a –6 penalty to Dexterity as well (to a minimum Dexterity score of 1), and your speed is reduced to half normal. You have an arcane spell failure chance of 35% and a –6 armor check penalty, just as if you were clad in full plate armor. You cannot drink (and thus can't use potions) or play wind instruments. Your unarmed attack deals damage equal to a club sized for you (1d4 for Small characters or 1d6 for Medium characters), and you are considered armed when making unarmed attacks. Your weight increases by a factor of 10, causing you to sink in water like a stone. However, you could survive the lack of air at the bottom of the ocean—at least until the spell duration expires.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Ironwood", school: "Transmutation", levels: "druid 6, hunter 6, occultist 6",
                          castingTime: "1 minute/lb. created", components: "V, S, F (wood to be transformed)",
                          range: "0 ft.", area: "an ironwood object weighing up to 5 lbs./level", targets: "",
                          duration: "1 day/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "Ironwood is a magical substance created by druids from normal wood. While remaining natural wood in almost every way, ironwood is as strong, heavy, and resistant to fire as steel.",
                          desc: "Ironwood is a magical substance created by druids from normal wood. While remaining natural wood in almost every way, ironwood is as strong, heavy, and resistant to fire as steel. Spells that affect metal or iron do not function on",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Irresistible Dance", school: "Enchantment (Compulsion)", levels: "arcanist 8, bard 6, mesmerist 6, psychic 8, shaman 8, skald 6, sorcerer 8, witch 8, wizard 8",
                          castingTime: "1 standard action", components: "V",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "1d4+1 rounds",
                          savingThrow: "Will partial;", sr: true,
                          summary: "The subject feels an undeniable urge to dance and begins doing so, complete with foot shuffling and tapping.",
                          desc: "The subject feels an undeniable urge to dance and begins doing so, complete with foot shuffling and tapping. The spell effect makes it impossible for the subject to do anything other than caper and prance in place. The effect imposes a –4 penalty to Armor Class and a –10 penalty on Reflex saves, and it negates any AC bonus granted by a shield the target holds. The dancing subject provokes attacks of opportunity each round on its turn. A successful Will save reduces the duration of this effect to 1 round.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Janni's Jaunt", school: "Conjuration (Teleportation)", levels: "arcanist 7, cleric 5, medium 4, oracle 5, psychic 5, shaman 7, sorcerer 7, spiritualist 5, summoner 5, summoner (unchained) 6, warpriest 5, witch 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S, F (a forked metal rod attuned to the plane of travel)",
                          range: "touch", area: "", targets: "creature touched, or up to eight willing creatures joining hands",
                          duration: "instantaneous",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions as per plane shift , but with the following exceptions. First, you are able to transport only willing creatures.",
                          desc: "This spell functions as per plane shift , but with the following exceptions. First, you are able to transport only willing creatures. Second, the spell can transport you and any other willing targets only to an Elemental Plane, the Astral Plane, or the Material Plane.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Jump", school: "Transmutation", levels: "alchemist 1, arcanist 1, bloodrager 1, druid 1, hunter 1, investigator 1, magus 1, psychic 1, ranger 1, redmantisassassin 1, sorcerer 1, summoner 1, summoner (unchained) 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M (a grasshopper's hind leg)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 min./level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The subject gets a +10 enhancement bonus on Acrobatics checks made to attempt high jumps or long jumps.",
                          desc: "The subject gets a +10 enhancement bonus on Acrobatics checks made to attempt high jumps or long jumps. The enhancement bonus increases to +20 at caster level 5th, and to +30 (the maximum) at caster level 9th.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Keen Edge", school: "Transmutation", levels: "arcanist 3, bloodrager 3, inquisitor 3, magus 3, occultist 3, redmantisassassin 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one weapon or 50 projectiles, all of which must be together at the time of casting",
                          duration: "10 min./level",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "This spell makes a weapon magically keen, improving its ability to deal telling blows. This transmutation doubles the threat range of the weapon.",
                          desc: "This spell makes a weapon magically keen, improving its ability to deal telling blows. This transmutation doubles the threat range of the weapon. A threat range of 20 becomes 19–20, a threat range of 19–20 becomes 17–20, and a threat range of 18–20 becomes 15–20. The spell can be cast only on piercing or slashing weapons. If cast on arrows or crossbow bolts, the keen edge on a particular projectile ends after one use, whether or not the missile strikes its intended target. Treat shuriken as arrows, rather than as thrown weapons, for the purpose of this spell. Multiple effects that increase a weapon's threat range (such as the",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Knock", school: "Transmutation", levels: "arcanist 2, inquisitor 2, medium 2, mesmerist 2, occultist 2, psychic 2, redmantisassassin 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one door, box, or chest with an area of up to 10 sq. ft./level",
                          duration: "instantaneous; see text",
                          savingThrow: "none;", sr: false,
                          summary: "Knock opens stuck, barred, or locked doors, as well as those subject to hold portal",
                          desc: "Knock opens stuck, barred, or locked doors, as well as those subject to hold portal",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Knock, Mass", school: "Transmutation", levels: "arcanist 2, inquisitor 2, medium 2, mesmerist 2, occultist 2, psychic 2, redmantisassassin 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one door, box, or chest with an area of up to 10 sq. ft./level",
                          duration: "instantaneous; see text",
                          savingThrow: "none;", sr: false,
                          summary: "Also known as “unshackle,” this spell functions as knock , but works on multiple means of closure at once.",
                          desc: "Also known as “unshackle,” this spell functions as knock , but works on multiple means of closure at once.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Know Direction", school: "Divination", levels: "bard 0, druid 0, hunter 0, occultist 0, psychic 0, shaman 0, skald 0",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "instantaneous",
                          savingThrow: "None", sr: false,
                          summary: "When you cast this spell, you instantly know the direction of north from your current position.",
                          desc: "When you cast this spell, you instantly know the direction of north from your current position. The spell is effective in any environment in which “north” exists, but it may not work in extraplanar settings. Your knowledge of north is correct at the moment of casting, but you can get lost again within moments if you don't find some external reference point to help you keep track of direction.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Legend Lore", school: "Divination", levels: "arcanist 6, bard 4, inquisitor 6, medium 4, occultist 6, psychic 6, skald 4, sorcerer 6, spiritualist 6, witch 6, wizard 6",
                          castingTime: "see text", components: "V, S, M (incense worth 250 gp), F (four pieces of ivory worth 50 gp each)",
                          range: "personal", area: "", targets: "you",
                          duration: "see text",
                          savingThrow: "None", sr: false,
                          summary: "Legend lore brings to your mind legends about an important person, place, or thing.",
                          desc: "Legend lore brings to your mind legends about an important person, place, or thing. If the person or thing is at hand, or if you are in the place in question, the casting time is only 1d4 × 10 minutes. If you have only detailed information on the person, place, or thing, the casting time is 1d10 days, and the resulting lore is less complete and specific (though it often provides enough information to help you find the person, place, or thing, thus allowing a better legend lore result next time). If you know only rumors, the casting time is 2d6 weeks, and the resulting lore is vague and incomplete (though it often directs you to more detailed information, thus allowing a better",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Levitate", school: "Transmutation", levels: "alchemist 2, arcanist 2, investigator 2, magus 2, medium 2, mesmerist 2, occultist 2, psychic 2, redmantisassassin 2, shaman 2, sorcerer 2, spiritualist 2, summoner 2, summoner (unchained) 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, F (a leather loop or golden wire bent into a cup shape)",
                          range: "personal or close (25 ft. + 5 ft./2 levels)", area: "", targets: "you or one willing creature or one object (total weight up to 100 lbs./level)",
                          duration: "1 min./level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "Levitate allows you to move yourself, another creature, or an object up and down as you wish.",
                          desc: "Levitate allows you to move yourself, another creature, or an object up and down as you wish. A creature must be willing to be levitated, and an object must be unattended or possessed by a willing creature. You can mentally direct the recipient to move up or down as much as 20 feet each round; doing so is a move action. You cannot move the recipient horizontally, but the recipient could clamber along the face of a cliff, for example, or push against a ceiling to move laterally (generally at half its base land speed). A levitating creature that attacks with a melee or ranged weapon finds itself increasingly unstable; the first attack has a –1 penalty on attack rolls, the second –2, and so on, to a maximum penalty of –5. A full round spent stabilizing allows the creature to begin again at –1.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Light", school: "Evocation", levels: "adept 0, arcanist 0, bard 0, cleric 0, druid 0, hunter 0, inquisitor 0, magus 0, medium 0, mesmerist 0, occultist 0, oracle 0, psychic 0, shaman 0, skald 0, sorcerer 0, spiritualist 0, summoner 0, summoner (unchained) 0, warpriest 0, witch 0, wizard 0",
                          castingTime: "1 standard action", components: "V, M/DF (a firefly)",
                          range: "touch", area: "", targets: "object touched",
                          duration: "10 min./level",
                          savingThrow: "none;", sr: false,
                          summary: "This spell causes a touched object to glow like a torch, shedding normal light in a 20-foot radius, and increasing the light level for an additional 20 feet by one step, up to normal light (darkness…",
                          desc: "This spell causes a touched object to glow like a torch, shedding normal light in a 20-foot radius, and increasing the light level for an additional 20 feet by one step, up to normal light (darkness becomes dim light, and dim light becomes normal light). In an area of normal or bright light, this spell has no effect. The effect is immobile, but it can be cast on a movable object. You can only have one light spell active at any one time. If you cast this spell while another casting is still in effect, the previous casting is dispelled. If you make this spell permanent (through",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Lightning Bolt", school: "Evocation", levels: "adept 3, arcanist 3, bloodrager 3, magus 3, occultist 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (fur and a glass rod)",
                          range: "120 ft.", area: "120-ft. line", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Reflex half;", sr: true,
                          summary: "You release a powerful stroke of electrical energy that deals 1d6 points of electricity damage per caster level (maximum 10d6) to each creature within its area. The bolt begins at your fingertips.",
                          desc: "You release a powerful stroke of electrical energy that deals 1d6 points of electricity damage per caster level (maximum 10d6) to each creature within its area. The bolt begins at your fingertips. The lightning bolt sets fire to combustibles and damages objects in its path. It can melt metals with a low melting point, such as lead, gold, copper, silver, or bronze. If the damage caused to an interposing barrier shatters or breaks through it, the bolt may continue beyond the barrier if the spell's range permits; otherwise, it stops at the barrier just as any other spell effect does.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Limited Wish", school: "Universal", levels: "arcanist 7, psychic 7, sorcerer 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S, M (diamond worth 1,500 gp)",
                          range: "see text", area: "", targets: "",
                          duration: "see text",
                          savingThrow: "none, see text;", sr: true,
                          summary: "A limited wish lets you create nearly any type of effect. For example, a",
                          desc: "A limited wish lets you create nearly any type of effect. For example, a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Liveoak", school: "Transmutation", levels: "druid 6, hunter 6, shaman 7",
                          castingTime: "10 minutes", components: "V, S",
                          range: "touch", area: "", targets: "tree touched",
                          duration: "1 day/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell turns an oak tree into a protector or guardian. The spell can only be cast on a single tree at a time; while liveoak is in effect, you can't cast it again on another tree.",
                          desc: "This spell turns an oak tree into a protector or guardian. The spell can only be cast on a single tree at a time; while liveoak is in effect, you can't cast it again on another tree.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Locate Creature", school: "Divination", levels: "arcanist 4, bard 4, medium 3, mesmerist 4, occultist 4, psychic 4, skald 4, sorcerer 4, spiritualist 4, summoner 3, summoner (unchained) 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (fur from a bloodhound)",
                          range: "long (400 ft. + 40 ft./level)", area: "circle, centered on you, with a radius of 400 ft. + 40 ft./level", targets: "",
                          duration: "10 min./level",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like locate object , except this spell locates a known creature.",
                          desc: "This spell functions like locate object , except this spell locates a known creature. You slowly turn and sense when you are facing in the direction of the creature to be located, provided it is within range. You also know in which direction the creature is moving, if any. The spell can locate a creature of a specific kind or a specific creature known to you. It cannot find a creature of a certain type. To find a kind of creature, you must have seen such a creature up close (within 30 feet) at least once. Running water blocks the spell. It cannot detect objects. It can be fooled by",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Locate Object", school: "Divination", levels: "arcanist 2, bard 2, cleric 3, inquisitor 3, medium 2, mesmerist 2, occultist 2, oracle 3, psychic 2, skald 2, sorcerer 2, spiritualist 3, warpriest 3, witch 3, wizard 2",
                          castingTime: "1 standard action", components: "V, S, F/DF (a forked twig)",
                          range: "long (400 ft. + 40 ft./level)", area: "circle, centered on you, with a radius of 400 ft. + 40 ft./level", targets: "",
                          duration: "1 min./level",
                          savingThrow: "none;", sr: false,
                          summary: "You sense the direction of a well-known or clearly visualized object. You can search for general items, in which case you locate the nearest of its kind if more than one is within range.",
                          desc: "You sense the direction of a well-known or clearly visualized object. You can search for general items, in which case you locate the nearest of its kind if more than one is within range. Attempting to find a certain item requires a specific and accurate mental image; if the image is not close enough to the actual object, the spell fails. You cannot specify a unique item unless you have observed that particular item firsthand (not through divination). The spell is blocked by even a thin sheet of lead. Creatures cannot be found by this spell. Polymorph any object",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Longstrider", school: "Transmutation", levels: "druid 1, hunter 1, ranger 1",
                          castingTime: "1 standard action", components: "V, S, M (a pinch of dirt)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 hour/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This spell gives you a +10 foot enhancement bonus to your base speed. It has no effect on other modes of movement, such as burrow, climb, fly, or swim. Longstrider, Greater",
                          desc: "This spell gives you a +10 foot enhancement bonus to your base speed. It has no effect on other modes of movement, such as burrow, climb, fly, or swim. Longstrider, Greater",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Longstrider, Greater", school: "Transmutation", levels: "druid 1, hunter 1, ranger 1",
                          castingTime: "1 standard action", components: "V, S, M (a pinch of dirt)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 hour/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This functions as longstrider , except it gives you a +20-foot enhancement bonus to your base speed and a +10-foot enhancement bonus to your other modes of movement (burrow, climb, fly, swim, and so…",
                          desc: "This functions as longstrider , except it gives you a +20-foot enhancement bonus to your base speed and a +10-foot enhancement bonus to your other modes of movement (burrow, climb, fly, swim, and so on). It does not affect movement modes you do not actually have—for example, if you do not have a swim speed, this spell does not grant you a swim speed.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Lullaby", school: "Enchantment (Compulsion)", levels: "bard 0, mesmerist 0, psychic 0, skald 0",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "living creatures within a 10-ft.-radius burst", targets: "",
                          duration: "concentration + 1 round/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "Any creature within the area that fails a Will save becomes drowsy and inattentive, taking a –5 penalty on Perception checks and a –2 penalty on Will saves against sleep effects while the",
                          desc: "Any creature within the area that fails a Will save becomes drowsy and inattentive, taking a –5 penalty on Perception checks and a –2 penalty on Will saves against sleep effects while the",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Mage Armor", school: "Conjuration (Creation)", levels: "arcanist 1, bloodrager 1, occultist 1, psychic 1, sorcerer 1, spiritualist 1, summoner 1, summoner (unchained) 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, F (a piece of cured leather)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 hour/level (D)",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "An invisible but tangible field of force surrounds the subject of a mage armor spell, providing a +4 armor bonus to AC. Unlike mundane armor,",
                          desc: "An invisible but tangible field of force surrounds the subject of a mage armor spell, providing a +4 armor bonus to AC. Unlike mundane armor,",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Mage Hand", school: "Transmutation", levels: "arcanist 0, bard 0, magus 0, medium 0, mesmerist 0, occultist 0, psychic 0, skald 0, sorcerer 0, spiritualist 0, summoner 0, summoner (unchained) 0, wizard 0",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one nonmagical, unattended object weighing up to 5 lbs.",
                          duration: "concentration",
                          savingThrow: "none;", sr: false,
                          summary: "You point your finger at an object and can lift it and move it at will from a distance.",
                          desc: "You point your finger at an object and can lift it and move it at will from a distance. As a move action, you can propel the object as far as 15 feet in any direction, though the spell ends if the distance between you and the object ever exceeds the spell's range.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Mage's Disjunction", school: "Abjuration", levels: "arcanist 9, psychic 9, sorcerer 9, wizard 9",
                          castingTime: "1 standard action", components: "V",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "all magical effects and magic items within a 40-ft. radius burst, or one magic item (see text)", targets: "",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (object);", sr: false,
                          summary: "All magical effects and magic items within the radius of the spell, except for those that you carry or touch, are disjoined.",
                          desc: "All magical effects and magic items within the radius of the spell, except for those that you carry or touch, are disjoined. That is, spells and spell-like effects are unraveled and destroyed completely (ending the effect as a dispel magic spell does), and each permanent magic item must make a successful Will save or be turned into a normal item for the duration of this spell. An item in a creature's possession uses its own Will save bonus or its possessor's Will save bonus, whichever is higher. If an item's saving throw results in a natural 1 on the die, the item is destroyed instead of being suppressed. You also have a 1% chance per caster level of destroying an",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Mage's Faithful Hound", school: "Conjuration (Creation)", levels: "arcanist 5, sorcerer 5, spiritualist 5, summoner 4, summoner (unchained) 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (a tiny silver whistle, a piece of bone, and a thread)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "phantom watchdog", targets: "",
                          duration: "1 hour/caster level or until discharged, then 1 round/caster level; see text",
                          savingThrow: "none;", sr: false,
                          summary: "You conjure up a phantom watchdog that is invisible to everyone but yourself. It then guards the area where it was conjured (it does not move).",
                          desc: "You conjure up a phantom watchdog that is invisible to everyone but yourself. It then guards the area where it was conjured (it does not move). The hound immediately starts barking loudly if any Small or larger creature approaches within 30 feet of it. (Those within 30 feet of the hound when it is conjured may move about in the area, but if they leave and return, they activate the barking.) The hound sees invisible and ethereal creatures. It does not react to figments, but it does react to shadow illusions. If an intruder approaches to within 5 feet of the hound, the dog stops barking and delivers a vicious bite (+10 attack bonus, 2d6+3 points of piercing damage) once per round. The dog also gets the bonuses appropriate to an invisible creature (see invisibility ). The dog is considered ready to bite intruders, so it delivers its first bite on the intruder's turn. Its bite is the equivalent of a magic weapon for the purpose of damage reduction. The hound cannot be attacked, but it can be dispelled. The spell lasts for 1 hour per caster level, but once the hound begins barking, it lasts only 1 round per caster level. If you are ever more than 100 feet distant from the hound, the spell ends.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Mage's Lucubration", school: "Transmutation", levels: "wizard 6",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "instantaneous",
                          savingThrow: "None", sr: false,
                          summary: "You instantly prepare any one spell of 5th level or lower that you have used during the past 24 hours. The spell must have been actually cast during that period.",
                          desc: "You instantly prepare any one spell of 5th level or lower that you have used during the past 24 hours. The spell must have been actually cast during that period. The chosen spell is stored in your mind as through prepared in the normal fashion. If the recalled spell requires material components, you must provide them. The recovered spell is not usable until the material components are available.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Mage's Magnificent Mansion", school: "Conjuration (Creation)", levels: "arcanist 7, psychic 7, sorcerer 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S, F (a miniature ivory door, a piece of polished marble, and a silver spoon, each worth 5 gp)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "extradimensional mansion, up to three 10-ft. cubes/level (S)", targets: "",
                          duration: "2 hours/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You conjure up an extradimensional dwelling that has a single entrance on the plane from which the spell was cast.",
                          desc: "You conjure up an extradimensional dwelling that has a single entrance on the plane from which the spell was cast. The entry point looks like a faint shimmering in the air that is 4 feet wide and 8 feet high. Only those you designate may enter the mansion, and the portal is shut and made invisible behind you when you enter. You may open it again from your own side at will. Once observers have passed beyond the entrance, they are in a magnificent foyer with numerous chambers beyond. The atmosphere is clean, fresh, and warm. You can create any floor plan you desire to the limit of the spell's effect. The place is furnished and contains sufficient foodstuffs to serve a nine-course banquet to a dozen people per caster level. A staff of near-transparent servants (as many as two per caster level), liveried and obedient, wait upon all who enter. The servants function as unseen servant spells except that they are visible and can go anywhere in the mansion. Since the place can be entered only through its special portal, outside conditions do not affect the mansion, nor do conditions inside it pass to the plane beyond.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Mage's Private Sanctum", school: "Abjuration", levels: "arcanist 5, medium 4, mesmerist 5, psychic 5, sorcerer 5, spiritualist 5, wizard 5",
                          castingTime: "10 minutes", components: "V, S, M (a sheet of lead, a piece of glass, a wad of cotton, and powdered chrysolite)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "30-ft. cube/level (S)", targets: "",
                          duration: "24 hours (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell ensures privacy. Anyone looking into the area from outside sees only a dark, foggy mass. Darkvision cannot penetrate it.",
                          desc: "This spell ensures privacy. Anyone looking into the area from outside sees only a dark, foggy mass. Darkvision cannot penetrate it. No sounds, no matter how loud, can escape the area, so nobody can eavesdrop from outside. Those inside can see out normally. Divination (scrying) spells cannot perceive anything within the area, and those within are immune to detect thoughts . The ward prevents speech between those inside and those outside (because it blocks sound), but it does not prevent other communication, such as a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Mage's Sword", school: "Evocation", levels: "arcanist 7, psychic 7, sorcerer 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S, F (a miniature platinum sword worth 250 gp)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one sword", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: true,
                          summary: "This spell brings into being a shimmering, sword-like plane of force. The sword strikes at any opponent within its range, as you desire, starting in the round that you cast the spell.",
                          desc: "This spell brings into being a shimmering, sword-like plane of force. The sword strikes at any opponent within its range, as you desire, starting in the round that you cast the spell. The sword attacks its designated target once each round on your turn. Its attack bonus is equal to your caster level + your Intelligence bonus or your Charisma bonus (for wizards or sorcerers, respectively) with an additional +3 enhancement bonus. As a force effect, it can strike ethereal and incorporeal creatures. It deals 4d6+3 points of force damage, with a threat range of 19–20 and a critical multiplier of ×2. The sword always strikes from your direction. It does not get a bonus for flanking or help a combatant get one. If the sword goes beyond the spell range from you, goes out of your sight, or you are not directing it, it returns to you and hovers. Each round after the first, you can use a standard action to switch the sword to a new target. If you do not, the sword continues to attack the previous round's target. The sword cannot be attacked or harmed by physical attacks, but",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Magic Aura", school: "Illusion (Glamer)", levels: "arcanist 1, bard 1, mesmerist 1, occultist 1, psychic 1, redmantisassassin 1, skald 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, F (a small square of silk that must be passed over the object that receives the aura)",
                          range: "touch", area: "", targets: "one touched object weighing up to 5 lbs./level",
                          duration: "1 day/level (D)",
                          savingThrow: "none; see text;", sr: false,
                          summary: "You alter an item's aura so that it registers to detect spells (and spells with similar capabilities) as though it were nonmagical, or a magic item of a kind you specify, or the subject of a spell…",
                          desc: "You alter an item's aura so that it registers to detect spells (and spells with similar capabilities) as though it were nonmagical, or a magic item of a kind you specify, or the subject of a spell you specify. If the object bearing",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Magic Aura, Greater", school: "Illusion (Glamer)", levels: "arcanist 1, bard 1, mesmerist 1, occultist 1, psychic 1, redmantisassassin 1, skald 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, F (a small square of silk that must be passed over the object that receives the aura)",
                          range: "touch", area: "", targets: "one touched object weighing up to 5 lbs./level",
                          duration: "1 day/level (D)",
                          savingThrow: "none; see text;", sr: false,
                          summary: "If cast on an object, this spell functions as magic aura , except that if you have identified the unique spellcasting signatures of a specific individual with",
                          desc: "If cast on an object, this spell functions as magic aura , except that if you have identified the unique spellcasting signatures of a specific individual with",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Magic Circle against Chaos", school: "Abjuration", levels: "arcanist 3, cleric 3, inquisitor 3, medium 3, occultist 3, oracle 3, paladin 3, shaman 3, sorcerer 3, spiritualist 3, summoner 3, summoner (unchained) 3, warpriest 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M/DF (a 3-ft.-diameter circle of powdered silver)",
                          range: "touch", area: "10-ft.-radius emanation from touched creature", targets: "",
                          duration: "10 min./level",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "This spell functions like magic circle against evil , except that it is similar to",
                          desc: "This spell functions like magic circle against evil , except that it is similar to",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Magic Circle against Evil", school: "Abjuration", levels: "arcanist 3, cleric 3, inquisitor 3, medium 3, occultist 3, oracle 3, paladin 3, shaman 3, sorcerer 3, spiritualist 3, summoner 3, summoner (unchained) 3, warpriest 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M/DF (a 3-ft.-diameter circle of powdered silver)",
                          range: "touch", area: "10-ft.-radius emanation from touched creature", targets: "",
                          duration: "10 min./level",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "All creatures within the area gain the effects of a protection from evil spell, and evil summoned creatures cannot enter the area either.",
                          desc: "All creatures within the area gain the effects of a protection from evil spell, and evil summoned creatures cannot enter the area either. Creatures in the area, or who later enter the area, receive only one attempt to suppress effects that are controlling them. If successful, such effects are suppressed as long as they remain in the area. Creatures that leave the area and come back are not protected. You must overcome a creature's spell resistance in order to keep it at bay (as in the third function of",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Magic Circle against Good", school: "Abjuration", levels: "antipaladin 3, arcanist 3, cleric 3, inquisitor 3, medium 3, occultist 3, oracle 3, shaman 3, sorcerer 3, spiritualist 3, summoner 3, summoner (unchained) 3, warpriest 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M/DF (a 3-ft.-diameter circle of powdered silver)",
                          range: "touch", area: "10-ft.-radius emanation from touched creature", targets: "",
                          duration: "10 min./level",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "This spell functions like magic circle against evil , except that it is similar to",
                          desc: "This spell functions like magic circle against evil , except that it is similar to",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Magic Circle against Law", school: "Abjuration", levels: "antipaladin 3, arcanist 3, cleric 3, inquisitor 3, medium 3, occultist 3, oracle 3, shaman 3, sorcerer 3, spiritualist 3, summoner 3, summoner (unchained) 3, warpriest 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M/DF (a 3-ft.-diameter circle of powdered silver)",
                          range: "touch", area: "10-ft.-radius emanation from touched creature", targets: "",
                          duration: "10 min./level",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "This spell functions like magic circle against evil , except that it is similar to",
                          desc: "This spell functions like magic circle against evil , except that it is similar to",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Magic Fang", school: "Transmutation", levels: "druid 1, hunter 1, ranger 1, spiritualist 1, summoner 1, summoner (unchained) 1",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "1 min./level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "Magic fang gives one natural weapon or unarmed strike of the subject a +1 enhancement bonus on attack and damage rolls. The spell can affect a slam attack, fist, bite, or other natural weapon.",
                          desc: "Magic fang gives one natural weapon or unarmed strike of the subject a +1 enhancement bonus on attack and damage rolls. The spell can affect a slam attack, fist, bite, or other natural weapon. The spell does not change an unarmed strike's damage from nonlethal damage to lethal damage. Magic fang",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Magic Fang, Greater", school: "Transmutation", levels: "druid 1, hunter 1, ranger 1, spiritualist 1, summoner 1, summoner (unchained) 1",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "1 min./level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions like magic fang , except that the enhancement bonus on attack and damage rolls is +1 per four caster levels (maximum +5).",
                          desc: "This spell functions like magic fang , except that the enhancement bonus on attack and damage rolls is +1 per four caster levels (maximum +5). This bonus does not allow a natural weapon or unarmed strike to bypass damage reduction aside from magic. Alternatively, you may imbue all of the creature's natural weapons with a +1 enhancement bonus (regardless of your caster level).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Magic Jar", school: "Necromancy", levels: "alchemist 5, arcanist 5, investigator 5, sorcerer 5, summoner 4, summoner (unchained) 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, F (a gem or crystal worth at least 100 gp)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "1 hour/level or until you return to your body",
                          savingThrow: "Will negates; see text;", sr: true,
                          summary: "By casting magic jar , you place your soul in a gem or large crystal (known as the",
                          desc: "By casting magic jar , you place your soul in a gem or large crystal (known as the",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Magic Missile", school: "Evocation", levels: "arcanist 1, bloodrager 1, magus 1, psychic 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "up to five creatures, no two of which can be more than 15 ft. apart",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: true,
                          summary: "A missile of magical energy darts forth from your fingertip and strikes its target, dealing 1d4+1 points of force damage.",
                          desc: "A missile of magical energy darts forth from your fingertip and strikes its target, dealing 1d4+1 points of force damage. The missile strikes unerringly, even if the target is in melee combat, so long as it has less than total cover or total concealment. Specific parts of a creature can't be singled out. Objects are not damaged by the spell. For every two caster levels beyond 1st, you gain an additional missile—two at 3rd level, three at 5th, four at 7th, and the maximum of five missiles at 9th level or higher. If you shoot multiple missiles, you can have them strike a single creature or several creatures. A single missile can strike only one creature. You must designate targets before you check for spell resistance or roll damage.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Magic Mouth", school: "Illusion (Glamer)", levels: "arcanist 2, bard 1, medium 2, mesmerist 1, occultist 2, psychic 2, redmantisassassin 2, skald 1, sorcerer 2, summoner 1, summoner (unchained) 1, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a small bit of honeycomb and jade dust worth 10 gp)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature or object",
                          duration: "permanent until discharged",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "This spell imbues the chosen object or creature with an enchanted mouth that suddenly appears and speaks its message the next time a specified event occurs.",
                          desc: "This spell imbues the chosen object or creature with an enchanted mouth that suddenly appears and speaks its message the next time a specified event occurs. The message, which must be 25 or fewer words long, can be in any language known by you and can be delivered over a period of 10 minutes. The mouth cannot utter verbal components, use command words, or activate magical effects. It does, however, move according to the words articulated; if it were placed upon a statue, the mouth of the statue would move and appear to speak. Magic mouth can also be placed upon a tree, rock, or any other object or creature. The spell functions when specific conditions are fulfilled according to your command as set in the spell. Commands can be as general or as detailed as desired, although only visual and audible triggers can be used. Triggers react to what appears to be the case. Disguises and illusions can fool them. Normal darkness does not defeat a visual trigger, but magical",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Magic Stone", school: "Transmutation", levels: "cleric 1, druid 1, hunter 1, oracle 1, shaman 1, warpriest 1",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "up to three pebbles touched",
                          duration: "30 minutes or until discharged",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "You transmute as many as three pebbles, which can be no larger than sling bullets, so that they strike with great force when thrown or slung. If hurled, they have a range increment of 20 feet.",
                          desc: "You transmute as many as three pebbles, which can be no larger than sling bullets, so that they strike with great force when thrown or slung. If hurled, they have a range increment of 20 feet. If slung, treat them as sling bullets (range increment 50 feet). The spell gives them a +1 enhancement bonus on attack and damage rolls. The user of the stones makes a normal ranged attack. Each stone that hits deals 1d6+1 points of damage (including the spell's enhancement bonus), or 2d6+2 points against undead.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Magic Vestment", school: "Transmutation", levels: "cleric 3, inquisitor 3, occultist 3, oracle 3, shaman 3, warpriest 3",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "armor or shield touched",
                          duration: "1 hour/level",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "You imbue a suit of armor or a shield with an enhancement bonus of +1 per four caster levels (maximum +5 at 20th level).",
                          desc: "You imbue a suit of armor or a shield with an enhancement bonus of +1 per four caster levels (maximum +5 at 20th level). An outfit of regular clothing counts as armor that grants no AC bonus for the purpose of this spell.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Magic Weapon", school: "Transmutation", levels: "antipaladin 1, arcanist 1, bloodrager 1, cleric 1, inquisitor 1, magus 1, occultist 1, oracle 1, paladin 1, redmantisassassin 1, shaman 1, sorcerer 1, warpriest 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "weapon touched",
                          duration: "1 min./level",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "Magic weapon gives a weapon a +1 enhancement bonus on attack and damage rolls. An enhancement bonus does not stack with a masterwork weapon's +1 bonus on attack rolls.",
                          desc: "Magic weapon gives a weapon a +1 enhancement bonus on attack and damage rolls. An enhancement bonus does not stack with a masterwork weapon's +1 bonus on attack rolls. You can't cast this spell on a natural weapon, such as an unarmed strike (instead, see",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Magic Weapon, Greater", school: "Transmutation", levels: "antipaladin 1, arcanist 1, bloodrager 1, cleric 1, inquisitor 1, magus 1, occultist 1, oracle 1, paladin 1, redmantisassassin 1, shaman 1, sorcerer 1, warpriest 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "weapon touched",
                          duration: "1 min./level",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "This spell functions like magic weapon , except that it gives a weapon an enhancement bonus on attack and damage rolls of +1 per four caster levels (maximum +5).",
                          desc: "This spell functions like magic weapon , except that it gives a weapon an enhancement bonus on attack and damage rolls of +1 per four caster levels (maximum +5). This bonus does not allow a weapon to bypass damage reduction aside from magic. Alternatively, you can affect as many as 50 arrows, bolts, or bullets. The projectiles must be of the same kind, and they have to be together (in the same quiver or other container). Projectiles, but not thrown weapons, lose their transmutation after they are used. Treat shuriken as projectiles, rather than as thrown weapons, for the purpose of this spell.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Magical Beast Shape", school: "Transmutation (Polymorph)", levels: "alchemist 3, arcanist 3, bloodrager 3, investigator 3, magus 3, redmantisassassin 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a piece of the creature whose form you plan to assume)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 min./level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as beast shape IV except you can assume the form of only a magical beast of a size between Diminutive and Huge.",
                          desc: "This spell functions as beast shape IV except you can assume the form of only a magical beast of a size between Diminutive and Huge. If the form you assume has any of the following abilities, you gain those abilities: burrow speed 60 feet, climb speed 90 feet, fly speed 120 feet (good maneuverability), swim speed 120 feet, blindsense 60 feet, blindsight 30 feet, darkvision 90 feet, low-light vision, scent, see in darkness, tremorsense 60 feet, blood drain, blood frenzy, breath weapon (if damage, up to 12d6 points), constrict, fast healing 5, ferocity, grab, hold breath, jet, no breath, poison, pounce, powerful charge, pull, rake, rend, roar, spikes, trample, trip, and web. If the creature has immunity to poison, you gain a +8 resistance bonus on saves against poison. If the creature has immunity or resistance to any energy types, you gain resistance 20 to those energy types. If the creature has vulnerability to an energy type, you gain that vulnerability.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Major Creation", school: "Conjuration (Creation)", levels: "adept 4, arcanist 4, occultist 3, psychic 4, sorcerer 4, spiritualist 3, summoner 3, summoner (unchained) 3, witch 4, wizard 4",
                          castingTime: "1 minute", components: "V, S, M (a tiny piece of matter of the same sort of item you plan to create with minor creation)",
                          range: "0 ft.", area: "unattended, nonmagical object of nonliving plant matter, up to 1 cu. ft./level", targets: "",
                          duration: "1 hour/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like minor creation , except that you can also create an object of mineral nature: stone, crystal, metal, or the like.",
                          desc: "This spell functions like minor creation , except that you can also create an object of mineral nature: stone, crystal, metal, or the like. The duration of the created item varies with its relative hardness and rarity, as indicated on the following table.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Major Image", school: "Illusion (Figment)", levels: "arcanist 2, bard 2, magus 2, medium 2, mesmerist 2, occultist 2, psychic 2, redmantisassassin 2, skald 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, F (a bit of fleece)",
                          range: "long (400 ft. + 40 ft./level)", area: "visual figment that cannot extend beyond four 10 ft. cubes + one 10 ft. cube/level (S)", targets: "",
                          duration: "concentration + 2 rounds",
                          savingThrow: "Will disbelief (if interacted with);", sr: false,
                          summary: "This spell functions like silent image , except that sound, smell, and thermal illusions are included in the spell effect. While concentrating, you can move the image within the range.",
                          desc: "This spell functions like silent image , except that sound, smell, and thermal illusions are included in the spell effect. While concentrating, you can move the image within the range. The image disappears when struck by an opponent unless you cause the illusion to react appropriately.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Make Whole", school: "Transmutation", levels: "arcanist 2, cleric 2, occultist 2, oracle 2, psychic 2, redmantisassassin 2, sorcerer 2, warpriest 2, wizard 2",
                          castingTime: "10 minutes", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one object up to 10 cu. ft./level or one construct creature of any size",
                          duration: "instantaneous",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "This spell functions as mending , except that it repairs 1d6 points of damage per level when cast on an object or construct creature (maximum 5d6).",
                          desc: "This spell functions as mending , except that it repairs 1d6 points of damage per level when cast on an object or construct creature (maximum 5d6).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Make Whole, Greater", school: "Transmutation", levels: "arcanist 2, cleric 2, occultist 2, oracle 2, psychic 2, redmantisassassin 2, sorcerer 2, warpriest 2, wizard 2",
                          castingTime: "10 minutes", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one object up to 10 cu. ft./level or one construct creature of any size",
                          duration: "instantaneous",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "This spell repairs 1d6 points of damage plus 1 point per level when cast on a construct creature (maximum 10d6+10).",
                          desc: "This spell repairs 1d6 points of damage plus 1 point per level when cast on a construct creature (maximum 10d6+10). Greater make whole can fix destroyed magic items or technological items (items at 0 hit points or fewer), and restores the magic properties of the item if your caster level at least equal to that of the item. This spell otherwise functions as",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Mark of Justice", school: "Necromancy", levels: "cleric 5, inquisitor 5, oracle 5, paladin 4, warpriest 5, witch 5",
                          castingTime: "10 minutes", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "permanent; see text",
                          savingThrow: "none;", sr: true,
                          summary: "You mark a subject and state some behavior on the part of the subject that will activate the mark. When activated, the mark curses the subject.",
                          desc: "You mark a subject and state some behavior on the part of the subject that will activate the mark. When activated, the mark curses the subject. Typically, you designate some sort of undesirable behavior that activates the mark, but you can pick any act you please. The effect of the mark is identical with the effect of bestow curse . Since this spell takes 10 minutes to cast and involves writing on the target, you can cast it only on a creature that is willing or restrained.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Maze", school: "Conjuration (Teleportation)", levels: "arcanist 8, psychic 8, sorcerer 8, summoner 6, witch 8, wizard 8",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "see text",
                          savingThrow: "none;", sr: true,
                          summary: "You banish the subject into an extradimensional labyrinth. Each round on its turn, it may attempt a DC 20 Intelligence check to escape the labyrinth as a full-round action.",
                          desc: "You banish the subject into an extradimensional labyrinth. Each round on its turn, it may attempt a DC 20 Intelligence check to escape the labyrinth as a full-round action. If the subject doesn't escape, the maze disappears after 10 minutes, freeing the subject. On escaping or leaving the maze, the subject reappears where it had been when the maze spell was cast. If this location is filled with a solid object, the subject appears in the nearest open space. Spells and abilities that move a creature within a plane, such as teleport",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Meld into Stone", school: "Transmutation", levels: "cleric 3, druid 3, hunter 3, oracle 3, psychic 3, warpriest 3",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "10 min./level",
                          savingThrow: "None", sr: false,
                          summary: "Meld into stone enables you to meld your body and possessions into a single block of stone. The stone must be large enough to accommodate your body in all three dimensions.",
                          desc: "Meld into stone enables you to meld your body and possessions into a single block of stone. The stone must be large enough to accommodate your body in all three dimensions. When the casting is complete, you and not more than 100 pounds of nonliving gear merge with the stone. If either condition is violated, the spell fails and is wasted. While in the stone, you remain in contact, however tenuous, with the face of the stone through which you melded. You remain aware of the passage of time and can cast spells on yourself while hiding in the stone. Nothing that goes on outside the stone can be seen, but you can still hear what happens around you. Minor physical damage to the stone does not harm you, but its partial destruction (to the extent that you no longer fit within it) expels you and deals you 5d6 points of damage. The stone's complete destruction expels you and slays you instantly unless you make a DC 18 Fortitude save. Even if you make your save, you still take 5d6 points of damage. Any time before the duration expires, you can step out of the stone through the surface that you entered. If the spell's duration expires or the effect is dispelled before you voluntarily exit the stone, you are violently expelled and take 5d6 points of damage. The following spells harm you if cast upon the stone that you are occupying.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Mending", school: "Transmutation", levels: "adept 0, arcanist 0, bard 0, cleric 0, druid 0, hunter 0, occultist 0, oracle 0, psychic 0, shaman 0, skald 0, sorcerer 0, spiritualist 0, summoner 0, summoner (unchained) 0, warpriest 0, witch 0, wizard 0",
                          castingTime: "10 minutes", components: "V, S",
                          range: "10 ft.", area: "", targets: "one object up to 1 lb./level",
                          duration: "instantaneous",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "This spell repairs damaged objects, restoring 1d4 hit points to the object.",
                          desc: "This spell repairs damaged objects, restoring 1d4 hit points to the object. If the object has the broken condition, this condition is removed if the object is restored to at least half its original hit points. All of the pieces of an object must be present for this spell to function. Magic items can be repaired by this spell, but you must have a caster level equal to or higher than that of the object. Magic items that are destroyed (at 0 hit points or less) can be repaired with this spell, but this spell does not restore their magic abilities. This spell does not affect creatures (including constructs). This spell has no effect on objects that have been warped or otherwise transmuted, but it can still repair damage done to such items.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Message", school: "Transmutation", levels: "arcanist 0, bard 0, medium 0, mesmerist 0, occultist 0, psychic 0, skald 0, sorcerer 0, spiritualist 0, summoner 0, summoner (unchained) 0, witch 0, wizard 0",
                          castingTime: "1 standard action", components: "V, S, F (a piece of copper wire)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature/level",
                          duration: "10 min./level",
                          savingThrow: "none;", sr: false,
                          summary: "You can whisper messages and receive whispered replies. Those nearby can hear these messages with a DC 25 Perception check. You point your finger at each creature you want to receive the message.",
                          desc: "You can whisper messages and receive whispered replies. Those nearby can hear these messages with a DC 25 Perception check. You point your finger at each creature you want to receive the message. When you whisper, the whispered message is audible to all targeted creatures within range. Magical silence , 1 foot of stone, 1 inch of common metal (or a thin sheet of lead), or 3 feet of wood or dirt blocks the spell. The message does not have to travel in a straight line. It can circumvent a barrier if there is an open path between you and the subject, and the path's entire length lies within the spell's range. The creatures that receive the message can whisper a reply that you hear. The spell transmits sound, not meaning; it doesn't transcend language barriers. To speak a message, you must mouth the words and whisper.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Meteor Swarm", school: "Evocation", levels: "arcanist 9, sorcerer 9, wizard 9",
                          castingTime: "1 standard action", components: "V, S",
                          range: "long (400 ft. + 40 ft./level)", area: "four 40-ft.-radius spreads, see text", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none or Reflex half, see text;", sr: true,
                          summary: "Meteor swarm is a very powerful and spectacular spell that is similar to fireball in many aspects.",
                          desc: "Meteor swarm is a very powerful and spectacular spell that is similar to fireball in many aspects. When you cast it, four 2-foot-diameter spheres spring from your outstretched hand and streak in straight lines to the spots you select. The meteor spheres leave a fiery trail of sparks. If you aim a sphere at a specific creature, you may make a ranged touch attack to strike the target with the meteor. Any creature struck by a sphere takes 2d6 points of bludgeoning damage (no save) and takes a –4 penalty on the saving throw against the sphere's fire damage (see below). If a targeted sphere misses its target, it simply explodes at the nearest corner of the target's space. You may aim more than one sphere at the same target. Once a sphere reaches its destination, it explodes in a 40-foot-radius spread, dealing 6d6 points of fire damage to each creature in the area. If a creature is within the area of more than one sphere, it must save separately against each. Despite stemming from separate spheres, all of the fire damage is added together after the saves have been made, and fire resistance is applied only once.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Mind Blank", school: "Abjuration", levels: "arcanist 8, psychic 7, sorcerer 8, witch 8, wizard 8",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "24 hours",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The subject is protected from all devices and spells that gather information about the target through divination magic (such as detect evil ,",
                          desc: "The subject is protected from all devices and spells that gather information about the target through divination magic (such as detect evil ,",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Mind Blank, Communal", school: "Abjuration", levels: "arcanist 8, psychic 7, sorcerer 8, witch 8, wizard 8",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "24 hours",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions like mind blank , except you divide the duration in 1-hour increments among the creatures touched.",
                          desc: "This spell functions like mind blank , except you divide the duration in 1-hour increments among the creatures touched.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Mind Fog", school: "Enchantment (Compulsion)", levels: "arcanist 5, bard 5, mesmerist 5, occultist 5, psychic 5, skald 5, sorcerer 5, spiritualist 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "fog spreads in 20-ft. radius, 20 ft. high", targets: "",
                          duration: "30 minutes and 2d6 rounds; see text",
                          savingThrow: "Will negates;", sr: true,
                          summary: "Mind fog produces a bank of thin mist that weakens the mental resistance of those caught in it. Creatures in the mind fog take a –10 penalty on Wisdom checks and Will saves.",
                          desc: "Mind fog produces a bank of thin mist that weakens the mental resistance of those caught in it. Creatures in the mind fog take a –10 penalty on Wisdom checks and Will saves. (A creature that successfully saves against the fog is not affected and need not make further saves even if it remains in the fog.) Affected creatures take the penalty as long as they remain in the fog and for 2d6 rounds thereafter. The fog is stationary and lasts for 30 minutes (or until dispersed by wind). A moderate wind (11+ mph) disperses the fog in 4 rounds; a strong wind (21+ mph) disperses the fog in 1 round. The fog is thin and does not significantly hamper vision.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Minor Creation", school: "Conjuration (Creation)", levels: "adept 4, arcanist 4, occultist 3, psychic 4, sorcerer 4, spiritualist 3, summoner 3, summoner (unchained) 3, witch 4, wizard 4",
                          castingTime: "1 minute", components: "V, S, M (a tiny piece of matter of the same sort of item you plan to create with minor creation)",
                          range: "0 ft.", area: "unattended, nonmagical object of nonliving plant matter, up to 1 cu. ft./level", targets: "",
                          duration: "1 hour/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You create a nonmagical, unattended object of nonliving vegetable matter. The volume of the item created cannot exceed 1 cubic foot per caster level.",
                          desc: "You create a nonmagical, unattended object of nonliving vegetable matter. The volume of the item created cannot exceed 1 cubic foot per caster level. You must succeed on an appropriate Craft skill check to make a complex item. Attempting to use any created object as a material component causes the spell to fail. Major Creation",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Minor Image", school: "Illusion (Figment)", levels: "arcanist 2, bard 2, magus 2, medium 2, mesmerist 2, occultist 2, psychic 2, redmantisassassin 2, skald 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, F (a bit of fleece)",
                          range: "long (400 ft. + 40 ft./level)", area: "visual figment that cannot extend beyond four 10 ft. cubes + one 10 ft. cube/level (S)", targets: "",
                          duration: "concentration + 2 rounds",
                          savingThrow: "Will disbelief (if interacted with);", sr: false,
                          summary: "This spell functions like silent image , except that",
                          desc: "This spell functions like silent image , except that",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Miracle", school: "Evocation", levels: "cleric 9, oracle 9",
                          castingTime: "1 standard action", components: "V, S; see text",
                          range: "see text", area: "", targets: "",
                          duration: "see text",
                          savingThrow: "see text;", sr: true,
                          summary: "You don't so much cast a miracle as request one. You state what you would like to have happen and request that your deity (or the power you pray to for spells) intercede.",
                          desc: "You don't so much cast a miracle as request one. You state what you would like to have happen and request that your deity (or the power you pray to for spells) intercede.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Mirage Arcana", school: "Illusion (Glamer)", levels: "arcanist 5, bard 5, mesmerist 5, psychic 5, skald 5, sorcerer 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "long (400 ft. + 40 ft./level)", area: "one 20-ft. cube/level (S)", targets: "",
                          duration: "concentration +1 hour/level (D)",
                          savingThrow: "Will disbelief (if interacted with);", sr: false,
                          summary: "This spell functions like hallucinatory terrain , except that it enables you to make any area appear to be something other than it is.",
                          desc: "This spell functions like hallucinatory terrain , except that it enables you to make any area appear to be something other than it is. The illusion includes audible, visual, tactile, and olfactory elements. Unlike",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Mirror Image", school: "Illusion (Figment)", levels: "adept 2, arcanist 2, bard 2, bloodrager 2, magus 2, medium 2, mesmerist 2, occultist 2, psychic 2, redmantisassassin 2, skald 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 min./level",
                          savingThrow: "None", sr: false,
                          summary: "This spell creates a number of illusory doubles of you that inhabit your square. These doubles make it difficult for enemies to precisely locate and attack you.",
                          desc: "This spell creates a number of illusory doubles of you that inhabit your square. These doubles make it difficult for enemies to precisely locate and attack you. When mirror image is cast, 1d4 images plus one image per three caster levels (maximum eight images total) are created. These images remain in your space and move with you, mimicking your movements, sounds, and actions exactly. Whenever you are attacked or are the target of a spell that requires an attack roll, there is a possibility that the attack targets one of your images instead. If the attack is a hit, roll randomly to see whether the selected target is real or a figment. If it is a figment, the figment is destroyed. If the attack misses by 5 or less, one of your figments is destroyed by the near miss. Area spells affect you normally and do not destroy any of your figments. Spells and effects that do not require an attack roll affect you normally and do not destroy any of your figments. Spells that require a touch attack are harmlessly discharged if used to destroy a figment. An attacker must be able to see the figments to be fooled. If you are invisible or the attacker is blind, the spell has no effect (although the normal miss chances still apply).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Misdirection", school: "Illusion (Glamer)", levels: "arcanist 2, bard 2, medium 2, mesmerist 2, occultist 2, psychic 2, redmantisassassin 2, skald 2, sorcerer 2, spiritualist 2, summoner 2, summoner (unchained) 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature or object, up to a 10-ft. cube in size",
                          duration: "1 hour/level",
                          savingThrow: "none or Will negates; see text;", sr: false,
                          summary: "By means of this spell, you misdirect the information from divination spells that reveal auras ( detect evil ,",
                          desc: "By means of this spell, you misdirect the information from divination spells that reveal auras ( detect evil ,",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Mislead", school: "Illusion (Figment, Glamer)", levels: "alchemist 6, arcanist 6, bard 5, investigator 6, magus 6, mesmerist 5, occultist 5, psychic 6, skald 5, sorcerer 6, spiritualist 6, wizard 6",
                          castingTime: "1 standard action", components: "S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "",
                          duration: "1 round/level (D) and concentration + 3 rounds; see text",
                          savingThrow: "none or Will disbelief (if interacted with); see text;", sr: false,
                          summary: "You become invisible (as greater invisibility , a glamer), and at the same time, an illusory double of you (as",
                          desc: "You become invisible (as greater invisibility , a glamer), and at the same time, an illusory double of you (as",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Mnemonic Enhancer", school: "Transmutation", levels: "wizard 4",
                          castingTime: "10 minutes", components: "V, S, M (a piece of string, and ink consisting of squid secretion mixed with black dragon's blood), F (an ivory plaque worth 50 gp)",
                          range: "personal", area: "", targets: "you",
                          duration: "instantaneous",
                          savingThrow: "None", sr: false,
                          summary: "Casting this spell allows you to prepare additional spells or retain spells recently cast. Pick one of these two versions when the spell is cast.",
                          desc: "Casting this spell allows you to prepare additional spells or retain spells recently cast. Pick one of these two versions when the spell is cast. Prepare : You prepare up to three additional levels of spells. A cantrip counts as 1/2 level for this purpose. You prepare and cast these spells normally.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Modify Memory", school: "Enchantment (Compulsion)", levels: "bard 4, medium 4, mesmerist 4, psychic 5, skald 4",
                          castingTime: "1 round; see text", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "permanent",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You reach into the subject's mind and modify as many as 5 minutes of its memories in one of the following ways. Eliminate all memory of an event the subject actually experienced.",
                          desc: "You reach into the subject's mind and modify as many as 5 minutes of its memories in one of the following ways. Eliminate all memory of an event the subject actually experienced. This spell cannot negate charm ,",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Moment of Prescience", school: "Divination", levels: "arcanist 8, psychic 8, sorcerer 8, witch 8, wizard 8",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 hour/level or until discharged",
                          savingThrow: "None", sr: false,
                          summary: "This spell grants you a sixth sense. Once during the spell's duration, you may choose to use its effect.",
                          desc: "This spell grants you a sixth sense. Once during the spell's duration, you may choose to use its effect. This spell grants you an insight bonus equal to your caster level (maximum +25) on any single attack roll, combat maneuver check, opposed ability or skill check, or saving throw. Alternatively, you can apply the insight bonus to your AC against a single attack (even if flat-footed). Activating the effect doesn't take an action; you can even activate it on another character's turn. You must choose to use the moment of prescience before you make the roll it is to modify. Once used, the spell ends. You can't have more than one",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Mount", school: "Conjuration (Summoning)", levels: "arcanist 1, bloodrager 1, magus 1, occultist 1, sorcerer 1, summoner 1, summoner (unchained) 1, witch 1, wizard 1",
                          castingTime: "1 round", components: "V, S, M (a bit of horse hair)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one mount", targets: "",
                          duration: "2 hours/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You summon a light horse or a pony (your choice) to serve you as a mount. The steed serves willingly and well. The mount comes with a bit and bridle and a riding saddle. Mount, Communal",
                          desc: "You summon a light horse or a pony (your choice) to serve you as a mount. The steed serves willingly and well. The mount comes with a bit and bridle and a riding saddle. Mount, Communal",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Mount, Communal", school: "Conjuration (Summoning)", levels: "arcanist 1, bloodrager 1, magus 1, occultist 1, sorcerer 1, summoner 1, summoner (unchained) 1, witch 1, wizard 1",
                          castingTime: "1 round", components: "V, S, M (a bit of horse hair)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one mount", targets: "",
                          duration: "2 hours/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like mount , except you can summon up to six light horses or ponies, and you divide the duration in 2-hour increments among the steeds summoned.",
                          desc: "This spell functions like mount , except you can summon up to six light horses or ponies, and you divide the duration in 2-hour increments among the steeds summoned.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Move Earth", school: "Transmutation", levels: "arcanist 6, druid 6, hunter 6, sorcerer 6, wizard 6",
                          castingTime: "see text", components: "V, S, M (clay, loam, sand, and an iron blade)",
                          range: "long (400 ft. + 40 ft./level)", area: "dirt in an area up to 750 ft. square and up to 10 ft. deep (S)", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "Move earth moves dirt (clay, loam, sand, and soil), possibly collapsing embankments, moving hillocks, shifting dunes, and so forth. In no event can rock formations be collapsed or moved.",
                          desc: "Move earth moves dirt (clay, loam, sand, and soil), possibly collapsing embankments, moving hillocks, shifting dunes, and so forth. In no event can rock formations be collapsed or moved. The area to be affected determines the casting time. For every 150-foot square (up to 10 feet deep), casting takes 10 minutes. The maximum area, 750 feet by 750 feet, takes 4 hours and 10 minutes to move. This spell does not violently break the surface of the ground. Instead, it creates wavelike crests and troughs, with the earth reacting with glacial fluidity until the desired result is achieved. Trees, structures, rock formations, and such are mostly unaffected except for changes in elevation and relative topography. The spell cannot be used for tunneling and is generally too slow to trap or bury creatures. Its primary use is for digging or filling moats or for adjusting terrain contours before a battle. This spell has no effect on earth creatures.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Neutralize Poison", school: "Conjuration (Healing)", levels: "adept 3, alchemist 4, bard 4, cleric 4, druid 3, hunter 3, inquisitor 4, investigator 4, oracle 4, paladin 4, ranger 3, shaman 4, skald 4, spiritualist 4, warpriest 4, witch 4",
                          castingTime: "1 standard action", components: "V, S, M/DF (charcoal)",
                          range: "touch", area: "", targets: "creature or object of up to 1 cu. ft./level touched",
                          duration: "instantaneous or 10 min./level; see text",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "You detoxify any sort of venom in the creature or object touched.",
                          desc: "You detoxify any sort of venom in the creature or object touched. If the target is a creature, you must make a caster level check (1d20 + caster level) against the DC of each poison affecting the target. Success means that the poison is neutralized. A cured creature suffers no additional effects from the poison, and any temporary effects are ended, but the spell does not reverse instantaneous effects, such as hit point damage, temporary ability damage, or effects that don't go away on their own. This spell can instead neutralize the poison in a poisonous creature or object for 10 minutes per level, at the caster's option. If cast on a creature, the creature receives a Will save to negate the effect. Neutralize Poison, Greater",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Neutralize Poison, Greater", school: "Conjuration (Healing)", levels: "adept 3, alchemist 4, bard 4, cleric 4, druid 3, hunter 3, inquisitor 4, investigator 4, oracle 4, paladin 4, ranger 3, shaman 4, skald 4, spiritualist 4, warpriest 4, witch 4",
                          castingTime: "1 standard action", components: "V, S, M/DF (charcoal)",
                          range: "touch", area: "", targets: "creature or object of up to 1 cu. ft./level touched",
                          duration: "instantaneous or 10 min./level; see text",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "This spell functions as neutralize poison , except as noted here. You automatically succeed at all caster level checks to neutralize any poisons affecting the target creature.",
                          desc: "This spell functions as neutralize poison , except as noted here. You automatically succeed at all caster level checks to neutralize any poisons affecting the target creature. The spell also reverses all instantaneous or permanent effects caused by poisons, such as temporary ability damage or permanent ability drain (it does not heal ability drain caused by anything other than poison, however). If you use the spell to neutralize the poison in a poisonous creature or object, the duration is 1 hour per level rather than 10 minutes per level. If the spell is cast on a creature, the creature can negate the effect by succeeding at a Will saving throw.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Nex's Secret Workshop", school: "Abjuration", levels: "alchemist 3, antipaladin 3, arcanist 3, hunter 4, inquisitor 3, investigator 3, medium 2, mesmerist 3, occultist 3, psychic 3, ranger 4, sorcerer 3, spiritualist 3, summoner 3, summoner (unchained) 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (diamond dust worth 50 gp)",
                          range: "touch", area: "", targets: "creature or object touched",
                          duration: "1 hour/level",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "Designed to protect a large number of items from rivals of the Arclords of Nex, this spell functions as nondetection except as noted above.",
                          desc: "Designed to protect a large number of items from rivals of the Arclords of Nex, this spell functions as nondetection except as noted above. You can exclude any creatures or objects in the spell’s range when casting this spell, if you wish. Nondetection, Communal",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Nightmare", school: "Illusion (Phantasm)", levels: "alchemist 5, arcanist 5, bard 5, investigator 5, medium 4, mesmerist 5, psychic 5, skald 5, sorcerer 5, spiritualist 5, wizard 5",
                          castingTime: "10 minutes", components: "V, S",
                          range: "unlimited", area: "", targets: "one living creature",
                          duration: "instantaneous",
                          savingThrow: "Will negates; see text;", sr: true,
                          summary: "You send a hideous and unsettling phantasmal vision to a specific creature that you name or otherwise specifically designate. The nightmare prevents restful sleep and causes 1d10 points of damage. The",
                          desc: "You send a hideous and unsettling phantasmal vision to a specific creature that you name or otherwise specifically designate. The nightmare prevents restful sleep and causes 1d10 points of damage. The",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Nondetection", school: "Abjuration", levels: "alchemist 3, antipaladin 3, arcanist 3, hunter 4, inquisitor 3, investigator 3, medium 2, mesmerist 3, occultist 3, psychic 3, ranger 4, sorcerer 3, spiritualist 3, summoner 3, summoner (unchained) 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (diamond dust worth 50 gp)",
                          range: "touch", area: "", targets: "creature or object touched",
                          duration: "1 hour/level",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "The warded creature or object becomes difficult to detect by divination spells such as clairaudience/clairvoyance ,",
                          desc: "The warded creature or object becomes difficult to detect by divination spells such as clairaudience/clairvoyance ,",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Nondetection, Communal", school: "Abjuration", levels: "alchemist 3, antipaladin 3, arcanist 3, hunter 4, inquisitor 3, investigator 3, medium 2, mesmerist 3, occultist 3, psychic 3, ranger 4, sorcerer 3, spiritualist 3, summoner 3, summoner (unchained) 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (diamond dust worth 50 gp)",
                          range: "touch", area: "", targets: "creature or object touched",
                          duration: "1 hour/level",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "This spell functions like nondetection , except you divide the duration in 1-hour increments among the creatures or objects touched.",
                          desc: "This spell functions like nondetection , except you divide the duration in 1-hour increments among the creatures or objects touched.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Obscure Object", school: "Abjuration", levels: "arcanist 2, bard 1, cleric 3, inquisitor 3, mesmerist 1, occultist 2, oracle 3, psychic 2, skald 1, sorcerer 2, spiritualist 3, warpriest 3, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (chameleon skin)",
                          range: "touch", area: "", targets: "one object touched of up to 100 lbs./level",
                          duration: "8 hours (D)",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "This spell hides an object from location by divination (scrying) effects, such as the scrying spell or a",
                          desc: "This spell hides an object from location by divination (scrying) effects, such as the scrying spell or a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Obscuring Mist", school: "Conjuration (Creation)", levels: "adept 1, arcanist 1, cleric 1, druid 1, hunter 1, magus 1, mesmerist 1, oracle 1, shaman 1, sorcerer 1, spiritualist 1, summoner (unchained) 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "20 ft.", area: "cloud spreads in 20-ft. radius from you, 20 ft. high", targets: "",
                          duration: "1 min./level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "A misty vapor arises around you. It is stationary. The vapor obscures all sight, including darkvision, beyond 5 feet. A creature 5 feet away has concealment (attacks have a 20% miss chance).",
                          desc: "A misty vapor arises around you. It is stationary. The vapor obscures all sight, including darkvision, beyond 5 feet. A creature 5 feet away has concealment (attacks have a 20% miss chance). Creatures farther away have total concealment (50% miss chance, and the attacker cannot use sight to locate the target). A moderate wind (11+ mph), such as from a gust of wind spell, disperses the fog in 4 rounds. A strong wind (21+ mph) disperses the fog in 1 round. A",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Open/Close", school: "Transmutation", levels: "arcanist 0, bard 0, magus 0, medium 0, mesmerist 0, occultist 0, psychic 0, skald 0, sorcerer 0, spiritualist 0, summoner 0, summoner (unchained) 0, wizard 0",
                          castingTime: "1 standard action", components: "V, S, F (a brass key)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "object weighing up to 30 lbs. or portal that can be opened or closed",
                          duration: "instantaneous",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "You can open or close (your choice) a door, chest, box, window, bag, pouch, bottle, barrel, or other container.",
                          desc: "You can open or close (your choice) a door, chest, box, window, bag, pouch, bottle, barrel, or other container. If anything resists this activity (such as a bar on a door or a lock on a chest), the spell fails. In addition, the spell can only open and close things weighing 30 pounds or less. Thus, doors, chests, and similar objects sized for enormous creatures may be beyond this spell's ability to affect.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Order's Wrath", school: "Evocation", levels: "cleric 4, inquisitor 4, oracle 4, warpriest 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "nonlawful creatures within a burst that fills a 30-ft. cube", targets: "",
                          duration: "instantaneous (1 round); see text",
                          savingThrow: "Will partial; see text;", sr: true,
                          summary: "You channel lawful power to smite enemies. The power takes the form of a three-dimensional grid of energy. Only chaotic and neutral (not lawful) creatures are harmed by the spell.",
                          desc: "You channel lawful power to smite enemies. The power takes the form of a three-dimensional grid of energy. Only chaotic and neutral (not lawful) creatures are harmed by the spell. The spell deals 1d8 points of damage per two caster levels (maximum 5d8) to chaotic creatures (or 1d6 points of damage per caster level, maximum 10d6, to chaotic outsiders) and causes them to be dazed for 1 round. A successful Will save reduces the damage to half and negates the daze effect. The spell deals only half damage to creatures who are neither chaotic nor lawful, and they are not dazed. They can reduce the damage in half again (down to one-quarter of the roll) with a successful Will save.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Overland Flight", school: "Transmutation", levels: "alchemist 5, arcanist 5, investigator 5, magus 5, occultist 5, psychic 5, shaman 5, sorcerer 5, spiritualist 5, summoner 4, summoner (unchained) 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 hour/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions like a fly spell, except you can fly at a speed of 40 feet (30 feet if wearing medium or heavy armor, or if carrying a medium or heavy load) with a bonus on Fly skill checks…",
                          desc: "This spell functions like a fly spell, except you can fly at a speed of 40 feet (30 feet if wearing medium or heavy armor, or if carrying a medium or heavy load) with a bonus on Fly skill checks equal to half your caster level. When using this spell for long-distance movement, you can hustle without taking nonlethal damage (a forced march still requires Constitution checks). This means you can cover 64 miles in an 8-hour period of flight (or 48 miles at a speed of 30 feet).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Owl's Wisdom", school: "Transmutation", levels: "alchemist 2, arcanist 2, cleric 2, druid 2, hunter 2, investigator 2, medium 2, oracle 2, paladin 2, psychic 2, ranger 2, redmantisassassin 2, shaman 2, sorcerer 2, summoner 2, summoner (unchained) 2, warpriest 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (feathers or droppings from an owl)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 min./level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The transmuted creature becomes wiser. The spell grants a +4 enhancement bonus to Wisdom, adding the usual benefit to Wisdom-related skills.",
                          desc: "The transmuted creature becomes wiser. The spell grants a +4 enhancement bonus to Wisdom, adding the usual benefit to Wisdom-related skills. Clerics, druids, and rangers (and other Wisdom-based spellcasters) who receive owl's wisdom do not gain any additional bonus spells for the increased Wisdom, but the save DCs for their spells increase. Owl's Wisdom, Mass",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Owl's Wisdom, Mass", school: "Transmutation", levels: "alchemist 2, arcanist 2, cleric 2, druid 2, hunter 2, investigator 2, medium 2, oracle 2, paladin 2, psychic 2, ranger 2, redmantisassassin 2, shaman 2, sorcerer 2, summoner 2, summoner (unchained) 2, warpriest 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (feathers or droppings from an owl)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 min./level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions like owl's wisdom , except that it affects multiple creatures.",
                          desc: "This spell functions like owl's wisdom , except that it affects multiple creatures.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Pale Flame", school: "Evocation", levels: "druid 1, hunter 1, shaman 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "0 ft.", area: "flame in your palm", targets: "",
                          duration: "1 min./level (D)",
                          savingThrow: "none;", sr: true,
                          summary: "This spell functions as per produce flame , except that the flames never glow brighter than dim light, including any fires started by this spell.",
                          desc: "This spell functions as per produce flame , except that the flames never glow brighter than dim light, including any fires started by this spell. These flames cast light only half the distance of a torch and cannot be seen from more than 100 feet away. The flames deal 2d6 points of fire damage + 1 point per caster level (maximum +5). Against plants, this damage increases to 2d6 points + 2 points per caster level (maximum +10).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Parasitic Soul", school: "Necromancy", levels: "alchemist 5, arcanist 5, investigator 5, sorcerer 5, summoner 4, summoner (unchained) 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, F (a gem or crystal worth at least 100 gp)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "1 hour/level or until you return to your body",
                          savingThrow: "Will negates; see text;", sr: true,
                          summary: "This spell functions like magic jar except as noted above, and instead of your own soul, you can transfer a trapped soul (such as one trapped in a soul gem or trapped with",
                          desc: "This spell functions like magic jar except as noted above, and instead of your own soul, you can transfer a trapped soul (such as one trapped in a soul gem or trapped with",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Pass without Trace", school: "Transmutation", levels: "druid 1, hunter 1, occultist 1, ranger 1, shaman 1",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "one creature/level touched",
                          duration: "1 hour/level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The subject or subjects of this spell do not leave footprints or a scent trail while moving. Tracking the subjects is impossible by nonmagical means.",
                          desc: "The subject or subjects of this spell do not leave footprints or a scent trail while moving. Tracking the subjects is impossible by nonmagical means.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await seedSpellsC()
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