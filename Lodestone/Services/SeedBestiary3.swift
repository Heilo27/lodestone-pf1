import Foundation

extension SeedDataBuilder {
    func seedBestiary3() async throws {
        let monsters: [MonsterEntry] = [

            // MARK: - CR 1/2

            .make("Nuglub", cr: "1/2", type: "Fey", size: "Small", alignment: "CE",
                  hp: "9 (2d6+2)", ac: 14, speed: "20 ft., climb 20 ft.",
                  attacks: "2 claws +4 (1d3+1), bite +4 (1d4+1)",
                  specialAbilities: "Darkvision 60 ft., low-light vision, spell-like abilities (cause fear 1/day, grease 3/day, pyrotechnics 1/day), SR 11",
                  environment: "Underground",
                  summary: "A spiteful subterranean gremlin that dismantles machinery and traps passages with malicious glee.",
                  desc: "Nuglubs are cave-dwelling gremlins with an insatiable hatred of order, craftsmanship, and anything that functions reliably. They tear apart minecart wheels, jam sluice gates, and lure creatures into pits with fake lights. Despite their size, nuglubs fight with feral ferocity and have been known to overwhelm lone guards through sheer spite.",
                  source: "Bestiary 3", isPremium: true),

            .make("Gourd Leshy", cr: "1/2", type: "Plant", size: "Small", alignment: "N",
                  hp: "9 (2d8)", ac: 14, speed: "20 ft.",
                  attacks: "Slam +1 (1d4–1)",
                  specialAbilities: "Change shape (Small plant), low-light vision, plantspeech (gourds), pass without trace",
                  environment: "Temperate or warm forests",
                  summary: "A small plant creature grown from a gourd, serving as a guardian of plants and wild places.",
                  desc: "Gourd leshies are animated plant spirits shaped like rounded, orange-patched creatures with leafy crowns. Created by druids or spontaneously born from groves of ancient gourds, they tend gardens and orchards with fierce protectiveness. Though gentle by nature, they fight without hesitation against those who harm their charges.",
                  source: "Bestiary 3", isPremium: true),

            // MARK: - CR 1

            .make("Carbuncle", cr: "1", type: "Magical Beast", size: "Tiny", alignment: "N",
                  hp: "13 (3d10–3)", ac: 15, speed: "20 ft.",
                  attacks: "Gore +5 (1d3–2)",
                  specialAbilities: "Gemstone (telepathy 100 ft., commune 1/week), darkvision 60 ft., low-light vision, SR 12",
                  environment: "Warm forests and hills",
                  summary: "A small, gem-horned creature of legend that grants boons — or curses — to those who catch it.",
                  desc: "Carbuncles are rabbit-sized creatures topped with a glowing gemstone horn that pulses with faint magical energy. Legends claim that possessing a carbuncle's gem grants immense wisdom, but actually capturing one is nearly impossible — and those who try often find their luck has turned sharply for the worse. Carbuncles are more curious than aggressive but will vanish into shadow if threatened.",
                  source: "Bestiary 3", isPremium: true),

            .make("King Crab", cr: "1", type: "Vermin (aquatic)", size: "Medium", alignment: "N",
                  hp: "15 (2d8+6)", ac: 16, speed: "30 ft., swim 20 ft.",
                  attacks: "2 claws +4 (1d4+3 plus grab)",
                  specialAbilities: "Amphibious, constrict (1d4+3), darkvision 60 ft.",
                  environment: "Temperate or cold aquatic or coastlines",
                  summary: "A large, aggressive crab that seizes prey in its powerful claws.",
                  desc: "King crabs are hulking arthropods that patrol tidal zones and shallow coastal waters, claiming stretches of beach with surprising territorial aggression. Their claws can crush bone, and once they lock onto prey they rarely let go. Adventurers who wade through coastal shallows without care often learn the hard way that what looks like a rock may be a waiting king crab.",
                  source: "Bestiary 3", isPremium: true),

            // MARK: - CR 2

            .make("Aghash Div", cr: "3", type: "Outsider (div, evil, extraplanar)", size: "Medium", alignment: "NE",
                  hp: "30 (4d10+8)", ac: 16, speed: "30 ft., fly 50 ft. (average)",
                  attacks: "2 claws +6 (1d4+2 plus rend), bite +6 (1d6+2)",
                  specialAbilities: "Darkvision 60 ft., rend (2d4+3), spell-like abilities (bestow curse, evil eye 3/day, misfortune 3/day), SR 14",
                  environment: "Any (Abaddon)",
                  summary: "A demonic genie of misfortune that delights in heaping curses upon the unlucky.",
                  desc: "Aghash divs are hunched, goat-headed fiends who feed on misery and luck. They drift through mortal communities in disguise, picking out individuals already beset by misfortune and amplifying it until the target's life collapses entirely. An aghash takes careful notes of every slight against it and repays each with compounding interest.",
                  source: "Bestiary 3", isPremium: true),

            .make("Fetchling", cr: "1/2", type: "Outsider (native)", size: "Medium", alignment: "N",
                  hp: "5 (1d10)", ac: 13, speed: "30 ft.",
                  attacks: "Short sword +1 (1d6–1)",
                  specialAbilities: "Darkvision 60 ft., low-light vision, shadow blending, shadowy resistance (cold 5, electricity 5), spell-like abilities (disguise self 1/day)",
                  environment: "Any (Shadow Plane)",
                  summary: "A shadow-touched humanoid descended from humans trapped long ago in the Shadow Plane.",
                  desc: "Fetchlings are the pale, shadow-touched descendants of humans who became stranded on the Shadow Plane in the distant past. Generations of exposure to the plane's lightless energies have left them with ashen skin, grey-tinged hair, and an innate resistance to shadow magic. Many fetchlings serve as scouts and messengers between the planes, their dual nature making them uniquely suited to navigating both light and darkness.",
                  source: "Bestiary 3", isPremium: true),

            .make("Gathlain", cr: "1", type: "Fey", size: "Small", alignment: "CG",
                  hp: "11 (2d6+4)", ac: 14, speed: "20 ft., fly 40 ft. (average)",
                  attacks: "Spear +1 (1d6–1)",
                  specialAbilities: "Low-light vision, spell-like abilities (entangle 3/day, faerie fire 1/day, speak with plants at will), woodland stride",
                  environment: "Temperate or warm forests",
                  summary: "A small winged fey with a plant-like lower body who serves as a forest guardian.",
                  desc: "Gathlains appear as small humanoids whose lower bodies blend seamlessly into a mass of living vines, leaves, and flowers. They flutter through forest canopies on dragonfly-like wings, investigating anything that enters their territory with insatiable curiosity. Friendly toward those who respect natural spaces, gathlains become fierce and relentless enemies to those who burn or clear-cut the forests they call home.",
                  source: "Bestiary 3", isPremium: true),

            // MARK: - CR 3

            .make("Adherer", cr: "3", type: "Monstrous Humanoid", size: "Medium", alignment: "N",
                  hp: "32 (5d10+5)", ac: 15, speed: "30 ft.",
                  attacks: "2 slams +8 (1d4+2 plus grab)",
                  specialAbilities: "Adhesive (grab, DC 14 Escape Artist or Strength), darkvision 60 ft., sticky grasp, unnerving strikes",
                  environment: "Any",
                  summary: "A mummified-looking creature whose wrappings are coated in a supernatural adhesive that traps victims.",
                  desc: "Adherers are wrapped in layer upon layer of cloth and membrane coated in a potent supernatural adhesive. Anything that touches them sticks fast, and they exploit this mercilessly — grabbing opponents, pulling weapons from hands, and allowing allies to pummel helpless prey. Their origin is disputed; some scholars believe they are animated mummies, while others claim they are something far older and stranger.",
                  source: "Bestiary 3", isPremium: true),

            .make("Vexgit Gremlin", cr: "1", type: "Fey", size: "Tiny", alignment: "CE",
                  hp: "10 (3d6)", ac: 16, speed: "20 ft., climb 10 ft.",
                  attacks: "Wrench +5 (1d4–2)",
                  specialAbilities: "Darkvision 60 ft., low-light vision, malfunction (break objects as swift action), spell-like abilities (dancing lights, mending 3/day, open/close at will), tinkering",
                  environment: "Any urban or underground",
                  summary: "A tiny mechanical saboteur that delights in breaking complex devices at the worst possible moments.",
                  desc: "Vexgit gremlins are obsessed with the inner workings of mechanical devices — specifically with making them fail. They squeeze into clock towers and siege engine housings, loosening key bolts and misaligning gears so everything breaks at the most inconvenient moment possible. A city plagued by vexgits will find its drawbridges jammed, its water mills seized, and its locks mysteriously unable to open.",
                  source: "Bestiary 3", isPremium: true),

            .make("Nereid", cr: "4", type: "Fey (aquatic)", size: "Medium", alignment: "CN",
                  hp: "42 (12d6)", ac: 16, speed: "30 ft., swim 60 ft.",
                  attacks: "Touch +7 (1d3 Con drain)",
                  specialAbilities: "Drowning kiss (DC 16 Fort), poison touch (Constitution drain), unearthly grace (+6 deflection to AC, +6 to saves), water dependent",
                  environment: "Temperate or warm aquatic or coastlines",
                  summary: "A beautiful and deadly sea fey whose kiss can drown a man far from any water.",
                  desc: "Nereids are ethereally beautiful water spirits whose touch carries the cold chill of the deep sea. They appear on shores and riverbanks to lure sailors and fishermen with their haunting singing, then drag willing victims into the depths. A nereid in love is arguably more dangerous than one scorned — their possessiveness is absolute, and they do not distinguish between protecting and smothering.",
                  source: "Bestiary 3", isPremium: true),

            // MARK: - CR 4

            .make("Desert Drake", cr: "4", type: "Dragon", size: "Large", alignment: "NE",
                  hp: "47 (5d12+15)", ac: 18, speed: "20 ft., burrow 20 ft., fly 60 ft. (average)",
                  attacks: "Bite +9 (1d8+6), 2 claws +9 (1d6+4), sting +9 (1d4+4)",
                  specialAbilities: "Desert camouflage, speed surge, stun sting (DC 15 Fort), darkvision 60 ft., low-light vision",
                  environment: "Warm deserts",
                  summary: "A swift and cunning draconic predator perfectly adapted to the scorching desert.",
                  desc: "Desert drakes are lean, copper-scaled dragons that have traded the typical draconic bulk for blistering speed. They launch ambushes from beneath the sand, erupting upward to slam prey with their paralytic sting before biting off chunks. Desert tribes often regard them as divine punishment — an encounter with a desert drake is rarely survived by the unprepared.",
                  source: "Bestiary 3", isPremium: true),

            .make("Young Bhole", cr: "5", type: "Magical Beast", size: "Huge", alignment: "N",
                  hp: "57 (6d10+24)", ac: 18, speed: "30 ft., burrow 20 ft.",
                  attacks: "Bite +11 (2d6+8/19–20 plus grab), slam +11 (2d4+8)",
                  specialAbilities: "Constrict (2d4+8), devour (swallow whole), tremorsense 60 ft., darkvision 60 ft.",
                  environment: "Underground",
                  summary: "A juvenile example of one of nature's most terrifying burrowing predators — enormous, eyeless, and ravenous.",
                  desc: "Even a young bhole is larger than a house, a writhing column of muscle and toothlined mouths. They tunnel through rock and earth with appalling ease, rising to devour livestock, buildings, and travelers without distinguishing between them. Adult bholes are among the most feared creatures in the world; encountering even a young specimen is a crisis-level event for most communities.",
                  source: "Bestiary 3", isPremium: true),

            .make("Caulborn", cr: "7", type: "Outsider", size: "Medium", alignment: "N",
                  hp: "85 (10d10+30)", ac: 22, speed: "30 ft.",
                  attacks: "2 slams +14 (1d8+5 plus thought drain)",
                  specialAbilities: "Communal mind (telepathy 100 ft., hive mind), consume thoughts (DC 18 Will), prophetic sight, spell-like abilities (arcane eye, detect thoughts at will; modify memory 3/day), thought drain (1d6 Wis damage)",
                  environment: "Any",
                  summary: "An enigmatic humanoid-shaped outsider that feeds on thoughts and memories.",
                  desc: "Caulborns are faceless, eyeless beings that sustain themselves on psychic energy harvested from the minds of other creatures. They appear in places of great mental distress — battlefields, asylums, places of torture — drifting silently and drinking in the overflow of emotion and memory. Caulborns share a hive mind with others of their kind and collectively accumulate vast repositories of stolen memories spanning centuries.",
                  source: "Bestiary 3", isPremium: true),

            // MARK: - CR 5

            .make("Pairaka Div", cr: "6", type: "Outsider (div, evil, extraplanar)", size: "Medium", alignment: "NE",
                  hp: "66 (12d10+0)", ac: 20, speed: "30 ft., fly 50 ft. (good)",
                  attacks: "2 claws +14 (1d6+4 plus disease)",
                  specialAbilities: "Disease (consumption, DC 18 Fort), dream haunting, seductive gaze (DC 19 Will), spell-like abilities (charm person at will, suggestion 3/day, dream 1/day), DR 10/cold iron or good, SR 17",
                  environment: "Any (Abaddon)",
                  summary: "A sensuous fiend that corrupts mortals through dreams and desire.",
                  desc: "Pairaka divs are beings of hedonistic corruption, appearing as impossibly attractive humanoids who exist to spread spiritual and physical contamination through temptation. They invade dreams to plant obsessions, visit the waking in disguise to nurture addictions, and ultimately leave their victims hollow shells. A pairaka's true joy is not the act of corruption but the slow-motion observation of a virtuous soul's collapse.",
                  source: "Bestiary 3", isPremium: true),

            .make("Young Faerie Dragon", cr: "2", type: "Dragon", size: "Tiny", alignment: "CG",
                  hp: "22 (4d12)", ac: 17, speed: "10 ft., fly 60 ft. (perfect), swim 30 ft.",
                  attacks: "Bite +8 (1d3–1), sting +8 (1d2–1 plus euphoric breath)",
                  specialAbilities: "Euphoric breath (DC 12 Fort or confused 1d6 rounds), immunity to paralysis and sleep, low-light vision, spell-like abilities (dancing lights, detect magic, flare, ghost sound, prestidigitation at will), telepathy 100 ft.",
                  environment: "Temperate or warm forests",
                  summary: "A tiny, playful dragon that lives in forests and delights in pranks and illusions.",
                  desc: "Faerie dragons are mischievous, cat-sized dragons with butterfly wings who spend their centuries-long lives playing pranks and collecting interesting trinkets. Their euphoric breath transforms enemies from threats into giggling, disoriented targets. Despite their frivolous nature, faerie dragons form deep bonds of loyalty and have fought to the death defending companions they deemed worthy.",
                  source: "Bestiary 3", isPremium: true),

            .make("Ecorché", cr: "8", type: "Undead", size: "Medium", alignment: "CE",
                  hp: "90 (12d8+36)", ac: 21, speed: "30 ft.",
                  attacks: "2 claws +15 (1d8+6 plus grab and flay)",
                  specialAbilities: "Flay (remove skin, -4 AC, Con damage), grab, DR 10/bludgeoning, darkvision 60 ft., undead traits",
                  environment: "Any",
                  summary: "A flayed undead horror that tears the skin from living victims to wear as a disguise.",
                  desc: "Ecorchés are terrible undead creatures created when a living being is skinned alive through a ritual of profound cruelty. The resulting creature has no skin of its own and is driven by a singular obsession: acquiring the skin of the living to temporarily look and feel whole again. An ecorché wearing fresh skin passes as a badly sunburned humanoid and can infiltrate communities before its predatory nature reasserts itself.",
                  source: "Bestiary 3", isPremium: true),

            // MARK: - CR 6

            .make("Shaitan Genie", cr: "7", type: "Outsider (earth, extraplanar)", size: "Large", alignment: "LN",
                  hp: "85 (10d10+30)", ac: 22, speed: "20 ft., burrow 30 ft., fly 30 ft. (average)",
                  attacks: "2 slams +14 (1d8+6 plus earth mastery)",
                  specialAbilities: "Earth mastery (+1 attack and damage when both shaitan and target are on the ground), spell-like abilities (meld into stone, soften earth and stone, stone shape at will; wall of stone 3/day; transmute rock to mud 1/day), whirlwind (sandstorm form), DR 5/—",
                  environment: "Elemental Plane of Earth",
                  summary: "A proud and powerful earth genie capable of reshaping stone and dispensing wishes.",
                  desc: "Shaitans are lordly genies of earth and stone who regard other creatures as inherently inferior unless those creatures can demonstrate wealth, power, or an impressive pedigree. They are less capricious than djinn or efreet but every bit as proud, and slights against their dignity are remembered for centuries. A shaitan bound to service complies with the letter of any agreement while engineering maximum resentment.",
                  source: "Bestiary 3", isPremium: true),

            .make("Kirin", cr: "7", type: "Magical Beast", size: "Large", alignment: "LG",
                  hp: "80 (7d10+42)", ac: 22, speed: "60 ft., fly 120 ft. (good)",
                  attacks: "Gore +12 (1d10+7), 2 hooves +12 (1d6+7)",
                  specialAbilities: "Holy (+2d6 damage vs. evil), lay on hands (5/day, 3d6), low-light vision, scent, spell-like abilities (detect evil at will, bless 3/day, cure serious wounds 3/day, daylight 1/day, neutralize poison 1/day), SR 18",
                  environment: "Temperate and warm plains and forests",
                  summary: "A noble celestial horse-like creature with a single spiraling horn, considered a herald of divine justice.",
                  desc: "Kirins are revered as omens of divine favor wherever they appear. Their gleaming scales, flowing manes, and single pearlescent horn mark them as the living embodiment of virtue and cosmic order. A kirin will not knowingly allow an evil being to ride or approach it, and they have been known to abandon comfortable territories to seek out and confront sources of great wickedness.",
                  source: "Bestiary 3", isPremium: true),

            // MARK: - CR 7

            .make("Adult Forest Drake", cr: "7", type: "Dragon", size: "Large", alignment: "NE",
                  hp: "85 (9d12+27)", ac: 21, speed: "20 ft., climb 30 ft., fly 60 ft. (average)",
                  attacks: "Bite +13 (2d6+8), 2 claws +13 (1d6+5), sting +13 (1d4+5)",
                  specialAbilities: "Camouflage (forest), entangling sting (DC 17 Fort or entangled), speed surge, darkvision 60 ft., low-light vision",
                  environment: "Temperate or warm forests",
                  summary: "A large, cunning forest-dwelling drake that ambushes prey from the canopy.",
                  desc: "Forest drakes are predatory drakes who have evolved to exploit the three-dimensional hunting ground of dense forest. Their mottled green scales render them nearly invisible against a backdrop of leaves, and they possess the patience to wait motionless for hours before striking. An adult forest drake has claimed a territory the size of a small duchy and will aggressively defend every tree within it.",
                  source: "Bestiary 3", isPremium: true),

            // MARK: - CR 8

            .make("Shira Div", cr: "9", type: "Outsider (div, evil, extraplanar)", size: "Large", alignment: "NE",
                  hp: "115 (11d10+55)", ac: 23, speed: "50 ft.",
                  attacks: "2 claws +15 (2d6+8/19–20 plus rend), bite +15 (2d8+8)",
                  specialAbilities: "Dread gaze (DC 19 Will or shaken for 1d6 rounds), rend (2d6+12), spell-like abilities (fear 3/day, unholy blight 3/day), DR 10/cold iron or good, SR 20",
                  environment: "Any (Abaddon)",
                  summary: "A lion-headed div that embodies the destruction of courage and the conquest of heroism.",
                  desc: "Shira divs are assigned by the lords of Abaddon to destroy exemplars of heroism. They hunt renowned warriors, beloved leaders, and celebrated champions — not merely to kill them, but to first thoroughly destroy their reputations and break their spirits. A shira will patiently engineer circumstances where its target appears to fail, betray allies, or act dishonorably before finally arriving for the killing blow.",
                  source: "Bestiary 3", isPremium: true),

            .make("Adult Faerie Dragon", cr: "4", type: "Dragon", size: "Tiny", alignment: "CG",
                  hp: "42 (12d12–12)", ac: 18, speed: "10 ft., fly 60 ft. (perfect), swim 30 ft.",
                  attacks: "Bite +14 (1d3–1), sting +14 (1d2–1 plus euphoric breath)",
                  specialAbilities: "Euphoric breath (DC 14 Fort or confused 1d6 rounds), immunity to paralysis and sleep, low-light vision, spell-like abilities (greater invisibility 3/day; shadow walk 1/day; at will: dancing lights, detect magic, flare, ghost sound, prestidigitation, silent image, suggestion), telepathy 100 ft.",
                  environment: "Temperate or warm forests",
                  summary: "An older faerie dragon whose accumulated centuries have deepened its magic and sharpened its pranks.",
                  desc: "Adult faerie dragons retain all of the playfulness of their youth but have layered centuries of experience into their mischief. Their illusion magic has grown sophisticated enough to fool even experienced spellcasters, and their euphoric breath now carries a more potent dose of dreamlike confusion. An adult faerie dragon has likely outlived a dozen generations of the forest creatures it calls friends.",
                  source: "Bestiary 3", isPremium: true),

            .make("Toshigami Kami", cr: "10", type: "Outsider (kami, native)", size: "Medium", alignment: "NG",
                  hp: "127 (15d10+45)", ac: 26, speed: "30 ft.",
                  attacks: "Branch +20/+15/+10 (2d6+6/19–20/×3 plus 4d6 aging)",
                  specialAbilities: "Aging strike (target ages 2d10 years, DC 22 Fort negates), age drain (CHA drain), merge with ward, spell-like abilities (haste, slow 3/day; time stop 1/day), DR 10/cold iron, SR 21",
                  environment: "Temperate forests",
                  summary: "An ancient tree spirit whose touch ages creatures and who presides over the flow of time near its ward.",
                  desc: "Toshigami are kami bound to the oldest and most venerated trees in a forest. They appear as small, ancient humanoids wrapped in bark-like skin, with branches growing from their shoulders and hair like trailing moss. Their touch accelerates the natural aging process catastrophically, withering flesh and draining life. A forest with a toshigami warden is a forest that has endured for millennia — and intends to endure for millennia more.",
                  source: "Bestiary 3", isPremium: true),

            // MARK: - CR 10

            .make("Apocalypse Horse", cr: "10", type: "Outsider (evil, extraplanar)", size: "Large", alignment: "NE",
                  hp: "126 (12d10+60)", ac: 25, speed: "60 ft., fly 120 ft. (perfect)",
                  attacks: "2 hooves +18 (2d6+8 plus plague), bite +18 (1d8+8)",
                  specialAbilities: "Plague (DC 20 Fort, filth fever), spell-like abilities (contagion at will, horrid wilting 1/day), DR 10/good, fast healing 10, SR 21",
                  environment: "Any (Abaddon)",
                  summary: "A hellish steed of plague and pestilence, one of the Horsemen's apocalyptic servants.",
                  desc: "Apocalypse horses are harbingers of catastrophe, divine instruments of the Horsemen of the Apocalypse given form and terrible purpose. Each is associated with one of the four facets of apocalypse — war, famine, pestilence, or death — and spreads its particular brand of calamity with every hoof-strike. Their arrival in a region historically precedes mass casualty events, and their appearance alone is enough to empty towns.",
                  source: "Bestiary 3", isPremium: true),

            .make("Akvan Div", cr: "20", type: "Outsider (div, evil, extraplanar)", size: "Huge", alignment: "NE",
                  hp: "324 (24d10+192)", ac: 37, speed: "50 ft., fly 90 ft. (good)",
                  attacks: "2 claws +32 (2d8+12/19–20 plus rend), bite +32 (2d6+12)",
                  specialAbilities: "Rend (4d8+18), spell-like abilities (destruction 3/day, meteor swarm 1/day, wish for evil purposes 1/day), DR 15/cold iron and good, SR 31",
                  environment: "Any (Abaddon)",
                  summary: "An ancient and supremely powerful div, one of the mightiest servants of the horsemen.",
                  desc: "Akvan divs are catastrophic entities that embody annihilation itself. Even among the terrible hierarchy of divs, akvan stand apart — they are not merely evil but are the distillation of cosmic destruction given agency and purpose. Summoning an akvan without airtight bindings is considered suicidal by even the most arrogant of mortal mages, and those who have tried have rarely left accounts of the attempt.",
                  source: "Bestiary 3", isPremium: true),

            // MARK: - CR 12

            .make("Aldinach Div", cr: "19", type: "Outsider (div, evil, extraplanar)", size: "Huge", alignment: "NE",
                  hp: "297 (22d10+176)", ac: 35, speed: "50 ft., fly 80 ft. (good), swim 60 ft.",
                  attacks: "2 claws +30 (2d6+11/19–20 plus rend), tail slap +30 (2d8+11)",
                  specialAbilities: "Rend (4d6+16), summon div (1/day, 1d3 aghash or 1 shira), DR 15/cold iron and good, SR 30",
                  environment: "Warm deserts (Abaddon)",
                  summary: "One of the most powerful div nobles, embodying ruination through the desert's merciless heat.",
                  desc: "Aldinach is among the greatest and most feared of all divs, a colossal scorpion-bodied fiend associated with destructive heat, desolation, and the death of civilizations. Entire desert nations have prayed to be spared her attention. An aldinach-level div does not hunt individuals — it hunts empires, watching patiently as scorching winds and famine reduce kingdoms to dust.",
                  source: "Bestiary 3", isPremium: true),

            // MARK: - CR 15

            .make("Adult Bhole", cr: "20", type: "Magical Beast", size: "Colossal", alignment: "N",
                  hp: "333 (18d10+234)", ac: 35, speed: "50 ft., burrow 50 ft.",
                  attacks: "Bite +30 (4d8+20/19–20 plus grab), slam +30 (4d6+20)",
                  specialAbilities: "Devastating (deals 6d6 damage to all in 15 ft. when moving through), swallow whole (6d6+20 bludgeoning, AC 20, 33 hp), tremorsense 120 ft., darkvision 60 ft.",
                  environment: "Underground",
                  summary: "One of nature's most terrifying predators — a colossal, mindless tunneling worm that devours everything in its path.",
                  desc: "Adult bholes are geological events wearing a creature's face. Their passage collapses mountains, reroutes rivers, and turns thriving regions into wastelands. They have no goals, no territory, no social structure — only hunger, expressed at a scale that challenges the definition of catastrophe. Entire civilizations have been lost to bhole migrations, and the tunnels they leave behind become the dungeons of future ages.",
                  source: "Bestiary 3", isPremium: true),

        ]

        for monster in monsters {
            try await db.insertMonster(monster)
        }
    }
}
