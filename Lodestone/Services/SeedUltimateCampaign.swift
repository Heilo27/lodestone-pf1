import Foundation

extension SeedDataBuilder {
    func seedUltimateCampaign() async throws {
        try await seedUCTraits()
        try await seedUCRules()
    }

    // MARK: - Ultimate Campaign Traits

    private func seedUCTraits() async throws {
        let traits: [TraitEntry] = [

            // MARK: - Campaign Traits

            .make("Adopted",
                  traitType: "Campaign",
                  benefit: "You were raised by a family of a different race than your own. Choose one race trait from that race. You gain that race trait in addition to your own.",
                  summary: "Raised by a different race; gain one of that race's race traits.",
                  desc: "You were not raised by your birth family. Instead, you were taken in by a family of a different race, and their customs, traditions, and way of life are as natural to you as your own.",
                  source: "Ultimate Campaign",
                  isPremium: true),

            .make("Animal Friend",
                  traitType: "Campaign",
                  benefit: "You gain a +1 trait bonus on Handle Animal checks, Handle Animal is always a class skill for you, and animals' starting attitudes toward you are one step better than normal.",
                  summary: "+1 Handle Animal (class skill); animals' initial attitude improves one step.",
                  desc: "You have a special connection with animals that transcends training. Animals sense your intent and respond to your calm presence, making them unusually willing to cooperate with you.",
                  source: "Ultimate Campaign",
                  isPremium: true),

            .make("Artisan",
                  traitType: "Campaign",
                  benefit: "Choose one Craft skill. You gain a +2 trait bonus on that Craft skill check, and it is always a class skill for you.",
                  summary: "+2 to one Craft skill; that skill is always a class skill.",
                  desc: "You spent years learning a craft under the tutelage of a master artisan, and the discipline of that training has left you with exceptional skill in your chosen medium.",
                  source: "Ultimate Campaign",
                  isPremium: true),

            .make("Brute",
                  traitType: "Campaign",
                  benefit: "You gain a +1 trait bonus on CMB checks. Once per day, you may reroll a CMB check and take the higher result.",
                  summary: "+1 CMB; once/day reroll a CMB check and take the higher result.",
                  desc: "You have always relied on brute strength in conflicts, solving problems with direct physical force rather than finesse or cunning.",
                  source: "Ultimate Campaign",
                  isPremium: true),

            .make("Carefully Hidden",
                  traitType: "Campaign",
                  benefit: "You gain a +1 trait bonus on Will saving throws and a +2 trait bonus on saving throws against divination effects.",
                  summary: "+1 Will saves; +2 Will saves vs. divination effects.",
                  desc: "Your early life taught you the value of keeping secrets and protecting your inner self from scrutiny. You have learned to guard your thoughts and hide your true nature from prying magic.",
                  source: "Ultimate Campaign",
                  isPremium: true),

            .make("Child of Nature",
                  traitType: "Campaign",
                  benefit: "You gain a +1 trait bonus on Knowledge (nature) and Survival checks. One of these skills (your choice) is always a class skill for you.",
                  summary: "+1 Knowledge (nature) and Survival; one is always a class skill.",
                  desc: "You were raised in the wilderness or spent so much time there that the natural world feels more like home than any city. The rhythms of nature, animal behavior, and wilderness survival are second nature to you.",
                  source: "Ultimate Campaign",
                  isPremium: true),

            .make("Child of the Streets",
                  traitType: "Campaign",
                  benefit: "You gain a +1 trait bonus on Sleight of Hand checks, and Sleight of Hand is always a class skill for you.",
                  summary: "+1 Sleight of Hand; Sleight of Hand is always a class skill.",
                  desc: "You grew up on the streets, learning to survive through misdirection and quick hands. Whether pickpocketing for food or palming evidence, nimble fingers kept you alive.",
                  source: "Ultimate Campaign",
                  isPremium: true),

            .make("Classically Schooled",
                  traitType: "Campaign",
                  benefit: "You gain a +1 trait bonus on Spellcraft checks, and Spellcraft is always a class skill for you.",
                  summary: "+1 Spellcraft; Spellcraft is always a class skill.",
                  desc: "Your early education was provided by a formal magical institution — a wizard's college, monastic library, or arcane academy — giving you a thorough theoretical grounding in the nature of magic.",
                  source: "Ultimate Campaign",
                  isPremium: true),

            .make("Criminal",
                  traitType: "Campaign",
                  benefit: "You gain a +1 trait bonus on Disable Device and Sleight of Hand checks. One of these skills (your choice) is always a class skill for you.",
                  summary: "+1 Disable Device and Sleight of Hand; one is always a class skill.",
                  desc: "You spent time operating on the wrong side of the law, and the skills you learned during that period are now second nature — however you've chosen to apply them since.",
                  source: "Ultimate Campaign",
                  isPremium: true),

            .make("Devotee of the Green",
                  traitType: "Campaign",
                  benefit: "You gain a +1 trait bonus on Knowledge (geography) and Knowledge (nature) checks. One of these skills (your choice) is always a class skill for you.",
                  summary: "+1 Knowledge (geography) and Knowledge (nature); one is always a class skill.",
                  desc: "Your devotion to the natural world has given you an encyclopedic knowledge of flora, fauna, terrain, and geography wherever the wild places reach.",
                  source: "Ultimate Campaign",
                  isPremium: true),

            .make("Duelist",
                  traitType: "Campaign",
                  benefit: "You gain a +1 trait bonus to your AC against attacks of opportunity provoked when you cast a spell or use a combat maneuver.",
                  summary: "+1 AC vs. attacks of opportunity when casting or using a combat maneuver.",
                  desc: "You have trained extensively in the art of making precise actions in the heat of combat, learning to protect yourself even as you execute complex techniques.",
                  source: "Ultimate Campaign",
                  isPremium: true),

            .make("Duskwalker Agent",
                  traitType: "Campaign",
                  benefit: "You gain a +1 trait bonus on Stealth checks, Stealth is always a class skill for you, and you gain a +2 trait bonus on saving throws against death effects.",
                  summary: "+1 Stealth (class skill); +2 vs. death effects.",
                  desc: "You served as an agent for an organization that operates between the world of the living and the dead, and that service has made you stealthy and resistant to the finality of death.",
                  source: "Ultimate Campaign",
                  isPremium: true),

            .make("Explorer",
                  traitType: "Campaign",
                  benefit: "You gain a +1 trait bonus on Survival checks, Survival is always a class skill for you, and you gain a +1 trait bonus on initiative checks while in forests.",
                  summary: "+1 Survival (class skill); +1 initiative in forests.",
                  desc: "You've spent years traveling through wilderness territories, mapping routes and learning the rhythms of the natural world. The forest in particular holds no mysteries for you.",
                  source: "Ultimate Campaign",
                  isPremium: true),

            .make("Focused Mind",
                  traitType: "Campaign",
                  benefit: "You gain a +2 trait bonus on concentration checks.",
                  summary: "+2 trait bonus on concentration checks.",
                  desc: "Your childhood required you to focus despite constant distractions or hardship, and that mental discipline has given you an unusually steady mind when maintaining spells under duress.",
                  source: "Ultimate Campaign",
                  isPremium: true),

            .make("Gifted Adept",
                  traitType: "Campaign",
                  benefit: "Choose one spell when you take this trait. Your caster level for that spell is treated as 1 higher than normal.",
                  summary: "Pick one spell; treat your caster level as 1 higher when casting it.",
                  desc: "A magical talent for one particular spell emerged in your childhood, and though you may have had little formal training, that innate gift has never left you.",
                  source: "Ultimate Campaign",
                  isPremium: true),

            .make("Hedge Magician",
                  traitType: "Campaign",
                  benefit: "Whenever you craft a magic item, the cost of creating that item is reduced by 5% of the item's market value.",
                  summary: "Crafting magic items costs 5% less of the item's market value.",
                  desc: "You learned the basics of magic item creation from a wandering hedge wizard or minor artificer, picking up shortcuts and tricks that reduce the cost of your work.",
                  source: "Ultimate Campaign",
                  isPremium: true),

            .make("Historical Knowledge",
                  traitType: "Campaign",
                  benefit: "You gain a +2 trait bonus on Knowledge (history) checks, and Knowledge (history) is always a class skill for you.",
                  summary: "+2 Knowledge (history); it is always a class skill.",
                  desc: "You have studied the history of the world with unusual dedication — reading old texts, interviewing elders, and seeking out forgotten chronicles of past ages.",
                  source: "Ultimate Campaign",
                  isPremium: true),

            .make("Indomitable Faith",
                  traitType: "Campaign",
                  benefit: "You gain a +1 trait bonus on Will saving throws.",
                  summary: "+1 trait bonus on Will saving throws.",
                  desc: "You were born in a region where your religion was actively persecuted. Maintaining your faith in the face of opposition has given you exceptional willpower.",
                  source: "Ultimate Campaign",
                  isPremium: true),

            .make("Killer",
                  traitType: "Campaign",
                  benefit: "You gain proficiency with one weapon that deals bleed damage, and you deal additional damage equal to the weapon's critical hit modifier on a confirmed critical hit.",
                  summary: "Proficiency with one bleed weapon; deal extra damage equal to crit modifier on confirmed crits.",
                  desc: "Murder is in your blood. Whether as a soldier, assassin, or predator, you have refined the art of ending lives with a chosen weapon and know exactly how to press an advantage when you land a killing blow.",
                  source: "Ultimate Campaign",
                  isPremium: true),

            .make("Librarian",
                  traitType: "Campaign",
                  benefit: "You gain a +1 trait bonus on Linguistics and Knowledge (history) checks. One of these skills (your choice) is always a class skill for you.",
                  summary: "+1 Linguistics and Knowledge (history); one is always a class skill.",
                  desc: "You spent years among books and scrolls, whether as a scribe, scholar, or temple archivist. Languages and ancient lore come easily to you.",
                  source: "Ultimate Campaign",
                  isPremium: true)
        ]

        for trait in traits {
            try await db.insertTrait(trait)
        }
    }

