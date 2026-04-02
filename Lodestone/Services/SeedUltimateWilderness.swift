import Foundation

// MARK: - SpellEntry factory (Ultimate Wilderness)
private extension SpellEntry {
    static func make(
        _ title: String,
        school: String,
        levels: String,
        castingTime: String,
        components: String,
        range: String,
        duration: String,
        savingThrow: String,
        sr: Bool,
        summary: String,
        desc: String,
        source: String = "Core Rulebook",
        isPremium: Bool = false
    ) -> SpellEntry {
        SpellEntry(
            id: seededUUID(title + source),
            title: title,
            summary: summary,
            isPremium: isPremium,
            school: school,
            levels: levels,
            castingTime: castingTime,
            components: components,
            range: range,
            duration: duration,
            savingThrow: savingThrow,
            spellResistance: sr,
            description: desc,
            source: source
        )
    }
}

// MARK: - FeatEntry factory (Ultimate Wilderness)
private extension FeatEntry {
    static func make(
        _ title: String,
        featType: String,
        prerequisites: String,
        benefit: String,
        normal: String = "",
        special: String = "",
        summary: String,
        source: String = "Core Rulebook",
        isPremium: Bool = false
    ) -> FeatEntry {
        FeatEntry(
            id: seededUUID(title + source),
            title: title,
            summary: summary,
            isPremium: isPremium,
            prerequisites: prerequisites,
            benefit: benefit,
            normal: normal,
            special: special,
            featType: featType,
            source: source
        )
    }
}

// MARK: - ClassEntry factory (Ultimate Wilderness)
private extension ClassEntry {
    static func make(
        _ title: String,
        hitDie: String,
        skillRanks: Int,
        bab: String,
        fort: String,
        ref: String,
        will: String,
        classSkills: [String],
        summary: String,
        desc: String,
        source: String = "Core Rulebook",
        isPremium: Bool = false
    ) -> ClassEntry {
        ClassEntry(
            id: seededUUID(title + source),
            title: title,
            summary: summary,
            isPremium: isPremium,
            hitDie: hitDie,
            skillRanks: skillRanks,
            baseAttackBonus: bab,
            fortSave: fort,
            refSave: ref,
            willSave: will,
            classSkills: classSkills,
            description: desc,
            source: source
        )
    }
}

// MARK: - RuleEntry factory (Ultimate Wilderness)
private extension RuleEntry {
    static func make(
        _ title: String,
        category: String,
        body: String,
        summary: String,
        source: String = "Ultimate Wilderness",
        isPremium: Bool = true
    ) -> RuleEntry {
        RuleEntry(
            id: seededUUID(title + source),
            title: title,
            summary: summary,
            isPremium: isPremium,
            category: category,
            body: body,
            source: source
        )
    }
}

extension SeedDataBuilder {
    func seedUltimateWilderness() async throws {
        try await seedUWClasses()
        try await seedUWFeats()
        try await seedUWSpells()
        try await seedUWRules()
    }

    private func seedUWClasses() async throws {
        let classes: [ClassEntry] = [

            // MARK: - Ultimate Wilderness Classes

            .make("Shifter",
                  hitDie: "d10",
                  skillRanks: 4,
                  bab: "Medium",
                  fort: "Poor",
                  ref: "Poor",
                  will: "Poor",
                  classSkills: [
                      "Acrobatics", "Climb", "Fly", "Handle Animal",
                      "Knowledge (nature)", "Perception", "Ride",
                      "Stealth", "Survival", "Swim"
                  ],
                  summary: "A primal shapeshifter who takes on aspects and full forms of animals.",
                  desc: """
                  The shifter is a primal warrior of the wild, channeling the raw power of nature through physical transformation. At low levels, shifters manifest minor animal aspects — retractable claws, predatory senses, or enhanced speed — that augment their combat abilities without fully abandoning humanoid form. As they advance, they learn to embrace fuller wild shapes drawn from their chosen aspect forms.

                  The shifter's signature class features center on Shifter's Claws, natural weapons that deal 1d6 damage (for medium shifters) and are treated as magic for the purposes of overcoming damage reduction. Defensive Instinct grants an uncanny dodge-like protection, while Chimeric Form, unlocked at 9th level, allows the shifter to combine two aspects simultaneously into a powerful hybrid shape.

                  Unlike the druid, the shifter cannot cast spells — they trade arcane and divine versatility for martial superiority in wild form. Their progression culminates in a signature major form reflecting their animal bond, granting powerful natural attacks, damage reduction, and extraordinary movement modes that rival the effectiveness of full casters in physical confrontations.
                  """,
                  source: "Ultimate Wilderness",
                  isPremium: true),
        ]

        for cls in classes {
            try await db.insertClass(cls)
        }
    }

