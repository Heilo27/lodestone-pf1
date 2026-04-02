import Foundation

extension SeedDataBuilder {
    func seedBestiary2() async throws {
        let monsters: [MonsterEntry] = [

            // MARK: - CR 1/2

            .make("Brownie", cr: "1/2", type: "Fey", size: "Tiny", alignment: "N",
                  hp: "4 (1d6+1)", ac: 16, speed: "20 ft.",
                  attacks: "Dagger –2 (1d2–2)",
                  specialAbilities: "Spell-like abilities (dancing lights, prestidigitation, ventriloquism 3/day; dimension door 1/day; commune with nature 1/week), low-light vision, SR 11",
                  environment: "Temperate forests",
                  summary: "A tiny fey trickster who lives in the wilderness and plays pranks on travelers.",
                  desc: "Brownies are diminutive fey spirits tied to hearth and forest. They delight in mischief but are rarely malicious, preferring to help or hinder based on their own inscrutable judgments of a person's character. A brownie that takes a liking to a household may do small chores while the inhabitants sleep; one offended will torment them until properly appeased.",
                  source: "Bestiary 2", isPremium: true),

            .make("Camel", cr: "1/2", type: "Animal", size: "Large", alignment: "N",
                  hp: "13 (2d8+4)", ac: 13, speed: "50 ft.",
                  attacks: "Bite +2 (1d4+2), 2 stomps +2 (1d4+2)",
                  specialAbilities: "Docile, low-light vision, scent",
                  environment: "Warm deserts",
                  summary: "A large, sturdy pack animal adapted to harsh desert conditions.",
                  desc: "Camels are the quintessential desert beast of burden, capable of traveling for days without water and navigating loose sand with remarkable ease. Their notorious ill temper masks a surprising resilience; a camel that decides to bite or spit can be genuinely unpleasant. Domesticated camels are invaluable across desert trade routes.",
                  source: "Bestiary 2", isPremium: true),

            .make("Cockroach Swarm", cr: "1/2", type: "Vermin (swarm)", size: "Tiny", alignment: "N",
                  hp: "9 (2d8)", ac: 16, speed: "20 ft., climb 20 ft., fly 20 ft. (poor)",
                  attacks: "Swarm (1d6 plus distraction)",
                  specialAbilities: "Darkvision 60 ft., distraction (DC 11), swarm traits, immune to weapon damage",
                  environment: "Any",
                  summary: "A seething mass of cockroaches that overwhelms and nauseates foes.",
                  desc: "Cockroach swarms are terrifyingly resilient, capable of surviving conditions that would kill almost any other creature. The swarm's collective biting and scurrying across flesh deals constant damage while the overwhelming sensation forces those caught within to fight the urge to flee. They are common in dungeons, sewers, and any area with plentiful refuse.",
                  source: "Bestiary 2", isPremium: true),

            // MARK: - CR 1

            .make("Blindheim", cr: "1", type: "Aberration", size: "Small", alignment: "N",
                  hp: "13 (2d8+4)", ac: 14, speed: "20 ft., swim 20 ft.",
                  attacks: "Bite +3 (1d6+1)",
                  specialAbilities: "Blinding gaze (30 ft., DC 12 Fort or blinded 1d4 rounds), darkvision 60 ft.",
                  environment: "Underground",
                  summary: "A frog-like aberration whose enormous glowing eyes can blind any who meet its gaze.",
                  desc: "Blindheims are amphibious aberrations that dwell in underground waterways and caverns. Their enormous eyes produce a powerful bioluminescent flash that can temporarily blind anyone who meets their gaze. Blindheims hunt by drawing prey in with their light and then blinding them before closing in for the kill.",
                  source: "Bestiary 2", isPremium: true),

            .make("Bunyip", cr: "3", type: "Magical Beast (aquatic)", size: "Medium", alignment: "N",
                  hp: "30 (4d10+8)", ac: 15, speed: "10 ft., swim 50 ft.",
                  attacks: "Bite +6 (2d6+4/19–20)",
                  specialAbilities: "Blood frenzy (+2 attack/damage when in water with blood), keen scent (blood 180 ft.), low-light vision, scent",
                  environment: "Temperate or warm aquatic",
                  summary: "A shark-like predator of rivers and lakes that frenzies at the smell of blood.",
                  desc: "Bunyips are dangerous aquatic predators native to rivers, lakes, and estuaries. They superficially resemble sharks but have four stubby limbs and can haul themselves onto riverbanks to reach prey. The smell of blood in their territory drives them into a hunting frenzy, making waterways they inhabit extremely dangerous even for experienced swimmers.",
                  source: "Bestiary 2", isPremium: true),

            .make("Giant Crab", cr: "2", type: "Vermin (aquatic)", size: "Medium", alignment: "N",
                  hp: "22 (3d8+9)", ac: 16, speed: "30 ft., swim 20 ft.",
                  attacks: "2 claws +5 (1d4+3 plus grab)",
                  specialAbilities: "Amphibious, constrict (1d4+3), darkvision 60 ft.",
                  environment: "Temperate or warm aquatic or coastlines",
                  summary: "A horse-sized crab that grabs and crushes prey with powerful claws.",
                  desc: "Giant crabs are armored scavengers of the coastline that readily attack anything they perceive as prey or a threat. Their powerful claws can grab hold of a creature and crush the life from it. They are patient hunters, waiting in tidal pools and beneath sandy shallows for prey to wander within reach.",
                  source: "Bestiary 2", isPremium: true),

            .make("Dolphin", cr: "1/2", type: "Animal", size: "Medium", alignment: "N",
                  hp: "11 (2d8+2)", ac: 13, speed: "swim 80 ft.",
                  attacks: "Slam +4 (1d4+3)",
                  specialAbilities: "Blindsense 120 ft. (echolocation), hold breath, low-light vision",
                  environment: "Temperate and warm oceans",
                  summary: "An intelligent, fast-swimming marine mammal known for aiding sailors.",
                  desc: "Dolphins are intelligent marine mammals that have long shared a curious relationship with seafarers. They navigate by echolocation and are among the fastest swimmers in the ocean. Sailors consider dolphins a good omen, and stories of dolphins guiding lost ships or rescuing drowning sailors are told in every port.",
                  source: "Bestiary 2", isPremium: true),

            // MARK: - CR 2

            .make("Ahuizotl", cr: "4", type: "Magical Beast (aquatic)", size: "Medium", alignment: "N",
                  hp: "45 (6d10+12)", ac: 18, speed: "30 ft., swim 50 ft.",
                  attacks: "Bite +9 (2d6+5/19–20 plus grab), 2 claws +9 (1d4+5 plus grab), tail hand +9 (1d4+5 plus grab)",
                  specialAbilities: "Rake (2 claws +9, 1d4+5), scent, low-light vision, darkvision 60 ft.",
                  environment: "Warm rivers and lakes",
                  summary: "A sleek aquatic predator with a prehensile hand on its tail that drags victims underwater.",
                  desc: "The ahuizotl is a fearsome aquatic predator shaped like a dog-sized otter with a long flexible tail ending in a humanoid hand. It uses that tail-hand to grab creatures at the water's edge and drag them beneath the surface before tearing into them with its many teeth and claws. Fishermen along rivers where ahuizotls hunt build elaborate shrines to ward the creatures away.",
                  source: "Bestiary 2", isPremium: true),

            .make("Auroch", cr: "4", type: "Animal", size: "Large", alignment: "N",
                  hp: "45 (6d8+18)", ac: 13, speed: "40 ft.",
                  attacks: "Gore +9 (2d8+9)",
                  specialAbilities: "Stampede (3d6, DC 17 Ref, 1-min cooldown), scent, low-light vision",
                  environment: "Temperate plains",
                  summary: "A massive ancestor of domestic cattle whose horns and hooves can crush armored warriors.",
                  desc: "Aurochs are enormous wild bovines, far larger and more aggressive than their domesticated descendants. A charging auroch can pierce armor with its horns and shatter bones beneath its hooves. Where herds of aurochs graze, predators stay well clear, and only the most foolish of hunters attempt to bring one down without overwhelming numbers.",
                  source: "Bestiary 2", isPremium: true),

            .make("Barghest", cr: "4", type: "Outsider (evil, extraplanar, lawful, shapechanger)", size: "Medium", alignment: "LE",
                  hp: "38 (7d10)", ac: 17, speed: "30 ft. (wolf form: 40 ft.)",
                  attacks: "Bite +9 (1d6+4 plus feed), 2 claws +9 (1d4+4)",
                  specialAbilities: "Feed (gain HD from slain creatures, DC 17 Will to negate), change shape (wolf or goblin), spell-like abilities (blink, charm monster, dimension door, levitate, misdirection, rage, invisibility), pass without trace, scent",
                  environment: "Temperate and cold plains",
                  summary: "A shape-shifting fiend that disguises itself as a goblin or wolf and feeds on the slain.",
                  desc: "Barghests are fiends from the lower planes that take the form of large wolves or goblins to hunt. When they kill, they can devour a portion of the victim's life force, feeding on souls to grow more powerful. Whole goblin tribes have been enslaved by barghests posing as wolf-gods, the tribes unknowingly building the fiend's power through their sacrifices.",
                  source: "Bestiary 2", isPremium: true),

            .make("Basidirond", cr: "5", type: "Plant", size: "Large", alignment: "N",
                  hp: "52 (7d8+21)", ac: 17, speed: "20 ft.",
                  attacks: "4 slams +9 (1d8+5)",
                  specialAbilities: "Spores (DC 18 Fort, 10-ft. cloud, hallucinations 1 min), immune to electricity/fire, plant traits, low-light vision",
                  environment: "Warm or temperate underground",
                  summary: "A carnivorous plant that sprays hallucinogenic spores to confuse prey before striking.",
                  desc: "The basidirond is a towering fungal predator that moves on root-like legs and extends tendrils to strike its prey. Its most dangerous weapon is an invisible cloud of psychoactive spores released when threatened. Creatures that inhale the spores experience vivid hallucinations that make them easy prey for the basidirond's attacks.",
                  source: "Bestiary 2", isPremium: true),

            .make("Cave Fisher", cr: "2", type: "Vermin", size: "Medium", alignment: "N",
                  hp: "19 (3d8+6)", ac: 16, speed: "20 ft., climb 20 ft.",
                  attacks: "2 claws +5 (1d6+3)",
                  specialAbilities: "Darkvision 60 ft., filament (ranged touch +5, 60 ft., grapple CMB +7, immune to fire)",
                  environment: "Underground",
                  summary: "A lobster-like cave predator that drops a sticky filament from above to snare prey.",
                  desc: "Cave fishers are predatory crustaceans that cling to cave ceilings and drop sticky threads to snare creatures passing beneath. Once a creature is caught, the cave fisher reels it in with surprising speed. They are a common hazard in underground passages, and dungeon delvers quickly learn to check ceilings before passing through narrow tunnels.",
                  source: "Bestiary 2", isPremium: true),

            // MARK: - CR 4

            .make("Behir (Juvenile)", cr: "6", type: "Magical Beast", size: "Huge", alignment: "N",
                  hp: "67 (9d10+18)", ac: 20, speed: "40 ft., climb 20 ft.",
                  attacks: "Bite +14 (2d6+7 plus grab), 6 claws +14 (1d4+4)",
                  specialAbilities: "Constrict (2d6+10), lightning breath (6d6, DC 16 Ref, 30-ft. line, 1d4 rounds recharge), immunity to electricity and paralysis, low-light vision, darkvision 60 ft., swallow whole",
                  environment: "Warm hills and underground",
                  summary: "A twelve-legged serpentine predator that breathes lightning and constricts prey.",
                  desc: "The behir is a serpentine monster with six pairs of legs and a massive jaw capable of swallowing large creatures whole. Its most feared ability is its lightning breath, a crackling bolt that can arc through multiple targets. Young behirs already show the full ferocity of their kind; adults are territory-dominating apex predators that drive off dragons from their hunting grounds.",
                  source: "Bestiary 2", isPremium: true),

            .make("Boggard", cr: "2", type: "Humanoid (boggard)", size: "Medium", alignment: "CE",
                  hp: "22 (3d8+9)", ac: 14, speed: "20 ft., swim 30 ft.",
                  attacks: "Spear +5 (1d8+4/×3), or tongue +3 touch (sticky)",
                  specialAbilities: "Terrifying croak (DC 13 Will or shaken 1d4 rounds, 30 ft., 1/hour), sticky tongue (free grapple after touch hit, CMD +5 vs. escape), hold breath, low-light vision, swamp stride",
                  environment: "Temperate or warm marshes",
                  summary: "A frog-like humanoid that haunts swamps and terrorizes travelers with its horrible croak.",
                  desc: "Boggards are savage frog-like humanoids who rule the swamps they inhabit through a combination of brutality and terror. Their paralyzing croak can freeze even brave warriors in their tracks, and their sticky tongues can snare prey at surprising range. Boggard priests worship demon lords of amphibians and sacrifice non-boggards to earn divine favor.",
                  source: "Bestiary 2", isPremium: true),

            // MARK: - CR 5

            .make("Banshee", cr: "13", type: "Undead (incorporeal)", size: "Medium", alignment: "CE",
                  hp: "136 (16d8+64)", ac: 25, speed: "fly 60 ft. (perfect)",
                  attacks: "Corrupting touch +14 (7d6, DC 22 Fort for half)",
                  specialAbilities: "Wail (1/day, DC 22 Fort or die, 40 ft.), channel resistance +4, corrupting gaze (2d6+7 Fort DC 22 or 1d8 Str drain), darkvision 60 ft., incorporeal, undead traits",
                  environment: "Any",
                  summary: "The spectral wail of this undead elf herald's death for all who hear it.",
                  desc: "A banshee is the tormented spirit of an elven woman whose death was marked by profound betrayal or unrequited love. She drifts through the night as an incorporeal horror, and her shrieking wail is among the most feared sounds in the world — those who hear it and fail to resist its power simply drop dead. Even those who survive the wail must contend with her corrupting touch and gaze.",
                  source: "Bestiary 2", isPremium: true),

            .make("Mobat", cr: "3", type: "Magical Beast", size: "Large", alignment: "N",
                  hp: "32 (5d10+5)", ac: 14, speed: "20 ft., fly 40 ft. (good)",
                  attacks: "Bite +7 (1d8+4 plus grab), 2 claws +7 (1d6+4)",
                  specialAbilities: "Blindsense 60 ft. (echolocation), screech (DC 13 Fort or stunned 1 round, 30 ft., 1/4 rounds), low-light vision",
                  environment: "Underground and temperate forests",
                  summary: "A giant bat the size of a horse that stuns prey with a piercing screech.",
                  desc: "Mobats are enormous bats that hunt in darkened underground spaces and dense forests. Their screech can temporarily stun prey, making them effective pack hunters. Goblinoids sometimes train mobats as mounts, prizing their blindsense and their ability to navigate lightless tunnels. Mobats attack with bite and claw once prey is grabbed by their powerful wings.",
                  source: "Bestiary 2", isPremium: true),

            .make("Bebilith", cr: "10", type: "Outsider (chaotic, demon, evil, extraplanar)", size: "Huge", alignment: "CE",
                  hp: "115 (11d10+55)", ac: 24, speed: "40 ft., climb 20 ft.",
                  attacks: "Bite +18 (2d6+10 plus poison), 2 claws +18 (2d4+10 plus rend armor)",
                  specialAbilities: "Rend armor (reduces armor/shield bonus by 1d4, permanent), poison (Str damage, DC 21 Fort), darkvision 60 ft., plane shift (self only), web (+15 ranged, 30 ft., 15 hp), DR 10/good, SR 21",
                  environment: "Chaotic evil planes",
                  summary: "A massive demonic spider that hunts other demons and destroys armor with its claws.",
                  desc: "Bebiliths are enormous demonic spiders from the Abyss, dreaded by demons and mortals alike. Their claws can tear through even magical armor and shields, reducing a well-protected warrior to wearing scraps of metal. They hunt by preference and demons specifically — a pack of bebiliths can dismantle a demon lord's elite guard before the alarm is raised. Their webs are nearly impossible to burn.",
                  source: "Bestiary 2", isPremium: true),

            // MARK: - CR 6

            .make("Cervidal Agathion", cr: "6", type: "Outsider (agathion, extraplanar, good)", size: "Medium", alignment: "NG",
                  hp: "67 (9d10+18)", ac: 20, speed: "50 ft.",
                  attacks: "Gore +13 (1d6+4), 2 hooves +13 (1d4+2)",
                  specialAbilities: "Lay on hands (4d6, 7/day), speak with animals, spell-like abilities (calm animals, cure light wounds, divine favor, magic circle against evil), DR 10/evil and silver, immune to electricity/petrification, resist cold 10/sonic 10, SR 17",
                  environment: "Nirvana",
                  summary: "A noble deer-like celestial warrior dedicated to protecting the innocent.",
                  desc: "Cervidal agathions are noble celestial beings in the form of powerful stags that serve as scouts and messengers on the planes of goodness. They are tireless protectors of the weak and innocent, patrolling the boundaries between good and evil planar territories. When called to battle, a cervidal fights with the conviction of absolute righteousness, channeling holy power through its hooves and horns.",
                  source: "Bestiary 2", isPremium: true),

            .make("Aranea", cr: "4", type: "Magical Beast (shapechanger)", size: "Medium", alignment: "N",
                  hp: "38 (7d10)", ac: 13, speed: "50 ft., climb 30 ft.",
                  attacks: "Bite +7 (1d6 plus poison)",
                  specialAbilities: "Poison (Str damage, DC 14 Fort), change shape (Medium humanoid or spider-human hybrid), spell-like abilities (arcane mark, dancing lights, detect magic, ghost sound, light, message, read magic; 3/day: daze, fog cloud, sleep; 1/day: blur, invisibility), darkvision 60 ft., low-light vision, web",
                  environment: "Temperate or warm forests",
                  summary: "A giant spider-shapechanger with innate arcane magic and venomous bite.",
                  desc: "Araneae are intelligent arachnids that can take humanoid form, and they use this ability to infiltrate settlements and gather information. They are not inherently evil — their alignment varies widely — but their secretive nature and venomous bite make them feared whenever their true nature is discovered. Many araneae are scholars and sages, gathering arcane lore across multiple forms.",
                  source: "Bestiary 2", isPremium: true),

            // MARK: - CR 7

            .make("Caulborn", cr: "7", type: "Outsider (extraplanar)", size: "Medium", alignment: "N",
                  hp: "76 (9d10+27)", ac: 20, speed: "30 ft.",
                  attacks: "2 claws +13 (1d6+4 plus thought theft)",
                  specialAbilities: "Thought theft (DC 17 Will or memory stolen for 24 hrs, claws gain memory bonuses), communal mind (share sensory info among all caulborn in 300 ft.), darkvision 60 ft., immune to fear/mind-affecting, spell-like abilities (charm person, detect thoughts, hypnotic pattern, modify memory, prying eyes), telepathy 100 ft.",
                  environment: "Any underground",
                  summary: "A four-eyed planar creature that sustains itself by consuming memories from its victims.",
                  desc: "Caulborn are enigmatic extraplanar beings who appear as tall, gaunt humanoids with four eyes and disturbingly smooth features. They feed on memories, stealing recollections from victims with a touch. Communities visited by caulborn often find their members unable to remember critical events, faces, or skills. Caulborn gather in underground communal nests and share all consumed memories through their psychic link.",
                  source: "Bestiary 2", isPremium: true),

            // MARK: - CR 8

            .make("Abominable Snowman", cr: "7", type: "Magical Beast", size: "Large", alignment: "N",
                  hp: "76 (9d10+27)", ac: 19, speed: "40 ft., climb 20 ft.",
                  attacks: "2 claws +13 (1d6+5 plus grab), bite +13 (1d8+5)",
                  specialAbilities: "Freeze (stand motionless as snow, DC 21 Perception), rend (2d6+7, if both claws hit), scent, low-light vision",
                  environment: "Cold mountains",
                  summary: "A massive white-furred ape-like predator that lurks in high-altitude snowfields.",
                  desc: "The abominable snowman — called yeti by mountain peoples — is an enormous white-furred predator that haunts the highest mountain ranges. Its ability to stand perfectly still and pass as a snowdrift makes it a terrifying ambush predator. Mountain climbers and isolated communities live in fear of these creatures, and their tracks are sometimes the last sign of travelers who ventured too high.",
                  source: "Bestiary 2", isPremium: true),

            // MARK: - CR 9+

            .make("Crypt Thing", cr: "9", type: "Undead", size: "Medium", alignment: "NE",
                  hp: "93 (11d8+44)", ac: 21, speed: "30 ft.",
                  attacks: "2 claws +12 (1d4+3)",
                  specialAbilities: "Teleport other (DC 20 Will or 1d4 teleport to random direction, 30 ft., 1/day/creature), see invisibility (continuous), darkvision 60 ft., undead traits, immune to cold, DR 5/—, channel resistance +4",
                  environment: "Underground",
                  summary: "An undead guardian of tombs that teleports intruders away rather than fighting them.",
                  desc: "Crypt things are skeletal undead created to guard burial chambers for all eternity. Unlike most undead they prefer not to fight — instead they teleport intruders away from the crypt to random distant locations, separating a group and scattering them miles apart. Only when pressed will a crypt thing engage in melee. They are bound to their assigned tomb and cannot voluntarily leave it.",
                  source: "Bestiary 2", isPremium: true),

            .make("Cacodaemon", cr: "2", type: "Outsider (daemon, evil, extraplanar)", size: "Tiny", alignment: "NE",
                  hp: "13 (3d6+3)", ac: 16, speed: "fly 40 ft. (perfect)",
                  attacks: "Bite +5 (1d4 plus soul lock)",
                  specialAbilities: "Soul lock (soul gem, DC 13 Fort or soul trapped, consumed for healing by daemons), darkvision 60 ft., immune to acid/death/disease/poison, resist cold 10/electricity 10/fire 10, SR 13, telepathy 100 ft.",
                  environment: "Abaddon",
                  summary: "A tiny daemon that traps the souls of its victims inside gem-like nodules.",
                  desc: "Cacodaemons are the lowest form of daemon, appearing as tiny floating globes of flesh with a massive tooth-filled maw. They are created from the souls of the most petty and selfish of the dead. Their bite can trap a slain creature's soul in a soul gem that other daemons covet as currency and food. Despite their small size, they serve as messengers and spies for more powerful daemons.",
                  source: "Bestiary 2", isPremium: true),

            .make("Astradaemon", cr: "16", type: "Outsider (daemon, evil, extraplanar)", size: "Large", alignment: "NE",
                  hp: "212 (17d10+119)", ac: 31, speed: "60 ft., fly 120 ft. (good)",
                  attacks: "2 claws +24 (2d6+9/19–20 plus grab), bite +24 (2d8+9 plus devour soul)",
                  specialAbilities: "Devour soul (1d4 rounds to consume soul, victim cannot be raised, DC 28 Fort, 300 ft.), energy drain (1 negative level, DC 28 Fort negates), spatial riptide (slow as free action, 30 ft.), darkvision 60 ft., DR 15/good and silver, immune to acid/death/disease/poison, SR 27, blindsense 60 ft., plane shift, void form (gaseous form in dim light)",
                  environment: "Abaddon and the River of Souls",
                  summary: "A towering daemon that hunts souls along the River of Souls, devouring them utterly.",
                  desc: "Astradaemons are the hunters of the River of Souls, enormous jackal-headed predators that intercept and devour souls traveling to their final destinations. A soul eaten by an astradaemon is gone forever — no resurrection or reincarnation is possible. Psychopomps regard astradaemons as abominations and hunt them wherever they appear. The presence of an astradaemon on the Material Plane suggests someone is deliberately subverting the natural order of death.",
                  source: "Bestiary 2", isPremium: true),

            .make("Greater Barghest", cr: "7", type: "Outsider (evil, extraplanar, lawful, shapechanger)", size: "Large", alignment: "LE",
                  hp: "80 (9d10+31)", ac: 22, speed: "40 ft. (wolf form: 50 ft.)",
                  attacks: "Bite +14 (1d8+7/19–20 plus feed), 2 claws +14 (1d6+7)",
                  specialAbilities: "Feed (consume HD from slain, max +8 HD, DC 20 Will negates), change shape (Large wolf or goblin), spell-like abilities (blink, charm monster, crushing despair, dimension door, levitate, misdirection, rage, greater invisibility), pass without trace, scent, DR 10/magic",
                  environment: "Temperate and cold plains",
                  summary: "A fully fed barghest whose soul-devouring has swelled it to monstrous size and power.",
                  desc: "When a barghest has consumed enough souls to grow to its full potential, it transforms into a greater barghest — a massive wolf-fiend of tremendous power. These creatures are often found commanding goblin armies or serving as lieutenants to devil lords. A greater barghest that has satisfied its feeding requirements earns the right to return to its home plane permanently, leaving devastation in its wake.",
                  source: "Bestiary 2", isPremium: true),

            .make("Behir", cr: "8", type: "Magical Beast", size: "Huge", alignment: "N",
                  hp: "104 (11d10+44)", ac: 22, speed: "40 ft., climb 20 ft.",
                  attacks: "Bite +16 (2d8+9 plus grab), 6 claws +16 (1d6+6)",
                  specialAbilities: "Constrict (2d8+13), lightning breath (7d6, DC 20 Ref, 40-ft. line, 1d4 rounds recharge), immunity to electricity and paralysis, swallow whole (2d8+13 plus lightning, AC 17, 10 hp), low-light vision, darkvision 60 ft.",
                  environment: "Warm hills and underground",
                  summary: "A fully grown twelve-legged serpentine predator whose lightning breath clears entire chambers.",
                  desc: "A fully grown behir is a territorial apex predator that has driven away or killed every dragon that once inhabited its domain — they bear an instinctive hatred for dragonkind and attack them on sight. Their twelve legs give them surprising speed, and their lightning breath can arc through confined spaces with devastating effect. A behir that swallows prey whole continues to shock it from the inside.",
                  source: "Bestiary 2", isPremium: true),

        ]

        for monster in monsters {
            try await db.insertMonster(monster)
        }
    }
}
