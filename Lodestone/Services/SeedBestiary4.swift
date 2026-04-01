import Foundation

extension SeedDataBuilder {
    func seedBestiary4() async throws {
        let monsters: [MonsterEntry] = [

            // MARK: - CR 1/3

            .make("Clockwork Soldier", cr: "3", type: "Construct", size: "Medium", alignment: "N",
                  hp: "42 (4d10+20)", ac: 20, speed: "30 ft.",
                  attacks: "Halberd +8 (1d10+5/×3) or slam +8 (1d6+5)",
                  specialAbilities: "Swift reactions (additional AoO each round), construct traits, darkvision 60 ft., low-light vision",
                  environment: "Any",
                  summary: "A precisely engineered mechanical warrior that follows orders without hesitation or fatigue.",
                  desc: "Clockwork soldiers are the pinnacle of martial automaton design — humanoid constructs built around a precision-gear core and clad in integrated plate. They march in lockstep, hold formation without fear, and pursue orders until destroyed. Arcanists and warlords alike prize them for garrison duty because they never sleep, never desert, and never demand pay.",
                  source: "Bestiary 4", isPremium: true),

            // MARK: - CR 1/2

            .make("Young Dwiergeth", cr: "6", type: "Magical Beast", size: "Large", alignment: "CE",
                  hp: "73 (7d10+35)", ac: 19, speed: "30 ft., burrow 20 ft.",
                  attacks: "Bite +11 (2d6+7/19–20 plus grab), 2 claws +11 (1d6+5)",
                  specialAbilities: "Darkvision 60 ft., low-light vision, scent, sound mimicry, tremorsense 60 ft.",
                  environment: "Underground",
                  summary: "A predatory subterranean beast that lures prey with mimicked sounds before ambushing from below.",
                  desc: "Young dwiergeths are formidable subterranean ambush predators despite not having reached full growth. They mimic the sounds of distressed animals, running water, or humanoid voices to draw curious creatures toward their waiting jaws. Their burrowing ability allows them to erupt from floors and tunnel walls with devastating surprise, and their layered carapace resists most conventional weapons.",
                  source: "Bestiary 4", isPremium: true),

            // MARK: - CR 1

            .make("Clockwork Attendant", cr: "2", type: "Construct", size: "Small", alignment: "N",
                  hp: "19 (2d10+8)", ac: 17, speed: "30 ft.",
                  attacks: "Slam +5 (1d4+3) or integrated tool",
                  specialAbilities: "Integrated tools (varies by construction), construct traits, darkvision 60 ft., low-light vision",
                  environment: "Any",
                  summary: "A small clockwork assistant built for domestic or administrative tasks.",
                  desc: "Clockwork attendants are small utility automatons built to serve in laboratories, manors, and workshops. Each is constructed with purpose-specific tools integrated into its hands — quill and inkpot for scribal attendants, trowel and clippers for garden models, or magnifying lenses for research variants. When attacked, they defend themselves with surprising competence for such specialized machines.",
                  source: "Bestiary 4", isPremium: true),

            .make("Caligni Creeper", cr: "1", type: "Humanoid (caligni)", size: "Small", alignment: "CE",
                  hp: "11 (2d8+2)", ac: 14, speed: "30 ft.",
                  attacks: "Short sword +4 (1d4/19–20) or dart +3 (1d3 plus poison)",
                  specialAbilities: "Darkvision 120 ft., death flash (blinded 1d4 rounds on death, DC 12 Fort), light blindness, poison (injury, DC 12 Fort, 1d2 Str/1d2 Str), sneak attack +1d6",
                  environment: "Underground",
                  summary: "A small, skulking caligni assassin that poisons victims before fading back into darkness.",
                  desc: "Caligni creepers are the scouts and assassins of caligni society — small even by their race's standards, they squeeze into tunnels too tight for their larger kin and slip through cracks in dungeon masonry like shadows given substance. They strike from absolute darkness, poison a target, then withdraw to watch from concealment while the venom does its work. When killed, their bodies release a blinding flash of light.",
                  source: "Bestiary 4", isPremium: true),

            // MARK: - CR 2

            .make("Caligni Stalker", cr: "4", type: "Humanoid (caligni)", size: "Medium", alignment: "CE",
                  hp: "39 (6d8+12)", ac: 17, speed: "30 ft.",
                  attacks: "Short sword +8/+3 (1d6+2/19–20) or hand crossbow +6 (1d4 plus poison)",
                  specialAbilities: "Darkvision 120 ft., death flash (blinded 2d4 rounds on death, DC 15 Fort), light blindness, poison (injury, DC 15 Fort, 1d3 Str/1d3 Str), sneak attack +3d6, shadow blend",
                  environment: "Underground",
                  summary: "A deadly caligni assassin who blends with shadows and strikes from ambush.",
                  desc: "Caligni stalkers are the hunters and warriors of their dark-dwelling kin, trained since youth in the art of killing from concealment. They merge with shadows as naturally as a fish merges with water, and their prey often never sees the blade that kills them. Stalkers serve caligni communities as both enforcers and external hunters, ranging far into the tunnels to eliminate threats or acquire slaves.",
                  source: "Bestiary 4", isPremium: true),

            .make("Clockwork Overseer", cr: "5", type: "Construct", size: "Medium", alignment: "N",
                  hp: "53 (6d10+20)", ac: 21, speed: "30 ft.",
                  attacks: "Whip +10 (1d4+4 plus trip) or slam +10 (1d6+4)",
                  specialAbilities: "Command lesser constructs (as a swift action, direct adjacent clockwork), construct traits, darkvision 60 ft., low-light vision, surge (temporarily boost clockwork speed)",
                  environment: "Any",
                  summary: "A clockwork foreman built to coordinate and optimize other automata.",
                  desc: "Clockwork overseers serve as the middle-management tier of complex clockwork operations. Built slightly more robustly than standard clockwork soldiers and equipped with long whip-arms to redirect workers, they maintain production schedules with inhuman efficiency. Their ability to transmit simple commands to nearby clockworks via subtle gear-click signals makes them force-multipliers in any clockwork garrison.",
                  source: "Bestiary 4", isPremium: true),

            // MARK: - CR 3

            .make("Brain Mole", cr: "1/2", type: "Magical Beast", size: "Tiny", alignment: "N",
                  hp: "7 (3d10–9)", ac: 14, speed: "30 ft., burrow 10 ft.",
                  attacks: "Bite +5 (1d3–3)",
                  specialAbilities: "Phrenic scent (detect active psychic/mental magic 30 ft.), psychic suppression (suppress one active spell with mental descriptor, DC 10 Will), low-light vision",
                  environment: "Temperate or cold plains and forests",
                  summary: "A small burrowing mammal with an instinctive ability to detect and suppress psychic magic.",
                  desc: "Brain moles look like ordinary moles but are attuned to the psychic resonances left by mental magic. They instinctively suppress active mental spells in their vicinity — not out of malice, but simply because such magic feels irritating to them, like a persistent high-pitched noise. Arcanists have learned to keep brain moles away from active enchantments, but also to deploy them deliberately against psychic enemies.",
                  source: "Bestiary 4", isPremium: true),

            .make("Caligni Dancer", cr: "3", type: "Humanoid (caligni)", size: "Medium", alignment: "CE",
                  hp: "32 (5d8+10)", ac: 16, speed: "40 ft.",
                  attacks: "2 short swords +7 (1d6+2/19–20)",
                  specialAbilities: "Darkvision 120 ft., death flash (blinded 1d6 rounds on death, DC 13 Fort), dazzling display (fascinate as bard 5/day), light blindness, sneak attack +2d6, uncanny dodge",
                  environment: "Underground",
                  summary: "A fast-moving caligni performer whose hypnotic movements leave enemies unable to defend themselves.",
                  desc: "Caligni dancers occupy a unique social role — they are simultaneously entertainers, priests, and elite warriors whose stylized fighting techniques are indistinguishable from ritual performance. Their motion-based fascination ability makes them devastating in crowds, where a single dancer can lock down multiple opponents while allies close in. Watching one fight is, until the moment it kills you, genuinely beautiful.",
                  source: "Bestiary 4", isPremium: true),

            // MARK: - CR 4

            .make("Small Clockwork Goliath", cr: "8", type: "Construct", size: "Huge", alignment: "N",
                  hp: "107 (10d10+50)", ac: 24, speed: "30 ft.",
                  attacks: "2 slams +16 (2d8+9), stomp +16 (4d6+9)",
                  specialAbilities: "Stomp (knockdown, DC 20 Ref), trample (4d6+9, DC 20 Ref), construct traits, darkvision 60 ft., low-light vision",
                  environment: "Any",
                  summary: "A smaller variant of the massive clockwork siege engine, still capable of devastating battlefield damage.",
                  desc: "The small clockwork goliath is a scaled-down war machine that sacrifices none of its massive cousin's aggression. Standing thirty feet tall, it wades through infantry like a man walks through tall grass, its oversized fists and crushing feet treating creatures of medium size as negligible obstacles. Its reduced size allows it to navigate tighter terrain than the full goliath while remaining a city-threatening asset.",
                  source: "Bestiary 4", isPremium: true),

            .make("Dwiergeth", cr: "10", type: "Magical Beast", size: "Huge", alignment: "CE",
                  hp: "147 (14d10+70)", ac: 24, speed: "40 ft., burrow 30 ft.",
                  attacks: "Bite +20 (2d8+12/19–20 plus grab), 2 claws +20 (1d8+8)",
                  specialAbilities: "Darkvision 60 ft., low-light vision, scent, sound mimicry, swallow whole (2d6+12, AC 20, 14 hp), tremorsense 120 ft.",
                  environment: "Underground",
                  summary: "A fully grown dwiergeth — a massive burrowing predator that mimics sounds to lure prey.",
                  desc: "A mature dwiergeth is a horror of the deep earth, capable of mimicking virtually any sound it has heard — the voice of a loved one, the sound of gold coins, the cry of a wounded companion — with perfect fidelity. It lures prey to specific locations with patient, practiced deception, then erupts from the earth to swallow them whole. Tunnelers and miners regard the dwiergeth as one of the most feared creatures in the underground world.",
                  source: "Bestiary 4", isPremium: true),

            // MARK: - CR 5

            .make("Caligni Dark Caller", cr: "5", type: "Humanoid (caligni)", size: "Medium", alignment: "CE",
                  hp: "52 (8d8+16)", ac: 17, speed: "30 ft.",
                  attacks: "Touch +6 (shadow magic)",
                  specialAbilities: "Darkvision 120 ft., death flash (blinded 2d6 rounds on death, DC 16 Fort), shadow magic (deeper darkness, shadow conjuration 3/day; shadow evocation 1/day), shadow bond (enhance caligni allies), light blindness",
                  environment: "Underground",
                  summary: "A caligni shadow-priest who channels darkness as a weapon and empowers caligni allies.",
                  desc: "Dark callers are the spiritual and arcane leaders of caligni warbands, shaping and weaponizing the supernatural darkness that pervades their underground homes. They bind fragments of actual shadow into their flesh, allowing them to channel magical darkness as both offense and defense. A warband with a dark caller is substantially more dangerous than one without — enemies who thought they could wait out the darkness find it does not dispel naturally.",
                  source: "Bestiary 4", isPremium: true),

            .make("Elder Caligni", cr: "9", type: "Humanoid (caligni)", size: "Medium", alignment: "CE",
                  hp: "102 (12d8+48)", ac: 22, speed: "30 ft.",
                  attacks: "Shadow hand +14/+9 (2d6+6 plus energy drain) or slam +14 (2d4+6)",
                  specialAbilities: "Energy drain (1 level per hit, DC 19 Fort), darkvision 120 ft., death flash (blinded 3d6 rounds on death, DC 20 Fort), light blindness, shadow form (as gaseous form but in shadows), SR 20",
                  environment: "Underground",
                  summary: "The most ancient and powerful of caligni kind, partially dissolved into shadow itself.",
                  desc: "Elder caligni have lived so long in absolute darkness that their physical forms have begun to merge with the shadow plane. They grow increasingly translucent with age, their extremities trailing into wisps of pure darkness. An elder caligni is regarded as something approaching a god by younger caligni — ancient, powerful, and as much force of nature as person. Their touch drains the very life-force from opponents.",
                  source: "Bestiary 4", isPremium: true),

            // MARK: - CR 6

            .make("Clockwork Dragon", cr: "14", type: "Construct", size: "Huge", alignment: "N",
                  hp: "175 (19d10+76)", ac: 30, speed: "40 ft., fly 100 ft. (good)",
                  attacks: "Bite +25 (2d8+12/19–20), 2 claws +25 (2d6+8), tail slap +25 (2d6+8)",
                  specialAbilities: "Breath weapon (60 ft. line of fire, 12d6, DC 22 Ref half), construct traits, darkvision 60 ft., low-light vision, smoke (concealment while breath weapon recharges)",
                  environment: "Any",
                  summary: "A masterwork mechanical dragon capable of devastating fire breath and aerial assault.",
                  desc: "Clockwork dragons represent the apex of clockwork design — a literal dragon forged from steel, brass, and enchanted components rather than grown from an egg. They breathe streams of alchemical fire from a compressed reservoir in their chest cavity and fly with precision unmatched by any living creature of their size. Building one takes a master craftsman years; commissioning one is an act of war.",
                  source: "Bestiary 4", isPremium: true),

            .make("Naiad Queen", cr: "9", type: "Fey (aquatic)", size: "Medium", alignment: "CG",
                  hp: "85 (10d6+50)", ac: 22, speed: "30 ft., swim 50 ft.",
                  attacks: "Slam +11 (1d6+5 plus unearthly grace)",
                  specialAbilities: "Unearthly grace (+7 deflection/resistance), water dependent, spell-like abilities (control water at will, water breathing at will; dominate person 3/day; vortex 1/day), inspiration aura (allies gain +2 morale to attack/damage within 60 ft.)",
                  environment: "Temperate or warm aquatic",
                  summary: "The sovereign of a river or lake's fey court, commanding the respect of all aquatic creatures.",
                  desc: "Naiad queens rule over substantial bodies of freshwater with benevolent but firm authority. They are neither gods nor nobility exactly, but the other fey and magical creatures of their domain treat them with the deference owed to both. A naiad queen's patronage makes a river route safe; her enmity makes it impassable. They are generous with those who honor the water and implacable against those who pollute or dam it.",
                  source: "Bestiary 4", isPremium: true),

            // MARK: - CR 7

            .make("Cerebric Fungus", cr: "4", type: "Plant", size: "Medium", alignment: "N",
                  hp: "39 (6d8+12)", ac: 17, speed: "10 ft.",
                  attacks: "2 tendrils +6 (1d6+2 plus confusion)",
                  specialAbilities: "Confusion (DC 14 Will or confused 1d4 rounds), darkvision 60 ft., plant traits, spores (nauseated 1 round, DC 14 Fort), telepathy 100 ft.",
                  environment: "Underground",
                  summary: "A fungal creature that psychically disrupts the thoughts of those who approach.",
                  desc: "Cerebric fungi are ambulatory mushroom colonies that have developed a rudimentary group mind of alien intelligence. They communicate via psychic spore-bursts that confuse and disorient nearby creatures — an adaptation that began as a defense mechanism but has become a predatory strategy. Scholars debate whether cerebric fungi are truly sentient or simply stumbled onto the use of psychic disruption as a byproduct of their unusual biology.",
                  source: "Bestiary 4", isPremium: true),

            .make("Clockwork Leviathan", cr: "16", type: "Construct", size: "Gargantuan", alignment: "N",
                  hp: "232 (22d10+110)", ac: 31, speed: "20 ft., swim 60 ft.",
                  attacks: "Bite +30 (4d6+16/19–20 plus grab), 2 claws +30 (2d8+11), tail slap +30 (2d8+11)",
                  specialAbilities: "Capsize (DC 25 Strength), construct traits, steam breath (60 ft. cone, 15d6 fire+steam, DC 26 Ref half), swallow whole (4d6+22, AC 25, 23 hp), darkvision 60 ft.",
                  environment: "Aquatic",
                  summary: "A colossal clockwork sea serpent capable of destroying warships.",
                  desc: "Clockwork leviathans are the most destructive aquatic constructs ever engineered — massive, serpentine machines built to patrol harbors, sink enemy fleets, or guard underwater vaults. Their steam-breath weapon releases superheated vapors that can strip flesh from bone, and their bite can shear through a ship's keel. Most were built by now-fallen civilizations whose weapon-making expertise died with them, making every active clockwork leviathan a unique and terrifying relic.",
                  source: "Bestiary 4", isPremium: true),

            // MARK: - CR 8

            .make("Caligni Void Stalker", cr: "8", type: "Humanoid (caligni)", size: "Medium", alignment: "CE",
                  hp: "88 (16d8+16)", ac: 21, speed: "40 ft.",
                  attacks: "2 short swords +18/+18 (1d6+5/15–20) or shadow hand +18 (2d6+5 plus blindness)",
                  specialAbilities: "Blindness touch (DC 16 Fort), darkvision 120 ft., death flash (blinded 3d6 rounds on death, DC 17 Fort), improved uncanny dodge, light blindness, shadow step (as dimension door to shadows 3/day), sneak attack +5d6",
                  environment: "Underground",
                  summary: "An elite caligni hunter who teleports through shadows to cut down targets with precision.",
                  desc: "Void stalkers are the caligni equivalent of legendary assassins — soldiers who have so thoroughly merged with the shadow-nature of their kind that they can step into one patch of darkness and emerge from another dozens of feet away. They specialize in the elimination of high-value, well-defended targets, teleporting past guards and wards before delivering killing blows. Their touch blinds as well as wounds, ensuring that even survivors cannot describe them accurately.",
                  source: "Bestiary 4", isPremium: true),

            .make("Adult Dwiergeth", cr: "14", type: "Magical Beast", size: "Gargantuan", alignment: "CE",
                  hp: "210 (20d10+100)", ac: 28, speed: "50 ft., burrow 40 ft.",
                  attacks: "Bite +28 (4d6+16/19–20 plus grab), 2 claws +28 (2d6+11)",
                  specialAbilities: "Darkvision 60 ft., low-light vision, scent, sound mimicry (any sound heard), swallow whole (4d6+22, AC 27, 21 hp), tremorsense 180 ft.",
                  environment: "Underground",
                  summary: "A gargantuan elder dwiergeth whose perfect sound mimicry and immense size make it one of the most feared denizens of the deep earth.",
                  desc: "Adult dwiergeths are geological-scale predators. Their passage through tunnels is detectable by surface-dwellers as a faint vibration felt through the soles of the feet — by which point, escape is usually impossible. Their sound mimicry at this age is flawless: they can reproduce entire conversations, the sounds of distant cities, or whatever auditory bait has historically proven most effective in their territory.",
                  source: "Bestiary 4", isPremium: true),

            // MARK: - CR 10

            .make("Apocalypse Beast", cr: "15", type: "Magical Beast", size: "Colossal", alignment: "N",
                  hp: "225 (18d10+126)", ac: 30, speed: "50 ft., burrow 30 ft., swim 40 ft.",
                  attacks: "2 claws +26 (4d6+12/19–20), bite +26 (4d8+12 plus grab)",
                  specialAbilities: "Catastrophic entry (2d6 damage to all within 30 ft. when emerging from burrow), fast healing 10, swallow whole (4d6+18, AC 26, 22 hp), tremorsense 120 ft.",
                  environment: "Any",
                  summary: "A mindless engine of destruction that devastates entire landscapes as it hunts.",
                  desc: "Apocalypse beasts are not malicious — they simply do not notice the things they destroy. These colossal predators move through the landscape like mobile natural disasters, their passage felling trees, diverting streams, and collapsing buildings. They cannot be reasoned with, negotiated with, or intimidated. The only viable strategies are escape, distraction, or the coordinated efforts of many powerful adventurers working in concert.",
                  source: "Bestiary 4", isPremium: true),

            .make("Advanced Chaos Beast", cr: "12", type: "Outsider (chaotic, extraplanar)", size: "Large", alignment: "CN",
                  hp: "161 (14d10+84)", ac: 20, speed: "40 ft.",
                  attacks: "2 claws +20 (2d4+8 plus corporeal instability)",
                  specialAbilities: "Corporeal instability (DC 20 Fort or shapeshift, lose equipment, unable to take standard actions), immune to critical hits and transformation, SR 22",
                  environment: "Limbo (any)",
                  summary: "An advanced chaos beast whose touch scrambles the physical laws governing a creature's body.",
                  desc: "Advanced chaos beasts are enhanced manifestations of pure entropic madness, each one a walking invalidation of the physical constants that govern other creatures. Their touch doesn't merely hurt — it reaches into the target's biology and rearranges it according to the chaos beast's own nature, causing limbs to relocate, senses to swap, and physical coherence to dissolve. Extended contact with an advanced chaos beast can reduce even iron-willed adventurers to helpless, shapeless lumps.",
                  source: "Bestiary 4", isPremium: true),

            // MARK: - CR 12

            .make("Clockwork Behemoth", cr: "17", type: "Construct", size: "Colossal", alignment: "N",
                  hp: "270 (20d10+160)", ac: 33, speed: "30 ft.",
                  attacks: "2 slams +32 (4d8+16), stomp +32 (6d6+16), tail slap +32 (4d6+16)",
                  specialAbilities: "Stomp (knockdown, DC 28 Ref), trample (6d6+24, DC 28 Ref), construct traits, darkvision 60 ft., low-light vision, SR 28",
                  environment: "Any",
                  summary: "A colossal clockwork siege engine capable of leveling fortifications.",
                  desc: "Clockwork behemoths are built for one purpose: total destruction of fortified positions. They advance on castle walls with absolute mechanical patience, immune to fear, fatigue, and the casualties that would break any living force. Their stomp attack can collapse dungeon ceilings and flatten reinforced doors. Deploying a clockwork behemoth against a city is considered an act of absolute war — there is no acceptable diplomatic explanation.",
                  source: "Bestiary 4", isPremium: true),

            // MARK: - CR 14

            .make("Elder Dwiergeth", cr: "18", type: "Magical Beast", size: "Colossal", alignment: "CE",
                  hp: "290 (22d10+176)", ac: 32, speed: "60 ft., burrow 50 ft.",
                  attacks: "Bite +34 (6d6+20/19–20 plus grab), 2 claws +34 (2d8+14)",
                  specialAbilities: "Darkvision 60 ft., low-light vision, scent, sound mimicry (perfect), swallow whole (6d6+28, AC 30, 29 hp), tremorsense 240 ft., true seeing",
                  environment: "Deep underground",
                  summary: "An ancient dwiergeth of colossal size whose perfect mimicry and vast experience make it a near-mythical predator.",
                  desc: "Elder dwiergeths are effectively living legends — creatures so old that entire underground civilizations have risen and fallen in the knowledge of their existence. They have heard every sound in their vast territories over centuries and can reproduce any of them with absolute fidelity. Their true seeing ability means they are never fooled by disguise or illusion. Hunting one is equivalent to hunting a natural disaster with a grudge.",
                  source: "Bestiary 4", isPremium: true),

            // MARK: - CR 16

            .make("Clockwork Reliquary", cr: "16", type: "Construct", size: "Large", alignment: "N",
                  hp: "210 (20d10+100)", ac: 31, speed: "30 ft.",
                  attacks: "2 slams +28 (2d8+12) or integrated weapon (varies)",
                  specialAbilities: "Integrated weapons (2 integrated siege weapons, fire as a move action), construct traits, darkvision 60 ft., low-light vision, self-repair (fast healing 5), SR 27",
                  environment: "Any",
                  summary: "A clockwork guardian built around an ancient magical relic it is charged to protect forever.",
                  desc: "Clockwork reliquaries are purpose-built guardians fused permanently with the sacred objects they protect. Unlike other clockwork constructs, they have no purpose beyond their charge — no capacity for reassignment, no ability to stand down permanently. The relic has become structurally integrated into their chassis, and removing it would destroy both guardian and relic. They are the ultimate expression of dedication to protection, and they have been at their posts for centuries.",
                  source: "Bestiary 4", isPremium: true),

            // MARK: - CR 18

            .make("Genius Loci", cr: "18", type: "Outsider (native)", size: "Colossal", alignment: "N",
                  hp: "294 (28d10+140)", ac: 30, speed: "0 ft. (immobile)",
                  attacks: "Slam +36 (4d10+18) or environmental hazard (varies, DC 26)",
                  specialAbilities: "Immobile (always in place), manifest (create terrain features), area awareness (knows all events within 1 mile), spell-like abilities (earthquake, control weather, move earth at will; wish to reshape land 1/week)",
                  environment: "Any natural site of significance",
                  summary: "The awakened spirit of a place itself — a mountain, forest, or ancient lake given supernatural agency.",
                  desc: "A genius loci is what happens when a location accumulates enough age, significance, and worship to awaken a consciousness. They are not creatures living in a place — they ARE the place. A genius loci of a mountain is the mountain, capable of triggering rockslides, shifting passes, and speaking through the wind. They are neither hostile nor friendly by default, but simply have goals and interests of their own that may not align with those of anyone else.",
                  source: "Bestiary 4", isPremium: true),

            // MARK: - CR 20

            .make("Oliphaunt of Jandelay", cr: "30", type: "Magical Beast", size: "Colossal", alignment: "N",
                  hp: "690 (40d10+480)", ac: 48, speed: "60 ft., swim 40 ft.",
                  attacks: "Gore +52 (6d10+22/19–20), 2 slams +52 (4d8+22), stomp +52 (8d8+22)",
                  specialAbilities: "Apocalyptic presence (fear, DC 41 Will), stomp (knock prone all within 30 ft., DC 48 Ref), swallow whole (6d8+33, AC 43, 69 hp), DR 20/—, fast healing 30, SR 41",
                  environment: "Jandelay",
                  summary: "One of the most powerful creatures in existence — a living extinction event in the shape of an elephant.",
                  desc: "The Oliphaunt of Jandelay is a cosmic horror that has existed since before recorded history, a creature so powerful that even the gods treat its movements as noteworthy events. It wanders the demiplane of Jandelay in apparent aimlessness, but its occasional crossing into other planes is an extinction-level event for the regions affected. It is effectively impossible to kill — the best recorded outcomes from direct confrontations involve simply convincing it to go somewhere else.",
                  source: "Bestiary 4", isPremium: true),

        ]

        for monster in monsters {
            try await db.insertMonster(monster)
        }
    }
}
