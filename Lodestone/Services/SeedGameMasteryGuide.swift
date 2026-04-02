import Foundation

private extension RuleEntry {
    static func make(
        _ title: String,
        category: String,
        body: String,
        summary: String,
        source: String = "Game Mastery Guide",
        isPremium: Bool = true
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
    func seedGameMasteryGuide() async throws {
        try await seedGMGRulesA()
        try await seedGMGRulesB()
        try await seedGMGRulesC()
        try await seedGMGMonsters()
    }

    private func seedGMGRulesA() async throws {
        let rules: [RuleEntry] = [

            // MARK: - Game Mastery

            .make("Chase Rules",
                  category: "Game Mastery",
                  body: """
                  Chase rules model dynamic pursuit scenes using a two-track system. A chase is divided into a series of obstacles — typically 8 to 10 cards arranged in two parallel lines, each card representing a physical or environmental challenge that must be overcome to advance. Participants roll skill checks against each obstacle's DC; success advances them one card forward, while failure means they stay in place or fall back.

                  At the start of a chase, each participant is placed on the board based on their position when the chase began. Each round, participants move up to two cards forward but must overcome each card's obstacles to do so. Cards specify one or two skill options — participants choose which skill to use, allowing players to leverage their character's strengths. A brick wall might be overcome by Climb or Acrobatics; a crowd of panicking civilians by Acrobatics or Diplomacy; a flooded alley by Swim or Knowledge (local).

                  When the quarry reaches the end of the track, they escape. When a pursuer reaches the same card as the quarry, they catch up. Alternate outcomes can be built into the track: a card at the end might offer a hidden exit for the quarry but not the pursuers, creating a branching resolution.

                  Combat during a chase is possible but complicated — participants on the same card can attack each other, but attacking costs one of their movement actions for the round. These rules replace initiative-based running which makes high-speed pursuit trivial for fast characters and impossible for slow ones.
                  """,
                  summary: "Model dynamic chases with a two-track obstacle card system where participants roll skills to advance.",
                  source: "Game Mastery Guide",
                  isPremium: true),

            .make("Dueling Rules",
                  category: "Game Mastery",
                  body: """
                  Formal dueling rules model the structured combat tradition common in aristocratic societies. A duel proceeds through four phases: challenge, preparation, engagement, and resolution.

                  Challenge: one party formally challenges another. The challenged party may accept, refuse (losing honor equal to 1d6 in social standing among peers), or name a champion. Seconds are named and terms negotiated — typically first blood, unconsciousness, or death. The challenged party chooses the time and place within 24 hours.

                  Preparation: both duelists make preparation checks (typically Sense Motive vs. Bluff, or appropriate Knowledge skills) to gain an edge. Success provides a +2 bonus during the engagement phase.

                  Engagement: the duel proceeds under strict rules — typically one attack per round, no flanking, no aids from seconds unless both parties agree. If the terms allow it, spells may be used. Each round, both duelists make initiative-modified attack rolls; the higher initiative acts first. The duel ends when one party concedes, is reduced to 0 hp, or fulfills the agreed termination condition.

                  Resolution: the loser (or their estate) pays any agreed stakes. Honor is adjudicated by the seconds. A duelist who cheats during the engagement loses all social standing with anyone who witnesses or hears a reliable account of the conduct.
                  """,
                  summary: "Formal duels proceed through challenge, preparation, engagement, and resolution phases with honor stakes.",
                  source: "Game Mastery Guide",
                  isPremium: true),

            .make("Haunts",
                  category: "Game Mastery",
                  body: """
                  Haunts are location-based supernatural threats with their own stat blocks. Unlike monsters, haunts are tied to a specific area and represent the residual psychic imprint of a traumatic event. They cannot be killed through conventional combat — they must be destroyed through understanding and countering the tragedy that created them.

                  A haunt stat block includes: CR (for XP purposes), alignment, trigger (what activates the haunt — usually passing through the area or performing a specific action), reset (how long before the haunt can activate again — typically 1 day), effect (what happens when the haunt activates — a haunting vision, a psychic attack, possessing a PC), and destruction (what must be done to permanently end the haunt — typically completing an action related to the original tragedy).

                  Haunts attack using their initiative modifier, rolled at the moment they activate. They typically manifest as immediate dramatic effects: furniture flies, walls weep blood, the temperature drops thirty degrees, ghostly figures re-enact their deaths. Mechanically, most haunts make either a single attack roll (for physical manifestations) or require saving throws from anyone in the area.

                  Positive energy deals damage to haunts (half from channeling, full from direct positive energy effects). This is typically the only way to "wound" a haunt without addressing its destruction condition. A particularly strong channel can suppress a haunt for days without permanently resolving it.
                  """,
                  summary: "Location-based supernatural threats with trigger/reset/effect/destruction mechanics, harmed by positive energy.",
                  source: "Game Mastery Guide",
                  isPremium: true),

            .make("Influence",
                  category: "Game Mastery",
                  body: """
                  Influence is a structured social encounter system for complex multi-NPC interactions such as political functions, trials, or negotiations where the characters must win over multiple people simultaneously. Each important NPC in the encounter has an Influence track — a series of boxes ranging from unfavorable to fully convinced.

                  At the start of an influence encounter, characters learn which NPCs are present and can observe them to discover their interests and weaknesses. Discovery checks (typically Knowledge or Perception) reveal an NPC's favored skills and the DC required to move them along their influence track. Each round, characters may attempt a persuasion check against one NPC using an appropriate skill, potentially advancing that NPC's attitude toward the party's goals.

                  NPCs have specific discovery DCs and persuasion skills — one NPC might respond to Diplomacy and Intimidate, while another requires Knowledge (nobility) and Perform (oratory). This prevents a single high-Diplomacy character from solving every social encounter alone. NPCs also have resistances (automatically fail certain skill types) and weaknesses (lower DCs with specific approaches).

                  The encounter ends when a majority of NPCs (or a specific target NPC) has been fully influenced, or when a time limit expires, or when the situation changes dramatically. Some influence encounters include pressure tracks that work against the party — a timer that causes NPCs to leave, events that shift NPC attitudes negatively, or rival NPCs attempting their own influence.
                  """,
                  summary: "Track NPC attitudes in social encounters with discovery and persuasion checks against individual influence tracks.",
                  source: "Game Mastery Guide",
                  isPremium: true),

            .make("Investment",
                  category: "Game Mastery",
                  body: """
                  The investment rules provide a framework for characters to purchase shares in businesses and receive ongoing income. Rather than simply spending gold on equipment, characters can invest in local enterprises — a tavern, a trading company, a mine, a merchant ship — and receive periodic returns.

                  Each investment has a cost (the price of purchasing a stake), a management skill (the check required to maintain the investment, typically Profession or a related skill), a weekly income (the base income when checks succeed), and an investment risk (events that can reduce or eliminate returns). To maintain returns, the investor must succeed on periodic management checks; failure may mean a bad week, a scandal, or an unexpected expense.

                  Investments scale with capital: a modest tavern investment might cost 200 gp and return 10 gp/week; a trading company stake might cost 2,000 gp and return 100 gp/week with higher variance. Some investments require ongoing attention from the character (a shop they manage themselves) while others are passive (a share in a larger enterprise managed by an NPC factor).

                  These rules work best in campaigns with significant downtime between adventures. They provide a reason for characters to care about the health and politics of the communities they operate in, and create interesting complications when the GM decides that an investment has encountered trouble requiring the characters' attention.
                  """,
                  summary: "Purchase shares in businesses with ongoing management checks to generate weekly income.",
                  source: "Game Mastery Guide",
                  isPremium: true),

            .make("Kingdom Building",
                  category: "Game Mastery",
                  body: """
                  Kingdom building rules allow characters to found and grow their own domain, transforming wilderness hexes into a functioning realm. The system proceeds through hexploration (scouting and claiming wilderness hexes), founding (establishing the first settlement), and expansion (building improvements, growing population, and managing political crises).

                  Each hex on a regional map is one unit of terrain to be claimed. Claiming a hex requires scouting it, then spending Build Points (BP) — the currency of kingdom management — to incorporate it. Build Points are generated by the kingdom's Economy score minus Consumption, and can be earned through taxation, trade, and resource extraction.

                  Kingdom statistics include Size (total hexes claimed), Population (derived from settlement buildings), Economy, Loyalty, and Stability. These three scores are checked periodically for random events; failure generates Unrest, which at high levels can cause instability, crime, secession, or revolt.

                  Settlement building uses a grid (standard 9-block for a city block) where players place buildings. Each building type modifies kingdom statistics: a Market improves Economy, a Barracks improves Stability, a Theater improves Loyalty. Buildings also generate special benefits for character play — a Caster's Tower allows the character to craft items at reduced cost, a Garrison allows recruitment of soldiers.

                  The system is designed for campaigns where the characters are also leaders, and tracks their leadership roles (Ruler, General, Treasurer, etc.) each providing passive bonuses to kingdom statistics.
                  """,
                  summary: "Found and grow a kingdom through hexploration, Build Points, settlement construction, and managing Economy/Loyalty/Stability.",
                  source: "Game Mastery Guide",
                  isPremium: true),
        ]
        for rule in rules { try await db.insertRule(rule) }
    }

    private func seedGMGRulesB() async throws {
        let rules: [RuleEntry] = [

            .make("Linked Initiatives",
                  category: "Game Mastery",
                  body: """
                  Linked Initiatives is a simplification designed to reduce the bookkeeping of large combats involving multiple monster groups. Rather than rolling initiative separately for every individual creature, all creatures of the same type in the same combat act on a single initiative count.

                  Under this rule, a combat against six goblins and two ogres has three initiative entries: the character group, the goblins as a group, and the ogres as a group. On the goblins' initiative, all six goblins act in sequence (or simultaneously, if the GM prefers to resolve their attacks at once). This dramatically reduces the number of initiative trackers in a large encounter.

                  Individual creatures within a linked group can still act in whatever order the GM chooses within that initiative count. This allows the GM to have front-line goblins attack before back-line archers take their shots without requiring separate initiative entries for each sub-group.

                  Optional refinement: when a creature in a linked group dies, it can be replaced by another of the same type without adjusting the initiative count. This prevents the initiative order from becoming stale as an encounter evolves. Linked initiatives work best in combat encounters with three or more distinct monster types, where individual initiative tracking creates significant administrative overhead.
                  """,
                  summary: "Monster groups share one initiative entry to simplify large combats with many enemies.",
                  source: "Game Mastery Guide",
                  isPremium: true),

            .make("Morale",
                  category: "Game Mastery",
                  body: """
                  Mass combat morale rules model the reality that armies rout long before they are annihilated. Each army in a mass combat encounter has a Morale score — a combination of training, leadership quality, fighting for a just cause, and the current state of the battle. When an army takes heavy casualties or faces catastrophic events (the death of a general, the shattering of an ally unit), it makes a Morale check.

                  Morale check DC begins at 15 and adjusts based on circumstances: fighting for home territory (+2), outnumbered (penalty proportional to ratio), general has the Inspiring Commander feat (+4), army has taken losses greater than 25% (–2), taken losses greater than 50% (–4), witnessing an ally unit rout (–2). The check is made by the army's commander using Charisma plus any relevant tactical bonuses.

                  Failure causes one of three outcomes depending on degree: Shaken (minor failure — army fights at –2 to all checks for the rest of the battle), Routed (significant failure — army retreats as fast as possible and cannot return to combat this battle), or Broken (catastrophic failure — army disperses entirely, ceasing to exist as a functional unit). Routing and broken armies can sometimes be rallied with a successful Rally check against a DC equal to the original failure DC.

                  GMs running campaigns with regular mass combat should track army morale as a persistent statistic that improves with victories and training, declines with defeats and poor treatment.
                  """,
                  summary: "Armies make Morale checks based on casualties and circumstances; failure causes Shaken, Routed, or Broken results.",
                  source: "Game Mastery Guide",
                  isPremium: true),
        ]
        for rule in rules { try await db.insertRule(rule) }
    }

    private func seedGMGRulesC() async throws {
        let rules: [RuleEntry] = [

            .make("Plague",
                  category: "Game Mastery",
                  body: """
                  Plague rules model disease outbreaks at the community level, beyond the individual disease mechanics of the Core Rulebook. When a dangerous contagion appears in a settlement, it becomes a community-scale threat tracked with infection rates, community effects, and treatment options.

                  A plague has four statistics: Infection Rate (percentage of the population exposed per week), Virulence (DC of the save to avoid infection), Lethality (damage dealt per failed save and duration), and Treatment (what knowledge and resources can reduce spread). Each week without effective intervention, the infection rate multiplies — a plague with a 10% infection rate untreated becomes 20% the following week, 40% the week after, and so on until the entire community has been exposed.

                  Community effects begin at 25% infection (–1 to all Loyalty and Economy checks as workers fall ill), worsen at 50% (–2; markets close, production halts), and become catastrophic at 75% (–4; settlement may collapse to a smaller size category as people flee). Settlement size directly affects available healing resources — smaller settlements have fewer clerics and less access to magical treatments.

                  Adventurers can intervene: identifying the plague's origin (Knowledge: Heal DC 20), establishing quarantine zones, finding a cure (a special adventure opportunity), or dealing with the supernatural source if the plague was deliberately introduced. Mass channeling of positive energy can reduce infection rates for that week but cannot cure a magical plague without additional measures.
                  """,
                  summary: "Track disease outbreaks at the community level with weekly infection rates, lethality, and community penalties.",
                  source: "Game Mastery Guide",
                  isPremium: true),

            .make("Pursuit",
                  category: "Game Mastery",
                  body: """
                  Pursuit rules model extended chases across wilderness or urban areas that play out over hours or days rather than the six-second rounds of the Chase rules. Pursuit is used when a quarry has a significant head start, when the terrain makes quick overtaking impossible, or when the chase spans a journey of meaningful narrative length.

                  Pursuit uses a Progress track with a set number of steps between the pursuer and quarry. Each period (hour, day, or whatever scale suits the fiction), both groups make a Progress roll — typically Survival (for wilderness tracking), Knowledge (local) (for urban pursuit), or Ride/Handle Animal (for mounted pursuit). The results are compared: if the pursuer scores higher, they gain a step; if the quarry scores higher, they gain a step. Ties result in no change.

                  Quarries can attempt to obscure their trail (adding to the pursuit DC), set up ambushes (triggering a combat encounter if the pursuer catches up at that step), or use terrain features (a swamp, a mountain pass) to impose penalties on pursuit. Pursuers can use shortcut knowledge to skip steps, employ tracking magic, or recruit local guides.

                  The pursuit ends when the Progress track reaches zero (quarry caught) or the track's end (quarry escapes). If the quarry reaches the end with a three-step lead, they have shaken their pursuers entirely and cannot be found by normal means.
                  """,
                  summary: "Extended pursuit across wilderness or urban areas over hours or days, resolved with periodic skill checks on a Progress track.",
                  source: "Game Mastery Guide",
                  isPremium: true),

            .make("Research",
                  category: "Game Mastery",
                  body: """
                  Library research rules provide a structured system for characters to uncover information from written sources rather than simply making Knowledge checks. Research is particularly appropriate for mysteries, historical investigations, and scholarly pursuits where the information should be earned over time rather than provided in a single die roll.

                  Each library has a Research Capacity — the total Knowledge Points (KP) available before the library is exhausted — and a Research Check DC. Characters spend time (typically one period per day) making Research checks using any relevant Knowledge skill. Success generates KP equal to the amount by which the check succeeded. Failure generates 1 KP (representing partial progress through unhelpful volumes).

                  Libraries also have specific sections that require different Knowledge skills to navigate — a history library might contain arcane lore in older texts that require Arcana instead of History to interpret. GMs can create research complications: incomplete collections requiring cross-referencing with a second library, texts in ancient languages requiring Linguistics checks, or restricted sections with higher DCs.

                  As characters accumulate KP toward a discovery threshold, the GM provides clues — one per threshold reached. The final clue is always the most important revelation. This ensures the research process feels like a genuine investigation rather than a waiting game. Characters with relevant Profession (librarian or scribe) bonuses, the Lore Seeker feat, or access to magical research aids gain bonuses to Research checks.
                  """,
                  summary: "Spend time in libraries making Knowledge checks to accumulate Knowledge Points and unlock discovered information.",
                  source: "Game Mastery Guide",
                  isPremium: true),

            .make("Spellbooks (Unusual Variants)",
                  category: "Game Mastery",
                  body: """
                  Several unusual spellbook variants provide alternative ways for wizards to store and access their spells, each with distinct mechanical and narrative implications.

                  Blessed Books are pre-prepared magical tomes that hold more spells per page (10 spells per page rather than 1) and cannot be destroyed by acid, fire, or dispel magic effects. They are worth 12,500 gp and are typically jealously guarded artifacts. A wizard who loses a blessed book has lost a treasure of remarkable power.

                  Formula Books are used by alchemists to record their extracts, functioning identically to wizard spellbooks for that class. Some alchemists encode their formula books with ciphers (requiring a Linguistics check to read without the key) or bind them with magical locks.

                  Spell Lattices are crystalline memory-storage devices that function as spellbooks for sorcerers, oracles, and other spontaneous casters who wish to retain access to spells they know but no longer have memorized — typically after retraining. A spell lattice holds up to 10 spells and allows a caster to spend a full-round action to retrieve a specific spell into their active known list, swapping it with a currently known spell. This variant requires GM approval and is best used in high-magic campaigns.

                  Psionic Codexes serve as spellbooks for classes that use psychic magic, and are psychically locked — only the creator can read them without a DC 25 Spellcraft check.
                  """,
                  summary: "Blessed books, formula books, and spell lattices are variant spellbook formats with different storage and accessibility rules.",
                  source: "Game Mastery Guide",
                  isPremium: true),

            .make("Tournaments",
                  category: "Game Mastery",
                  body: """
                  Tournament rules provide structured competitive events covering three common forms: melee tournaments, archery tournaments, and jousting. Each uses skill-based resolution to determine the victor over multiple rounds of competition.

                  Jousting proceeds in three passes per pair. Each jouster makes an attack roll (modified by Ride, Weapon Focus, and their mount's speed bonus) against a DC of 15 + opponent's relevant modifiers. A hit scores points based on the quality of the strike (1 point for a glancing blow, 2 for a solid hit, 3 for a breaking hit that shatters the lance). Unhorsing an opponent (a hit by 10 or more when opponent is below maximum points) ends the match immediately. Three-pass scores are totaled; the higher scorer advances.

                  Melee tournaments use a modified combat framework where the objective is points (usually 3 touches to head, body, or limbs) rather than killing. Combatants use blunted weapons or make attacks at –4 to avoid lethal damage; hp damage is cosmetic until a combatant is reduced to 0, at which point they are eliminated. Tournament rounds proceed until one participant remains.

                  Archery tournaments use a series of ranged attack rolls against paper-and-straw targets at increasing distances. Each distance has a DC; success scores points equal to how much the attack beat the DC, to a maximum of 10 per target. Five targets per round at four distances; the highest scorer over four rounds wins.
                  """,
                  summary: "Jousting, melee, and archery tournaments use structured multi-round scoring systems to determine champions.",
                  source: "Game Mastery Guide",
                  isPremium: true),

            .make("Traps (Complex)",
                  category: "Game Mastery",
                  body: """
                  Complex trap rules model multi-phase trap systems that pose sustained threats rather than single-activation hazards. A complex trap has an initiative modifier and acts on its own turn in combat, making it an ongoing environmental challenge rather than a one-time effect.

                  Complex traps have multiple components that operate independently: an initial trigger mechanism, ongoing effect elements (spikes that sweep across the room each round, a rising water level, a ceiling that descends 5 feet per round), a disabling mechanism (multiple switches, each requiring a separate Disable Device check), and optionally a linked component (a second trap that activates if the first is disabled incorrectly).

                  Each round the trap is active, it makes an "attack" against all creatures in its area — either an attack roll using its initiative modifier, or a forced saving throw. The trap continues activating until all its components are disabled or destroyed. Components have their own AC and HP values for destruction purposes.

                  Reset mechanisms determine whether a trap automatically resets after being sprung (mechanical traps often do; magical traps may require re-powering). Some complex traps have manual reset mechanisms that can be triggered to reactivate a trap the characters have already disabled, making them useful for controlling access to an area.

                  Linking traps creates dungeon environments that punish the "disarm everything" approach — some traps are better sprung deliberately (using a mechanism to harmlessly trigger them before entering the room) than disabled (which triggers the linked trap).
                  """,
                  summary: "Complex traps act on their own initiative, have multi-phase components, and require multiple Disable Device checks.",
                  source: "Game Mastery Guide",
                  isPremium: true),

            .make("Weather",
                  category: "Game Mastery",
                  body: """
                  Detailed weather generation provides GMs with tables for creating realistic weather patterns that affect travel, combat, and exploration. Weather is generated by climate zone (arctic, subarctic, temperate, subtropical, tropical) and season, producing temperature ranges, precipitation probability, and special conditions.

                  Weather conditions affect characters through a series of mechanical overlays: fog reduces visibility and imposes penalties on Perception and ranged attacks; high winds impose movement penalties and can extinguish unprotected flames; heavy rain applies a –4 penalty on Perception checks, ranged attack rolls, and to Survival tracking checks; extreme cold below –20°F requires Fortitude saves every 10 minutes to avoid nonlethal damage.

                  Seasonal weather variation is provided for each climate zone: summer in temperate zones typically produces mild temperatures and occasional afternoon thunderstorms; winter produces snow, ice, and bitter cold that complicates overland travel and reduces the efficiency of campsites.

                  Special weather events — blizzards, hurricanes, sandstorms, tornadoes — have their own encounter tables and mechanical effects. A tornado deals 1d8 lethal damage per round in its path and requires a DC 15 Strength check each round to avoid being swept up; a sandstorm imposes the blinded condition until goggles or a face wrap are used and damages equipment through sand infiltration.

                  Weather tracking rewards GMs who maintain seasonal consistency: a campaign that notes the weather daily creates a living world where travel decisions and resource management matter in ways that a weatherless campaign cannot replicate.
                  """,
                  summary: "Generate realistic weather by climate and season; weather conditions impose mechanical penalties on travel and combat.",
                  source: "Game Mastery Guide",
                  isPremium: true),
        ]

        for rule in rules {
            try await db.insertRule(rule)
        }
    }

    private func seedGMGMonsters() async throws {
        let monsters: [MonsterEntry] = [

            // MARK: - Game Mastery Guide Monsters

            .make("Caryatid Column",
                  cr: "3",
                  type: "Construct",
                  size: "Medium",
                  alignment: "N",
                  hp: "36 (3d10+20)",
                  ac: 17,
                  speed: "30 ft.",
                  attacks: "Slam +5 (1d6+3), or masterwork longsword +6 (1d8+3)",
                  specialAbilities: "DR 5/—, hardness 8, shatter weapons (Str check DC 14 or weapon breaks on hit), freeze (appears as decorative column while motionless), construct traits",
                  environment: "Ruins, dungeons, and ancient temples",
                  summary: "A carved stone warrior statue that animates to defend treasure or territory, capable of breaking the weapons of those who strike it.",
                  desc: "Caryatid columns are magical constructs designed to protect important locations by disguising themselves as architectural decoration. Carved in the likenesses of humanoid warriors, they stand in pairs or groups at the entrances to tombs, treasure vaults, and temple inner sanctums, indistinguishable from normal stonework until something they are commanded to guard is threatened. When they animate, their stone bodies resist weapon damage and their strikes can shatter less-than-masterwork weapons outright, making them particularly devastating against poorly equipped adventurers who expected a routine dungeon.",
                  source: "Game Mastery Guide",
                  isPremium: true),

            .make("Decapus",
                  cr: "4",
                  type: "Aberration",
                  size: "Large",
                  alignment: "CE",
                  hp: "47 (5d8+25)",
                  ac: 15,
                  speed: "10 ft., climb 20 ft.",
                  attacks: "10 tentacles +7 (1d4+4 plus grab), bite +7 (1d6+4)",
                  specialAbilities: "Constrict (1d4+4), grab, camouflage (appears as leafy tree, DC 20 Perception to see through), all-around vision, darkvision 60 ft.",
                  environment: "Temperate and warm forests",
                  summary: "A ten-tentacled forest predator that hangs motionless from branches, disguised as a leafy tree until prey walks beneath it.",
                  desc: "The decapus is one of nature's most patient and deceptive predators. It has evolved the remarkable ability to arrange its ten flexible limbs and mottled green-brown body to mimic a leafy tree or large shrub, hanging motionlessly for hours or days waiting for prey to pass below. When a suitable target comes within reach, all ten tentacles strike simultaneously, attempting to grab and constrict the victim before it can react. The decapus then retreats up into the canopy with its meal, where it can eat in safety. Travelers who notice the woods around them contain unusually perfect-looking trees should be very cautious.",
                  source: "Game Mastery Guide",
                  isPremium: true),

            .make("Doppelganger",
                  cr: "3",
                  type: "Monstrous Humanoid",
                  size: "Medium",
                  alignment: "N",
                  hp: "26 (4d10+4)",
                  ac: 14,
                  speed: "30 ft.",
                  attacks: "2 slams +6 (1d6+2)",
                  specialAbilities: "Detect thoughts (DC 13 Will), change shape (any Small or Medium humanoid, alter self), +4 racial bonus to Bluff when disguised as a specific individual, immunity to sleep and charm, darkvision 60 ft.",
                  environment: "Any settled area",
                  summary: "A shapeshifting humanoid that can perfectly mimic any person it has studied, using detect thoughts to maintain the deception.",
                  desc: "Doppelgangers are among the most dangerous infiltrators in the known world, not because of their raw power but because of the paranoia they generate. A suspected doppelganger in a court or army can shatter trust and turn allies against each other more effectively than any conventional attack. They prefer to replace important individuals — military commanders, nobles, wealthy merchants — and manipulate events from the inside. Most doppelgangers are mercenaries, selling their mimicry to the highest bidder rather than pursuing any agenda of their own, which makes their motives particularly difficult to predict.",
                  source: "Game Mastery Guide",
                  isPremium: true),

            .make("Haunted One",
                  cr: "2",
                  type: "Undead",
                  size: "Medium",
                  alignment: "CE",
                  hp: "22 (4d8+4)",
                  ac: 12,
                  speed: "30 ft.",
                  attacks: "Corrupting touch +4 (1d6+2 plus haunt manifestation)",
                  specialAbilities: "Haunt manifestation (1/day, replicates effect of attached haunt within 30 ft.), channel resistance +2, incorporeal touch (1/day, passes through armor), undead traits, darkvision 60 ft.",
                  environment: "Ruins, cemeteries, and haunted locations",
                  summary: "An undead creature infused with the power of a nearby haunt, capable of manifesting haunt effects at will while animated.",
                  desc: "Haunted ones are animated corpses or spirits that have absorbed the psychic energy of a nearby haunt, creating an intimate bond between creature and location. They cannot move more than 300 feet from the haunt they are connected to, but within that range they can project the haunt's effects as a weapon, manifesting the location's traumatic past against the living. Dealing with a haunted one typically requires addressing the underlying haunt — simply destroying the creature only delays the problem, as the haunt will animate a new corpse within days. The haunted one is best understood as the haunt's sword arm.",
                  source: "Game Mastery Guide",
                  isPremium: true),

            .make("Skulk",
                  cr: "1",
                  type: "Humanoid (skulk)",
                  size: "Medium",
                  alignment: "NE",
                  hp: "7 (1d8+3)",
                  ac: 13,
                  speed: "30 ft.",
                  attacks: "Short sword +1 (1d6+1), or hand crossbow +2 (1d4)",
                  specialAbilities: "Camouflage (can attempt Stealth in any conditions without cover), surprise attack (target flat-footed vs. skulk for first round unless aware of their presence), +8 racial bonus to Stealth, darkvision 60 ft.",
                  environment: "Underground cities, sewers, and urban underbellies",
                  summary: "A pale, hairless humanoid that lives in the dark margins of civilization, using supernatural camouflage to stalk and ambush the unwary.",
                  desc: "Skulks are the ghost people of the urban underground, hairless pale-skinned humanoids who have evolved over generations in the lightless spaces beneath cities. Their most remarkable ability is a form of active camouflage — they do not become invisible, but their skin shifts color and pattern to match their surroundings so rapidly and precisely that they can hide in open space as long as they remain motionless or move slowly. Most people who are killed by skulks never know they were in danger. Skulk communities (called drifts) live by scavenging, theft, and occasional predation on lone travelers in their territory.",
                  source: "Game Mastery Guide",
                  isPremium: true),
        ]

        for monster in monsters {
            try await db.insertMonster(monster)
        }
    }
}