    private func seedUWFeats() async throws {
        let feats: [FeatEntry] = [

            // MARK: - Ultimate Wilderness Feats (all isPremium: true)

            .make("Aspect of the Beast",
                  featType: "General",
                  prerequisites: "Wild Shape",
                  benefit: "Gain one of four animal aspects (claws dealing 1d4 damage, scent, low-light vision, or a swim speed of 30 ft.) that persists at all times, even outside of wild shape.",
                  summary: "One persistent animal aspect (claws, scent, low-light vision, or swim speed) active at all times.",
                  source: "Ultimate Wilderness",
                  isPremium: true),

            .make("Natural Spell",
                  featType: "General",
                  prerequisites: "Wis 13, Wild Shape",
                  benefit: "You can complete the verbal and somatic components of spells while in a wild shape form. You substitute various natural sounds and gestures for the normal verbal and somatic components of a spell.",
                  summary: "Cast spells while in wild shape without verbal or somatic component penalties.",
                  source: "Ultimate Wilderness",
                  isPremium: true),

            .make("Planar Wild Shape",
                  featType: "General",
                  prerequisites: "Wild Shape 6th, Knowledge (planes) 5 ranks",
                  benefit: "When you use wild shape to take the form of an animal, you can expend an additional daily use of wild shape to give that form the celestial or fiendish template. The resulting outsider gains the associated resistances, spell resistance, and smite ability.",
                  summary: "Wild shape into animals with celestial or fiendish template by expending an extra use.",
                  source: "Ultimate Wilderness",
                  isPremium: true),

            .make("Shapeshifter Foil",
                  featType: "Combat",
                  prerequisites: "Wis 13",
                  benefit: "You gain a +2 bonus on CMB and CMD checks against creatures that are using any form of polymorph effect. Additionally, the saving throw DCs of your spells that target such creatures increase by 2.",
                  summary: "+2 CMB/CMD against polymorphed creatures; +2 spell save DC against them.",
                  source: "Ultimate Wilderness",
                  isPremium: true),

            .make("Totem Beast",
                  featType: "General",
                  prerequisites: "Wild Shape",
                  benefit: "You gain a constant animal aspect drawn from your most powerful wild shape form. This aspect stacks with any aspect granted by the Aspect of the Beast feat, allowing you to benefit from two aspects simultaneously.",
                  summary: "Gain a constant aspect from your most powerful wild shape form; stacks with Aspect of the Beast.",
                  source: "Ultimate Wilderness",
                  isPremium: true),

            .make("Verdant Spell",
                  featType: "Metamagic",
                  prerequisites: "",
                  benefit: "Plant creatures targeted by a verdant spell treat the spell as though its caster level were 1 lower for purposes of saving throw DCs (making them more susceptible). A verdant spell uses a spell slot one level higher than the spell's actual level.",
                  summary: "Plant targets treat caster level as 1 lower for saves; +1 spell slot.",
                  source: "Ultimate Wilderness",
                  isPremium: true),

            .make("Wild Speech",
                  featType: "General",
                  prerequisites: "Wild Shape, Linguistics 1 rank",
                  benefit: "You can speak normally while in any wild shape form, retaining the ability to speak in any language you know. In addition, you can communicate with animals as per the speak with animals spell at will while in wild shape.",
                  summary: "Speak normally in wild shape; communicate with animals at will while shifted.",
                  source: "Ultimate Wilderness",
                  isPremium: true),

            .make("Woodland Stride (Improved)",
                  featType: "General",
                  prerequisites: "Woodland Stride class feature",
                  benefit: "You can move through terrain magically manipulated to impede movement — including the areas of entangle, spike growth, spike stones, and similar spells — at your normal speed without taking damage or suffering other impairment.",
                  summary: "Move through magically manipulated terrain (entangle, spike growth) at full speed without penalty.",
                  source: "Ultimate Wilderness",
                  isPremium: true),
        ]

        for feat in feats {
            try await db.insertFeat(feat)
        }
    }

