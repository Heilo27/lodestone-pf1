import Foundation

extension SeedDataBuilder {
    func seedBestiary5() async throws {
        let monsters: [MonsterEntry] = [

            // MARK: - CR 1/2

            .make("Amoeba Swarm", cr: "1/2", type: "Ooze (swarm)", size: "Fine", alignment: "N",
                  hp: "9 (2d8)", ac: 16, speed: "10 ft., climb 10 ft.",
                  attacks: "Swarm (1d6 plus distraction and digestive acid)",
                  specialAbilities: "Acid (1d4 after contact), blindsight 30 ft., distraction (DC 10), immune to weapon damage, ooze traits, swarm traits",
                  environment: "Any damp",
                  summary: "A seething mass of microscopic oozes that dissolves organic material on contact.",
                  desc: "Amoeba swarms are collections of tiny, individual ooze-creatures that together form a creeping mass capable of dissolving flesh through sustained contact. They are among the simplest of all monster life-forms, driven entirely by chemical gradients toward organic matter. Though individually negligible, as a swarm they can overwhelm small creatures quickly, and their distributed nature makes conventional weapons useless against them.",
                  source: "Bestiary 5", isPremium: true),

            // MARK: - CR 1

            .make("Bog Nixie", cr: "2", type: "Fey (aquatic)", size: "Small", alignment: "CN",
                  hp: "16 (3d6+6)", ac: 14, speed: "20 ft., swim 30 ft.",
                  attacks: "Short sword +4 (1d4+1)",
                  specialAbilities: "Captivating song (DC 13 Will or fascinated), charm (DC 13 Will), nixie's lure (fascinated creatures approach water), water dependent, low-light vision",
                  environment: "Temperate bogs and swamps",
                  summary: "A swamp-dwelling fey whose haunting song lures travelers into the bog.",
                  desc: "Bog nixies lurk in the murky water of swamps and fens, using their haunting voices to draw travelers off safe paths and into the treacherous wetlands. Unlike their fresh-water cousins, bog nixies have a distinctly darker aesthetic — their skin carries a greenish tinge, their hair trails with water-weeds, and their songs have a minor-key mournfulness that experienced travelers associate with incoming danger. Some bog nixies form protective agreements with druid circles, serving as guardians of their wetland territories.",
                  source: "Bestiary 5", isPremium: true),

            .make("Raktavarna", cr: "1", type: "Outsider (native, rakshasa)", size: "Tiny", alignment: "LE",
                  hp: "13 (3d10–3)", ac: 15, speed: "20 ft., swim 20 ft.",
                  attacks: "Bite +8 (1d4–1 plus mind link)",
                  specialAbilities: "Mind link (view target's thoughts and memories after biting, DC 12 Will negates), change shape (object or Small/Tiny animal), detect magic at will, read thoughts 3/day, SR 12",
                  environment: "Any",
                  summary: "The weakest of rakshasas, taking the form of a jeweled snake or ornate weapon to spy on mortals.",
                  desc: "Raktavarnas are the lowest rung of the rakshasa hierarchy — tiny, gem-scaled serpentine beings who serve their more powerful kin as spies and informants. Their ability to reshape themselves into inanimate objects makes them perfect infiltrators; a raktavarna might spend months as a decorative dagger in a king's collection, patiently listening to state secrets before reporting back. Their bite establishes a temporary mental link that allows them to rifle through the victim's recent memories.",
                  source: "Bestiary 5", isPremium: true),

            // MARK: - CR 2

            .make("Chemosit", cr: "3", type: "Magical Beast", size: "Large", alignment: "NE",
                  hp: "30 (4d10+8)", ac: 14, speed: "40 ft., climb 20 ft.",
                  attacks: "2 claws +7 (1d6+4), bite +7 (1d8+4)",
                  specialAbilities: "Darkvision 60 ft., fear howl (DC 13 Will or shaken 1d6 rounds), low-light vision, scent",
                  environment: "Warm forests and hills",
                  summary: "A large, ape-like predator with a terrifying howl that paralyzes prey with fear.",
                  desc: "Chemosits are powerful ambush predators whose most dangerous weapon is psychological — their howl registers in the prey animal's brain as pure, unmediated terror. The howl evolved to flush prey from cover, but it works just as effectively on humanoids. Stories in villages bordering chemosit territory describe the experience as not fear of something, but fear itself given sound: you hear it and your body has already decided to run before you've processed what it is.",
                  source: "Bestiary 5", isPremium: true),

            .make("Doru Div", cr: "2", type: "Outsider (div, evil, extraplanar)", size: "Tiny", alignment: "NE",
                  hp: "16 (3d10)", ac: 17, speed: "30 ft., fly 50 ft. (perfect)",
                  attacks: "Bite +8 (1d4–1 plus distrust)",
                  specialAbilities: "Distrust (DC 12 Will or distrust nearest ally for 1 hour), spell-like abilities (detect good, detect magic, invisibility at will), DR 5/cold iron or good, SR 13",
                  environment: "Any (Abaddon)",
                  summary: "The weakest div, a pestilential nuisance that sows doubt and distrust among allies.",
                  desc: "Doru divs are the least of all divs in raw power but are arguably the most insidious. They slip invisibly through adventuring parties, whispering in ears and amplifying minor doubts into serious suspicions. A group that begins arguing about whether to split treasure equally, or who stayed back during the last fight, has almost certainly attracted a doru. Their ultimate goal is not death but the erosion of the trust that makes collective survival possible.",
                  source: "Bestiary 5", isPremium: true),

            // MARK: - CR 4

            .make("Gloomwasp", cr: "4", type: "Magical Beast", size: "Medium", alignment: "NE",
                  hp: "42 (5d10+15)", ac: 17, speed: "20 ft., fly 60 ft. (good)",
                  attacks: "Sting +8 (1d8+4 plus poison), 2 claws +8 (1d6+4)",
                  specialAbilities: "Darkvision 60 ft., low-light vision, poison (injury, DC 15 Fort, 1d4 Str/paralysis), shadow blend (+8 Stealth in dim light)",
                  environment: "Temperate or warm forests and underground",
                  summary: "A shadow-infused wasp that paralyzes victims and carries them back to a subterranean hive.",
                  desc: "Gloomwasps are magical beasts that have absorbed shadow-essence into their biology, turning their carapace a deep, light-drinking black. They hunt in dim light where their shadow blending makes them nearly invisible and ambush prey with a paralyzing sting. Paralyzed victims are carried back to the hive where they become both living food source and reproductive hosts. A gloomwasp hive is easily identified by the collection of paralyzed, cocooned creatures suspended from the ceiling.",
                  source: "Bestiary 5", isPremium: true),

            // MARK: - CR 5

            .make("Haniver", cr: "3", type: "Fey (aquatic)", size: "Small", alignment: "CN",
                  hp: "27 (6d6+6)", ac: 15, speed: "20 ft., swim 40 ft.",
                  attacks: "2 claws +7 (1d4+2), bite +7 (1d4+2)",
                  specialAbilities: "Amphibious, low-light vision, spell-like abilities (obscuring mist 3/day, water breathing at will, fog cloud 1/day)",
                  environment: "Temperate or warm aquatic and coastlines",
                  summary: "A mischievous sea fey that resembles a preserved 'devil fish' and disrupts maritime activities.",
                  desc: "Hanivers are small, flat-bodied sea fey that have the peculiar habit of mummifying themselves — or allowing themselves to appear mummified — when they want to pass undetected among humanoids. They have been responsible for countless 'sea devil' hoaxes involving preserved specimens sold to credulous collectors. Active hanivers are less harmless, delighting in fouling nets, jamming rudders, and generally making the lives of fishermen and sailors difficult.",
                  source: "Bestiary 5", isPremium: true),

            .make("Irnakurse", cr: "5", type: "Outsider (chaotic, evil)", size: "Large", alignment: "CE",
                  hp: "57 (6d10+24)", ac: 18, speed: "30 ft.",
                  attacks: "2 tentacles +9 (1d8+4 plus grab), bite +9 (2d6+4)",
                  specialAbilities: "Abyssal corruption (touch, DC 16 Fort or gain chaotic evil alignment temporarily), grab, spell-like abilities (blur at will, dispel magic 1/day), constrict (1d8+6)",
                  environment: "Abyss (any)",
                  summary: "A demonic tentacled horror that corrupts the morals of those it touches.",
                  desc: "Irnakurses are mid-ranking abyssal entities that embody moral corruption in a very literal sense — their touch reaches into the ethical core of a creature and temporarily rewrites it. A paladin grabbed by an irnakurse may find the certainties they relied on suddenly feeling arbitrary and negotiable. The corruption fades, but the memory of what it felt like to not care never quite does.",
                  source: "Bestiary 5", isPremium: true),

            // MARK: - CR 6

            .make("Jubilee", cr: "6", type: "Fey", size: "Small", alignment: "CG",
                  hp: "54 (12d6+12)", ac: 19, speed: "30 ft., fly 50 ft. (perfect)",
                  attacks: "Touch +10 (1d6+2 plus euphoria)",
                  specialAbilities: "Euphoria (DC 18 Will or affected as by good hope and confused alternating, 1 minute), inspiration aura (allies within 30 ft. gain +2 morale), low-light vision, spell-like abilities (dancing lights, glitterdust 3/day; rainbow pattern 1/day)",
                  environment: "Temperate forests and plains",
                  summary: "A radiant fey that fills the air with euphoria and light, emboldening allies and confusing foes.",
                  desc: "Jubilees are celebratory fey who seem to have been specifically designed by the First World to mark occasions of great joy. They appear at festivals, weddings, and victories, trailing shimmering light and filling the air with a contact euphoria that turns even grief-stricken crowds briefly ecstatic. Their intent is wholly benevolent — they cannot understand why anyone would not want to feel wonderful — which is why their area-of-effect euphoria indiscriminately confuses enemies and friends alike.",
                  source: "Bestiary 5", isPremium: true),

            .make("Young Kimenhul", cr: "9", type: "Magical Beast", size: "Huge", alignment: "CE",
                  hp: "115 (11d10+55)", ac: 23, speed: "40 ft., swim 30 ft.",
                  attacks: "Bite +16 (2d8+9/19–20 plus grab), 2 claws +16 (2d6+9)",
                  specialAbilities: "Constrict (2d6+13), darkvision 60 ft., low-light vision, scent, swallow whole (2d8+9, AC 18, 11 hp), terrifying roar (DC 20 Will or frightened 2d6 rounds)",
                  environment: "Cold or temperate forests and hills",
                  summary: "A young but already enormous predatory beast associated with primal fear and the deep wilderness.",
                  desc: "Young kimenhuls are already large enough to eat horses whole and powerful enough to pull down castle gates. They are associated in folklore with the end of safe boundaries — a kimenhul in a region means that something has gone wrong with the natural order of that place, because they typically avoid settled areas. Adults are even more daunting; encountering even a young specimen is a sign that the adventuring party has traveled beyond anywhere that might be considered safe.",
                  source: "Bestiary 5", isPremium: true),

            // MARK: - CR 7

            .make("Llorona", cr: "10", type: "Undead", size: "Medium", alignment: "CE",
                  hp: "127 (15d8+60)", ac: 22, speed: "30 ft., fly 60 ft. (perfect)",
                  attacks: "2 claws +14 (1d8+5 plus grief)",
                  specialAbilities: "Grief touch (DC 22 Will or overcome with grief, helpless for 1d6 rounds), wail of the lost (DC 22 Will or paralyzed 1d4 rounds, 60 ft. radius), incorporeal (50% miss chance), undead traits, DR 10/—",
                  environment: "Any",
                  summary: "The vengeful spirit of a mother whose grief has twisted into murderous fury against all who carry happiness.",
                  desc: "The llorona is the spirit of a woman who died in grief — typically having lost children to violence or abandonment — and whose death transformed her sorrow into an active, malevolent force. She walks waterways at night wailing for her lost children, and the wail is not merely sound but a psychic broadcast of pure grief that overwhelms anyone who hears it. She does not target the guilty specifically; she targets happiness, warmth, and connection wherever she finds it.",
                  source: "Bestiary 5", isPremium: true),

            .make("Mngwa", cr: "7", type: "Magical Beast", size: "Large", alignment: "N",
                  hp: "85 (10d10+30)", ac: 21, speed: "50 ft., climb 20 ft.",
                  attacks: "2 claws +14 (2d6+6 plus grab), bite +14 (2d8+6)",
                  specialAbilities: "Ethereal jaunt (as spell, at will), pounce, rake (2 claws +14, 2d6+6), low-light vision, scent",
                  environment: "Warm plains and forests",
                  summary: "An ethereal feline predator that strikes from the spirit world, making it nearly impossible to defend against.",
                  desc: "Mngwa are ghostly lions that shift between the material world and the ethereal plane with unsettling ease. They hunt by stalking prey from the ethereal, observing movement patterns and waiting for the perfect moment, then sliding back to material existence for the killing strike. A mngwa that has been wounded will often retreat to the ethereal to heal, then resume the hunt later. Villages in their territory often suffer unexplained livestock deaths with no tracks found.",
                  source: "Bestiary 5", isPremium: true),

            // MARK: - CR 8

            .make("Neruzavin", cr: "11", type: "Outsider (evil, extraplanar)", size: "Large", alignment: "LE",
                  hp: "147 (14d10+70)", ac: 26, speed: "40 ft., fly 60 ft. (good)",
                  attacks: "2 claws +20 (2d6+9/19–20 plus soul drain), bite +20 (2d8+9)",
                  specialAbilities: "Soul drain (DC 22 Fort or 1d4 Wis damage, cumulative), spell-like abilities (ethereal jaunt at will, greater dispel magic 3/day), DR 10/good, SR 22",
                  environment: "Any (Hell)",
                  summary: "A devil that devours souls, harvesting wisdom from living victims.",
                  desc: "Neruzavins are infernal soul-harvesters who walk the boundary between collector and predator. Hell's bureaucracy assigns them quotas of soul-material to collect, but they are given considerable latitude in how they achieve those quotas. They prefer to harvest wisdom specifically — the product of long experience and careful thought — which they consider more valuable than raw soul-stuff. Their victims survive the encounter but emerge intellectually diminished in ways that often don't manifest until the survivor tries to solve a complex problem.",
                  source: "Bestiary 5", isPremium: true),

            .make("Oilliphéist", cr: "10", type: "Magical Beast (aquatic)", size: "Gargantuan", alignment: "N",
                  hp: "152 (16d10+64)", ac: 25, speed: "20 ft., swim 60 ft.",
                  attacks: "Bite +22 (3d8+12/19–20 plus grab), tail slap +22 (2d8+12)",
                  specialAbilities: "Constrict (2d8+18), swallow whole (2d8+12, AC 22, 15 hp), water dependency, low-light vision, scent",
                  environment: "Cold aquatic",
                  summary: "A colossal aquatic serpent of Celtic legend that haunts deep lakes and rivers.",
                  desc: "Oilliphéists are immense water-serpents deeply embedded in the folklore of northern peoples. Their presence poisons the water they inhabit, and a river with an oilliphéist will have dead fish washing downstream and livestock refusing to drink from it. The creature itself is largely mindless, driven by hunger and territorial instinct, but its sheer size makes it a community-level threat — a river trade route becomes impassable if an oilliphéist claims it.",
                  source: "Bestiary 5", isPremium: true),

            // MARK: - CR 10

            .make("Pard", cr: "3", type: "Magical Beast", size: "Medium", alignment: "N",
                  hp: "32 (5d10+5)", ac: 15, speed: "50 ft., climb 20 ft.",
                  attacks: "2 claws +8 (1d4+3), bite +8 (1d6+3)",
                  specialAbilities: "Pounce, rake (2 claws +8, 1d4+3), low-light vision, scent",
                  environment: "Warm plains and forests",
                  summary: "A fast, spotted predatory cat, ancestor in legend of both lions and leopards.",
                  desc: "Pards are swift, lightly built feline predators whose spotted coats were described in ancient bestiaries as the source of all cat-like coloration in the natural world. Whether or not that taxonomy holds, pards are impressive hunters — their speed rivals that of any natural cat, and their pounce-and-rake fighting style makes them dangerous in open terrain. They are sometimes kept by nobility as exotic pets, a practice that ends badly more often than not.",
                  source: "Bestiary 5", isPremium: true),

            .make("Qallupilluk", cr: "8", type: "Fey (aquatic)", size: "Medium", alignment: "CN",
                  hp: "85 (10d6+50)", ac: 20, speed: "30 ft., swim 60 ft.",
                  attacks: "2 claws +10 (1d8+5 plus grab)",
                  specialAbilities: "Carry off (grab, move with grappled target at full speed into water), cold immunity, low-light vision, spell-like abilities (charm child at will, greater invisibility 3/day, suggestion 1/day), water dependency",
                  environment: "Cold aquatic and ice floes",
                  summary: "A predatory fey of Arctic waters that abducts children who stray near the ice.",
                  desc: "Qallupilluks are the monsters of Arctic coastal communities — lurking beneath ice and in frigid waters, drawn specifically to the small and the unguarded. They carry off children who lean too close to the ice edge, pulling them beneath the surface into airless caves below the ice shelf. Parents in communities where qallupilluks are active develop an almost instinctual terror of their children approaching standing water, and that terror is not irrational.",
                  source: "Bestiary 5", isPremium: true),

            // MARK: - CR 14

            .make("Noble Shae", cr: "9", type: "Outsider (extraplanar)", size: "Medium", alignment: "CN",
                  hp: "115 (11d10+55)", ac: 24, speed: "30 ft.",
                  attacks: "2 slams +16 (2d6+5 plus energy drain) or shadow touch +16 (2d6+5 plus blindness)",
                  specialAbilities: "Blindness touch (DC 19 Fort), energy drain (1 level, DC 19 Fort), incorporeal (50% miss chance), shadow blend (+20 Stealth in dim light), spell-like abilities (deeper darkness at will; shadow walk, shadow conjuration 3/day; shadow evocation 1/day), DR 10/—",
                  environment: "Shadow Plane",
                  summary: "A powerful shadow-plane noble who commands the dark with absolute authority.",
                  desc: "Noble shaes are the aristocracy of the Shadow Plane — beings of cold elegance and remorseless purpose who regard material-plane creatures as somewhere between livestock and curiosity. They command shadows as other nobles command armies, and they drain life from those they touch with the casual indifference of someone flicking away a fly. A noble shae in the material world is usually there on business, and that business is rarely good news for whoever's nearby.",
                  source: "Bestiary 5", isPremium: true),

            // MARK: - CR 16

            .make("Chemnosit, Spawn of Rovagug", cr: "20", type: "Magical Beast", size: "Colossal", alignment: "CE",
                  hp: "387 (22d10+264)", ac: 38, speed: "60 ft., burrow 40 ft.",
                  attacks: "2 claws +34 (4d8+16/19–20 plus bleed 4d6), bite +34 (4d6+16 plus devour)",
                  specialAbilities: "Devour (heal 10 hp per HD consumed), bleed (4d6), devastation (+2d6 bonus damage on all attacks), fast healing 20, carapace (DR 20/—, immune to fire, cold, electricity), SR 31",
                  environment: "Any",
                  summary: "One of the legendary Spawn of Rovagug, Chemnosit is the 'Monarch Worm' — a devouring engine of divine destruction.",
                  desc: "Chemnosit the Monarch Worm is one of the most terrible beings ever to walk Golarion — a literal spawn of the Rough Beast, a creature of divine origin and apocalyptic purpose. It does not hunt so much as consume; it moves through the landscape eating everything it encounters and healing from the act of consumption. The god Rovagug is bound and imprisoned, but Chemnosit is a fragment of that imprisoned evil that escaped into the world. Defeating it is a legendary act, and it has not stayed dead before.",
                  source: "Bestiary 5", isPremium: true),

            // MARK: - CR 12

            .make("Froghemoth", cr: "13", type: "Magical Beast (aquatic)", size: "Huge", alignment: "N",
                  hp: "184 (16d10+96)", ac: 26, speed: "20 ft., swim 30 ft.",
                  attacks: "4 tentacles +22 (1d8+10 plus grab), bite +22 (2d6+10 plus swallow whole), tongue +22 (1d4+10 plus grab)",
                  specialAbilities: "Constrict (1d8+15), swallow whole (2d6+10, AC 18, 18 hp), electricity immunity, low-light vision",
                  environment: "Temperate or warm swamps",
                  summary: "A colossal three-eyed amphibian with four tentacles and a prehensile tongue that drags prey into its maw.",
                  desc: "Froghemoths are apex swamp predators of truly alien appearance — enormous, multi-eyed amphibians with four thrashing tentacles and a long tongue capable of snatching creatures from the shore. They drag grabbed prey toward their cavernous mouths with relentless mechanical efficiency. Villages near froghemoth territories build their piers high and their boats fast.",
                  source: "Bestiary 5", isPremium: true),

            .make("Shulsaga", cr: "4", type: "Outsider (extraplanar)", size: "Small", alignment: "N",
                  hp: "39 (6d10+6)", ac: 18, speed: "20 ft., fly 60 ft. (perfect)",
                  attacks: "2 claws +9 (1d4+3), bite +9 (1d6+3)",
                  specialAbilities: "Darkvision 60 ft., planar acclimation (native to multiple planes), spell-like abilities (dimension door 3/day, plane shift 1/day), SR 15",
                  environment: "Astral Plane and planar borders",
                  summary: "A small nomadic outsider that drifts between planes, surviving on interplanar currents.",
                  desc: "Shulsagas are the wanderers of the planar highways, small outsiders who have never been recorded with a fixed home plane. They navigate interplanar currents by instinct, surfing the eddies between planes with the same casual competence a sailor reads wind. Scholars debate their origin endlessly; shulsagas themselves show no interest in the question, being almost entirely focused on finding their next meal in whatever plane they currently occupy.",
                  source: "Bestiary 5", isPremium: true),

            .make("Xtabay", cr: "5", type: "Fey (plant)", size: "Medium", alignment: "CE",
                  hp: "51 (6d6+30)", ac: 17, speed: "30 ft.",
                  attacks: "2 claws +7 (1d6+4 plus bleed 1d6)",
                  specialAbilities: "Captivating fragrance (DC 18 Will or fascinated), bleed (1d6), low-light vision, plant traits, disguise (appears as ordinary plant when motionless)",
                  environment: "Warm forests",
                  summary: "A predatory plant-fey that disguises itself as a flowering vine and lures victims with intoxicating scent.",
                  desc: "Xtabays are ambush predators that spend most of their lives in total stillness, masquerading as flowering vines or ornamental shrubs. When prey approaches close enough, drawn by the xtabay's narcotic fragrance, it erupts into violent motion. Their fascination ability renders targets willing participants in their own capture, and many victims describe the experience afterward as dreamlike and oddly peaceful despite the obvious terror of the event.",
                  source: "Bestiary 5", isPremium: true),

            .make("Buggane", cr: "7", type: "Fey", size: "Large", alignment: "CE",
                  hp: "85 (10d8+40)", ac: 20, speed: "40 ft., burrow 20 ft.",
                  attacks: "2 claws +13 (1d8+7 plus grab), bite +13 (1d6+7)",
                  specialAbilities: "Cursed step (curse, DC 18 Will), earth glide (through stone and dirt), grab, low-light vision, spell-like abilities (earthquake 1/day, stone shape 3/day)",
                  environment: "Temperate hills and underground",
                  summary: "A large, monstrous fey from Celtic legend that haunts hills and causes curses to settle on the land.",
                  desc: "Bugganes are among the most feared fey of the northern isles — massive, tusked creatures who tunnel through hillsides and leave curses on the land above them. Ancient folklore holds that buggane attacks on churches or sacred sites were responsible for roofs inexplicably blowing off in storms, crops failing in rings around their warrens, and livestock born with deformities. The curses are real; bugganes radiate a passive malice that seeps into the ground and up through the roots.",
                  source: "Bestiary 5", isPremium: true),

            .make("Gnoph-Keh", cr: "17", type: "Magical Beast (cold)", size: "Huge", alignment: "CE",
                  hp: "241 (21d10+126)", ac: 32, speed: "50 ft.",
                  attacks: "2 claws +28 (2d8+12/19–20), bite +28 (2d8+12), gore +28 (2d6+12)",
                  specialAbilities: "Blizzard (30 ft. radius, 1/day, as obscuring mist plus 6d6 cold damage), cold immunity, trample (2d8+18, DC 28 Ref), DR 10/—, scent",
                  environment: "Cold plains and mountains",
                  summary: "A massive arctic predator associated with blizzards and primordial cold, worshipped as a god by isolated frost-touched cults.",
                  desc: "Gnoph-kehs are apex predators of polar environments whose bodies generate blizzard conditions as a natural hunting method. They walk upright like humanoids but stand thirty feet tall, their white-furred frames blending perfectly into Arctic snowstorms — which they help create. Isolated communities in extreme northern regions sometimes worship them as incarnations of winter, offering sacrifices to convince the gnoph-keh to pass through their territory rather than settle in it.",
                  source: "Bestiary 5", isPremium: true),

            .make("Peluda", cr: "9", type: "Magical Beast", size: "Large", alignment: "CE",
                  hp: "115 (11d10+55)", ac: 23, speed: "40 ft., swim 30 ft.",
                  attacks: "4 quills +16 (1d8+7 plus poison), tail slap +16 (2d6+7), bite +16 (2d8+7)",
                  specialAbilities: "Poison (quills, DC 20 Fort, 1d4 Con/paralysis 1d4 rounds), quill volley (30 ft. cone, 2d8+7 plus poison, DC 20 Ref half), DR 10/—, fast healing 5",
                  environment: "Temperate forests and rivers",
                  summary: "A heavily quilled dragon-like beast of French legend that fires poisoned spines and resists most weapons.",
                  desc: "The peluda — called La Velue in older accounts — is a squat, massively built creature resembling a tortoise crossed with a porcupine, with a dragon's head and a serpentine tail. Its entire body is covered in poison-tipped quills that it can fire in a cone. Medieval legends describe peluda destroying entire villages during floods by poisoning the water supply with shed quills; modern adventurers simply describe it as extremely difficult to kill and extremely motivated to try.",
                  source: "Bestiary 5", isPremium: true),

            // MARK: - CR 20

            .make("Taotieh", cr: "20", type: "Magical Beast", size: "Colossal", alignment: "CE",
                  hp: "370 (20d10+260)", ac: 37, speed: "60 ft., fly 120 ft. (poor)",
                  attacks: "2 claws +32 (4d6+16 plus grab), bite +32 (4d8+16 plus swallow whole)",
                  specialAbilities: "Swallow whole (6d6+22, acid, AC 30, 37 hp), hunger aura (60 ft., DC 30 Will or compelled to approach taotieh), fast healing 30, DR 20/cold iron and good, SR 31",
                  environment: "Any",
                  summary: "A colossal beast of legend embodying absolute, insatiable hunger.",
                  desc: "The taotieh appears in ancient carvings as a face without a body, all mouth and appetite. The creature itself is the living embodiment of that concept — an immense predator defined entirely by its hunger, which is not merely physical but metaphysical. Its hunger aura reaches into the minds of creatures nearby and reorients their deepest drives toward the taotieh, compelling them to approach. It is the end of all things, expressed as a single repeating imperative: more.",
                  source: "Bestiary 5", isPremium: true),

        ]

        for monster in monsters {
            try await db.insertMonster(monster)
        }
    }
}
