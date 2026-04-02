import Foundation

// MARK: - ClassEntry factory (local — mirrors SeedClasses.swift pattern)
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
        source: String,
        isPremium: Bool
    ) -> ClassEntry {
        ClassEntry(
            id: UUID(),
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

// MARK: - RuleEntry factory (local — mirrors SeedRules.swift pattern)
private extension RuleEntry {
    static func make(
        _ title: String,
        category: String,
        body: String,
        summary: String,
        source: String,
        isPremium: Bool
    ) -> RuleEntry {
        RuleEntry(
            id: UUID(),
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
    func seedOccultAdventures() async throws {

        // MARK: - Occult Classes

        let occultClasses: [ClassEntry] = [

            .make("Kineticist",
                  hitDie: "d8",
                  skillRanks: 6,
                  bab: "Full",
                  fort: "Good",
                  ref: "Good",
                  will: "Poor",
                  classSkills: [
                      "Acrobatics", "Craft", "Fly", "Heal", "Intimidate",
                      "Perception", "Profession", "Stealth", "Use Magic Device"
                  ],
                  summary: "Command raw elemental forces through the power of will and pain.",
                  desc: """
                  The kineticist is defined by their intimate relationship with raw elemental power — and the cost of wielding it. Unlike wizards who study magic or clerics who pray for it, kineticists simply reach inward and pull. The force that answers is wild and hungry, and channeling it burns.

                  KINETIC BLAST: The kineticist's primary offensive ability. Blasts deal scaling damage based on class level — starting at 1d6 and increasing every two levels. Physical blasts deal bludgeoning, piercing, or slashing damage with a ranged attack roll. Energy blasts deal typed energy damage (fire, cold, electricity, acid, sonic) and typically allow a saving throw.

                  BURN: The central mechanic of the kineticist. Using many powerful abilities requires accepting burn — nonlethal damage equal to 1 point per level of burn accepted that cannot be healed normally until the kineticist rests. Burn fuels infusions, composite blasts, and metakinesis.

                  GATHER POWER: As a move action (or full-round action for double power), the kineticist gathers elemental energy. Gathered power reduces the burn cost of the next wild talent used, allowing more powerful abilities without burning as heavily.

                  ELEMENTAL OVERFLOW: As burn accumulates, the kineticist's connection to their element intensifies. At 3 points of burn, they gain a bonus to attack and damage. At higher burn totals, they gain increasingly powerful bonuses — and their appearance changes to reflect their elemental nature.

                  WILD TALENTS: The kineticist's ability toolkit, divided into utility talents (non-combat applications of elemental power) and infusions (modifications to kinetic blasts that alter their shape, area, or effect). Talents are chosen as the kineticist advances in level.
                  """,
                  source: "Occult Adventures",
                  isPremium: true),

            .make("Medium",
                  hitDie: "d8",
                  skillRanks: 4,
                  bab: "Medium",
                  fort: "Poor",
                  ref: "Poor",
                  will: "Good",
                  classSkills: [
                      "Bluff", "Craft", "Diplomacy", "Fly", "Intimidate",
                      "Knowledge (arcana)", "Knowledge (history)", "Knowledge (planes)",
                      "Knowledge (religion)", "Linguistics", "Perception",
                      "Perform", "Profession", "Sense Motive", "Spellcraft"
                  ],
                  summary: "Channel legendary spirits to borrow their power and identity.",
                  desc: """
                  The medium walks the boundary between the living and the dead, the material and the spirit. By performing a seance — a ritual of preparation and attunement — they invite a legendary spirit to inhabit their body and share its power.

                  THE SIX LEGENDARY SPIRITS: Each medium chooses from six archetypes at each seance:
                  • Archmage: Spirit bonus to Intelligence and arcane spells. Spirit powers tied to arcane magic.
                  • Champion: Spirit bonus to Strength and martial prowess. Spirit powers tied to combat.
                  • Guardian: Spirit bonus to Constitution and endurance. Spirit powers tied to defense.
                  • Hierophant: Spirit bonus to Wisdom and divine magic. Spirit powers tied to healing and faith.
                  • Marshal: Spirit bonus to Charisma and leadership. Spirit powers tied to inspiring allies.
                  • Trickster: Spirit bonus to Dexterity and skill. Spirit powers tied to deception and cunning.

                  SEANCES: Each day, the medium performs a seance to contact a spirit. During the seance, they choose which spirit to channel that day. The spirit grants a spirit bonus (to the associated ability score), a seance boon (a bonus that benefits all seance participants), and spirit powers based on the medium's level.

                  SPIRIT TABOOS: Each spirit has a taboo — a behavior the medium must avoid or suffer penalties. Violating the taboo costs the spirit's bonus until the next seance.

                  LEGENDARY INFLUENCE: At higher medium levels, the spirit's influence grows. A spirit that becomes too powerful begins asserting its own personality, goals, and memories over the medium's. Managing legendary influence is a central roleplaying element of the class.

                  LOCATION CHANNEL: At 2nd level, the medium can perform a seance in a location tied to a specific spirit to call that spirit directly, gaining access to the appropriate spirit type regardless of normal constraints.
                  """,
                  source: "Occult Adventures",
                  isPremium: true),

            .make("Mesmerist",
                  hitDie: "d8",
                  skillRanks: 6,
                  bab: "Medium",
                  fort: "Poor",
                  ref: "Poor",
                  will: "Good",
                  classSkills: [
                      "Bluff", "Craft", "Diplomacy", "Disguise", "Intimidate",
                      "Knowledge (arcana)", "Knowledge (dungeoneering)",
                      "Knowledge (local)", "Knowledge (nature)", "Knowledge (planes)",
                      "Knowledge (religion)", "Linguistics", "Perception",
                      "Profession", "Sense Motive", "Sleight of Hand", "Spellcraft"
                  ],
                  summary: "Bend minds with hypnotic power and implanted psychic tricks.",
                  desc: """
                  The mesmerist is a master of psychological manipulation — a character whose power lies not in brute force or divine magic, but in their ability to reshape perception, implant compulsions, and exploit the deep vulnerabilities of other minds.

                  HYPNOTIC STARE: The mesmerist's most used ability. As a move action, the mesmerist directs their gaze at a creature within 30 feet, imposing a –2 penalty on Will saves against the mesmerist's spells and abilities. This penalty scales as the mesmerist gains levels. The mesmerist can shift the stare to a new target as a move action; it ends when the mesmerist is unable to see the target.

                  PAINFUL STARE: When an ally hits a creature the mesmerist is staring at, the mesmerist can make that hit deal additional damage equal to half the mesmerist's level. As the mesmerist advances, this damage increases and gains additional effects.

                  MESMERIST TRICKS: The mesmerist's signature feature. The mesmerist implants up to a number of tricks equal to 1 + Charisma modifier per day in willing creatures (including themselves). These tricks lie dormant until triggered as a free action. Tricks include defensive reactions (duck and weave), offensive boosts (psychic inception), and utility effects (vanish arrow). The mesmerist can have multiple tricks active simultaneously across multiple targets.

                  BOLD STARE: As the mesmerist advances, the hypnotic stare gains additional effects. Bold stare improvements include expanding the penalty to other saving throw types, imposing penalties on attack rolls or ability checks, and other mental debuffs.

                  TOWERING EGO: At 3rd level, the mesmerist's Charisma modifier applies as a bonus to Will saving throws (in addition to the normal Wisdom modifier). The mesmerist's powerful sense of self protects them from mental intrusion.
                  """,
                  source: "Occult Adventures",
                  isPremium: true),

            .make("Occultist",
                  hitDie: "d8",
                  skillRanks: 4,
                  bab: "Medium",
                  fort: "Poor",
                  ref: "Poor",
                  will: "Good",
                  classSkills: [
                      "Appraise", "Craft", "Diplomacy", "Disable Device",
                      "Fly", "Knowledge (arcana)", "Knowledge (engineering)",
                      "Knowledge (geography)", "Knowledge (history)",
                      "Knowledge (local)", "Knowledge (nature)", "Knowledge (planes)",
                      "Knowledge (religion)", "Linguistics", "Perception",
                      "Profession", "Sense Motive", "Sleight of Hand", "Spellcraft"
                  ],
                  summary: "Draw power from ancient implements imbued with psychic resonance.",
                  desc: """
                  The occultist draws power not from within but from without — from the objects, artifacts, and relics that have absorbed psychic resonance through years of use, significance, and history. To an occultist, a well-used sword is not just a weapon; it is a repository of every battle it has survived, every death it has witnessed.

                  IMPLEMENTS: The occultist uses physical objects called implements to channel power associated with schools of magic. At 1st level, the occultist selects two implement schools. Each implement is a specific object (a weapon, a crystal ball, a holy symbol) tied to a school.

                  FOCUS POWER (MENTAL FOCUS): Each day, the occultist invests a pool of mental focus points equal to caster level + Intelligence modifier across their implements. These points power focus powers (special abilities tied to each implement school) and can be spent during the day as the occultist uses their abilities.

                  IMPLEMENT SCHOOLS AND THEIR FOCUS POWERS:
                  • Abjuration: Magic circles, warding, protection
                  • Conjuration: Summoning, teleportation, binding
                  • Divination: Detection, scrying, knowledge
                  • Enchantment: Mind-affecting magic, charm, compulsion
                  • Evocation: Blasts, force, energy
                  • Illusion: Deception, phantasms, glamers
                  • Necromancy: Life force, undead, drain
                  • Transmutation: Shape-changing, enhancement, alteration

                  SPELLS: The occultist casts prepared spells from a list derived from their chosen implement schools. Higher-level implements unlock higher-level spells.

                  OUTSIDE CONTACT: At higher levels, the occultist can use their implements to call on the spirits or forces associated with their schools for information, aid, or special rituals.
                  """,
                  source: "Occult Adventures",
                  isPremium: true),

            .make("Psychic",
                  hitDie: "d6",
                  skillRanks: 2,
                  bab: "Medium",
                  fort: "Poor",
                  ref: "Poor",
                  will: "Good",
                  classSkills: [
                      "Craft", "Fly", "Knowledge (all)", "Linguistics",
                      "Perception", "Profession", "Sense Motive", "Spellcraft"
                  ],
                  summary: "Tap the raw power of the mind to reshape reality through thought alone.",
                  desc: """
                  The psychic is the purest expression of mental magic in the Pathfinder system — a spellcaster whose power comes not from study, devotion, or raw talent, but from the direct exercise of mental will. Where a wizard understands magic intellectually and a sorcerer feels it in their blood, the psychic simply thinks — and reality changes.

                  PSYCHIC DISCIPLINE: At 1st level, the psychic chooses a mental archetype that defines their flavor and grants bonus powers:
                  • Abomination: Power through transgression and horror
                  • Faith: Absolute belief as a psychic force
                  • Id Rager: Emotional extremes fueling raw power
                  • Magaambyan Arcanist: Blending arcane and psychic traditions
                  • Mutation Mind: Self-transformation through psychic mastery
                  • Overmind: Hivemind consciousness and collective intelligence
                  • Rebirth: Past lives and reincarnation as a power source
                  • Reliquarian: Bond with objects and locations
                  • Self-Perfection: Mental and physical optimization
                  • Telepathy: Minds as both tool and weapon

                  SPELLCASTING: The psychic casts spells spontaneously from the psychic spell list. The list blends divination, enchantment, illusion, and unique psychic effects. The psychic uses thought (replaces verbal components) and emotion (replaces somatic components) for spellcasting.

                  PHRENIC AMPLIFICATIONS: Points from the phrenic pool can be spent while casting to augment spells: increasing DC, extending duration, adding targets, or triggering special effects tied to the discipline.

                  DETECT THOUGHTS: At 2nd level, the psychic can use detect thoughts as a spell-like ability at will.

                  TELEPATHY: At higher levels, the psychic gains the ability to communicate telepathically, eventually projecting thoughts across vast distances.
                  """,
                  source: "Occult Adventures",
                  isPremium: true),

            .make("Spiritualist",
                  hitDie: "d8",
                  skillRanks: 4,
                  bab: "Medium",
                  fort: "Poor",
                  ref: "Poor",
                  will: "Good",
                  classSkills: [
                      "Craft", "Fly", "Heal", "Intimidate",
                      "Knowledge (arcana)", "Knowledge (planes)", "Knowledge (religion)",
                      "Linguistics", "Perception", "Profession",
                      "Sense Motive", "Spellcraft"
                  ],
                  summary: "Bond with a powerful phantom spirit to share power across the veil of death.",
                  desc: """
                  The spiritualist forms a psychic bond with a phantom — a powerful, emotionally-charged spirit that exists between the Ethereal Plane and the Material Plane. This bond defines the spiritualist's power, providing a companion, a weapon, and a window into the world beyond death.

                  THE PHANTOM: The spiritualist's phantom is an outsider with a unique emotional focus that determines its appearance, personality, and abilities. The phantom begins as a Medium outsider and grows with the spiritualist:
                  • Anger: Aggressive and martial — enhances combat and damage
                  • Dedication: Loyal and protective — enhances saves and defense
                  • Despair: Melancholy and draining — enfeebles and saps enemies
                  • Fear: Terrifying — paralyzes, frightens, panics
                  • Hatred: Focused fury — bonuses against specific targets
                  • Jealousy: Possessive — steals buffs and bonuses from enemies
                  • Zeal: Fanatical devotion — enhances caster's spells

                  ETHERIC TETHER: The phantom is connected to the spiritualist by an etheric tether. While fully manifested, the phantom functions as an independent ally. When dismissed or when it takes too much damage, it retreats to the spiritualist's consciousness, granting bonuses to the spiritualist instead.

                  BONDED MANIFESTATION: The phantom can merge with the spiritualist as a swift action, entering their body and enhancing their abilities. In ectoplasmic form (merged externally), the spiritualist gains natural armor and physical boosts. In incorporeal form (merged internally), the spiritualist gains incorporeal traits temporarily.

                  SPELLCASTING: The spiritualist casts psychic spells drawn primarily from divination, necromancy, and conjuration schools, reflecting their connection to the spirit world.

                  SPIRITUAL INTERFERENCE: At higher levels, the phantom provides magical interference against spells targeting the spiritualist, eventually granting significant magic resistance to both.
                  """,
                  source: "Occult Adventures",
                  isPremium: true),
        ]

        for cls in occultClasses {
            try await db.insertClass(cls)
        }

        // MARK: - Occult Rules

        let occultRules: [RuleEntry] = [

            .make("Psychic Magic",
                  category: "Occult Rules",
                  body: """
                  Psychic magic is a third category of magic alongside arcane and divine, powered by thought and emotion rather than formal study or divine devotion.

                  COMPONENTS: Psychic spells use thought components (replacing verbal components) and emotion components (replacing somatic components). A psychic spellcaster does not need to speak or gesture to cast — they simply think and feel.

                  SILENCE AND BINDING: Because psychic magic uses thought instead of voice, it can be cast while silenced or deafened with no penalty. Because it uses emotion instead of gesture, it can be cast while bound, grappled, or restrained (though the caster must be conscious and in an appropriate emotional state).

                  EMOTIONAL DISRUPTION: The reliance on emotion is a vulnerability. A psychic caster who suffers intense emotional trauma — being subjected to extreme fear, taking a critical hit, failing a saving throw against a mind-affecting effect — must succeed on a concentration check or lose the spell. The DC varies by the severity of the disruption.

                  THOUGHT CASTING: Psychic spells with only a thought component can be cast even while paralyzed or physically incapacitated (as long as the caster is conscious and can think). This makes psychic magic resistant to certain forms of physical control.

                  INTERACTION WITH DETECT MAGIC: Psychic magic creates psychic auras rather than standard magical auras. These are detected by detect magic but require a Spellcraft check (DC 20 + spell level) to identify correctly. Detect psychic significance (an Occult Adventures spell) provides more accurate readings of psychic auras.
                  """,
                  summary: "Third magic type using thought/emotion components; works while silenced but disrupted by trauma.",
                  source: "Occult Adventures",
                  isPremium: true),

            .make("Occult Skill Unlocks",
                  category: "Occult Rules",
                  body: """
                  Characters with the Psychic Sensitivity feat (or who are psychic spellcasters) can unlock powerful, non-standard applications of existing skills through occult practice.

                  AVAILABLE SKILL UNLOCKS:
                  • Autohypnosis (Wisdom): Memorize information perfectly; resist fear effects; stabilize against death effects. DC 15–25 depending on use.
                  • Dowsing (Wisdom): Locate water, ore, or specific minerals within range. DC 10–20.
                  • Hypnotism (Charisma): Implant a suggestion in a willing or fascinated target. DC 15 to implant; target must succeed on save to resist acting on suggestion.
                  • Phrenology (Wisdom): Read a creature's personality, tendencies, and notable traits by examining their skull. DC 20–30; reveals character traits, fears, and goals.
                  • Psychometry (Wisdom): Read the psychic impressions left on an object, gleaning its history, previous owners, and significant events it witnessed. DC 20–30.
                  • Remote Viewing (Wisdom): Project your senses to a distant location you can visualize. DC 25 for locations you know well; DC 35+ for unfamiliar locations.
                  • Thought Reading (Wisdom): Sense the surface thoughts of a creature you can observe. DC 25 for simple emotional state; DC 35 for specific surface thoughts.

                  RELIABILITY: Occult skill unlocks are not magic and cannot be countered by spells like detect magic. They are treated as extraordinary abilities. They can be disrupted by the same factors that disrupt ordinary skill use.
                  """,
                  summary: "Psychically sensitive characters unlock powerful occult uses of standard skills.",
                  source: "Occult Adventures",
                  isPremium: true),

            .make("Psychic Sensitivity",
                  category: "Occult Rules",
                  body: """
                  Psychic Sensitivity is a feat that opens the door to the occult for non-psychic characters.

                  WHAT IT GRANTS:
                  • Access to all occult skill unlocks (Autohypnosis, Dowsing, Hypnotism, Phrenology, Psychometry, Remote Viewing, Thought Reading)
                  • The ability to use haunted locations and spirit anchors as focal points for occult skill checks
                  • Resonance — the ability to sense strong psychic impressions without a skill check
                  • Access to certain occult feats and abilities that require psychic sensitivity as a prerequisite

                  WHO BENEFITS: Any non-psychic class character can take Psychic Sensitivity. It represents a latent talent for psychic awareness that most people suppress. Warriors, rogues, and even clerics can benefit from the skill unlocks it provides.

                  LIMITATIONS: Psychic Sensitivity does not grant spellcasting, phrenic amplifications, or class features of psychic classes. It is a passive sensitivity — enough to interact with the psychic world, not enough to wield it as a weapon.

                  PREREQUISITES: None. Any character can take this feat regardless of ability scores or class.
                  """,
                  summary: "Feat granting non-psychic characters access to occult skill unlocks and resonance.",
                  source: "Occult Adventures",
                  isPremium: true),

            .make("Aura Reading",
                  category: "Occult Rules",
                  body: """
                  Detect magic reveals psychic auras alongside magical auras, but the two types of auras are distinct and require different analysis.

                  MAGICAL AURAS VS PSYCHIC AURAS: Standard magical auras (from spells, magic items, and enchantments) are detected normally by detect magic. Psychic auras, generated by psychic magic, emotional impressions, and occult phenomena, also appear under detect magic but look different — they are often described as "warmer," "more personal," or "emotionally resonant" compared to the crisp geometric patterns of traditional magical auras.

                  READING PSYCHIC AURAS: A character with Psychic Sensitivity or who is a psychic caster can read psychic auras with a Spellcraft check (DC 20 + spell level, or DC 15 for lingering emotional impressions). Successful reading reveals the nature of the psychic effect, the emotional state that generated it, and sometimes the identity of the creator.

                  EMOTIONAL IMPRESSIONS: Strong emotions leave psychic residue. A room where a murder occurred has a lingering aura of violence and fear. A beloved family heirloom has an aura of warmth and protection. These impressions are not magical in the traditional sense but are detectable and readable.

                  INTERACTION WITH ANTI-MAGIC: Psychic auras in areas affected by antimagic field are suppressed just as magical auras are, as psychic magic is still a form of magic for rules purposes.
                  """,
                  summary: "Detect magic reveals psychic auras distinct from magical auras; readable by psychically sensitive characters.",
                  source: "Occult Adventures",
                  isPremium: true),

            .make("Haunts (Occult)",
                  category: "Occult Rules",
                  body: """
                  Occult Adventures expands the haunt rules from the Game Mastery Guide with more detailed mechanics for psychic haunts — location-imprinted traumas that can be investigated, communicated with, and laid to rest.

                  WHAT IS A HAUNT: A haunt is a location where intense emotion — usually tied to violent death, profound grief, or powerful obsession — has imprinted on the physical world. The haunt is not a ghost or spirit; it is the location itself, saturated with psychic energy, replaying its trauma.

                  SEANCE MECHANICS: Unlike the GMG haunt rules (which focus primarily on disabling and destroying haunts), occult haunts can be engaged through seance. A spiritualist, medium, or psychically sensitive character can attempt to communicate with the source of the haunt — learning what happened, what the spirit needs, and how to bring peace.

                  HAUNT STRENGTH: Haunts have a strength rating that determines their save DCs and the complexity of their manifestations. A fresh haunt from a recent violent death might be strength 1–3; an ancient haunt that has festered for centuries might reach strength 8–10.

                  LAYING A HAUNT TO REST: Haunts can be forcibly destroyed (as per GMG rules) or peacefully resolved through narrative means. Resolving a haunt without destroying it may yield treasure, information, or narrative rewards. The spiritualist class excels at peaceful resolution.

                  CREATING HAUNTS: GMs can create custom haunts by defining the triggering event, the manifestation type (visual, auditory, physical harm), the save DC, and the resolution condition. Occult Adventures provides a complete framework for haunt creation.
                  """,
                  summary: "Expanded haunt rules with seance communication, strength ratings, and peaceful resolution mechanics.",
                  source: "Occult Adventures",
                  isPremium: true),

            .make("Possessing Spirits",
                  category: "Occult Rules",
                  body: """
                  Occult Adventures provides comprehensive rules for spirits inhabiting objects, locations, and creatures — including exorcism mechanics.

                  TYPES OF POSSESSION: A spirit can possess an object (an intelligent magic item or a haunt-adjacent bound spirit), a location (a site where a spirit has become anchored), or a creature (the most dangerous form of possession, affecting the victim directly).

                  POSSESSION STRENGTH: Possession has a strength rating from 1 to 10 that determines how difficult the spirit is to perceive, resist, and exorcise:
                  • Weak (1–3): Minor influence, detectable with Perception, exorcised with a simple ritual
                  • Moderate (4–6): Significant control, requires Psychic Sensitivity to detect, exorcised through a seance
                  • Strong (7–9): Near-complete dominance, nearly undetectable, exorcism requires multiple successes
                  • Total (10): The spirit fully inhabits the vessel, treating the original occupant as secondary

                  CREATURE POSSESSION: When a spirit possesses a creature, the spirit can influence thoughts and behavior (weak), take partial control (moderate), or assume full control (strong/total). Creatures resist possession with Will saves. Psychic sensitivity makes detection easier.

                  EXORCISM: The process of driving out a spirit involves a skill challenge using Knowledge (planes), Knowledge (religion), Linguistics, or Spellcraft. The exorcist must accumulate successes equal to the possession strength. Failures add complications; critical failures strengthen the possession temporarily.
                  """,
                  summary: "Rules for spirits possessing objects, locations, and creatures, with exorcism skill challenge mechanics.",
                  source: "Occult Adventures",
                  isPremium: true),

            .make("Phrenology",
                  category: "Occult Rules",
                  body: """
                  Phrenology is the occult practice of reading personality, destiny, and hidden traits through careful examination of a creature's skull and the energies radiating from it.

                  MECHANICAL FRAMEWORK: Phrenology uses the Wisdom-based occult skill unlock (available to those with Psychic Sensitivity or psychic caster levels). The reader spends 1 minute examining a willing or unconscious subject, then makes a skill check.

                  WHAT CAN BE LEARNED: Results are organized by DC threshold:
                  • DC 20: Basic personality traits (brave/cowardly, honest/deceptive, passionate/calm)
                  • DC 25: Core fears and significant desires
                  • DC 30: Major goals, deep-seated beliefs, strongest memories
                  • DC 35: Hidden trauma, secret knowledge the subject carries, psychic potential
                  • DC 40: Destiny threads — fragments of what this creature is meant to do or become

                  LIMITATIONS: Phrenology reads the current state of the mind as expressed through its psychic residue. It does not predict the future (though it can suggest tendencies). Creatures with blank minds (constructs, mindless undead) yield no information. Creatures trained in mental discipline (monks, psychics) may have a higher effective DC due to their mastered self-awareness.

                  ROLEPLAYING VALUE: Phrenology is primarily a roleplaying tool. GMs should use phrenology results to provide interesting hooks, foreshadow character arcs, and reward player investment in occult skills.
                  """,
                  summary: "Occult skill unlock for reading personality, fears, and goals through psychic examination of the skull.",
                  source: "Occult Adventures",
                  isPremium: true),

            .make("Spirit Anchors",
                  category: "Occult Rules",
                  body: """
                  Spirit anchors are objects or locations that a powerful spirit has bound itself to, creating a focal point for its power and presence in the material world.

                  WHAT CREATES AN ANCHOR: A spirit anchor forms when a spirit with sufficient strength (typically possessing spirit strength 5+) consciously or compulsively binds part of its essence to a physical object or location. The binding is usually driven by attachment — a warrior who cannot release their beloved sword, a scholar who cannot leave the library where they spent their life.

                  PROPERTIES OF ANCHORS: An anchor is perceptible to psychically sensitive characters as a strong psychic aura. It is the focal point of the spirit's power — destroying or sanctifying the anchor weakens the spirit significantly. A spirit whose anchor is destroyed loses 2 points of possession strength (minimum 1) immediately and cannot reform for 1d10 days.

                  USING ANCHORS: Occultists, mediums, and spiritualists can use spirit anchors as focal points for their abilities:
                  • A medium can guarantee contact with the bound spirit in a seance at the anchor's location
                  • An occultist can use the anchor as an implement if it matches one of their implement schools
                  • A spiritualist can use the anchor to strengthen their phantom if the spirit is compatible

                  FREEING A BOUND SPIRIT: Some spirits are trapped at their anchor against their will. Freeing them requires identifying the anchor, understanding what bound the spirit, and performing the appropriate ritual or fulfilling the spirit's unfinished business. Successfully freeing a bound spirit is a significant occult achievement and often a meaningful story beat.
                  """,
                  summary: "Objects or locations bound to powerful spirits; destroying the anchor weakens or frees the spirit.",
                  source: "Occult Adventures",
                  isPremium: true),
        ]

        for rule in occultRules {
            try await db.insertRule(rule)
        }
    }
}
