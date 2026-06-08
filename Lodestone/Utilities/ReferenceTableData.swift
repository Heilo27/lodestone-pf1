import Foundation

// MARK: - Reference Table Model

struct ReferenceTable {
    let title: String
    let headers: [String]
    let rows: [[String]]
}

// MARK: - Lookup

/// Returns reference tables for a given rule/skill title, or nil if none exist.
func referenceTables(for title: String) -> [ReferenceTable]? {
    let key = title.lowercased()
    return _referenceTableData[key]
}

// MARK: - Data

private let _referenceTableData: [String: [ReferenceTable]] = [

    // MARK: Acrobatics
    "acrobatics": [
        ReferenceTable(
            title: "Balance on a Narrow Surface",
            headers: ["Surface Width", "Base DC"],
            rows: [
                ["Greater than 3 feet wide", "No check needed"],
                ["1–3 feet wide", "5"],
                ["7–11 inches wide", "10"],
                ["2–6 inches wide", "15"],
                ["Less than 2 inches wide", "20"],
            ]
        ),
        ReferenceTable(
            title: "Balance — Modifiers",
            headers: ["Condition", "DC Modifier"],
            rows: [
                ["Lightly obstructed (gravel, sand)", "+2"],
                ["Severely obstructed (cavern floor, rubble)", "+5"],
                ["Slightly slippery (wet)", "+2"],
                ["Severely slippery (icy)", "+5"],
                ["Slightly sloped (angled up to 45°)", "+2"],
                ["Severely sloped (angled more than 45°)", "+5"],
                ["Moving 2× speed", "+5 to DC"],
                ["Uneven footing (ship deck, moving platform)", "+2 to +10"],
            ]
        ),
        ReferenceTable(
            title: "Long Jump Distance",
            headers: ["Distance Jumped", "DC"],
            rows: [
                ["5 feet", "5"],
                ["10 feet", "10"],
                ["15 feet", "15"],
                ["20 feet", "20"],
                ["25 feet", "25"],
                ["30 feet", "30"],
            ]
        ),
        ReferenceTable(
            title: "High Jump Height",
            headers: ["Height Jumped", "DC"],
            rows: [
                ["1 foot", "4"],
                ["2 feet", "8"],
                ["3 feet", "12"],
                ["4 feet", "16"],
                ["5 feet", "20"],
                ["6 feet", "24"],
                ["7 feet", "28"],
                ["8 feet", "32"],
            ]
        ),
        ReferenceTable(
            title: "Falling & Diving",
            headers: ["Situation", "DC"],
            rows: [
                ["Reduce damage from a fall", "15 (reduce by 10 ft for purpose of damage)"],
                ["Avoid damage entirely (DC = 5 per 10 ft fallen)", "Varies"],
                ["Dive into water (shallow, 5–10 ft deep)", "15"],
                ["Dive into water (deep, 10+ ft)", "5"],
            ]
        ),
        ReferenceTable(
            title: "Vertical Reach",
            headers: ["Creature Size", "Vertical Reach"],
            rows: [
                ["Fine", "0 ft."],
                ["Diminutive", "0 ft."],
                ["Tiny", "0 ft."],
                ["Small", "4 ft."],
                ["Medium", "8 ft."],
                ["Large (tall)", "16 ft."],
                ["Large (long)", "8 ft."],
                ["Huge (tall)", "24 ft."],
                ["Huge (long)", "12 ft."],
                ["Gargantuan (tall)", "32 ft."],
                ["Gargantuan (long)", "16 ft."],
                ["Colossal (tall)", "64 ft."],
                ["Colossal (long)", "32 ft."],
            ]
        ),
    ],

    // MARK: Bluff
    "bluff": [
        ReferenceTable(
            title: "Bluff Modifiers",
            headers: ["Circumstances", "Modifier"],
            rows: [
                ["The target wants to believe you", "+5"],
                ["The bluff is believable and has no potential consequences for target", "+0"],
                ["The bluff is a little hard to believe or risky for target", "–5"],
                ["The bluff is hard to believe or has serious consequences for target", "–10"],
                ["The bluff is nearly impossible to believe or has dire consequences", "–20"],
            ]
        ),
    ],

    // MARK: Climb
    "climb": [
        ReferenceTable(
            title: "Climb Surface DCs",
            headers: ["Example Surface", "DC"],
            rows: [
                ["A slope too steep to walk up; a knotted rope", "0"],
                ["A rope with a wall to brace against; a very rough natural rock surface", "5"],
                ["A surface with ledges to hold and stand on; most trees", "10"],
                ["Any surface with adequate handholds and footholds", "15"],
                ["An uneven surface with some narrow handholds and footholds", "20"],
                ["A rough surface, like a natural rock wall or a brick wall", "25"],
                ["A relatively smooth surface, like a hewn stone wall or brick wall with small cracks", "25"],
                ["An overhang or ceiling with handholds and footholds", "25"],
                ["A smooth vertical surface", "30"],
                ["A perfectly smooth, flat vertical surface", "—"],
            ]
        ),
        ReferenceTable(
            title: "Climb Modifiers",
            headers: ["Condition", "DC Modifier"],
            rows: [
                ["Climbing inside a chimney (brace against opposite walls)", "–10"],
                ["Climbing a corner (brace against walls at 90°)", "–10"],
                ["Surface is slippery", "+5"],
            ]
        ),
    ],

    // MARK: Diplomacy
    "diplomacy": [
        ReferenceTable(
            title: "Initial Attitude — Influence DC",
            headers: ["Initial Attitude", "DC to Improve Attitude"],
            rows: [
                ["Hostile", "25"],
                ["Unfriendly", "20"],
                ["Indifferent", "15"],
                ["Friendly", "10"],
                ["Helpful", "Already helpful"],
            ]
        ),
        ReferenceTable(
            title: "Request Modifiers",
            headers: ["Request", "DC Modifier"],
            rows: [
                ["Give simple advice or directions", "–5"],
                ["Give detailed advice", "+0"],
                ["Give lengthy or complex advice", "+5"],
                ["Reveal an unimportant secret", "+5"],
                ["Do a small favor for you", "+5"],
                ["Stop harassing or attacking you", "+5"],
                ["Reveal an important secret", "+10"],
                ["Do a substantial favor for you", "+10"],
                ["Fight alongside you in battle", "+15"],
                ["Reveal a dangerous secret", "+15"],
                ["Risk life and limb", "+20"],
                ["Betray an important person or group", "+20"],
            ]
        ),
    ],

    // MARK: Disable Device
    "disable device": [
        ReferenceTable(
            title: "Disable Device DCs",
            headers: ["Device", "Time", "DC", "Example"],
            rows: [
                ["Simple", "1 round", "10", "Jam a lock"],
                ["Tricky", "1d4 rounds", "15", "Sabotage a wagon wheel"],
                ["Difficult", "2d4 rounds", "20", "Dismantle a drawbridge"],
                ["Extreme", "2d4 rounds", "25", "Collapse a roof, foil an alarm system"],
            ]
        ),
        ReferenceTable(
            title: "Lock DCs",
            headers: ["Lock Quality", "DC"],
            rows: [
                ["Simple lock", "20"],
                ["Average lock", "25"],
                ["Good lock", "30"],
                ["Amazing lock", "40"],
            ]
        ),
    ],

    // MARK: Heal
    "heal": [
        ReferenceTable(
            title: "Heal Task DCs",
            headers: ["Task", "DC"],
            rows: [
                ["First aid (stabilize dying creature)", "15"],
                ["Long-term care (double natural healing)", "15"],
                ["Treat wounds from caltrops, spike growth, spike stones", "15"],
                ["Treat deadly wounds (restore 1 hp per level, once per day per patient)", "20"],
                ["Treat poison (new save vs. poison)", "Poison's save DC"],
                ["Treat disease (new save vs. disease)", "Disease's save DC"],
            ]
        ),
    ],

    // MARK: Knowledge
    "knowledge": [
        ReferenceTable(
            title: "Knowledge DCs by Topic",
            headers: ["Task", "DC"],
            rows: [
                ["Identify a common monster's abilities or weaknesses", "10 + monster's CR"],
                ["Identify an uncommon monster's abilities or weaknesses", "15 + monster's CR"],
                ["Identify a rare monster's abilities or weaknesses", "20 + monster's CR"],
                ["Recall basic facts about a topic (common knowledge)", "10"],
                ["Recall moderately obscure facts", "15–20"],
                ["Recall highly obscure or esoteric facts", "25–30"],
            ]
        ),
        ReferenceTable(
            title: "Monster Lore by Creature Type",
            headers: ["Creature Type", "Knowledge Skill"],
            rows: [
                ["Aberrations", "Dungeoneering"],
                ["Animals", "Nature"],
                ["Constructs", "Arcana or Engineering"],
                ["Dragons", "Arcana"],
                ["Fey", "Nature"],
                ["Humanoids", "Local"],
                ["Magical beasts", "Arcana or Nature"],
                ["Monstrous humanoids", "Local"],
                ["Oozes", "Dungeoneering"],
                ["Outsiders", "Planes"],
                ["Plants", "Nature"],
                ["Undead", "Religion"],
                ["Vermin", "Nature"],
            ]
        ),
    ],

    // MARK: Perception
    "perception": [
        ReferenceTable(
            title: "Perception Base DCs",
            headers: ["Detail", "DC"],
            rows: [
                ["Hear the sound of battle", "–10"],
                ["Notice the flat side of a blade before it hits", "–5"],
                ["Hear the details of a conversation", "0"],
                ["Notice a visible creature", "0"],
                ["Determine if food is spoiled", "5"],
                ["Hear the sound of a creature walking", "10"],
                ["Hear the details of a whispered conversation", "15"],
                ["Find the average secret door", "20"],
                ["Hear a creature trying to be quiet", "Varies"],
                ["Notice a pickpocket", "Opposed by Sleight of Hand"],
                ["Notice a creature using Stealth", "Opposed by Stealth"],
            ]
        ),
        ReferenceTable(
            title: "Perception Modifiers",
            headers: ["Condition", "Modifier"],
            rows: [
                ["Distance to the source, per 10 feet", "+1 DC"],
                ["Through a closed door", "+5 DC"],
                ["Through a wall (per foot of thickness)", "+15 DC"],
                ["Favorable conditions (open terrain)", "–2 DC"],
                ["Unfavorable conditions (darkness, crowd)", "+2 DC"],
                ["Terrible conditions (dense fog, snowstorm)", "+5 DC"],
                ["Creature is invisible", "+20 DC"],
                ["You are distracted", "+5 DC"],
            ]
        ),
    ],

    // MARK: Stealth
    "stealth": [
        ReferenceTable(
            title: "Stealth Size Modifiers",
            headers: ["Creature Size", "Stealth Modifier"],
            rows: [
                ["Fine", "+16"],
                ["Diminutive", "+12"],
                ["Tiny", "+8"],
                ["Small", "+4"],
                ["Medium", "+0"],
                ["Large", "–4"],
                ["Huge", "–8"],
                ["Gargantuan", "–12"],
                ["Colossal", "–16"],
            ]
        ),
        ReferenceTable(
            title: "Invisibility Bonuses",
            headers: ["Condition", "Stealth Bonus"],
            rows: [
                ["Invisible (not moving)", "+40"],
                ["Invisible (moving)", "+20"],
            ]
        ),
    ],

    // MARK: Survival
    "survival": [
        ReferenceTable(
            title: "Tracking Surface DCs",
            headers: ["Surface", "DC"],
            rows: [
                ["Very soft ground (snow, mud)", "5"],
                ["Soft ground (dirt, sand)", "10"],
                ["Firm ground (grass, forest)", "15"],
                ["Hard ground (stone, indoors)", "20"],
            ]
        ),
        ReferenceTable(
            title: "Tracking Modifiers",
            headers: ["Condition", "DC Modifier"],
            rows: [
                ["Every three creatures in the group being tracked", "–1"],
                ["Every 24 hours since the trail was made", "+1"],
                ["Every hour of rain since the trail was made", "+1"],
                ["Fresh snow since trail was made", "+10"],
                ["Poor lighting (overcast, torchlight)", "+2"],
                ["Dim lighting (moonlight)", "+6"],
                ["Creature was moving quickly", "–2"],
                ["Creature was running", "–4"],
                ["Creature left a blood trail", "–2"],
            ]
        ),
        ReferenceTable(
            title: "Survival Task DCs",
            headers: ["Task", "DC"],
            rows: [
                ["Get along in the wild (avoid getting lost, find food/water)", "10"],
                ["Keep yourself and party from getting lost or avoid natural hazards", "15"],
                ["Predict the weather one day in advance", "15"],
                ["Follow a set of tracks", "Varies"],
                ["Endure severe weather without ill effects", "15"],
            ]
        ),
    ],

    // MARK: Swim
    "swim": [
        ReferenceTable(
            title: "Swim Condition DCs",
            headers: ["Water Conditions", "DC"],
            rows: [
                ["Calm water", "10"],
                ["Rough water", "15"],
                ["Stormy water", "20"],
                ["Impossibly stormy water", "30"],
            ]
        ),
    ],

    // MARK: Use Magic Device
    "use magic device": [
        ReferenceTable(
            title: "Use Magic Device DCs",
            headers: ["Task", "DC"],
            rows: [
                ["Activate blindly", "25"],
                ["Decipher a written spell", "25 + spell level"],
                ["Use a scroll", "20 + caster level"],
                ["Use a wand", "20"],
                ["Emulate a class feature", "20"],
                ["Emulate an ability score (each ability)", "15 + ability modifier needed"],
                ["Emulate a race", "25"],
                ["Emulate an alignment", "30"],
            ]
        ),
    ],

    // MARK: Combat (for the "Combat" rules entry)
    "combat": [
        ReferenceTable(
            title: "Concentration Check DCs",
            headers: ["Situation", "Concentration Check DC"],
            rows: [
                ["Cast defensively (avoid AoO)", "15 + double spell level"],
                ["Injured while casting (damage dealt)", "10 + damage + spell level"],
                ["Continuous damage (half max damage)", "10 + half damage + spell level"],
                ["Grappled or pinned while casting", "10 + grappler's CMB + spell level"],
                ["Vigorous motion (boat in waves)", "10 + spell level"],
                ["Violent motion (bouncing wagon)", "15 + spell level"],
                ["Extremely violent motion (earthquake)", "20 + spell level"],
                ["Wind with rain or sleet", "5 + spell level"],
                ["Wind with hail (ranged attacks only)", "10 + spell level"],
                ["Weather is a severe storm (hurricane)", "20 + spell level"],
                ["Entangled", "10 + spell level"],
            ]
        ),
        ReferenceTable(
            title: "Actions That Provoke Attacks of Opportunity",
            headers: ["Action", "Provokes AoO?"],
            rows: [
                ["Move out of a threatened square", "Yes (unless using 5-ft step or Withdraw)"],
                ["Ranged attack", "Yes"],
                ["Cast a spell", "Yes"],
                ["Use a spell-like ability", "Yes"],
                ["Use a skill that requires concentration", "Usually"],
                ["Drink a potion or apply an oil", "Yes"],
                ["Retrieve a stored item", "Yes"],
                ["Read a scroll", "Yes"],
                ["Use a touch spell on held charge", "No"],
                ["Stand up from prone", "Yes"],
                ["Pick up an item", "Yes"],
                ["Load a crossbow", "Yes"],
                ["Attack with natural weapons", "No"],
                ["Total defense", "No"],
                ["5-foot step", "No"],
            ]
        ),
    ],
]
