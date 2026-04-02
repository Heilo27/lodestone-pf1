import Foundation

extension SeedDataBuilder {
    func seedClasses() async throws {
        let classes: [ClassEntry] = [

            // MARK: - Core Rulebook Classes

            .make("Barbarian",
                  hitDie: "d12",
                  skillRanks: 4,
                  bab: "Full",
                  fort: "Good",
                  ref: "Poor",
                  will: "Poor",
                  classSkills: [
                      "Acrobatics", "Climb", "Craft", "Handle Animal",
                      "Intimidate", "Knowledge (nature)", "Perception",
                      "Ride", "Survival", "Swim"
                  ],
                  summary: "A ferocious warrior who channels primal rage in battle.",
                  desc: """
                  For some, there is only rage. In the ways of their people, in the fury of their passion, in the howl of battle, conflict is fighting on pure survival instinct. Barbarians call upon inner reserves of strength and ferocity, pushing their bodies beyond normal limits. They are driven by a fierce and primal instinct for survival and conquest, often finding an outlet in battle that other classes cannot match.

                  Barbarians enter a state of rage that grants them extraordinary combat prowess and resilience. While raging, they deal more damage and can absorb more punishment, but their defenses and self-control suffer. As they advance in level, barbarians gain access to more powerful rage powers that allow them to customize their fighting style, from increased damage output to powerful supernatural abilities.

                  In addition to their combat abilities, barbarians are skilled survivalists, able to track prey and endure harsh wilderness conditions. Their martial ability is among the strongest of any class, rivaling even the fighter's raw attack bonus.
                  """,
                  source: "Core Rulebook"),

            .make("Bard",
                  hitDie: "d8",
                  skillRanks: 6,
                  bab: "Medium",
                  fort: "Poor",
                  ref: "Good",
                  will: "Good",
                  classSkills: [
                      "Acrobatics", "Appraise", "Bluff", "Climb", "Craft",
                      "Diplomacy", "Disguise", "Escape Artist", "Intimidate",
                      "Knowledge (all)", "Linguistics", "Perception", "Perform",
                      "Profession", "Sense Motive", "Sleight of Hand",
                      "Spellcraft", "Stealth", "Use Magic Device"
                  ],
                  summary: "A versatile performer who uses magic and skill to support and entertain.",
                  desc: """
                  Bards are wanderers who combine magic with performance, skill, and inspiration. They are master jack-of-all-trades who can fill many roles in a party but rarely excel at any single one. A bard's greatest strength is their versatility: they can cast spells, fight reasonably well, use nearly any skill, and inspire their allies.

                  The defining feature of the bard is Bardic Performance, which allows them to use music, poetry, oratory, or other performing arts to create magical effects. At lower levels, bards can inspire courage and competence in their allies; at higher levels, they can fascinate enemies, inspire greatness, or even drive opponents to their doom.

                  Bards cast arcane spells spontaneously from a known spell list, similar to sorcerers. Their spell list focuses on enchantments, illusions, and utility spells that complement their role as a support caster. They also have access to a broad range of skills, making them valuable in social encounters and skill challenges.
                  """,
                  source: "Core Rulebook"),

            .make("Cleric",
                  hitDie: "d8",
                  skillRanks: 2,
                  bab: "Medium",
                  fort: "Good",
                  ref: "Poor",
                  will: "Good",
                  classSkills: [
                      "Appraise", "Craft", "Diplomacy", "Heal",
                      "Knowledge (arcana)", "Knowledge (history)",
                      "Knowledge (nobility)", "Knowledge (planes)",
                      "Knowledge (religion)", "Linguistics", "Profession",
                      "Sense Motive", "Spellcraft"
                  ],
                  summary: "A divine spellcaster who channels the power of their deity.",
                  desc: """
                  Clerics are more than just healers. In service to a deity, they wield divine magic to aid their allies, smite their enemies, and advance the cause of their faith. The divine spellcasting of the cleric is among the most powerful in the game, with access to a broad spell list covering healing, protection, combat enhancement, and divine wrath.

                  Clerics may channel energy, a powerful ability that can heal living creatures or harm undead within a large area multiple times per day. Good-aligned clerics channel positive energy (healing); evil-aligned clerics channel negative energy (harming the living). Clerics may also spontaneously convert any prepared spell into a cure (or inflict) spell of equal level.

                  The domains chosen by a cleric reflect their deity's portfolio and grant bonus spells and special abilities. A cleric with the War domain can be a fearsome melee combatant; one with the Healing domain has enhanced healing; one with the Trickery domain excels at deception. Clerics are one of the most flexible classes in the game.
                  """,
                  source: "Core Rulebook"),

            .make("Druid",
                  hitDie: "d8",
                  skillRanks: 4,
                  bab: "Medium",
                  fort: "Good",
                  ref: "Poor",
                  will: "Good",
                  classSkills: [
                      "Climb", "Craft", "Fly", "Handle Animal", "Heal",
                      "Knowledge (geography)", "Knowledge (nature)",
                      "Perception", "Profession", "Ride", "Spellcraft",
                      "Survival", "Swim"
                  ],
                  summary: "A nature devotee who shapeshifts and commands the power of the wild.",
                  desc: """
                  Druids are guardians of the natural world, drawing their magical power from nature itself rather than from deities. They are versatile divine spellcasters whose spell list emphasizes natural phenomena, animal control, and earth-shaking power. Druids are also among the few classes that can transform their body into animal forms — the powerful Wild Shape ability.

                  Wild Shape allows the druid to assume the form of animals, plants, and elemental forms at higher levels. While transformed, the druid gains the physical attributes of the new form while retaining their own mental stats and the ability to cast spells (if the form allows it). Wild Shape can be used multiple times per day and lasts longer as the druid levels.

                  Druids also gain an animal companion — a loyal beast that grows in power alongside them. Their natural spell ability allows them to cast spells in wild shape form. Many druids also specialize in a particular aspect of nature through druidic orders that grant unique powers and spell access.
                  """,
                  source: "Core Rulebook"),

            .make("Fighter",
                  hitDie: "d10",
                  skillRanks: 2,
                  bab: "Full",
                  fort: "Good",
                  ref: "Poor",
                  will: "Poor",
                  classSkills: [
                      "Climb", "Craft", "Handle Animal", "Intimidate",
                      "Knowledge (dungeoneering)", "Knowledge (engineering)",
                      "Profession", "Ride", "Survival", "Swim"
                  ],
                  summary: "A master of weapons and martial tactics trained for war.",
                  desc: """
                  Some take up arms for glory, wealth, or revenge. Others do battle to prove themselves, to protect others, or because they know nothing else. Still others learn the fighting arts to pursue a spiritual goal, to achieve excellence, or to survive. Whatever their motivation, fighters are among the best combatants in the world.

                  Fighters gain more bonus combat feats than any other class, allowing them to specialize deeply in a weapon or fighting style. Through weapon training and armor training, they become increasingly proficient with their chosen weapons and comfortable with heavier armor over time. At high levels, their weapon mastery provides remarkable benefits with their chosen weapon type.

                  The fighter's greatest strength is its unmatched feat access, full attack bonus, and d10 hit die. They lack the magical support of a paladin or ranger, but compensate with sheer martial mastery. A well-built fighter is a terror to face in melee combat, able to exploit any weapon with devastating effect.
                  """,
                  source: "Core Rulebook"),

            .make("Monk",
                  hitDie: "d8",
                  skillRanks: 4,
                  bab: "Medium",
                  fort: "Good",
                  ref: "Good",
                  will: "Good",
                  classSkills: [
                      "Acrobatics", "Climb", "Craft", "Escape Artist",
                      "Intimidate", "Knowledge (history)", "Knowledge (religion)",
                      "Knowledge (the planes)", "Perception", "Perform",
                      "Profession", "Ride", "Sense Motive", "Stealth", "Swim"
                  ],
                  summary: "A martial artist who harnesses inner power to devastating effect.",
                  desc: """
                  Monks are masters of combat, harnessing the power of their own body as a deadly weapon. Through rigorous training and meditation, they have developed an array of superhuman physical capabilities. Unlike most fighters, monks can be effective combatants even when completely unarmed.

                  The monk's unarmed strike deals progressively more damage as they advance in level — eventually rivaling weapons in lethality. Their flurry of blows ability allows them to make multiple attacks at their highest attack bonus, though this requires careful feat investment to maximize. Monks' physical saves are all good progression, making them remarkably resistant to most effects.

                  As monks advance in level, they gain increasingly exotic abilities: stunning fist, abundant step (dimension door), timeless body, and eventually empty body (etherealness). Their ki pool fuels additional attacks, movement, and defensive abilities. Advanced monks can move with impossible speed, survive falls from any height, and resist aging itself.
                  """,
                  source: "Core Rulebook"),

            .make("Paladin",
                  hitDie: "d10",
                  skillRanks: 2,
                  bab: "Full",
                  fort: "Good",
                  ref: "Poor",
                  will: "Good",
                  classSkills: [
                      "Craft", "Diplomacy", "Handle Animal", "Heal",
                      "Knowledge (nobility)", "Knowledge (religion)",
                      "Profession", "Ride", "Sense Motive", "Spellcraft"
                  ],
                  summary: "A holy warrior who smites evil and protects the innocent.",
                  desc: """
                  Through a select, worthy few shines the power of the divine. Called paladins, these noble souls dedicate their swords and lives to the battle against evil. Knights, crusaders, and law-bringers, paladins seek not just to spread divine justice but to embody it.

                  The paladin's most iconic ability is Smite Evil, which allows them to channel divine energy into devastating strikes against evil opponents, adding their Charisma bonus to attack rolls and their paladin level to damage. Against undead and evil outsiders, smite evil deals double paladin-level damage. Divine Grace adds their Charisma bonus to all saving throws, making charismatic paladins remarkably resilient.

                  Paladins also have access to divine spells at 4th level, a lay on hands ability that heals hp equal to half their paladin level × Charisma modifier per day, aura of courage to bolster allies against fear, and at higher levels, an aura of resolve and divine bond with a weapon or mount. They must maintain their code of conduct or risk losing their abilities.
                  """,
                  source: "Core Rulebook"),

            .make("Ranger",
                  hitDie: "d10",
                  skillRanks: 6,
                  bab: "Full",
                  fort: "Good",
                  ref: "Good",
                  will: "Poor",
                  classSkills: [
                      "Climb", "Craft", "Handle Animal", "Heal",
                      "Intimidate", "Knowledge (dungeoneering)",
                      "Knowledge (geography)", "Knowledge (nature)",
                      "Perception", "Profession", "Ride", "Spellcraft",
                      "Stealth", "Survival", "Swim"
                  ],
                  summary: "A skilled hunter and tracker equally at home in wilderness and combat.",
                  desc: """
                  For those who relish the thrill of the hunt, there are only predators and prey. Be they scouts, hunters, or woodsmen, rangers share a keen ability to keep themselves and their allies alive. Rangers favor a particular enemy type — the favored enemy — against which they gain escalating combat bonuses as they advance in level.

                  Rangers also choose favored terrains, gaining bonuses to initiative, Perception, Stealth, Survival, and Knowledge in their specialized environment. Their combat style focuses on either archery or two-weapon fighting, with bonus feats that support those styles even without meeting normal prerequisites.

                  At 4th level, rangers gain access to divine spells, primarily focused on enhancing their wilderness capabilities, tracking, and communicating with animals. They also gain an animal companion or hunter's bond ability. At higher levels, they can use their Quarry ability to mark a specific target for focused hunting, and their Instant Enemy ability allows them to temporarily designate any creature as a favored enemy.
                  """,
                  source: "Core Rulebook"),

            .make("Rogue",
                  hitDie: "d8",
                  skillRanks: 8,
                  bab: "Medium",
                  fort: "Poor",
                  ref: "Good",
                  will: "Poor",
                  classSkills: [
                      "Acrobatics", "Appraise", "Bluff", "Climb", "Craft",
                      "Diplomacy", "Disable Device", "Disguise", "Escape Artist",
                      "Intimidate", "Knowledge (dungeoneering)", "Knowledge (local)",
                      "Linguistics", "Perception", "Perform", "Profession",
                      "Sense Motive", "Sleight of Hand", "Stealth",
                      "Swim", "Use Magic Device"
                  ],
                  summary: "A cunning opportunist who deals devastating sneak attacks.",
                  desc: """
                  Life is an endless series of choices. Most choices amount to little, but the choice to become a rogue makes all others possible. Rogues are adventurers who live on skill — both the skills of their trade and the skills of survival. They are the most adaptable of adventurers, able to find solutions where others see only obstacles.

                  Sneak attack is the rogue's defining combat ability: whenever a rogue attacks a creature that is flat-footed, flanked, or otherwise denied its Dexterity bonus to AC, the rogue deals additional precision damage equal to 1d6 per two rogue levels. At higher levels, this bonus damage becomes enormous and makes positioning and flanking crucial for rogue players.

                  Rogues also gain Rogue Talents — a flexible array of special abilities that allow the player to customize their character's niche. Options range from combat tricks (fast stealth, bleeding attack) to skill enhancements (skill mastery) to unusual capabilities (dispelling attack, crippling strike). Advanced talents become available at 10th level and include increasingly powerful options.
                  """,
                  source: "Core Rulebook"),

            .make("Sorcerer",
                  hitDie: "d6",
                  skillRanks: 2,
                  bab: "Poor",
                  fort: "Poor",
                  ref: "Poor",
                  will: "Good",
                  classSkills: [
                      "Appraise", "Bluff", "Craft", "Fly", "Intimidate",
                      "Knowledge (arcana)", "Profession", "Spellcraft",
                      "Use Magic Device"
                  ],
                  summary: "An arcane spellcaster whose power flows from a magical bloodline.",
                  desc: """
                  Scions of innately magical bloodlines, the chosen of deities, the spawn of monsters, pawns of fate and destiny, or simply flukes of fickle magic, sorcerers look within themselves for arcane prowess and find it there. Drawing upon an ability that defies explanation, a sorcerer can draw raw magical energy directly from the cosmos, without study or training.

                  Sorcerers cast arcane spells spontaneously, meaning they can cast any spell they know at any time without preparation, as long as they have remaining spell slots. They know fewer spells than wizards but are more flexible in using them. Their limited but powerful spell list emphasizes impact per cast.

                  Bloodlines are the defining feature that sets sorcerers apart. Each bloodline represents a form of magical heritage — Arcane, Celestial, Draconic, Infernal, Elemental, and many more — and grants bonus spells, special abilities, and bloodline powers that activate at various levels. A draconic sorcerer might gain breath weapons and natural armor; an abyssal sorcerer, demonic strength and summoning powers.
                  """,
                  source: "Core Rulebook"),

            .make("Wizard",
                  hitDie: "d6",
                  skillRanks: 2,
                  bab: "Poor",
                  fort: "Poor",
                  ref: "Poor",
                  will: "Good",
                  classSkills: [
                      "Appraise", "Craft", "Fly", "Knowledge (all)",
                      "Linguistics", "Profession", "Spellcraft"
                  ],
                  summary: "A scholarly arcane spellcaster who harnesses the full power of the arcane.",
                  desc: """
                  Beyond the veil of the mundane hide the secrets of absolute power. The information contained in spellbooks is truly prodigious — all of magic in its raw form, waiting for the trained mind to unlock its potential. Wizards are practitioners of the arcane art of magic, spending years of dedicated study to master the most powerful magic available to mortals.

                  Wizards prepare their spells from a spellbook each morning, choosing from the full range of arcane spells they have learned. They gain bonus spells based on their Intelligence score and can add spells to their spellbook through research, purchase, or copying from scrolls and other wizards' books. A wizard with a high enough Intelligence can prepare virtually any combination of arcane magic.

                  Specialization allows wizards to focus on a particular school of magic, gaining additional spell slots and special school powers in exchange for barring access to one or two opposing schools. A universalist wizard avoids these restrictions. The bonded object or familiar both provide additional magical utility. Arcane discovery abilities at high levels allow unique magical insights unavailable to other spellcasters.
                  """,
                  source: "Core Rulebook"),

            // MARK: - Advanced Player's Guide Classes

            .make("Alchemist",
                  hitDie: "d8",
                  skillRanks: 4,
                  bab: "Medium",
                  fort: "Good",
                  ref: "Good",
                  will: "Poor",
                  classSkills: [
                      "Appraise", "Craft", "Disable Device", "Fly",
                      "Heal", "Knowledge (arcana)", "Knowledge (nature)",
                      "Perception", "Profession", "Sleight of Hand",
                      "Spellcraft", "Survival", "Use Magic Device"
                  ],
                  summary: "A mad scientist who brews mutagens and explosive bombs.",
                  desc: """
                  Whether secreted away in a smoky basement laboratory or gleefully experimenting in a well-lit workshop, the alchemist is the philosopher of the fantastical, the curious practitioner of potions, poisons, and explosive extracts. Alchemists are driven by a never-ending curiosity about the world's hidden secrets.

                  The alchemist's most iconic abilities are their bombs and mutagen. Bombs are alchemically created splash weapons that deal fire damage (or other energy types with discoveries) in an area. The mutagen is a potion the alchemist can drink to enhance their physical abilities at the cost of mental stats, temporarily transforming them into a more powerful physical form.

                  Alchemists also brew extracts — spell-like potions that function like wizard spells for personal use. They do not cast spells in the traditional sense; instead their "casting" manifests through alchemical brewing. Their discoveries are akin to rogue talents, offering a broad customization system. At higher levels, discoveries like true mutagen and grand mutagen enable dramatic transformations.
                  """,
                  source: "Advanced Player's Guide", isPremium: true),

            .make("Cavalier",
                  hitDie: "d10",
                  skillRanks: 4,
                  bab: "Full",
                  fort: "Good",
                  ref: "Poor",
                  will: "Poor",
                  classSkills: [
                      "Bluff", "Climb", "Craft", "Diplomacy",
                      "Handle Animal", "Intimidate", "Profession",
                      "Ride", "Sense Motive", "Swim"
                  ],
                  summary: "A mounted warrior who leads by example and honors a chivalric order.",
                  desc: """
                  Cavaliers are warriors who have devoted themselves to a particular order, a creed that shapes their ideals and way of life. These warriors are mounted combatants who use superior mobility and battle tactics to demoralize and destroy their foes on horseback.

                  The cavalier's challenge ability allows them to designate an opponent as a challenged target, gaining a bonus to damage against that target while suffering a penalty to AC against attacks from other sources. As the cavalier advances, their mounts become more capable combat partners. Banner ability grants morale bonuses to nearby allies.

                  Each cavalier belongs to an order — such as the Order of the Cockatrice (individual glory), Order of the Dragon (teamwork), Order of the Lion (nobility and leadership), or Order of the Star (faith) — that defines their code, granted abilities, and edicts. Cavaliers who violate their order's code risk losing class abilities until they atone.
                  """,
                  source: "Advanced Player's Guide", isPremium: true),

            .make("Inquisitor",
                  hitDie: "d8",
                  skillRanks: 6,
                  bab: "Medium",
                  fort: "Good",
                  ref: "Poor",
                  will: "Good",
                  classSkills: [
                      "Bluff", "Climb", "Craft", "Diplomacy", "Disguise",
                      "Heal", "Intimidate", "Knowledge (arcana)",
                      "Knowledge (dungeoneering)", "Knowledge (nature)",
                      "Knowledge (planes)", "Knowledge (religion)",
                      "Perception", "Profession", "Ride", "Sense Motive",
                      "Spellcraft", "Stealth", "Survival", "Swim"
                  ],
                  summary: "A divine investigator who hunts enemies of the faith with ruthless efficiency.",
                  desc: """
                  Inquisitors are divine servants of their god who stand on the front lines of the battle against heresy, sin, and the enemies of the faith. Unlike clerics, they are not bound by the same codes of conduct; they operate in the moral grey areas of divine law, doing what must be done to protect the faith.

                  Inquisitors are potent solo combatants. Their Judgment ability activates once per encounter and grants powerful benefits — additional attack, damage, or Armor Class — that improve as the inquisitor advances. Solo Tactics allows them to apply teamwork feats as if their allies also had them. Bane allows the inquisitor to enhance their weapon against a specific creature type.

                  Inquisitors also cast divine spells, focusing on combat enhancement, detection, and intimidation rather than pure healing. Their broad skill list makes them excellent investigators, capable of handling most social challenges and gathering intelligence about the enemies of their faith. At higher levels, True Judgment adds devastating divine power to their attacks.
                  """,
                  source: "Advanced Player's Guide", isPremium: true),

            .make("Magus",
                  hitDie: "d8",
                  skillRanks: 2,
                  bab: "Medium",
                  fort: "Good",
                  ref: "Poor",
                  will: "Good",
                  classSkills: [
                      "Climb", "Craft", "Fly", "Intimidate",
                      "Knowledge (arcana)", "Knowledge (dungeoneering)",
                      "Profession", "Ride", "Spellcraft", "Swim",
                      "Use Magic Device"
                  ],
                  summary: "A warrior who blends arcane spells with devastating melee attacks.",
                  desc: """
                  There are those who spend their lives poring over tomes and scrolls, learning the power of magic as a weapon. And there are those who spend their lives perfecting the use of a sword. The magus is both. These powerful warriors use academic study of the arcane arts to enhance their martial prowess.

                  Spell Combat allows the magus to cast a spell and make a melee attack in the same action, treating the spell like an off-hand weapon. Spellstrike allows the magus to deliver touch spells through weapon attacks, channeling the spell's energy through the blade. Together, these abilities make the magus one of the deadliest single-target damage dealers in the game.

                  Magi use an arcane pool to enhance their weapons with magical properties or to power special class abilities. Their arcana system (similar to rogue talents) allows customization of their spellblade style. At higher levels, abilities like improved spell combat and counterstrike make the magus a formidable opponent both offensively and defensively.
                  """,
                  source: "Advanced Player's Guide", isPremium: true),

            .make("Oracle",
                  hitDie: "d8",
                  skillRanks: 4,
                  bab: "Medium",
                  fort: "Poor",
                  ref: "Poor",
                  will: "Good",
                  classSkills: [
                      "Craft", "Diplomacy", "Heal", "Knowledge (history)",
                      "Knowledge (planes)", "Knowledge (religion)",
                      "Profession", "Sense Motive", "Spellcraft"
                  ],
                  summary: "A spontaneous divine caster cursed and blessed by divine mystery.",
                  desc: """
                  Rather than devote themselves to a single divine being, oracles tend to draw their powers from a broader array of sources: the universe itself, the will of the gods collectively, or powerful natural forces. These divine casters are vessels for power that exceeds their own understanding, and often their own control.

                  The oracle's defining feature is their mystery — a broad divine theme (Battle, Bones, Flame, Lore, Stone, Wind, etc.) that defines their bonus spells and revelation abilities. Revelations are powerful class features that manifest as the oracle advances, ranging from elemental blasts to healing touches to divination abilities, all tied to the mystery's theme.

                  Every oracle also carries a curse — a magical affliction that comes with their divine power. The curse may be debilitating (haunted, clouded vision) but always comes with increasingly powerful compensatory benefits at higher levels. Oracles cast divine spells spontaneously from an expanded version of the cleric spell list, supplemented by their mystery spells.
                  """,
                  source: "Advanced Player's Guide", isPremium: true),

            .make("Summoner",
                  hitDie: "d8",
                  skillRanks: 2,
                  bab: "Medium",
                  fort: "Poor",
                  ref: "Poor",
                  will: "Good",
                  classSkills: [
                      "Craft", "Fly", "Handle Animal", "Knowledge (arcana)",
                      "Knowledge (planes)", "Linguistics", "Profession",
                      "Ride", "Spellcraft", "Use Magic Device"
                  ],
                  summary: "A spellcaster bonded to a powerful eidolon that they customize and evolve.",
                  desc: """
                  The summoner is defined by a single extraordinary relationship: the bond with an eidolon, a powerful extraplanar being that the summoner has called forth and shaped into their ideal companion and guardian. The eidolon is customized entirely by the player using an evolution point system, allowing remarkable flexibility in creating exactly the combat monster desired.

                  The eidolon shares a life force with the summoner. When the eidolon takes damage, the summoner can share it; when the summoner falls unconscious, the eidolon disappears. The eidolon can be resummoned after a period of rest. Its form — biped, quadruped, or serpentine — determines its base abilities and how many evolution points it can spend.

                  Summoners also cast arcane spells, primarily focused on the conjuration school and summon monster spells. They can use summon monster as a spell-like ability frequently throughout the day. At higher levels, the summoner can merge with their eidolon, gaining all of its physical abilities while retaining their own mental attributes, creating one of the most powerful physical combatants in the game.
                  """,
                  source: "Advanced Player's Guide", isPremium: true),

            .make("Witch",
                  hitDie: "d6",
                  skillRanks: 2,
                  bab: "Poor",
                  fort: "Poor",
                  ref: "Poor",
                  will: "Good",
                  classSkills: [
                      "Craft", "Fly", "Heal", "Intimidate",
                      "Knowledge (arcana)", "Knowledge (history)",
                      "Knowledge (nature)", "Knowledge (planes)",
                      "Profession", "Spellcraft", "Use Magic Device"
                  ],
                  summary: "A sinister spellcaster bonded to a familiar that stores her dark magic.",
                  desc: """
                  Some gain power through study, some through devotion, others through blood, but the witch gains power from a pact made with an otherworldly being. Whether this mysterious patron is a powerful fey, a strange spiritual force, a god, or something else entirely is rarely clear, and the witch herself may not even know. The patron communicates only through the witch's familiar, which serves as the intermediary between witch and patron.

                  The witch's familiar stores all of her spells, similar to a wizard's spellbook. If the familiar is killed or lost, the witch loses access to all prepared spells until a new familiar can be obtained. The familiar can be taught new spells just as a wizard teaches their spellbook. Patrons grant bonus spells throughout the witch's career.

                  Hexes are the defining class feature of the witch — supernatural abilities that can be used at will or once per day. Hexes cover a broad range: the evil eye hex reduces enemy defenses, the healing hex rapidly heals allies, slumber puts enemies to sleep. At higher levels, major and grand hexes include devastating abilities like life giver (raise dead), eternal slumber, and death curse.
                  """,
                  source: "Advanced Player's Guide", isPremium: true)
        ]

        for cls in classes {
            try await db.insertClass(cls)
        }
    }
}

// MARK: - ClassEntry factory
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