    // MARK: - Ultimate Campaign Rules

    private func seedUCRules() async throws {
        let rules: [RuleEntry] = [

            // MARK: - Downtime

            .make("Downtime Overview",
                  category: "Downtime",
                  body: """
                  Between adventures, characters can spend time engaging in downtime activities that represent the rhythms of daily life and longer-term projects. Each downtime day costs 1 real day of in-game time and may earn capital — the abstract resources used to build, hire, and improve.

                  The four types of capital are:
                  GP (gold pieces): Standard wealth.
                  Influence: Favors, social connections, and political leverage.
                  Labor: Physical work, man-hours, and skilled effort.
                  Magic: Magical energy and enchantment resources.

                  Characters earn capital based on buildings they own, organizations they lead, and skill checks they make. Capital is spent to construct buildings, found organizations, retrain abilities, and pursue other long-term goals. Downtime transforms the gap between adventures from empty time into meaningful progress.
                  """,
                  summary: "Between adventures, characters earn capital (GP, Influence, Labor, Magic) to pursue long-term projects.",
                  source: "Ultimate Campaign",
                  isPremium: true),

            .make("Downtime Buildings",
                  category: "Downtime",
                  body: """
                  Characters can construct buildings using capital. Each building requires an upfront investment (typically GP and Labor) and produces capital each day it operates. Buildings occupy rooms in a structure and must be in a settlement.

                  Example buildings and their costs and yields:
                  • Alchemist's Lab — Cost: 500 GP, 1 Labor. Yields: +1 Magic/day.
                  • Bardic College — Cost: 1,500 GP, 3 Labor. Yields: +2 Influence/day.
                  • Guard Post — Cost: 150 GP, 1 Labor. Yields: +1 Labor/day.
                  • Inn — Cost: 1,000 GP, 2 Labor. Yields: +3 GP/day.
                  • Library — Cost: 2,000 GP, 2 Labor. Yields: +1 Magic/day, +1 Influence/day.
                  • Smithy — Cost: 500 GP, 2 Labor. Yields: +2 GP/day.
                  • Tavern — Cost: 500 GP, 1 Labor. Yields: +1 GP/day, +1 Influence/day.

                  Buildings can be upgraded, combined into larger complexes, and staffed by followers or hired workers. A well-developed holding generates enough capital to fund significant adventuring expenses over time.
                  """,
                  summary: "Construct buildings using GP and Labor; each building yields capital (GP, Influence, Magic, Labor) each day.",
                  source: "Ultimate Campaign",
                  isPremium: true),

            .make("Downtime Organizations",
                  category: "Downtime",
                  body: """
                  Characters can found and lead organizations composed of teams of followers. Each organization type generates a specific type of capital and has a maximum number of teams that can be recruited.

                  Example organizations:
                  • Thieves' Guild — Up to 5 teams. Yields: +5 GP/day.
                  • Mercenary Company — Up to 3 teams. Yields: +3 Labor/day.
                  • Spy Network — Up to 4 teams. Yields: +4 Influence/day.

                  Organizations require the character to have sufficient Influence to recruit and maintain teams. Teams can be lost through failed checks, hostile events, or rival organizations. A strong organization extends a character's reach across a region, providing reconnaissance, muscle, and social leverage beyond what the character can personally provide.
                  """,
                  summary: "Lead organizations of followers that generate capital (GP, Labor, Influence) each day.",
                  source: "Ultimate Campaign",
                  isPremium: true),

            .make("Earning Capital",
                  category: "Downtime",
                  body: """
                  When a character spends a downtime day actively working, they make a skill check to earn capital. The type of capital earned depends on the skill used.

                  Common earning methods:
                  • Craft (any) — Earns 1d6 GP/day. Represents selling finished goods.
                  • Diplomacy — Earns 1d6 Influence/day. Represents building social connections.
                  • Perform (any) — Earns 1d6 GP or Influence/day (character's choice).
                  • Profession (any) — Earns 1d6 GP/day. Represents wages and commissions.
                  • Spellcraft — Earns 1d6 Magic/day. Represents enchanting items and selling magical services.

                  The base earnings are modified by the result of the skill check. On a result of 20 or higher, the character earns an additional 1d6 of the appropriate capital. Critical successes (30+) may provide further bonuses at the GM's discretion.
                  """,
                  summary: "Spend downtime days making skill checks to earn GP, Influence, Magic, or Labor capital.",
                  source: "Ultimate Campaign",
                  isPremium: true),

            .make("Retraining",
                  category: "Downtime",
                  body: """
                  Characters can spend downtime days and gold to retrain class levels, feats, skill ranks, or ability score bonuses. Retraining represents intensive study, practice, or physical conditioning under a qualified trainer.

                  Retraining costs and times:
                  • Class Feature: 5 days + 50 GP/day. Requires access to a trainer who has the same class feature.
                  • Feat: 5 days + 50 GP/day. The new feat must be one the character qualifies for.
                  • Skill Ranks: 5 days + 20 GP/day per rank. Ranks must be re-spent legally.
                  • Ability Score (via magic): Varies; typically 25 days for a +1 increase at low levels.

                  Retraining does not allow changing core class choices (such as mystery/bloodline) without GM permission. The character must be able to access the trainer during the retraining period. Retraining is a major investment and represents fundamental changes to the character's training and capabilities.
                  """,
                  summary: "Spend downtime days and gold to retrain feats, skills, class features, or ability scores.",
                  source: "Ultimate Campaign",
                  isPremium: true),

            .make("NPC Relationships",
                  category: "Downtime",
                  body: """
                  Characters can build ongoing relationships with NPCs using a 0–5 point relationship scale. Points are earned through gifts, shared activities, completing quests for the NPC, and successful roleplay interactions.

                  Relationship tiers:
                  • 0–2: Acquaintance. No special benefits.
                  • 3: Ally. The NPC will provide favors, information, and minor assistance. Grants one benefit from the NPC's list.
                  • 5: Devotion. The NPC will go to extraordinary lengths to help the character. Grants all benefits from the NPC's list.

                  Building relationships requires time and attention. Each relationship can advance once per story arc (not just once per session). NPCs remember how they've been treated and react accordingly — neglect can cause relationship points to decay. Strong relationships are among the most valuable resources a character can accumulate over a campaign.
                  """,
                  summary: "Track NPC relationships on a 0–5 scale; reach rank 3 (ally) or 5 (devotion) for escalating benefits.",
                  source: "Ultimate Campaign",
                  isPremium: true),

            .make("Fame and Infamy",
                  category: "Downtime",
                  body: """
                  As characters accomplish deeds, they accumulate Fame (positive reputation) and Infamy (fearsome reputation) with specific factions and regions. These scores track how well-known and respected (or feared) the characters are.

                  Fame benefits by score:
                  • 5 Fame: Can purchase equipment at 5% discount from merchants in the region.
                  • 10 Fame: Local merchants hold items of up to 500 GP for you.
                  • 20 Fame: Access to restricted items; noble households grant audiences.
                  • 30+ Fame: Merchants grant 15% discounts; followers may seek you out.

                  Infamy benefits:
                  • 5 Infamy: Commoners avoid you; minor criminals show deference.
                  • 15 Infamy: Underworld contacts seek you out; guards watch you more closely.
                  • 30+ Infamy: Criminals offer unsolicited assistance; powerful foes treat you as a genuine threat.

                  Fame and Infamy do not cancel each other out — a character can have high scores in both, representing someone feared and respected in equal measure. Actions can increase or decrease these scores, and a bad reputation in one region may not apply elsewhere.
                  """,
                  summary: "Accumulate Fame and Infamy with factions; higher scores grant discounts, access, and social leverage.",
                  source: "Ultimate Campaign",
                  isPremium: true),

            .make("Retirement",
                  category: "Downtime",
                  body: """
                  Characters of 10th level or higher may choose to retire from active adventuring. Retired characters become powerful NPCs who accrue wealth and influence in the background of the campaign.

                  A retired character:
                  • Earns capital each month based on their final level and class.
                  • Can be called upon for advice, information, or limited assistance once per story arc.
                  • May be targeted by enemies of the active party.
                  • Cannot participate in active adventuring without re-entering play as a PC.

                  Retirement is not the end of a character's story — it is the beginning of a new chapter. Retired characters often become patrons, mentors, and recurring NPCs. A well-positioned retired character can provide the active party with resources, introductions, and intelligence that would otherwise be unavailable. Some campaigns explicitly track retired characters as an evolving resource.
                  """,
                  summary: "Characters 10th level and above can retire, becoming powerful NPCs who accrue wealth and influence over time.",
                  source: "Ultimate Campaign",
                  isPremium: true),

            .make("Downtime Exploration",
                  category: "Downtime",
                  body: """
                  Characters can spend downtime days exploring and mapping hexes using the hexcrawl rules from the Kingmaker adventure path framework. Each hex typically represents 12 miles across and takes a variable number of days to explore depending on terrain.

                  Exploration activities:
                  • Clear Hex: Remove a lair or hazard from a hex. Requires combat or skill checks.
                  • Harvest Resources: Identify and exploit natural resources (timber, ore, herbs) for capital.
                  • Find Ruins: Discover adventure sites that can be explored in full sessions.
                  • Map Terrain: Record hex features for future kingdom building or navigation.

                  Exploration during downtime advances the hexcrawl campaign layer, which connects directly to kingdom building. Areas explored during downtime can be claimed and settled during kingdom turns, turning raw wilderness into organized territory. This system is specifically designed to give players meaningful choices between sessions.
                  """,
                  summary: "Explore and map hexes during downtime; clearing lairs and finding resources feeds into kingdom building.",
                  source: "Ultimate Campaign",
                  isPremium: true),

            .make("Downtime Companions",
                  category: "Downtime",
                  body: """
                  Cohorts, followers, and animal companions have lives beyond the dungeon. During downtime, these companions can be assigned to roles that make use of their abilities and provide ongoing benefits.

                  Companion roles:
                  • Building Staff: A cohort assigned to a building increases its capital yield by 1/day of the appropriate type.
                  • Organization Member: Followers can form or join downtime organizations, contributing to their capital generation.
                  • Training: Companions can spend downtime learning new skills, improving abilities, or gaining feats (with GM approval).
                  • Independent Action: A high-level cohort (within 2 levels of the PC) may take their own downtime actions, earning capital for the party.

                  Animal companions during downtime require care — typically 1 hour per day minimum — and may engage in training to learn new tricks or improve combat performance. Familiars may assist with magical research, reducing the time cost of scribing scrolls or preparing spells.
                  """,
                  summary: "Cohorts and followers can staff buildings, join organizations, and take independent downtime actions.",
                  source: "Ultimate Campaign",
                  isPremium: true),

            // MARK: - Kingdom Building

            .make("Kingdom Turns",
                  category: "Kingdom Building",
                  body: """
                  Kingdom building is managed in monthly turns. Each turn represents one month of activity across your domain. A kingdom turn has four phases that must be resolved in order:

                  PHASE 1 — UPKEEP: Pay ongoing costs. Reduce Unrest by 1 if you have a Loyalty modifier of +0 or higher. Check for loyalty problems if Unrest is 5 or higher.

                  PHASE 2 — EDICT: Set kingdom policies for the month. Choose Promotion level (Aggressive/Standard/None), Holiday frequency, Taxation level, and Improvement edicts (what you build this turn).

                  PHASE 3 — INCOME: Collect Build Points (BP) from your kingdom's Economy score. Roll 1d20 + Economy modifier, divide by 3 (round down), add to BP treasury.

                  PHASE 4 — EVENT: Roll for a random kingdom event. Events can be beneficial (banquets, discoveries, windfalls) or harmful (monsters, unrest, economic disruption). Some events require immediate resolution.

                  The kingdom turn system turns nation-building into a strategic layer above individual adventuring, giving players meaningful macro-level decisions that affect their micro-level play.
                  """,
                  summary: "Kingdom turns are monthly. Four phases: Upkeep, Edict, Income, and Event.",
                  source: "Ultimate Campaign",
                  isPremium: true),

            .make("Kingdom Stats",
                  category: "Kingdom Building",
                  body: """
                  A kingdom is defined by six primary statistics:

                  SIZE: The number of hexes claimed. Each hex adds 1 to Control DC.
                  POPULATION: Size × 250 people (approximate).
                  CONTROL DC: 20 + Size + number of Districts + number of special buildings that add to Control DC. Used as the target for kingdom checks.
                  ECONOMY: Measures the kingdom's productivity and trade. Affects BP income.
                  LOYALTY: Measures the citizens' dedication to the kingdom. High Loyalty reduces Unrest.
                  STABILITY: Measures the kingdom's resistance to disruption. Stability checks prevent Unrest increases from events.
                  UNREST: A running total of civic dysfunction. Each point reduces Economy, Loyalty, and Stability by 1. At Unrest 11+, the kingdom begins losing hexes. At Unrest 20, the kingdom collapses.

                  All three scores (Economy, Loyalty, Stability) start at 0 and are built through buildings, leadership roles, and edicts. Managing these three scores against the rising Control DC is the core strategic challenge of kingdom building.
                  """,
                  summary: "Key kingdom stats: Size, Population, Control DC, Economy, Loyalty, Stability, and Unrest.",
                  source: "Ultimate Campaign",
                  isPremium: true),

            .make("Terrain Improvements",
                  category: "Kingdom Building",
                  body: """
                  During the Edict phase, the kingdom can spend Build Points to construct improvements to claimed hexes. Each improvement modifies kingdom stats or enables future activities.

                  Common terrain improvements and costs:
                  • Clear Hex — 1 BP. Remove the terrain's penalties. Prerequisite for most improvements.
                  • Farm — 2 BP. Provides food; +2 Economy to adjacent hexes.
                  • Fort — 4 BP. +1 Stability. Enables military control of the hex.
                  • Highway — 3 BP/hex. +1 Economy for the route. Reduces travel time between settlements.
                  • Mine — 6 BP. +1 Economy. Represents resource extraction.
                  • Quarry — 6 BP. +1 Economy. Produces stone for buildings and fortifications.
                  • Road — 2 BP/hex. Allows faster travel. Prerequisite for Highway.
                  • Watchtower — 2 BP. +1 Stability. Provides visibility and border security.

                  Improvements take 1 kingdom turn to complete and may require specific hex types (mines require hills or mountains, farms require plains or river hexes, etc.). Strategic placement of improvements can dramatically amplify a kingdom's economic output.
                  """,
                  summary: "Spend BP during the Edict phase to improve hexes with farms, forts, roads, mines, and more.",
                  source: "Ultimate Campaign",
                  isPremium: true),

            .make("Settlement Districts",
                  category: "Kingdom Building",
                  body: """
                  Settlements are subdivided into districts, each represented by a 9×9 grid of lots. Buildings occupy one or more lots within a district. Each settlement hex can have up to two districts, and cities can span multiple hexes.

                  District properties:
                  • Defense: Each district has a Defense score that contributes to the settlement's ability to resist invasion.
                  • Unrest Modifier: Some buildings reduce Unrest in the district and surrounding hexes.
                  • Kingdom Modifiers: Buildings apply their bonuses to Economy, Loyalty, and Stability at the kingdom level.

                  Building placement matters. Some buildings have adjacency requirements or bonuses — a Tavern adjacent to an Inn generates more GP than one placed in isolation. Certain buildings (Temples, Academies, Castles) are particularly powerful but expensive and take multiple lots.

                  Districts fill up over time, requiring the kingdom to expand into adjacent hexes to continue building. Managing district density is a key part of late-game kingdom building optimization.
                  """,
                  summary: "Settlements have districts with 9×9 lot grids; building placement affects Defense, Unrest, and kingdom stats.",
                  source: "Ultimate Campaign",
                  isPremium: true),

            .make("Leadership Roles",
                  category: "Kingdom Building",
                  body: """
                  A kingdom has up to 12 leadership roles, each filled by a PC or high-level NPC. Each role contributes to specific kingdom stats based on the holder's ability scores.

                  Leadership roles and their contributions:
                  • Ruler — +Cha modifier to Economy, Loyalty, and Stability.
                  • Councilor — +Wis or +Cha to Loyalty.
                  • General — +Str or +Con to Stability.
                  • Grand Diplomat — +Int or +Cha to Stability.
                  • High Priest — +Wis or +Cha to Stability.
                  • Magister — +Int or +Cha to Economy.
                  • Marshal — +Dex or +Wis to Economy.
                  • Royal Enforcer — +Dex or +Str to reduce Unrest by 1 each turn.
                  • Spymaster — +Dex or +Int to Economy, Loyalty, or Stability (chosen each turn).
                  • Treasurer — +Int or +Wis to Economy.
                  • Viceroy — +Int or +Wis to Economy (for a specific territory).
                  • Warden — +Con or +Str to Loyalty and Stability.

                  Vacant leadership roles apply a –2 penalty to their associated stats. Filling all twelve roles is a strategic priority in the early game. PCs who hold leadership roles cannot participate in adventuring on turns when leadership duties require their presence.
                  """,
                  summary: "12 leadership roles each contribute ability score modifiers to Economy, Loyalty, or Stability.",
                  source: "Ultimate Campaign",
                  isPremium: true)
        ]

        for rule in rules {
            try await db.insertRule(rule)
        }
    }
}

// MARK: - TraitEntry factory (UC)
private extension TraitEntry {
    static func make(
        _ title: String,
        traitType: String,
        prerequisites: String = "",
        benefit: String,
        summary: String,
        desc: String = "",
        source: String,
        isPremium: Bool
    ) -> TraitEntry {
        TraitEntry(
            id: seededUUID(title + source),
            title: title,
            summary: summary,
            isPremium: isPremium,
            traitType: traitType,
            prerequisites: prerequisites,
            benefit: benefit,
            description: desc.isEmpty ? benefit : desc,
            source: source
        )
    }
}

// MARK: - RuleEntry factory (UC)
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