    private func seedUWSpells() async throws {
        let spells: [SpellEntry] = [

            // MARK: - Ultimate Wilderness Spells (all isPremium: true)

            .make("Absorb Toxicity",
                  school: "Transmutation",
                  levels: "druid 3, shaman 3",
                  castingTime: "1 standard action",
                  components: "V, S, DF",
                  range: "Touch",
                  duration: "Until discharged",
                  savingThrow: "No (harmless); Yes (see text)",
                  sr: false,
                  summary: "Absorb one poison or disease into yourself; become a carrier and discharge on touch.",
                  desc: "You absorb a single poison or disease from a touched creature or object into your own body. While carrying the absorbed affliction, you are not affected by it yourself. You can discharge the absorbed poison or disease to another creature with a successful touch attack; the target must then save against it at the original DC. The spell ends once the affliction is discharged or the duration expires.",
                  source: "Ultimate Wilderness",
                  isPremium: true),

            .make("Animal Aspect",
                  school: "Transmutation",
                  levels: "druid 2, ranger 2",
                  castingTime: "1 standard action",
                  components: "V, S",
                  range: "Personal",
                  duration: "1 min./level",
                  savingThrow: "No",
                  sr: false,
                  summary: "Gain one animal aspect (climb speed, swim speed, scent, low-light vision, or grab).",
                  desc: "You take on an aspect of a natural animal. Choose one of the following aspects: climb speed 20 ft., swim speed 30 ft., scent, low-light vision, or grab (on natural attacks). You gain the benefits of that aspect for the duration. Multiple castings of this spell stack if different aspects are chosen each time.",
                  source: "Ultimate Wilderness",
                  isPremium: true),

            .make("Commune with Birds",
                  school: "Divination",
                  levels: "druid 1, ranger 1, shaman 1",
                  castingTime: "10 minutes",
                  components: "V, S, DF",
                  range: "Personal",
                  duration: "10 min./level",
                  savingThrow: "No",
                  sr: false,
                  summary: "Ask a flock of birds questions about the local area based on their observations.",
                  desc: "You attune yourself to the local bird population, gaining the ability to ask them questions about the surrounding area. The birds answer based on what they have directly observed within their territory (typically a 1-mile radius), and their responses are honest but limited by animal intellect — they can report movement, fires, and large creatures, but not strategic details. The spell functions even if no birds are currently present, as long as some passed through in the past hour.",
                  source: "Ultimate Wilderness",
                  isPremium: true),

            .make("Echolocation",
                  school: "Transmutation",
                  levels: "druid 4, ranger 3",
                  castingTime: "1 standard action",
                  components: "V, S, DF",
                  range: "Personal",
                  duration: "1 min./level",
                  savingThrow: "No",
                  sr: false,
                  summary: "Gain blindsense 40 ft.; negate concealment from darkness or invisibility.",
                  desc: "Your senses shift to a bat-like echolocation system. You gain blindsense out to 40 feet, allowing you to detect all creatures and objects within range regardless of darkness, fog, or invisibility. Within this range, concealment from darkness and magical invisibility do not apply. Deaf creatures and those in areas of magical silence are immune to this spell's blindsense.",
                  source: "Ultimate Wilderness",
                  isPremium: true),

            .make("Feast of Ashes",
                  school: "Transmutation (Curse)",
                  levels: "druid 2, witch 2",
                  castingTime: "1 standard action",
                  components: "V, S",
                  range: "Close (25 ft. + 5 ft./2 levels)",
                  duration: "Permanent",
                  savingThrow: "Will negates",
                  sr: true,
                  summary: "Target cannot benefit from food or drink; takes 1d6 nonlethal damage per day.",
                  desc: "You curse the target with an insatiable magical hunger. Food and drink consumed by the target provide no nourishment — all sustenance turns to ashes in their mouth. The target takes 1d6 points of nonlethal damage per day from starvation and thirst as normal, but magical sustenance (goodberry, heroes' feast, create food and water) prevents this nonlethal damage. The curse persists until removed by remove curse or a similar effect.",
                  source: "Ultimate Wilderness",
                  isPremium: true),

            .make("Firefall",
                  school: "Transmutation",
                  levels: "druid 4, wizard 4",
                  castingTime: "1 standard action",
                  components: "V, S, M (a piece of flint and steel)",
                  range: "Long (400 ft. + 40 ft./level)",
                  duration: "Instantaneous",
                  savingThrow: "Reflex half",
                  sr: true,
                  summary: "Convert an existing fire source into a rain of fire dealing 2d6/2 levels (max 10d6).",
                  desc: "You cause a fire source within range (at least a torch-sized flame) to erupt upward and rain burning debris in a 20-foot burst. Every creature in the burst takes 2d6 fire damage per 2 caster levels (maximum 10d6). A successful Reflex save halves the damage. The original fire source is extinguished as part of the spell. If no suitable fire source is within range, the spell fails.",
                  source: "Ultimate Wilderness",
                  isPremium: true),

            .make("Fluid Form",
                  school: "Transmutation",
                  levels: "alchemist 4, druid 6",
                  castingTime: "1 standard action",
                  components: "V, S",
                  range: "Personal",
                  duration: "1 min./level",
                  savingThrow: "No",
                  sr: false,
                  summary: "Body becomes malleable; squeeze through 1-inch gaps, +4 CMD vs. grapple, immune to critical hits.",
                  desc: "Your body becomes highly malleable, allowing you to move through narrow spaces and resist physical constraint. You can squeeze through any space at least 1 inch wide without penalty. You gain a +4 bonus to CMD against grapple attempts. You are immune to critical hits and flanking (your vital areas shift unpredictably). You cannot use manufactured weapons while in this form, but can make touch attacks and natural attacks normally.",
                  source: "Ultimate Wilderness",
                  isPremium: true),

            .make("Nature's Exile",
                  school: "Transmutation (Curse)",
                  levels: "druid 3, witch 3",
                  castingTime: "1 standard action",
                  components: "V, S, DF",
                  range: "Close (25 ft. + 5 ft./2 levels)",
                  duration: "Permanent",
                  savingThrow: "Will negates",
                  sr: true,
                  summary: "Animals treat the target as unnatural; –4 on Handle Animal and wild empathy checks.",
                  desc: "You sever the target's connection to the natural world. Animals instinctively treat the target as an aberration — they either flee from the target or attack it on sight. The target takes a –4 penalty on Handle Animal checks and Diplomacy checks to influence animals. Wild empathy class features automatically fail against animals when used by the target. The curse persists until removed by remove curse or a similar effect.",
                  source: "Ultimate Wilderness",
                  isPremium: true),

            .make("Resin",
                  school: "Transmutation",
                  levels: "druid 1, ranger 1",
                  castingTime: "1 standard action",
                  components: "V, S, DF",
                  range: "Touch",
                  duration: "1 round/level",
                  savingThrow: "No",
                  sr: false,
                  summary: "Coat a weapon with tree resin; +2 on disarm checks, chance to entangle on hit.",
                  desc: "You coat one touched weapon or piece of ammunition with viscous magical tree resin. The coated weapon grants the wielder a +2 circumstance bonus on disarm attempts. On a successful hit, the target must succeed on a Reflex save (DC 10 + 1/2 caster level + casting ability modifier) or become entangled for 1 round as the resin clings and hardens. The resin dissolves after the duration expires or after making a successful hit.",
                  source: "Ultimate Wilderness",
                  isPremium: true),

            .make("Verdant Entombment",
                  school: "Conjuration (Creation)",
                  levels: "druid 8, shaman 8",
                  castingTime: "1 standard action",
                  components: "V, S, DF",
                  range: "Close (25 ft. + 5 ft./2 levels)",
                  duration: "Permanent",
                  savingThrow: "Fortitude negates",
                  sr: true,
                  summary: "Entomb the target alive in rapidly-grown vegetation; requires remove curse and dispel magic to free.",
                  desc: "You cause vegetation to surge up from the ground and entomb a living creature. The target is buried alive within a mass of rapidly grown roots, vines, and bark, effectively removing them from the encounter. The entombed creature is helpless, unable to act, and cannot be targeted by spells or attacks from outside without first clearing the vegetation. Freeing the creature requires a remove curse followed by a dispel magic (or freedom), or dealing 60 points of damage to the vegetation (hardness 5).",
                  source: "Ultimate Wilderness",
                  isPremium: true),
        ]

        for spell in spells {
            try await db.insertSpell(spell)
        }
    }

