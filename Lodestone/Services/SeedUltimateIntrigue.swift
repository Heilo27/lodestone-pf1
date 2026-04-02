import Foundation

// MARK: - SpellEntry factory (Ultimate Intrigue)
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

// MARK: - FeatEntry factory (Ultimate Intrigue)
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

// MARK: - ClassEntry factory (Ultimate Intrigue)
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

// MARK: - RuleEntry factory (Ultimate Intrigue)
private extension RuleEntry {
    static func make(
        _ title: String,
        category: String,
        body: String,
        summary: String,
        source: String = "Ultimate Intrigue",
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
    func seedUltimateIntrigue() async throws {
        try await seedUIClasses()
        try await seedUIFeats()
        try await seedUISpells()
        try await seedUIRules()
    }

    private func seedUIClasses() async throws {
        let classes: [ClassEntry] = [

            // MARK: - Ultimate Intrigue Classes

            .make("Vigilante",
                  hitDie: "d8",
                  skillRanks: 6,
                  bab: "Medium",
                  fort: "Good",
                  ref: "Good",
                  will: "Good",
                  classSkills: [
                      "Acrobatics", "Bluff", "Craft", "Diplomacy",
                      "Disguise", "Escape Artist", "Intimidate",
                      "Knowledge (local)", "Knowledge (nobility)",
                      "Linguistics", "Perception", "Profession",
                      "Sense Motive", "Sleight of Hand", "Stealth",
                      "Use Magic Device"
                  ],
                  summary: "A dual-identity hero who hides their vigilante activities behind a social persona.",
                  desc: """
                  The vigilante lives a double life — a mundane social identity that functions as their public face, and a vigilante identity in which they operate as a costumed hero, villain, or shadow agent. Switching between identities requires one minute of preparation (donning or removing a disguise) and cannot be detected by magical means short of true seeing; even detect thoughts reveals only the current identity's surface thoughts.

                  Vigilantes choose a specialization at 1st level that defines their combat style: the avenger focuses on martial power and combat feats; the stalker emphasizes stealth, sneak attacks, and ki tricks; the warlock channels magical abilities drawn from a dark or arcane patron. All vigilantes gain both social talents (usable only in social identity) and vigilante talents (usable only in vigilante identity), creating a dual talent tree that rewards thoughtful identity management.

                  Seamless Guise, gained at 1st level, makes the vigilante's social identity impervious to casual magical scrutiny. As they advance, they gain access to powerful talents such as Startling Appearance (automatically shaken foes on surprise rounds), Frightening Appearance, Stunning Appearance, and eventually Vengeance Strike — a devastating full-attack that triggers when an ally falls. The vigilante represents the ultimate expression of a character living in two worlds simultaneously.
                  """,
                  source: "Ultimate Intrigue",
                  isPremium: true),
        ]

        for cls in classes {
            try await db.insertClass(cls)
        }
    }

    private func seedUIFeats() async throws {
        let feats: [FeatEntry] = [

            // MARK: - Ultimate Intrigue Feats (all isPremium: true)

            .make("Betrayer",
                  featType: "General",
                  prerequisites: "Bluff 5 ranks",
                  benefit: "When you attack an ally (or someone who considers you an ally) who is flat-footed or unaware of the attack, you deal an additional 2d6 points of damage on the first successful attack. This damage stacks with sneak attack damage if applicable.",
                  summary: "+2d6 damage on the first attack against a flat-footed ally or someone unaware of your betrayal.",
                  source: "Ultimate Intrigue",
                  isPremium: true),

            .make("Compelling Harmonics",
                  featType: "General",
                  prerequisites: "Perform (any) 5 ranks",
                  benefit: "Once per day, you can substitute a Perform check in place of a Diplomacy check for a single Diplomacy attempt. If the result of the Perform check is lower than the result would have been for Diplomacy, the NPC's attitude cannot drop below indifferent.",
                  summary: "Once per day, use Perform instead of Diplomacy; result cannot leave the NPC worse than indifferent.",
                  source: "Ultimate Intrigue",
                  isPremium: true),

            .make("Cunning Caster",
                  featType: "General",
                  prerequisites: "Deceitful, Spellcraft 5 ranks",
                  benefit: "When you cast a spell, you can attempt a Bluff check (DC 15 + spell level) as part of the casting action to disguise the fact that you are casting a spell. Observers who fail a Perception check opposed by your Bluff do not notice the spellcasting.",
                  summary: "Use Bluff to conceal spellcasting; observers must beat your Bluff with Perception to notice.",
                  source: "Ultimate Intrigue",
                  isPremium: true),

            .make("Damning Testimony",
                  featType: "General",
                  prerequisites: "Bluff 3 ranks, Diplomacy 3 ranks",
                  benefit: "After you successfully use Intimidate to demoralize a target, the target takes a –2 penalty on saving throws against your charm and compulsion spells for a number of rounds equal to your character level.",
                  summary: "Demoralized targets take –2 on saves against your charm/compulsion spells for rounds = level.",
                  source: "Ultimate Intrigue",
                  isPremium: true),

            .make("Disconcerting Knowledge",
                  featType: "General",
                  prerequisites: "Diplomacy 3 ranks, Knowledge (nobility) 3 ranks",
                  benefit: "As a standard action, you can reveal embarrassing or dangerous knowledge about a noble or important NPC within earshot. The target must succeed on a Will save (DC 10 + 1/2 your level + your Int modifier) or be shaken for 1 round. Regardless of the save, you gain a +4 circumstance bonus on Bluff checks against that target for the next 24 hours.",
                  summary: "Reveal damaging knowledge; target shaken on failed save, +4 Bluff against them for 24 hours.",
                  source: "Ultimate Intrigue",
                  isPremium: true),

            .make("False Friend",
                  featType: "General",
                  prerequisites: "Bluff 5 ranks, Disguise 5 ranks",
                  benefit: "You can maintain a long-term false identity among a social group. You gain a +10 circumstance bonus on Bluff and Disguise checks to maintain this false identity. Your identity is only revealed if you roll a natural 1 on either of those checks or if someone succeeds on a Sense Motive check (DC 25) against you.",
                  summary: "+10 Bluff and Disguise for a maintained false identity; only revealed on natural 1 or DC 25 Sense Motive.",
                  source: "Ultimate Intrigue",
                  isPremium: true),

            .make("Mesmerizing Feint",
                  featType: "Combat",
                  prerequisites: "Int 13, Combat Expertise, Improved Feint",
                  benefit: "When you successfully feint in combat, the target is flat-footed against all of your attacks until the start of your next turn, not just your next attack. This benefit does not apply to attacks of opportunity you make against the target.",
                  summary: "Successful feint makes target flat-footed against all your attacks until your next turn.",
                  source: "Ultimate Intrigue",
                  isPremium: true),

            .make("Social Camouflage",
                  featType: "General",
                  prerequisites: "Disguise 5 ranks",
                  benefit: "You can adopt a convincing occupational or social role (merchant, servant, guard, etc.). You gain a +5 circumstance bonus on Disguise checks while maintaining that role. Casual observers who succeed on a Perception check against your Disguise check DC – 5 automatically treat you as belonging to that social role without further scrutiny.",
                  summary: "+5 Disguise for a social role; casual observers accept the role on a reduced DC check.",
                  source: "Ultimate Intrigue",
                  isPremium: true),
        ]

        for feat in feats {
            try await db.insertFeat(feat)
        }
    }

    private func seedUISpells() async throws {
        let spells: [SpellEntry] = [

            // MARK: - Ultimate Intrigue Spells (all isPremium: true)

            .make("Adjustable Disguise",
                  school: "Illusion (Glamer)",
                  levels: "bard 2, sorcerer/wizard 2, witch 2",
                  castingTime: "1 standard action",
                  components: "V, S",
                  range: "Personal",
                  duration: "10 min./level",
                  savingThrow: "Will disbelief",
                  sr: false,
                  summary: "As disguise self, but alter the appearance as a swift action once per minute.",
                  desc: "This spell functions as disguise self, but you can alter your disguised appearance as a swift action once per minute without ending or recasting the spell. Each alteration can change any or all aspects of your appearance (height, weight, clothing, facial features) within the normal limits of the spell.",
                  source: "Ultimate Intrigue",
                  isPremium: true),

            .make("Anonymity",
                  school: "Illusion (Glamer)",
                  levels: "bard 3, sorcerer/wizard 3",
                  castingTime: "1 standard action",
                  components: "V, S",
                  range: "Personal",
                  duration: "1 hour/level",
                  savingThrow: "Will disbelief",
                  sr: false,
                  summary: "Observers forget your distinguishing features; descriptions given become vague and unhelpful.",
                  desc: "This spell causes you to become forgettable. Anyone who observes you for less than 1 minute forgets your specific features immediately afterward. Those who interact with you for longer remember only vague impressions (\"a medium-height person in dark clothes\") rather than identifiable details. Any description they provide to others is similarly unhelpful. The spell does not affect creatures who succeed on a Will save.",
                  source: "Ultimate Intrigue",
                  isPremium: true),

            .make("Call to Repentance",
                  school: "Enchantment (Compulsion) [Mind-Affecting]",
                  levels: "cleric 3, inquisitor 3",
                  castingTime: "1 standard action",
                  components: "V, S",
                  range: "Close (25 ft. + 5 ft./2 levels)",
                  duration: "1 round/level",
                  savingThrow: "Will negates",
                  sr: true,
                  summary: "Target is overwhelmed by guilt and cannot take offensive actions; ends if the target is attacked.",
                  desc: "You invoke divine condemnation, filling the target with crushing guilt. The target cannot make attacks, cast offensive spells, or take actions that would directly harm another creature. The target may still defend itself, move, or perform non-aggressive actions. If the target is attacked or takes damage, the spell immediately ends. Creatures without a moral compass (those immune to emotion effects) are immune.",
                  source: "Ultimate Intrigue",
                  isPremium: true),

            .make("Countless Eyes",
                  school: "Transmutation",
                  levels: "alchemist 3, druid 3, sorcerer/wizard 3",
                  castingTime: "1 standard action",
                  components: "V, S",
                  range: "Personal",
                  duration: "1 hour/level",
                  savingThrow: "No",
                  sr: false,
                  summary: "Extra eyes sprout over your body; cannot be flanked, +4 Perception, immune to frontal gaze attacks.",
                  desc: "Dozens of extra eyes sprout across your body, covering your back, sides, and limbs. You cannot be flanked for the duration of this spell. You gain a +4 competence bonus on Perception checks. You are immune to gaze attacks originating from the front hemisphere. You retain vulnerability to gaze attacks originating from behind or in blind spots if any exist.",
                  source: "Ultimate Intrigue",
                  isPremium: true),

            .make("Enthrall",
                  school: "Enchantment (Charm) [Mind-Affecting, Language-Dependent]",
                  levels: "bard 2, cleric 2, oracle 2",
                  castingTime: "1 round",
                  components: "V, S",
                  range: "Medium (100 ft. + 10 ft./level)",
                  duration: "Concentration + 1 round/level",
                  savingThrow: "Will negates",
                  sr: true,
                  summary: "Captivate an audience; those who fail are enraptured and react hostilely to any interruptions.",
                  desc: "Your words, music, or performance captivate an audience of any size within range. Those who fail their Will save stand (or sit) enraptured, paying rapt attention to you and ignoring other distractions. Enthralled creatures react with hostility toward anyone who attempts to interrupt the performance, though they do not attack. The spell ends if you stop performing or if enthralled creatures are attacked.",
                  source: "Ultimate Intrigue",
                  isPremium: true),

            .make("Forced Quiet",
                  school: "Abjuration",
                  levels: "bard 2, inquisitor 1",
                  castingTime: "1 standard action",
                  components: "V, S",
                  range: "Close (25 ft. + 5 ft./2 levels)",
                  duration: "1 round/level",
                  savingThrow: "Fortitude negates",
                  sr: true,
                  summary: "Target's voice becomes a whisper; cannot use verbal spell components or language-dependent effects.",
                  desc: "The target's voice is reduced to an inaudible whisper. The target cannot use language-dependent spell effects, cannot cast spells with verbal components, cannot activate command-word magic items, and cannot benefit from bardic performance abilities that require speech. Shouting, yelling, or other loud vocal acts are impossible. Deafened creatures are unaffected by this spell.",
                  source: "Ultimate Intrigue",
                  isPremium: true),

            .make("Investigative Mind",
                  school: "Divination",
                  levels: "bard 2, inquisitor 1, sorcerer/wizard 2",
                  castingTime: "1 standard action",
                  components: "V, S",
                  range: "Personal",
                  duration: "1 min./level",
                  savingThrow: "No",
                  sr: false,
                  summary: "+5 on all Knowledge checks; make untrained Knowledge checks; once per minute verify a deduction.",
                  desc: "Your mind sharpens into an analytical engine. You gain a +5 competence bonus on all Knowledge checks. You may make Knowledge checks on topics for which you have no ranks (treating them as untrained with a +5 bonus). Once per minute, you can ask the GM whether a specific logical deduction you have made is correct given information you have access to; the GM answers yes, no, or insufficient information.",
                  source: "Ultimate Intrigue",
                  isPremium: true),

            .make("Mask Dweomer",
                  school: "Illusion (Glamer)",
                  levels: "bard 1, witch 1, sorcerer/wizard 1",
                  castingTime: "1 standard action",
                  components: "V, S, M (a scrap of illusion-woven cloth)",
                  range: "Touch",
                  duration: "1 day/level",
                  savingThrow: "Will disbelief",
                  sr: false,
                  summary: "Disguise the aura of one spell or magic item to appear as a different spell of the same school.",
                  desc: "You disguise the magical aura of one touched spell effect or magic item, making it appear to detect as a different spell of the same school when subjected to detect magic or similar divination. You choose the false spell identity at time of casting. The mask does not change the actual effect of the item or spell, only its apparent aura. True seeing and similar high-level divinations see through the mask.",
                  source: "Ultimate Intrigue",
                  isPremium: true),

            .make("Murderous Command",
                  school: "Enchantment (Compulsion) [Mind-Affecting]",
                  levels: "cleric 1, inquisitor 1",
                  castingTime: "1 standard action",
                  components: "V",
                  range: "Close (25 ft. + 5 ft./2 levels)",
                  duration: "1 round",
                  savingThrow: "Will negates",
                  sr: true,
                  summary: "Compel target to make one melee attack against the nearest creature; –2 AC until next turn.",
                  desc: "You issue a murderous command that compels the target to attack the nearest creature (friend or foe) with a single melee attack. The target takes a –2 penalty to AC until the start of its next turn as it focuses on the commanded attack. The target uses its best available melee attack. If no creature is within melee reach, the target moves toward the nearest creature and attacks if it can reach.",
                  source: "Ultimate Intrigue",
                  isPremium: true),

            .make("Visualize Sequence",
                  school: "Divination",
                  levels: "bard 3, inquisitor 2, sorcerer/wizard 3",
                  castingTime: "1 minute",
                  components: "V, S",
                  range: "Personal",
                  duration: "Instantaneous",
                  savingThrow: "No",
                  sr: false,
                  summary: "Reconstruct events in a 20-ft. radius over the past 24 hours as a mental image sequence.",
                  desc: "You reconstruct events that took place within a 20-foot radius of your current location over the past 24 hours, receiving a silent mental image sequence. You see movement patterns, object placements, and physical interactions, but hear no sound. You cannot identify creatures by appearance unless you already know them. The images are accurate but edited to 1-minute intervals, so rapid events may be missed. Magical concealment that was active at the time is not pierced.",
                  source: "Ultimate Intrigue",
                  isPremium: true),
        ]

        for spell in spells {
            try await db.insertSpell(spell)
        }
    }

    private func seedUIRules() async throws {
        let rules: [RuleEntry] = [

            // MARK: - Ultimate Intrigue Rules (all isPremium: true)

            .make("Influence System",
                  category: "Ultimate Intrigue",
                  body: """
                  The Influence System provides a structured social framework for tracking NPC dispositions on a scale of 1 to 10. Each NPC has three key thresholds: Discovery (the minimum Influence needed to learn their secrets), Influence (the amount required to ask for standard favors), and Favor (the amount required to ask for significant or dangerous assistance).

                  Player characters accumulate Influence Points through successful social skill checks, completing quests meaningful to the NPC, or making gifts and sacrifices appropriate to the NPC's values. Influence Points can be spent to gain information at the Discovery threshold, request standard favors at the Influence threshold, or call in major favors at the Favor threshold. Betraying an NPC's trust resets their Influence score to 0.

                  This system is designed for multi-session political or investigation scenarios. Game Masters can track Influence for multiple NPCs simultaneously, creating a web of social relationships that shifts based on PC choices and world events.
                  """,
                  summary: "NPC disposition tracking (1–10 scale) with Discovery, Influence, and Favor thresholds for social play."),

            .make("Vigilante Dual Identity",
                  category: "Ultimate Intrigue",
                  body: """
                  The vigilante maintains two distinct identities: a social identity representing their mundane life, and a vigilante identity representing their costumed persona. Switching between identities requires 1 minute and access to an appropriate costume or disguise. A vigilante caught mid-switch (interrupted during the 1-minute transition) retains their current identity.

                  Magical detection respects the dual identity: detect thoughts, discern lies, zone of truth, and similar magic only reveal information consistent with the current identity. True seeing penetrates the disguise but not the mental partition — the vigilante's surface thoughts remain those of the current identity even under true seeing. Only mind-reading spells that explicitly probe deep memories can uncover the other identity.

                  The dual identity creates powerful storytelling opportunities: social talents (bribery, blackmail, political maneuvering) work only in social identity, while vigilante talents (combat tricks, infiltration, terrifying appearances) work only in vigilante identity. A vigilante caught using vigilante talents while in social identity temporarily loses access to all class features until they can establish a new secret identity.
                  """,
                  summary: "Social vs. vigilante identity; 1-min switch, magical detection respects current identity, talent split."),

            .make("Social Combat",
                  category: "Ultimate Intrigue",
                  body: """
                  Social Combat is a parallel combat system for debates, trials, negotiations, and political confrontations. Like physical combat, it uses Social Initiative (Charisma modifier + d20), Social Actions (Persuasion, Rhetoric, Mockery, and Distraction), and tracks Social HP (called Resolve) for each participant.

                  Social Attacks target an opponent's Resolve, which is equal to their Wisdom modifier + level. When a participant's Resolve reaches 0, they concede the social encounter — changing their position, backing down from a confrontation, or yielding to the winner's demands. Participants can attempt Social Attacks (Bluff, Diplomacy, Intimidate, and Perform checks, each with specific DCs) and Social Defenses (Sense Motive, opposed Bluff, or Intimidate counters).

                  The system is modular: Game Masters can apply it to courtroom scenes, political debates, tavern arguments, and lover's quarrels alike. It rewards investment in social skills without trivializing the outcomes of social encounters, and it allows non-combat-focused characters to shine in non-physical confrontations.
                  """,
                  summary: "Parallel combat system for social confrontations using Social Initiative, Resolve HP, and skill-based attacks."),

            .make("Heist Framework",
                  category: "Ultimate Intrigue",
                  body: """
                  The Heist Framework is a multi-stage planning system for complex infiltration operations such as burglaries, prison breaks, and political assassinations. Before the heist begins, players assign roles to their characters: Mastermind (plans the operation), Burglar (handles physical intrusion), Distraction (creates diversions), and Lookout (monitors threats). Additional roles can be created for larger parties.

                  Each stage of the heist requires specific skill checks from the assigned role. Failures do not end the heist but introduce Complications — guards become alert, timers accelerate, or unexpected obstacles appear. Partial successes bank as Contingency Points that can be spent later to mitigate Complications. A heist with more Contingency Points banked than Complications encountered is a clean success; the reverse means the party escapes but faces consequences.

                  This framework encourages pre-session planning, reward players who research their targets, and allow for dramatic improvisation when Complications pile up unexpectedly.
                  """,
                  summary: "Multi-stage infiltration framework with role assignments, skill checks, Complication tracking, and Contingency Points."),

            .make("Renown and Reputation",
                  category: "Ultimate Intrigue",
                  body: """
                  Renown and Reputation is a system for tracking a character's social standing across multiple factions simultaneously. Each faction maintains a separate Renown score (positive) and Infamy score (negative) for each PC. Renown is gained by completing faction-aligned tasks, public heroics, and political alliances; Infamy is gained by betrayals, criminal acts, or association with disreputable allies.

                  High Renown with a faction unlocks access to faction resources (safe houses, equipment, information, and backup), preferential NPC reactions, and reduced DCs for faction-related social checks. High Infamy with a faction opens different doors — criminal guilds, shadow markets, and certain underground political groups respond positively to Infamy — while simultaneously closing off legitimate faction access.

                  Characters can hold both high Renown and Infamy with different factions, creating compelling situations where they must navigate competing loyalties. Renown fades slowly over time if not maintained (–1 per month of inactivity with a faction), while Infamy is harder to remove, requiring active reputation rehabilitation.
                  """,
                  summary: "Faction standing tracked separately as Renown and Infamy; unlocks resources, affects NPC reactions and DCs."),
        ]

        for rule in rules {
            try await db.insertRule(rule)
        }
    }
}
