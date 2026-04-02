import Foundation

// GM Core (2023 Remaster) — Premium
extension SeedDataBuilder {
    func seedGMCore() async throws {
        let rules: [RuleEntry] = [

            // MARK: - Encounter Building & XP

            .init(id: seededUUID("EncounterBuildingGMC"), title: "Encounter Building",
                  category: "GM Rules",
                  summary: "Guidelines for creating balanced combat encounters using XP budgets.",
                  body: """
                  Building an encounter starts with an XP budget determined by the threat level you want:

                  Threat Level        | XP Budget (4 PCs)
                  Trivial             | 40 or less
                  Low                 | 60
                  Moderate            | 80
                  Severe              | 120
                  Extreme             | 160

                  Creature XP Values (relative to party level):
                  - Party Level -4: 10 XP
                  - Party Level -3: 15 XP
                  - Party Level -2: 20 XP
                  - Party Level -1: 30 XP
                  - Party Level +0: 40 XP
                  - Party Level +1: 60 XP
                  - Party Level +2: 80 XP
                  - Party Level +3: 120 XP
                  - Party Level +4: 160 XP

                  For parties larger or smaller than 4, adjust the XP budget by adding or subtracting the amount listed for each additional or missing character. A 5th-level party of 5 characters facing a Moderate encounter would have a budget of 100 XP (80 + 20).
                  """,
                  isPremium: true, source: "GM Core"),

            .init(id: seededUUID("XPAwardsGMC"), title: "XP Awards",
                  category: "GM Rules",
                  summary: "How to award experience points for encounters, hazards, and accomplishments.",
                  body: """
                  After an encounter, each PC earns XP based on the creatures they defeated and hazards they overcame:

                  Creature XP: Use the same XP values from encounter building. Each PC receives the full amount.

                  Accomplishment XP: The GM can award XP for completing story goals, overcoming non-combat challenges, or excellent roleplaying. Typical awards:
                  - Minor Accomplishment: 10 XP (completing a small side quest)
                  - Moderate Accomplishment: 30 XP (completing a significant objective)
                  - Major Accomplishment: 80 XP (completing a major story milestone)

                  Leveling Up: A character levels up after accumulating 1,000 XP. After leveling, reset XP to 0 (keeping any excess).
                  """,
                  isPremium: true, source: "GM Core"),

            .init(id: seededUUID("TreasureByLevelGMC"), title: "Treasure by Level",
                  category: "GM Rules",
                  summary: "Guidelines for distributing treasure appropriate to each character level.",
                  body: """
                  The treasure system ensures characters gain wealth at an appropriate rate. Each level has a recommended total value of treasure the party should receive.

                  Level | Total Party Treasure | Permanent Items              | Currency
                  1     | 175 gp              | 2nd: 2, 1st: 2               | 40 gp
                  2     | 300 gp              | 3rd: 2, 2nd: 2               | 70 gp
                  3     | 500 gp              | 4th: 2, 3rd: 2               | 120 gp
                  4     | 850 gp              | 5th: 2, 4th: 2               | 200 gp
                  5     | 1,350 gp            | 6th: 2, 5th: 2               | 320 gp
                  6     | 2,000 gp            | 7th: 2, 6th: 2               | 500 gp
                  7     | 2,900 gp            | 8th: 2, 7th: 2               | 720 gp
                  8     | 4,000 gp            | 9th: 2, 8th: 2               | 1,000 gp
                  9     | 5,700 gp            | 10th: 2, 9th: 2              | 1,400 gp
                  10    | 8,000 gp            | 11th: 2, 10th: 2             | 2,000 gp

                  Permanent items include weapons, armor, and consumable items of lasting value. The currency column represents coins and gems.
                  """,
                  isPremium: true, source: "GM Core"),

            // MARK: - Hazards

            .init(id: seededUUID("BasicHazardsGMC"), title: "Hazards: Simple Hazards",
                  category: "Hazards",
                  summary: "Simple hazards activate once and are then disabled or bypassed.",
                  body: """
                  A simple hazard triggers once and doesn't act on its own initiative. Once triggered, it may deal damage, create an effect, or both. After triggering, a simple hazard can typically be avoided or disarmed.

                  Common Simple Hazards:
                  - Hidden Pit (Level 0): A covered pit. Perception DC 18 to notice. Creatures that step on it fall 10 feet, taking 1d6 bludgeoning damage. Disable: Thievery DC 15 to jam the lid.
                  - Poisoned Lock (Level 1): A lock coated with contact poison. Thievery DC 17 to Pick the Lock triggers a Fortitude save (DC 19) or take 1d8 poison damage and be sickened 1.
                  - Spear Launcher (Level 2): A pressure plate that launches a spear. Attack: +12 ranged, 2d6+5 piercing. Disable: Thievery DC 18 to disable the launcher.

                  Building Simple Hazards: Choose a level, then assign a Stealth DC for noticing it, a disable skill and DC, and an effect (attack roll and damage, or save DC and effect).
                  """,
                  isPremium: true, source: "GM Core"),

            .init(id: seededUUID("ComplexHazardsGMC"), title: "Hazards: Complex Hazards",
                  category: "Hazards",
                  summary: "Complex hazards act on their own initiative and require multiple actions to disable.",
                  body: """
                  A complex hazard rolls initiative and acts each round, much like a creature. It typically has multiple components that must be individually disabled.

                  Complex Hazard Components:
                  - Routine: The hazard's actions each round. Most complex hazards get 1 action per round.
                  - Hardness, HP, and Thresholds: Complex hazards can be attacked. They may have Hardness reducing damage. Some have a disable threshold—once reduced below a certain HP, they stop functioning.
                  - Reset: Some complex hazards reset after a period, reactivating unless permanently disabled.

                  Example — Flooding Room (Level 5, Complex):
                  Stealth +12 (trained). Initiative +12. Routine: Each round, water rises 2 feet. Creatures in waist-deep water are flat-footed. Above head: must Swim (Athletics DC 22) or begin drowning. Disable: Thievery DC 24 (3 successes) to disable the mechanism, or Athletics DC 26 to force the drain open.
                  """,
                  isPremium: true, source: "GM Core"),

            .init(id: seededUUID("TrapsGMC"), title: "Traps",
                  category: "Hazards",
                  summary: "Traps are hazards constructed intentionally to harm or hinder intruders.",
                  body: """
                  Traps are a subset of hazards that are constructed or placed deliberately. They can be either simple or complex.

                  Detecting Traps: Most traps have a Stealth modifier or DC for detection. Characters use Perception (or sometimes a specific Recall Knowledge) to notice a trap.

                  Disabling Traps: Typically requires a Thievery check, though some traps require Crafting, Arcana, or other skills. The disable DC is listed in the hazard's stat block.

                  Triggering Traps: Each trap has a trigger condition. Common triggers:
                  - A creature enters a specific square (pressure plate)
                  - A creature opens a door or container (trip wire)
                  - A creature touches a specific object
                  - A creature fails to provide a password or token

                  Trap Design Guidelines: When creating traps, use the hazard building rules. Set a level, determine DCs from the difficulty table, choose an appropriate trigger, and assign damage or effects from the damage table.
                  """,
                  isPremium: true, source: "GM Core"),

            // MARK: - Exploration & Downtime

            .init(id: seededUUID("ExplorationModeGMC"), title: "Exploration Mode",
                  category: "GM Rules",
                  summary: "Rules for running exploration between encounters, including activities and movement.",
                  body: """
                  Exploration mode covers travel, investigation, and other activities outside of encounters. During exploration, time is measured loosely—minutes or hours rather than rounds.

                  Exploration Activities: Each character chooses an exploration activity:
                  - Avoid Notice: Use Stealth for initiative. You're hidden from enemies at the start of encounters.
                  - Defend: You're on guard. Use Perception for initiative and gain a +2 circumstance bonus to AC for the first round.
                  - Detect Magic: Continuously sense magical auras around you (as 1st-rank detect magic).
                  - Hustle: Move at double Speed, but can only sustain for a number of minutes equal to your Constitution modifier x 10.
                  - Investigate: Use Recall Knowledge checks as you travel, gaining information about the area.
                  - Scout: Watch for danger ahead. Grant allies a +1 circumstance bonus to initiative.
                  - Search: Actively look for hidden things. Automatically detect anything with a DC up to your Perception DC - 10.

                  Travel Speed: On foot, characters cover about 4 miles per hour at a Stride. Hustling covers 8 miles per hour for limited durations.
                  """,
                  isPremium: true, source: "GM Core"),

            .init(id: seededUUID("DowntimeActivitiesGMC"), title: "Downtime Activities",
                  category: "GM Rules",
                  summary: "Activities characters can pursue between adventures during downtime.",
                  body: """
                  Downtime represents extended periods between adventures. Characters can pursue long-term activities:

                  Craft: Create items using Crafting skill. Requires a formula, raw materials (half item price), and time. After 4 days of setup, make a Crafting check to determine progress. Additional days reduce remaining cost at your level-based earn income rate.

                  Earn Income: Use a skill (Crafting, Lore, Performance) to earn money. The GM sets a task level and you attempt a check. Success earns income based on your level and the task level.

                  Learn a Spell: Spend time and money to add a spell to your repertoire or spellbook. Cost: varies by spell rank. Requires access to the spell and a successful skill check.

                  Retrain: Spend downtime to change a feat, skill, or class feature. Typically requires 1 week of downtime per level of the feature being retrained, and may require a teacher.

                  Treat Disease: Use Medicine to help someone recover from a disease. This requires long-term care over multiple days with periodic checks.

                  Subsist: Use Society or Survival to earn enough to get by. On a success, you can provide subsistence for yourself and one additional creature.
                  """,
                  isPremium: true, source: "GM Core"),

            // MARK: - Afflictions

            .init(id: seededUUID("AfflictionDiseasesGMC"), title: "Afflictions: Diseases",
                  category: "Afflictions",
                  summary: "Diseases progress through stages and require saving throws to resist and recover.",
                  body: """
                  Diseases are afflictions that worsen over time. When first exposed, you attempt a saving throw. On a failure, you contract the disease at stage 1.

                  Progression: At each interval (usually 1 day), attempt another saving throw:
                  - Critical Success: Reduce stage by 2 (minimum 0; at 0, disease is cured)
                  - Success: Reduce stage by 1
                  - Failure: Increase stage by 1
                  - Critical Failure: Increase stage by 2

                  Example — Sewer Plague (Level 3, Disease):
                  Saving Throw: Fortitude DC 19. Onset: 1 day. Stage 1: drained 1 and fatigued (1 day). Stage 2: drained 2 and sickened 1 (1 day). Stage 3: drained 3, sickened 1, and all Speeds are halved (1 day).

                  Example — Malaria (Level 5, Disease):
                  Saving Throw: Fortitude DC 22. Onset: 10 days. Stage 1: sickened 1 and fatigued (1 day). Stage 2: enfeebled 1, sickened 1, and fatigued (1 day). Stage 3: enfeebled 2, sickened 2, and fatigued (1 day). Stage 4: unconscious (1 day).
                  """,
                  isPremium: true, source: "GM Core"),

            .init(id: seededUUID("AfflictionPoisonsGMC"), title: "Afflictions: Poisons",
                  category: "Afflictions",
                  summary: "Poisons deal damage and impose conditions, progressing through stages on failed saves.",
                  body: """
                  Poisons are afflictions that usually take effect quickly. When exposed (often by injury, ingestion, contact, or inhaled), you attempt a saving throw.

                  Poison Types:
                  - Contact: Takes effect when touching the poison (Fortitude save)
                  - Ingested: Takes effect when consumed (Fortitude save)
                  - Inhaled: Takes effect when breathing the poison (Fortitude save)
                  - Injury: Delivered via a weapon Strike or similar (Fortitude save, only on damage)

                  Example — Arsenic (Level 1, Ingested):
                  Saving Throw: Fortitude DC 15. Onset: 10 minutes. Maximum Duration: 5 hours. Stage 1: 1d4 poison damage and sickened 1 (1 hour). Stage 2: 1d6 poison damage and sickened 2 (1 hour). Stage 3: 2d6 poison damage and sickened 3 (1 hour).

                  Example — Giant Scorpion Venom (Level 6, Injury):
                  Saving Throw: Fortitude DC 22. Maximum Duration: 6 rounds. Stage 1: 1d10 poison damage and enfeebled 1 (1 round). Stage 2: 2d10 poison damage and enfeebled 1 (1 round). Stage 3: 2d10 poison damage and enfeebled 2 (1 round).

                  Virulent Poisons: These are especially potent. You need two consecutive successes to reduce a virulent affliction's stage by 1.
                  """,
                  isPremium: true, source: "GM Core"),

            .init(id: seededUUID("CursesGMC"), title: "Curses",
                  category: "Afflictions",
                  summary: "Curses are persistent magical afflictions that can only be removed by specific means.",
                  body: """
                  Curses are magical afflictions that don't progress like diseases or poisons. Instead, a curse imposes a persistent effect until removed.

                  Key Properties:
                  - Curses can't be removed by natural recovery or normal healing
                  - Counteract checks (using Remove Curse or similar effects) can end a curse
                  - The counteract level and DC are based on the curse's level

                  Example — Curse of Slumber (Level 2):
                  Saving Throw: Will DC 18. Effect: The cursed creature must attempt a DC 18 Will save whenever it tries to rest. On a failure, it sleeps fitfully and doesn't recover any Hit Points or reduce the fatigued condition.

                  Example — Curse of Lost Time (Level 7):
                  Saving Throw: Will DC 25. Effect: Each day, the cursed creature ages 1 year. Remove Curse or similar magic can end this curse. Years aged by the curse are reversed when it ends.

                  Counteracting Curses: To counteract a curse, you must succeed at a counteract check. The counteracting effect's counteract level must be at least equal to the curse's counteract level. Your counteract modifier must beat the curse's DC.
                  """,
                  isPremium: true, source: "GM Core"),

            .init(id: seededUUID("HauntsGMC"), title: "Haunts",
                  category: "Hazards",
                  summary: "Haunts are hazards created by restless spirits or psychic imprints.",
                  body: """
                  Haunts are a special type of hazard. Rather than being mechanical traps, they are manifestations of spiritual anguish or supernatural phenomena tied to a location.

                  Detecting Haunts: Haunts can be detected with Perception or Occultism. Some haunts can only be detected with specific knowledge or under certain conditions (e.g., at night, by creatures of a specific ancestry).

                  Disabling Haunts: Many haunts can be temporarily disabled with Occultism, Religion, or by addressing the haunt's unfinished business. A haunt that is disabled but not permanently put to rest will reset after a period (typically 1 hour or 1 day).

                  Permanently Ending a Haunt: Most haunts can only be permanently ended by resolving the situation that caused the haunt—burying remains, avenging a murder, completing an unfinished task, etc.

                  Example — Phantom Bells (Level 3, Haunt):
                  Stealth DC 20. Trigger: A creature enters the belltower. Effect: Spectral bells ring deafeningly. All creatures within 30 feet must attempt a DC 20 Fortitude save or become deafened for 1 minute (1 round on a success). Disable: Religion DC 18 (trained) to consecrate the area, or Occultism DC 18 (trained) to disperse the spiritual energy.
                  """,
                  isPremium: true, source: "GM Core"),

            // MARK: - Special Encounter Types

            .init(id: seededUUID("RunningEncountersGMC"), title: "Running Encounters",
                  category: "GM Rules",
                  summary: "Advice for running combat encounters, including initiative, terrain, and pacing.",
                  body: """
                  Running encounters smoothly is a core GM skill. Key principles:

                  Initiative: Have players roll initiative using Perception by default. Allow alternate skills when appropriate (Stealth for sneaking, Deception for social ambushes). Resolve ties: higher modifier goes first; if still tied, GM decides.

                  Terrain and Environment: Use interesting terrain to make encounters dynamic:
                  - Difficult Terrain: Costs 5 extra feet per 5 feet of movement.
                  - Greater Difficult Terrain: Costs 10 extra feet per 5 feet.
                  - Hazardous Terrain: Damages creatures entering or starting their turn in it.
                  - Cover: Standard cover grants +2 AC; greater cover grants +4 AC.

                  Pacing: Keep combat moving. If a player takes too long, gently prompt them. Consider a soft timer of 1-2 minutes per turn for complex situations. Summarize NPC turns quickly.

                  Ending Encounters: Not every encounter must end in total defeat. Enemies may flee, surrender, or negotiate. Give players XP for overcoming the encounter regardless of how it ends.
                  """,
                  isPremium: true, source: "GM Core"),

            .init(id: seededUUID("SocialEncountersGMC"), title: "Social Encounters",
                  category: "GM Rules",
                  summary: "Structured rules for running social encounters using influence and negotiation.",
                  body: """
                  Social encounters use a structured system to resolve negotiations, debates, and other social challenges.

                  Influence: A social encounter where PCs try to change an NPC's attitude or convince them to act.
                  1. Determine the NPC's initial attitude (hostile, unfriendly, indifferent, friendly, helpful).
                  2. Set Discovery DCs: PCs can learn the NPC's preferences, weaknesses, and biases through Perception, Society, or appropriate Lore checks.
                  3. Set Influence DCs: Based on the NPC's level and Will DC. PCs attempt Diplomacy, Deception, Intimidation, or other skills.
                  4. Track Influence Points: Each successful check earns 1 point (critical success: 2). Each NPC requires a threshold of points to shift attitude by one step.

                  Negotiation: For formal negotiations, structure rounds where each side makes offers and counteroffers. Use Diplomacy to make requests, Deception to bluff, and Sense Motive to detect dishonesty.

                  Failing Forward: Even failed social encounters should advance the story. A failed negotiation might mean worse terms rather than no deal at all.
                  """,
                  isPremium: true, source: "GM Core"),

            .init(id: seededUUID("ChasesGMC"), title: "Chases",
                  category: "GM Rules",
                  summary: "Rules for running chase scenes as a series of obstacles and skill checks.",
                  body: """
                  A chase is a special encounter where one group pursues another through a series of obstacles.

                  Chase Structure:
                  1. Set the course: Create 4-6 obstacles, each requiring a specific skill check to overcome.
                  2. Roll initiative normally.
                  3. Each round, characters attempt to overcome the current obstacle using the listed skill. Success advances them one obstacle; critical success advances two.
                  4. Failure means the character is stuck at the current obstacle. Critical failure may impose a penalty or cause the character to lose ground.
                  5. The chase ends when one side reaches the end of the course or catches the other.

                  Example Obstacles:
                  - Crowded Market (Athletics DC 18 to push through, or Acrobatics DC 20 to weave)
                  - Crumbling Rooftop (Acrobatics DC 20, or Athletics DC 22 to jump the gap)
                  - Locked Gate (Thievery DC 22 to pick, or Athletics DC 24 to climb)
                  - Rickety Bridge (Acrobatics DC 18 to balance, Survival DC 16 to find alternate route)

                  Chase Points: Alternatively, track chase points. The pursuer needs to accumulate enough points to catch up. Each successful check earns 1 point (critical success: 2). Reaching the threshold ends the chase.
                  """,
                  isPremium: true, source: "GM Core"),

            .init(id: seededUUID("ResearchGMC"), title: "Research",
                  category: "GM Rules",
                  summary: "Subsystem for conducting research in libraries, archives, and other repositories of knowledge.",
                  body: """
                  The research subsystem handles extended investigations in libraries, archives, and other knowledge repositories.

                  Research Setup:
                  1. Determine the topic and the library or source being consulted.
                  2. Set a Research Level (typically the level of the adventure or topic complexity).
                  3. Assign a Research Points (RP) threshold—the total points needed to fully research the topic.
                  4. Set the maximum RP per check and determine applicable skills.

                  Conducting Research:
                  - Each research session (typically 1 day), the character attempts a check using an applicable skill (Arcana, Nature, Occultism, Religion, Society, or relevant Lore).
                  - Critical Success: Gain maximum RP and learn a clue.
                  - Success: Gain RP (usually 1 per success).
                  - Failure: No progress.
                  - Critical Failure: Gain a false lead (the GM provides misleading information).

                  Library Stats: A library has its own level, Research Points threshold, and list of applicable skills. Higher-quality libraries allow higher maximum RP per check and may grant circumstance bonuses.
                  """,
                  isPremium: true, source: "GM Core"),

            // MARK: - Vehicles & Siege

            .init(id: seededUUID("VehiclesGMC"), title: "Vehicles",
                  category: "GM Rules",
                  summary: "Rules for vehicles including movement, piloting, and vehicle combat.",
                  body: """
                  Vehicles have their own stat blocks with the following key statistics:

                  - Space: The vehicle's size in feet.
                  - AC and Saves: The vehicle's defenses (Fortitude for structural checks; no Reflex or Will).
                  - Hardness and HP: Damage resistance and total hit points. Vehicles often have a Broken Threshold; below that HP they become broken and harder to control.
                  - Speed: Maximum movement per round when piloted.
                  - Piloting Check: The skill and DC required to pilot (usually Driving Lore, Sailing Lore, or a relevant skill).
                  - Collision Damage: Damage dealt to creatures and objects struck.

                  Piloting Actions:
                  - Drive (1 action): Move the vehicle up to its Speed. Requires a piloting check; on failure, the vehicle moves but goes off course.
                  - Stop (1 action): Reduce the vehicle's speed to 0.
                  - Reckless Driving (2 actions): Move up to double the vehicle's Speed, but the piloting DC increases by 5.

                  Vehicle Combat: Passengers can take normal actions. Ramming a creature or object uses the vehicle's collision damage. The pilot must succeed at a piloting check to ram intentionally.
                  """,
                  isPremium: true, source: "GM Core"),

            .init(id: seededUUID("SiegeWeaponsGMC"), title: "Siege Weapons",
                  category: "GM Rules",
                  summary: "Rules for siege weapons including ballistae, catapults, and trebuchets.",
                  body: """
                  Siege weapons are large-scale weapons that require crews to operate and deal massive damage, typically to structures or large groups.

                  Siege Weapon Statistics:
                  - Crew: Minimum crew to operate. Additional crew can speed loading.
                  - Load Time: Number of Interact actions (split among crew) needed to load.
                  - Range: Maximum and minimum range.
                  - Damage: Typically very high (4d12+, etc.).

                  Common Siege Weapons:
                  - Ballista (Level 4): Crew 2. Load 3 actions. Range 200 feet. Damage 3d12 piercing. A massive crossbow on a swivel mount.
                  - Catapult (Level 7): Crew 4. Load 6 actions. Range 300 feet (minimum 100). Damage 4d12 bludgeoning in a 15-foot burst. Lobs heavy stones.
                  - Trebuchet (Level 10): Crew 6. Load 10 actions. Range 500 feet (minimum 200). Damage 5d12 bludgeoning in a 20-foot burst. The largest common siege weapon.

                  Aiming: Siege weapons require an Aim action (using a skill check) to target a specific square. Without aiming, attacks take a -4 penalty.
                  """,
                  isPremium: true, source: "GM Core"),

            // MARK: - World Building

            .init(id: seededUUID("PlanesOfExistenceGMC"), title: "Planes of Existence",
                  category: "World Building",
                  summary: "Overview of the planes in the Pathfinder multiverse.",
                  body: """
                  The Pathfinder multiverse consists of multiple planes of existence:

                  Inner Sphere:
                  - Material Plane: The primary world where most adventures take place.
                  - Ethereal Plane: A misty, ghostly reflection of the Material Plane, home to ghosts and ethereal creatures.
                  - Elemental Planes: Four planes of pure elemental energy—Air, Earth, Fire, and Water.
                  - Shadow Plane: A dark reflection of the Material Plane, suffused with shadow energy.
                  - First World: The primal home of fey, a vibrant and mutable reflection of the Material Plane.

                  Outer Sphere:
                  - Astral Plane: The silvery void between planes, used for travel between the Inner and Outer Spheres.
                  - Heaven (LG), Nirvana (NG), Elysium (CG): Upper planes of good.
                  - Axis (LN), the Boneyard (N), the Maelstrom (CN): Neutral planes.
                  - Hell (LE), Abaddon (NE), the Abyss (CE): Lower planes of evil.
                  - Positive Energy Plane: Source of life energy and healing.
                  - Negative Energy Plane: Source of undeath and entropy.
                  """,
                  isPremium: true, source: "GM Core"),

            .init(id: seededUUID("DeitiesGMC"), title: "Deities",
                  category: "World Building",
                  summary: "Overview of the major deities of the Pathfinder setting and their domains.",
                  body: """
                  Deities grant divine power to their followers. Each deity has:
                  - Alignment: The deity's moral stance.
                  - Edicts: Behaviors the deity encourages.
                  - Anathema: Actions that displease the deity.
                  - Divine Font: Heal or harm (determines channel energy).
                  - Divine Attribute: The ability score the deity favors.
                  - Domains: Spheres of influence granting domain spells.
                  - Favored Weapon: The weapon associated with the deity.

                  Major Deities (sample):
                  - Sarenrae: NG goddess of healing, honesty, redemption, and the sun. Edicts: destroy undead, provide aid to the sick. Anathema: create undead, lie. Favored Weapon: scimitar.
                  - Pharasma: N goddess of birth, death, fate, and prophecy. Edicts: strive against undeath, comfort the dying. Anathema: create undead, desecrate a corpse. Favored Weapon: dagger.
                  - Desna: CG goddess of dreams, luck, stars, and travel. Edicts: aid fellow travelers, explore new places. Anathema: imprison or capture without cause. Favored Weapon: starknife.
                  - Iomedae: LG goddess of honor, justice, rulership, and valor. Edicts: be temperate, fight for justice. Anathema: abandon an ally in need, dishonor yourself. Favored Weapon: longsword.
                  - Gozreh: N deity of nature, the sea, and weather. Edicts: honor the natural world. Anathema: bring living things to the Negative Energy Plane. Favored Weapon: trident.
                  """,
                  isPremium: true, source: "GM Core"),

            .init(id: seededUUID("LanguagesGMC"), title: "Languages",
                  category: "World Building",
                  summary: "Languages of the Pathfinder world, from common to secret.",
                  body: """
                  Languages in Pathfinder 2E are categorized by rarity:

                  Common Languages:
                  - Common (Taldane): The default trade language spoken across the Inner Sea.
                  - Draconic: Language of dragons and many reptilian creatures.
                  - Dwarven: Spoken by dwarves and many underground cultures.
                  - Elven: The language of elves, with many regional dialects.
                  - Gnomish: Spoken by gnomes and influenced by the First World.
                  - Goblin: Spoken by goblins, hobgoblins, and bugbears.
                  - Halfling: The quiet language of halfling communities.
                  - Orcish: The blunt, harsh language of orcs and half-orcs.
                  - Jotun: Language of giants and trolls.

                  Uncommon Languages: Sylvan (fey), Shadowtongue (Shadow Plane), Necril (intelligent undead), Aklo (aberrations), Undercommon (Darklands).

                  Secret Languages: Druidic (druids only — teaching it to non-druids is anathema).

                  Sign Languages: Pathfinder includes a common sign language available as a free language for characters who need it.
                  """,
                  isPremium: true, source: "GM Core"),

            // MARK: - NPC Creation

            .init(id: seededUUID("NPCCreationGMC"), title: "NPC Creation",
                  category: "GM Rules",
                  summary: "Guidelines for building NPC stat blocks from scratch.",
                  body: """
                  Creating NPCs follows a streamlined process. NPCs use a simplified stat block compared to PCs.

                  Step 1 — Concept: Determine the NPC's role (combatant, spellcaster, skill-focused) and level.

                  Step 2 — Statistics: Use the NPC creation table to determine baseline statistics:
                  Level | HP      | AC  | High Atk | Low Atk | High DC | Low DC
                  -1    | 9       | 15  | +8       | +5      | 15      | 12
                  0     | 15      | 16  | +9       | +6      | 16      | 13
                  1     | 20      | 17  | +10      | +7      | 17      | 14
                  3     | 40      | 19  | +12      | +9      | 19      | 16
                  5     | 70      | 22  | +15      | +12     | 22      | 19
                  7     | 100     | 25  | +18      | +15     | 25      | 22
                  10    | 150     | 29  | +22      | +19     | 29      | 26

                  Step 3 — Abilities: Assign abilities thematically. Combatants get high attack, lower DC. Casters get high DC, lower attack.

                  Step 4 — Special: Add 1-3 special abilities or features to make the NPC distinct. Use existing monster abilities as templates.
                  """,
                  isPremium: true, source: "GM Core"),

            // MARK: - Variant Rules

            .init(id: seededUUID("AutomaticBonusProgressionGMC"), title: "Variant: Automatic Bonus Progression",
                  category: "Variant Rules",
                  summary: "A variant rule that removes the need for fundamental rune items by granting bonuses automatically.",
                  body: """
                  Automatic Bonus Progression (ABP) is a variant rule that eliminates the need for fundamental runes on weapons, armor, and other items. Instead, characters gain these bonuses automatically as they level up.

                  Attack Potency:
                  - Level 2: +1 attack potency (equivalent to +1 weapon potency rune)
                  - Level 10: +2 attack potency
                  - Level 16: +3 attack potency

                  Defense Potency:
                  - Level 5: +1 defense potency (equivalent to +1 armor potency rune)
                  - Level 11: +2 defense potency
                  - Level 18: +3 defense potency

                  Striking:
                  - Level 4: Striking (weapon deals 2 weapon damage dice)
                  - Level 12: Greater Striking (3 dice)
                  - Level 19: Major Striking (4 dice)

                  Resilient:
                  - Level 8: Resilient (+1 to all saves)
                  - Level 14: Greater Resilient (+2 to all saves)
                  - Level 20: Major Resilient (+3 to all saves)

                  Treasure Adjustment: Reduce treasure by the cost of fundamental runes at each level. Property runes and other magic items are still awarded normally.
                  """,
                  isPremium: true, source: "GM Core"),

            .init(id: seededUUID("FreeArchetypeGMC"), title: "Variant: Free Archetype",
                  category: "Variant Rules",
                  summary: "A variant rule granting a free archetype feat at every even level.",
                  body: """
                  The Free Archetype variant gives each character an additional class feat slot at every even level, but this slot can only be used for archetype feats.

                  Rules:
                  - At 2nd level and every even level thereafter, each character gains a bonus class feat. This feat must be an archetype feat (dedication or archetype-specific feat).
                  - This is in addition to the character's normal class feats.
                  - All normal archetype rules apply: you must take the dedication feat before other feats from that archetype, and you must take at least 2 feats from an archetype before taking another dedication.
                  - Characters can use their normal class feats for archetype feats too, if desired.

                  Impact: This variant significantly increases character power and versatility. It works well for campaigns where the GM wants more capable PCs or a heroic feel. Adjust encounter difficulty upward by 1-2 levels to compensate.
                  """,
                  isPremium: true, source: "GM Core"),

            .init(id: seededUUID("AncestryParagonGMC"), title: "Variant: Ancestry Paragon",
                  category: "Variant Rules",
                  summary: "A variant rule that grants an ancestry feat at every odd level.",
                  body: """
                  The Ancestry Paragon variant gives characters additional ancestry feats, reflecting a deeper connection to their heritage.

                  Rules:
                  - At 1st level and every odd level thereafter (1, 3, 5, 7, ..., 19), each character gains an ancestry feat.
                  - This is in addition to the ancestry feats normally granted by their class (typically at 1st, 5th, 9th, 13th, 17th).
                  - In practice, characters gain roughly twice as many ancestry feats.
                  - All normal prerequisites for ancestry feats still apply.

                  Impact: Characters become much more defined by their ancestry. This variant pairs well with campaigns that emphasize cultural identity, ancestry-specific storylines, or where characters have a strong connection to their people. It increases overall character power moderately.
                  """,
                  isPremium: true, source: "GM Core"),

            .init(id: seededUUID("DualClassGMC"), title: "Variant: Dual Class",
                  category: "Variant Rules",
                  summary: "A variant rule allowing characters to gain features from two classes simultaneously.",
                  body: """
                  The Dual Class variant allows each character to choose two classes at 1st level and gain features from both as they level up.

                  Rules:
                  - At 1st level, choose two classes. You gain the features of both (HP is the higher of the two, plus Constitution modifier).
                  - At each level, you gain class features from both classes. If both classes grant a feature at the same level, you gain both.
                  - Class feats: You get class feats from both classes at the levels each class grants them.
                  - Spellcasting: If both classes grant spellcasting, you have separate spell repertoires or preparations and separate spell slots for each.
                  - Proficiencies: Use the better proficiency from either class for any given proficiency.
                  - Key Ability: Choose one key ability from either class for calculating your class DC.

                  Impact: This dramatically increases character power. It is designed for very small parties (1-2 players) or campaigns where the GM wants exceptionally powerful characters. Increase encounter difficulty by 2-3 levels.
                  """,
                  isPremium: true, source: "GM Core"),
        ]

        for rule in rules {
            try await db.insertRule(rule)
        }
    }
}