    private func seedUWRules() async throws {
        let rules: [RuleEntry] = [

            // MARK: - Ultimate Wilderness Rules (all isPremium: true)

            .make("Wildsong Magic",
                  category: "Ultimate Wilderness",
                  body: """
                  The druid's connection to nature manifests through wildsong, a form of casting that requires harmony with the environment. In areas of desecrated nature — industrialized zones, magically blighted wastelands, or areas under the effect of unhallow — wildsong spells cost an extra spell slot to cast. A druid must be attuned to a particular terrain type (forest, plains, swamp, etc.) to benefit from wildsong in that environment; attunement takes 24 hours of meditation in the terrain.

                  Wildsong magic is an optional rule system intended to reward players who invest in nature themes and to create meaningful tradeoffs when venturing into corrupted areas. Game Masters may choose to use only parts of this system.
                  """,
                  summary: "Druid casting system requiring environmental harmony; extra spell slot cost in desecrated areas."),

            .make("Shifter Class Features",
                  category: "Ultimate Wilderness",
                  body: """
                  The shifter gains Shifter's Claws at 1st level, natural weapons dealing 1d6 damage (for a Medium shifter) that count as magic for the purpose of overcoming damage reduction. These claws improve in damage and gain elemental properties at higher levels.

                  Defensive Instinct grants the shifter the benefits of uncanny dodge starting at 2nd level, with improved uncanny dodge at 4th level. At 9th level, Chimeric Form allows the shifter to combine two aspect forms simultaneously, manifesting a hybrid shape that blends the powers of both animals.

                  The shifter's major forms — chosen at 4th level and advancing in power — represent the animal most closely bonded to the shifter's spirit. Each major form grants access to the full wild shape of that animal plus additional extraordinary abilities, natural armor, and movement modes unavailable to druids in equivalent forms.
                  """,
                  summary: "Shifter's Claws (1d6, magic), Defensive Instinct, and Chimeric Form (9th) combining two aspects."),

            .make("Verdant Bloodline",
                  category: "Ultimate Wilderness",
                  body: """
                  Sorcerers with the verdant bloodline draw power from plant life, their ancestry touched by treants, dryads, or awakened forests. Their bonus spells emphasize entangle, growth, and terrain control, and their bloodline arcana allows plant-targeted spells to bypass the spell resistance of plant creatures.

                  Bloodline powers include Tanglevine (ranged trip attempt as a standard action), Wood Armor (natural armor bonus scaling with level), and Photosynthesis (fast healing equal to Constitution modifier when in direct sunlight). At higher levels, the verdant sorcerer can animate and control plant matter, grow bark-like armor as a swift action, and eventually transform into a treant-like form once per day.

                  The verdant bloodline pairs effectively with the Verdant Spell metamagic feat from this same volume, allowing the sorcerer to reduce effective caster level for plant targets (making saves more achievable against plant enemies) at the cost of higher-level spell slots.
                  """,
                  summary: "Sorcerer bloodline from plant ancestry; Tanglevine, Wood Armor, Photosynthesis, treant form."),

            .make("Vermin Companions",
                  category: "Ultimate Wilderness",
                  body: """
                  Rangers and druids may select vermin — insects, arachnids, myriapods, and similar creatures — as animal companions. Vermin companions have no Intelligence score (they are mindless), are immune to all mind-affecting effects, and cannot be trained in the traditional sense. Handle Animal checks to command vermin companions have their DC increased by 10 compared to animal companions.

                  Despite their limitations, vermin companions offer unique advantages: they are immune to fear, hold person, dominate animal, and similar spells; many possess poison, web, or burrow abilities unavailable to standard animal companions; and some swarm-type vermin can deal devastating area damage when directed. Vermin companions do not gain feats or skill points, but their physical statistics advance normally on the standard animal companion progression table.
                  """,
                  summary: "Vermin as animal companions; mindless, immune to mind effects, Handle Animal DC +10, unique abilities."),

            .make("Terrain Features",
                  category: "Ultimate Wilderness",
                  body: """
                  Ultimate Wilderness expands terrain rules beyond the Core Rulebook, providing detailed mechanics for nine terrain types: aquatic, desert, forest, mountain, plains, swamp, underground, urban, and extraplanar. Each terrain has unique rules covering movement costs, vision and concealment conditions, weather effects, and the impact of environmental hazards on combat.

                  Rangers and druids benefit most from terrain rules, as their class features often interact directly with terrain: Favored Terrain grants bonus damage and skill bonuses in known environments, while Woodland Stride variants allow penalty-free movement through difficult terrain types beyond forests. Terrain-aware Game Masters can use these rules to create environments that feel genuinely dangerous and alive, rewarding wilderness-focused characters without rendering others helpless.
                  """,
                  summary: "Expanded rules for 9 terrain types covering movement, vision, weather, and environmental hazards."),
        ]

        for rule in rules {
            try await db.insertRule(rule)
        }
    }
}
