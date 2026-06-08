import Foundation

extension SeedDataBuilder {
    func seedSpellsE() async throws {
        try await db.insertSpell(
        .make("Bloodhound", school: "Transmutation", levels: "alchemist 3, hunter 2, inquisitor 2, investigator 3, occultist 3, ranger 2",
                          castingTime: "1 standard action", components: "V, S, M (a drop of blood and a pinch of cinnamon)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 hour/level",
                          savingThrow: "None", sr: false,
                          summary: "You gain the scent special quality, including the ability to track by scent.",
                          desc: "You gain the scent special quality, including the ability to track by scent. You receive a +8 competence bonus on Perception checks involving smell and a +4 competence bonus on Survival checks to track using scent. You take a –4 penalty on saving throws against odor-related effects such as the stench ability and stinking cloud. A creature under the effects of bloodhound can detect poison by scent with a DC 20 Perception check.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Bloody Claws", school: "Necromancy", levels: "druid 4, hunter 3, ranger 3",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "1 minute/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "You give a creature the ability to deal bleed damage when making natural attacks so long as the attack deals slashing or piercing damage.",
                          desc: "You give a creature the ability to deal bleed damage when making natural attacks so long as the attack deals slashing or piercing damage. This bleed damage for each attack is equal to one-half your caster level (limited to the creature’s maximum damage with that attack), though bleed damage does not stack. When two or more attacks deal bleed damage, take the worse effect.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Bomber's Eye", school: "Transmutation", levels: "alchemist 1, investigator 1",
                          castingTime: "1 standard action", components: "S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "This extract allows you to throw weapons farther and more accurately. While this extract is in effect, increase the range of any thrown weapon by 10 feet.",
                          desc: "This extract allows you to throw weapons farther and more accurately. While this extract is in effect, increase the range of any thrown weapon by 10 feet. In addition, you receive a +1 insight bonus on attack rolls made with thrown weapons.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Borrow Fortune", school: "Evocation", levels: "medium 3, oracle 3, psychic 3",
                          castingTime: "1 immediate action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "instantaneous; see text",
                          savingThrow: "None", sr: false,
                          summary: "When you make a d20 roll, you may choose to immediately cast this spell to reroll that die before success or failure is known, keeping the more favorable result.",
                          desc: "When you make a d20 roll, you may choose to immediately cast this spell to reroll that die before success or failure is known, keeping the more favorable result. For the next two rounds following your casting of the spell, you must roll two dice each time a d20 roll is called for, keeping the less favorable result.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Borrow Skill", school: "Transmutation", levels: "bard 1, medium 1, psychic 1, skald 1",
                          castingTime: "1 standard action", components: "S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "up to 1 round/level (see description)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You borrow one of the target’s known skills. After touching the subject, you can make a single check with the chosen skill using the subject’s skill ranks, but modified by your own key ability.",
                          desc: "You borrow one of the target’s known skills. After touching the subject, you can make a single check with the chosen skill using the subject’s skill ranks, but modified by your own key ability. If you take longer than the spell’s duration to make the check or the check requires more time, then it fails and you must use your own skill ranks (if any). If the borrowed skill is a class skill for you, you gain the +3 bonus on checks using that skill.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Bow Spirit", school: "Conjuration (Creation)", levels: "hunter 4, ranger 4",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "A bow spirit is a shapeless force that hovers about you, taking ammunition from your quiver and firing it. For as long as the",
                          desc: "A bow spirit is a shapeless force that hovers about you, taking ammunition from your quiver and firing it. For as long as the",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Brand", school: "Transmutation", levels: "inquisitor 0",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 day/level",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "Brand etches an indelible rune or mark of no more than 6 characters onto a creature, inflicting 1 point of damage.",
                          desc: "Brand etches an indelible rune or mark of no more than 6 characters onto a creature, inflicting 1 point of damage. The mark may be placed on any exposed portion of the creature, typically the head or forearm. A brand can be hidden by clothing or removed by scraping it away (causing 1d6 points of damage), though the",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Brand, Greater", school: "Transmutation", levels: "inquisitor 0",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 day/level",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "This spell functions like brand , except that it inflicts 1d6 points of damage when applied and cannot be removed, even temporarily. In addition, a",
                          desc: "This spell functions like brand , except that it inflicts 1d6 points of damage when applied and cannot be removed, even temporarily. In addition, a",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Break", school: "Transmutation", levels: "arcanist 1, bloodrager 1, occultist 1, psychic 1, redmantisassassin 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M (a twig)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one Medium or smaller object",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates (object);", sr: true,
                          summary: "You can attempt to break or at least damage any one Medium or smaller object within range. If the target fails its Fortitude saving throw, it gains the broken condition.",
                          desc: "You can attempt to break or at least damage any one Medium or smaller object within range. If the target fails its Fortitude saving throw, it gains the broken condition. If cast on a broken item, that item is destroyed on a failed save.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Break, Greater", school: "Transmutation", levels: "arcanist 1, bloodrager 1, occultist 1, psychic 1, redmantisassassin 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M (a twig)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one Medium or smaller object",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates (object);", sr: true,
                          summary: "You release a burst of destructive energy. Each Medium or smaller object in the area gains the broken condition unless it succeeds at a Fortitude saving throw.",
                          desc: "You release a burst of destructive energy. Each Medium or smaller object in the area gains the broken condition unless it succeeds at a Fortitude saving throw. If a broken object fails this save, it is instead destroyed. Magic items can be broken by this spell, but not destroyed. Objects in your possession are not immune.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Brilliant Inspiration", school: "Evocation", levels: "bard 6, psychic 8, skald 6",
                          castingTime: "1 standard action", components: "V",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "1 round/level and special (see below)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You open a link between your mind and the subject’s mind, giving advice and encouragement for as long as the spell is in effect.",
                          desc: "You open a link between your mind and the subject’s mind, giving advice and encouragement for as long as the spell is in effect. Each time the subject of the spell makes an attack roll, ability check, or skill check, it rolls two d20s and takes the better result. If any roll is a natural 20, the spell’s effect ends—your brilliant advice is spent.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Bristle", school: "Transmutation", levels: "druid 1, hunter 1",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "one creature",
                          duration: "1 minute/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "You give a creature the ability to redirect a portion of its innate toughness away from its own defense and toward the amount of damage it deals with natural attacks.",
                          desc: "You give a creature the ability to redirect a portion of its innate toughness away from its own defense and toward the amount of damage it deals with natural attacks. Each round, as a swift action at the start of its turn, the creature can choose to reduce some or all of its natural armor bonus to AC and gain an enhancement bonus on all damage rolls for natural attacks equal to that amount. The reduction to natural armor, and thus the enhancement bonus on damage rolls, cannot exceed 1 point per 3 caster levels, to a maximum penalty/bonus of –5/+5 at 15th level. A creature cannot reduce its natural armor bonus to less than 0 with this spell. All attacks directed against the creature use its adjusted AC until the start of its next turn, at which time it can choose to modify its AC again or keep it at its current level. Creatures make this decision without any need for conscious thought or reflection; even creatures with no Intelligence score can benefit from this spell, although they always opt for the maximum possible reduction and bonus, regardless of any tactical advantage they might lose.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Burning Gaze", school: "Evocation", levels: "arcanist 2, bloodrager 2, druid 2, hunter 2, magus 2, mesmerist 2, occultist 2, shaman 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (eye of a mundane salamander)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates (see text);", sr: true,
                          summary: "Your eyes burn like hot coals, allowing you to set objects or foes alight with a glance.",
                          desc: "Your eyes burn like hot coals, allowing you to set objects or foes alight with a glance. As a standard action as long as this spell’s effects persist, you may direct your burning gaze against a single creature or object within 30 feet of your location. Targeted creatures must succeed at a Fortitude save or take 1d6 points of fire damage. Unattended objects do not get a save. Creatures damaged by the spell must make a Reflex save or catch fire. Each round, burning creatures may attempt a Reflex save to quench the flames; failure results in another 1d6 points of fire damage. Flammable items worn by a creature must also save or take the same damage as the creature. If a creature or object is already on fire, it suffers no additional effects from",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Burst Bonds", school: "Evocation", levels: "inquisitor 1",
                          castingTime: "1 standard action", components: "V",
                          range: "touch", area: "", targets: "one object or creature restraining you",
                          duration: "instantaneous",
                          savingThrow: "Fortitude half (object);", sr: true,
                          summary: "You blast your restraints with divine wrath, dealing 1d6 points of damage per caster level to the target object (maximum 5d6), ignoring hardness of 10 or less.",
                          desc: "You blast your restraints with divine wrath, dealing 1d6 points of damage per caster level to the target object (maximum 5d6), ignoring hardness of 10 or less. A Fortitude save halves the damage, although only magical restraints receive a saving throw. You can also target a creature that is grappling or otherwise restraining you (such as by adhesive or the swallow whole ability) with the spell. You don’t need to make a touch attack to use burst bonds against a creature, and you can cast this spell without making a concentration check while grappled or pinned. The creature does not take damage as above. If you are grappled and your target fails its save, you may make an immediate attempt to break the grapple (but not reverse it) as a free action, with a +1 luck bonus to your CMB per caster level (maximum +5). If the target creature fails its save and you are restrained by an ability that originally allowed a saving throw,",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Cacophonous Call", school: "Enchantment (Compulsion)", levels: "bard 2, skald 2",
                          castingTime: "1 standard action", components: "V, S, M (a scrap of sheet music)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You fill your target’s mind with a blaring cacophony of discordant sounds, making it hard for the target to act and concentrate.",
                          desc: "You fill your target’s mind with a blaring cacophony of discordant sounds, making it hard for the target to act and concentrate. The creature gains the nauseated condition for the duration of the spell if it fails its Will save. Cacophonous Call, Mass",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Cacophonous Call, Mass", school: "Enchantment (Compulsion)", levels: "bard 2, skald 2",
                          castingTime: "1 standard action", components: "V, S, M (a scrap of sheet music)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions as cacophonous call , except that it affects multiple creatures.",
                          desc: "This spell functions as cacophonous call , except that it affects multiple creatures.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Calcific Touch", school: "Transmutation", levels: "arcanist 4, bloodrager 4, psychic 4, redmantisassassin 4, sorcerer 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature or creatures touched (up to one per level)",
                          duration: "1 round/level",
                          savingThrow: "Fortitude partial;", sr: true,
                          summary: "Your touch progressively transmutes the substance of creatures you touch into stone.",
                          desc: "Your touch progressively transmutes the substance of creatures you touch into stone. Once per round, you may deliver a touch attack that inflicts 1d4 points of Dexterity damage and slows the target (as the spell) for 1 round. A successful Fortitude save negates the slow effect but not the ability damage. A target reduced to 0 Dexterity is petrified permanently. Break enchantment ,",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Call Animal", school: "Enchantment (Compulsion)", levels: "druid 1, hunter 1, mesmerist 1, ranger 1",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "see description", area: "one animal whose CR is equal or less than your caster level", targets: "",
                          duration: "1 hour/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell calls the nearest wild animal of a particular type you designate (provided the animal’s CR is equal to or less than your caster level) to seek you out.",
                          desc: "This spell calls the nearest wild animal of a particular type you designate (provided the animal’s CR is equal to or less than your caster level) to seek you out. The animal moves toward you under its own power, so the time it takes to arrive depends on how close an animal of the desired type is when you cast the spell. If there is no animal of that type capable of reaching you within the spell’s duration, you are aware of this fact, but the spell is wasted. Knowledge of the local fauna makes this spell more effective, and the GM may permit a Knowledge (nature) skill check (DC 15) to know what animals can be found in an area. When the called animal arrives, it approaches to within 5 feet of you and remains nearby for the duration of the spell. Its starting attitude is indifferent, modified by circumstances and interaction. Other than starting attitude, this spell gives you no special influence or ability to communicate with the called animal, although you may use other spells or abilities to do so. Once the spell’s duration expires, the animal acts in accordance with its attitude. Most animals will likely wander off, but a hostile predatory animal may attack, especially if it is hungry or provoked. Domesticated animals or animals trained by someone else, including such creatures as familiars or animal companions, are unaffected by",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Campfire Wall", school: "Evocation", levels: "arcanist 3, bard 3, druid 2, hunter 2, occultist 2, ranger 2, skald 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M/DF (ash made from burnt thorns)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "20-ft.-radius sphere centered on fire source", targets: "",
                          duration: "2 hours/level; see below (D)",
                          savingThrow: "none;", sr: true,
                          summary: "You can create a barrier around a fire of at least campfire size that shelters everyone inside so long as the fire continues to burn.",
                          desc: "You can create a barrier around a fire of at least campfire size that shelters everyone inside so long as the fire continues to burn. The barrier appears as a crackling sphere of light and fire that is clearly visible, providing as much illumination as a torch. The barrier bocks line of sight, granting creatures on either side of the barrier total concealment from creatures on the other side. Any object or creature passing through the barrier from outside takes 1d6 points of fire damage and is also outlined with light equivalent to that of a torch, for 1d6 minutes. Creatures outlined in this way are plainly visible regardless of the light conditions and do not benefit from any sort of concealment, magical or otherwise. The light is not bright enough to have any special effect on undead or creatures vulnerable to light. Creatures inside the barrier can leave without penalty, but if they try to return they suffer the same consequences as anyone else. If the fire source at the barrier’s center is extinguished or moved, the spell ends.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Cast Out", school: "Abjuration", levels: "inquisitor 3, medium 2, psychic 4",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "instantaneous",
                          savingThrow: "Will partial;", sr: true,
                          summary: "With a melee touch attack you blast a single creature and disrupt any magic controlling it. The target takes 2d8 points of damage + 1 point per caster level (maximum +15).",
                          desc: "With a melee touch attack you blast a single creature and disrupt any magic controlling it. The target takes 2d8 points of damage + 1 point per caster level (maximum +15). In addition, you make a dispel check against any magic jar effect (including a ghost’s malevolence ability) or enchantment (compulsion) spells on the target creature, starting with the highest level spells and proceeding to lower level spells. Treat this as a targeted",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Castigate", school: "Enchantment (Compulsion)", levels: "inquisitor 2, mesmerist 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "1 round/level or 1 round; see text",
                          savingThrow: "Will partial;", sr: true,
                          summary: "You compel the target to beg for forgiveness. On a failed save, the target cowers with fear. On a successful save, it is shaken for 1 round.",
                          desc: "You compel the target to beg for forgiveness. On a failed save, the target cowers with fear. On a successful save, it is shaken for 1 round. Each round on its turn, a cowering subject may attempt a new save to end the effect. A creature who worships the same god as you takes a –2 penalty on its saving throw. Castigate, Mass",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Castigate, Mass", school: "Enchantment (Compulsion)", levels: "inquisitor 2, mesmerist 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "1 round/level or 1 round; see text",
                          savingThrow: "Will partial;", sr: true,
                          summary: "This spell functions as castigate , except it affects many creatures.",
                          desc: "This spell functions as castigate , except it affects many creatures.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Challenge Evil", school: "Enchantment (Compulsion)", levels: "paladin 1",
                          castingTime: "1 standard action", components: "V, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one evil creature",
                          duration: "1 minute/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You challenge an evil creature to bring the fight to you, or suffer the consequences. You gain a +2 sacred bonus on all melee attacks against the subject of the spell.",
                          desc: "You challenge an evil creature to bring the fight to you, or suffer the consequences. You gain a +2 sacred bonus on all melee attacks against the subject of the spell. At the end of its turn, if the target has not made at least one attack on you, it becomes sickened. If you move away from the target, the spell ends.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Chameleon Stride", school: "Illusion (Glamer)", levels: "hunter 2, ranger 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "personal", area: "allies in a 10-ft.-radius emanation centered on you", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "You fade into the background, and while you are not truly invisible, you are hard to pinpoint due to your translucent state.",
                          desc: "You fade into the background, and while you are not truly invisible, you are hard to pinpoint due to your translucent state. While under the effects of this spell, you gain a +4 bonus on Stealth checks and have concealment from creatures more than 5 feet away (attacks have a 20% miss chance). Chameleon Stride, Greater",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Chameleon Stride, Greater", school: "Illusion (Glamer)", levels: "hunter 2, ranger 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "personal", area: "allies in a 10-ft.-radius emanation centered on you", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as chameleon stride ( Pathfinder RPG Advanced Player’s Guide 210), except it confers its bonuses upon all allies within 10 feet of you at the time the spell is cast.",
                          desc: "This spell functions as chameleon stride ( Pathfinder RPG Advanced Player’s Guide 210), except it confers its bonuses upon all allies within 10 feet of you at the time the spell is cast. Those affected by this spell are able to see each other and themselves as if they were unaffected by the spell. If an affected creature moves out of the area, it loses the benefit of the spell. Creatures that move into the area after the spell is cast do not gain its benefit.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Clashing Rocks", school: "Conjuration (Creation)", levels: "arcanist 9, druid 9, sorcerer 9, wizard 9",
                          castingTime: "1 standard action", components: "V, S",
                          range: "long (400 ft. + 40 ft./level)", area: "see text", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Reflex partial, see text;", sr: false,
                          summary: "You create two Colossal-sized masses of rock, dirt, and stone and slam them together against a single creature between them.",
                          desc: "You create two Colossal-sized masses of rock, dirt, and stone and slam them together against a single creature between them. The clashing rocks appear up to 30 feet away from the target on opposite sides and rush toward it with a mighty grinding crash. You must make a ranged touch attack to hit the target with the rocks. The",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Cleanse", school: "Evocation", levels: "cleric 5, inquisitor 6, oracle 5, warpriest 5",
                          castingTime: "1 standard action", components: "S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "instantaneous",
                          savingThrow: "None", sr: false,
                          summary: "Positive energy infuses and cleanses your body. This spell cures 4d8 points of damage + 1 point per caster level (maximum +25) and ends any and all of the following adverse conditions affecting you:…",
                          desc: "Positive energy infuses and cleanses your body. This spell cures 4d8 points of damage + 1 point per caster level (maximum +25) and ends any and all of the following adverse conditions affecting you: ability damage, blinded, confused, dazzled, deafened, diseased, exhausted, fatigued, nauseated, poisoned, and sickened. In addition, cleanse functions as",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Cloak of Dreams", school: "Enchantment (Compulsion)", levels: "arcanist 6, bard 5, mesmerist 5, occultist 6, psychic 6, shaman 7, skald 5, sorcerer 6, witch 6, wizard 6",
                          castingTime: "1 round", components: "V, S, M (a rose petal and a drop of perfume)",
                          range: "5 ft.", area: "5-ft.-radius emanation centered on you", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You are surrounded by a soporific aroma that causes living creatures that begin their turn or end their movement within 5 feet of you to fall asleep for 1 minute.",
                          desc: "You are surrounded by a soporific aroma that causes living creatures that begin their turn or end their movement within 5 feet of you to fall asleep for 1 minute. Creatures must save each time they begin their turn or end their movement within the cloak of dreams, even if they have previously saved against the effect. Sleeping creatures are helpless but can be awakened with a standard action or after being wounded. Creatures with the scent special quality have a –4 penalty on their saves.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Cloak of Shade", school: "Abjuration", levels: "druid 1, hunter 1, ranger 1",
                          castingTime: "1 standard action", components: "V, S, M (a leaf from a shade tree)",
                          range: "touch", area: "", targets: "one creature per level",
                          duration: "1 hour/level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell provides the subject with some degree of protection from the harmful effects of the sun.",
                          desc: "This spell provides the subject with some degree of protection from the harmful effects of the sun. The cloaked subject treats environmental heat due to sun exposure as one level less: severe heat is considered very hot conditions, while very hot is considered average temperature (see heat dangers). The cloak of shade also reduces any penalties from sunlight by 1. The spell does not, however, eliminate the effects of direct sunlight on creatures vulnerable to sunlight.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Cloak of Winds", school: "Abjuration", levels: "arcanist 3, bloodrager 3, druid 3, hunter 3, magus 3, occultist 3, ranger 3, sorcerer 3, spiritualist 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "1 minute/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "You shroud a creature in a whirling screen of strong, howling wind.",
                          desc: "You shroud a creature in a whirling screen of strong, howling wind. The subject is never checked or blown away by strong winds of windstorm or lesser strength (whether natural or magically created), and ranged attack rolls against the subject take a –4 penalty. Tiny or smaller creatures must succeed at a Fortitude save to successfully touch or attack the subject in melee. Failure knocks the attacker prone and pushes it 5 feet away from the subject per level of the caster. This movement can pass through the squares of other creatures without affecting them and does not provoke attacks of opportunity, but the creature takes 3d6 points of nonlethal damage, plus 1d6 if the creature strikes a solid object that blocks its movement.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Compel Tongue", school: "Divination", levels: "arcanist 2, bard 1, cleric 2, druid 2, hunter 2, medium 1, mesmerist 1, occultist 2, oracle 2, psychic 1, skald 1, sorcerer 2, warpriest 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a page from a dictionary)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "24 hours",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions as share language , granting a creature the ability to read, understand, and communicate to the best of its ability in any one language you know.",
                          desc: "This spell functions as share language , granting a creature the ability to read, understand, and communicate to the best of its ability in any one language you know. For the spell’s entire duration, the target can speak and write only in the language imparted, but its ability to understand other languages is unaffected. Share Language, Communal",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Confess", school: "Enchantment (Compulsion)", levels: "inquisitor 2, mesmerist 2, psychic 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round",
                          savingThrow: "Will partial, see text;", sr: true,
                          summary: "You ask the target creature a single question. On the subject’s next action, it must answer truthfully in the same language as the question or take 1d6 points of damage per two caster levels (maximum…",
                          desc: "You ask the target creature a single question. On the subject’s next action, it must answer truthfully in the same language as the question or take 1d6 points of damage per two caster levels (maximum 5d6) and be sickened for 2d4 rounds. A successful Will save negates the sickening effect and halves the damage. A creature that is unable to answer still takes damage.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Contagious Flame", school: "Evocation", levels: "arcanist 6, magus 6, occultist 6, sorcerer 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "three or more rays",
                          duration: "3 rounds",
                          savingThrow: "none;", sr: true,
                          summary: "You blast several enemies with beams of fire. You may fire three rays, plus one additional ray for every four levels beyond 11th (to a maximum of five rays at 19th level).",
                          desc: "You blast several enemies with beams of fire. You may fire three rays, plus one additional ray for every four levels beyond 11th (to a maximum of five rays at 19th level). Each ray requires a ranged touch attack to hit and deals 4d6 points of fire damage. The rays may be fired at the same or different targets, but all rays must be aimed at targets within 30 feet of each other and fired simultaneously. Every round on your turn, a new ray of fire launches from each creature who took damage from the spell in the previous round—these new rays attack as if you fired them, but their point of origin is the previous creature damaged. You can choose the new targets as a free action, all of whom must be within close range (25 ft. + 5 ft./2 levels) of their new starting point. This contagion of flame continues for a total of three rounds—a creature can be struck more than once by this spell over the course of these three rounds, although never by a ray of fire that launches from itself.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Coordinated Effort", school: "Divination", levels: "bard 3, inquisitor 3, psychic 4, skald 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "you plus one willing creature per 3 levels, no two of which can be more than 30 ft. part",
                          duration: "1 minute/level",
                          savingThrow: "none;", sr: false,
                          summary: "Choose a single teamwork feat that you possess. You forge a link with your allies, allowing them to gain the benefits of the chosen feat even if they do not have it themselves.",
                          desc: "Choose a single teamwork feat that you possess. You forge a link with your allies, allowing them to gain the benefits of the chosen feat even if they do not have it themselves. You must be a part of the group qualifying for a given bonus for your allies to gain the benefits. For example, two of your allies flanking an orc would gain no benefit from your Outflank feat, but an ally flanking the orc with you would. Your allies’ positioning and actions must still meet the prerequisites listed in the teamwork feat for either of you to receive the listed bonus.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Corruption Resistance", school: "Abjuration", levels: "antipaladin 2, inquisitor 2, paladin 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 minutes/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "You grant the touched creature limited protection from magical effects that inflict damage based on the target creature’s alignment, such as holy smite ,",
                          desc: "You grant the touched creature limited protection from magical effects that inflict damage based on the target creature’s alignment, such as holy smite ,",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Coward's Lament", school: "Enchantment (Compulsion)", levels: "inquisitor 4",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "1 round/level (D)",
                          savingThrow: "Will partial;", sr: true,
                          summary: "You compel an opponent to face you in combat, or suffer for its cowardice.",
                          desc: "You compel an opponent to face you in combat, or suffer for its cowardice. Each round that the target fails to attack you in melee, it receives a cumulative –1 penalty to its Armor Class, attack rolls, and saving throws (maximum penalty –5). Each round at the end of its turn, the target may attempt a Will saving throw to prevent the penalties from increasing for that round. All penalties reset to zero when the target attacks you in melee, but increase again if it stops attacking. If the target is prevented from attacking you by physical restraint, magic, or impassable terrain, the penalties do not increase. If you move away from the target, the spell ends.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Crafter's Curse", school: "Transmutation", levels: "arcanist 1, occultist 1, redmantisassassin 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M (a broken tool)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 day/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "The target of crafter’s curse takes a –5 penalty on all Craft skill checks while the spell lasts.",
                          desc: "The target of crafter’s curse takes a –5 penalty on all Craft skill checks while the spell lasts.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Crafter's Fortune", school: "Transmutation", levels: "alchemist 1, arcanist 1, investigator 1, occultist 1, redmantisassassin 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, F (a tool)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 day/level or until discharged (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The target is struck by inspiration and gains a +5 luck bonus on its next Craft skill check.",
                          desc: "The target is struck by inspiration and gains a +5 luck bonus on its next Craft skill check.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Create Pit", school: "Conjuration (Creation)", levels: "arcanist 2, sorcerer 2, summoner 2, summoner (unchained) 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, F (miniature shovel costing 10 gp)",
                          range: "medium (100 ft. + 10 ft./level)", area: "10-ft.-by-10-ft. hole, 10 ft. deep/2 levels", targets: "",
                          duration: "1 round + 1 round/level",
                          savingThrow: "Reflex negates;", sr: false,
                          summary: "You create a 10-foot-by-10-foot extradimensional hole with a depth of 10 feet per two caster levels (maximum 30 feet). You must create the pit on a horizontal surface of sufficient size.",
                          desc: "You create a 10-foot-by-10-foot extradimensional hole with a depth of 10 feet per two caster levels (maximum 30 feet). You must create the pit on a horizontal surface of sufficient size. Since it extends into another dimension, the pit has no weight and does not otherwise displace the original underlying material. You can create the pit in the deck of a ship as easily as in a dungeon floor or the ground of a forest. Any creature standing in the area where you first conjured the pit must make a Reflex saving throw to jump to safety in the nearest open space. In addition, the edges of the pit are sloped, and any creature ending its turn on a square adjacent to the pit must make a Reflex saving throw with a +2 bonus to avoid falling into it. Creatures subjected to an effect intended to push them into the pit (such as bull rush) do not get a saving throw to avoid falling in if they are affected by the pushing effect. Creatures who fall into the pit take falling damage as normal. The pit's coarse stone walls have a Climb DC of 25. When the duration of the spell ends, creatures within the hole rise up with the bottom of the pit until they are standing on the surface over the course of a single round. Acid Pit",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Create Treasure Map", school: "Divination", levels: "arcanist 2, bard 2, druid 3, hunter 2, medium 2, occultist 2, psychic 2, ranger 2, skald 2, sorcerer 2, wizard 2",
                          castingTime: "1 hour", components: "V, S, M (powdered metal and rare inks worth 100 gp)",
                          range: "touch", area: "", targets: "one dead creature",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "You can take a piece from a dead creature’s body and use it to create a map that reveals the locations of any valuables that creature knew about while still alive.",
                          desc: "You can take a piece from a dead creature’s body and use it to create a map that reveals the locations of any valuables that creature knew about while still alive. You must cut this piece off yourself and the creature cannot have died more than 24 hours prior to the casting of this spell. You cannot cast this spell on a creature without a physical body, and the portion you remove must have a fairly level surface such as a piece of hide, carapace, or skin. The map you create is accurate to the best knowledge the creature had at the time of its death. It reveals the location of one source of treasure for every three caster levels you possess. Any inaccuracies or faulty information held by the creature are represented on the map as well. Similarly, the map cannot account for any changes that occur after the creature’s death. You must choose the scale of the map when creating it, opting between nearby (e.g., one or two dungeon levels), local (e.g., a valley or community), or broad (e.g., a country or larger). The map reveals the locations of what the creature deemed most valuable within its area. Depending on the creature, the map might reveal a source of tasty food, suitable mates, or even your own treasure vault.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Cup of Dust", school: "Transmutation", levels: "druid 3, hunter 3, mesmerist 3, occultist 3, psychic 3, witch 3",
                          castingTime: "1 standard action", components: "V, S, M (a pinch of dust)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 day/level (D)",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "You curse the target with a thirst no drink can quench. On a failed saving throw, the target begins to dehydrate.",
                          desc: "You curse the target with a thirst no drink can quench. On a failed saving throw, the target begins to dehydrate. The effects of this spell cannot inflict more nonlethal damage than the target has hit points. No amount of drinking can counter this effect, although the target still experiences the other normal effects of any liquid imbibed (such as poisons or potions). Cup of dust can be removed with a",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Dancing Lantern", school: "Transmutation", levels: "arcanist 1, bard 1, cleric 1, hunter 1, oracle 1, ranger 1, redmantisassassin 1, shaman 1, skald 1, sorcerer 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, F (a lantern)",
                          range: "touch", area: "animates one lantern", targets: "",
                          duration: "1 hour/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You can animate a lantern and order it to follow you. The lantern floats at shoulder height and remains within 5 feet of you, no matter how fast you move.",
                          desc: "You can animate a lantern and order it to follow you. The lantern floats at shoulder height and remains within 5 feet of you, no matter how fast you move. The lantern cannot support any additional weight. The lantern illuminates its normal area, even if it does not have any oil in it. For the purposes of spells or effects targeting it the lantern always acts as if in your possession even when not directly on your person. A dancing lantern can be made permanent with a",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Deadly Finale", school: "Evocation", levels: "bard 6, skald 6",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "1 creature/3 levels no two of which can be more than 30 ft. apart",
                          duration: "instantaneous",
                          savingThrow: "Fortitude partial;", sr: true,
                          summary: "You must have a bardic performance in effect to cast this spell. With a flourish, you immediately end your performance, dealing 2d8 points of sonic damage to each target.",
                          desc: "You must have a bardic performance in effect to cast this spell. With a flourish, you immediately end your performance, dealing 2d8 points of sonic damage to each target. In addition, each target takes 3d6 points of bleed damage for 1d6 rounds. A save negates the bleed damage but not the sonic damage.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Deafening Song Bolt", school: "Evocation", levels: "bard 5, skald 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "up to 3 creatures, no two of which can be more than 30 ft. apart",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "Three notes you sing or perform become tangible bolts of arcane energy that shriek across the battlefield.",
                          desc: "Three notes you sing or perform become tangible bolts of arcane energy that shriek across the battlefield. Each bolt requires a ranged touch attack to hit and deals 3d10 points of sonic damage, deafening the target for 1d6 rounds. The bolts may be fired at the same or different targets, but all must be fired simultaneously.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Defile Armor", school: "Abjuration", levels: "antipaladin 3, inquisitor 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "armor touched",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "As sanctify armor , except you gain DR 5/good when using your judgment or smite ability.",
                          desc: "As sanctify armor , except you gain DR 5/good when using your judgment or smite ability.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Deflection", school: "Abjuration", levels: "arcanist 7, psychic 7, sorcerer 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S, M (a piece of rubber dipped in glue)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "You surround yourself in a whirling barrier of force that sends any attack that misses you hurling back toward its source.",
                          desc: "You surround yourself in a whirling barrier of force that sends any attack that misses you hurling back toward its source. This applies to any melee or ranged attack directed against you so long as it uses an attack roll to determine whether or not it strikes you. If an attack misses you, the attacker must make a second attack roll against its own Armor Class, using all of the applicable modifiers of the original attack and if it hits, the attacker takes the attack’s damage and suffers all the other consequences of getting struck with that attack. You cannot deflect attacks that miss you for any reason besides a failed attack roll (such as concealment). Similarly, you cannot deflect attacks that actually do strike you but simply fail to do any harm.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Delayed Consumption", school: "Transmutation", levels: "alchemist 5, investigator 5",
                          castingTime: "1 standard action", components: "S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 day/level (D) or until discharged",
                          savingThrow: "None", sr: false,
                          summary: "When you consume this extract, you quickly consume another extract of your choice—this second extract’s effects do not come into effect until a later point.",
                          desc: "When you consume this extract, you quickly consume another extract of your choice—this second extract’s effects do not come into effect until a later point. You must consume this second, companion extract on the round following delayed consumption or waste the extract. The companion extract can be no higher than 4th level, and you must pay any costs associated with the companion extract when you consume it. At any point during the duration of this extract, you can cause the companion extract to take effect as an immediate action. You can only have one",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Denounce", school: "Enchantment (Compulsion)", levels: "bard 4, inquisitor 4, mesmerist 4, psychic 5, skald 4",
                          castingTime: "1 standard action", components: "V",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "30-ft.-radius burst", targets: "",
                          duration: "1 hour/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You speak out against a single creature within line of sight and turn possible allies against it by drawing upon the power of your voice and conviction.",
                          desc: "You speak out against a single creature within line of sight and turn possible allies against it by drawing upon the power of your voice and conviction. Creatures in the area who can see the denounced creature must make a Will saving throw or have their starting attitude toward the denounced creature worsened by two levels. For example, creatures previously indifferent to the subject turn unfriendly. Diplomacy checks made to reverse the effects of denounce are made at a –10 penalty.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Detect Aberration", school: "Divination", levels: "druid 1, hunter 1, psychic 1, ranger 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "long (400 ft. + 40 ft./level)", area: "cone-shaped emanation", targets: "",
                          duration: "concentration, up to 10 minutes/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like detect animals or plants , except it detects creatures of the aberration type.",
                          desc: "This spell functions like detect animals or plants , except it detects creatures of the aberration type.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Detonate", school: "Evocation", levels: "alchemist 4, arcanist 4, bloodrager 4, investigator 4, magus 4, sorcerer 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (two vials; one containing acid and one containing an alkaline solution worth a total of 50 gp)",
                          range: "30 ft.", area: "30-ft.-radius spread centered on you", targets: "",
                          duration: "1 round, then instantaneous",
                          savingThrow: "Reflex half;", sr: true,
                          summary: "You flood yourself with a potent surge of elemental energy. One round after completing the casting of the spell, the energy explodes from your body.",
                          desc: "You flood yourself with a potent surge of elemental energy. One round after completing the casting of the spell, the energy explodes from your body. When this spell creates the explosion of energy, choose one of the following four energy types: acid, cold, electricity, or fire. The explosion inflicts 1d8 points of damage of that energy type per caster level (maximum 10d8) to all creatures and unattended objects within 15 feet, and half that amount to targets past 15 feet but within 30 feet. You automatically take half damage from the explosion, without a saving throw, but any other energy resistance or energy immunity effects you may have in place can prevent or lessen this overflow damage caused by the explosion.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Devolution", school: "Transmutation", levels: "arcanist 3, psychic 3, redmantisassassin 3, sorcerer 3, summoner 3, summoner (unchained) 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a chameleon scale)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one eidolon",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell causes an eidolon to lose one evolution plus one additional evolution for every five caster levels. Evolutions with the highest total cost are lost first.",
                          desc: "This spell causes an eidolon to lose one evolution plus one additional evolution for every five caster levels. Evolutions with the highest total cost are lost first. If there is a tie, randomly determine which is lost. If this spell causes an eidolon to fail to meet the prerequisites for other evolutions or abilities, those evolutions or abilities are lost as long as this spell persists.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Discordant Blast", school: "Evocation", levels: "bard 4, skald 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "10 ft. or 30 ft.", area: "see text", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: true,
                          summary: "You create a wave of thunder and force, either in a 10-foot-radius burst centered on you or in 30-foot cone-shaped burst.",
                          desc: "You create a wave of thunder and force, either in a 10-foot-radius burst centered on you or in 30-foot cone-shaped burst. Creatures in the area take 3d6 points of sonic damage and are pushed away as if bull rushed. Make a combat maneuver check and apply its results to each creature in the area. Your CMB for this bull rush is equal to your caster level plus your Charisma modifier. This bull rush does not provoke an attack of opportunity. A discordant blast cannot penetrate a",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Divine Transfer", school: "Necromancy", levels: "paladin 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "instantaneous + 1 round/level (see text)",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "With a single touch, you transfer some of your life essence to the subject, transferring your hit points and your resolve.",
                          desc: "With a single touch, you transfer some of your life essence to the subject, transferring your hit points and your resolve. When you touch the subject you can transfer up to a number of hit points equal to your Constitution score to the target. These hit points heal the subject, but cannot raise the subject’s hit points higher than its normal hit point total. In addition, the subject gains DR/evil equal to your Charisma bonus (if any) for the duration of the spell.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Divine Vessel", school: "Transmutation", levels: "oracle 8",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "You accept otherworldly energies into your body and transform. Your size increases by one category, your height doubles, and your weight increases by a factor of eight.",
                          desc: "You accept otherworldly energies into your body and transform. Your size increases by one category, your height doubles, and your weight increases by a factor of eight. Your features shift into those of a cold and alien being of logic, a creature of primal chaos, an angelic presence, or a fiendish monster, as chosen by you. You gain a +6 size bonus to Strength and Constitution, a +3 natural armor bonus, darkvision 60 ft., and SR of 12 + your caster level. These modifiers replace the normal modifiers for increasing your size. The size modifier for AC, attacks, CMB, and CMD changes as appropriate for your new size category. This spell doesn’t change your base speed. Determine space and reach as appropriate for your new size. If insufficient room is available for the desired growth, you attain the maximum possible size and may make a Strength check (using your increased Strength) to burst any enclosures in the process. If you fail, you are constrained without harm by the materials enclosing you—the spell cannot crush you by increasing your size. All equipment you wear or carry is similarly enlarged by this spell. Melee weapons deal more damage. Other magical properties are not affected by this spell. Any enlarged item that leaves your possession (including a projectile or thrown weapon) instantly returns to its normal size. This means that thrown and projectile weapons deal their normal damage. Magical effects that increase size do not stack. You gain additional abilities as noted below.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Draconic Reservoir", school: "Evocation", levels: "alchemist 3, arcanist 3, bloodrager 3, investigator 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a scale from dragon that produces the energy you seek to absorb)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 minutes/level or until discharged; see text",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "Draconic reservoir functions as protection from energy , absorbing 6 points of one type of energy damage per caster level (acid, cold, electricity, or fire, maximum 60 points).",
                          desc: "Draconic reservoir functions as protection from energy , absorbing 6 points of one type of energy damage per caster level (acid, cold, electricity, or fire, maximum 60 points). Each round, as a swift action, the subject can release 1d6 points of the absorbed energy and apply it to any melee attack, as if using an",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Dragon's Breath", school: "Evocation", levels: "alchemist 4, arcanist 4, bloodrager 4, investigator 4, magus 4, sorcerer 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (a dragon scale)",
                          range: "30 ft. or 60 ft.", area: "cone-shaped burst or line", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Reflex half;", sr: true,
                          summary: "You breathe out a blast of energy. Creatures in the affected area take 1d6 points of energy damage per caster level (maximum of 12d6). A successful Reflex save results in half damage.",
                          desc: "You breathe out a blast of energy. Creatures in the affected area take 1d6 points of energy damage per caster level (maximum of 12d6). A successful Reflex save results in half damage. The spell’s effect and energy type depend on the type of dragon scale used: Black dragon : 60-foot line of acid.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Dust of Twilight", school: "Conjuration", levels: "arcanist 2, bard 2, bloodrager 2, skald 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (coal dust)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "creatures and objects in a 10-ft. spread",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates (fatigue only);", sr: false,
                          summary: "A shower of iridescent black particles clings to and extinguishes torches, lanterns, sunrods, and similar mundane light sources and dispels any spell of 2nd level or lower with the light descriptor…",
                          desc: "A shower of iridescent black particles clings to and extinguishes torches, lanterns, sunrods, and similar mundane light sources and dispels any spell of 2nd level or lower with the light descriptor (as dispel magic ). Creatures in the area must make a Fortitude save or become fatigued.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Eagle Eye", school: "Divination", levels: "druid 2, hunter 2, psychic 2, ranger 2, shaman 2",
                          castingTime: "1 minute", components: "V, S, DF",
                          range: "long (400 ft. + 40 ft./level)", area: "magical sensor", targets: "",
                          duration: "1 minute/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "Eagle eye creates a magical sensor directly above you. The sensor can appear anywhere above you, to a maximum height equal to the spell’s range.",
                          desc: "Eagle eye creates a magical sensor directly above you. The sensor can appear anywhere above you, to a maximum height equal to the spell’s range. You can see from this vantage as if you were actually there, rotating your viewpoint 360 degrees. You perceive with your normal visual senses. A caster using eagle eye can easily see for a considerable distance. The spell does not penetrate any solid surface, although it is unaffected by foliage and the like.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Elemental Aura", school: "Evocation", levels: "alchemist 3, arcanist 3, bloodrager 3, investigator 3, magus 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level (D)",
                          savingThrow: "Reflex half, see text;", sr: true,
                          summary: "This spell forms an aura of energy around you, damaging all those that come near you. Choose an energy type: acid, cold, electricity, or fire.",
                          desc: "This spell forms an aura of energy around you, damaging all those that come near you. Choose an energy type: acid, cold, electricity, or fire. Creatures adjacent to you when this spell is cast and at the start of your turn take 2d6 points of energy damage of the selected type. This aura has an additional effect, depending upon the type of energy chosen. Acid : Creatures affected by your aura take 1 point of ongoing acid damage per round for 1 round per three caster levels, and are sickened for the duration of the ongoing acid damage.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Elemental Speech", school: "Divination", levels: "arcanist 2, bard 3, cleric 3, druid 2, hunter 2, mesmerist 3, oracle 3, skald 3, sorcerer 2, warpriest 3, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (iron filings)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "This spell enables you to converse with creatures associated with a chosen element, including but not limited to true elemental creatures.",
                          desc: "This spell enables you to converse with creatures associated with a chosen element, including but not limited to true elemental creatures. This spell gains the elemental subtype based on the version of the spell you cast. Elemental speech does not guarantee a friendly reaction; it merely enables communication. You may converse with all creatures of the selected type with an Intelligence score of 1 or greater, even if they do not understand one another. When cast as an air spell, you can converse in Auran and with any creature that has the air subtype or a fly speed. When cast as an earth spell, you can converse in Terran and with any creature that has the earth subtype or a burrow speed. When cast as a fire spell, you can converse in Ignan and with any creature that has the fire subtype. When cast as a water spell, you can converse in Aquan and with any creature that has the water subtype or a swim speed.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Elemental Touch", school: "Evocation", levels: "alchemist 2, arcanist 2, bloodrager 2, investigator 2, magus 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a bit of the chosen element: earth, water, air, or fire)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level (D)",
                          savingThrow: "see text;", sr: false,
                          summary: "Upon completing the casting of this spell, elemental energy infuses your hands. Choose an energy type: acid, cold, electricity, or fire.",
                          desc: "Upon completing the casting of this spell, elemental energy infuses your hands. Choose an energy type: acid, cold, electricity, or fire. You gain a melee touch attack causing 1d6 points of damage of that energy type, along with a special effect described below. You also deal energy damage and the related special effect when you attack with your hands using an unarmed strike, a single claw, or a single slam attack. This bonus damage can never apply to multiple weapons. Acid : Your touch attack causes 1 point of ongoing acid damage per round for 1 round per three caster levels. The target must make a Fortitude save or be sickened for the duration of the ongoing acid damage.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Elude Time", school: "Transmutation", levels: "alchemist 5, investigator 5, psychic 7",
                          castingTime: "1 standard action", components: "V, S, M (powdered diamond, emerald, ruby, and sapphire dust worth 500 gp)",
                          range: "personal", area: "", targets: "you",
                          duration: "up to 1 minute/level; see text",
                          savingThrow: "None", sr: false,
                          summary: "You place yourself in a state of suspended animation, similar to temporal stasis . At the time of casting, you choose when the stasis will expire, up to the maximum duration of the spell.",
                          desc: "You place yourself in a state of suspended animation, similar to temporal stasis . At the time of casting, you choose when the stasis will expire, up to the maximum duration of the spell. Until the duration ends, time ceases to flow for you, and all bodily functions cease. No force or effect can harm you until the spell expires or is removed, such as by a successful",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Enemy Hammer", school: "Transmutation", levels: "arcanist 6, occultist 6, psychic 6, sorcerer 6, spiritualist 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S, M (puppet strings)",
                          range: "long (400 ft. + 40 ft./level)", area: "", targets: "one creature",
                          duration: "1 round/level (D)",
                          savingThrow: "Fortitude partial;", sr: true,
                          summary: "You grab a creature with telekinesis and use it to batter nearby opponents or objects.",
                          desc: "You grab a creature with telekinesis and use it to batter nearby opponents or objects. You must target a specific creature when casting this spell and once you select that creature you cannot switch to another. Each round, as a standard action, you can attempt to hurl the target at any creature or object within 30 feet of it. You must make an attack roll whenever you use the target as a weapon. The attack bonus for this attack is equal to your caster level plus either your Intelligence or Charisma modifier (whichever is higher). If you successfully hit the new target with the creature both it and the creature take damage based on the creature’s size. Creature Size Damage Dealt",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Enter Image", school: "Transmutation", levels: "arcanist 3, bard 2, cleric 3, medium 3, mesmerist 2, occultist 2, oracle 3, psychic 3, redmantisassassin 3, skald 2, sorcerer 3, warpriest 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M/DF (a drop of paint and a ball of clay)",
                          range: "50 ft./level", area: "transfer consciousness to any object bearing your likeness", targets: "",
                          duration: "concentration",
                          savingThrow: "none;", sr: false,
                          summary: "You gain a dim impression of the activities around any object bearing your face or form and can also project your consciousness into one such object at a time, allowing you to observe or even…",
                          desc: "You gain a dim impression of the activities around any object bearing your face or form and can also project your consciousness into one such object at a time, allowing you to observe or even interact with nearby creatures. This spell allows you to leave your body and subconsciously monitor the immediate area around any depiction of your image whether one, hundreds, or even thousands. Each such image has the full range of your normal senses (sight, hearing, smell, etc.) and you can make a Perception check to notice anything occurring nearby. The DC of this check is always 10 greater than what it would be if you were actually present at that location, so even if you would normally notice something automatically (such as talking, normally a DC of 0), you would need to make a DC 10 Perception check to notice it. You may, at any time, choose to fill one specific image within range with your consciousness. While inside an image you lose the ability to monitor any other images within range but remain fully aware of your own body’s surroundings. Your body is defenseless and helpless (always failing any saving throw) while your consciousness is filling an image, but you can return to it at any time as an immediate action. When you fill an image with your consciousness it gains a limited form of animation. Statues and similar three-dimensional representations can move their heads, make gestures, and talk, but cannot attack or leave their square without assistance. Portraits or similar two-dimensional representations bearing your likeness can also talk and your image can move anywhere within the picture or even temporarily alter it (such as by picking a flower in the painting). You cannot use any spells or other abilities while within an image. You may leave the image at any time, returning you to your body. Once your consciousness departs from an object bearing your likeness, it immediately reverts to the appearance it had before you entered it. If someone destroys or damages the image you return to your body unharmed. The spell lasts until you cease concentrating, or until it is terminated by some outside means, such as a",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Euphoric Tranquility", school: "Enchantment (Compulsion)", levels: "arcanist 8, bard 6, cleric 8, druid 8, mesmerist 6, oracle 8, psychic 8, skald 6, sorcerer 8, wizard 8",
                          castingTime: "1 standard action", components: "V, S, M/DF (a poppy flower)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 round/level",
                          savingThrow: "none and Will partial (see below);", sr: true,
                          summary: "A creature under the effect of this enchantment enters a state of euphoria.",
                          desc: "A creature under the effect of this enchantment enters a state of euphoria. The target treats all creatures as dear friends and abhors violence, but may rise up to protect itself if violence is perpetrated against it. Until the end of the spell’s duration, the creature’s speed is halved, and it cannot make attacks or cast spells. If the creature is attacked, it gets a Will saving throw. If the saving throw succeeds, the creature can make act normally for 1 round. If the saving throw fails, the creature moves half its speed away from the attacker as its next action. Furthermore, if the creature is interacted with, or questioned while under the effects of this spell, it is considered to have an attitude of Helpful (see the Diplomacy skill, Core Rulebook 94), though any advice or answers it gives may be disjointed or stream of consciousness due to its euphoric state.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Evolution Surge", school: "Transmutation", levels: "summoner 2, summoner (unchained) 2",
                          castingTime: "1 standard action", components: "V, S, M (a chameleon scale)",
                          range: "touch", area: "", targets: "your eidolon",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "This spell functions as lesser evolution surge , except that you can grant any evolution whose total cost does not exceed 4 evolution points. Evolution Surge, Greater",
                          desc: "This spell functions as lesser evolution surge , except that you can grant any evolution whose total cost does not exceed 4 evolution points. Evolution Surge, Greater",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Evolution Surge, Greater", school: "Transmutation", levels: "summoner 2, summoner (unchained) 2",
                          castingTime: "1 standard action", components: "V, S, M (a chameleon scale)",
                          range: "touch", area: "", targets: "your eidolon",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "This spell functions as lesser evolution surge , except that you can grant any two evolutions whose total cost does not exceed 6 evolution points.",
                          desc: "This spell functions as lesser evolution surge , except that you can grant any two evolutions whose total cost does not exceed 6 evolution points.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Evolution Surge, Lesser", school: "Transmutation", levels: "summoner 2, summoner (unchained) 2",
                          castingTime: "1 standard action", components: "V, S, M (a chameleon scale)",
                          range: "touch", area: "", targets: "your eidolon",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "This spell causes your eidolon to take on new characteristics. You can grant the eidolon any evolution whose total cost does not exceed 2 evolution points.",
                          desc: "This spell causes your eidolon to take on new characteristics. You can grant the eidolon any evolution whose total cost does not exceed 2 evolution points. You may only grant one evolution with this spell, even if that evolution can be taken multiple times. You can grant an evolution that allows you to spend additional evolution points to upgrade that evolution. This spell cannot be used to grant an upgrade to an evolution that the eidolon already possesses. The eidolon must meet any prerequisites of the selected evolution. This spell does not allow an eidolon to exceed its maximum number of natural attacks. Evolution Surge",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Expeditious Excavation", school: "Transmutation", levels: "arcanist 1, druid 1, hunter 1, redmantisassassin 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M (tiny shovel)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "dirt in a 5-ft. cube", targets: "",
                          duration: "instantaneous",
                          savingThrow: "see text;", sr: false,
                          summary: "You can excavate and move earth, dust, and sand up to the size of a 5-foot cube. If you are buried, you may open a 5-foot cube around yourself, but the spell cannot be used for tunneling.",
                          desc: "You can excavate and move earth, dust, and sand up to the size of a 5-foot cube. If you are buried, you may open a 5-foot cube around yourself, but the spell cannot be used for tunneling. Besides its mundane applications, you can open a 5-foot-deep pit at a creature’s feet. A Medium or smaller creature falls prone in the pit unless it succeeds on a Reflex save. With a successful save, it can choose to land harmlessly on its feet in the pit or hop to an adjacent square; this movement does not provoke attacks of opportunity. A creature can escape a 5-foot-deep pit with a DC 5 Climb check. Larger creatures may ignore pits smaller than their size. The earth excavated by this spell is ordinarily distributed harmlessly across the spell’s range, but you may choose to throw up a burst of grit and debris when you dig a pit. This cloud of debris provides concealment to any creatures in the square affected and all adjacent squares for 1 round. Expeditious excavation has no effect on solid rock or earth creatures.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Expend", school: "Abjuration", levels: "arcanist 7, sorcerer 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S, M (miniature broken hourglass)",
                          range: "medium (100 ft. + 10 ft./level)", area: "20-ft.-radius burst", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You cause all creatures in the affected area to use up one or more of their limited-use magical abilities without any actual effect.",
                          desc: "You cause all creatures in the affected area to use up one or more of their limited-use magical abilities without any actual effect. A limited-use magical ability is any supernatural or spell-like ability which a creature can only activate a certain number of times during a set interval (3/day, 1/hour, etc.). The spell does not affect abilities which the creature can use at will or which are constant. It also does not apply to magical items or anything else external to a creature. A creature in the spell’s area must make a Will saving throw or expend a single use of one of its abilities. Abilities with the greatest number of uses per day are affected first; if more than one ability has the same number of uses, randomly determine which one is affected first. Creatures must continue making Will saves, expending an additional use of an ability for each failed save, until they succeed, at which point the spell has no further effect.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Feast of Ashes", school: "Transmutation", levels: "druid 2, hunter 2, occultist 2, psychic 2, witch 2",
                          castingTime: "1 standard action", components: "V, S, M (a pinch of ash)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "2 days/level (D)",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "You curse the target with a hunger no food can assuage. On a failed saving throw, the target begins to starve.",
                          desc: "You curse the target with a hunger no food can assuage. On a failed saving throw, the target begins to starve. The effects of this spell cannot inflict more nonlethal damage than the target has hit points. No amount of eating can counter the effect and, further, even attempting to eat causes the target to become nauseated for 1 round unless they make a DC 12 Fortitude save. The target still experiences the other normal effects of anything consumed (such as poisons or potions). Feast of ashes can be removed with a",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Feather Step", school: "Transmutation", levels: "bard 1, druid 1, hunter 1, psychic 1, ranger 1, skald 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "10 minutes/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "For the duration of this spell, the subject ignores the adverse movement effects of difficult terrain, and can even take 5-foot steps in difficult terrain. Feather Step, Mass",
                          desc: "For the duration of this spell, the subject ignores the adverse movement effects of difficult terrain, and can even take 5-foot steps in difficult terrain. Feather Step, Mass",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Feather Step, Mass", school: "Transmutation", levels: "bard 1, druid 1, hunter 1, psychic 1, ranger 1, skald 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "10 minutes/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "As feather step , except this spell affects multiple creatures.",
                          desc: "As feather step , except this spell affects multiple creatures.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Fester", school: "Necromancy", levels: "inquisitor 3, witch 2",
                          castingTime: "1 standard action", components: "V, S, M (rotted meat)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "1 round/level or 1 round; see text",
                          savingThrow: "Fortitude partial;", sr: true,
                          summary: "Necrotic energy permeates the target, blocking healing abilities.",
                          desc: "Necrotic energy permeates the target, blocking healing abilities. The subject gains spell resistance equal to 12 + your caster level against effects that restore hit points or grant temporary hit points. In addition, any healing provided by effects that ignore spell resistance (such as fast healing, regeneration, and some spells) are halved. If the target succeeds on a Fortitude saving throw, fester lasts only a single round. Fester, Mass",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Fester, Mass", school: "Necromancy", levels: "inquisitor 3, witch 2",
                          castingTime: "1 standard action", components: "V, S, M (rotted meat)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "1 round/level or 1 round; see text",
                          savingThrow: "Fortitude partial;", sr: true,
                          summary: "This spell functions as fester , except that it affects multiple foes.",
                          desc: "This spell functions as fester , except that it affects multiple foes.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Fiery Body", school: "Transmutation", levels: "arcanist 9, sorcerer 9, wizard 9",
                          castingTime: "1 standard action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "This spell transforms your body into living flame. You and your equipment are immune to fire damage.",
                          desc: "This spell transforms your body into living flame. You and your equipment are immune to fire damage. In fact, every time you would normally take damage from fire, you are instead healed of damage at a rate of 1 point per 3 points of damage the fire attack would have normally inflicted. You are immune to blindness, critical hits, ability score damage, deafness, disease, drowning, electricity, poison, stunning, and all spells that affect your physiology or respiration. You take only half damage from acid or electricity. You take 150% as much damage from cold than normal. You gain a +6 enhancement bonus to your Dexterity score and a fly speed of 40 ft. (perfect maneuverability). Your unarmed attack deals an additional 3d6 points of fire damage, and you are considered armed when making unarmed attacks. Your body burns so brightly that creatures who do not avert their gaze from you are dazzled. Fire spells you cast have their save DCs increased by +1. If you enter water, you are surrounded by a 5-foot radius of steam and bubbles that grant you concealment (50% miss chance) but you take 2d6 points of damage each round you remain in water.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Fire Breath", school: "Evocation", levels: "alchemist 2, arcanist 2, bloodrager 2, investigator 2, magus 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a chili pepper)",
                          range: "15 ft.", area: "cone-shaped burst", targets: "",
                          duration: "1 round/level or until discharged; see text",
                          savingThrow: "Reflex half, see text;", sr: true,
                          summary: "Up to thrice during this spell’s duration, you can belch forth a cone of fire as a standard action. The first cone deals 4d6 points of fire damage to every creature in the area.",
                          desc: "Up to thrice during this spell’s duration, you can belch forth a cone of fire as a standard action. The first cone deals 4d6 points of fire damage to every creature in the area. The second cone of flame deals 2d6 points of fire damage to every creature in the area. The third cone of flame deals 1d6 points of fire damage to every creature in the area. A successful Reflex save halves this damage. After the third cone of flame, the spell ends.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Fire Snake", school: "Evocation", levels: "arcanist 5, druid 5, hunter 5, magus 5, occultist 5, sorcerer 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (a snake scale)",
                          range: "60 ft.", area: "see text", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Reflex half;", sr: true,
                          summary: "You create a sinuous line of flames that you may shape as desired.",
                          desc: "You create a sinuous line of flames that you may shape as desired. The fire snake affects one 5-foot square per caster level, and each square must be adjacent to the previous square, starting with you. The",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Fire of Entanglement", school: "Evocation", levels: "paladin 2",
                          castingTime: "1 swift action", components: "V, S",
                          range: "special; see text", area: "", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "Reflex partial;", sr: true,
                          summary: "The next creature you attack using your smite evil class ability is wreathed in flames that impede its movement. Until the end of the spell’s duration, the target is entangled.",
                          desc: "The next creature you attack using your smite evil class ability is wreathed in flames that impede its movement. Until the end of the spell’s duration, the target is entangled. If the target starts its turn in a square adjacent to you, it is considered to be entangled to an immobile object (you) and cannot move. A target that saves against this spell is affected for only 1 round.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Fire of Judgment", school: "Evocation", levels: "paladin 3",
                          castingTime: "1 swift action", components: "V, S",
                          range: "special; see text", area: "", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "Will partial;", sr: true,
                          summary: "After casting this spell, the next creature you attack using your smite evil class ability is engulfed in flames of positive energy.",
                          desc: "After casting this spell, the next creature you attack using your smite evil class ability is engulfed in flames of positive energy. At the start of its turn, the target takes 1d6 points of damage, and takes an additional 1d6 points of damage each time it attacks a creature other than you. If the creature is an outsider with the evil subtype, an evil-aligned dragon, or an undead creature this damage increases to 1d10. With a successful saving throw, a creature is affected by this spell for only 1 round. This damage is divine in nature and bypasses any DR the creature possesses.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Fire of Vengeance", school: "Evocation", levels: "paladin 4",
                          castingTime: "1 swift action", components: "V, S",
                          range: "special; see text", area: "", targets: "one creature",
                          duration: "see text",
                          savingThrow: "none;", sr: false,
                          summary: "After casting this spell, the next creature you attack using your smite evil class ability is engulfed in holy flames that flare up when the target attacks someone other than you.",
                          desc: "After casting this spell, the next creature you attack using your smite evil class ability is engulfed in holy flames that flare up when the target attacks someone other than you. If at any time during the duration of your smite evil effect the target makes an attack that does not include you, it takes 3d8 points of fire damage. Once triggered in this manner, or when your smite evil ability expires, the spell ends.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Firebrand", school: "Transmutation", levels: "arcanist 7, sorcerer 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature/4 levels, no two of which can be more than 30 ft. apart",
                          duration: "1 round/level",
                          savingThrow: "Will negates (harmless), but see below;", sr: true,
                          summary: "You mark several allies with a flaming rune. This rune does not cause damage, and sheds light as if it were a torch.",
                          desc: "You mark several allies with a flaming rune. This rune does not cause damage, and sheds light as if it were a torch. While the firebrand burns, any creature it marks is immune to damage from any fire spell you cast. All of the target’s weapons (both natural and manufactured) inflict +1d6 points of fire damage on a hit (this bonus fire damage stacks with any amount of fire damage a creature’s weapons might already inflict). At any point during the spell’s duration, a creature bearing a",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Firefall", school: "Transmutation", levels: "arcanist 4, bloodrager 4, magus 4, redmantisassassin 4, sorcerer 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (one fire source)",
                          range: "long (400 ft. + 40 ft./level)", area: "", targets: "one fire source, up to a 20-foot cube",
                          duration: "instantaneous",
                          savingThrow: "Will negates and Reflex negates, see text;", sr: false,
                          summary: "Firefall causes a fire to erupt into a geyser of dazzlingly bright liquid flame. The spell uses one fire source, which is immediately extinguished.",
                          desc: "Firefall causes a fire to erupt into a geyser of dazzlingly bright liquid flame. The spell uses one fire source, which is immediately extinguished. A fire larger than a 20-foot cube is only partly extinguished. Magical fires are not extinguished, but a creature of the fire subtype used as the source takes 1 point of damage per caster level (no saving throw). The coruscating rain of fire fills a hemispherical burst with a radius of 60 feet. All creatures and objects in the area take 5d6 points of fire damage and catch on fire (",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Flames of the Faithful", school: "Transmutation", levels: "inquisitor 2",
                          castingTime: "1 standard action", components: "V",
                          range: "touch", area: "", targets: "weapon touched",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates (object, harmless);", sr: true,
                          summary: "With a touch, you cause a glowing rune to appear on a single weapon, granting that weapon the flaming property (and allowing it to cause an extra 1d6 points of fire damage on a successful hit).",
                          desc: "With a touch, you cause a glowing rune to appear on a single weapon, granting that weapon the flaming property (and allowing it to cause an extra 1d6 points of fire damage on a successful hit). If you are using the judgment class feature, your weapon gains the",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Fluid Form", school: "Transmutation", levels: "alchemist 4, arcanist 6, investigator 4, psychic 6, sorcerer 6, wizard 6",
                          castingTime: "1 standard action", components: "S, M (a mixture of oil and water)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "When you cast this spell, your body takes on a slick, oily appearance.",
                          desc: "When you cast this spell, your body takes on a slick, oily appearance. For the duration of this spell, your form can stretch and shift with ease and becomes slightly transparent, as if you were composed of liquid. This transparency is not enough to grant concealment. You gain DR 10/slashing and your reach increases by 10 feet. In addition, you can pass through small holes or narrow openings, even mere cracks, with anything you were carrying at the time the spell was cast (except other creatures). Finally, you can move through water with a swim speed of 60 feet and can breathe both water and air for the duration of this effect. You are treated as if you had the water subtype while this spell is in effect.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Foe to Friend", school: "Enchantment (Compulsion)", levels: "bard 5, mesmerist 5, psychic 7, skald 5",
                          castingTime: "1 immediate action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one living creature",
                          duration: "1 round",
                          savingThrow: "Will negates;", sr: true,
                          summary: "Cast this spell when an enemy is about to make an attack against an ally. The creature makes the attack against a valid target of your choice instead or the attack is negated.",
                          desc: "Cast this spell when an enemy is about to make an attack against an ally. The creature makes the attack against a valid target of your choice instead or the attack is negated. In addition, the target is considered an ally for determining flanking for 1 round.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Follow Aura", school: "Divination", levels: "inquisitor 2, occultist 3",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "10 minutes/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "Choose one alignment type: chaotic, evil, good, or lawful. You gain the ability to follow the trail of a strong or overwhelming aura of that alignment (see detect evil ,",
                          desc: "Choose one alignment type: chaotic, evil, good, or lawful. You gain the ability to follow the trail of a strong or overwhelming aura of that alignment (see detect evil ,",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Fool's Forbiddance", school: "Abjuration", levels: "bard 6, psychic 8, skald 6",
                          castingTime: "1 standard action", components: "V, S, M (a ring of keys)",
                          range: "10 ft.", area: "10-ft.-radius spherical emanation centered on you", targets: "",
                          duration: "concentration",
                          savingThrow: "Will partial;", sr: true,
                          summary: "Through your antics and performance, you create an area of warding that adversely affects all enemies that dare enter it.",
                          desc: "Through your antics and performance, you create an area of warding that adversely affects all enemies that dare enter it. When an enemy creature enters the area it must make an immediate Will saving throw. If it fails, the creature is confused as long as it is in the area and for 1 round after it leaves. If it succeeds on the saving throw, the creature is staggered as long as it is in the area and for 1 round after it leaves.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Forced Repentance", school: "Enchantment (Compulsion)", levels: "inquisitor 4, paladin 4",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one evil creature without the evil subtype",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You force an evil creature that does not have the evil subtype to momentarily reflect on its past actions and be overcome by grief and conscience.",
                          desc: "You force an evil creature that does not have the evil subtype to momentarily reflect on its past actions and be overcome by grief and conscience. The target immediately drops prone and begins to loudly confess all of its sins and transgressions to the caster for the duration of the spell. The spell immediately ends if you move out of line of sight or if the target is attacked.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Frozen Note", school: "Enchantment (Compulsion)", levels: "bard 5, skald 5",
                          castingTime: "1 standard action", components: "V",
                          range: "", area: "30-ft.-radius emanation centered on you", targets: "any number of creatures within area",
                          duration: "concentration (up to 1 round/level); see text",
                          savingThrow: "Will partial, see text;", sr: true,
                          summary: "You produce and sustain a single perfect musical note that holds nearby creatures, friend as well as foe, utterly spellbound until you stop singing.",
                          desc: "You produce and sustain a single perfect musical note that holds nearby creatures, friend as well as foe, utterly spellbound until you stop singing. Affected creatures are both paralyzed and oblivious to their surroundings so long as you maintain the note. Maintaining this note requires your absolute attention; if you take damage or take any other action, including moving from your current square, the spell instantly ends. Creatures that succeed in their initial saving throw must make a new one for each round they spend within the area of the spell until they fail and become captivated. Creatures with 4 or more Hit Dice greater than your caster level are not affected by this spell. However, those with 4 or more Hit Dice less than your caster level do not receive a saving throw to resist it. The note is so clear and flawless that less than extraordinary attempts to avoid hearing it merely grant targets a bonus on their saving throws. Targets get a +2 circumstance bonus on their saving throw for each barrier between your voice and their ears. This includes such things as a creature stopping up its ears with wax, closing all windows and doors in a nearby building, or even crawling into a barrel and pulling down the top. If a target that had previously made its saving throw loses the benefit of one or more of its barriers it must immediately make a new saving throw. Similarly, any target that had previously failed its saving throw gets a new save each time it gains the protection of a barrier.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Gallant Inspiration", school: "Divination", levels: "bard 2, skald 2",
                          castingTime: "1 immediate action", components: "V",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "instantaneous",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This word of arcane-empowered inspiration often ensures success of a crucial endeavor. Cast this spell when a creature fails an attack roll or skill check.",
                          desc: "This word of arcane-empowered inspiration often ensures success of a crucial endeavor. Cast this spell when a creature fails an attack roll or skill check. The creature gains a +2d4 competence bonus to the attack roll or skill check retroactively. If the bonus is enough to turn the failure into a success, the roll succeeds.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Getaway", school: "Conjuration (Teleportation)", levels: "arcanist 6, bard 6, mesmerist 6, occultist 6, psychic 6, skald 6, sorcerer 6, spiritualist 6, wizard 6",
                          castingTime: "1 minute", components: "V, S, M (a brass doorknob)",
                          range: "unlimited", area: "", targets: "you and one willing creature/2 levels, all of which must be within 30 feet of you",
                          duration: "1 hour/level",
                          savingThrow: "none;", sr: false,
                          summary: "Getaway teleports you and allies you designate at the time of casting to a predetermined location.",
                          desc: "Getaway teleports you and allies you designate at the time of casting to a predetermined location. You must initially cast the spell at that location—all creatures affected by the spell must be present at that time and within 30 feet of you. At any time before the spell’s duration expires, you may trigger the spell as a swift action. At this time, all affected creatures (or their remains and gear) within 30 feet of you are teleported to the location where you first cast the spell. Creatures more than 30 feet away from you are left behind. Selected creatures within 30 feet of you who do not wish to travel with you at that time can simply choose not to go. You can be transported any distance within a plane but cannot travel between planes.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Geyser", school: "Conjuration (Creation)", levels: "arcanist 5, druid 4, hunter 4, magus 5, sorcerer 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M/DF (a piece of lava rock)",
                          range: "long (400 ft. + 40 ft./level)", area: "spout of boiling water filling a 5 ft. square and spraying upward 10 ft./2 levels", targets: "",
                          duration: "concentration + 1 round/level",
                          savingThrow: "Reflex partial (see below);", sr: false,
                          summary: "You cause a column of boiling water to spring forth from any horizontal surface, knocking over creatures directly over it and exposing nearby creatures to searing droplets as its spray falls back to…",
                          desc: "You cause a column of boiling water to spring forth from any horizontal surface, knocking over creatures directly over it and exposing nearby creatures to searing droplets as its spray falls back to the ground. Any creature entering the geyser , or occupying the square it appears in, must make a Reflex saving throw to avoid being hurled into the air and then tossed to the ground. If the creature fails its saving throw, it takes 3d6 points of fire damage from the boiling water and also takes falling damage based upon the height of the",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ghostbane Dirge", school: "Transmutation", levels: "bard 2, cleric 2, inquisitor 2, occultist 2, oracle 2, paladin 1, shaman 2, skald 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (an old reed from a wind instrument)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one incorporeal creature",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "The target coalesces into a semi-physical form for a short period of time.",
                          desc: "The target coalesces into a semi-physical form for a short period of time. While subject to the spell, the incorporeal creature takes half damage (50%) from nonmagical attack forms, and full damage from magic weapons, spells, spell-like effects, and supernatural effects. Ghostbane Dirge, Mass",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ghostbane Dirge, Mass", school: "Transmutation", levels: "bard 2, cleric 2, inquisitor 2, occultist 2, oracle 2, paladin 1, shaman 2, skald 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (an old reed from a wind instrument)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one incorporeal creature",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions as ghostbane dirge , except that it affects multiple targets.",
                          desc: "This spell functions as ghostbane dirge , except that it affects multiple targets.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Glide", school: "Transmutation", levels: "arcanist 2, druid 2, hunter 1, occultist 2, psychic 2, ranger 1, redmantisassassin 2, shaman 2, sorcerer 2, summoner 2, summoner (unchained) 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (a leaf)",
                          range: "personal", area: "", targets: "you",
                          duration: "until landing or 1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "You take no damage from falls (as if from feather fall ). In addition, you can move up to 5 feet in any horizontal direction for every 1 foot you fall, at a speed of 60 feet per round.",
                          desc: "You take no damage from falls (as if from feather fall ). In addition, you can move up to 5 feet in any horizontal direction for every 1 foot you fall, at a speed of 60 feet per round. You cannot use this spell to actually gain height, merely coast in other directions as you fall. If subjected to a strong wind or any other effect that causes you to rise you can take advantage of it in order to increase the distance you can glide. The spell ends as soon as your feet touch the ground regardless of its remaining duration. If the spell expires while you are still in the air you fall the remaining distance as normal.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Grace", school: "Abjuration", levels: "cleric 2, oracle 2, paladin 1, warpriest 2",
                          castingTime: "1 swift action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "see text",
                          savingThrow: "None", sr: false,
                          summary: "Until the end of your turn, your movement does not provoke attacks of opportunity.",
                          desc: "Until the end of your turn, your movement does not provoke attacks of opportunity.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Gravity Bow", school: "Transmutation", levels: "arcanist 1, hunter 1, occultist 1, ranger 1, redmantisassassin 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "Gravity bow significantly increases the weight and density of arrows or bolts fired from your bow or crossbow the instant before they strike their target and then return them to normal a few moments…",
                          desc: "Gravity bow significantly increases the weight and density of arrows or bolts fired from your bow or crossbow the instant before they strike their target and then return them to normal a few moments later. Any arrow fired from a bow or crossbow you are carrying when the spell is cast deals damage as if one size larger than it actually is. For instance, an arrow fired from a Medium longbow normally deals 1d8 points of damage, but it would instead deal 2d6 points of damage if fired from a gravity bow . Only you can benefit from this spell. If anyone else uses your bow to make an attack the arrows deal damage as normal for their size.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Grove of Respite", school: "Conjuration (Creation)", levels: "druid 4, hunter 4, ranger 4, shaman 5",
                          castingTime: "10 minutes", components: "V, S, M/DF (a leaf or blade of grass and a drop of water)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "20-ft.-radius grove", targets: "",
                          duration: "2 hours/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You conjure a sheltered grove of trees surrounding a shallow spring.",
                          desc: "You conjure a sheltered grove of trees surrounding a shallow spring. The grove appears from nowhere even in the most barren, rocky soil regardless of season, but the spell must be cast outside on open ground. The area within the grove is temperate and comfortable, like that of a tiny hut , although the grove provides no illumination and provides no protection from the elements. The water in the grove’s spring is clean and drinkable. Additionally, the trees provide a variety of ripe fruit, regardless of season, which acts as a",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Guiding Star", school: "Divination", levels: "cleric 3, hunter 2, oracle 3, psychic 3, ranger 2, shaman 2, warpriest 3, witch 3",
                          castingTime: "1 minute", components: "V, S, M (a spool of thread or string)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 day/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "You form a bond with your surroundings when you cast this spell.",
                          desc: "You form a bond with your surroundings when you cast this spell. For the remaining duration of the spell you can always, as a standard action, determine your approximate distance from that area as well as the direction you must travel in order to reach it. You cannot determine the location of the area if you are on a different plane. The area counts as ”very familiar” for the purposes of teleport or similar spells. You can only attune yourself to one location at a time. If you cast the spell at another spot you lose the ability to locate your original area.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hero's Defiance", school: "Conjuration (Healing)", levels: "paladin 1",
                          castingTime: "1 immediate action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "instantaneous",
                          savingThrow: "None", sr: false,
                          summary: "The instant before you are reduced to 0 or fewer hit points, you can expend a use of your lay on hands ability to heal yourself as if you had used lay on hands, plus an additional 1d6 hit points.",
                          desc: "The instant before you are reduced to 0 or fewer hit points, you can expend a use of your lay on hands ability to heal yourself as if you had used lay on hands, plus an additional 1d6 hit points. If this healing brings your hit point total above 0 hit points, you do not fall, and may continue to act. If you have no more uses of lay on hands this spell has no effect.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Heroic Finale", school: "Enchantment (Compulsion)", levels: "bard 4, skald 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You must have a bardic performance in effect to cast this spell.",
                          desc: "You must have a bardic performance in effect to cast this spell. With a flourish, you immediately end the performance, and one creature within range affected by your bardic performance can make a move action or a standard action of their choice.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Heroic Fortune", school: "Evocation", levels: "alchemist 2, bard 2, cleric 2, investigator 2, oracle 2, paladin 3, skald 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S, DF, M (diamond dust worth 100 gp)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 round/level",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "This spell grants 1 hero point to the target. This hero point must be spent before the duration expires, or it is lost.",
                          desc: "This spell grants 1 hero point to the target. This hero point must be spent before the duration expires, or it is lost. The bonus hero point is spent before any other hero points the target might possess. Heroic Fortune, Mass",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Heroic Fortune, Mass", school: "Evocation", levels: "alchemist 2, bard 2, cleric 2, investigator 2, oracle 2, paladin 3, skald 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S, DF, M (diamond dust worth 100 gp)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 round/level",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "This spell functions like heroic fortune , except as noted above.",
                          desc: "This spell functions like heroic fortune , except as noted above.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hidden Speech", school: "Transmutation", levels: "bard 2, inquisitor 3, medium 2, mesmerist 2, psychic 2, skald 2, witch 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (a cipher written on a piece of parchment)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "you plus one creature/level, no two of which can be more than 30 ft. apart",
                          duration: "10 minutes/level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You greatly enhance the ability of the subjects to communicate hidden messages to each other. Each target gains a +10 competence bonus on Bluff checks to send secret message to other recipients.",
                          desc: "You greatly enhance the ability of the subjects to communicate hidden messages to each other. Each target gains a +10 competence bonus on Bluff checks to send secret message to other recipients. Others using opposed Sense Motive checks to decipher these messages receive a –5 penalty. All subjects affected by the spell must share a language to be able to pass messages.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hide Campsite", school: "Illusion (Glamer)", levels: "druid 3, hunter 2, ranger 2",
                          castingTime: "10 minutes", components: "V, S, M (a sprig of mistletoe, and a vial of quicksilver)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one 20-ft. cube", targets: "",
                          duration: "2 hours/level (D)",
                          savingThrow: "Will disbelief (if interacted with);", sr: false,
                          summary: "You make the area around a campsite appear to be a thicket of untouched and forbidding foliage, or some other unwelcoming feature matching the surrounding terrain.",
                          desc: "You make the area around a campsite appear to be a thicket of untouched and forbidding foliage, or some other unwelcoming feature matching the surrounding terrain. Creatures outside the area cannot sense any activity going on inside the area—they cannot smell campfires or cooking food, they cannot hear conversation, loud noises, or spells being cast, and they cannot even feel heat or a rush of wind coming from the area. Those inside the area can see out normally. Once a creature steps into the area of the spell, it can see everything in and around the area normally.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Holy Whisper", school: "Evocation", levels: "paladin 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "30 ft.", area: "cone-shaped burst", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates, see text;", sr: true,
                          summary: "You whisper a single word in the primordial language of good that is anathema to the minions of evil and strengthens the resolve of good creatures.",
                          desc: "You whisper a single word in the primordial language of good that is anathema to the minions of evil and strengthens the resolve of good creatures. Evil creatures within the burst must make a Fortitude saving throw or become sickened for 1 round/level. Evil outsiders with the evil subtype, evil-aligned dragons, and undead in the burst also take 2d8 points of damage if they fail their saves. Good-aligned creatures in the burst gain a +2 sacred bonus on attack and damage rolls for 1 round.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Honeyed Tongue", school: "Transmutation", levels: "bard 2, inquisitor 2, mesmerist 2, paladin 1, skald 2",
                          castingTime: "1 standard action", components: "V, M/DF (a drop of honey)",
                          range: "personal", area: "", targets: "you",
                          duration: "10 minutes/level",
                          savingThrow: "None", sr: false,
                          summary: "This spell augments your diplomacies. While under the effects of spell, you roll two dice each time you make a Diplomacy check to change a creature’s attitude, taking the highest roll.",
                          desc: "This spell augments your diplomacies. While under the effects of spell, you roll two dice each time you make a Diplomacy check to change a creature’s attitude, taking the highest roll. If this results in a roll low enough to reduce the creature’s attitude by a step, that creature gets some clue that you are manipulating it with a spell. Alternatively you can cast this spell before making a Diplomacy check to gather information, gaining a +5 competence bonus on the check.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hungry Pit", school: "Conjuration (Creation)", levels: "arcanist 2, sorcerer 2, summoner 2, summoner (unchained) 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, F (miniature shovel costing 10 gp)",
                          range: "medium (100 ft. + 10 ft./level)", area: "10-ft.-by-10-ft. hole, 10 ft. deep/2 levels", targets: "",
                          duration: "1 round + 1 round/level",
                          savingThrow: "Reflex negates;", sr: false,
                          summary: "This spell functions as create pit , except that the pit has the ability to squeeze and crush any creature trapped within it and has a maximum depth of 100 feet.",
                          desc: "This spell functions as create pit , except that the pit has the ability to squeeze and crush any creature trapped within it and has a maximum depth of 100 feet. Creatures who fall into the hole take falling damage as normal. In addition, anyone within the pit, not just those on the bottom, takes 4d6 points of bludgeoning damage each round as the pit contracts and then returns to its normal size (a successful Reflex save halves this damage). The ever-shifting walls of the pit are quite difficult to scale and have a Climb DC of 35.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hunter's Eye", school: "Divination", levels: "hunter 2, inquisitor 3, ranger 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "1 minute/level",
                          savingThrow: "none;", sr: true,
                          summary: "Sharpening your perceptive abilities and tuning them against obfuscating effects, hunter’s eye greatly enhances your senses against the target creature.",
                          desc: "Sharpening your perceptive abilities and tuning them against obfuscating effects, hunter’s eye greatly enhances your senses against the target creature. You gain the ability to perceive the target when it is invisible or ethereal as though using the see",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hunter's Howl", school: "Necromancy", levels: "hunter 1, ranger 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "20 ft.", area: "20-ft.-radius burst", targets: "",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: false,
                          summary: "With a single primal howl, you strike fear in your opponents. Until the end of the spell’s duration, you treat those affected by it as if they were your favored enemy, gaining a +2 bonus on weapon…",
                          desc: "With a single primal howl, you strike fear in your opponents. Until the end of the spell’s duration, you treat those affected by it as if they were your favored enemy, gaining a +2 bonus on weapon attack and damage rolls against them, and a +2 bonus on Bluff, Knowledge, Perception, Sense Motive, and Survival checks against them. If an affected creature is already one of your favored enemies, it is shaken instead. This is a mind-affecting fear effect.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hydraulic Push", school: "Evocation", levels: "arcanist 1, bloodrager 1, druid 1, hunter 1, magus 1, shaman 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature or object",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: true,
                          summary: "You call forth a quick blast of water that knocks over and soaks one creature or square. You can use this blast of water to make a bull rush against any one creature or object.",
                          desc: "You call forth a quick blast of water that knocks over and soaks one creature or square. You can use this blast of water to make a bull rush against any one creature or object. Your CMB for this bull rush is equal to your caster level plus your Intelligence, Wisdom, or Charisma modifier, whichever is highest. This bull rush does not provoke an attack of opportunity. Hydraulic push extinguishes any normal fires on a creature, object, or in a single 5-foot square which it is targeted against. Magical fires are unaffected.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hydraulic Torrent", school: "Evocation", levels: "arcanist 3, bloodrager 3, druid 3, hunter 3, magus 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "60 ft.", area: "60-ft. line", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: true,
                          summary: "You call forth a powerful stream of water that batters all creatures and obstacles in its path until it strikes something it cannot push past.",
                          desc: "You call forth a powerful stream of water that batters all creatures and obstacles in its path until it strikes something it cannot push past. Against creatures and moveable objects this stream acts as a bull rush. You can bull rush creatures of any size, not just those one size larger than your own. Make a combat maneuver check and apply its results to each creature within the area. Your CMB for this bull rush is equal to your caster level plus your Intelligence, Wisdom, or Charisma modifier, whichever is highest. This bull rush does not provoke an attack of opportunity. Against immovable objects this stream instead allows you to make a Strength check to destroy the target. When attempting to break an object, the stream has an effective Strength equal to your caster level plus the ability score modifier as above. The Break DC depends on the object you’re trying to break—see Breaking Items. Hydraulic torrent extinguishes any normal fires it encounters along its path. Magical fires are unaffected.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ill Omen", school: "Enchantment (Compulsion)", levels: "medium 1, mesmerist 1, psychic 1, witch 1",
                          castingTime: "1 standard action", components: "V, S, M (hair from a black cat)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round/level or until discharged",
                          savingThrow: "none;", sr: true,
                          summary: "You afflict the target with bad luck. On the next d20 roll the target makes, it must roll twice and take the less favorable result.",
                          desc: "You afflict the target with bad luck. On the next d20 roll the target makes, it must roll twice and take the less favorable result. For every five caster levels you have, the target must roll twice on an additional d20 roll (to a maximum of five rolls at 20th level). A target who can speak and has at least one free hand and who is aware of the spell and its effects (such as from a Spellcraft check to identify the spell as it is cast) can negate one reroll by spending a move action to utter a brief prayer or good luck charm to appease the spirits of ill fortune.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Innocence", school: "Transmutation", levels: "bard 1, mesmerist 1, skald 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "You surround yourself with an aura of innocence and trustworthiness. You gain a +10 competence bonus on Bluff skill checks to convince others of your innocence.",
                          desc: "You surround yourself with an aura of innocence and trustworthiness. You gain a +10 competence bonus on Bluff skill checks to convince others of your innocence. They find it difficult to believe you capable of any wrongdoing. This bonus does not apply to other uses of the Bluff skill, such as feinting in combat, creating a diversion to hide, or communicating secret messages via innuendo, nor does it apply to any use of the skill to convince anyone of anything other than your complete innocence and blamelessness.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Instant Armor", school: "Conjuration (Creation)", levels: "cleric 2, oracle 2, paladin 2, psychic 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "You instantly wrap your body in a suit of armor made from opaque force.",
                          desc: "You instantly wrap your body in a suit of armor made from opaque force. At your option, the armor can be decorated with your religion’s holy symbol in a prominent place, such as upon the breastplate or helm. While it exists, this armor replaces any garments or other sort of armor worn, magical as well as mundane. You lose access to, and all benefits from, armor replaced by this spell until the spell ends and the instant armor disappears. Instant armor acts in all ways as armor typical of its type (armor bonus, maximum Dexterity bonus, arcane spell failure chance, and so on). Since",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Instant Enemy", school: "Enchantment", levels: "hunter 3, ranger 3",
                          castingTime: "1 swift action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature that is not your favored enemy.",
                          duration: "1 minute/level",
                          savingThrow: "none;", sr: false,
                          summary: "With this spell you designate the target as your favored enemy for the remainder of its duration. Select one of your favored enemy types.",
                          desc: "With this spell you designate the target as your favored enemy for the remainder of its duration. Select one of your favored enemy types. For the duration of the spell, you treat the target as if it were that type of favored enemy for all purposes.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Invigorate", school: "Illusion (Figment)", levels: "bard 1, medium 1, mesmerist 1, psychic 1, skald 1",
                          castingTime: "1 standard action", components: "V",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 minutes/level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell banishes feelings of weariness. For the duration, the subject takes no penalties from the fatigued or exhausted conditions.",
                          desc: "This spell banishes feelings of weariness. For the duration, the subject takes no penalties from the fatigued or exhausted conditions. The effect of invigorate is merely an illusion, however, not a substitute for actual rest or respite. When the spell ends, the subject takes 1d6 points of nonlethal damage, along with the return of the original condition(s). A creature can be under the effects of only one",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Invigorate, Mass", school: "Illusion (Figment)", levels: "bard 1, medium 1, mesmerist 1, psychic 1, skald 1",
                          castingTime: "1 standard action", components: "V",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 minutes/level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell works as invigorate , except that it affects multiple creatures.",
                          desc: "This spell works as invigorate , except that it affects multiple creatures.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Jester's Jaunt", school: "Conjuration (Teleportation)", levels: "bard 3, mesmerist 3, skald 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "one living creature",
                          duration: "instantiations",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You teleport the target to a space you can see within 30 feet of the target.",
                          desc: "You teleport the target to a space you can see within 30 feet of the target. The destination must be on solid ground, and the teleportation cannot end in a space that is by nature hazardous to the creature you are teleporting.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Keen Senses", school: "Transmutation", levels: "alchemist 1, druid 1, hunter 1, investigator 1, occultist 1, ranger 1",
                          castingTime: "1 standard action", components: "V, M/DF (a hawk’s feather)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 minute/level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The subject gains a +2 competence bonus on Perception checks and gains low-light vision. Subjects that have low-light vision double the distance they can see under the effects of this spell.",
                          desc: "The subject gains a +2 competence bonus on Perception checks and gains low-light vision. Subjects that have low-light vision double the distance they can see under the effects of this spell.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("King's Castle", school: "Conjuration (Teleportation)", levels: "paladin 4",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell allows you to switch places with an ally. When you cast this spell, choose a single ally within range. You teleport to your ally’s space while your ally teleports to your former space.",
                          desc: "This spell allows you to switch places with an ally. When you cast this spell, choose a single ally within range. You teleport to your ally’s space while your ally teleports to your former space.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Knight's Calling", school: "Enchantment (Compulsion)", levels: "paladin 1",
                          castingTime: "1 standard action", components: "V, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You compel an enemy to come and fight you. On its turn, the target moves its speed toward you, avoiding any other dangers along its path (including any movement that would provoke attacks of…",
                          desc: "You compel an enemy to come and fight you. On its turn, the target moves its speed toward you, avoiding any other dangers along its path (including any movement that would provoke attacks of opportunity). The target may do nothing but move on its turn. If the target ends its move adjacent to you, you can make an attack of opportunity against the target.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Lead Blades", school: "Transmutation", levels: "hunter 1, occultist 1, ranger 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "touch",
                          duration: "1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "Lead blades increases the momentum and density of your melee weapons just as they strike a foe.",
                          desc: "Lead blades increases the momentum and density of your melee weapons just as they strike a foe. All melee weapons you are carrying when the spell is cast deal damage as if one size category larger than they actually are. For instance, a Medium longsword normally deals 1d8 points of damage, but it would instead deal 2d6 points of damage if benefiting from lead blades . Only you can benefit from this spell. If anyone else uses one of your weapons to make an attack it deals damage as normal for its size.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Life Bubble", school: "Abjuration", levels: "arcanist 5, cleric 5, druid 4, hunter 3, occultist 4, oracle 5, psychic 5, ranger 3, sorcerer 5, warpriest 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M/DF (a bit of eggshell)",
                          range: "touch", area: "", targets: "creatures touched, up to one/level",
                          duration: "2 hours/level; see text",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You surround the touched creatures with a constant and moveable 1-inch shell of tolerable living conditions.",
                          desc: "You surround the touched creatures with a constant and moveable 1-inch shell of tolerable living conditions. This shell enables the subjects to breathe freely, even underwater or in a vacuum, as well as making them immune to harmful gases and vapors, including inhaled diseases and poisons and spells like cloudkill and",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Light Lance", school: "Evocation", levels: "paladin 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "lance of light", targets: "",
                          duration: "1 round + 1 round/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "You create a glorious beam of brilliant radiance that acts as a +1 holy lance suitable for your size.",
                          desc: "You create a glorious beam of brilliant radiance that acts as a +1 holy lance suitable for your size. You must have a free hand when casting the spell and, once you call the lance into being, you cannot switch it to another hand or put it down without prematurely ending the spell. As a standard action while holding a",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Lily Pad Stride", school: "Transmutation", levels: "druid 3, hunter 3",
                          castingTime: "1 standard action", components: "V, S, M (a frog’s leg)",
                          range: "long (400 ft. + 40 ft./level)", area: "trail of lily pads behind you", targets: "",
                          duration: "10 minutes/level (D); see text",
                          savingThrow: "none;", sr: false,
                          summary: "Your every footstep creates aquatic plants capable of supporting your weight and that of any creature of your size or smaller that is following you.",
                          desc: "Your every footstep creates aquatic plants capable of supporting your weight and that of any creature of your size or smaller that is following you. These lily pads only appear when you cross water or other liquids which do not immediately destroy plants. You can walk across these liquid surfaces without any fear of stumbling (though if knocked prone, dragged under, or otherwise pulled off your feet you still sink in the liquid). For the duration of the spell, any creature of your size or smaller can attempt to follow you by making a DC 10 Acrobatics check every round. Each such check allows it to move at half its normal land speed. If the creature takes a –5 penalty on its check it can move at its normal speed. If a creature fails an Acrobatics check, or if a creature that’s larger than you attempts to follow, it falls through, damaging the plants. Each time a creature falls through, all subsequent creatures take a cumulative –5 penalty on their Acrobatics checks when traveling across that particular stretch of plants. As you move, the lily pads disappear behind you once you pass beyond the spell’s range. Otherwise, they remain until the spell’s duration expires.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Lockjaw", school: "Transmutation", levels: "druid 2, hunter 2, ranger 2",
                          castingTime: "1 standard action", components: "V, S, M (sticky tree gum)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "You give a creature the ability to use one of its natural attacks to firmly attach itself to an opponent. Choose one of the creature’s natural attacks (usually a claw or bite attack).",
                          desc: "You give a creature the ability to use one of its natural attacks to firmly attach itself to an opponent. Choose one of the creature’s natural attacks (usually a claw or bite attack). The creature gains the grab ability with that natural attack, including the +4 bonus on combat maneuver checks to start or maintain a grapple. A creature with multiple natural attacks can strike at its grappled opponent with its other natural attacks, but cannot attack any other creature.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Malediction (Hero Points)", school: "Necromancy", levels: "arcanist 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, F (onyx dust worth 500 gp)",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "instantaneous/1 minute per HD of the target; see text",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You utter a dire curse over the body of a dying creature, allowing you to consume its waning life force. Upon casting this spell, you touch a living creature that has –1 or fewer hit points.",
                          desc: "You utter a dire curse over the body of a dying creature, allowing you to consume its waning life force. Upon casting this spell, you touch a living creature that has –1 or fewer hit points. If the target fails its saving throw, it dies and you gain 1 hero point for every 5 Hit Dice possessed by the target (minimum 1, maximum 3). These hero points last for a number of minutes equal to the target’s Hit Dice. Any hero points remaining when this spell ends are lost.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Marks Of Forbiddance", school: "Abjuration", levels: "paladin 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one enemy and one ally",
                          duration: "1 round/level",
                          savingThrow: "Will negates, see text;", sr: true,
                          summary: "Marks of Forbiddance magically brand two creatures, preventing them from committing violence against one another. When you cast this spell choose one enemy and one ally within range.",
                          desc: "Marks of Forbiddance magically brand two creatures, preventing them from committing violence against one another. When you cast this spell choose one enemy and one ally within range. Both targets become branded with the sigil of forbiddance. Until the end of the spell’s duration, in order for the two targets to attack one another, even with a targeted spell, each attacker must attempt a Will save. If the save succeeds, that target can attack the other normally. If the save fails, the target can’t follow through with the attack and the action is lost. This spell does not prevent the targets from attacking each other with area of effect spells or abilities.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mask Dweomer", school: "Illusion (Glamer)", levels: "occultist 1, psychic 1, witch 1",
                          castingTime: "1 standard action", components: "V, S, M (a piece of gauze)",
                          range: "touch", area: "", targets: "creature or object touched",
                          duration: "1 day/level (D)",
                          savingThrow: "none, see text;", sr: false,
                          summary: "You mask and manipulate a spell’s magic aura to make it harder to detect. Select one spell effect on the target creature or object.",
                          desc: "You mask and manipulate a spell’s magic aura to make it harder to detect. Select one spell effect on the target creature or object. You must have either cast this spell yourself or have perceived it by means such as detect magic or",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mask Dweomer, Communal", school: "Illusion (Glamer)", levels: "occultist 1, psychic 1, witch 1",
                          castingTime: "1 standard action", components: "V, S, M (a piece of gauze)",
                          range: "touch", area: "", targets: "creature or object touched",
                          duration: "1 day/level (D)",
                          savingThrow: "none, see text;", sr: false,
                          summary: "This spell functions like mask dweomer , except you divide the duration in 1-day increments among the creatures or objects touched.",
                          desc: "This spell functions like mask dweomer , except you divide the duration in 1-day increments among the creatures or objects touched.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Memory Lapse", school: "Enchantment", levels: "arcanist 1, bard 1, mesmerist 1, occultist 1, skald 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "instantaneous",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You cause the target to forget what happened from the casting of the spell back to the beginning of its last turn.",
                          desc: "You cause the target to forget what happened from the casting of the spell back to the beginning of its last turn. This may allow a retry on a Diplomacy, Intimidate, or opposed skill check, though only with respect to the target, not other creatures that may be present.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Moonstruck", school: "Enchantment (Compulsion)", levels: "arcanist 4, bloodrager 4, druid 4, hunter 4, psychic 4, sorcerer 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (a pinch of powdered moonstone )",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one humanoid creature",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You invoke the mystical power of the moon to drive the target into a mad, bestial frenzy.",
                          desc: "You invoke the mystical power of the moon to drive the target into a mad, bestial frenzy. If the target fails its save, it is dazed for 1 round, dropping held items as its nails and teeth elongate and sharpen. The target gains a bite attack and two claw attacks that deal damage appropriate for the creature’s size, and for the remainder of the spell’s duration the target behaves as if under simultaneous rage and",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Nap Stack", school: "Necromancy", levels: "cleric 3, oracle 3, warpriest 3",
                          castingTime: "1 minute", components: "V, S, M (a little silk pillow worth 100 gp)",
                          range: "30 ft.", area: "30-ft.-radius emanation", targets: "",
                          duration: "8 hours",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You reduce the amount of uninterrupted sleep or rest creatures within the spell’s area need in order to recover from injuries, regain spells, or other special abilities to 2 hours instead of the…",
                          desc: "You reduce the amount of uninterrupted sleep or rest creatures within the spell’s area need in order to recover from injuries, regain spells, or other special abilities to 2 hours instead of the normal eight. In addition, if creatures continue to sleep or rest beyond the initial 2 hours, every additional 2 hours counts as a day of rest for the purpose of recovering hit points, ability damage, as well as for enduring diseases, poisons, or other afflictions. This means 8 total hours of sleep counts as 4 days for natural healing and for saving throws as diseases or similar afflictions run their course. When suffering from diseases, poison, or other afflictions, sleepers experience vivid dreams that help them track their recovery. If things go poorly they can, at any time, wake themselves up in order to seek a better alternative. If awoken or otherwise disturbed during this 8-hour period, creatures may return to sleep but they no longer enjoy the benefits of the accelerated recovery time. Creatures can only enjoy the benefits of this spell once in any 1-week period.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Natural Rhythm", school: "Transmutation", levels: "druid 2, hunter 2",
                          castingTime: "1 standard action", components: "V, S, M (a handful of pebbles dropped one by one onto the ground)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 round/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You enhance a creature’s ability to harm an opponent based on the number of times it has already injured that opponent with a natural attack.",
                          desc: "You enhance a creature’s ability to harm an opponent based on the number of times it has already injured that opponent with a natural attack. Each time the creature successfully strikes an opponent with a natural attack, the subject gains a cumulative +1 bonus on damage rolls made against that opponent when making natural attacks (maximum +5 bonus). If an attack misses, the bonus to damage for all attacks resets to +0.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Nature's Exile", school: "Transmutation", levels: "druid 3, hunter 3, witch 3",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "permanent",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell curses the creature touched, making it inimical to the natural world. All animals have an initial attitude of hostile toward the target.",
                          desc: "This spell curses the creature touched, making it inimical to the natural world. All animals have an initial attitude of hostile toward the target. Familiars, being magical beasts, are not affected by this spell, but animal companions are. If you have an animal companion, it does not become hostile, but as long as you remain cursed, your animal companion takes a –2 penalty on all attack rolls, skill checks, and saving throws. The target also takes a –10 penalty on Survival skill checks as the weather and environment themselves seem to conspire to cause trouble. Nature’s exile can be removed with break enchantment ,",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Negate Aroma", school: "Transmutation", levels: "alchemist 1, druid 1, hunter 1, investigator 1, occultist 1, ranger 1",
                          castingTime: "1 standard action", components: "V, S, M/DF (a pinch of alum)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature or object/level touched",
                          duration: "1 hour/level (D)",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "With a gesture, this spell allows you to dismiss even the foulest or most distinctive scents. When cast, the targeted creatures or objects lose all natural and unnatural odors.",
                          desc: "With a gesture, this spell allows you to dismiss even the foulest or most distinctive scents. When cast, the targeted creatures or objects lose all natural and unnatural odors. A creature under the effect of negate aroma cannot be tracked, located, or pinpointed by the scent special quality. In addition, this spell prevents the target creature from using the stench special ability and similar odor-based abilities (such as those possessed by troglodytes).",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Oath of Peace", school: "Abjuration", levels: "paladin 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "Entreating your deity for aid, you make a temporary oath of peace, granting you superior defenses but means you can’t attack for the duration of the oath.",
                          desc: "Entreating your deity for aid, you make a temporary oath of peace, granting you superior defenses but means you can’t attack for the duration of the oath. For as long as you are subject to this spell, you gain a +5 sacred bonus to AC and on saving throws, as well as DR 10/evil. If you make a direct or indirect attack or any show any hostility toward any creature, the spell immediately ends.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Oracle's Burden", school: "Necromancy", levels: "oracle 2",
                          castingTime: "1 standard action", components: "V",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "1 minute/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You entreat the forces of fate to bestow your oracle’s curse upon another creature. The target creature suffers all the hindrances and none of the benefits of your oracle’s curse class feature.",
                          desc: "You entreat the forces of fate to bestow your oracle’s curse upon another creature. The target creature suffers all the hindrances and none of the benefits of your oracle’s curse class feature. You still suffer all effects of your oracle’s curse. If you do not have the oracle’s curse class feature, this spell has no effect.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Pain Strike", school: "Evocation", levels: "arcanist 3, bloodrager 3, psychic 2, sorcerer 3, spiritualist 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "1 round/level (D)",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "Pain strike racks the targeted creature with agony, inflicting 1d6 points of nonlethal damage per round for 1 round per level (maximum 10 rounds).",
                          desc: "Pain strike racks the targeted creature with agony, inflicting 1d6 points of nonlethal damage per round for 1 round per level (maximum 10 rounds). Additionally, the affected creature is sickened for the spell’s duration, and the caster gains a +4 circumstance bonus on Intimidate checks against the target. Pain Strike, Mass",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Pain Strike, Mass", school: "Evocation", levels: "arcanist 3, bloodrager 3, psychic 2, sorcerer 3, spiritualist 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "1 round/level (D)",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "This spell works like pain strike , except as noted above.",
                          desc: "This spell works like pain strike , except as noted above.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Paladin's Sacrifice", school: "Abjuration", levels: "paladin 2",
                          castingTime: "1 immediate action", components: "V, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "You open up a brief but powerful divine conduit between you and another creature, taking on the damage and any other effects that creature suffers.",
                          desc: "You open up a brief but powerful divine conduit between you and another creature, taking on the damage and any other effects that creature suffers. When a creature in range is hit by an attack or fails a saving throw, you can cast this spell and the wounds and/or effects are magically transmitted to you instead of the target. You are affected as if you were hit by the attack or failed the saving throw, taking all the damage and suffering all of the adverse effects. Any resistances or immunities you have are applied normally, but you cannot otherwise reduce or negate the damage or effects in any way. If you use this spell against an effect that also targets you or includes you in its area, you suffer the effects for both yourself and the target you spared, potentially taking damage or suffering other consequences twice.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Perceive Cues", school: "Transmutation", levels: "alchemist 2, hunter 2, inquisitor 2, investigator 2, mesmerist 2, occultist 2, psychic 2, ranger 2, witch 2",
                          castingTime: "1 standard action", components: "V, S, M (a drop of water)",
                          range: "personal", area: "", targets: "you",
                          duration: "10 minutes/level",
                          savingThrow: "None", sr: false,
                          summary: "Your senses become preternaturally keen, and you gain insight into subtle behavioral cues. For the duration of the spell, you receive a +5 competence bonus on Perception and Sense Motive checks.",
                          desc: "Your senses become preternaturally keen, and you gain insight into subtle behavioral cues. For the duration of the spell, you receive a +5 competence bonus on Perception and Sense Motive checks.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Phantasmal Revenge", school: "Illusion (Phantasm)", levels: "arcanist 7, mesmerist 6, psychic 7, sorcerer 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch and unlimited; see text", area: "", targets: "dead body touched",
                          duration: "instantaneous",
                          savingThrow: "Will disbelief then Fortitude partial, see text;", sr: true,
                          summary: "When you cast this eerie spell upon a recently slain creature, you cause a ghastly, spectral image of it to rise up from its corpse, shrieking for vengeance before it vanishes in a burst of unnatural…",
                          desc: "When you cast this eerie spell upon a recently slain creature, you cause a ghastly, spectral image of it to rise up from its corpse, shrieking for vengeance before it vanishes in a burst of unnatural light. This phantom then unerringly seeks out the creature that killed it, as long as that creature is on the same plane, and tries to slay its killer in turn. Only the corpse’s killer can see the phantasmal image created by this spell. You and any others who witness the spell’s casting or its ultimate effects see only a vague shape. The target first gets a Will save to disbelieve the illusion. If that save fails, the target must succeed on Fortitude saving throw or take 10 points of damage per caster level from the phantasmal image. Even if the Fortitude save is successful, the target takes 5d6 points of damage + 1 point of damage per caster level. You know immediately if the spell succeeded or failed to kill its target but gain no other information, including the identity of the target of the spell. The creature providing the corpse must have died no more than 1 day per caster level prior to the casting of this spell. If the creature that provided the corpse was not, in fact, killed by another, or if the killer is dead or no longer on the same plane, the spell fails.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Phantasmal Web", school: "Illusion (Phantasm)", levels: "arcanist 5, bard 5, mesmerist 5, psychic 5, skald 5, sorcerer 5, spiritualist 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature/level, no two of which may be more than 30 ft. apart",
                          duration: "1 round/level (D)",
                          savingThrow: "Will disbelief, then Fortitude partial, see text;", sr: true,
                          summary: "You implant within the minds of your targets the illusion that they are engulfed in tangled webs teeming with swarms of tiny spiders.",
                          desc: "You implant within the minds of your targets the illusion that they are engulfed in tangled webs teeming with swarms of tiny spiders. Those who fail to disbelieve the phantasmal web are treated as if in a",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Pied Piping", school: "Enchantment (Compulsion)", levels: "bard 6, skald 6",
                          castingTime: "1 standard action", components: "V or F (musical instrument)",
                          range: "90 ft.", area: "90-ft.-radius emanation, centered on you", targets: "",
                          duration: "concentration + 1 round/level",
                          savingThrow: "Will partial, see text;", sr: true,
                          summary: "You call forth a melody so compelling and attractive that creatures belonging to a group with a specific, identifiable physical trait (such as type, subtype, age, gender, or hair color) find it…",
                          desc: "You call forth a melody so compelling and attractive that creatures belonging to a group with a specific, identifiable physical trait (such as type, subtype, age, gender, or hair color) find it almost impossible not to approach and follow you. You choose the nature of the creatures you seek to attract when you cast the spell and, once you make this choice, cannot alter it. You can only use physical traits to determine your audience. You can never use social and other more voluntary criteria (such as alignment, religion, nationality, or class) to select targets for this spell. Eligible creatures must make a saving throw each round spent within the area of the spell and, once they fail, approach you at their normal movement speed and stand as close to you as possible without actually entering an occupied square. If you move, they do their best to maintain their proximity to you and follow. Affected creatures can take no actions other than listening to your music and following you if you move. Those entering the area while the spell is in effect must also successfully save or be compelled to come to you. The attractive power of the spell does not cause affected creatures to put themselves in jeopardy and they have enough presence of mind to avoid or negotiate around obstacles and other perilous hazards. If unable to approach or follow you without endangering themselves, they simply wait, swaying to the music, until you pass out of range, at which point they regain their senses after 1 round/caster level. If circumstances change once you move out of range, making it possible for affected creatures to resume their attempts to get near you they do so, and, if they manage to return to within the area of the spell before it wears off, the spell continues as normal. If attacked, affected creatures can take defensive measures, even going so far as to avoid existing threats by moving out of the area of the spell, but cannot make attacks themselves or take any other actions until the effects of the spell wear off. The effects of the spell persist for 1 round/caster level even after you stop concentrating. Once the spell ceases, the affected creatures continue to stay near you until the effects of the spell wear off.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Pillar of Life", school: "Conjuration (Healing)", levels: "cleric 5, oracle 5, warpriest 5",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "medium (100 ft. + 10 ft./level)", area: "5-ft.-square pillar of positive energy, 20 ft. high", targets: "",
                          duration: "1 round/level",
                          savingThrow: "none;", sr: false,
                          summary: "You conjure a pillar of positive energy in a single 5-foot square within range that radiates light as if it were a sunrod.",
                          desc: "You conjure a pillar of positive energy in a single 5-foot square within range that radiates light as if it were a sunrod. Living creatures adjacent to the pillar can spend a standard action to touch the pillar and heal 2d8 points of damage + 1 point per caster level (maximum +20). Creatures can move into the square containing the pillar, but if an undead creature moves into the pillar it takes 1d6 points of damage per caster level (maximum 10d6). Undead creatures vulnerable to bright light take 1d8 points if damage per caster level (maximum 10d8). A creature cannot benefit or suffer more than once from a single casting of this spell.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Planar Adaptation", school: "Transmutation", levels: "alchemist 5, arcanist 5, cleric 4, investigator 5, medium 4, occultist 4, oracle 4, psychic 4, sorcerer 5, spiritualist 5, summoner 5, summoner (unchained) 5, warpriest 4, wizard 5",
                          castingTime: "1 standard action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "1 hour/level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "Planar adaptation grants you immunity to the harmful environmental effects of a particular plane of existence, including such hazards as toxicity, extreme temperatures, and lack of air.",
                          desc: "Planar adaptation grants you immunity to the harmful environmental effects of a particular plane of existence, including such hazards as toxicity, extreme temperatures, and lack of air. Additionally, you gain energy resistance 20 to a single energy type prevalent on that plane (choose one if more than one type is equally prevalent). Planar adaptation has no effect when cast upon your native plane. Planar Adaptation, Mass",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Planar Adaptation, Mass", school: "Transmutation", levels: "alchemist 5, arcanist 5, cleric 4, investigator 5, medium 4, occultist 4, oracle 4, psychic 4, sorcerer 5, spiritualist 5, summoner 5, summoner (unchained) 5, warpriest 4, wizard 5",
                          castingTime: "1 standard action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "1 hour/level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions like planar adaptation , except as noted above.",
                          desc: "This spell functions like planar adaptation , except as noted above.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Pox Pustules", school: "Necromancy", levels: "druid 2, hunter 2, witch 2",
                          castingTime: "1 standard action", components: "V, S, M (leaves from a toxic plant)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 minute/level",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "You inflict a painful, itching rash on the target creature. The target is sickened and takes a –4 penalty to Dexterity (this penalty cannot lower Dexterity below 0).",
                          desc: "You inflict a painful, itching rash on the target creature. The target is sickened and takes a –4 penalty to Dexterity (this penalty cannot lower Dexterity below 0). The target can spend a move action scratching furiously at the rash to remove the sickened condition (but not the Dexterity penalty) until the start of its next turn.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Protective Spirit", school: "Conjuration (Creation)", levels: "hunter 2, ranger 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "A protective spirit is an invisible, mindless, shapeless force that hovers about you, defending you against unexpected attacks. When a creature makes an attack of opportunity against you, the",
                          desc: "A protective spirit is an invisible, mindless, shapeless force that hovers about you, defending you against unexpected attacks. When a creature makes an attack of opportunity against you, the",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Purging Finale", school: "Conjuration (Healing)", levels: "bard 3, skald 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "instantaneous",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You must have a bardic performance in effect to cast this spell.",
                          desc: "You must have a bardic performance in effect to cast this spell. With a flourish, you immediately end your bardic performance, removing one of the following conditions on a creature within range affected by your bardic performance: cowering, dazzled, exhausted, paralyzed, shaken, or stunned.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Purified Calling", school: "Conjuration (Healing)", levels: "summoner 4, summoner (unchained) 4",
                          castingTime: "1 standard action", components: "V, S, M (a stick of incense)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute",
                          savingThrow: "None", sr: false,
                          summary: "Your eidolon is restored to full health when you summon it. Upon casting this spell, you must immediately begin the ritual to summon your eidolon.",
                          desc: "Your eidolon is restored to full health when you summon it. Upon casting this spell, you must immediately begin the ritual to summon your eidolon. Upon completion of the ritual, your eidolon appears at full hit points and without any damage or penalties to its ability scores, regardless of its previous condition. In addition, any temporary negative conditions affecting your eidolon are immediately removed. Permanent conditions and ability drain are not affected by this spell.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Putrefy Food and Drink", school: "Transmutation", levels: "witch 0",
                          castingTime: "1 standard action", components: "V, S",
                          range: "10 ft.", area: "", targets: "1 cu. ft./level of food and water or one potion; see text",
                          duration: "instantaneous",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "This spell causes otherwise edible food to rot and spoil instantly, and water and other liquids to become brackish and undrinkable.",
                          desc: "This spell causes otherwise edible food to rot and spoil instantly, and water and other liquids to become brackish and undrinkable. Holy water and similar food and drink of significance are spoiled by putrefy food and drink , but the spell has no effect on creatures of any type, nor upon unholy water. Water weighs about 8 pounds per gallon. One cubic foot of water contains roughly 8 gallons and weighs about 60 pounds. Although potions and elixirs are unaffected by the normal use of the spell, you can instead choose to target a single such object with this spell, destroying it if it fails a saving throw.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Rally Point", school: "Enchantment (Compulsion)", levels: "paladin 1",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "5 ft.", area: "one 5-ft. square", targets: "",
                          duration: "1 minute/level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You create a spot that has the power to briefly hearten any good creature who comes into contact with it.",
                          desc: "You create a spot that has the power to briefly hearten any good creature who comes into contact with it. A good creature who enters this square (even if simply as part of its normal move) gains a +2 morale bonus on attacks, saving throws, and 2 temporary hit points per caster level for 1 round. Nongood creatures gain no benefit from this spell. A creature cannot benefit more than once from the same casting of this spell.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Rampart", school: "Conjuration (Creation)", levels: "arcanist 7, druid 7, sorcerer 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S, M (a handful of earth)",
                          range: "medium (100 ft. + 10 ft./level)", area: "10-ft.-high earthen wall, in a line up to 10 ft. long/2 levels, or a circle with radius of up to 3 ft. + 1 ft./level", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "You create a massive rampart of hard-packed earth and stone 5 feet thick. The rampart cannot be conjured so that it occupies the same space as another creature or object.",
                          desc: "You create a massive rampart of hard-packed earth and stone 5 feet thick. The rampart cannot be conjured so that it occupies the same space as another creature or object. Each 5-foot-wide section of the",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Rebuke", school: "Evocation", levels: "inquisitor 4",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "20 ft.", area: "20-ft.-radius burst centered on you", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Fortitude partial;", sr: true,
                          summary: "Your wrathful words cause physical harm to your enemies. Your enemies take 1d8 points of damage per two caster levels (maximum 5d8) and are staggered for 1 round.",
                          desc: "Your wrathful words cause physical harm to your enemies. Your enemies take 1d8 points of damage per two caster levels (maximum 5d8) and are staggered for 1 round. Half of this damage is sonic damage, but the other half results directly from divine power and is therefore not subject to being reduced by resistance to sonic-based attacks. Rebuke is especially devastating to foes who worship your god, inflicting 1d6 points of damage per caster level (maximum 10d6) and stunning them for 1d4 rounds. A successful Fortitude save halves the damage and negates the staggering or stunning effect.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Rejuvenate Eidolon", school: "Conjuration (Healing)", levels: "summoner 1, summoner (unchained) 1",
                          castingTime: "1 standard action", components: "V, S, M (a drop of your blood)",
                          range: "touch", area: "", targets: "eidolon touched",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as lesser rejuvenate eidolon , except that it cures 3d10 points of damage +1 point per caster level (maximum +10). Rejuvenate Eidolon, Greater",
                          desc: "This spell functions as lesser rejuvenate eidolon , except that it cures 3d10 points of damage +1 point per caster level (maximum +10). Rejuvenate Eidolon, Greater",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Rejuvenate Eidolon, Greater", school: "Conjuration (Healing)", levels: "summoner 1, summoner (unchained) 1",
                          castingTime: "1 standard action", components: "V, S, M (a drop of your blood)",
                          range: "touch", area: "", targets: "eidolon touched",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as lesser rejuvenate eidolon , except that it cures 5d10 points of damage +1 point per caster level (maximum +20).",
                          desc: "This spell functions as lesser rejuvenate eidolon , except that it cures 5d10 points of damage +1 point per caster level (maximum +20).",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Rejuvenate Eidolon, Lesser", school: "Conjuration (Healing)", levels: "summoner 1, summoner (unchained) 1",
                          castingTime: "1 standard action", components: "V, S, M (a drop of your blood)",
                          range: "touch", area: "", targets: "eidolon touched",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "By laying your hand upon an eidolon, you cause its wounds to close and its form to solidify. This spell cures 1d10 points of damage +1 point per caster level (maximum +5). Rejuvenate Eidolon",
                          desc: "By laying your hand upon an eidolon, you cause its wounds to close and its form to solidify. This spell cures 1d10 points of damage +1 point per caster level (maximum +5). Rejuvenate Eidolon",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Residual Tracking", school: "Divination", levels: "hunter 1, occultist 2, ranger 1",
                          castingTime: "1 minute", components: "V, S, M (a bit of plaster)",
                          range: "touch", area: "", targets: "footprint touched",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "By touching a footprint, you receive a clear mental image of the person or creature that made it.",
                          desc: "By touching a footprint, you receive a clear mental image of the person or creature that made it. The image has the exact same appearance as the creature that made the footprint at the moment it made the imprint, including any telling features or expressions, any gear or equipment, or anything else the creature was carrying at the time. For example, the footprint of a horse would reveal both the horse and any creature riding it when it made the footprint.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Resounding Blow", school: "Evocation", levels: "antipaladin 4, inquisitor 5, paladin 4",
                          castingTime: "1 swift action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "Fortitude partial, see text;", sr: false,
                          summary: "You must have a melee weapon in hand to cast this spell. On a successful melee attack, your weapon resounds with a thunderous clash. The target takes 1d6 points of sonic damage.",
                          desc: "You must have a melee weapon in hand to cast this spell. On a successful melee attack, your weapon resounds with a thunderous clash. The target takes 1d6 points of sonic damage. Your weapon is not harmed by this attack. If you are using your judgment ability or smite ability against the target, it is staggered for 1 round on a successful attack. A successful Fortitude save negates the staggering effect. On a successful critical hit, the target is stunned for 1 round and deafened for 1d6 rounds. A successful Fortitude save negates the stunning and deafening effects. If you are also using judgment or smite, your foe makes only a single save against all effects. This spell immediately ends if your weapon leaves your hand.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Rest Eternal", school: "Necromancy", levels: "cleric 4, druid 5, hunter 5, oracle 4, shaman 5, warpriest 4, witch 5",
                          castingTime: "1 round", components: "V, S, M/DF (ashes and a vial of holy or unholy water)",
                          range: "touch", area: "", targets: "one dead creature touched",
                          duration: "permanent",
                          savingThrow: "none;", sr: false,
                          summary: "You place a curse upon a dead creature that bars its spirit from returning.",
                          desc: "You place a curse upon a dead creature that bars its spirit from returning. Anyone casting a spell that would communicate with the dead creature, return it to life, or turn it into an undead creature must succeed on a caster level check with a DC of 11 plus your caster level. Rest eternal cannot be dispelled, but it can be negated with",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Restful Sleep", school: "Necromancy", levels: "bard 1, skald 1",
                          castingTime: "10 minutes", components: "V, S, M (a pinch of sand)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature/level, no two of which can be more than 30 ft. apart",
                          duration: "8 hours or 24 hours; see text",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "You cast this spell immediately prior to resting. While under the effects of this spell, you and your allies enjoy a restful night’s sleep.",
                          desc: "You cast this spell immediately prior to resting. While under the effects of this spell, you and your allies enjoy a restful night’s sleep. If a subject completes a full night’s rest, it regains hit points as if it had undergone a full day of bed rest (regaining twice its character level in hit points). If a subject completes a full day’s rest, it regains three times its character level in hit points. Any significant interruption during the rest (such as being awoken) prevents any healing that night and ends the effect of this spell on the awakened subject. Any healing acquired while under the effects of restful sleep is considered natural healing, and has no affect on effects requiring magical healing to cure.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Resurgent Transformation", school: "Conjuration (Healing)", levels: "alchemist 5, investigator 5",
                          castingTime: "1 standard action", components: "V, S, M (a pinch of meteoric iron worth 100 gp)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 hour/level or until triggered, then 1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "Resurgent transformation grants you the ability to recover from deadly wounds with restored vitality and a will to fight, but at a price.",
                          desc: "Resurgent transformation grants you the ability to recover from deadly wounds with restored vitality and a will to fight, but at a price. Once cast, resurgent transformation lies dormant for up to 1 hour per level until you are reduced to one-quarter hit points or less. Once triggered, you immediately gain a +4 enhancement bonus to Constitution and Strength, damage reduction 5/—, and the benefits of a",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Retribution", school: "Necromancy", levels: "inquisitor 3",
                          castingTime: "1 standard action", components: "V",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature who has just struck you with an attack",
                          duration: "1 round/level",
                          savingThrow: "Fortitude partial;", sr: true,
                          summary: "Retribution blasts those who have the temerity to assault your person.",
                          desc: "Retribution blasts those who have the temerity to assault your person. You may target anyone who has just struck you with an attack within the previous round, whether with a melee, ranged, or natural weapon, or a spell that requires an attack roll. The target is wracked with shooting pains that impose a –4 penalty on attack rolls, skills checks, and ability checks. On a successful Fortitude save, the penalty only lasts for 1 round. A target who worships the same god as you takes a –2 penalty on its saving throw.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Reviving Finale", school: "Conjuration (Healing)", levels: "bard 3, skald 3",
                          castingTime: "1 swift action", components: "V, S",
                          range: "20 ft.", area: "a 20-ft.-radius burst centered on you", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Will half (harmless);", sr: true,
                          summary: "You must have a bardic performance in effect to cast this spell. With a flourish, you immediately end your bardic performance, and allies within the area of the spell regain 2d6 hit points.",
                          desc: "You must have a bardic performance in effect to cast this spell. With a flourish, you immediately end your bardic performance, and allies within the area of the spell regain 2d6 hit points. This spell has no effect on undead creatures.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Righteous Vigor", school: "Enchantment (Compulsion)", levels: "inquisitor 3, paladin 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 round/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "Infusing the target with a surge of furious divine energy, you enhance a creature’s ability to hit an opponent based on the number of times it has already hit that opponent with a successful attack.",
                          desc: "Infusing the target with a surge of furious divine energy, you enhance a creature’s ability to hit an opponent based on the number of times it has already hit that opponent with a successful attack. Each time the subject successfully strikes an opponent with a successful melee attack, the subject gains a cumulative +1 morale bonus on attack rolls (maximum +4 bonus) and gains 1d8 temporary hit points (to a maximum of 20 temporary hit points). If an attack misses, the attack bonus resets to +0 but any accumulated temporary hit points remain. The temporary hit points disappear at the end of the spell’s duration.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("River of Wind", school: "Evocation", levels: "arcanist 4, bloodrager 4, druid 4, hunter 4, magus 4, occultist 4, sorcerer 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "120 ft.", area: "120-ft. line", targets: "",
                          duration: "1 round/level",
                          savingThrow: "Fortitude partial;", sr: true,
                          summary: "Summoning up the power of the tempest, you direct a current of forceful winds where you please.",
                          desc: "Summoning up the power of the tempest, you direct a current of forceful winds where you please. This spell creates a 5-foot-diameter line of wind—the direction of the wind is away from your location when you cast the spell, and remains constant in that direction for the spell duration. Creatures caught in a river of wind take 4d6 nonlethal damage and are knocked prone. A successful Fortitude save halves the damage and prevents being knocked prone. A creature that begins its turn wholly or partially within a",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sacred Bond", school: "Conjuration (Healing)", levels: "cleric 3, inquisitor 2, oracle 3, paladin 2, warpriest 3",
                          castingTime: "1 round", components: "V, S, F (a pair of golden bracelets worth 100 gp each worn by both you and the target)",
                          range: "touch; see text", area: "", targets: "creature touched",
                          duration: "10 minutes/level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "To use this spell, you first touch the intended recipient, creating a sympathetic field of healing energies between you.",
                          desc: "To use this spell, you first touch the intended recipient, creating a sympathetic field of healing energies between you. Once the spell has been cast, you and the target may cast conjuration (healing) spells with a range of touch upon each other so long as you are within close range (25 ft. + 5 ft./2 levels). Should either you or the target remove your bracelet, the spell immediately ends.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sacrificial Oath", school: "Abjuration", levels: "paladin 4",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 minute/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "You create a powerful bond between yourself and a single creature.",
                          desc: "You create a powerful bond between yourself and a single creature. Until the end of the spell’s duration, each time the target is hit with an attack or fails a saving throw, you can take the full damage of that attack and any other effects that creature suffers. If you choose not to take on the damage and effects, you instead take a number of points of damage equal to your Constitution score as backlash. Any resistances or immunities you have are applied normally, but you cannot otherwise reduce or negate the damage or effects of either the transfer or the backlash. If you or the subject of the spell move out of line of sight, the spell ends.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Saddle Surge", school: "Transmutation", levels: "paladin 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "personal", area: "", targets: "you and your mount",
                          duration: "1 round/level (D); see text",
                          savingThrow: "None", sr: false,
                          summary: "You and your mount form a perfect synergy that endows both of you with advantages based upon how far you travel each round.",
                          desc: "You and your mount form a perfect synergy that endows both of you with advantages based upon how far you travel each round. For every 5 feet your mount moves in a given round, you gain a +1 competence bonus on Ride checks and both you and your mount gain a +1 morale bonus on damage rolls made with weapons or natural attacks for 1 round. For instance, if your mount traveled 40 feet in a round, you would gain a +8 bonus on Ride checks and you and your mount would both gain a +8 bonus on damage rolls for 1 round, to a maximum bonus equal to your caster level. You must be mounted to enjoy the benefits of this spell. If you dismount, get knocked off, or take any other action that separates you from your mount, the spell immediately ends.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sanctify Armor", school: "Abjuration", levels: "inquisitor 4, paladin 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "armor touched",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "You imbue your armor with a righteous aura. It gains a +1 enhancement bonus per four caster levels (maximum +5 at 20th level). When using your judgment or smite ability, you gain DR 5/evil.",
                          desc: "You imbue your armor with a righteous aura. It gains a +1 enhancement bonus per four caster levels (maximum +5 at 20th level). When using your judgment or smite ability, you gain DR 5/evil. An outfit of regular clothing counts as armor that grants no AC bonus for the purpose of this spell.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Saving Finale", school: "Evocation", levels: "bard 1, skald 1",
                          castingTime: "1 immediate action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "instantaneous",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You must have a bardic performance in effect to cast this spell.",
                          desc: "You must have a bardic performance in effect to cast this spell. With a flourish, you can immediately end your bardic performance when a creature within range affected by your bardic performance fails a saving throw, allowing the subject to immediately reroll the failed saving throw.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Scent Trail", school: "Transmutation", levels: "druid 2, hunter 2",
                          castingTime: "1 standard action", components: "V, S, M (a queen ant)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature/level, no two of which can be more than 30 ft. apart",
                          duration: "1 hour/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "You, or a willing creature you touch, lay down a trail of scents that only the creatures you designate at the time of casting can detect. These creatures find it very easy to follow this trail.",
                          desc: "You, or a willing creature you touch, lay down a trail of scents that only the creatures you designate at the time of casting can detect. These creatures find it very easy to follow this trail. They gain a +20 competence bonus on any Survival checks made for the purpose of tracking the creature laying this trail. Subject creatures with the scent special ability gain a +10 competence bonus on Wisdom or Survival checks to follow the trail. In addition, you can leave scent messages along the trail. Each word or emotion in this message requires spending a move action in the same spot. Subject creatures seeking to understand this message must make another DC 20 Survival check, with a –1 penalty for every word or emotion in the message, in order to understand it. Creatures cannot benefit from this smell if they cannot use, or do not have, a sense of smell. Creatures can use this spell to backtrack through a dungeon, maze, or similar areas even if the creature laying down the trail crossed over the spot multiple times.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Screech", school: "Evocation", levels: "witch 3",
                          castingTime: "1 standard action", components: "V",
                          range: "30 ft.", area: "30-ft.-radius spread centered on you", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "You emit a shrill, piercing shriek, startling those around you into dropping their guard.",
                          desc: "You emit a shrill, piercing shriek, startling those around you into dropping their guard. Enemies in the area must make a successful saving throw or immediately provoke attacks of opportunity from foes that threaten them. You and your allies are unaffected by your own screech .",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sculpt Corpse", school: "Necromancy", levels: "arcanist 1, occultist 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M (lump of wax)",
                          range: "touch", area: "", targets: "one dead creature touched",
                          duration: "instantaneous",
                          savingThrow: "Will partial, see text;", sr: false,
                          summary: "With a clammy caress and a word to the powers lurking beyond death, you can reshape a dead body look like another creature or even a specific person so long as you have first-hand knowledge of how…",
                          desc: "With a clammy caress and a word to the powers lurking beyond death, you can reshape a dead body look like another creature or even a specific person so long as you have first-hand knowledge of how that creature or person actually looks. You can make the corpse one size larger or smaller and change anything else about it including its apparent type, gender, or age. Creatures with a reason to suspect deception may make a Will saving throw to realize that the corpse was altered. If you chose to make the corpse look like a specific individual anyone who knows that individual can make a Will save to realize that the corpse is not actually that person. However, if a creature fails its Will save by 5 or less they believe the corpse is that of someone who closely resembled the person they knew rather than a deliberate fake. This spell merely changes the appearance of the corpse. Any spell or effect that targets the corpse (such as speak with dead or",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Seamantle", school: "Conjuration (Creation)", levels: "arcanist 8, druid 8, sorcerer 8, wizard 8",
                          castingTime: "1 standard action", components: "V, S, M (a cup of water)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "You sheathe yourself within a churning column of pure elemental water up to 30 feet high that fills your space.",
                          desc: "You sheathe yourself within a churning column of pure elemental water up to 30 feet high that fills your space. You gain a swim speed equal to your land speed and can see, hear, and breathe normally within the seamantle , but attacks against you are treated as if you were under the surface of the water. You gain improved cover (+8 cover bonus to AC, +4 bonus on Reflex saves) against foes that do not have",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Seek Thoughts", school: "Divination", levels: "alchemist 3, arcanist 3, bard 3, inquisitor 3, investigator 3, medium 2, mesmerist 3, occultist 3, psychic 2, skald 3, sorcerer 3, spiritualist 3, summoner 3, summoner (unchained) 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a handful of copper coins)",
                          range: "40 ft.", area: "40-ft.-radius emanation centered on you", targets: "",
                          duration: "concentration, up to 1 minute/level",
                          savingThrow: "Will negates;", sr: false,
                          summary: "Similar to detect thoughts ,",
                          desc: "Similar to detect thoughts ,",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Severed Fate", school: "Enchantment", levels: "cleric 3, oracle 3, warpriest 3, witch 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "10 minutes/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You curse the target, preventing it from drawing upon the powers of destiny. The target is shaken and cannot use hero points for the duration of the spell. This effect can be removed by dispel magic ,",
                          desc: "You curse the target, preventing it from drawing upon the powers of destiny. The target is shaken and cannot use hero points for the duration of the spell. This effect can be removed by dispel magic ,",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Shadow Projection", school: "Necromancy", levels: "arcanist 4, sorcerer 4, wizard 4",
                          castingTime: "1 minute", components: "S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 hour/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "With this spell, you infuse your life force and psyche into your shadow, giving it independent life and movement as if it were an undead shadow (see Pathfinder RPG Bestiary 245).",
                          desc: "With this spell, you infuse your life force and psyche into your shadow, giving it independent life and movement as if it were an undead shadow (see Pathfinder RPG Bestiary 245). Your physical body lies comatose while you are projecting your shadow, and your body has no shadow or reflection while the spell is in effect. While projecting your shadow, you gain a shadow’s darkvision, defensive abilities, fly speed, racial stealth modifier, and strength damage attack. You do not gain the creature’s",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Share Language", school: "Divination", levels: "arcanist 2, bard 1, cleric 2, druid 2, hunter 2, medium 1, mesmerist 1, occultist 2, oracle 2, psychic 1, skald 1, sorcerer 2, warpriest 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a page from a dictionary)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "24 hours",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You can share your facility for one particular language with another creature.",
                          desc: "You can share your facility for one particular language with another creature. For 24 hours the target can read, understand, and communicate to the best of its ability in any one language which you already know. For every 5 levels you possess, you can grant the use of another language you know, to a maximum of 5 languages at 20th level. The target must have the physical capacity to articulate sounds, make gestures, or engage in whatever other method speakers of the language use to communicate with each other in order to actually converse. If the target lacks the mental capacity to grasp an actual language it still gains enough knowledge to respond to and carry out even extremely complex commands or suggestions coached in the language (whether written or spoken). However, since this spell does not endow the target with greater reasoning capacity, merely a temporarily enhanced vocabulary, the person offering up instructions to non-sentient creatures must take care to remove any ambiguity or guesswork. Similarly, this spell does not affect the basic nature of the target, or its disposition toward you or anyone else, so convincing it to actually carry out these instructions could require negotiation, threats, or outright bribery. Compel Tongue",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Share Language, Communal", school: "Divination", levels: "arcanist 2, bard 1, cleric 2, druid 2, hunter 2, medium 1, mesmerist 1, occultist 2, oracle 2, psychic 1, skald 1, sorcerer 2, warpriest 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a page from a dictionary)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "24 hours",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions like share language , except you divide the duration in 1-hour increments among the creatures touched.",
                          desc: "This spell functions like share language , except you divide the duration in 1-hour increments among the creatures touched.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Share Senses", school: "Divination (Scrying)", levels: "arcanist 4, medium 3, psychic 3, sorcerer 4, witch 3, wizard 4",
                          castingTime: "1 full round", components: "V, S, M (a hair, scale, or feather from your familiar)",
                          range: "long (400 ft. + 40 ft./level)", area: "", targets: "your familiar",
                          duration: "1 minute/level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "Spending a moment in meditation and conjuring an image of the creature to mind, you reshape your link with your familiar, causing it to functions like a scrying sensor.",
                          desc: "Spending a moment in meditation and conjuring an image of the creature to mind, you reshape your link with your familiar, causing it to functions like a scrying sensor. Upon casting this spell you can hear, see, or smell (any one, your choice) what your familiar is experiencing. You gain the benefits of any nonmagical special abilities your familiar has tied to the chosen sense (such as low-light vision or scent), but use your own Perception skill. You don’t need line of sight or line of effect to your familiar, but you must have an active empathic link. You may change the sense you are sharing as a standard action. Unlike other scrying spells, share senses does not allow magically or supernaturally enhanced senses to work through it, and you are unable to see in magical or natural darkness unless your familiar possesses the ability to see in such conditions. The sensory link with your familiar can be detected as though it were a scrying sensor.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Shared Wrath", school: "Enchantment (Compulsion)", levels: "inquisitor 1",
                          castingTime: "1 standard action", components: "V, S, M (a thorny vine)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions as wrath , except that you grant multiple creatures the bonuses against your designated foe. All subjects of",
                          desc: "This spell functions as wrath , except that you grant multiple creatures the bonuses against your designated foe. All subjects of",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Shifting Sand", school: "Transmutation", levels: "arcanist 3, druid 3, hunter 3, redmantisassassin 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a handful of sand)",
                          range: "medium (100 ft. + 10 ft./level)", area: "20-ft. spread", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "Reflex negates, see text;", sr: false,
                          summary: "You cause an earthen or sandy surface to shift and churn within the area. The shifting sand obliterates tracks and is considered difficult terrain.",
                          desc: "You cause an earthen or sandy surface to shift and churn within the area. The shifting sand obliterates tracks and is considered difficult terrain. Acrobatics checks in the area take a penalty equal to your caster level (maximum +10). Creatures entering or beginning their turn in the",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sift", school: "Divination", levels: "bard 0, inquisitor 0, medium 0, occultist 0, psychic 0, skald 0",
                          castingTime: "1 standard action", components: "V, S",
                          range: "30 ft.", area: "one 10-ft. cube", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "You examine an area at range as if you were searching for fine details with the Perception skill. Make a Perception check with a –5 penalty, modified as normal for conditions.",
                          desc: "You examine an area at range as if you were searching for fine details with the Perception skill. Make a Perception check with a –5 penalty, modified as normal for conditions. No penalty is applied for distance. Apply the result against the DC for any hidden features, such as secret doors, traps, or hidden treasure. You must be able to see the area you are attempting to search, and you only find details that can be perceived with sight or touch. Sift detects only objects and features, not actual creatures.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sirocco", school: "Evocation", levels: "arcanist 6, druid 6, hunter 6, magus 6, occultist 6, sorcerer 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S, M/DF (handful of fine sand cast into the air)",
                          range: "medium (100 ft. + 10 ft./level)", area: "cylinder (20-ft. radius, 60 ft. high)", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "Fortitude partial, see text;", sr: true,
                          summary: "A blast of furnace-hot wind blasts downward, inflicting 4d6 fire damage +1 point per caster level to all creatures in the area and knocking them prone.",
                          desc: "A blast of furnace-hot wind blasts downward, inflicting 4d6 fire damage +1 point per caster level to all creatures in the area and knocking them prone. A successful Fortitude save halves the fire damage and negates being knocked prone. Flying creatures forced into the ground by the powerful downdraft take damage as if they fell unless they make a DC 15 Fly check, in which case they remain at their original altitude. Any creature that takes damage from a sirocco becomes fatigued (or exhausted, if already fatigued, such as from a previous round of exposure to a sirocco spell). Creatures with the water subtype take a –4 penalty on all saving throws against this spell and take double normal damage.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sleepwalk", school: "Enchantment (Compulsion)", levels: "inquisitor 4, mesmerist 4, psychic 4, witch 4",
                          castingTime: "1 round", components: "V, S, M (a sprig of belladonna worth 100 gp)",
                          range: "touch", area: "", targets: "unconscious creature touched",
                          duration: "1 hour/level (D)",
                          savingThrow: "Will negates, see text;", sr: true,
                          summary: "You compel an unconscious or sleeping creature to rise and move in a half-awake state. The target creature staggers about if led or guided, but remains helpless for all other purposes.",
                          desc: "You compel an unconscious or sleeping creature to rise and move in a half-awake state. The target creature staggers about if led or guided, but remains helpless for all other purposes. The subject moves at half speed and is limited to a single move action each round. It is not capable of moving at a higher rate of speed or taking actions other than movement except by magical assistance, and automatically fails any Dexterity- or Strength-based skill checks. If the creature takes any damage while sleepwalking it must make a new saving throw or the spell ends and the creature awakes (if it has more than 0 hit points). When the spell ends or is dismissed, the target remains unconscious and must be awoken normally. While",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Slipstream", school: "Conjuration (Creation)", levels: "arcanist 2, bloodrager 2, druid 2, hunter 2, ranger 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (a few drops of oil and water)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 minutes/level (D)",
                          savingThrow: "Reflex negates (harmless);", sr: false,
                          summary: "You create a low-cresting wave of water that carries the target along the surface of water or the ground. When moving across level ground, the target’s speed increases by 10 feet.",
                          desc: "You create a low-cresting wave of water that carries the target along the surface of water or the ground. When moving across level ground, the target’s speed increases by 10 feet. If going downhill, speed increases by 20 feet instead, but slipstream provides no movement bonus when going uphill. While swimming, the",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Snake Staff", school: "Transmutation", levels: "cleric 5, druid 5, hunter 5, oracle 5, shaman 6, warpriest 5",
                          castingTime: "1 standard action", components: "V, S, M (a knife suitable for whittling)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "1 or more pieces of wood, no two of which can be more than 30 ft. apart",
                          duration: "1 round/level",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "With a long hissing whisper, you transform ordinary pieces of wood into various sorts of snakes that immediately attack your foes.",
                          desc: "With a long hissing whisper, you transform ordinary pieces of wood into various sorts of snakes that immediately attack your foes. As long as the snakes remain within sight, you can direct their actions telepathically as a free action. You can only apply this spell to wooden objects not in a creature’s possession or not part of a larger structure or plant. Each time you cast this spell you can create a number of snakes equal to your caster level. More powerful snakes take up more than one of your available total, as noted below. See Snake statistics and advanced and giant simple templates. Venomous Snake : A stick or piece of firewood. Counts as 1 snake.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Solid Note", school: "Conjuration (Creation)", levels: "bard 1, skald 1",
                          castingTime: "1 standard action", components: "V",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one solidified musical note", targets: "",
                          duration: "concentration + 1 round/level",
                          savingThrow: "none;", sr: false,
                          summary: "You give temporary physical form to a single musical note and can hang it, suspended, wherever you wish within range, allowing you to use it as hook, pulley, door blocker, or anything else your…",
                          desc: "You give temporary physical form to a single musical note and can hang it, suspended, wherever you wish within range, allowing you to use it as hook, pulley, door blocker, or anything else your imagination desires. The exact appearance of the solid note depends on your melody. You can make it spiked or smooth, simple or convoluted, and with any color pattern you wish, however, it always has a size approximately equal to that of your outstretched hand. Once created, the",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Spark", school: "Evocation", levels: "arcanist 0, bard 0, cleric 0, druid 0, hunter 0, magus 0, occultist 0, oracle 0, skald 0, sorcerer 0, warpriest 0, witch 0, wizard 0",
                          castingTime: "1 standard action", components: "V or S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one Fine object",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates (object);", sr: true,
                          summary: "You can make an unattended Fine flammable object catch on fire.",
                          desc: "You can make an unattended Fine flammable object catch on fire. This works as if you were using flint and steel except that you can use spark in any sort of weather and it takes much less time to actually ignite an object.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Spiked Pit", school: "Conjuration (Creation)", levels: "arcanist 2, sorcerer 2, summoner 2, summoner (unchained) 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, F (miniature shovel costing 10 gp)",
                          range: "medium (100 ft. + 10 ft./level)", area: "10-ft.-by-10-ft. hole, 10 ft. deep/2 levels", targets: "",
                          duration: "1 round + 1 round/level",
                          savingThrow: "Reflex negates;", sr: false,
                          summary: "This spell functions as create pit , except that the pit is lined with wickedly sharp spikes along its bottom and walls and has a maximum depth of 50 feet.",
                          desc: "This spell functions as create pit , except that the pit is lined with wickedly sharp spikes along its bottom and walls and has a maximum depth of 50 feet. Creatures who fall into the pit take falling damage as normal, plus 2d6 points of piercing damage from the spikes. Any creature or object coming into contact with the spikes along the walls, such as a creature trying to climb out, or rope or other typical aids to climbing, takes 1d6 points of piercing damage each round they are in contact with the walls. For those willing to accept the damage incurred while climbing, the pit’s walls have a Climb DC of 20.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Spiritual Ally", school: "Evocation", levels: "cleric 4, medium 4, oracle 4, spiritualist 4, warpriest 4",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "medium (100 ft. + 10 ft./level)", area: "spiritual ally of force", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: true,
                          summary: "An ally made of pure force appears in a single 5-foot square within range. The ally takes the form of a servant of your god.",
                          desc: "An ally made of pure force appears in a single 5-foot square within range. The ally takes the form of a servant of your god. The spiritual ally occupies its space, though you and your allies can move through it, since it is your ally. The spiritual ally carries a single weapon, one favored by your deity (as for",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Spite", school: "Abjuration", levels: "mesmerist 3, witch 4",
                          castingTime: "1 round", components: "V, S, M (rare inks worth 250 gp)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 hour/level (D) or until discharged",
                          savingThrow: "None", sr: false,
                          summary: "Choose a single touch range spell of 4th level or lower with a casting time of 1 standard action or less.",
                          desc: "Choose a single touch range spell of 4th level or lower with a casting time of 1 standard action or less. As part of the action of casting spite , you cast the associated spell and bind it into a defensive ward in the form of a tattoo, birthmark, or wart somewhere upon your body. The next time you are hit by a melee attack or a combat maneuver is used successfully against you, the stored spell is triggered against your foe. You do not need to succeed on a touch attack to affect the target, but in all other respects the spell is treated as though you had cast it normally. If the attacking creature is not a valid target for the spell, the stored spell is lost with no effect.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Stay the Hand", school: "Enchantment (Compulsion)", levels: "paladin 4",
                          castingTime: "1 immediate action", components: "V, S, DF",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "1 round/level and special; see text",
                          savingThrow: "Will partial;", sr: true,
                          summary: "You cause a creature’s arm to waver and prevent it from striking another creature. You can cast this spell when the target is about to make a melee attack against another creature.",
                          desc: "You cause a creature’s arm to waver and prevent it from striking another creature. You can cast this spell when the target is about to make a melee attack against another creature. On a failed saving throw, the target does not follow through with its attack, and its entire action is wasted for the round. On a successful saving throw, the target can make its attack, forcing its strike though the compulsion but losing both accuracy and power, taking a –5 penalty on its attack and damage rolls. Whether or not the target makes its initial save or not, it is subject to a –2 penalty on attack and damage rolls against the creature it originally targeted for the duration of the spell.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Stone Call", school: "Conjuration (Creation)", levels: "arcanist 2, bloodrager 2, druid 2, hunter 2, magus 2, ranger 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "medium (100 ft. + 10 ft./level)", area: "cylinder (40-ft. radius, 20 ft. high)", targets: "",
                          duration: "1 round/level",
                          savingThrow: "none;", sr: false,
                          summary: "A rain of dirt, gravel, and small pebbles fills the area, dealing 2d6 points of bludgeoning damage to every creature in the area. This damage only occurs once, when the spell is cast.",
                          desc: "A rain of dirt, gravel, and small pebbles fills the area, dealing 2d6 points of bludgeoning damage to every creature in the area. This damage only occurs once, when the spell is cast. For the remaining duration of the spell, this debris covers the ground, making the entire area difficult terrain. At the end of the duration, the rocks disappear, leaving no aftereffects (other than the damage dealt).",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Stone Fist", school: "Transmutation", levels: "alchemist 1, arcanist 1, bloodrager 1, druid 1, hunter 1, investigator 1, magus 1, redmantisassassin 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M (a chip of granite)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This spell transforms your hands into living stone. While this spell is in effect, your unarmed strikes do not provoke attacks of opportunity and deal 1d6 points of lethal bludgeoning damage (1d4 if…",
                          desc: "This spell transforms your hands into living stone. While this spell is in effect, your unarmed strikes do not provoke attacks of opportunity and deal 1d6 points of lethal bludgeoning damage (1d4 if you are Small). In addition, your unarmed strikes ignore the hardness of any object with a hardness less than 8. Stone to flesh immediately dispels",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Stormbolts", school: "Evocation", levels: "arcanist 8, cleric 8, druid 8, oracle 8, shaman 8, sorcerer 8, witch 8, wizard 8",
                          castingTime: "1 standard action", components: "V, S, M/DF (a copper rod)",
                          range: "30 ft.", area: "a 30-ft.-radius spread, centered on you", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Fortitude partial;", sr: true,
                          summary: "When you cast this spell, lightning spills forth from your body in all directions. The bolts do not harm natural vegetation or creatures in the area you wish to exclude from damage.",
                          desc: "When you cast this spell, lightning spills forth from your body in all directions. The bolts do not harm natural vegetation or creatures in the area you wish to exclude from damage. Any other creatures within the area take 1d8 points of electricity damage per caster level (maximum 20d8) and are stunned for 1 round. A successful saving throw halves the damage and negates the stun effect.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Strong Jaw", school: "Transmutation", levels: "druid 4, hunter 3, ranger 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 minute/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "Laying a hand upon an allied creature’s jaw, claws, tentacles, or other natural weapons, you enhance the power of that creature’s natural attacks.",
                          desc: "Laying a hand upon an allied creature’s jaw, claws, tentacles, or other natural weapons, you enhance the power of that creature’s natural attacks. Each natural attack that creature makes deals damage as if the creature were two sizes larger than it actually is. If the creature is already Gargantuan or Colossal-sized, double the amount of damage dealt by each of its natural attacks instead. This spell does not actually change the creature’s size; all of its statistics except the amount of damage dealt by its natural attacks remain unchanged.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Stumble Gap", school: "Conjuration (Creation)", levels: "arcanist 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, F (miniature shovel costing 10 gp)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "see text", targets: "",
                          duration: "1 round + 1 round/level",
                          savingThrow: "Reflex partial;", sr: false,
                          summary: "You create a shallow extradimensional hole perfectly sized to trip anyone who steps within it. This hole occupies a single 5-foot square with a depth of six inches.",
                          desc: "You create a shallow extradimensional hole perfectly sized to trip anyone who steps within it. This hole occupies a single 5-foot square with a depth of six inches. Any creature occupying the square when you first create the hole, or who later steps into the square containing the hole, must make a Reflex saving throw to avoid falling prone in an adjacent square and taking 1d6 points of damage. A creature that makes its saving throw still stumbles ever so slightly and takes a –1 penalty on all rolls and checks for 1 round. The spell has no effect on creatures adjacent to the square containing the hole.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Stunning Finale", school: "Enchantment (Compulsion)", levels: "bard 5, skald 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "up to 3 creatures, no two of which can be more than 30 ft. apart",
                          duration: "1 round",
                          savingThrow: "Fortitude partial, see text;", sr: true,
                          summary: "You must have a bardic performance in effect to cast this spell. With a flourish, you immediately end your bardic performance, assaulting the senses of the targets with your finale.",
                          desc: "You must have a bardic performance in effect to cast this spell. With a flourish, you immediately end your bardic performance, assaulting the senses of the targets with your finale. Each target is stunned for 1 round. On a successful saving throw, a target is staggered for 1 round.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Suffocation", school: "Necromancy", levels: "arcanist 5, occultist 5, psychic 5, sorcerer 5, spiritualist 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (a vial containing a bit of the caster’s breath)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "3 rounds",
                          savingThrow: "Fortitude partial;", sr: true,
                          summary: "This spell extracts the air from the target’s lungs, causing swift suffocation.",
                          desc: "This spell extracts the air from the target’s lungs, causing swift suffocation. The target can attempt to resist this spell’s effects with a Fortitude save—if he succeeds, he is merely staggered for 1 round as he gasps for breath. If the target fails, he immediately begins to suffocate. On the target’s next turn, he falls unconscious and is reduced to 0 hit points. One round later, the target drops to –1 hit points and is dying. One round after that, the target dies. Each round, the target can delay that round’s effects from occurring by making a successful Fortitude save, but the spell effect continues for 3 rounds, and each time a target fails his Fortitude save, he moves one step further along the track to suffocation. This spell only affects living creatures that must breathe. It is impossible to defeat the effects of this spell by simply holding one’s breath—if the victim fails the initial saving throw, the air in his lungs is extracted. Suffocation, Mass",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Suffocation, Mass", school: "Necromancy", levels: "arcanist 5, occultist 5, psychic 5, sorcerer 5, spiritualist 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (a vial containing a bit of the caster’s breath)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "3 rounds",
                          savingThrow: "Fortitude partial;", sr: true,
                          summary: "This spell functions as suffocation except as noted above. Note that the duration of this spell is much longer, forcing those suffering from the effect to make far more Fortitude saves to stave off…",
                          desc: "This spell functions as suffocation except as noted above. Note that the duration of this spell is much longer, forcing those suffering from the effect to make far more Fortitude saves to stave off eventual suffocation.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Summon Eidolon", school: "Conjuration (Summoning)", levels: "summoner 2, summoner (unchained) 2",
                          castingTime: "1 round", components: "V, S, M (a silver coin)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one eidolon",
                          duration: "1 minute/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You open a rift between dimensions that summons your eidolon. Treat this as if you had summoned your eidolon normally, except that it only remains with you for the duration of this spell.",
                          desc: "You open a rift between dimensions that summons your eidolon. Treat this as if you had summoned your eidolon normally, except that it only remains with you for the duration of this spell. While summoned in this way, your eidolon cannot touch any creature warded by protection from evil or a similar effect and your eidolon can be sent back to its home plane by",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Swarm Skin", school: "Transmutation", levels: "druid 6, hunter 6, witch 6",
                          castingTime: "1 standard action", components: "V, S, M/DF (a crushed insect hive)",
                          range: "personal", area: "", targets: "you",
                          duration: "see text",
                          savingThrow: "None", sr: false,
                          summary: "You convert all of your soft tissue into swarms of insects or other creatures and send them off to do your bidding, leaving nothing but your bones and gear behind.",
                          desc: "You convert all of your soft tissue into swarms of insects or other creatures and send them off to do your bidding, leaving nothing but your bones and gear behind. These swarms have all their normal qualities and abilities but also bear a tiny portion of your consciousness that allows you to perceive what they do and to control their actions. While in this form, you cannot use any of your own abilities or take any actions other than controlling the swarms. Each time you cast this spell you get a total allotment of levels equal to your caster level and any swarm you choose to create costs one or more of those levels. You can “spend” your allotment of levels to create any combination of swarms so long as their total does not exceed your caster level. Number of Levels",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Thorn Body", school: "Transmutation", levels: "alchemist 3, druid 4, hunter 4, investigator 3, shaman 4",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "This spell causes spines to grow from your exposed skin, damaging creatures that strike you.",
                          desc: "This spell causes spines to grow from your exposed skin, damaging creatures that strike you. Any creature striking you with a melee weapon, an unarmed strike, or a natural weapon takes 1d6 points of piercing damage +1 point per caster level (maximum +15). Creatures using melee weapons with reach are unaffected by this spell. Creatures that successfully grapple you take 2d6 points of piercing damage +1 point per caster level (maximum +15). In addition, your natural attacks and unarmed strikes deal an additional 1d6 points of piercing damage. Thorns created by this spell persist through any new physical shape or form you assume, such as via wildshape or any polymorph effect.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Threefold Aspect", school: "Transmutation", levels: "druid 5, hunter 5, witch 4",
                          castingTime: "1 standard action", components: "S, F (silver crescent worth 5 gp)",
                          range: "personal", area: "", targets: "you",
                          duration: "24 hours (D)",
                          savingThrow: "None", sr: false,
                          summary: "Threefold aspect allows you to shift your appearance between your natural age and three idealized age categories: young adult (youth/maiden), adulthood (father/mother), or elderly (elder/crone).",
                          desc: "Threefold aspect allows you to shift your appearance between your natural age and three idealized age categories: young adult (youth/maiden), adulthood (father/mother), or elderly (elder/crone). In each case, your appearance is your own at the appropriate age, rather than that of a new individual. You may change between these three aspects or your actual age as a standard action. As the young adult, you gain a +2 enhancement bonus to Dexterity and Constitution, but suffer a –2 penalty to Wisdom. In the adult aspect, you gain a +2 enhancement bonus to Wisdom and Intelligence, but take a –2 penalty to Dexterity. As the elderly aspect, you gain a +4 enhancement bonus to Wisdom and Intelligence, but take a –2 penalty to Strength and Dexterity. As enhancement bonuses, these stack with any bonuses or penalties you may have from your actual age (which are untyped bonuses)—the bonuses granted by this spell represent your idealized form in this threefold aspect rather than simply duplicating your ability scores at any one particular age.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Thundering Drums", school: "Evocation", levels: "bard 3, skald 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "15 ft.", area: "cone-shaped burst", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Fortitude partial;", sr: true,
                          summary: "You strike the ground in front of you, filling the area in front of you with the thunder of pounding drums.",
                          desc: "You strike the ground in front of you, filling the area in front of you with the thunder of pounding drums. Any creature in the area takes 1d8 points of sonic damage per caster level (maximum 5d8) and is knocked prone. A successful Fortitude save halves the damage and negates being knocked prone.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Timely Inspiration", school: "Divination", levels: "bard 1, skald 1",
                          castingTime: "1 immediate action", components: "V",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "A word of arcane-empowered inspiration can snatch victory from seeming defeat. Cast this spell when a creature fails an attack roll or skill check.",
                          desc: "A word of arcane-empowered inspiration can snatch victory from seeming defeat. Cast this spell when a creature fails an attack roll or skill check. The target gains a +1 competence bonus per five caster levels (maximum +3 bonus) on the attack roll or skill check retroactively. If the bonus is enough to make the failure a success, the roll succeeds.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Tireless Pursuers", school: "Transmutation", levels: "hunter 1, inquisitor 1, ranger 1",
                          castingTime: "1 standard action", components: "V, S, M (a hard biscuit)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 hour/level (D)",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "This spell functions as tireless pursuit , except as noted above.",
                          desc: "This spell functions as tireless pursuit , except as noted above.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Tireless Pursuit", school: "Transmutation", levels: "hunter 1, inquisitor 1, ranger 1",
                          castingTime: "1 standard action", components: "V, S, M (a hard biscuit)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 hour/level (D)",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "You harden your body against the stresses of long travel. You halve the damage caused by hustling and forced marching (see Pathfinder RPG Core Rulebook 171).",
                          desc: "You harden your body against the stresses of long travel. You halve the damage caused by hustling and forced marching (see Pathfinder RPG Core Rulebook 171). In addition, for the duration of the spell you ignore any fatigue caused by such travel. Once the spell ends, if you still have any nonlethal damage caused by the hustling or forced march, you become fatigued, or exhausted if already fatigued.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Touch of Gracelessness", school: "Transmutation", levels: "arcanist 1, bard 1, bloodrager 1, mesmerist 1, redmantisassassin 1, skald 1, sorcerer 1, spiritualist 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 round/level",
                          savingThrow: "Fortitude partial;", sr: true,
                          summary: "With a single touch, you reduce a creature to a fumbling clown. The target takes a penalty to its Dexterity equal to 1d6+1 per two caster levels (maximum 1d6+5).",
                          desc: "With a single touch, you reduce a creature to a fumbling clown. The target takes a penalty to its Dexterity equal to 1d6+1 per two caster levels (maximum 1d6+5). This penalty cannot drop the target’s Dexterity score below 1. In addition, if the subject moves more than half its speed, it falls prone. If the subject flies, its maneuverability is reduced by one step (perfect maneuverability becomes good, good becomes average, and so on). A successful Fortitude save halves the penalty to Dexterity and negates the possibility of falling prone or the reduction to fly maneuverabilities.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Touch of the Sea", school: "Transmutation", levels: "alchemist 1, arcanist 1, bloodrager 1, druid 1, hunter 1, investigator 1, redmantisassassin 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M (a fish scale)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 minute/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "You cause webs to grow between the target’s fingers and its feet to transform into flippers, granting a swim speed of 30 feet along with the standard +8 bonus on Swim checks and the ability to take…",
                          desc: "You cause webs to grow between the target’s fingers and its feet to transform into flippers, granting a swim speed of 30 feet along with the standard +8 bonus on Swim checks and the ability to take 10 even if distracted or endangered. You can also use the run action while swimming, provided you swim in a straight line. This transformation causes any boots or gloves the target is wearing to meld into its form (although magic items with a continuous effect continue to function). This spell does not grant the target any ability to breathe water.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Transmogrify", school: "Transmutation", levels: "summoner 4, summoner (unchained) 4",
                          castingTime: "1 hour", components: "V, S, M (a flask of quicksilver worth 1,000 gp)",
                          range: "touch", area: "", targets: "your eidolon",
                          duration: "instantaneous",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "Your eidolon’s form shifts and transforms. This spell allows you to change any of the eidolon’s evolutions by allocating its evolution pool on new evolutions.",
                          desc: "Your eidolon’s form shifts and transforms. This spell allows you to change any of the eidolon’s evolutions by allocating its evolution pool on new evolutions. If you have the aspect or greater aspect ability, this spell also allows you to change the evolution points spent to modify you, including removing or adding points as allowed by those abilities. Your eidolon cannot benefit from this spell more than once per day. This spell does not allow you to change your eidolon’s base form.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Transmute Potion to Poison", school: "Transmutation", levels: "alchemist 2, investigator 2",
                          castingTime: "1 standard action", components: "S",
                          range: "personal", area: "1 Dex damage;", targets: "you",
                          duration: "1 round then 1 minute/level; see text",
                          savingThrow: "None", sr: false,
                          summary: "This extract causes you to take on a pale, sickly pallor for 1 round. During this time, if you consume a potion, it has no effect.",
                          desc: "This extract causes you to take on a pale, sickly pallor for 1 round. During this time, if you consume a potion, it has no effect. Instead, your mouth fills with a vile poison that you can spit onto a weapon as a free action. If you do not spit out the poison in 1 round, it affects you instead. The effect of the poison depends on the level of spell contained in the potion consumed (see below). If the poison is not used within 1 minute per caster level it becomes inert. You can only create one dose of poison in this way per casting of this spell. Transmuted Poisons The following poisons are created through the",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Treasure Stitching", school: "Transmutation", levels: "arcanist 5, bard 4, cleric 5, occultist 4, oracle 5, skald 4, sorcerer 5, warpriest 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (a piece of embroidered cloth no larger than 10-ft. square worth 100 gp)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "all objects on cloth",
                          duration: "1 day/level (D)",
                          savingThrow: "Fortitude negates (object);", sr: true,
                          summary: "You can transform all objects placed on a cloth into an embroidered, two-dimensional representation, making it easy for you to store and transport the items.",
                          desc: "You can transform all objects placed on a cloth into an embroidered, two-dimensional representation, making it easy for you to store and transport the items. You can pile any amount or weight of objects on the cloth so long as the pile stays within the dimensions of the cloth (up to a 10-foot cube). When you cast the spell the entire pile disappears into the cloth, replaced by a highly accurate, sewn picture of the pile from whatever angle you wish. The cloth retains its normal weight and dimensions. You can restore the pile of objects at any time as a full-round action by unfurling the cloth and ordering the spell to end, consuming the cloth. Anyone else wishing to restore the objects must successfully dispel your spell. If the cloth is destroyed or significantly damaged, all objects held within the cloth are lost. This spell cannot affect artifacts or other sorts of similarly unique objects.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("True Form", school: "Abjuration", levels: "arcanist 4, druid 4, hunter 4, occultist 4, psychic 4, sorcerer 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "up to one creature/3 levels, no two of which can be more than 30 ft. apart",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "True form removes any polymorph effect from a target creature, returning it to its true form, even against its will.",
                          desc: "True form removes any polymorph effect from a target creature, returning it to its true form, even against its will. Against creatures affected by polymorph spell effects (such as baleful polymorph or giant form), you must make a caster level check (1d20 + caster level, maximum +15) against a DC of 11 + caster level of the effect. Success means that the polymorph effect immediately ends. A creature with the supernatural ability to change shape (such as a lycanthrope) must make a Will saving throw or immediately revert to its true form. If it fails this first saving throw, the creature can attempt another Will saving throw to overcome the spell as a full-round action that does not provoke attacks of opportunity. If this save succeeds, the spell ends and the creature is capable of changing shape once again. If the second save fails, the creature is locked in its true form for the duration of the spell, preventing any further polymorph effects from changing its shape.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Tsunami", school: "Conjuration (Creation)", levels: "arcanist 9, druid 9, shaman 9, sorcerer 9, wizard 9",
                          castingTime: "1 standard action", components: "V, S",
                          range: "long (400 ft. + 40 ft./level)", area: "10-ft.-deep wave 10 ft. wide/level and 2 ft. tall/level", targets: "",
                          duration: "5 rounds",
                          savingThrow: "see text;", sr: false,
                          summary: "You create a massive wave of water that then moves in a straight line across water or land—you select the direction the wave travels (which must be perpendicular to its width), but once set in…",
                          desc: "You create a massive wave of water that then moves in a straight line across water or land—you select the direction the wave travels (which must be perpendicular to its width), but once set in motion, the wave cannot change course. Over the surface of open water, the wave travels at a speed of 60 feet per round—on land or underwater, the wave travels at a speed of 30 feet per round. Creatures struck by a tsunami take 8d6 points of bludgeoning damage (a Fortitude save halves this damage). In addition, the tsunami makes a special CMB check against any creature it strikes—the wave’s CMB is equal to your caster level + your relevant spellcasting ability score modifier (whichever is highest) + 8 (for the wave’s size). If this CMB check defeats a creature’s CMD, the creature is knocked prone and carried along by the wave. A creature carried along by a tsunami can attempt to escape the wave on its turn as a standard action by making a CMB or Swim check opposed by the wave’s CMB check—if a creature fails to escape, it takes another 6d6 points of bludgeoning damage (Fortitude save for half) and continues being carried along by the wave. Objects struck by a tsunami are swept up if they are Huge or smaller and are carried along by the wave, deposited in a pile at the end of the wave’s journey. Gargantuan or larger objects, as well as structures or objects firmly attached to the ground, take 8d6 points of bludgeoning damage when a tsunami passes through its space—if this is enough to destroy the object or structure, the remains are carried along by the wave. Hardness does not reduce this damage, nor is it halved as damage dealt to objects normally is.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Twilight Knife", school: "Evocation", levels: "arcanist 3, bloodrager 3, occultist 3, psychic 3, sorcerer 3, spiritualist 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, F (a small knife)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "floating knife of force", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: true,
                          summary: "You create a darkly sinister floating knife that attacks the same creature as you each round.",
                          desc: "You create a darkly sinister floating knife that attacks the same creature as you each round. If you choose not to attack a creature, or you make an attack that affects multiple opponents, the knife makes no attack during that round. The knife uses your base attack bonus modified by either your Intelligence or Charisma bonus (whichever is higher) when making this attack. Unless you specifically will it to do otherwise, or it proves impossible to do so, the knife always maneuvers itself so that it can flank your opponent before making the attack. The knife deals 1d4 points of force damage on a successful hit and has the same threat range and critical multipliers as a normal dagger. In addition, if the target is denied a Dexterity bonus to AC or the knife flanks the target, the knife can make sneak attacks as a rogue, inflicting an extra 1d6 points of force damage per four caster levels on a successful attack. A twilight knife cannot be attacked or harmed by physical attacks, but",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Twin Form", school: "Transmutation", levels: "alchemist 6, investigator 6",
                          castingTime: "1 standard action", components: "V, S, M (a blend of soil and the caster’s blood)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level or until discharged (D)",
                          savingThrow: "None", sr: false,
                          summary: "This extract splits a perfect double of yourself from your body, dressed and equipped exactly as you are.",
                          desc: "This extract splits a perfect double of yourself from your body, dressed and equipped exactly as you are. You are able to shift your consciousness from one body to the other once each round as a free action. This shift takes place either immediately before your turn or immediately after it, but not during the round. You may act normally in the body you inhabit. Your other self is treated as though dazed, except it may take a single move action each round during your turn. Your twin cannot speak while you are in your other body, and cannot flank, make attacks of opportunity, or otherwise threaten enemies. Both you and your twin have the same statistics and start with the number of hit points you had when you ingested the extract. Once you have split, these hit points are tracked separately. Any spells, extracts, or magical effects (such as from potions) that were active when you ingested the extract are active for both you and your twin. If any such effects expire, are dispelled, dismissed, or otherwise used or ended, they end for both of you. Extracts or spells cast after you split affect you and your twin as though you were two separate targets. Your equipment is linked between your two selves, and if an item on one is consumed or destroyed, its duplicate is used up or destroyed as well. The body you do not inhabit crumbles into dust when the extract’s duration expires or is dismissed. If the body you inhabit is destroyed, you immediately shift to your surviving self and the extract immediately ends. The body you left behind crumbles into dust, and you are stunned until the start of your next turn. If the body you do not inhabit is destroyed, the extract also ends immediately, but you suffer no ill effects. You have no special ability to sense what your second body is experiencing, though you immediately know if it has been destroyed. You may switch between bodies at any distance on the same plane. If your bodies cross into separate planes (including through the use of",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await seedSpellsF()
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